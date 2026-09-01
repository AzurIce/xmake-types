---@meta
---xmake version: 3.0.9

-- 内建模块 coroutine（1 个函数）
coroutine = {}

-- coroutine.resume：恢复协程的执行
---@param co any
---@param ... any
---@return any
function coroutine.resume(co, ...) end


-- 内建模块 hash（14 个函数）
hash = {}

-- hash.md5：计算文件或二进制数据的 MD5 哈希值
---@param file_or_data string|any
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

-- hash.sha1：计算文件或二进制数据的 SHA1 哈希值
---@param file_or_data string|any
---@return any
function hash.sha1(file_or_data) end

-- hash.sha256：计算文件或二进制数据的 SHA256 哈希值
---@param file_or_data string|any
---@return any
function hash.sha256(file_or_data) end

-- hash.strhash128：从字符串生成 128 位哈希值
---@param str string
---@return any
function hash.strhash128(str) end

-- hash.strhash32：从字符串生成 32 位哈希值
---@param str string
---@return any
function hash.strhash32(str) end

-- hash.strhash64：从字符串生成 64 位哈希值
---@param str string
---@return any
function hash.strhash64(str) end

-- hash.uuid：根据名称生成 UUID
---@param str string
---@return any
function hash.uuid(str) end

-- hash.uuid4
---@param str any
---@return any
function hash.uuid4(str) end

-- hash.xxhash128：计算文件或二进制数据的 128 位 xxHash 哈希值
---@param file_or_data string|any
---@return any
function hash.xxhash128(file_or_data) end

-- hash.xxhash32：计算文件或二进制数据的 32 位 xxHash 哈希值
---@param file_or_data string|any
---@return any
function hash.xxhash32(file_or_data) end

-- hash.xxhash64：计算文件或二进制数据的 64 位 xxHash 哈希值
---@param file_or_data string|any
---@return any
function hash.xxhash64(file_or_data) end


-- 内建模块 io（22 个函数）
io = {}

-- io.cat：读取和显示文件的所有内容
---@param filepath string
---@param linecount any
---@param opt any
---@return any
function io.cat(filepath, linecount, opt) end

-- io.close：关闭文件
---@param file any
---@return any
function io.close(file) end

-- io.convert：转换文件编码格式
---@param inputfile string
---@param outputfile string
---@param opt any
---@return any
function io.convert(inputfile, outputfile, opt) end

-- io.flush：刷新标准输出缓冲区
---@param file any
---@return any
function io.flush(file) end

-- io.gsub：全文替换指定路径文件的内容
---@param filepath string
---@param pattern string
---@param replace string|function
---@param opt? table
---@return any
function io.gsub(filepath, pattern, replace, opt) end

-- io.insert：在文件指定行号前插入文本
---@param filepath string
---@param lineidx number
---@param text string
---@param opt any
---@return any
function io.insert(filepath, lineidx, text, opt) end

-- io.isatty：判断文件是否为终端设备
---@param file any
---@return any
function io.isatty(file) end

-- io.lines：读取文件的所有行
---@param filepath string
---@param opt string
---@return any
function io.lines(filepath, opt) end

-- io.load：从指定路径文件反序列化加载所有table内容
---@param filepath string
---@param opt any
---@return any
function io.load(filepath, opt) end

-- io.open：打开文件用于读写
---@param filepath string
---@param mode string
---@param opt? table
---@return any
function io.open(filepath, mode, opt) end

-- io.openlock：创建一把文件锁
---@param filepath string
---@return any
function io.openlock(filepath) end

-- io.print：带换行格式化输出内容到文件
---@param filepath string
---@param ... any
---@return any
function io.print(filepath, ...) end

-- io.printf：无换行格式化输出内容到文件
---@param filepath string
---@param ... any
---@return any
function io.printf(filepath, ...) end

-- io.read：从标准输入读取数据
---@param fmt any
---@param opt any
---@return any
function io.read(fmt, opt) end

-- io.readable：判断标准输入是否可读
---@return any
function io.readable() end

-- io.readfile：从指定路径文件读取所有内容
---@param filepath string
---@param opt? table
---@return any
function io.readfile(filepath, opt) end

-- io.replace：根据表达式替换文件内容
---@param filepath string
---@param pattern string
---@param replace string|function
---@param opt? table
---@return any
function io.replace(filepath, pattern, replace, opt) end

-- io.save：序列化保存所有table内容到指定路径文件
---@param filepath string
---@param object table
---@param opt any
---@return any
function io.save(filepath, object, opt) end

-- io.stdfile：获取标准输入输出文件
---@param filepath any
---@return any
function io.stdfile(filepath) end

-- io.tail：读取和显示文件的尾部内容
---@param filepath string
---@param linecount number
---@param opt any
---@return any
function io.tail(filepath, linecount, opt) end

-- io.write：向标准输出写入数据
---@param ... any
---@return any
function io.write(...) end

-- io.writefile：写入所有内容到指定路径文件
---@param filepath string
---@param data string
---@param opt? table
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


-- 内建模块 os（99 个函数）
os = {}

-- os._async_task
---@return any
function os._async_task() end

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

-- os._resolve_tmpdir
---@param tmpdir_root any
---@return any
function os._resolve_tmpdir(tmpdir_root) end

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
---@param name string
---@param ... any
---@return any
function os.addenv(name, ...) end

-- os.addenvp：使用给定分隔符向环境变量添加值
---@param name string
---@param values string
---@param sep string
---@return any
function os.addenvp(name, values, sep) end

-- os.addenvs：向当前系统变量添加新变量，并且返回所有旧系统变量
---@param envs table
---@return any
function os.addenvs(envs) end

-- os.arch：获取当前系统架构
---@return any
function os.arch() end

-- os.atexit：注册退出回调函数
---@param on_exit function
---@return any
function os.atexit(on_exit) end

-- os.cd：进入指定目录
---@param dir string
---@return any
function os.cd(dir) end

-- os.cp：复制文件或目录
---@param srcpath string
---@param dstpath string
---@param opt? table
---@return any
function os.cp(srcpath, dstpath, opt) end

-- os.cpuinfo：获取当前CPU信息
---@param name string
---@return any
function os.cpuinfo(name) end

-- os.curdir：获取当前目录路径
---@return any
function os.curdir() end

-- os.default_njob：获取默认编译任务数
---@return any
function os.default_njob() end

-- os.dirs：遍历获取指定目录下的所有目录
---@param pattern string
---@param opt any
---@return any
function os.dirs(pattern, opt) end

-- os.exec：回显运行原生shell命令
---@param cmd string
---@param ... any
---@return any
function os.exec(cmd, ...) end

-- os.execv：回显运行原生shell命令，带参数列表
---@param program string
---@param argv table
---@param opt? table
---@return any
function os.execv(program, argv, opt) end

-- os.exists：判断文件或目录是否存在
---@param filedir string
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
---@param pattern string
---@param opt any
---@return any
function os.filedirs(pattern, opt) end

-- os.files：遍历获取指定目录下的所有文件
---@param pattern string
---@param opt any
---@return any
function os.files(pattern, opt) end

-- os.fscase：判断操作系统的文件系统是否大小写敏感
---@param filepath any
---@return any
function os.fscase(filepath) end

-- os.getenvs：获取所有当前系统变量
---@return any
function os.getenvs() end

-- os.getpid：获取当前进程 ID
---@param ... any
---@return any
function os.getpid(...) end

-- os.gid：获取用户组 ID 信息
---@param ... any
---@return any
function os.gid(...) end

-- os.host：获取当前主机的操作系统
---@return any
function os.host() end

-- os.iorun：安静运行原生shell命令并获取输出内容
---@param cmd string
---@param ... any
---@return any
function os.iorun(cmd, ...) end

-- os.iorunv：安静运行原生shell命令并获取输出内容，带参数列表
---@param program string
---@param argv table
---@param opt? table
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
---@param dirpath string
---@return any
function os.isdir(dirpath) end

-- os.isexec：判断文件是否可执行
---@param filepath string
---@return any
function os.isexec(filepath) end

-- os.isfile：判断是否为文件
---@param filepath string
---@return any
function os.isfile(filepath) end

-- os.islink：判断是否为符号链接
---@param filepath string
---@return any
function os.islink(filepath) end

-- os.isroot：判断xmake是否以管理员权限运行
---@return any
function os.isroot() end

-- os.joinenvs：拼接系统变量，与 [os.addenvs](#os-addenvs) 类似，但是不会对当前环境变量产生影响，若第二个参数为 `nil`，则使用原有环境变量
---@param envs table
---@param oldenvs table
---@return any
function os.joinenvs(envs, oldenvs) end

-- os.ln：为一个文件或目录创建符号链接
---@param srcpath string
---@param dstpath string
---@param opt any
---@return any
function os.ln(srcpath, dstpath, opt) end

-- os.match
---@param pattern any
---@param mode any
---@param opt any
---@return any
function os.match(pattern, mode, opt) end

-- os.meminfo：获取内存信息
---@param name string
---@return any
function os.meminfo(name) end

-- os.mkdir：创建目录
---@param dir string
---@return any
function os.mkdir(dir) end

-- os.mv：移动重命名文件或目录
---@param srcpath string
---@param dstpath string
---@param opt any
---@return any
function os.mv(srcpath, dstpath, opt) end

-- os.nuldev：获取空设备路径
---@param input any
---@return any
function os.nuldev(input) end

-- os.pbcopy：复制内容到系统剪贴板
---@param data string
---@return any
function os.pbcopy(data) end

-- os.pbpaste：从系统剪贴板获取内容
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

-- os.projectfile：获取工程文件路径
---@return any
function os.projectfile() end

-- os.raise：抛出一个异常并且中止当前脚本运行
---@param msg string
---@param ... any
---@return any
function os.raise(msg, ...) end

-- os.raiselevel：与 [os.raise](#os-raise) 类似但是可以指定异常等级
---@param level number
---@param msg string
---@param ... any
---@return any
function os.raiselevel(level, msg, ...) end

-- os.readlink：读取符号链接内容
---@param symlink string
---@return any
function os.readlink(symlink) end

-- os.rm：删除文件或目录树
---@param filepath string
---@param opt any
---@return any
function os.rm(filepath, opt) end

-- os.rmdir：仅删除目录
---@param dir string
---@param opt any
---@return any
function os.rmdir(dir, opt) end

-- os.run：安静运行原生shell命令
---@param cmd string
---@param ... any
---@return any
function os.run(cmd, ...) end

-- os.runv：安静运行原生shell命令，带参数列表
---@param program string
---@param argv table
---@param opt? table
---@return any
function os.runv(program, argv, opt) end

-- os.scriptdir：获取当前描述脚本的路径
---@return any
function os.scriptdir() end

-- os.setenv：设置系统环境变量
---@param name string
---@param ... any
---@return any
function os.setenv(name, ...) end

-- os.setenvp：使用给定分隔符设置环境变量
---@param name string
---@param values string
---@param sep string
---@return any
function os.setenvp(name, values, sep) end

-- os.setenvs：使用给定系统变量替换当前所有系统变量，并返回旧系统变量
---@param envs table
---@return any
function os.setenvs(envs) end

-- os.shell：获取当前shell
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
---@param filepath string
---@param opt any
---@return any
function os.touch(filepath, opt) end

-- os.trycp：尝试复制文件或目录
---@param srcpath string
---@param dstpath string
---@param opt any
---@return any
function os.trycp(srcpath, dstpath, opt) end

-- os.trymv：尝试移动文件或目录
---@param srcpath string
---@param dstpath string
---@param opt any
---@return any
function os.trymv(srcpath, dstpath, opt) end

-- os.tryrm：尝试删除文件或目录
---@param filepath string
---@param opt any
---@return any
function os.tryrm(filepath, opt) end

-- os.uid：获取用户 ID 信息
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
---@param p string
---@param rootdir string
---@return any
function path.absolute(p, rootdir) end

-- path.basename：获取路径最后不带后缀的文件名
---@param p string
---@return any
function path.basename(p) end

-- path.cygwin：转换路径为 Cygwin 风格
---@param p string
---@return any
function path.cygwin(p) end

-- path.cygwin_path
---@param p any
---@return any
function path.cygwin_path(p) end

-- path.directory：获取路径的目录名
---@param p string
---@param sep any
---@return any
function path.directory(p, sep) end

-- path.envsep：获取当前平台的环境变量路径分隔符
---@return any
function path.envsep() end

-- path.extension：获取路径的后缀名
---@param p string
---@param level any
---@return any
function path.extension(p, level) end

-- path.filename：获取路径最后带后缀的文件名
---@param p string
---@param sep any
---@return any
function path.filename(p, sep) end

-- path.instance_of：判断是否为路径实例
---@param p any
---@return any
function path.instance_of(p) end

-- path.islastsep：判断路径最后一个字符是否为路径分隔符
---@param p string
---@return any
function path.islastsep(p) end

-- path.join：拼接路径
---@param p string|any[]
---@param ... any
---@return any
function path.join(p, ...) end

-- path.joinenv：拼接环境变量路径
---@param paths any[]
---@param envsep any
---@return any
function path.joinenv(paths, envsep) end

-- path.new：创建新的路径实例
---@param p string
---@param transform any
---@return any
function path.new(p, transform) end

-- path.normalize：规范化路径
---@param p string
---@return any
function path.normalize(p) end

-- path.pattern：转换路径模式为 Lua 匹配模式
---@param pattern string
---@return any
function path.pattern(pattern) end

-- path.relative：转换成相对路径
---@param p string
---@param rootdir string
---@return any
function path.relative(p, rootdir) end

-- path.sep：获取当前平台的路径分隔符
---@return any
function path.sep() end

-- path.split：按路径分隔符分割路径
---@param p string
---@return any
function path.split(p) end

-- path.splitenv：分割环境变量中的路径
---@param env_path string
---@return any
function path.splitenv(env_path) end

-- path.translate：转换路径到当前平台的路径风格
---@param p string
---@param opt any
---@return any
function path.translate(p, opt) end

-- path.unix：转换路径为 Unix 风格
---@param p string
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

-- string.deserialize：反序列化字符串为对象
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

-- string.ipattern：生成大小写不敏感的匹配模式
---@param pattern string
---@param brackets any
---@return any
function string.ipattern(pattern, brackets) end

-- string.lastof：查找子串最后一次出现的位置
---@param pattern string
---@param plain string
---@return any
function string.lastof(pattern, plain) end

-- string.levenshtein：计算两个字符串的编辑距离
---@param str2 string
---@param opt string
---@return any
function string.levenshtein(str2, opt) end

-- string.ltrim：去掉字符串左边空白字符
---@param trimchars string
---@return any
function string.ltrim(trimchars) end

-- string.replace：替换字符串
---@param old string
---@param new string
---@param opt string
---@return any
function string.replace(old, new, opt) end

-- string.rtrim：去掉字符串右边空白字符
---@param trimchars string
---@return any
function string.rtrim(trimchars) end

-- string.serialize：序列化对象为字符串
---@param object any
---@param opt any
---@return any
function string.serialize(object, opt) end

-- string.split：分割字符串
---@param delimiter string
---@param opt string
---@return any
function string.split(delimiter, opt) end

-- string.trim：去掉字符串左右空白字符
---@param trimchars string
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

-- table.append：追加元素到数组末尾
---@param array table
---@param ... any
---@return any
function table.append(array, ...) end

-- table.clear
---@param t any
---@return any
function table.clear(t) end

-- table.clone：克隆 table
---@param self table
---@param depth any
---@return any
function table.clone(self, depth) end

-- table.contains：判断 table 中包含指定的值
---@param t table
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

-- table.empty：判断 table 是否为空
---@param tbl table
---@return any
function table.empty(tbl) end

-- table.find：查找 table 中指定值的索引或键
---@param tbl table
---@param value any
---@return any
function table.find(tbl, value) end

-- table.find_first：查找 table 中指定值的第一个索引
---@param tbl table
---@param value any
---@return any
function table.find_first(tbl, value) end

-- table.find_first_if：根据条件查找 table 中第一个匹配的索引
---@param tbl table
---@param pred function
---@return any
function table.find_first_if(tbl, pred) end

-- table.find_if：根据条件查找 table 中匹配的索引或键
---@param tbl table
---@param pred function
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

-- table.inherit：继承接口并创建新实例
---@param ... any
---@return any
function table.inherit(...) end

-- table.inherit2
---@param self any
---@param ... any
---@return any
function table.inherit2(self, ...) end

-- table.is_array：判断 table 是否为数组
---@param array table
---@return any
function table.is_array(array) end

-- table.is_dictionary：判断 table 是否为字典
---@param dict table
---@return any
function table.is_dictionary(dict) end

-- table.join：合并多个table并返回
---@param ... any
---@return any
function table.join(...) end

-- table.join2：合并多个table到第一个table
---@param self table
---@param ... any
---@return any
function table.join2(self, ...) end

-- table.keys：获取 table 的所有 key
---@param tbl table
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
---@param tbl table
---@param callback any
---@return any
function table.orderkeys(tbl, callback) end

-- table.orderpairs：有序遍历 table 的 key/value
---@param t table
---@param callback any
---@return any
function table.orderpairs(t, callback) end

-- table.pack：将参数打包成 table
---@param ... any
---@return any
function table.pack(...) end

-- table.remove_if：根据条件移除 table 中的元素
---@param tbl table
---@param pred function
---@return any
function table.remove_if(tbl, pred) end

-- table.reverse：反转数组
---@param arr table
---@return any
function table.reverse(arr) end

-- table.reverse_unique：从后向前去重
---@param array table
---@param barrier any
---@return any
function table.reverse_unique(array, barrier) end

-- table.shallow_join：浅合并多个对象到新 table（不展开子 table）
---@param ... any
---@return any
function table.shallow_join(...) end

-- table.shallow_join2：浅合并多个对象到第一个 table（不展开子 table）
---@param self table
---@param ... any
---@return any
function table.shallow_join2(self, ...) end

-- table.slice：获取table的切片
---@param self table
---@param first number
---@param last number
---@param step number
---@return any
function table.slice(self, first, last, step) end

-- table.swap：交换数组中两个元素的位置
---@param array table
---@param i number
---@param j number
---@return any
function table.swap(array, i, j) end

-- table.to_array：将迭代器的数据收集为数组
---@param iterator function
---@param state any
---@param var any
---@return any
function table.to_array(iterator, state, var) end

-- table.unique：对table中的内容进行去重
---@param array table
---@param barrier any
---@return any
function table.unique(array, barrier) end

-- table.unwrap：解包单元素数组
---@param array table
---@return any
function table.unwrap(array) end

-- table.values：获取 table 的所有 value
---@param tbl table
---@return any
function table.values(tbl) end

-- table.wrap：将值包装成数组
---@param value any
---@return any
function table.wrap(value) end

-- table.wrap_lock：锁定 table 以防止被 unwrap
---@param value table
---@return any
function table.wrap_lock(value) end

-- table.wrap_unlock：解锁 table 以允许被 unwrap
---@param value table
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
---@param keypath string
---@return any
function winos.registry_keys(keypath) end

-- winos.registry_query：获取注册表建值
---@param keypath string
---@return any
function winos.registry_query(keypath) end

-- winos.registry_values：获取注册表值名列表
---@param keypath string
---@return any
function winos.registry_values(keypath) end

-- winos.short_path
---@param long_path any
---@return any
function winos.short_path(long_path) end

-- winos.version：获取 windows 系统版本
---@return any
function winos.version() end


-- 内建模块 xmake（10 个函数）
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

-- xmake.in_main_thread
---@return any
function xmake.in_main_thread() end

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

