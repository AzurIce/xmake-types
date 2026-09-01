---@meta
---xmake version: 3.0.0

-- 沙箱内建函数（core/sandbox/modules 注册，不在 apis() 注册表中）

-- 导入 xmake 扩展模块
---@param name string
---@param opt? table
---@return any
function import(name, opt) end

-- 内建作用域函数（core/base/interpreter.lua 注册，不在 apis() 注册表中）

-- 定义一个 target 作用域
---@param name string
function target(name) end

-- 结束当前 target 作用域（可选）
function target_end() end

-- 定义一个 option 作用域
---@param name string
function option(name) end

-- 结束当前 option 作用域（可选）
function option_end() end

-- 定义一个 rule 作用域
---@param name string
function rule(name) end

-- 结束当前 rule 作用域（可选）
function rule_end() end

-- 定义一个 task 作用域
---@param name string
function task(name) end

-- 结束当前 task 作用域（可选）
function task_end() end

-- 定义一个 package 作用域
---@param name string
function package(name) end

-- 结束当前 package 作用域（可选）
function package_end() end

-- 定义一个 toolchain 作用域
---@param name string
function toolchain(name) end

-- 结束当前 toolchain 作用域（可选）
function toolchain_end() end

-- 包含其他 xmake.lua 文件
---@param ... string
function includes(...) end

-- 单值设置（set_xxx / add_xxx）（105 个）

-- option.add_arflags / package.add_arflags / target.add_arflags / toolchain.add_arflags
---@param ... any
function add_arflags(...) end

-- option.add_asflags / package.add_asflags / target.add_asflags / toolchain.add_asflags
---@param ... any
function add_asflags(...) end

-- package.add_bindirs
---@param ... any
function add_bindirs(...) end

-- option.add_cflags / package.add_cflags / target.add_cflags / toolchain.add_cflags
---@param ... any
function add_cflags(...) end

-- option.add_cfuncs
---@param ... any
function add_cfuncs(...) end

-- option.add_cincludes
---@param ... any
function add_cincludes(...) end

-- package.add_components
---@param ... any
function add_components(...) end

-- package.add_configs
---@param ... any
function add_configs(...) end

-- option.add_ctypes
---@param ... any
function add_ctypes(...) end

-- option.add_cuflags / package.add_cuflags / target.add_cuflags / toolchain.add_cuflags
---@param ... any
function add_cuflags(...) end

-- option.add_cugencodes / target.add_cugencodes / toolchain.add_cugencodes
---@param ... any
function add_cugencodes(...) end

-- option.add_culdflags / package.add_culdflags / target.add_culdflags / toolchain.add_culdflags
---@param ... any
function add_culdflags(...) end

-- option.add_cxflags / package.add_cxflags / target.add_cxflags / toolchain.add_cxflags
---@param ... any
function add_cxflags(...) end

-- option.add_cxxflags / package.add_cxxflags / target.add_cxxflags / toolchain.add_cxxflags
---@param ... any
function add_cxxflags(...) end

-- option.add_cxxfuncs
---@param ... any
function add_cxxfuncs(...) end

-- option.add_cxxincludes
---@param ... any
function add_cxxincludes(...) end

-- option.add_cxxtypes
---@param ... any
function add_cxxtypes(...) end

-- option.add_dcflags / package.add_dcflags / target.add_dcflags / toolchain.add_dcflags
---@param ... any
function add_dcflags(...) end

-- option.add_defines / package.add_defines / target.add_defines / toolchain.add_defines
---@param ... any
function add_defines(...) end

-- target.add_deps / option.add_deps / rule.add_deps / package.add_deps
---@param ... any
function add_deps(...) end

-- package.add_extsources / component.add_extsources
---@param ... any
function add_extsources(...) end

-- option.add_fcflags / package.add_fcflags / target.add_fcflags / toolchain.add_fcflags
---@param ... any
function add_fcflags(...) end

-- option.add_features
---@param ... any
function add_features(...) end

-- target.add_filegroups
---@param ... any
function add_filegroups(...) end

-- target.add_forceincludes
---@param ... any
function add_forceincludes(...) end

-- package.add_frameworkdirs / toolchain.add_frameworkdirs / option.add_frameworkdirs / target.add_frameworkdirs
---@param ... any
function add_frameworkdirs(...) end

-- option.add_frameworks / package.add_frameworks / target.add_frameworks / toolchain.add_frameworks
---@param ... any
function add_frameworks(...) end

-- option.add_gcflags / target.add_gcflags / toolchain.add_gcflags
---@param ... any
function add_gcflags(...) end

-- target.add_imports / option.add_imports / rule.add_imports / package.add_imports
---@param ... any
function add_imports(...) end

-- package.add_includedirs / toolchain.add_includedirs / option.add_includedirs / target.add_includedirs
---@param ... any
function add_includedirs(...) end

-- option.add_kcflags / target.add_kcflags / toolchain.add_kcflags
---@param ... any
function add_kcflags(...) end

-- target.add_languages
---@param ... any
function add_languages(...) end

-- option.add_ldflags / package.add_ldflags / target.add_ldflags / toolchain.add_ldflags
---@param ... any
function add_ldflags(...) end

-- package.add_linkdirs / toolchain.add_linkdirs / option.add_linkdirs / target.add_linkdirs
---@param ... any
function add_linkdirs(...) end

-- option.add_links / package.add_links / target.add_links / toolchain.add_links
---@param ... any
function add_links(...) end

-- option.add_mflags / package.add_mflags / target.add_mflags / toolchain.add_mflags
---@param ... any
function add_mflags(...) end

-- option.add_mrcflags / target.add_mrcflags / toolchain.add_mrcflags
---@param ... any
function add_mrcflags(...) end

-- option.add_mxflags / package.add_mxflags / target.add_mxflags / toolchain.add_mxflags
---@param ... any
function add_mxflags(...) end

-- option.add_mxxflags / package.add_mxxflags / target.add_mxxflags / toolchain.add_mxxflags
---@param ... any
function add_mxxflags(...) end

-- option.add_ncflags / target.add_ncflags / toolchain.add_ncflags
---@param ... any
function add_ncflags(...) end

-- target.add_options
---@param ... any
function add_options(...) end

-- target.add_packages
---@param ... any
function add_packages(...) end

-- option.add_pcflags / package.add_pcflags / target.add_pcflags / toolchain.add_pcflags
---@param ... any
function add_pcflags(...) end

-- option.add_rcflags / target.add_rcflags / toolchain.add_rcflags
---@param ... any
function add_rcflags(...) end

-- add_repositories
---@param ... any
function add_repositories(...) end

-- add_requireconfs
---@param ... any
function add_requireconfs(...) end

-- add_requires
---@param ... any
function add_requires(...) end

-- option.add_rpathdirs / package.add_rpathdirs / target.add_rpathdirs / toolchain.add_rpathdirs
---@param ... any
function add_rpathdirs(...) end

-- target.add_rules
---@param ... any
function add_rules(...) end

-- option.add_scflags / target.add_scflags / toolchain.add_scflags
---@param ... any
function add_scflags(...) end

-- option.add_shflags / package.add_shflags / target.add_shflags / toolchain.add_shflags
---@param ... any
function add_shflags(...) end

-- package.add_sysincludedirs / toolchain.add_sysincludedirs / option.add_sysincludedirs / target.add_sysincludedirs
---@param ... any
function add_sysincludedirs(...) end

-- option.add_syslinks / package.add_syslinks / target.add_syslinks / toolchain.add_syslinks
---@param ... any
function add_syslinks(...) end

-- target.add_tests
---@param ... any
function add_tests(...) end

-- target.add_toolchains
---@param ... any
function add_toolchains(...) end

-- option.add_undefines / package.add_undefines / target.add_undefines / toolchain.add_undefines
---@param ... any
function add_undefines(...) end

-- package.add_urls
---@param ... any
function add_urls(...) end

-- target.add_vectorexts / option.add_vectorexts
---@param ... any
function add_vectorexts(...) end

-- option.add_zcflags / package.add_zcflags / target.add_zcflags / toolchain.add_zcflags
---@param ... any
function add_zcflags(...) end

-- set_allowedarchs
---@param value any
function set_allowedarchs(value) end

-- set_allowedmodes
---@param value any
function set_allowedmodes(value) end

-- set_allowedplats
---@param value any
function set_allowedplats(value) end

-- target.set_arch / package.set_arch
---@param value any
function set_arch(value) end

-- package.set_base
---@param value any
function set_base(value) end

-- target.set_basename
---@param value any
function set_basename(value) end

-- package.set_cachedir
---@param value any
function set_cachedir(value) end

-- option.set_category / task.set_category
---@param value any
function set_category(value) end

-- target.set_default / option.set_default
---@param value any
function set_default(value) end

-- set_defaultarchs
---@param value any
function set_defaultarchs(value) end

-- set_defaultmode
---@param value any
function set_defaultmode(value) end

-- set_defaultplat
---@param value any
function set_defaultplat(value) end

-- set_description / option.set_description / package.set_description
---@param value any
function set_description(value) end

-- target.set_enabled
---@param value any
function set_enabled(value) end

-- target.set_encodings
---@param value any
function set_encodings(value) end

-- target.set_exceptions
---@param value any
function set_exceptions(value) end

-- target.set_extension
---@param value any
function set_extension(value) end

-- rule.set_extensions
---@param value any
function set_extensions(value) end

-- target.set_filename
---@param value any
function set_filename(value) end

-- target.set_fpmodels
---@param value any
function set_fpmodels(value) end

-- target.set_group
---@param value any
function set_group(value) end

-- package.set_homepage
---@param value any
function set_homepage(value) end

-- package.set_installtips
---@param value any
function set_installtips(value) end

-- target.set_kind / rule.set_kind / package.set_kind
---@param value any
function set_kind(value) end

-- target.set_languages / option.set_languages
---@param value any
function set_languages(value) end

-- target.set_license / package.set_license
---@param value any
function set_license(value) end

-- target.set_optimize / option.set_optimize
---@param value any
function set_optimize(value) end

-- target.set_options
---@param value any
function set_options(value) end

-- package.set_parallelize
---@param value any
function set_parallelize(value) end

-- target.set_plat / package.set_plat
---@param value any
function set_plat(value) end

-- target.set_prefixdir
---@param value any
function set_prefixdir(value) end

-- target.set_prefixname
---@param value any
function set_prefixname(value) end

-- set_project
---@param value any
function set_project(value) end

-- target.set_rules
---@param value any
function set_rules(value) end

-- target.set_runargs
---@param value any
function set_runargs(value) end

-- target.set_runtimes
---@param value any
function set_runtimes(value) end

-- option.set_showmenu
---@param value any
function set_showmenu(value) end

-- package.set_sourcedir
---@param value any
function set_sourcedir(value) end

-- rule.set_sourcekinds
---@param value any
function set_sourcekinds(value) end

-- target.set_strip
---@param value any
function set_strip(value) end

-- target.set_suffixname
---@param value any
function set_suffixname(value) end

-- target.set_symbols
---@param value any
function set_symbols(value) end

-- target.set_toolchains
---@param value any
function set_toolchains(value) end

-- package.set_urls
---@param value any
function set_urls(value) end

-- target.set_version
---@param value any
function set_version(value) end

-- target.set_warnings / option.set_warnings
---@param value any
function set_warnings(value) end

-- 路径值（25 个）

-- target.add_cleanfiles
---@param ... string
function add_cleanfiles(...) end

-- target.add_configfiles
---@param ... string
function add_configfiles(...) end

-- target.add_extrafiles
---@param ... string
function add_extrafiles(...) end

-- target.add_files
---@param ... string
function add_files(...) end

-- target.add_headerfiles
---@param ... string
function add_headerfiles(...) end

-- target.add_installfiles
---@param ... string
function add_installfiles(...) end

-- add_packagedirs
---@param ... string
function add_packagedirs(...) end

-- package.add_versionfiles
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
---@param path string
function remove_files(path) end

-- target.remove_headerfiles
---@param path string
function remove_headerfiles(path) end

-- target.remove_installfiles
---@param path string
function remove_installfiles(path) end

-- target.set_autogendir
---@param path string
function set_autogendir(path) end

-- target.set_configdir
---@param path string
function set_configdir(path) end

-- target.set_dependir
---@param path string
function set_dependir(path) end

-- target.set_installdir / package.set_installdir
---@param path string
function set_installdir(path) end

-- target.set_objectdir
---@param path string
function set_objectdir(path) end

-- target.set_pcheader
---@param path string
function set_pcheader(path) end

-- target.set_pcxxheader
---@param path string
function set_pcxxheader(path) end

-- target.set_pmheader
---@param path string
function set_pmheader(path) end

-- target.set_pmxxheader
---@param path string
function set_pmxxheader(path) end

-- target.set_rundir
---@param path string
function set_rundir(path) end

-- target.set_targetdir
---@param path string
function set_targetdir(path) end

-- 键值对（10 个）

-- package.add_patches
---@param key string
---@param value any
function add_patches(key, value) end

-- package.add_resources
---@param key string
---@param value any
function add_resources(key, value) end

-- target.add_runenvs
---@param key string
---@param value any
function add_runenvs(key, value) end

-- target.add_values
---@param key string
---@param value any
function add_values(key, value) end

-- set_config
---@param key string
---@param value any
function set_config(key, value) end

-- target.set_configvar / option.set_configvar
---@param key string
---@param value any
function set_configvar(key, value) end

-- target.set_policy / package.set_policy
---@param key string
---@param value any
function set_policy(key, value) end

-- target.set_runenv
---@param key string
---@param value any
function set_runenv(key, value) end

-- target.set_toolset
---@param key string
---@param value any
function set_toolset(key, value) end

-- target.set_values / option.set_values
---@param key string
---@param value any
function set_values(key, value) end

-- 字典（4 个）

-- option.add_csnippets
---@param key string
---@param value any
function add_csnippets(key, value) end

-- option.add_cxxsnippets
---@param key string
---@param value any
function add_cxxsnippets(key, value) end

-- package.add_versions
---@param key string
---@param value any
function add_versions(key, value) end

-- task.set_menu
---@param key string
---@param value any
function set_menu(key, value) end

-- 分组（3 个）

-- package.add_linkgroups / target.add_linkgroups
---@param ... any
function add_linkgroups(...) end

-- package.add_linkorders / target.add_linkorders
---@param ... any
function add_linkorders(...) end

-- rule.add_orders
---@param ... any
function add_orders(...) end

-- 自定义（条件判断 / 目录添加 / 配置读取）（15 个）

-- add_moduledirs
---@param dir string
---@param ... string
function add_moduledirs(dir, ...) end

-- add_platformdirs
---@param dir string
---@param ... string
function add_platformdirs(dir, ...) end

-- add_plugindirs
---@param dir string
---@param ... string
function add_plugindirs(dir, ...) end

-- add_toolchaindirs
---@param dir string
---@param ... string
function add_toolchaindirs(dir, ...) end

-- get_config
---@param name string
---@param ... any
---@return any
function get_config(name, ...) end

-- has_config
---@param name string
---@param ... any
---@return boolean
function has_config(name, ...) end

-- has_package
---@return boolean
function has_package(...) end

-- is_arch
---@return boolean
function is_arch(...) end

-- is_config
---@param name string
---@param ... any
---@return boolean
function is_config(name, ...) end

-- is_cross
---@return boolean
function is_cross(...) end

-- is_host
---@return boolean
function is_host(...) end

-- is_kind
---@return boolean
function is_kind(...) end

-- is_mode
---@return boolean
function is_mode(...) end

-- is_os
---@return boolean
function is_os(...) end

-- is_plat
---@return boolean
function is_plat(...) end

-- 脚本回调注册（79 个）

-- target.after_build / rule.after_build
---@param func fun(target: Target, ...)
function after_build(func) end

-- target.after_build_file / rule.after_build_file
---@param func fun(target: Target, ...)
function after_build_file(func) end

-- target.after_build_files / rule.after_build_files
---@param func fun(target: Target, ...)
function after_build_files(func) end

-- target.after_buildcmd / rule.after_buildcmd
---@param func fun(target: Target, ...)
function after_buildcmd(func) end

-- target.after_buildcmd_file / rule.after_buildcmd_file
---@param func fun(target: Target, batchcmds: any, sourcefile: string, opt?: table)
function after_buildcmd_file(func) end

-- target.after_buildcmd_files / rule.after_buildcmd_files
---@param func fun(target: Target, batchcmds: any, sourcefiles: string[], opt?: table)
function after_buildcmd_files(func) end

-- option.after_check
---@param func fun(...)
function after_check(func) end

-- target.after_clean / rule.after_clean
---@param func fun(target: Target, ...)
function after_clean(func) end

-- target.after_config / rule.after_config
---@param func fun(target: Target, ...)
function after_config(func) end

-- target.after_install / rule.after_install
---@param func fun(target: Target, ...)
function after_install(func) end

-- target.after_installcmd / rule.after_installcmd
---@param func fun(target: Target, ...)
function after_installcmd(func) end

-- target.after_link / rule.after_link
---@param func fun(target: Target, ...)
function after_link(func) end

-- target.after_linkcmd / rule.after_linkcmd
---@param func fun(target: Target, ...)
function after_linkcmd(func) end

-- target.after_load / rule.after_load
---@param func fun(target: Target, ...)
function after_load(func) end

-- target.after_package / rule.after_package
---@param func fun(target: Target, ...)
function after_package(func) end

-- target.after_prepare / rule.after_prepare
---@param func fun(target: Target, ...)
function after_prepare(func) end

-- target.after_prepare_file / rule.after_prepare_file
---@param func fun(target: Target, ...)
function after_prepare_file(func) end

-- target.after_prepare_files / rule.after_prepare_files
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
---@param func fun(target: Target, ...)
function after_run(func) end

-- target.after_test / rule.after_test
---@param func fun(target: Target, ...)
function after_test(func) end

-- target.after_uninstall / rule.after_uninstall
---@param func fun(target: Target, ...)
function after_uninstall(func) end

-- target.after_uninstallcmd / rule.after_uninstallcmd
---@param func fun(target: Target, ...)
function after_uninstallcmd(func) end

-- target.before_build / rule.before_build
---@param func fun(target: Target, ...)
function before_build(func) end

-- target.before_build_file / rule.before_build_file
---@param func fun(target: Target, ...)
function before_build_file(func) end

-- target.before_build_files / rule.before_build_files
---@param func fun(target: Target, ...)
function before_build_files(func) end

-- target.before_buildcmd / rule.before_buildcmd
---@param func fun(target: Target, ...)
function before_buildcmd(func) end

-- target.before_buildcmd_file / rule.before_buildcmd_file
---@param func fun(target: Target, batchcmds: any, sourcefile: string, opt?: table)
function before_buildcmd_file(func) end

-- target.before_buildcmd_files / rule.before_buildcmd_files
---@param func fun(target: Target, batchcmds: any, sourcefiles: string[], opt?: table)
function before_buildcmd_files(func) end

-- option.before_check
---@param func fun(...)
function before_check(func) end

-- target.before_clean / rule.before_clean
---@param func fun(target: Target, ...)
function before_clean(func) end

-- target.before_config / rule.before_config
---@param func fun(target: Target, ...)
function before_config(func) end

-- target.before_install / rule.before_install
---@param func fun(target: Target, ...)
function before_install(func) end

-- target.before_installcmd / rule.before_installcmd
---@param func fun(target: Target, ...)
function before_installcmd(func) end

-- target.before_link / rule.before_link
---@param func fun(target: Target, ...)
function before_link(func) end

-- target.before_linkcmd / rule.before_linkcmd
---@param func fun(target: Target, ...)
function before_linkcmd(func) end

-- rule.before_load
---@param func fun(target: Target, ...)
function before_load(func) end

-- target.before_package / rule.before_package
---@param func fun(target: Target, ...)
function before_package(func) end

-- target.before_prepare / rule.before_prepare
---@param func fun(target: Target, ...)
function before_prepare(func) end

-- target.before_prepare_file / rule.before_prepare_file
---@param func fun(target: Target, ...)
function before_prepare_file(func) end

-- target.before_prepare_files / rule.before_prepare_files
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
---@param func fun(target: Target, ...)
function before_run(func) end

-- target.before_test / rule.before_test
---@param func fun(target: Target, ...)
function before_test(func) end

-- target.before_uninstall / rule.before_uninstall
---@param func fun(target: Target, ...)
function before_uninstall(func) end

-- target.before_uninstallcmd / rule.before_uninstallcmd
---@param func fun(target: Target, ...)
function before_uninstallcmd(func) end

-- target.on_build / rule.on_build
---@param func fun(target: Target, ...)
function on_build(func) end

-- target.on_build_file / rule.on_build_file
---@param func fun(target: Target, ...)
function on_build_file(func) end

-- target.on_build_files / rule.on_build_files
---@param func fun(target: Target, ...)
function on_build_files(func) end

-- target.on_buildcmd / rule.on_buildcmd
---@param func fun(target: Target, ...)
function on_buildcmd(func) end

-- target.on_buildcmd_file / rule.on_buildcmd_file
---@param func fun(target: Target, batchcmds: any, sourcefile: string, opt?: table)
function on_buildcmd_file(func) end

-- target.on_buildcmd_files / rule.on_buildcmd_files
---@param func fun(target: Target, batchcmds: any, sourcefiles: string[], opt?: table)
function on_buildcmd_files(func) end

-- option.on_check / package.on_check
---@param func fun(package: Package, ...)
function on_check(func) end

-- target.on_clean / rule.on_clean
---@param func fun(target: Target, ...)
function on_clean(func) end

-- package.on_component
---@param func fun(package: Package, ...)
function on_component(func) end

-- target.on_config / rule.on_config
---@param func fun(target: Target, ...)
function on_config(func) end

-- package.on_download
---@param func fun(package: Package, ...)
function on_download(func) end

-- package.on_fetch
---@param func fun(package: Package, ...)
function on_fetch(func) end

-- target.on_install / rule.on_install / package.on_install
---@param func fun(target: Target, ...)
function on_install(func) end

-- target.on_installcmd / rule.on_installcmd
---@param func fun(target: Target, ...)
function on_installcmd(func) end

-- target.on_link / rule.on_link
---@param func fun(target: Target, ...)
function on_link(func) end

-- target.on_linkcmd / rule.on_linkcmd
---@param func fun(target: Target, ...)
function on_linkcmd(func) end

-- target.on_load / rule.on_load / package.on_load
---@param func fun(target: Target, ...)
function on_load(func) end

-- target.on_package / rule.on_package
---@param func fun(target: Target, ...)
function on_package(func) end

-- target.on_prepare / rule.on_prepare
---@param func fun(target: Target, ...)
function on_prepare(func) end

-- target.on_prepare_file / rule.on_prepare_file
---@param func fun(target: Target, ...)
function on_prepare_file(func) end

-- target.on_prepare_files / rule.on_prepare_files
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
---@param func fun(target: Target, ...)
function on_run(func) end

-- package.on_source
---@param func fun(package: Package, ...)
function on_source(func) end

-- target.on_test / rule.on_test / package.on_test
---@param func fun(target: Target, ...)
function on_test(func) end

-- target.on_uninstall / rule.on_uninstall
---@param func fun(target: Target, ...)
function on_uninstall(func) end

-- target.on_uninstallcmd / rule.on_uninstallcmd
---@param func fun(target: Target, ...)
function on_uninstallcmd(func) end
