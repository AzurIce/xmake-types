---@meta
---xmake version: 3.0.7

-- 沙箱内建函数（core/sandbox/modules 注册，不在 apis() 注册表中）

-- 导入 xmake 扩展模块
---@param name string
---@param opt? table
---@return any
function import(name, opt) end

-- 内建作用域函数（core/base/interpreter.lua 注册，不在 apis() 注册表中）

-- 定义工程目标
---@param name string 目标名称字符串，用于标识工程目标
---@param opt? table
function target(name, opt) end

-- 结束当前 target 作用域（可选）
function target_end() end

-- 定义选项
---@param name string 选项名称字符串
function option(name) end

-- 结束当前 option 作用域（可选）
function option_end() end

-- 定义规则
---@param name string 规则名称字符串
function rule(name) end

-- 结束当前 rule 作用域（可选）
function rule_end() end

-- 定义插件或者任务
---@param name string 任务名称字符串
function task(name) end

-- 结束当前 task 作用域（可选）
function task_end() end

-- 仓库依赖包定义描述
---@param name string 包名称字符串
function package(name) end

-- 结束当前 package 作用域（可选）
function package_end() end

-- 定义工具链
---@param name string 工具链名称字符串
function toolchain(name) end

-- 结束当前 toolchain 作用域（可选）
function toolchain_end() end

-- 添加子工程文件和目录
---@param ... string
function includes(...) end

-- 单值设置（set_xxx / add_xxx）（106 个）

-- option.add_arflags / package.add_arflags / target.add_arflags / toolchain.add_arflags
-- 添加静态库归档选项
---@param arflags string|any[] 静态库归档选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_arflags(arflags, ...) end

-- option.add_asflags / package.add_asflags / target.add_asflags / toolchain.add_asflags
-- 添加汇编编译选项
---@param asflags string|any[] 汇编编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_asflags(asflags, ...) end

-- package.add_bindirs
-- 添加可执行文件目录
---@param dirs string|any[] 可执行文件目录路径字符串或数组
---@param ... any
function add_bindirs(dirs, ...) end

-- option.add_cflags / package.add_cflags / target.add_cflags / toolchain.add_cflags
-- 添加c编译选项
---@param cflags string|any[] C编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_cflags(cflags, ...) end

-- option.add_cfuncs
-- 添加c库函数检测
---@param funcs string|any[] 函数名称字符串或数组
---@param ... any
function add_cfuncs(funcs, ...) end

-- option.add_cincludes
-- 添加c头文件检测
---@param includes string|any[] 头文件名称字符串或数组
---@param ... any
function add_cincludes(includes, ...) end

-- package.add_components
-- 添加包组件
---@param components string|any[] 组件名称字符串或数组
---@param ... any
function add_components(components, ...) end

-- package.add_configs
-- 添加包配置
---@param name string 配置参数名称
---@param opt? table
function add_configs(name, opt) end

-- option.add_ctypes
-- 添加c类型检测
---@param types string|any[] 类型名称字符串或数组
---@param ... any
function add_ctypes(types, ...) end

-- option.add_cuflags / package.add_cuflags / target.add_cuflags / toolchain.add_cuflags
-- 添加cuda编译选项
---@param cuflags string|any[] CUDA编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_cuflags(cuflags, ...) end

-- option.add_cugencodes / target.add_cugencodes / toolchain.add_cugencodes
-- 添加cuda设备的gencode设置
---@param cugencodes string|any[] CUDA设备gencode设置字符串或数组，如 "sm_30", "sm_50"
---@param ... any
function add_cugencodes(cugencodes, ...) end

-- option.add_culdflags / package.add_culdflags / target.add_culdflags / toolchain.add_culdflags
-- 添加cuda设备链接选项
---@param culdflags string|any[] CUDA设备链接选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_culdflags(culdflags, ...) end

-- option.add_cxflags / package.add_cxflags / target.add_cxflags / toolchain.add_cxflags
-- 添加c/c++编译选项
---@param cxflags string|any[] C/C++编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_cxflags(cxflags, ...) end

-- option.add_cxxflags / package.add_cxxflags / target.add_cxxflags / toolchain.add_cxxflags
-- 添加c++编译选项
---@param cxxflags string|any[] C++编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_cxxflags(cxxflags, ...) end

-- option.add_cxxfuncs
-- 添加c++库函数检测
---@param funcs string|any[] 函数名称字符串或数组
---@param ... any
function add_cxxfuncs(funcs, ...) end

-- option.add_cxxincludes
-- 添加c++头文件检测
---@param includes string|any[] 头文件名称字符串或数组
---@param ... any
function add_cxxincludes(includes, ...) end

-- option.add_cxxtypes
-- 添加c++类型检测
---@param types string|any[] 类型名称字符串或数组
---@param ... any
function add_cxxtypes(types, ...) end

-- option.add_dcflags / package.add_dcflags / target.add_dcflags / toolchain.add_dcflags
-- 添加dlang编译选项
---@param dcflags string|any[] D语言编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_dcflags(dcflags, ...) end

-- option.add_defines / package.add_defines / target.add_defines / toolchain.add_defines
-- 添加宏定义
---@param defines string|any[] 宏定义字符串或数组
---@param ... any
function add_defines(defines, ...) end

-- target.add_deps / option.add_deps / rule.add_deps / package.add_deps
-- 添加选项依赖
---@param deps string|any[] 依赖选项名称字符串或数组
---@param ... any
function add_deps(deps, ...) end

-- package.add_extsources / component.add_extsources
-- 添加扩展的包源
---@param sources string|any[] 外部源字符串或数组，格式："pkgconfig::name" 或 "brew::name"
---@param ... any
function add_extsources(sources, ...) end

-- option.add_fcflags / package.add_fcflags / target.add_fcflags / toolchain.add_fcflags
-- 添加fortran编译选项
---@param fcflags string|any[] Fortran编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_fcflags(fcflags, ...) end

-- option.add_features
---@param ... any
function add_features(...) end

-- target.add_filegroups
-- 添加源文件分组
---@param name string 分组名称字符串，如 "source", "header", "test"
---@param files string|any[] 源文件路径字符串或数组，支持通配符匹配模式
---@param ... any
function add_filegroups(name, files, ...) end

-- target.add_forceincludes
-- 强制添加 includes
---@param includes string|any[] 头文件路径字符串或数组，如 "config.h"
---@param ... any
function add_forceincludes(includes, ...) end

-- package.add_frameworkdirs / toolchain.add_frameworkdirs / option.add_frameworkdirs / target.add_frameworkdirs
-- 添加链接框架搜索目录
---@param frameworkdirs string|any[] 框架搜索目录字符串或数组，支持通配符匹配模式
---@param ... any
function add_frameworkdirs(frameworkdirs, ...) end

-- option.add_frameworks / package.add_frameworks / target.add_frameworks / toolchain.add_frameworks
-- 添加依赖的系统 frameworks 链接
---@param frameworks string|any[] 框架名称字符串或数组
---@param ... any
function add_frameworks(frameworks, ...) end

-- option.add_gcflags / target.add_gcflags / toolchain.add_gcflags
-- 添加go编译选项
---@param gcflags string|any[] Go编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_gcflags(gcflags, ...) end

-- target.add_imports / option.add_imports / rule.add_imports / package.add_imports
-- 为所有自定义脚本预先导入扩展模块
---@param modules string|any[] 模块名称字符串或数组
---@param ... any
function add_imports(modules, ...) end

-- option.add_includedirs / package.add_includedirs / toolchain.add_includedirs / target.add_includedirs
-- 添加其他头文件搜索目录
---@param dirs string|any[] 头文件目录路径字符串或数组
---@param ... any
function add_includedirs(dirs, ...) end

-- option.add_kcflags / target.add_kcflags / toolchain.add_kcflags
---@param ... any
function add_kcflags(...) end

-- target.add_languages
-- 添加语言标准
---@param languages string|any[] 语言标准字符串或数组，支持通配符匹配模式
---@param ... any
function add_languages(languages, ...) end

-- option.add_ldflags / package.add_ldflags / target.add_ldflags / toolchain.add_ldflags
-- 添加链接选项
---@param ldflags string|any[] 链接选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_ldflags(ldflags, ...) end

-- package.add_linkdirs / toolchain.add_linkdirs / option.add_linkdirs / target.add_linkdirs
-- 添加链接库检测时候需要的搜索目录
---@param linkdirs string|any[] 链接目录路径字符串或数组
---@param ... any
function add_linkdirs(linkdirs, ...) end

-- option.add_links / package.add_links / target.add_links / toolchain.add_links
-- 添加链接库检测
---@param links string|any[] 链接库名称字符串或数组
---@param ... any
function add_links(links, ...) end

-- option.add_mflags / package.add_mflags / target.add_mflags / toolchain.add_mflags
-- 添加objc编译选项
---@param mflags string|any[] ObjC编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_mflags(mflags, ...) end

-- option.add_mrcflags / target.add_mrcflags / toolchain.add_mrcflags
---@param ... any
function add_mrcflags(...) end

-- option.add_mxflags / package.add_mxflags / target.add_mxflags / toolchain.add_mxflags
-- 添加objc/objc++编译选项
---@param mxflags string|any[] ObjC/ObjC++编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_mxflags(mxflags, ...) end

-- option.add_mxxflags / package.add_mxxflags / target.add_mxxflags / toolchain.add_mxxflags
-- 添加objc++编译选项
---@param mxxflags string|any[] ObjC++编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_mxxflags(mxxflags, ...) end

-- option.add_ncflags / target.add_ncflags / toolchain.add_ncflags
---@param ... any
function add_ncflags(...) end

-- target.add_options
-- 添加关联选项
---@param ... any
function add_options(...) end

-- target.add_packages
-- 添加包依赖
---@param packages string|any[] 包名称字符串或数组，支持通配符匹配模式
---@param ... any
function add_packages(packages, ...) end

-- option.add_pcflags / package.add_pcflags / target.add_pcflags / toolchain.add_pcflags
---@param ... any
function add_pcflags(...) end

-- option.add_rcflags / target.add_rcflags / toolchain.add_rcflags
-- 添加rust编译选项
---@param rcflags string|any[] Rust编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_rcflags(rcflags, ...) end

-- add_repositories
-- 添加依赖包仓库
---@param repos string|any[] 仓库名称和URL字符串或数组，格式："name url"
---@param ... any
function add_repositories(repos, ...) end

-- add_requireconfs
-- 设置指定依赖包的配置
---@param packages string|any[] 包名称字符串或数组，支持模式匹配如 "*" 或 "libpng.zlib"
---@param ... any
function add_requireconfs(packages, ...) end

-- add_requires
-- 添加需要的依赖包
---@param packages string|any[] 包名称字符串或数组，支持语义版本如 "tbox 1.6.*"
---@param ... any
function add_requires(packages, ...) end

-- option.add_rpathdirs / package.add_rpathdirs / target.add_rpathdirs / toolchain.add_rpathdirs
-- 添加程序运行时动态库的加载搜索目录
---@param rpathdirs string|any[] rpath目录路径字符串或数组
---@param ... any
function add_rpathdirs(rpathdirs, ...) end

-- target.add_rules
-- 添加规则到目标
---@param rules string|any[] 规则名称字符串或数组，如 "markdown"
---@param ... any
function add_rules(rules, ...) end

-- option.add_scflags / target.add_scflags / toolchain.add_scflags
-- 添加swift编译选项
---@param scflags string|any[] Swift编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_scflags(scflags, ...) end

-- package.add_schemes
-- 添加包方案
---@param schemes string|any[] 方案名称字符串或数组
---@param ... any
function add_schemes(schemes, ...) end

-- option.add_shflags / package.add_shflags / target.add_shflags / toolchain.add_shflags
-- 添加动态库链接选项
---@param shflags string|any[] 动态库链接选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_shflags(shflags, ...) end

-- package.add_sysincludedirs / toolchain.add_sysincludedirs / option.add_sysincludedirs / target.add_sysincludedirs
-- 添加系统头文件搜索目录
---@param includedirs string|any[] 系统头文件搜索目录字符串或数组，支持通配符匹配模式
---@param ... any
function add_sysincludedirs(includedirs, ...) end

-- option.add_syslinks / package.add_syslinks / target.add_syslinks / toolchain.add_syslinks
-- 设置系统库链接
---@param syslinks string|any[] 系统库名称字符串或数组
---@param ... any
function add_syslinks(syslinks, ...) end

-- target.add_tests
-- 添加测试用例
---@param tests string|any[] 测试用例名称字符串或数组，如 "test1", "test2"
---@param ... any
function add_tests(tests, ...) end

-- target.add_toolchains
---@param ... any
function add_toolchains(...) end

-- option.add_undefines / package.add_undefines / target.add_undefines / toolchain.add_undefines
-- 取消宏定义
---@param undefines string|any[] 宏定义名称字符串或数组，如 "DEBUG"
---@param ... any
function add_undefines(undefines, ...) end

-- package.add_urls / scheme.add_urls
-- 添加包源地址
---@param urls string|any[] 包源URL字符串或数组
---@param ... any
function add_urls(urls, ...) end

-- target.add_vectorexts / option.add_vectorexts
-- 添加向量扩展指令
---@param vectorexts string|any[] 向量扩展指令字符串或数组，如 "mmx", "neon", "avx"
---@param ... any
function add_vectorexts(vectorexts, ...) end

-- option.add_zcflags / package.add_zcflags / target.add_zcflags / toolchain.add_zcflags
-- 添加zig编译选项
---@param zcflags string|any[] Zig编译选项字符串或数组，支持通配符匹配模式
---@param ... any
function add_zcflags(zcflags, ...) end

-- set_allowedarchs
-- 设置允许编译的平台架构
---@param archs string|any[] 允许的编译架构字符串或数组，支持平台特定格式如 "windows
---@param ... any
function set_allowedarchs(archs, ...) end

-- set_allowedmodes
-- 设置允许的编译模式列表
---@param modes string|any[] 允许的编译模式名称字符串或数组
---@param ... any
function set_allowedmodes(modes, ...) end

-- set_allowedplats
-- 设置允许编译的平台列表
---@param platforms string|any[] 允许的编译平台名称字符串或数组
---@param ... any
function set_allowedplats(platforms, ...) end

-- target.set_arch / package.set_arch
-- 设置指定目标的编译架构
---@param arch string 架构名称字符串，如 "x86", "x64", "arm64", "armv7"
function set_arch(arch) end

-- package.set_base
-- 继承包配置
---@param package string 要继承的基础包名称
function set_base(package) end

-- target.set_basename
-- 设置目标文件名
---@param basename string 目标文件基础名称字符串
function set_basename(basename) end

-- package.set_cachedir
---@param value any
function set_cachedir(value) end

-- option.set_category / task.set_category
-- 设置选项分类，仅用于菜单显示
---@param category string 分类名称字符串
function set_category(category) end

-- target.set_default / option.set_default
-- 设置选项默认值
---@param value string|boolean|number 默认值（字符串、布尔值或数字）
function set_default(value) end

-- set_defaultarchs
-- 设置默认的编译架构
---@param archs string|any[] 默认编译架构字符串或数组，支持平台特定格式如 "iphoneos
---@param ... any
function set_defaultarchs(archs, ...) end

-- set_defaultmode
-- 设置默认的编译模式
---@param mode string 默认编译模式名称，如 "release", "debug", "releasedbg"
function set_defaultmode(mode) end

-- set_defaultplat
-- 设置默认的编译平台
---@param platform string 默认编译平台名称，如 "iphoneos", "windows"
function set_defaultplat(platform) end

-- set_description / option.set_description / package.set_description
-- 设置菜单显示描述
---@param description string|any[] 描述信息字符串或数组
---@param ... any
function set_description(description, ...) end

-- target.set_enabled
-- 设置是否启用或禁用目标
---@param enabled boolean 是否启用目标，true表示启用，false表示禁用
function set_enabled(enabled) end

-- target.set_encodings
-- 设置编码
---@param encodings string|any[] 编码字符串或数组，如 "utf-8", "gb2312"
---@param ... any
function set_encodings(encodings, ...) end

-- target.set_exceptions
-- 启用或者禁用异常
---@param exceptions string|any[] 异常模式字符串或数组，如 "cxx", "objc", "no-cxx"
---@param ... any
function set_exceptions(exceptions, ...) end

-- target.set_extension
-- 设置目标文件的扩展名
---@param extension string 目标文件扩展名字符串，如 ".dll" 或 ".so"
function set_extension(extension) end

-- rule.set_extensions
-- 设置规则支持的文件扩展类型
---@param extensions string|any[] 文件扩展名字符串或数组
---@param ... any
function set_extensions(extensions, ...) end

-- target.set_filename
-- 设置目标文件全名
---@param filename string 目标文件全名字符串，包括前后缀
function set_filename(filename) end

-- target.set_fpmodels
-- 设置float-point编译模式
---@param fpmodels string|any[] 浮点模式字符串或数组，可选值：fast、strict、except、precise
---@param ... any
function set_fpmodels(fpmodels, ...) end

-- target.set_group
-- 设置目标分组
---@param group string 分组名称字符串，如 "test", "libs", "tools"
function set_group(group) end

-- package.set_homepage
-- 设置包所在项目的官方页面地址
---@param url string 包主页URL字符串
function set_homepage(url) end

-- package.set_installtips
---@param value any
function set_installtips(value) end

-- target.set_kind / rule.set_kind / package.set_kind
-- 设置工具链类型
---@param kind string 工具链类型: "standalone"
function set_kind(kind) end

-- target.set_languages / option.set_languages
-- 设置代码语言标准
---@param languages string|any[] 语言标准字符串或数组，支持通配符匹配模式
---@param ... any
function set_languages(languages, ...) end

-- target.set_license / package.set_license
-- 设置包的 License
---@param license string License名称字符串
function set_license(license) end

-- target.set_optimize / option.set_optimize
-- 设置优化级别
---@param optimize string 优化级别字符串，可选值：none、fast、faster、fastest、smallest、aggressive
function set_optimize(optimize) end

-- target.set_options
-- 设置关联选项
---@param options string|any[] 选项名称字符串或数组，支持通配符匹配模式
---@param ... any
function set_options(options, ...) end

-- package.set_parallelize
---@param value any
function set_parallelize(value) end

-- target.set_plat / package.set_plat
-- 设置指定目标的编译平台
---@param plat string 平台名称字符串，如 "linux", "macosx", "windows", "android"
function set_plat(plat) end

-- target.set_prefixdir
-- 设置安装前置子目录
---@param prefixdir string 安装前置子目录路径字符串
function set_prefixdir(prefixdir) end

-- target.set_prefixname
-- 设置目标文件的前置名
---@param prefixname string 目标文件前置名字符串，如 "lib" 或 ""
function set_prefixname(prefixname) end

-- set_project
-- 设置工程名
---@param name string 工程名称字符串
function set_project(name) end

-- target.set_rules
---@param value any
function set_rules(value) end

-- target.set_runargs
-- 设置运行参数列表
---@param runargs string|any[] 运行参数字符串或数组，如 "-x", "--arg1=val"
---@param ... any
function set_runargs(runargs, ...) end

-- target.set_runtimes
-- 设置编译目标依赖的运行时库
---@param runtimes string|any[] 运行时库字符串或数组，如 "MT", "MD", "MTd", "MDd"
---@param ... any
function set_runtimes(runtimes, ...) end

-- option.set_showmenu
-- 设置是否启用菜单显示
---@param showmenu boolean 是否显示菜单（布尔值）
function set_showmenu(showmenu) end

-- package.set_sourcedir
-- 设置包的源码目录
---@param sourcedir string 包源码目录路径
function set_sourcedir(sourcedir) end

-- rule.set_sourcekinds
---@param value any
function set_sourcekinds(value) end

-- target.set_strip
-- 设置是否strip信息
---@param strip string strip模式字符串，可选值：debug、all
function set_strip(strip) end

-- target.set_suffixname
-- 设置目标文件的后置名
---@param suffixname string 目标文件后置名字符串，如 "-d" 或 ""
function set_suffixname(suffixname) end

-- target.set_symbols
-- 设置符号信息
---@param symbols string 符号模式字符串，可选值：debug、hidden、none
---@param opt? table
function set_symbols(symbols, opt) end

-- target.set_toolchains
-- 设置工具链
---@param toolchains string|any[] 工具链名称字符串或数组，如 "gcc", "clang", "msvc", "ndk[gcc]", "mingw[clang]@llvm-mingw", "msvc[vs=2025]"
---@param ... any
function set_toolchains(toolchains, ...) end

-- package.set_urls / scheme.set_urls
-- 设置包源地址
---@param urls string|any[] 包源URL字符串或数组
---@param ... any
function set_urls(urls, ...) end

-- target.set_version
-- 设置工程版本
---@param version string 工程版本字符串，如 "1.5.1"
---@param opt? table
function set_version(version, opt) end

-- target.set_warnings / option.set_warnings
-- 设置警告级别
---@param warnings string 警告级别字符串，可选值：none、less、more、all、error
---@param opt? table
function set_warnings(warnings, opt) end

-- 路径值（26 个）

-- target.add_cleanfiles
---@param ... string
function add_cleanfiles(...) end

-- target.add_configfiles
-- 添加模板配置文件
---@param configfiles string|any[] 配置文件路径字符串或数组，支持通配符匹配模式
---@param ... any
function add_configfiles(configfiles, ...) end

-- target.add_embeddirs
-- 添加 #embed 搜索目录
---@param embeddirs string|any[] #embed 搜索目录字符串或数组，支持通配符匹配模式
---@param ... any
function add_embeddirs(embeddirs, ...) end

-- target.add_extrafiles
-- 添加额外的文件
---@param extrafiles string|any[] 额外文件路径字符串或数组，如 "assets/other.txt"
---@param ... any
function add_extrafiles(extrafiles, ...) end

-- target.add_files
-- 添加源代码文件
---@param files string|any[] 文件路径字符串或文件路径数组，支持通配符匹配模式
---@param ... any
function add_files(files, ...) end

-- target.add_headerfiles
-- 添加安装头文件
---@param headerfiles string|any[] 头文件路径字符串或数组，支持通配符匹配模式
---@param ... any
function add_headerfiles(headerfiles, ...) end

-- target.add_installfiles
-- 添加安装文件
---@param installfiles string|any[] 安装文件路径字符串或数组，支持通配符匹配模式
---@param ... any
function add_installfiles(installfiles, ...) end

-- add_packagedirs
---@param ... string
function add_packagedirs(...) end

-- package.add_versionfiles / scheme.add_versionfiles
-- 添加包版本列表
---@param file string 包含版本和哈希值对的文件路径
function add_versionfiles(file) end

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
---@param files string|any[] 文件路径字符串或文件路径数组，支持通配符匹配模式
---@param ... any
function remove_files(files, ...) end

-- target.remove_headerfiles
-- 从前面的头文件列表中删除指定文件
---@param headerfiles string|any[] 头文件路径字符串或数组，支持通配符匹配模式
---@param ... any
function remove_headerfiles(headerfiles, ...) end

-- target.remove_installfiles
---@param path string
function remove_installfiles(path) end

-- target.set_autogendir
---@param path string
function set_autogendir(path) end

-- target.set_configdir
-- 设置模板配置文件的输出目录
---@param configdir string 模板配置文件输出目录路径字符串
function set_configdir(configdir) end

-- target.set_dependir
-- 设置依赖文件生成目录
---@param dependir string 依赖文件输出目录路径字符串
function set_dependir(dependir) end

-- target.set_installdir / package.set_installdir
-- 设置安装目录
---@param installdir string 安装目录路径字符串
function set_installdir(installdir) end

-- target.set_objectdir
-- 设置对象文件生成目录
---@param objectdir string 对象文件输出目录路径字符串
function set_objectdir(objectdir) end

-- target.set_pcheader
-- 设置 C 预编译头文件
---@param header string C预编译头文件路径字符串
function set_pcheader(header) end

-- target.set_pcxxheader
-- 设置 C++ 预编译头文件
---@param header string C++预编译头文件路径字符串
function set_pcxxheader(header) end

-- target.set_pmheader
-- 设置 ObjC 预编译头文件
---@param header string ObjC预编译头文件路径字符串
function set_pmheader(header) end

-- target.set_pmxxheader
-- 设置 ObjC++ 预编译头文件
---@param header string ObjC++预编译头文件路径字符串
function set_pmxxheader(header) end

-- target.set_rundir
-- 设置运行目录
---@param rundir string 运行目录路径字符串
function set_rundir(rundir) end

-- target.set_targetdir
-- 设置生成目标文件目录
---@param targetdir string 目标文件输出目录路径字符串
function set_targetdir(targetdir) end

-- 键值对（10 个）

-- package.add_patches / scheme.add_patches
-- 设置包补丁
---@param version string 补丁适用的包版本
---@param url string 补丁文件URL
---@param hash string 补丁验证的SHA256哈希值
function add_patches(version, url, hash) end

-- package.add_resources / scheme.add_resources
---@param key string
---@param value any
function add_resources(key, value) end

-- target.add_runenvs
-- 添加运行环境变量
---@param name string 环境变量名称字符串，如 "PATH", "LD_LIBRARY_PATH"
---@param values string|any[] 环境变量值字符串或数组，支持多个值
---@param ... any
function add_runenvs(name, values, ...) end

-- target.add_values
-- 添加一些扩展配置值
---@param name string 配置名称字符串，如 "markdown_flags"
---@param values any 配置值，可以是任意类型
---@param ... any
function add_values(name, values, ...) end

-- set_config
-- 设置给定的默认配置值
---@param name string 配置选项名称字符串
---@param value string|boolean|number 配置值，可为字符串、布尔值或数字
function set_config(name, value) end

-- target.set_configvar / option.set_configvar
-- 设置模板配置变量
---@param name string 配置变量名称字符串，如 "HAS_FOO"
---@param value any 配置变量值，可以是任意类型
function set_configvar(name, value) end

-- target.set_policy / package.set_policy
-- 设置构建行为策略
---@param policy string 策略名称字符串，如 "check.auto_ignore_flags", "build.warning"
---@param value boolean 策略值，true表示启用，false表示禁用
function set_policy(policy, value) end

-- target.set_runenv
-- 设置运行环境变量
---@param name string 环境变量名称字符串，如 "PATH", "LD_LIBRARY_PATH"
---@param value string 环境变量值字符串
function set_runenv(name, value) end

-- target.set_toolset
-- 设置工具集
---@param tool string 工具名称字符串 (cc, cxx, ld, sh, ar, ex, strip, mm, mxx, as)
---@param tools string|any[] 工具程序名称字符串或数组
---@param ... any
function set_toolset(tool, tools, ...) end

-- target.set_values / option.set_values
-- 设置选项值列表
---@param values string|any[] 选项值字符串或数组
---@param ... any
function set_values(values, ...) end

-- 字典（4 个）

-- option.add_csnippets
-- 添加c代码片段检测
---@param name string 代码片段名称字符串
---@param code string 代码片段字符串
---@param opt? table
function add_csnippets(name, code, opt) end

-- option.add_cxxsnippets
-- 添加c++代码片段检测
---@param name string 代码片段名称字符串
---@param code string 代码片段字符串
---@param opt? table
function add_cxxsnippets(name, code, opt) end

-- package.add_versions / scheme.add_versions
-- 设置每个源码包的版本
---@param version string 包版本字符串
---@param hash string 用于验证的SHA256哈希值
function add_versions(version, hash) end

-- task.set_menu
-- 设置任务菜单
---@param options? table 菜单选项表
function set_menu(options) end

-- 分组（3 个）

-- package.add_linkgroups / target.add_linkgroups
-- 配置包的链接组
---@param groups string|any[] 链接组名称字符串或数组
---@param ... any
function add_linkgroups(groups, ...) end

-- package.add_linkorders / target.add_linkorders
-- 调整包内部的链接顺序
---@param orders string|any[] 链接顺序字符串或数组
---@param ... any
function add_linkorders(orders, ...) end

-- rule.add_orders
---@param ... any
function add_orders(...) end

-- 自定义（条件判断 / 目录添加 / 配置读取）（15 个）

-- add_moduledirs
-- 添加模块目录
---@param dirs string|any[] 模块目录路径字符串或数组
---@param ... any
function add_moduledirs(dirs, ...) end

-- add_platformdirs
---@param dir string
---@param ... string
function add_platformdirs(dir, ...) end

-- add_plugindirs
-- 添加插件目录
---@param dirs string|any[] 插件目录路径字符串或数组
---@param ... any
function add_plugindirs(dirs, ...) end

-- add_toolchaindirs
---@param dir string
---@param ... string
function add_toolchaindirs(dir, ...) end

-- get_config
-- 获取给定的配置值
---@param name string 配置选项名称字符串
---@return any
function get_config(name) end

-- has_config
-- 判断配置是否启用或者存在
---@param configs string 配置名称字符串
---@param ... any
---@return boolean
function has_config(configs, ...) end

-- has_package
-- 判断依赖包是否启用或者存在
---@param packages string 包名称字符串
---@param ... any
---@return boolean
function has_package(packages, ...) end

-- is_arch
-- 判断当前编译架构
---@param arch string 架构名称字符串
---@param ... any
---@return boolean
function is_arch(arch, ...) end

-- is_config
-- 判断指定配置是否为给定的值
---@param name string 配置选项名称字符串
---@param values string 配置值字符串
---@param ... any
---@return boolean
function is_config(name, values, ...) end

-- is_cross
-- 判断当前平台是否为交叉编译
---@return boolean
function is_cross() end

-- is_host
-- 判断当前主机环境的操作系统
---@param host string 主机系统名称字符串
---@param ... any
---@return boolean
function is_host(host, ...) end

-- is_kind
-- 判断当前编译类型
---@param kind string 目标类型名称字符串
---@param ... any
---@return boolean
function is_kind(kind, ...) end

-- is_mode
-- 判断当前编译模式
---@param mode string 编译模式名称字符串
---@param ... any
---@return boolean
function is_mode(mode, ...) end

-- is_os
-- 判断当前构建目标的操作系统
---@param os string 操作系统名称字符串
---@param ... any
---@return boolean
function is_os(os, ...) end

-- is_plat
-- 判断当前编译平台
---@param plat string 平台名称字符串
---@param ... any
---@return boolean
function is_plat(plat, ...) end

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

-- package.on_download / scheme.on_download
-- 自定义下载包
---@param func fun(package: Package, ...)
function on_download(func) end

-- package.on_fetch
-- 从系统中查找库
---@param func fun(package: Package, ...)
function on_fetch(func) end

-- target.on_install / rule.on_install / package.on_install / scheme.on_install
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

-- target.on_test / rule.on_test / package.on_test / scheme.on_test
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
