#!/usr/bin/env python3
"""纯源码驱动的 xmake DSL EmmyLua/LuaLS 注解生成器。

静态解析 xmake 源码（不走 xmake 运行时），生成：
  - library/dsl.lua       描述域 DSL 全局函数（apis() 注册表 + 语言 API + 内建作用域）
  - library/instances.lua 实例类（Target/Option/Rule/Package/PackageComponent）
  - library/modules.lua   沙箱内建模块（os/path/io/table/string/utils/hash/semver 等）
  - apis.json             DSL API 注册表提取结果（{模块: {类别: [名字]}}）

用法: gen_annotations.py <xmake源码根(含xmake/core的目录)> <版本号> [输出目录=当前目录] [选项]

选项:
  --docs PATH          xmake-io/xmake-docs 仓库路径，启用文档合并层（类型签名 + 中文描述）
  --docs-commit HASH   文档仓库 commit（记录进统计；默认按 --release-date 自动映射并检出）
  --release-date ISO   xmake 该版本的发布日期（默认尝试用 gh release view 获取），
                       用于取 docs 仓库中不晚于该日期的最后一个 commit

例: python3 tools/gen_annotations.py /nix/store/...-xmake-3.1.0/share 3.1.0 . --docs /tmp/xmake-docs

文档合并规则：API 存在性与集合以源码注册表为准；文档（优先 zh 镜像，回退英文）只用于
充实已存在 API 的 @param 类型与函数上方的中文描述注释；文档有而注册表没有的 API 忽略。
"""
import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

# 模块名 -> apis() 所在文件（相对 <root>/xmake/core/）
MODULES = {
    "project":    "project/project.lua",
    "target":     "project/target.lua",
    "option":     "project/option.lua",
    "rule":       "project/rule.lua",
    "task":       "project/task.lua",
    "base_task":  "base/task.lua",
    "package":    "package/package.lua",
    "repository": "package/repository.lua",
    "component":  "package/component.lua",
    "scheme":     "package/scheme.lua",
    "language":   "language/language.lua",
    "toolchain":  "toolchain/toolchain.lua",
}

# 实例类名 -> (_instance 方法所在文件，相对 core/，注释用的中文名)
INSTANCE_CLASSES = {
    "Target":           ("project/target.lua", "目标实例"),
    "Option":           ("project/option.lua", "选项实例"),
    "Rule":             ("project/rule.lua", "规则实例"),
    "Package":          ("package/package.lua", "包实例"),
    "PackageComponent": ("package/component.lua", "包组件实例"),
}

# 沙箱模块名 -> 参数来源（core/base/<name>.lua 与 core/sandbox/modules/<name>.lua）
# semver 无对应 sandbox 模块文件，但 base/semver.lua 存在，额外补充
SANDBOX_EXTRA = ["semver"]

# 实例方法/模块函数中，这些参数名注为 string，其余 any
STRING_PARAMS = {"name", "p", "file", "dir"}

# 解释器内建的作用域函数（interpreter.lua 注册，不在 apis() 注册表中）
BUILTIN_SCOPES = ["target", "option", "rule", "task", "package", "toolchain"]


# ---------------------------------------------------------------- 源码解析

def strip_comments(src: str) -> str:
    # apis() / _get_apis() 块内没有字符串里含 -- 的情况
    return re.sub(r"--[^\n]*", "", src)


def extract_func_block(src: str, funcpat: str) -> str | None:
    """提取 `function <funcpat>() ... \\nend` 的函数体。"""
    m = re.search(funcpat + r"\s*\(\s*\)(.*?)\nend", src, re.S)
    return m.group(1) if m else None


def parse_categories(block: str) -> dict:
    """解析 { values = {...}, custom = {...}, ... } 为 {类别: [api名]}。"""
    result = {}
    for cat_m in re.finditer(r"(\w+)\s*=\s*\{", block):
        cat = cat_m.group(1)
        start = cat_m.end()
        depth, i = 1, start
        while i < len(block) and depth:
            if block[i] == "{":
                depth += 1
            elif block[i] == "}":
                depth -= 1
            i += 1
        body = block[start:i - 1]
        if cat == "custom":
            names = re.findall(r'\{\s*"([^"]+)"', body)  # {"apiname", handler} 形式
        else:
            names = re.findall(r'"([^"]+)"', body)
        if names:
            result[cat] = names
    return result


def split_params(argstr: str) -> list[str]:
    return [a.strip() for a in argstr.split(",") if a.strip()]


def parse_registries(core: Path) -> dict:
    """提取 core/ 下各模块的静态 apis() 注册表。"""
    out = {}
    for mod, rel in MODULES.items():
        f = core / rel
        if not f.exists():
            continue
        src = strip_comments(f.read_text(encoding="utf-8"))
        block = extract_func_block(src, r"function\s+[\w.]+\s*\.\s*apis")
        cats = parse_categories(block) if block else {}
        if cats:  # language.apis() 是动态聚合，静态解析为空，跳过
            out[mod] = cats
    return out


def parse_language_apis(root: Path) -> dict:
    """解析 languages/*/load.lua 的 _get_apis()，合并去重为 {类别: [带前缀名字]}。"""
    merged: dict[str, list[str]] = {}
    langs = root / "xmake" / "languages"
    if langs.is_dir():
        for f in sorted(langs.glob("*/load.lua")):
            src = strip_comments(f.read_text(encoding="utf-8"))
            block = extract_func_block(src, r"function\s+_get_apis")
            if not block:
                continue
            for cat, names in parse_categories(block).items():
                lst = merged.setdefault(cat, [])
                for n in names:
                    if n not in lst:
                        lst.append(n)
    return {c: sorted(v) for c, v in merged.items()}


def parse_instance_methods(f: Path) -> list[tuple[str, list[str], bool]]:
    """提取公开的 `function _instance:name(args)` 方法（下划线开头的为内部方法）。

    返回 [(名字, 参数列表, 是否冒号定义)]，按名字去重。
    """
    src = f.read_text(encoding="utf-8")
    seen: dict[str, tuple[list[str], bool]] = {}
    for m in re.finditer(r"function\s+_instance([:.])(\w+)\s*\(([^)]*)\)", src):
        sep, name, args = m.group(1), m.group(2), m.group(3)
        if name.startswith("_"):
            continue
        if name not in seen:
            seen[name] = (split_params(args), sep == ":")
    return [(n, p, c) for n, (p, c) in sorted(seen.items())]


def parse_module_functions(f: Path, modname: str) -> dict[str, list[str]]:
    """提取 `function <modname>.name(args)` / `function <modname>:name(args)` 的参数列表。"""
    src = f.read_text(encoding="utf-8")
    out = {}
    for m in re.finditer(
            r"function\s+" + re.escape(modname) + r"[:.](\w+)\s*\(([^)]*)\)", src):
        name, args = m.group(1), m.group(2)
        if name not in out:
            out[name] = split_params(args)
    return out


def parse_sandbox_defs(f: Path, modname: str) -> tuple[dict, dict]:
    """解析 sandbox 模块文件：本文件定义的函数 + 对 base 模块的透传赋值。

    返回 (defs: {名字: 参数}, passthrough: {名字: (rhs模块, rhs名字)})。
    """
    src = f.read_text(encoding="utf-8")
    sm = "sandbox_" + modname
    defs, passthrough = {}, {}
    for m in re.finditer(r"function\s+" + sm + r"[:.](\w+)\s*\(([^)]*)\)", src):
        defs.setdefault(m.group(1), split_params(m.group(2)))
    for m in re.finditer(sm + r"\.(\w+)\s*=\s*(\w+)\.(\w+)", src):
        passthrough.setdefault(m.group(1), (m.group(2), m.group(3)))
    return defs, passthrough


def collect_sandbox_modules(root: Path) -> dict[str, dict[str, list[str]]]:
    """收集沙箱模块函数表：{模块名: {函数名: 参数列表}}。"""
    core = root / "xmake" / "core"
    sdir = core / "sandbox" / "modules"
    bdir = core / "base"
    names = sorted(p.stem for p in sdir.glob("*.lua") if (bdir / (p.stem + ".lua")).exists())
    for extra in SANDBOX_EXTRA:
        if extra not in names and (bdir / (extra + ".lua")).exists():
            names.append(extra)
    modules: dict[str, dict[str, list[str]]] = {}
    for name in sorted(names):
        funcs: dict[str, list[str]] = {}
        sfile = sdir / (name + ".lua")
        defs, passthrough = ({}, {})
        if sfile.exists():
            defs, passthrough = parse_sandbox_defs(sfile, name)
        base_funcs = parse_module_functions(bdir / (name + ".lua"), name)
        # 透传：RHS 指向本模块 base 函数时用其真实参数，否则跳过（多为数据字段）
        for fn, (rmod, rname) in passthrough.items():
            if rmod == name and rname in base_funcs and fn not in defs:
                defs[fn] = base_funcs[rname]
        funcs.update(base_funcs)
        funcs.update(defs)  # sandbox 自定义定义优先（参数更贴近沙箱行为）
        if funcs:  # 如 base/utf8.lua 只有数据字段（函数由 C 注入），跳过空模块
            modules[name] = dict(sorted(funcs.items()))
    return modules


# ---------------------------------------------------------------- 文档合并层（xmake-io/xmake-docs）

# 文档目录（相对 <docs>/docs[/zh]/）：描述域 DSL + 沙箱内建模块
DOC_DIRS = ["api/description", "api/scripts/builtin-modules"]

_TYPE_MAP = {
    "string": "string", "boolean": "boolean", "bool": "boolean", "number": "number",
    "int": "integer", "integer": "integer", "table": "table", "function": "function",
    "any": "any", "nil": "nil", "array": "any[]", "string[]": "string[]",
}


def norm_doc_type(t: str) -> str:
    """`<string|boolean>` → `string|boolean`；function 原型统一为 function。"""
    t = t.strip()
    if t.lower().startswith("function"):
        return "function"
    return "|".join(_TYPE_MAP.get(x.strip().lower(), "any") for x in t.split("|"))


def split_top_commas(s: str) -> list[str]:
    """按顶层逗号切分原型参数串（感知 ()、{} 与 <...> 嵌套）。"""
    parts, cur = [], ""
    par = bra = ang = 0
    for ch in s:
        if ch == "<":
            ang += 1
        elif ch == ">":
            ang = max(0, ang - 1)
        elif ang == 0:
            if ch == "(":
                par += 1
            elif ch == ")":
                par -= 1
            elif ch == "{":
                bra += 1
            elif ch == "}":
                bra -= 1
        if ch == "," and par == 0 and bra == 0 and ang == 0:
            parts.append(cur)
            cur = ""
        else:
            cur += ch
    if cur.strip():
        parts.append(cur)
    return parts


def parse_prototype(block: str) -> list[tuple] | None:
    """解析函数原型 lua 代码块，返回参数项列表：
    ("p", 名字, 类型) / ("var",)（... 变参）/ ("opt",)（{...} 选项表）。无原型返回 None。
    """
    m = re.search(r"[\w.]+\s*\(", block)
    if not m:
        return None
    i, depth, ang = m.end(), 1, 0
    while i < len(block) and depth:
        ch = block[i]
        if ch == "<":
            ang += 1
        elif ch == ">":
            ang = max(0, ang - 1)
        elif ang == 0:
            if ch == "(":
                depth += 1
            elif ch == ")":
                depth -= 1
        i += 1
    if depth:
        return None
    items = []
    for part in split_top_commas(block[m.end():i - 1]):
        part = part.strip()
        if not part:
            continue
        if part == "...":
            items.append(("var",))
        elif part.startswith("{"):
            items.append(("opt",))
        elif pm := re.match(r"(\w+)\s*:\s*<([^>]*)>", part):
            items.append(("p", pm.group(1), norm_doc_type(pm.group(2))))
        elif pm := re.match(r"(\w+)\s*:\s*(\w+)", part):
            items.append(("p", pm.group(1), norm_doc_type(pm.group(2))))
        elif re.fullmatch(r"\w+", part):
            items.append(("p", part, "any"))
        # 其余（如表字段 `build = <string>` 残留）忽略
    return items


def parse_doc_file(f: Path) -> dict:
    """解析一个文档 md，返回 {api名: {"desc", "params", "pdesc"}}。

    节格式：`## <api名>`，描述取节内第一个 `### 一句话标题` 或 `- 一句话`；
    原型取 `#### 函数原型`/`#### Function Prototype` 小节的第一个 ```lua 代码块；
    参数描述取 `| 参数 | 描述 |` 表格。
    """
    lines = f.read_text(encoding="utf-8").splitlines()
    sections: dict[str, list[str]] = {}
    cur = None
    for ln in lines:
        if m := re.match(r"## ([\w.]+)\s*(?:\{#[\w-]+\})?\s*$", ln):
            cur = m.group(1)
            sections.setdefault(cur, [])
        elif ln.startswith("## "):
            cur = None  # 非 API 标题（如"可见性设置"），结束当前节
        elif cur is not None:
            sections[cur].append(ln)
    out = {}
    for name, body in sections.items():
        desc = ""
        params = None
        pdesc: dict[str, str] = {}
        in_table = False
        for idx, ln in enumerate(body):
            if not desc:
                if m := re.match(r"### (.+?)(?:\s*\{#[\w-]+\})?\s*$", ln):
                    desc = m.group(1).strip()
                elif m := re.match(r"- (.+)$", ln):
                    desc = m.group(1).strip()
            if params is None and re.match(r"#### (函数原型|Function Prototype)", ln):
                code, in_lua = [], False
                for ln2 in body[idx + 1:]:
                    if ln2.strip().startswith("```"):
                        if in_lua:
                            break
                        in_lua = "lua" in ln2
                    elif in_lua:
                        code.append(ln2)
                    elif re.match(r"####? ", ln2):
                        break
                if code:
                    params = parse_prototype("\n".join(code))
            if re.match(r"\|\s*(参数|Parameter)\s*\|", ln):
                in_table = True
                continue
            if in_table:
                if m := re.match(r"\|([^|]+)\|([^|]+)\|", ln):
                    k = m.group(1).strip().strip("`")
                    if not set(k) <= set("-: "):
                        pdesc[k] = re.sub(r"\s+", " ", m.group(2).strip())
                else:
                    in_table = False
        if desc or params is not None:
            out[name] = {"desc": desc, "params": params, "pdesc": pdesc}
    return out


def load_docs(docs_root: Path) -> dict:
    """加载文档仓库：英文兜底、zh 镜像优先；同一语言内同名条目先出现者优先
    （按文件名排序，xpack-*.md 排在最后，避免 xpack 的 set_version 等覆盖描述域同名条目）。"""
    base = docs_root / "docs"
    by_lang: dict[str, dict] = {}
    for langdir in (base, base / "zh"):
        lang_docs: dict[str, dict] = {}
        for rel in DOC_DIRS:
            d = langdir / rel
            if d.is_dir():
                for f in sorted(d.glob("*.md")):
                    for k, v in parse_doc_file(f).items():
                        lang_docs.setdefault(k, v)
        by_lang[str(langdir)] = lang_docs
    return {**by_lang.get(str(base), {}), **by_lang.get(str(base / "zh"), {})}


def git_out(repo: Path, *args: str) -> str:
    return subprocess.run(["git", "-C", str(repo), *args],
                          capture_output=True, text=True, check=True).stdout.strip()


def resolve_docs_commit(docs_root: Path, version: str,
                        docs_commit: str | None, release_date: str | None) -> str | None:
    """确定 docs commit：显式指定 > 按发布日期映射（rev-list --before）> 当前 HEAD。
    映射成功或显式指定时会 checkout 该 commit，保证文档树与记录一致。"""
    if not docs_commit:
        if not release_date:
            try:  # 默认尝试 gh 获取发布日期
                r = subprocess.run(
                    ["gh", "release", "view", f"v{version}", "--repo", "xmake-io/xmake",
                     "--json", "publishedAt", "-q", ".publishedAt"],
                    capture_output=True, text=True)
                release_date = r.stdout.strip() or None
            except OSError:
                pass
        if release_date:
            try:
                docs_commit = git_out(docs_root, "rev-list", "-1",
                                      f"--before={release_date}", "origin/master")
            except subprocess.CalledProcessError:
                docs_commit = None
    if docs_commit:
        subprocess.run(["git", "-C", str(docs_root), "checkout", "-q", docs_commit],
                       check=True)
        return docs_commit
    try:
        return git_out(docs_root, "rev-parse", "HEAD")
    except subprocess.CalledProcessError:
        return None


# ---------------------------------------------------------------- 注解生成

def header(version: str) -> str:
    return f"---@meta\n---xmake version: {version}\n"


def doc_params_to_annotations(doc: dict) -> tuple[list[str], list[str]]:
    """文档原型参数项 → (函数签名参数, ---@param 注解行)。

    `...` 变参之后的参数无法在 lua 签名中表达，截断忽略；`{...}` 选项表注为 opt?: table。
    """
    args, annots = [], []
    for item in doc["params"]:
        if item[0] == "var":
            annots.append("---@param ... any")
            args.append("...")
            break
        if item[0] == "opt":
            annots.append("---@param opt? table")
            args.append("opt")
            continue
        _, pname, ptype = item
        optional = ptype == "table" and pname in ("opt", "options")
        line = f"---@param {pname}{'?' if optional else ''} {ptype}"
        if pd := doc["pdesc"].get(pname):
            line += f" {pd}"
        annots.append(line)
        args.append(pname)
    return args, annots


def dsl_signature(bare: str, cat: str, origins: list[str], doc: dict | None = None) -> str:
    """按注册类别生成一个 DSL 全局函数的 EmmyLua 注解块（有文档时合并类型与描述）。"""
    lines = ["-- " + " / ".join(origins)]
    if doc and doc["desc"]:
        lines.append("-- " + doc["desc"])
    if (doc and doc["params"] is not None
            and cat in ("values", "paths", "keyvalues", "dictionary", "groups", "custom")):
        args, annots = doc_params_to_annotations(doc)
        if cat == "custom":  # 文档不含返回值信息，谓词/读取类仍按注册形态补返回值
            if bare.startswith(("is_", "has_")):
                annots.append("---@return boolean")
            elif bare.startswith("get_"):
                annots.append("---@return any")
        lines += annots
        lines.append(f"function {bare}({', '.join(args)}) end")
        return "\n".join(lines)
    if cat == "values":
        if bare.startswith("add_"):
            lines.append("---@param ... any")
            lines.append(f"function {bare}(...) end")
        else:
            lines.append("---@param value any")
            lines.append(f"function {bare}(value) end")
    elif cat == "paths":
        if bare.startswith("add_"):
            lines.append("---@param ... string")
            lines.append(f"function {bare}(...) end")
        else:
            lines.append("---@param path string")
            lines.append(f"function {bare}(path) end")
    elif cat in ("keyvalues", "dictionary"):
        lines.append("---@param key string")
        lines.append("---@param value any")
        lines.append(f"function {bare}(key, value) end")
    elif cat == "groups":
        lines.append("---@param ... any")
        lines.append(f"function {bare}(...) end")
    elif cat == "custom":
        if bare.startswith(("get_config", "has_config", "is_config")):
            lines.append("---@param name string")
            lines.append("---@param ... any")
            if bare.startswith(("has_", "is_")):
                lines.append("---@return boolean")
            else:
                lines.append("---@return any")
            lines.append(f"function {bare}(name, ...) end")
        elif bare.startswith(("is_", "has_")):
            lines.append("---@return boolean")
            lines.append(f"function {bare}(...) end")
        elif bare.startswith("add_") and bare.endswith("dirs"):
            lines.append("---@param dir string")
            lines.append("---@param ... string")
            lines.append(f"function {bare}(dir, ...) end")
        else:
            lines.append(f"function {bare}(...) end")
    elif cat == "script":
        prefixes = {o.rsplit(".", 1)[0] for o in origins if "." in o}
        if bare.endswith("cmd_file"):
            sig = "fun(target: Target, batchcmds: any, sourcefile: string, opt?: table)"
        elif bare.endswith("cmd_files"):
            sig = "fun(target: Target, batchcmds: any, sourcefiles: string[], opt?: table)"
        elif prefixes & {"target", "rule"}:
            sig = "fun(target: Target, ...)"
        elif prefixes & {"package", "component"}:
            sig = "fun(package: Package, ...)"
        else:
            sig = "fun(...)"
        lines.append(f"---@param func {sig}")
        lines.append(f"function {bare}(func) end")
    else:  # 未知类别，宽松处理
        lines.append(f"function {bare}(...) end")
    return "\n".join(lines)


def gen_dsl(registries: dict, language_apis: dict, version: str,
            docs: dict | None = None) -> tuple[str, dict]:
    docs = docs or {}
    # 合并注册表：裸名 -> (类别, [注册名])，跨作用域去重
    apis: dict[str, tuple[str, list[str]]] = {}
    all_regs = dict(registries)
    if language_apis:
        all_regs["language"] = language_apis
    for mod in all_regs.values():
        for cat, names in mod.items():
            for full in names:
                bare = full.rsplit(".", 1)[-1]
                if bare in apis:
                    cat0, origins = apis[bare]
                    if full not in origins:
                        origins.append(full)
                else:
                    apis[bare] = (cat, [full])

    out = [header(version)]
    out.append("-- 内建作用域函数（core/base/interpreter.lua 注册，不在 apis() 注册表中）\n")
    for scope in BUILTIN_SCOPES:
        doc = docs.get(scope)
        desc = (doc["desc"] if doc and doc["desc"] else f"定义一个 {scope} 作用域")
        nameann = "---@param name string"
        if doc and doc["params"]:
            args, annots = doc_params_to_annotations(doc)
            out.append(f"-- {desc}\n" + "\n".join(annots)
                       + f"\nfunction {scope}({', '.join(args)}) end\n")
        else:
            out.append(f"-- {desc}\n{nameann}\nfunction {scope}(name) end\n")
        out.append(f"-- 结束当前 {scope} 作用域（可选）\n"
                   f"function {scope}_end() end\n")
    inc_doc = docs.get("includes")
    inc_desc = inc_doc["desc"] if inc_doc and inc_doc["desc"] else "包含其他 xmake.lua 文件"
    out.append(f"-- {inc_desc}\n"
               "---@param ... string\n"
               "function includes(...) end\n")

    cat_titles = {
        "values": "单值设置（set_xxx / add_xxx）",
        "paths": "路径值",
        "keyvalues": "键值对",
        "dictionary": "字典",
        "groups": "分组",
        "custom": "自定义（条件判断 / 目录添加 / 配置读取）",
        "script": "脚本回调注册",
    }
    n_desc = n_typed = 0
    for cat in ("values", "paths", "keyvalues", "dictionary", "groups", "custom", "script"):
        entries = [(b, o) for b, (c, o) in apis.items() if c == cat]
        if not entries:
            continue
        out.append(f"-- {cat_titles.get(cat, cat)}（{len(entries)} 个）\n")
        for bare, origins in sorted(entries):
            doc = docs.get(bare)
            if doc and doc["desc"]:
                n_desc += 1
            if doc and doc["params"] is not None:
                n_typed += 1
            out.append(dsl_signature(bare, cat, origins, doc) + "\n")
    # 覆盖率按注册表全名（含作用域重复）统计
    full_names = [f for mod in all_regs.values() for names in mod.values() for f in names]
    stats = {
        "unique": len(apis), "with_desc": n_desc, "with_typed_sig": n_typed,
        "registry_total": len(full_names),
        "registry_with_desc": sum(1 for f in full_names
                                  if (d := docs.get(f.rsplit(".", 1)[-1])) and d["desc"]),
        "registry_with_typed_sig": sum(1 for f in full_names
                                       if (d := docs.get(f.rsplit(".", 1)[-1]))
                                       and d["params"] is not None),
    }
    return "\n".join(out), stats


def funtype_param(p: str) -> str:
    if p == "...":
        return "...: any"
    if p == "opt":
        return "opt?: table"
    if p in STRING_PARAMS:
        return f"{p}: string"
    return f"{p}: any"


def gen_instances(core: Path, version: str) -> tuple[str, dict]:
    out = [header(version)]
    stats = {}
    for cls, (rel, cname) in INSTANCE_CLASSES.items():
        f = core / rel
        if not f.exists():
            continue
        methods = parse_instance_methods(f)
        stats[cls] = len(methods)
        out.append(f"-- {cname}（{rel}，{len(methods)} 个公开方法）")
        fields = []
        for name, params, colon in methods:
            plist = ([f"self: {cls}"] if colon else []) + [funtype_param(p) for p in params]
            fields.append(f"---@field {name} fun({', '.join(plist)}): any")
        out.append(f"---@class {cls}")
        out.extend(fields)
        out.append("")
    return "\n".join(out), stats


def gen_modules(modules: dict, version: str, docs: dict | None = None) -> tuple[str, dict]:
    docs = docs or {}
    out = [header(version)]
    n_desc = n_typed = n_total = 0
    for mod, funcs in modules.items():
        out.append(f"-- 内建模块 {mod}（{len(funcs)} 个函数）")
        out.append(f"{mod} = {{}}\n")
        for fn, params in funcs.items():
            n_total += 1
            doc = docs.get(f"{mod}.{fn}")
            head = f"-- {mod}.{fn}"
            if doc and doc["desc"]:
                head += f"：{doc['desc']}"
                n_desc += 1
            out.append(head)
            # 文档原型类型按位置合并到源码真实参数名上
            dparams = [it for it in doc["params"] if it[0] != "var"] if doc and doc["params"] else []
            if dparams:
                n_typed += 1
            for i, p in enumerate(params):
                if p == "...":
                    out.append("---@param ... any")
                    continue
                ptype, optional = "any", False
                if i < len(dparams):
                    if dparams[i][0] == "opt":
                        ptype, optional = "table", p in ("opt", "options")
                    else:
                        ptype = dparams[i][2]
                        optional = (ptype == "table" and dparams[i][1] in ("opt", "options")
                                    and p in ("opt", "options"))
                out.append(f"---@param {p}{'?' if optional else ''} {ptype}")
            out.append("---@return any")
            out.append(f"function {mod}.{fn}({', '.join(params)}) end\n")
        out.append("")
    return "\n".join(out), {"total": n_total, "with_desc": n_desc, "with_typed_sig": n_typed}


def main():
    ap = argparse.ArgumentParser(description="纯源码驱动的 xmake DSL 注解生成器")
    ap.add_argument("root", help="xmake 源码根（含 xmake/core 的目录）")
    ap.add_argument("version", help="xmake 版本号（如 3.1.0）")
    ap.add_argument("outdir", nargs="?", default=".", help="输出目录（默认当前目录）")
    ap.add_argument("--docs", help="xmake-io/xmake-docs 仓库路径，启用文档合并层")
    ap.add_argument("--docs-commit", help="文档仓库 commit（默认按发布日期自动映射）")
    ap.add_argument("--release-date", help="xmake 该版本发布日期（ISO，默认用 gh 获取）")
    a = ap.parse_args()
    root = Path(a.root).resolve()
    version = a.version
    outdir = Path(a.outdir)
    core = root / "xmake" / "core"
    if not core.is_dir():
        sys.exit(f"error: {core} 不存在，源码根应为含 xmake/core 的目录")

    docs, docs_commit = {}, None
    if a.docs:
        docs_root = Path(a.docs).resolve()
        docs_commit = resolve_docs_commit(docs_root, version, a.docs_commit, a.release_date)
        docs = load_docs(docs_root)
        print(f"文档: xmake-io/xmake-docs @ {docs_commit}（{len(docs)} 个 API 条目）")

    registries = parse_registries(core)
    language_apis = parse_language_apis(root)
    modules = collect_sandbox_modules(root)

    apis_json = dict(registries)
    if language_apis:
        apis_json["language"] = language_apis

    libdir = outdir / "library"
    libdir.mkdir(parents=True, exist_ok=True)
    dsl_lua, dsl_stats = gen_dsl(registries, language_apis, version, docs)
    (libdir / "dsl.lua").write_text(dsl_lua, encoding="utf-8")
    instances_lua, inst_stats = gen_instances(core, version)
    (libdir / "instances.lua").write_text(instances_lua, encoding="utf-8")
    modules_lua, mod_stats = gen_modules(modules, version, docs)
    (libdir / "modules.lua").write_text(modules_lua, encoding="utf-8")
    (outdir / "apis.json").write_text(
        json.dumps(apis_json, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")

    n_dsl = sum(len(v) for cats in apis_json.values() for v in cats.values())
    print(f"DSL 注册表: {len(apis_json)} 个模块, {n_dsl} 个 API")
    for mod, cats in apis_json.items():
        print(f"  {mod}: " + ", ".join(f"{c}={len(v)}" for c, v in cats.items()))
    print(f"实例类: " + ", ".join(f"{c}={n}" for c, n in inst_stats.items()))
    print(f"沙箱模块: " + ", ".join(f"{m}={len(f)}" for m, f in modules.items()))
    if docs:
        print(f"文档覆盖（DSL 注册表 {dsl_stats['registry_total']} 个 API）: "
              f"描述 {dsl_stats['registry_with_desc']}, 类型签名 {dsl_stats['registry_with_typed_sig']}")
        print(f"文档覆盖（DSL 去重后 {dsl_stats['unique']} 个函数）: "
              f"描述 {dsl_stats['with_desc']}, 类型签名 {dsl_stats['with_typed_sig']}")
        print(f"文档覆盖（沙箱模块 {mod_stats['total']} 个函数）: "
              f"描述 {mod_stats['with_desc']}, 类型签名 {mod_stats['with_typed_sig']}")


if __name__ == "__main__":
    main()
