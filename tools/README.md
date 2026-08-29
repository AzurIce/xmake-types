# tools/

## gen_release.sh

版本发布流水线：为指定 xmake 版本生成注解 orphan 分支（`xmake/<version>`，单根提交）并推送。
新版本发布后跑一条命令即可：

```bash
# 在 xmake-types 仓库根（main 分支、工作区干净）执行
tools/gen_release.sh 3.1.1            # 一个或多个版本
tools/gen_release.sh 3.0.9 2.9.9      # 批量
```

每个版本：下载 tarball（带重试，缓存于 `$XMAKE_SRC_CACHE`）→ `gen_annotations.py --docs`
（docs commit 按发布日期自动映射）→ 建 orphan 分支 → push。已存在的远程分支自动跳过；
某版本失败记录原因并继续。生成产物保留在 `$XMAKE_GEN_OUT/<version>/` 供抽查验证。

环境变量：`XMAKE_DOCS_REPO`（默认 /tmp/xmake-docs，需全量历史）、`XMAKE_SRC_CACHE`
（默认 /tmp/xmake-src）、`XMAKE_GEN_OUT`（默认 /tmp/xmake-gen）、`https_proxy`（下载/推送代理）。

## gen_annotations.py

纯源码驱动的注解生成器（python3，无三方依赖，不走 xmake 运行时）：静态解析 xmake 源码，
生成完整的 EmmyLua/LuaLS 注解产物 `library/` + `apis.json`。

```bash
# 对某个 xmake 源码树（tarball 解压、git checkout 或 nix store 的 share 目录）
python3 tools/gen_annotations.py /path/to/xmake-root 3.1.0 /path/to/output
# 输出: <output>/library/{dsl,instances,modules}.lua + <output>/apis.json

# 启用文档合并层（xmake-io/xmake-docs 的 markdown：类型签名 + 中文描述）
python3 tools/gen_annotations.py /path/to/xmake-root 3.1.0 /path/to/output --docs /path/to/xmake-docs
# docs commit 默认按版本发布日期自动映射（rev-list --before，日期用 gh release view 获取），
# 也可用 --docs-commit / --release-date 显式指定
```

解析来源：

- 描述域 DSL：`core/` 下 12 个模块的静态 `apis()` 注册表（values/paths/keyvalues/custom/script 等）
- 语言 API：`languages/*/load.lua` 的 `_get_apis()`（add_cxflags/add_defines/add_syslinks 等由语言实例动态贡献）
- 实例类：`core/{project,package}/*.lua` 的 `function _instance:xxx(...)` 公开方法 → Target/Option/Rule/Package/PackageComponent
- 沙箱模块：`core/sandbox/modules/<name>.lua` + 真实定义 `core/base/<name>.lua` → os/path/io/table/string/utils/hash/semver 等

文档合并层（`--docs`）规则：API 存在性与集合以源码注册表为准；解析文档仓库
`docs/api/description/*.md` 与 `docs/api/scripts/builtin-modules/*.md`（zh 镜像优先、英文兜底，
同语言内按文件名序先出现者优先），把 `#### 函数原型` 代码块中的类型签名合并进 `@param`
（如 `version: <string>` → `---@param version string`，`{...}` 选项表 → `opt?: table`），
节标题下的一句话描述（zh 优先）写入函数上方的 `--` 注释。文档有而注册表没有的 API 忽略；
文档覆盖不到的 API 保留占位注释。

## extract_apis.py

从指定版本的 xmake 源码静态提取描述域 DSL API 注册表（各模块的 `apis()` 函数），输出 JSON。

```bash
# 对某个 xmake 源码树（tarball 解压或 git checkout）
python3 tools/extract_apis.py /path/to/xmake-3.1.0 apis_3.1.0.json

# 两个版本对比
diff <(jq -S . apis_3.0.9.json) <(jq -S . apis_3.1.0.json)
```

用途：xmake 升级时精确得知 DSL API 集合的增删，作为注解库（library/）的更新清单。
注册表只含 API 名称与调用形态（values/paths/custom/script 等），类型与文档仍需人工或爬虫补充。
