#!/usr/bin/env python3
"""从 xmake 源码静态提取描述域 DSL API 注册表（各模块的 apis() 函数）。

用法: extract_apis.py <xmake源码根> <输出.json>
"""
import json
import re
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


def strip_comments(src: str) -> str:
    # 去掉行注释（apis() 块内没有字符串里含 -- 的情况）
    return re.sub(r"--[^\n]*", "", src)


def extract_apis_block(src: str, fname: str) -> str | None:
    m = re.search(r"function\s+[\w.:]+\s*\.\s*apis\s*\(\s*\)(.*?)\nend", src, re.S)
    if not m:
        m = re.search(r"function\s+\w+\.apis\s*\(\s*\)(.*?)\nend", src, re.S)
    return m.group(1) if m else None


def parse_categories(block: str) -> dict:
    """解析 { values = {...}, custom = {...}, ... } 为 {类别: [api名]}。"""
    result = {}
    # 顶层类别键： xxx = { ... }
    for cat_m in re.finditer(r"(\w+)\s*=\s*\{", block):
        cat = cat_m.group(1)
        start = cat_m.end()
        # 配对花括号找类别块结束
        depth, i = 1, start
        while i < len(block) and depth:
            if block[i] == "{":
                depth += 1
            elif block[i] == "}":
                depth -= 1
            i += 1
        body = block[start:i - 1]
        if cat == "custom":
            # {"apiname", handler} 形式：取每个子表第一个字符串
            names = re.findall(r'\{\s*"([^"]+)"', body)
        else:
            names = re.findall(r'"([^"]+)"', body)
        result[cat] = names
    return result


def main():
    root = Path(sys.argv[1]) / "xmake" / "core"
    out = {}
    for mod, rel in MODULES.items():
        f = root / rel
        if not f.exists():
            continue
        src = strip_comments(f.read_text(encoding="utf-8"))
        block = extract_apis_block(src, rel)
        if block:
            out[mod] = parse_categories(block)
    Path(sys.argv[2]).write_text(json.dumps(out, indent=2, ensure_ascii=False))
    total = sum(len(v) for cats in out.values() for v in cats.values())
    print(f"{sys.argv[2]}: {len(out)} modules, {total} apis")


if __name__ == "__main__":
    main()
