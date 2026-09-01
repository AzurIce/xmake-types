---@meta
---xmake version: 3.0.4

-- 内建模块 coroutine（1 个函数）
coroutine = {}

-- coroutine.resume
---@param co any
---@param ... any
---@return any
function coroutine.resume(co, ...) end


-- 内建模块 hash（14 个函数）
hash = {}

-- hash.md5：计算字符串或文件的 MD5 哈希值
---@param file_or_data any
---@return any
function hash.md5(file_or_data) end

-- hash.rand128：生成 128 位随机哈希值
---@return any
function hash.rand128() end

-- hash.rand32：生成 32 位随机哈希值
---@return any
function hash.rand32() end

-- hash.rand64：生成 64 位随机哈希值
---@return any
function hash.rand64() end

-- hash.sha1：计算字符串或文件的 SHA1 哈希值
---@param file_or_data any
---@return any
function hash.sha1(file_or_data) end

-- hash.sha256：计算字符串或文件的 SHA256 哈希值
---@param file_or_data any
---@return any
function hash.sha256(file_or_data) end

-- hash.strhash128：从字符串生成 128 位哈希值
---@param str any
---@return any
function hash.strhash128(str) end

-- hash.strhash32：从字符串生成 32 位哈希值
---@param str any
---@return any
function hash.strhash32(str) end

-- hash.strhash64：从字符串生成 64 位哈希值
---@param str any
---@return any
function hash.strhash64(str) end

-- hash.uuid：根据名称生成 UUID
---@param str any
---@return any
function hash.uuid(str) end

-- hash.uuid4
---@param str any
---@return any
function hash.uuid4(str) end

-- hash.xxhash128：计算字符串或文件的 128 位 xxHash 哈希值
---@param file_or_data any
---@return any
function hash.xxhash128(file_or_data) end

-- hash.xxhash32：计算字符串或文件的 32 位 xxHash 哈希值
---@param file_or_data any
---@return any
function hash.xxhash32(file_or_data) end

-- hash.xxhash64：计算字符串或文件的 64 位 xxHash 哈希值
---@param file_or_data any
---@return any
function hash.xxhash64(file_or_data) end


-- 内建模块 io（21 个函数）
io = {}

-- io.cat：读取和显示文件的所有内容
---@param filepath any
---@param linecount any
---@param opt any
---@return any
function io.cat(filepath, linecount, opt) end

-- io.close
---@param file any
---@return any
function io.close(file) end

-- io.flush
---@param file any
---@return any
function io.flush(file) end

-- io.gsub：全文替换指定路径文件的内容
---@param filepath any
---@param pattern any
---@param replace any
---@param opt any
---@return any
function io.gsub(filepath, pattern, replace, opt) end

-- io.insert
---@param filepath any
---@param lineidx any
---@param text any
---@param opt any
---@return any
function io.insert(filepath, lineidx, text, opt) end

-- io.isatty
---@param file any
---@return any
function io.isatty(file) end

-- io.lines：读取文件的所有行
---@param filepath any
---@param opt any
---@return any
function io.lines(filepath, opt) end

-- io.load：从指定路径文件反序列化加载所有table内容
---@param filepath any
---@param opt any
---@return any
function io.load(filepath, opt) end

-- io.open：打开文件用于读写
---@param filepath any
---@param mode any
---@param opt any
---@return any
function io.open(filepath, mode, opt) end

-- io.openlock：创建一把文件锁
---@param filepath any
---@return any
function io.openlock(filepath) end

-- io.print：带换行格式化输出内容到文件
---@param filepath any
---@param ... any
---@return any
function io.print(filepath, ...) end

-- io.printf：无换行格式化输出内容到文件
---@param filepath any
---@param ... any
---@return any
function io.printf(filepath, ...) end

-- io.read
---@param fmt any
---@param opt any
---@return any
function io.read(fmt, opt) end

-- io.readable
---@return any
function io.readable() end

-- io.readfile：从指定路径文件读取所有内容
---@param filepath any
---@param opt any
---@return any
function io.readfile(filepath, opt) end

-- io.replace：根据表达式替换文件内容
---@param filepath any
---@param pattern any
---@param replace any
---@param opt any
---@return any
function io.replace(filepath, pattern, replace, opt) end

-- io.save：序列化保存所有table内容到指定路径文件
---@param filepath any
---@param object any
---@param opt any
---@return any
function io.save(filepath, object, opt) end

-- io.stdfile：获取标准输入输出文件
---@param filepath any
---@return any
function io.stdfile(filepath) end

-- io.tail：读取和显示文件的尾部内容
---@param filepath any
---@param linecount any
---@param opt any
---@return any
function io.tail(filepath, linecount, opt) end

-- io.write
---@param ... any
---@return any
function io.write(...) end

-- io.writefile：写入所有内容到指定路径文件
---@param filepath any
---@param data any
---@param opt any
---@return any
function io.writefile(filepath, data, opt) end


-- 内建模块 linuxos（5 个函数）
linuxos = {}

-- linuxos._lsb_release
---@return any
function linuxos._lsb_release() end

-- linuxos._uname_r
---@return any
function linuxos._uname_r() end

-- linuxos.kernelver：获取 linux 系统内核版本
---@return any
function linuxos.kernelver() end

-- linuxos.name：获取 linux 系统发行版名称
---@return any
function linuxos.name() end

-- linuxos.version：获取 linux 系统版本
---@return any
function linuxos.version() end


-- 内建模块 macos（1 个函数）
macos = {}

-- macos.version：获取 macOS 系统版本
---@return any
function macos.version() end


-- 内建模块 math（3 个函数）
math = {}

-- math.isinf
---@return any
function math.isinf() end

-- math.isint
---@return any
function math.isint() end

-- math.isnan
---@return any
function math.isnan() end


-- 内建模块 os（97 个函数）
os = {}

-- os._cp
---@param src any
---@param dst any
---@param rootdir any
---@param opt any
---@return any
function os._cp(src, dst, rootdir, opt) end

-- os._deduplicate_pathenv
---@param value any
---@return any
function os._deduplicate_pathenv(value) end

-- os._get_shell_path
---@param opt any
---@return any
function os._get_shell_path(opt) end

-- os._is_arch
---@param arch any
---@param ... any
---@return any
function os._is_arch(arch, ...) end

-- os._is_host
---@param host any
---@param ... any
---@return any
function os._is_host(host, ...) end

-- os._is_profiling_process_perf
---@return any
function os._is_profiling_process_perf() end

-- os._is_tracing_process
---@return any
function os._is_tracing_process() end

-- os._match_wildcard_pathes
---@param v any
---@return any
function os._match_wildcard_pathes(v) end

-- os._mv
---@param src any
---@param dst any
---@param opt any
---@return any
function os._mv(src, dst, opt) end

-- os._notify_curdir_changed
---@return any
function os._notify_curdir_changed() end

-- os._notify_envs_changed
---@param envs any
---@return any
function os._notify_envs_changed(envs) end

-- os._ramdir
---@return any
function os._ramdir() end

-- os._rm
---@param filedir any
---@return any
function os._rm(filedir) end

-- os._rm_empty_parentdirs
---@param filepath any
---@return any
function os._rm_empty_parentdirs(filepath) end

-- os._run_exit_cbs
---@param ok any
---@param errors any
---@return any
function os._run_exit_cbs(ok, errors) end

-- os._sched_chdir_set
---@param chdir any
---@return any
function os._sched_chdir_set(chdir) end

-- os._sched_chenvs_set
---@param envs any
---@return any
function os._sched_chenvs_set(envs) end

-- os.addenv：向指定环境变量添加值
---@param name any
---@param ... any
---@return any
function os.addenv(name, ...) end

-- os.addenvp：使用给定分隔符向环境变量添加值
---@param name any
---@param values any
---@param sep any
---@return any
function os.addenvp(name, values, sep) end

-- os.addenvs：向当前系统变量添加新变量，并且返回所有旧系统变量
---@param envs any
---@return any
function os.addenvs(envs) end

-- os.arch：获取当前系统架构
---@return any
function os.arch() end

-- os.atexit
---@param on_exit any
---@return any
function os.atexit(on_exit) end

-- os.cd：进入指定目录
---@param dir any
---@return any
function os.cd(dir) end

-- os.cp：复制文件或目录
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.cp(srcpath, dstpath, opt) end

-- os.cpuinfo：获取当前CPU信息
---@param name any
---@return any
function os.cpuinfo(name) end

-- os.curdir：获取当前目录路径
---@return any
function os.curdir() end

-- os.default_njob：获取默认编译任务数
---@return any
function os.default_njob() end

-- os.dirs：遍历获取指定目录下的所有目录
---@param pattern any
---@param callback any
---@return any
function os.dirs(pattern, callback) end

-- os.exec：回显运行原生shell命令
---@param cmd any
---@param ... any
---@return any
function os.exec(cmd, ...) end

-- os.execv：回显运行原生shell命令，带参数列表
---@param program any
---@param argv any
---@param opt any
---@return any
function os.execv(program, argv, opt) end

-- os.exists：判断文件或目录是否存在
---@param filedir any
---@return any
function os.exists(filedir) end

-- os.exit：退出程序
---@param ... any
---@return any
function os.exit(...) end

-- os.features：获取系统特性
---@return any
function os.features() end

-- os.filedirs：遍历获取指定目录下的所有文件和目录
---@param pattern any
---@param callback any
---@return any
function os.filedirs(pattern, callback) end

-- os.files：遍历获取指定目录下的所有文件
---@param pattern any
---@param callback any
---@return any
function os.files(pattern, callback) end

-- os.fscase：判断操作系统的文件系统是否大小写敏感
---@param filepath any
---@return any
function os.fscase(filepath) end

-- os.getenvs：获取所有当前系统变量
---@return any
function os.getenvs() end

-- os.getpid
---@param ... any
---@return any
function os.getpid(...) end

-- os.gid
---@param ... any
---@return any
function os.gid(...) end

-- os.host：获取当前主机的操作系统
---@return any
function os.host() end

-- os.iorun：安静运行原生shell命令并获取输出内容
---@param cmd any
---@param ... any
---@return any
function os.iorun(cmd, ...) end

-- os.iorunv：安静运行原生shell命令并获取输出内容，带参数列表
---@param program any
---@param argv any
---@param opt any
---@return any
function os.iorunv(program, argv, opt) end

-- os.is_arch：判断给定架构是否为当前架构
---@param ... any
---@return any
function os.is_arch(...) end

-- os.is_host：判断给定系统是否为当前系统
---@param ... any
---@return any
function os.is_host(...) end

-- os.is_subarch：判断给定子系统架构是否为当前子系统架构
---@param ... any
---@return any
function os.is_subarch(...) end

-- os.is_subhost：判断给定子系统是否为当前子系统
---@param ... any
---@return any
function os.is_subhost(...) end

-- os.isdir：判断是否为目录
---@param dirpath any
---@return any
function os.isdir(dirpath) end

-- os.isexec：判断文件是否可执行
---@param filepath any
---@return any
function os.isexec(filepath) end

-- os.isfile：判断是否为文件
---@param filepath any
---@return any
function os.isfile(filepath) end

-- os.islink：判断是否为符号链接
---@param filepath any
---@return any
function os.islink(filepath) end

-- os.isroot：判断xmake是否以管理员权限运行
---@return any
function os.isroot() end

-- os.joinenvs：拼接系统变量，与 [os.addenvs](#os-addenvs) 类似，但是不会对当前环境变量产生影响，若第二个参数为 `nil`，则使用原有环境变量
---@param envs any
---@param oldenvs any
---@return any
function os.joinenvs(envs, oldenvs) end

-- os.ln：为一个文件或目录创建符号链接
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.ln(srcpath, dstpath, opt) end

-- os.match
---@param pattern any
---@param mode any
---@param callback any
---@return any
function os.match(pattern, mode, callback) end

-- os.meminfo：获取内存信息
---@param name any
---@return any
function os.meminfo(name) end

-- os.mkdir：创建目录
---@param dir any
---@return any
function os.mkdir(dir) end

-- os.mv：移动重命名文件或目录
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.mv(srcpath, dstpath, opt) end

-- os.nuldev
---@param input any
---@return any
function os.nuldev(input) end

-- os.pbcopy
---@param data any
---@return any
function os.pbcopy(data) end

-- os.pbpaste
---@return any
function os.pbpaste() end

-- os.programdir：获取xmake安装主程序脚本目录
---@return any
function os.programdir() end

-- os.programfile：获取xmake可执行文件路径
---@return any
function os.programfile() end

-- os.projectdir：获取工程主目录
---@return any
function os.projectdir() end

-- os.projectfile
---@return any
function os.projectfile() end

-- os.raise：抛出一个异常并且中止当前脚本运行
---@param msg any
---@param ... any
---@return any
function os.raise(msg, ...) end

-- os.raiselevel：与 [os.raise](#os-raise) 类似但是可以指定异常等级
---@param level any
---@param msg any
---@param ... any
---@return any
function os.raiselevel(level, msg, ...) end

-- os.readlink：读取符号链接内容
---@param symlink any
---@return any
function os.readlink(symlink) end

-- os.rm：删除文件或目录树
---@param filepath any
---@param opt any
---@return any
function os.rm(filepath, opt) end

-- os.rmdir：仅删除目录
---@param dir any
---@return any
function os.rmdir(dir) end

-- os.run：安静运行原生shell命令
---@param cmd any
---@param ... any
---@return any
function os.run(cmd, ...) end

-- os.runv：安静运行原生shell命令，带参数列表
---@param program any
---@param argv any
---@param opt any
---@return any
function os.runv(program, argv, opt) end

-- os.scriptdir：获取当前描述脚本的路径
---@return any
function os.scriptdir() end

-- os.setenv：设置系统环境变量
---@param name any
---@param ... any
---@return any
function os.setenv(name, ...) end

-- os.setenvp：使用给定分隔符设置环境变量
---@param name any
---@param values any
---@param sep any
---@return any
function os.setenvp(name, values, sep) end

-- os.setenvs：使用给定系统变量替换当前所有系统变量，并返回旧系统变量
---@param envs any
---@return any
function os.setenvs(envs) end

-- os.shell：获取当前shell (pwsh, cmd, bash, zsh, ...)
---@return any
function os.shell() end

-- os.sleep
---@param ms any
---@return any
function os.sleep(ms) end

-- os.subarch：获取子系统架构
---@return any
function os.subarch() end

-- os.subhost：获取当前子系统
---@return any
function os.subhost() end

-- os.term：获取当前终端 (windows-terminal, vscode, xterm, ...)
---@return any
function os.term() end

-- os.tmpdir：获取临时目录
---@param opt any
---@return any
function os.tmpdir(opt) end

-- os.tmpfile：获取临时文件路径
---@param key any
---@param opt any
---@return any
function os.tmpfile(key, opt) end

-- os.touch：创建空文件或更新文件时间戳
---@param filepath any
---@param opt any
---@return any
function os.touch(filepath, opt) end

-- os.trycp：尝试复制文件或目录
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.trycp(srcpath, dstpath, opt) end

-- os.trymv：尝试移动文件或目录
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.trymv(srcpath, dstpath, opt) end

-- os.tryrm：尝试删除文件或目录
---@param filepath any
---@param opt any
---@return any
function os.tryrm(filepath, opt) end

-- os.uid
---@param ... any
---@return any
function os.uid(...) end

-- os.vcp
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.vcp(srcpath, dstpath, opt) end

-- os.vexec
---@param cmd any
---@param ... any
---@return any
function os.vexec(cmd, ...) end

-- os.vexecv
---@param program any
---@param argv any
---@param opt any
---@return any
function os.vexecv(program, argv, opt) end

-- os.vln
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.vln(srcpath, dstpath, opt) end

-- os.vmv
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.vmv(srcpath, dstpath, opt) end

-- os.vrm
---@param filepath any
---@param opt any
---@return any
function os.vrm(filepath, opt) end

-- os.vrun
---@param cmd any
---@param ... any
---@return any
function os.vrun(cmd, ...) end

-- os.vrunv
---@param program any
---@param argv any
---@param opt any
---@return any
function os.vrunv(program, argv, opt) end

-- os.workingdir：获取工作目录
---@return any
function os.workingdir() end

-- os.xmakever
---@return any
function os.xmakever() end


-- 内建模块 path（21 个函数）
path = {}

-- path.absolute：转换成绝对路径
---@param p any
---@param rootdir any
---@return any
function path.absolute(p, rootdir) end

-- path.basename：获取路径最后不带后缀的文件名
---@param p any
---@return any
function path.basename(p) end

-- path.cygwin
---@param p any
---@return any
function path.cygwin(p) end

-- path.cygwin_path：Get the converted MSYS2/Cygwin style path
---@param p any
---@return any
function path.cygwin_path(p) end

-- path.directory：获取路径的目录名
---@param p any
---@param sep any
---@return any
function path.directory(p, sep) end

-- path.envsep：Get the environment separator
---@return any
function path.envsep() end

-- path.extension：获取路径的后缀名
---@param p any
---@param level any
---@return any
function path.extension(p, level) end

-- path.filename：获取路径最后带后缀的文件名
---@param p any
---@param sep any
---@return any
function path.filename(p, sep) end

-- path.instance_of
---@param p any
---@return any
function path.instance_of(p) end

-- path.islastsep：Get if the last character is a separator
---@param p any
---@return any
function path.islastsep(p) end

-- path.join：拼接路径
---@param p any
---@param ... any
---@return any
function path.join(p, ...) end

-- path.joinenv：Concat two environment variable by the environment separator
---@param paths any
---@param envsep any
---@return any
function path.joinenv(paths, envsep) end

-- path.new：Create a new path instance
---@param p any
---@param transform any
---@return any
function path.new(p, transform) end

-- path.normalize
---@param p any
---@return any
function path.normalize(p) end

-- path.pattern：Convert path pattern to lua pattern
---@param pattern any
---@return any
function path.pattern(pattern) end

-- path.relative：转换成相对路径
---@param p any
---@param rootdir any
---@return any
function path.relative(p, rootdir) end

-- path.sep：Return the current separator, usually `/`
---@return any
function path.sep() end

-- path.split：Split the path by the separator
---@param p any
---@return any
function path.split(p) end

-- path.splitenv：分割环境变量中的路径
---@param env_path any
---@return any
function path.splitenv(env_path) end

-- path.translate：转换路径到当前平台的路径风格
---@param p any
---@param opt any
---@return any
function path.translate(p, opt) end

-- path.unix
---@param p any
---@return any
function path.unix(p) end


-- 内建模块 semver（2 个函数）
semver = {}

-- semver.match
---@param str any
---@param pos any
---@param pattern any
---@return any
function semver.match(str, pos, pattern) end

-- semver.new
---@param version any
---@return any
function semver.new(version) end


-- 内建模块 string（17 个函数）
string = {}

-- string.decode
---@return any
function string.decode() end

-- string.deserialize
---@return any
function string.deserialize() end

-- string.dump
---@param object any
---@param deflate any
---@return any
function string.dump(object, deflate) end

-- string.encode
---@return any
function string.encode() end

-- string.ipattern
---@param pattern any
---@param brackets any
---@return any
function string.ipattern(pattern, brackets) end

-- string.lastof
---@param pattern any
---@param plain any
---@return any
function string.lastof(pattern, plain) end

-- string.levenshtein
---@param str2 any
---@param opt any
---@return any
function string.levenshtein(str2, opt) end

-- string.ltrim：去掉字符串左边空白字符
---@param trimchars any
---@return any
function string.ltrim(trimchars) end

-- string.replace
---@param old any
---@param new any
---@param opt any
---@return any
function string.replace(old, new, opt) end

-- string.rtrim：去掉字符串右边空白字符
---@param trimchars any
---@return any
function string.rtrim(trimchars) end

-- string.serialize
---@param object any
---@param opt any
---@return any
function string.serialize(object, opt) end

-- string.split：分割字符串
---@param delimiter any
---@param opt any
---@return any
function string.split(delimiter, opt) end

-- string.trim：去掉字符串左右空白字符
---@param trimchars any
---@return any
function string.trim(trimchars) end

-- string.tryformat
---@param format any
---@param ... any
---@return any
function string.tryformat(format, ...) end

-- string.vformat
---@param format any
---@param ... any
---@return any
function string.vformat(format, ...) end

-- string.wcswidth
---@param idx any
---@return any
function string.wcswidth(idx) end

-- string.wcwidth
---@param idx any
---@return any
function string.wcwidth(idx) end


-- 内建模块 table（41 个函数）
table = {}

-- table.append
---@param array any
---@param ... any
---@return any
function table.append(array, ...) end

-- table.clear
---@param t any
---@return any
function table.clear(t) end

-- table.clone
---@param self any
---@param depth any
---@return any
function table.clone(self, depth) end

-- table.contains：判断 table 中包含指定的值
---@param t any
---@param arg1 any
---@param arg2 any
---@param ... any
---@return any
function table.contains(t, arg1, arg2, ...) end

-- table.copy
---@param copied any
---@return any
function table.copy(copied) end

-- table.copy2
---@param self any
---@param copied any
---@return any
function table.copy2(self, copied) end

-- table.empty
---@param tbl any
---@return any
function table.empty(tbl) end

-- table.find
---@param tbl any
---@param value any
---@return any
function table.find(tbl, value) end

-- table.find_first
---@param tbl any
---@param value any
---@return any
function table.find_first(tbl, value) end

-- table.find_first_if
---@param tbl any
---@param pred any
---@return any
function table.find_first_if(tbl, pred) end

-- table.find_if
---@param tbl any
---@param pred any
---@return any
function table.find_if(tbl, pred) end

-- table.getn
---@param t any
---@return any
function table.getn(t) end

-- table.imap
---@param arr any
---@param mapper any
---@return any
function table.imap(arr, mapper) end

-- table.inherit
---@param ... any
---@return any
function table.inherit(...) end

-- table.inherit2
---@param self any
---@param ... any
---@return any
function table.inherit2(self, ...) end

-- table.is_array
---@param array any
---@return any
function table.is_array(array) end

-- table.is_dictionary
---@param dict any
---@return any
function table.is_dictionary(dict) end

-- table.join：合并多个table并返回
---@param ... any
---@return any
function table.join(...) end

-- table.join2：合并多个table到第一个table
---@param self any
---@param ... any
---@return any
function table.join2(self, ...) end

-- table.keys
---@param tbl any
---@return any
function table.keys(tbl) end

-- table.map
---@param tbl any
---@param mapper any
---@return any
function table.map(tbl, mapper) end

-- table.maxn
---@param t any
---@return any
function table.maxn(t) end

-- table.move
---@param a1 any
---@param f any
---@param e any
---@param t any
---@param a2 any
---@return any
function table.move(a1, f, e, t, a2) end

-- table.new
---@param narray any
---@param nhash any
---@return any
function table.new(narray, nhash) end

-- table.orderkeys：获取有序的 key 列表
---@param tbl any
---@param callback any
---@return any
function table.orderkeys(tbl, callback) end

-- table.orderpairs
---@param t any
---@param callback any
---@return any
function table.orderpairs(t, callback) end

-- table.pack
---@param ... any
---@return any
function table.pack(...) end

-- table.remove_if
---@param tbl any
---@param pred any
---@return any
function table.remove_if(tbl, pred) end

-- table.reverse
---@param arr any
---@return any
function table.reverse(arr) end

-- table.reverse_unique
---@param array any
---@param barrier any
---@return any
function table.reverse_unique(array, barrier) end

-- table.shallow_join
---@param ... any
---@return any
function table.shallow_join(...) end

-- table.shallow_join2
---@param self any
---@param ... any
---@return any
function table.shallow_join2(self, ...) end

-- table.slice：获取table的切片
---@param self any
---@param first any
---@param last any
---@param step any
---@return any
function table.slice(self, first, last, step) end

-- table.swap
---@param array any
---@param i any
---@param j any
---@return any
function table.swap(array, i, j) end

-- table.to_array
---@param iterator any
---@param state any
---@param var any
---@return any
function table.to_array(iterator, state, var) end

-- table.unique：对table中的内容进行去重
---@param array any
---@param barrier any
---@return any
function table.unique(array, barrier) end

-- table.unwrap
---@param array any
---@return any
function table.unwrap(array) end

-- table.values
---@param tbl any
---@return any
function table.values(tbl) end

-- table.wrap
---@param value any
---@return any
function table.wrap(value) end

-- table.wrap_lock
---@param value any
---@return any
function table.wrap_lock(value) end

-- table.wrap_unlock
---@param value any
---@return any
function table.wrap_unlock(value) end


-- 内建模块 todisplay（13 个函数）
todisplay = {}

-- todisplay._format
---@param fmtkey any
---@param fmtdefault any
---@param ... any
---@return any
function todisplay._format(fmtkey, fmtdefault, ...) end

-- todisplay._get_tostr_method
---@param value any
---@return any
function todisplay._get_tostr_method(value) end

-- todisplay._print_default_scalar
---@param value any
---@param style any
---@param formatkey any
---@return any
function todisplay._print_default_scalar(value, style, formatkey) end

-- todisplay._print_function
---@param func any
---@return any
function todisplay._print_function(func) end

-- todisplay._print_keyword
---@param keyword any
---@return any
function todisplay._print_keyword(keyword) end

-- todisplay._print_number
---@param num any
---@return any
function todisplay._print_number(num) end

-- todisplay._print_scalar
---@param value any
---@param expand any
---@return any
function todisplay._print_scalar(value, expand) end

-- todisplay._print_string
---@param str any
---@param as_key any
---@return any
function todisplay._print_string(str, as_key) end

-- todisplay._print_table_scalar
---@param value any
---@param expand any
---@return any
function todisplay._print_table_scalar(value, expand) end

-- todisplay._print_udata_scalar
---@param value any
---@return any
function todisplay._print_udata_scalar(value) end

-- todisplay._reset
---@return any
function todisplay._reset() end

-- todisplay._translate
---@param str any
---@return any
function todisplay._translate(str) end

-- todisplay.print
---@param value any
---@return any
function todisplay.print(value) end


-- 内建模块 utils（22 个函数）
utils = {}

-- utils._decode_errors
---@param errors any
---@return any
function utils._decode_errors(errors) end

-- utils._iowrite
---@param ... any
---@return any
function utils._iowrite(...) end

-- utils._print
---@param ... any
---@return any
function utils._print(...) end

-- utils.assert
---@param value any
---@param format any
---@param ... any
---@return any
function utils.assert(value, format, ...) end

-- utils.bin2c
---@param binaryfile any
---@param outputfile any
---@param opt any
---@return any
function utils.bin2c(binaryfile, outputfile, opt) end

-- utils.confirm
---@param opt any
---@return any
function utils.confirm(opt) end

-- utils.cprint
---@param format any
---@param ... any
---@return any
function utils.cprint(format, ...) end

-- utils.cprintf
---@param format any
---@param ... any
---@return any
function utils.cprintf(format, ...) end

-- utils.dprint
---@param format any
---@param ... any
---@return any
function utils.dprint(format, ...) end

-- utils.dprintf
---@param format any
---@param ... any
---@return any
function utils.dprintf(format, ...) end

-- utils.dump
---@param ... any
---@return any
function utils.dump(...) end

-- utils.error
---@param format any
---@param ... any
---@return any
function utils.error(format, ...) end

-- utils.print
---@param format any
---@param ... any
---@return any
function utils.print(format, ...) end

-- utils.printf
---@param format any
---@param ... any
---@return any
function utils.printf(format, ...) end

-- utils.show_warnings
---@return any
function utils.show_warnings() end

-- utils.table
---@param data any
---@param opt any
---@return any
function utils.table(data, opt) end

-- utils.trycall
---@param script any
---@param traceback any
---@param ... any
---@return any
function utils.trycall(script, traceback, ...) end

-- utils.vprint
---@param format any
---@param ... any
---@return any
function utils.vprint(format, ...) end

-- utils.vprintf
---@param format any
---@param ... any
---@return any
function utils.vprintf(format, ...) end

-- utils.vtable
---@param data any
---@param opt any
---@return any
function utils.vtable(data, opt) end

-- utils.warning
---@param format any
---@param ... any
---@return any
function utils.warning(format, ...) end

-- utils.wprint
---@param format any
---@param ... any
---@return any
function utils.wprint(format, ...) end


-- 内建模块 winos（13 个函数）
winos = {}

-- winos._version_eq
---@param self any
---@param version any
---@return any
function winos._version_eq(self, version) end

-- winos._version_from_name
---@param name any
---@return any
function winos._version_from_name(name) end

-- winos._version_le
---@param self any
---@param version any
---@return any
function winos._version_le(self, version) end

-- winos._version_lt
---@param self any
---@param version any
---@return any
function winos._version_lt(self, version) end

-- winos.ansi_cp
---@return any
function winos.ansi_cp() end

-- winos.cmdargv
---@param argv any
---@param opt any
---@return any
function winos.cmdargv(argv, opt) end

-- winos.inherit_handles_safely
---@return any
function winos.inherit_handles_safely() end

-- winos.oem_cp
---@return any
function winos.oem_cp() end

-- winos.registry_keys：获取注册表建列表
---@param keypath any
---@return any
function winos.registry_keys(keypath) end

-- winos.registry_query：获取注册表建值
---@param keypath any
---@return any
function winos.registry_query(keypath) end

-- winos.registry_values：获取注册表值名列表
---@param keypath any
---@return any
function winos.registry_values(keypath) end

-- winos.short_path
---@param long_path any
---@return any
function winos.short_path(long_path) end

-- winos.version：获取 windows 系统版本
---@return any
function winos.version() end


-- 内建模块 xmake（9 个函数）
xmake = {}

-- xmake.arch
---@return any
function xmake.arch() end

-- xmake.argv
---@return any
function xmake.argv() end

-- xmake.branch
---@return any
function xmake.branch() end

-- xmake.is_embed
---@return any
function xmake.is_embed() end

-- xmake.luajit
---@return any
function xmake.luajit() end

-- xmake.name
---@return any
function xmake.name() end

-- xmake.programdir
---@return any
function xmake.programdir() end

-- xmake.programfile
---@return any
function xmake.programfile() end

-- xmake.version
---@return any
function xmake.version() end

