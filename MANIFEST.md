# xmake/3.0.8

- xmake 版本：3.0.8（源码：xmake-io/xmake v3.0.8 tarball）
- 发布日期：2026-03-23T22:37:50Z
- 注解内容：纯源码生成 + 官方文档合并，由 tools/gen_annotations.py（main 分支 053ffb6）生成
- 文档合并层：xmake-io/xmake-docs @ adfbf81927390dd23a569a2fd52178d678b0e494（按发布日期映射：不晚于发布日期的最后一个 commit；zh 镜像优先、英文兜底）
- 生成统计：
```
文档: xmake-io/xmake-docs @ adfbf81927390dd23a569a2fd52178d678b0e494（451 个 API 条目）
DSL 注册表: 10 个模块, 455 个 API
  project: values=11, paths=1, keyvalues=1, custom=14
  target: values=37, keyvalues=7, paths=18, script=71
  option: values=12, keyvalues=1, script=3
  rule: values=5, groups=1, script=72
  base_task: values=1, dictionary=1, script=1
  package: values=21, script=8, keyvalues=3, paths=1, dictionary=1, custom=4
  repository: values=1
  component: values=1
  scheme: values=2, script=3, keyvalues=2, paths=1, dictionary=1
  language: values=128, groups=4, paths=15, dictionary=2
实例类: Target=139, Option=26, Rule=15, Package=170, PackageComponent=9
沙箱模块: coroutine=1, hash=14, io=22, linuxos=5, macos=1, math=3, os=99, path=21, semver=2, string=17, table=41, todisplay=13, utils=22, winos=13, xmake=10
文档覆盖（DSL 注册表 455 个 API）: 描述 388, 类型签名 387
文档覆盖（DSL 去重后 244 个函数）: 描述 204, 类型签名 203
文档覆盖（沙箱模块 284 个函数）: 描述 174, 类型签名 129
```
- 生成时间：2026-09-01T10:28:55+00:00
