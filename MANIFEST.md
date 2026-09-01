# xmake/3.0.7

- xmake 版本：3.0.7（源码：xmake-io/xmake v3.0.7 tarball）
- 发布日期：2026-02-10T01:28:20Z
- 注解内容：纯源码生成 + 官方文档合并，由 tools/gen_annotations.py（main 分支 053ffb6）生成
- 文档合并层：xmake-io/xmake-docs @ 4879ed48a6c2ae9df4fb31606d9c0e25c94f7d7c（按发布日期映射：不晚于发布日期的最后一个 commit；zh 镜像优先、英文兜底）
- 生成统计：
```
文档: xmake-io/xmake-docs @ 4879ed48a6c2ae9df4fb31606d9c0e25c94f7d7c（401 个 API 条目）
DSL 注册表: 10 个模块, 452 个 API
  project: values=11, paths=1, keyvalues=1, custom=14
  target: values=37, keyvalues=7, paths=18, script=71
  option: values=12, keyvalues=1, script=3
  rule: values=5, groups=1, script=72
  base_task: values=1, dictionary=1, script=1
  package: values=21, script=8, keyvalues=3, paths=1, dictionary=1, custom=4
  repository: values=1
  component: values=1
  scheme: values=2, script=3, keyvalues=2, paths=1, dictionary=1
  language: values=125, groups=4, paths=15, dictionary=2
实例类: Target=139, Option=26, Rule=15, Package=169, PackageComponent=9
沙箱模块: coroutine=1, hash=14, io=22, linuxos=5, macos=1, math=3, os=98, path=21, semver=2, string=17, table=41, todisplay=13, utils=22, winos=13, xmake=10
文档覆盖（DSL 注册表 452 个 API）: 描述 388, 类型签名 387
文档覆盖（DSL 去重后 243 个函数）: 描述 204, 类型签名 203
文档覆盖（沙箱模块 283 个函数）: 描述 125, 类型签名 95
```
- 生成时间：2026-09-01T10:28:59+00:00
