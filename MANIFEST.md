# xmake/3.0.6

- xmake 版本：3.0.6（源码：xmake-io/xmake v3.0.6 tarball）
- 发布日期：2026-01-04T01:43:23Z
- 注解内容：纯源码生成 + 官方文档合并，由 tools/gen_annotations.py（main 分支 053ffb6）生成
- 文档合并层：xmake-io/xmake-docs @ 31e8c1d82735eed9ee0b61b8a4bb02b2ebfeb936（按发布日期映射：不晚于发布日期的最后一个 commit；zh 镜像优先、英文兜底）
- 生成统计：
```
文档: xmake-io/xmake-docs @ 31e8c1d82735eed9ee0b61b8a4bb02b2ebfeb936（384 个 API 条目）
DSL 注册表: 9 个模块, 441 个 API
  project: values=11, paths=1, keyvalues=1, custom=14
  target: values=37, keyvalues=7, paths=18, script=71
  option: values=12, keyvalues=1, script=3
  rule: values=5, groups=1, script=72
  base_task: values=1, dictionary=1, script=1
  package: values=20, script=8, keyvalues=3, paths=1, dictionary=1, custom=4
  repository: values=1
  component: values=1
  language: values=124, groups=4, paths=15, dictionary=2
实例类: Target=139, Option=26, Rule=15, Package=165, PackageComponent=9
沙箱模块: coroutine=1, hash=14, io=21, linuxos=5, macos=1, math=3, os=98, path=21, semver=2, string=17, table=41, todisplay=13, utils=22, winos=13, xmake=10
文档覆盖（DSL 注册表 441 个 API）: 描述 377, 类型签名 376
文档覆盖（DSL 去重后 242 个函数）: 描述 202, 类型签名 201
文档覆盖（沙箱模块 282 个函数）: 描述 125, 类型签名 95
```
- 生成时间：2026-09-01T10:29:00+00:00
