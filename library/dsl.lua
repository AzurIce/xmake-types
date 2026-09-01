---@meta
---xmake version: 3.0.1

-- 沙箱内建函数（core/sandbox/modules 注册，不在 apis() 注册表中）

-- 导入 xmake 扩展模块
---@param name string
---@param opt? table
---@return any
function import(name, opt) end

-- 内建作用域函数（core/base/interpreter.lua 注册，不在 apis() 注册表中）

-- 定义工程目标
---@param name string
function target(name) end

-- 结束当前 target 作用域（可选）
function target_end() end

-- 定义选项
---@param name string
function option(name) end

-- 结束当前 option 作用域（可选）
function option_end() end

-- 定义规则
---@param name string
function rule(name) end

-- 结束当前 rule 作用域（可选）
function rule_end() end

-- 定义插件或者任务
---@param name string
function task(name) end

-- 结束当前 task 作用域（可选）
function task_end() end

-- 仓库依赖包定义描述
---@param name string
function package(name) end

-- 结束当前 package 作用域（可选）
function package_end() end

-- 定义工具链
---@param name string
function toolchain(name) end

-- 结束当前 toolchain 作用域（可选）
function toolchain_end() end

-- 添加子工程文件和目录
---@param ... string
function includes(...) end

-- 单值设置（set_xxx / add_xxx）（105 个）

-- option.add_arflags / package.add_arflags / target.add_arflags / toolchain.add_arflags
-- 添加静态库归档选项
---@param ... any
function add_arflags(...) end

-- option.add_asflags / package.add_asflags / target.add_asflags / toolchain.add_asflags
-- 添加汇编编译选项
---@param ... any
function add_asflags(...) end

-- package.add_bindirs
-- 添加可执行文件目录
---@param ... any
function add_bindirs(...) end

-- option.add_cflags / package.add_cflags / target.add_cflags / toolchain.add_cflags
-- 添加c编译选项
---@param ... any
function add_cflags(...) end

-- option.add_cfuncs
-- 添加c库函数检测
---@param ... any
function add_cfuncs(...) end

-- option.add_cincludes
-- 添加c头文件检测
---@param ... any
function add_cincludes(...) end

-- package.add_components
-- 添加包组件
---@param ... any
function add_components(...) end

-- package.add_configs
-- 添加包配置
---@param ... any
function add_configs(...) end

-- option.add_ctypes
-- 添加c类型检测
---@param ... any
function add_ctypes(...) end

-- option.add_cuflags / package.add_cuflags / target.add_cuflags / toolchain.add_cuflags
-- 添加cuda编译选项
---@param ... any
function add_cuflags(...) end

-- option.add_cugencodes / target.add_cugencodes / toolchain.add_cugencodes
-- 添加cuda设备的gencode设置
---@param ... any
function add_cugencodes(...) end

-- option.add_culdflags / package.add_culdflags / target.add_culdflags / toolchain.add_culdflags
-- 添加cuda设备链接选项
---@param ... any
function add_culdflags(...) end

-- option.add_cxflags / package.add_cxflags / target.add_cxflags / toolchain.add_cxflags
-- 添加c/c++编译选项
---@param ... any
function add_cxflags(...) end

-- option.add_cxxflags / package.add_cxxflags / target.add_cxxflags / toolchain.add_cxxflags
-- 添加c++编译选项
---@param ... any
function add_cxxflags(...) end

-- option.add_cxxfuncs
-- 添加c++库函数检测
---@param ... any
function add_cxxfuncs(...) end

-- option.add_cxxincludes
-- 添加c++头文件检测
---@param ... any
function add_cxxincludes(...) end

-- option.add_cxxtypes
-- 添加c++类型检测
---@param ... any
function add_cxxtypes(...) end

-- option.add_dcflags / package.add_dcflags / target.add_dcflags / toolchain.add_dcflags
-- 添加dlang编译选项
---@param ... any
function add_dcflags(...) end

-- option.add_defines / package.add_defines / target.add_defines / toolchain.add_defines
-- 添加宏定义
---@param ... any
function add_defines(...) end

-- target.add_deps / option.add_deps / rule.add_deps / package.add_deps
-- 添加选项依赖
---@param ... any
function add_deps(...) end

-- package.add_extsources / component.add_extsources
-- 添加扩展的包源
---@param ... any
function add_extsources(...) end

-- option.add_fcflags / package.add_fcflags / target.add_fcflags / toolchain.add_fcflags
-- 添加fortran编译选项
---@param ... any
function add_fcflags(...) end

-- option.add_features
---@param ... any
function add_features(...) end

-- target.add_filegroups
-- 添加源文件分组
---@param ... any
function add_filegroups(...) end

-- target.add_forceincludes
-- 强制添加 includes
---@param ... any
function add_forceincludes(...) end

-- package.add_frameworkdirs / toolchain.add_frameworkdirs / option.add_frameworkdirs / target.add_frameworkdirs
-- 添加链接框架搜索目录
---@param ... any
function add_frameworkdirs(...) end

-- option.add_frameworks / package.add_frameworks / target.add_frameworks / toolchain.add_frameworks
-- 添加依赖的系统 frameworks 链接
---@param ... any
function add_frameworks(...) end

-- option.add_gcflags / target.add_gcflags / toolchain.add_gcflags
-- 添加go编译选项
---@param ... any
function add_gcflags(...) end

-- target.add_imports / option.add_imports / rule.add_imports / package.add_imports
-- 为所有自定义脚本预先导入扩展模块
---@param ... any
function add_imports(...) end

-- package.add_includedirs / toolchain.add_includedirs / option.add_includedirs / target.add_includedirs
-- 添加其他头文件搜索目录
---@param ... any
function add_includedirs(...) end

-- option.add_kcflags / target.add_kcflags / toolchain.add_kcflags
---@param ... any
function add_kcflags(...) end

-- target.add_languages
-- 添加语言标准
---@param ... any
function add_languages(...) end

-- option.add_ldflags / package.add_ldflags / target.add_ldflags / toolchain.add_ldflags
-- 添加链接选项
---@param ... any
function add_ldflags(...) end

-- package.add_linkdirs / toolchain.add_linkdirs / option.add_linkdirs / target.add_linkdirs
-- 添加链接库检测时候需要的搜索目录
---@param ... any
function add_linkdirs(...) end

-- option.add_links / package.add_links / target.add_links / toolchain.add_links
-- 添加链接库检测
---@param ... any
function add_links(...) end

-- option.add_mflags / package.add_mflags / target.add_mflags / toolchain.add_mflags
-- 添加objc编译选项
---@param ... any
function add_mflags(...) end

-- option.add_mrcflags / target.add_mrcflags / toolchain.add_mrcflags
---@param ... any
function add_mrcflags(...) end

-- option.add_mxflags / package.add_mxflags / target.add_mxflags / toolchain.add_mxflags
-- 添加objc/objc++编译选项
---@param ... any
function add_mxflags(...) end

-- option.add_mxxflags / package.add_mxxflags / target.add_mxxflags / toolchain.add_mxxflags
-- 添加objc++编译选项
---@param ... any
function add_mxxflags(...) end

-- option.add_ncflags / target.add_ncflags / toolchain.add_ncflags
---@param ... any
function add_ncflags(...) end

-- target.add_options
-- 添加关联选项
---@param ... any
function add_options(...) end

-- target.add_packages
-- 添加包依赖
---@param ... any
function add_packages(...) end

-- option.add_pcflags / package.add_pcflags / target.add_pcflags / toolchain.add_pcflags
---@param ... any
function add_pcflags(...) end

-- option.add_rcflags / target.add_rcflags / toolchain.add_rcflags
-- 添加rust编译选项
---@param ... any
function add_rcflags(...) end

-- add_repositories
-- 添加依赖包仓库
---@param ... any
function add_repositories(...) end

-- add_requireconfs
-- 设置指定依赖包的配置
---@param ... any
function add_requireconfs(...) end

-- add_requires
-- 添加需要的依赖包
---@param ... any
function add_requires(...) end

-- option.add_rpathdirs / package.add_rpathdirs / target.add_rpathdirs / toolchain.add_rpathdirs
-- 添加程序运行时动态库的加载搜索目录
---@param ... any
function add_rpathdirs(...) end

-- target.add_rules
-- 添加规则到目标
---@param ... any
function add_rules(...) end

-- option.add_scflags / target.add_scflags / toolchain.add_scflags
-- 添加swift编译选项
---@param ... any
function add_scflags(...) end

-- option.add_shflags / package.add_shflags / target.add_shflags / toolchain.add_shflags
-- 添加动态库链接选项
---@param ... any
function add_shflags(...) end

-- package.add_sysincludedirs / toolchain.add_sysincludedirs / option.add_sysincludedirs / target.add_sysincludedirs
-- 添加系统头文件搜索目录
---@param ... any
function add_sysincludedirs(...) end

-- option.add_syslinks / package.add_syslinks / target.add_syslinks / toolchain.add_syslinks
-- 设置系统库链接
---@param ... any
function add_syslinks(...) end

-- target.add_tests
-- 添加测试用例
---@param ... any
function add_tests(...) end

-- target.add_toolchains
---@param ... any
function add_toolchains(...) end

-- option.add_undefines / package.add_undefines / target.add_undefines / toolchain.add_undefines
-- 取消宏定义
---@param ... any
function add_undefines(...) end

-- package.add_urls
-- 添加包源地址
---@param ... any
function add_urls(...) end

-- target.add_vectorexts / option.add_vectorexts
-- 添加向量扩展指令
---@param ... any
function add_vectorexts(...) end

-- option.add_zcflags / package.add_zcflags / target.add_zcflags / toolchain.add_zcflags
-- 添加zig编译选项
---@param ... any
function add_zcflags(...) end

-- set_allowedarchs
-- 设置允许编译的平台架构
---@param value any
function set_allowedarchs(value) end

-- set_allowedmodes
-- 设置允许的编译模式列表
---@param value any
function set_allowedmodes(value) end

-- set_allowedplats
-- 设置允许编译的平台列表
---@param value any
function set_allowedplats(value) end

-- target.set_arch / package.set_arch
-- 设置指定目标的编译架构
---@param value any
function set_arch(value) end

-- package.set_base
-- 继承包配置
---@param value any
function set_base(value) end

-- target.set_basename
-- 设置目标文件名
---@param value any
function set_basename(value) end

-- package.set_cachedir
---@param value any
function set_cachedir(value) end

-- option.set_category / task.set_category
-- 设置选项分类，仅用于菜单显示
---@param value any
function set_category(value) end

-- target.set_default / option.set_default
-- 设置选项默认值
---@param value any
function set_default(value) end

-- set_defaultarchs
-- 设置默认的编译架构
---@param value any
function set_defaultarchs(value) end

-- set_defaultmode
-- 设置默认的编译模式
---@param value any
function set_defaultmode(value) end

-- set_defaultplat
-- 设置默认的编译平台
---@param value any
function set_defaultplat(value) end

-- set_description / option.set_description / package.set_description
-- 设置菜单显示描述
---@param value any
function set_description(value) end

-- target.set_enabled
-- 设置是否启用或禁用目标
---@param value any
function set_enabled(value) end

-- target.set_encodings
-- 设置编码
---@param value any
function set_encodings(value) end

-- target.set_exceptions
-- 启用或者禁用异常
---@param value any
function set_exceptions(value) end

-- target.set_extension
-- 设置目标文件的扩展名
---@param value any
function set_extension(value) end

-- rule.set_extensions
-- 设置规则支持的文件扩展类型
---@param value any
function set_extensions(value) end

-- target.set_filename
-- 设置目标文件全名
---@param value any
function set_filename(value) end

-- target.set_fpmodels
-- 设置float-point编译模式
---@param value any
function set_fpmodels(value) end

-- target.set_group
-- 设置目标分组
---@param value any
function set_group(value) end

-- package.set_homepage
-- 设置包所在项目的官方页面地址
---@param value any
function set_homepage(value) end

-- package.set_installtips
---@param value any
function set_installtips(value) end

-- target.set_kind / rule.set_kind / package.set_kind
-- 设置工具链类型
---@param value any
function set_kind(value) end

-- target.set_languages / option.set_languages
-- 设置代码语言标准
---@param value any
function set_languages(value) end

-- target.set_license / package.set_license
-- 设置包的 License
---@param value any
function set_license(value) end

-- target.set_optimize / option.set_optimize
-- 设置优化级别
---@param value any
function set_optimize(value) end

-- target.set_options
-- 设置关联选项
---@param value any
function set_options(value) end

-- package.set_parallelize
---@param value any
function set_parallelize(value) end

-- target.set_plat / package.set_plat
-- 设置指定目标的编译平台
---@param value any
function set_plat(value) end

-- target.set_prefixdir
-- 设置安装前置子目录
---@param value any
function set_prefixdir(value) end

-- target.set_prefixname
-- 设置目标文件的前置名
---@param value any
function set_prefixname(value) end

-- set_project
-- 设置工程名
---@param value any
function set_project(value) end

-- target.set_rules
---@param value any
function set_rules(value) end

-- target.set_runargs
-- 设置运行参数列表
---@param value any
function set_runargs(value) end

-- target.set_runtimes
-- 设置编译目标依赖的运行时库
---@param value any
function set_runtimes(value) end

-- option.set_showmenu
-- 设置是否启用菜单显示
---@param value any
function set_showmenu(value) end

-- package.set_sourcedir
---@param value any
function set_sourcedir(value) end

-- rule.set_sourcekinds
---@param value any
function set_sourcekinds(value) end

-- target.set_strip
-- 设置是否strip信息
---@param value any
function set_strip(value) end

-- target.set_suffixname
-- 设置目标文件的后置名
---@param value any
function set_suffixname(value) end

-- target.set_symbols
-- 设置符号信息
---@param value any
function set_symbols(value) end

-- target.set_toolchains
-- 设置工具链
---@param value any
function set_toolchains(value) end

-- package.set_urls
-- 设置包源地址
---@param value any
function set_urls(value) end

-- target.set_version
-- 设置工程版本
---@param value any
function set_version(value) end

-- target.set_warnings / option.set_warnings
-- 设置警告级别
---@param value any
function set_warnings(value) end

-- 路径值（25 个）

-- target.add_cleanfiles
---@param ... string
function add_cleanfiles(...) end

-- target.add_configfiles
-- 添加模板配置文件
---@param ... string
function add_configfiles(...) end

-- target.add_extrafiles
-- 添加额外的文件
---@param ... string
function add_extrafiles(...) end

-- target.add_files
-- 添加源代码文件
---@param ... string
function add_files(...) end

-- target.add_headerfiles
-- 添加安装头文件
---@param ... string
function add_headerfiles(...) end

-- target.add_installfiles
-- 添加安装文件
---@param ... string
function add_installfiles(...) end

-- add_packagedirs
---@param ... string
function add_packagedirs(...) end

-- package.add_versionfiles
-- 添加包版本列表
---@param ... string
function add_versionfiles(...) end

-- target.del_files
---@param path string
function del_files(path) end

-- target.remove_configfiles
---@param path string
function remove_configfiles(path) end

-- target.remove_extrafiles
---@param path string
function remove_extrafiles(path) end

-- target.remove_files
-- 从前面的源代码文件列表中删除指定文件
---@param path string
function remove_files(path) end

-- target.remove_headerfiles
-- 从前面的头文件列表中删除指定文件
---@param path string
function remove_headerfiles(path) end

-- target.remove_installfiles
---@param path string
function remove_installfiles(path) end

-- target.set_autogendir
---@param path string
function set_autogendir(path) end

-- target.set_configdir
-- 设置模板配置文件的输出目录
---@param path string
function set_configdir(path) end

-- target.set_dependir
-- 设置依赖文件生成目录
---@param path string
function set_dependir(path) end

-- target.set_installdir / package.set_installdir
-- 设置安装目录
---@param path string
function set_installdir(path) end

-- target.set_objectdir
-- 设置对象文件生成目录
---@param path string
function set_objectdir(path) end

-- target.set_pcheader
-- 设置 C 预编译头文件
---@param path string
function set_pcheader(path) end

-- target.set_pcxxheader
-- 设置 C++ 预编译头文件
---@param path string
function set_pcxxheader(path) end

-- target.set_pmheader
-- 设置 ObjC 预编译头文件
---@param path string
function set_pmheader(path) end

-- target.set_pmxxheader
-- 设置 ObjC++ 预编译头文件
---@param path string
function set_pmxxheader(path) end

-- target.set_rundir
-- 设置运行目录
---@param path string
function set_rundir(path) end

-- target.set_targetdir
-- 设置生成目标文件目录
---@param path string
function set_targetdir(path) end

-- 键值对（10 个）

-- package.add_patches
-- 设置包补丁
---@param key string
---@param value any
function add_patches(key, value) end

-- package.add_resources
---@param key string
---@param value any
function add_resources(key, value) end

-- target.add_runenvs
-- 添加运行环境变量
---@param key string
---@param value any
function add_runenvs(key, value) end

-- target.add_values
-- 添加一些扩展配置值
---@param key string
---@param value any
function add_values(key, value) end

-- set_config
-- 设置给定的默认配置值
---@param key string
---@param value any
function set_config(key, value) end

-- target.set_configvar / option.set_configvar
-- 设置模板配置变量
---@param key string
---@param value any
function set_configvar(key, value) end

-- target.set_policy / package.set_policy
-- 设置构建行为策略
---@param key string
---@param value any
function set_policy(key, value) end

-- target.set_runenv
-- 设置运行环境变量
---@param key string
---@param value any
function set_runenv(key, value) end

-- target.set_toolset
-- 设置工具集
---@param key string
---@param value any
function set_toolset(key, value) end

-- target.set_values / option.set_values
-- 设置选项值列表
---@param key string
---@param value any
function set_values(key, value) end

-- 字典（4 个）

-- option.add_csnippets
-- 添加c代码片段检测
---@param key string
---@param value any
function add_csnippets(key, value) end

-- option.add_cxxsnippets
-- 添加c++代码片段检测
---@param key string
---@param value any
function add_cxxsnippets(key, value) end

-- package.add_versions
-- 设置每个源码包的版本
---@param key string
---@param value any
function add_versions(key, value) end

-- task.set_menu
-- 设置任务菜单
---@param key string
---@param value any
function set_menu(key, value) end

-- 分组（3 个）

-- package.add_linkgroups / target.add_linkgroups
-- 配置包的链接组
---@param ... any
function add_linkgroups(...) end

-- package.add_linkorders / target.add_linkorders
-- 调整包内部的链接顺序
---@param ... any
function add_linkorders(...) end

-- rule.add_orders
---@param ... any
function add_orders(...) end

-- 自定义（条件判断 / 目录添加 / 配置读取）（15 个）

-- add_moduledirs
-- 添加模块目录
---@param dir string
---@param ... string
function add_moduledirs(dir, ...) end

-- add_platformdirs
---@param dir string
---@param ... string
function add_platformdirs(dir, ...) end

-- add_plugindirs
-- 添加插件目录
---@param dir string
---@param ... string
function add_plugindirs(dir, ...) end

-- add_toolchaindirs
---@param dir string
---@param ... string
function add_toolchaindirs(dir, ...) end

-- get_config
-- 获取给定的配置值
---@param name string
---@param ... any
---@return any
function get_config(name, ...) end

-- has_config
-- 判断配置是否启用或者存在
---@param name string
---@param ... any
---@return boolean
function has_config(name, ...) end

-- has_package
-- 判断依赖包是否启用或者存在
---@return boolean
function has_package(...) end

-- is_arch
-- 判断当前编译架构
---@return boolean
function is_arch(...) end

-- is_config
-- 判断指定配置是否为给定的值
---@param name string
---@param ... any
---@return boolean
function is_config(name, ...) end

-- is_cross
-- 判断当前平台是否为交叉编译
---@return boolean
function is_cross(...) end

-- is_host
-- 判断当前主机环境的操作系统
---@return boolean
function is_host(...) end

-- is_kind
-- 判断当前编译类型
---@return boolean
function is_kind(...) end

-- is_mode
-- 判断当前编译模式
---@return boolean
function is_mode(...) end

-- is_os
-- 判断当前构建目标的操作系统
---@return boolean
function is_os(...) end

-- is_plat
-- 判断当前编译平台
---@return boolean
function is_plat(...) end

-- 脚本回调注册（79 个）

-- target.after_build / rule.after_build
-- 自定义编译后脚本
---@param func fun(target: Target, ...)
function after_build(func) end

-- target.after_build_file / rule.after_build_file
-- 自定义编译后脚本，一次处理一个源文件
---@param func fun(target: Target, ...)
function after_build_file(func) end

-- target.after_build_files / rule.after_build_files
-- 自定义编译后脚本，一次处理多个源文件
---@param func fun(target: Target, ...)
function after_build_files(func) end

-- target.after_buildcmd / rule.after_buildcmd
-- 自定义构建之后的脚本
---@param func fun(target: Target, ...)
function after_buildcmd(func) end

-- target.after_buildcmd_file / rule.after_buildcmd_file
-- 自定义编译后批处理脚本，一次处理一个源文件
---@param func fun(target: Target, batchcmds: any, sourcefile: string, opt?: table)
function after_buildcmd_file(func) end

-- target.after_buildcmd_files / rule.after_buildcmd_files
-- 自定义编译后批处理脚本，一次处理多个源文件
---@param func fun(target: Target, batchcmds: any, sourcefiles: string[], opt?: table)
function after_buildcmd_files(func) end

-- option.after_check
-- 选项检测之后执行此脚本
---@param func fun(...)
function after_check(func) end

-- target.after_clean / rule.after_clean
-- 自定义清理后脚本
---@param func fun(target: Target, ...)
function after_clean(func) end

-- target.after_config / rule.after_config
-- 自定义配置后脚本
---@param func fun(target: Target, ...)
function after_config(func) end

-- target.after_install / rule.after_install
-- 自定义安装后脚本
---@param func fun(target: Target, ...)
function after_install(func) end

-- target.after_installcmd / rule.after_installcmd
-- 添加组件安装之后的脚本
---@param func fun(target: Target, ...)
function after_installcmd(func) end

-- target.after_link / rule.after_link
-- 自定义链接后脚本
---@param func fun(target: Target, ...)
function after_link(func) end

-- target.after_linkcmd / rule.after_linkcmd
---@param func fun(target: Target, ...)
function after_linkcmd(func) end

-- target.after_load / rule.after_load
---@param func fun(target: Target, ...)
function after_load(func) end

-- target.after_package / rule.after_package
-- 自定义打包后脚本
---@param func fun(target: Target, ...)
function after_package(func) end

-- target.after_prepare / rule.after_prepare
-- 在准备阶段之后执行自定义脚本
---@param func fun(target: Target, ...)
function after_prepare(func) end

-- target.after_prepare_file / rule.after_prepare_file
-- 在准备阶段单文件处理后执行自定义脚本
---@param func fun(target: Target, ...)
function after_prepare_file(func) end

-- target.after_prepare_files / rule.after_prepare_files
-- 在准备阶段批量文件处理后执行自定义脚本
---@param func fun(target: Target, ...)
function after_prepare_files(func) end

-- target.after_preparecmd / rule.after_preparecmd
---@param func fun(target: Target, ...)
function after_preparecmd(func) end

-- target.after_preparecmd_file / rule.after_preparecmd_file
---@param func fun(target: Target, batchcmds: any, sourcefile: string, opt?: table)
function after_preparecmd_file(func) end

-- target.after_preparecmd_files / rule.after_preparecmd_files
---@param func fun(target: Target, batchcmds: any, sourcefiles: string[], opt?: table)
function after_preparecmd_files(func) end

-- target.after_run / rule.after_run
-- 在运行之后执行一些自定义脚本
---@param func fun(target: Target, ...)
function after_run(func) end

-- target.after_test / rule.after_test
---@param func fun(target: Target, ...)
function after_test(func) end

-- target.after_uninstall / rule.after_uninstall
-- 自定义卸载后脚本
---@param func fun(target: Target, ...)
function after_uninstall(func) end

-- target.after_uninstallcmd / rule.after_uninstallcmd
-- 添加组件卸载之后的脚本
---@param func fun(target: Target, ...)
function after_uninstallcmd(func) end

-- target.before_build / rule.before_build
-- 自定义编译前脚本
---@param func fun(target: Target, ...)
function before_build(func) end

-- target.before_build_file / rule.before_build_file
-- 自定义编译前脚本，一次处理一个源文件
---@param func fun(target: Target, ...)
function before_build_file(func) end

-- target.before_build_files / rule.before_build_files
-- 自定义编译前脚本，一次处理多个源文件
---@param func fun(target: Target, ...)
function before_build_files(func) end

-- target.before_buildcmd / rule.before_buildcmd
-- 自定义构建之前的脚本
---@param func fun(target: Target, ...)
function before_buildcmd(func) end

-- target.before_buildcmd_file / rule.before_buildcmd_file
-- 自定义编译前批处理脚本，一次处理一个源文件
---@param func fun(target: Target, batchcmds: any, sourcefile: string, opt?: table)
function before_buildcmd_file(func) end

-- target.before_buildcmd_files / rule.before_buildcmd_files
-- 自定义编译前批处理脚本，一次处理多个源文件
---@param func fun(target: Target, batchcmds: any, sourcefiles: string[], opt?: table)
function before_buildcmd_files(func) end

-- option.before_check
-- 选项检测之前执行此脚本
---@param func fun(...)
function before_check(func) end

-- target.before_clean / rule.before_clean
-- 自定义清理前脚本
---@param func fun(target: Target, ...)
function before_clean(func) end

-- target.before_config / rule.before_config
-- 自定义配置前脚本
---@param func fun(target: Target, ...)
function before_config(func) end

-- target.before_install / rule.before_install
-- 自定义安装前脚本
---@param func fun(target: Target, ...)
function before_install(func) end

-- target.before_installcmd / rule.before_installcmd
-- 添加组件安装之前的脚本
---@param func fun(target: Target, ...)
function before_installcmd(func) end

-- target.before_link / rule.before_link
-- 自定义链接前脚本
---@param func fun(target: Target, ...)
function before_link(func) end

-- target.before_linkcmd / rule.before_linkcmd
---@param func fun(target: Target, ...)
function before_linkcmd(func) end

-- rule.before_load
---@param func fun(target: Target, ...)
function before_load(func) end

-- target.before_package / rule.before_package
-- 自定义打包前脚本
---@param func fun(target: Target, ...)
function before_package(func) end

-- target.before_prepare / rule.before_prepare
-- 在准备阶段之前执行自定义脚本
---@param func fun(target: Target, ...)
function before_prepare(func) end

-- target.before_prepare_file / rule.before_prepare_file
-- 在准备阶段单文件处理前执行自定义脚本
---@param func fun(target: Target, ...)
function before_prepare_file(func) end

-- target.before_prepare_files / rule.before_prepare_files
-- 在准备阶段批量文件处理前执行自定义脚本
---@param func fun(target: Target, ...)
function before_prepare_files(func) end

-- target.before_preparecmd / rule.before_preparecmd
---@param func fun(target: Target, ...)
function before_preparecmd(func) end

-- target.before_preparecmd_file / rule.before_preparecmd_file
---@param func fun(target: Target, batchcmds: any, sourcefile: string, opt?: table)
function before_preparecmd_file(func) end

-- target.before_preparecmd_files / rule.before_preparecmd_files
---@param func fun(target: Target, batchcmds: any, sourcefiles: string[], opt?: table)
function before_preparecmd_files(func) end

-- target.before_run / rule.before_run
-- 在运行之前执行一些自定义脚本
---@param func fun(target: Target, ...)
function before_run(func) end

-- target.before_test / rule.before_test
---@param func fun(target: Target, ...)
function before_test(func) end

-- target.before_uninstall / rule.before_uninstall
-- 自定义卸载前脚本
---@param func fun(target: Target, ...)
function before_uninstall(func) end

-- target.before_uninstallcmd / rule.before_uninstallcmd
-- 添加组件卸载之前的脚本
---@param func fun(target: Target, ...)
function before_uninstallcmd(func) end

-- target.on_build / rule.on_build
-- 自定义编译脚本
---@param func fun(target: Target, ...)
function on_build(func) end

-- target.on_build_file / rule.on_build_file
-- 自定义编译脚本，一次处理一个源文件
---@param func fun(target: Target, ...)
function on_build_file(func) end

-- target.on_build_files / rule.on_build_files
-- 自定义编译脚本，一次处理多个源文件
---@param func fun(target: Target, ...)
function on_build_files(func) end

-- target.on_buildcmd / rule.on_buildcmd
-- 自定义构建脚本
---@param func fun(target: Target, ...)
function on_buildcmd(func) end

-- target.on_buildcmd_file / rule.on_buildcmd_file
-- 自定义批处理编译脚本，一次处理一个源文件
---@param func fun(target: Target, batchcmds: any, sourcefile: string, opt?: table)
function on_buildcmd_file(func) end

-- target.on_buildcmd_files / rule.on_buildcmd_files
-- 自定义批处理编译脚本，一次处理多个源文件
---@param func fun(target: Target, batchcmds: any, sourcefiles: string[], opt?: table)
function on_buildcmd_files(func) end

-- option.on_check / package.on_check
-- 自定义选项检测脚本
---@param func fun(package: Package, ...)
function on_check(func) end

-- target.on_clean / rule.on_clean
-- 自定义清理脚本
---@param func fun(target: Target, ...)
function on_clean(func) end

-- package.on_component
-- 配置包组件
---@param func fun(package: Package, ...)
function on_component(func) end

-- target.on_config / rule.on_config
-- 自定义配置脚本
---@param func fun(target: Target, ...)
function on_config(func) end

-- package.on_download
-- 自定义下载包
---@param func fun(package: Package, ...)
function on_download(func) end

-- package.on_fetch
-- 从系统中查找库
---@param func fun(package: Package, ...)
function on_fetch(func) end

-- target.on_install / rule.on_install / package.on_install
-- 自定义安装脚本
---@param func fun(target: Target, ...)
function on_install(func) end

-- target.on_installcmd / rule.on_installcmd
-- 重写组件的安装脚本
---@param func fun(target: Target, ...)
function on_installcmd(func) end

-- target.on_link / rule.on_link
-- 自定义链接脚本
---@param func fun(target: Target, ...)
function on_link(func) end

-- target.on_linkcmd / rule.on_linkcmd
---@param func fun(target: Target, ...)
function on_linkcmd(func) end

-- target.on_load / rule.on_load / package.on_load
-- 自定义加载脚本
---@param func fun(target: Target, ...)
function on_load(func) end

-- target.on_package / rule.on_package
-- 自定义打包脚本
---@param func fun(target: Target, ...)
function on_package(func) end

-- target.on_prepare / rule.on_prepare
-- 自定义准备阶段脚本
---@param func fun(target: Target, ...)
function on_prepare(func) end

-- target.on_prepare_file / rule.on_prepare_file
-- 自定义准备阶段单文件处理脚本
---@param func fun(target: Target, ...)
function on_prepare_file(func) end

-- target.on_prepare_files / rule.on_prepare_files
-- 自定义准备阶段批量文件处理脚本
---@param func fun(target: Target, ...)
function on_prepare_files(func) end

-- target.on_preparecmd / rule.on_preparecmd
---@param func fun(target: Target, ...)
function on_preparecmd(func) end

-- target.on_preparecmd_file / rule.on_preparecmd_file
---@param func fun(target: Target, batchcmds: any, sourcefile: string, opt?: table)
function on_preparecmd_file(func) end

-- target.on_preparecmd_files / rule.on_preparecmd_files
---@param func fun(target: Target, batchcmds: any, sourcefiles: string[], opt?: table)
function on_preparecmd_files(func) end

-- target.on_run / rule.on_run / task.on_run
-- 设置任务运行脚本
---@param func fun(target: Target, ...)
function on_run(func) end

-- package.on_source
---@param func fun(package: Package, ...)
function on_source(func) end

-- target.on_test / rule.on_test / package.on_test
-- 测试包
---@param func fun(target: Target, ...)
function on_test(func) end

-- target.on_uninstall / rule.on_uninstall
-- 自定义卸载脚本
---@param func fun(target: Target, ...)
function on_uninstall(func) end

-- target.on_uninstallcmd / rule.on_uninstallcmd
-- 重写组件卸载的脚本
---@param func fun(target: Target, ...)
function on_uninstallcmd(func) end
