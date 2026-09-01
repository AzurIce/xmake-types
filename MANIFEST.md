# xmake/3.1.1

- xmake 版本：3.1.1（源码：xmake-io/xmake v3.1.1 tarball）
- 发布日期：2026-08-27T01:20:22Z
- 注解内容：纯源码生成 + 官方文档合并，由 tools/gen_annotations.py（main 分支 053ffb6）生成
- 文档合并层：xmake-io/xmake-docs @ 6d8554778719e9220f366481ff9c4f04f3f845bc（按发布日期映射：不晚于发布日期的最后一个 commit；zh 镜像优先、英文兜底）
- 生成统计：
```
文档: xmake-io/xmake-docs @ 6d8554778719e9220f366481ff9c4f04f3f845bc（454 个 API 条目）
DSL 注册表: 10 个模块, 468 个 API
  project: values=12, paths=1, keyvalues=1, custom=14
  target: values=37, keyvalues=7, paths=18, script=71
  option: values=12, keyvalues=1, script=3
  rule: values=5, groups=1, script=72
  base_task: values=1, dictionary=1, script=1
  package: values=21, script=8, keyvalues=3, paths=1, dictionary=1, custom=4
  repository: values=1
  component: values=1
  scheme: values=2, script=3, keyvalues=2, paths=1, dictionary=1
  language: values=140, groups=4, paths=15, dictionary=2
实例类: Target=140, Option=26, Rule=15, Package=174, PackageComponent=9
沙箱模块: coroutine=1, hash=14, io=22, linuxos=5, macos=1, math=3, os=99, path=21, semver=4, string=17, table=41, todisplay=13, utils=22, winos=13, xmake=10
文档覆盖（DSL 注册表 468 个 API）: 描述 389, 类型签名 388
文档覆盖（DSL 去重后 248 个函数）: 描述 204, 类型签名 203
文档覆盖（沙箱模块 286 个函数）: 描述 177, 类型签名 131
```
- 生成时间：2026-09-01T10:28:57+00:00
