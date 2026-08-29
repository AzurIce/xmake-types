# xmake-types

xmake.lua DSL 的 EmmyLua/LuaLS 类型注解，按 xmake 版本映射分发。

## 仓库结构

- `main`：工具链。`tools/extract_apis.py` 从 xmake 源码静态提取 DSL API 注册表（版本精确的 API 清单）；
  `tools/gen_annotations.py` 纯源码驱动生成完整注解产物（`library/` + `apis.json`）；
- `xmake/<version>`：**orphan 分支**，每个 xmake 版本一条，内容为该版本的完整注解快照
  （`library/` + `apis.json` + `MANIFEST.md`）。版本之间无线性关系，互不影响。

## 消费方式

作为 git submodule 引用并按版本分支跟踪：

```bash
git submodule add -b xmake/3.1.0 https://github.com/AzurIce/xmake-types extern/xmake-types
```

然后在 `.luarc.json` 中加入：

```json
{ "workspace.library": ["extern/xmake-types/library"] }
```
