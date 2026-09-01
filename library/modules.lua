---@meta
---xmake version: 2.9.9

-- 内建模块 coroutine（1 个函数）
coroutine = {}

-- coroutine.resume
---@param co any
---@param ... any
---@return any
function coroutine.resume(co, ...) end


-- 内建模块 hash（9 个函数）
hash = {}

-- hash.md5
---@param file_or_data any
---@return any
function hash.md5(file_or_data) end

-- hash.sha1
---@param file_or_data any
---@return any
function hash.sha1(file_or_data) end

-- hash.sha256
---@param file_or_data any
---@return any
function hash.sha256(file_or_data) end

-- hash.strhash128
---@param str any
---@return any
function hash.strhash128(str) end

-- hash.strhash32
---@param str any
---@return any
function hash.strhash32(str) end

-- hash.uuid
---@param str any
---@return any
function hash.uuid(str) end

-- hash.uuid4
---@param str any
---@return any
function hash.uuid4(str) end

-- hash.xxhash128
---@param file_or_data any
---@return any
function hash.xxhash128(file_or_data) end

-- hash.xxhash64
---@param file_or_data any
---@return any
function hash.xxhash64(file_or_data) end


-- 内建模块 io（21 个函数）
io = {}

-- io.cat
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

-- io.gsub
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

-- io.lines
---@param filepath any
---@param opt any
---@return any
function io.lines(filepath, opt) end

-- io.load
---@param filepath any
---@param opt any
---@return any
function io.load(filepath, opt) end

-- io.open
---@param filepath any
---@param mode any
---@param opt any
---@return any
function io.open(filepath, mode, opt) end

-- io.openlock
---@param filepath any
---@return any
function io.openlock(filepath) end

-- io.print
---@param filepath any
---@param ... any
---@return any
function io.print(filepath, ...) end

-- io.printf
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

-- io.readfile
---@param filepath any
---@param opt any
---@return any
function io.readfile(filepath, opt) end

-- io.replace
---@param filepath any
---@param pattern any
---@param replace any
---@param opt any
---@return any
function io.replace(filepath, pattern, replace, opt) end

-- io.save
---@param filepath any
---@param object any
---@param opt any
---@return any
function io.save(filepath, object, opt) end

-- io.stdfile
---@param filepath any
---@return any
function io.stdfile(filepath) end

-- io.tail
---@param filepath any
---@param linecount any
---@param opt any
---@return any
function io.tail(filepath, linecount, opt) end

-- io.write
---@param ... any
---@return any
function io.write(...) end

-- io.writefile
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

-- linuxos.kernelver
---@return any
function linuxos.kernelver() end

-- linuxos.name
---@return any
function linuxos.name() end

-- linuxos.version
---@return any
function linuxos.version() end


-- 内建模块 macos（1 个函数）
macos = {}

-- macos.version
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


-- 内建模块 os（96 个函数）
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

-- os.addenv
---@param name any
---@param ... any
---@return any
function os.addenv(name, ...) end

-- os.addenvp
---@param name any
---@param values any
---@param sep any
---@return any
function os.addenvp(name, values, sep) end

-- os.addenvs
---@param envs any
---@return any
function os.addenvs(envs) end

-- os.arch
---@return any
function os.arch() end

-- os.atexit
---@param on_exit any
---@return any
function os.atexit(on_exit) end

-- os.cd
---@param dir any
---@return any
function os.cd(dir) end

-- os.cp
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.cp(srcpath, dstpath, opt) end

-- os.cpuinfo
---@param name any
---@return any
function os.cpuinfo(name) end

-- os.curdir
---@return any
function os.curdir() end

-- os.default_njob
---@return any
function os.default_njob() end

-- os.dirs
---@param pattern any
---@param callback any
---@return any
function os.dirs(pattern, callback) end

-- os.exec
---@param cmd any
---@param ... any
---@return any
function os.exec(cmd, ...) end

-- os.execv
---@param program any
---@param argv any
---@param opt any
---@return any
function os.execv(program, argv, opt) end

-- os.exists
---@param filedir any
---@return any
function os.exists(filedir) end

-- os.exit
---@param ... any
---@return any
function os.exit(...) end

-- os.features
---@return any
function os.features() end

-- os.filedirs
---@param pattern any
---@param callback any
---@return any
function os.filedirs(pattern, callback) end

-- os.files
---@param pattern any
---@param callback any
---@return any
function os.files(pattern, callback) end

-- os.fscase
---@param filepath any
---@return any
function os.fscase(filepath) end

-- os.getenvs
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

-- os.host
---@return any
function os.host() end

-- os.iorun
---@param cmd any
---@param ... any
---@return any
function os.iorun(cmd, ...) end

-- os.iorunv
---@param program any
---@param argv any
---@param opt any
---@return any
function os.iorunv(program, argv, opt) end

-- os.is_arch
---@param ... any
---@return any
function os.is_arch(...) end

-- os.is_host
---@param ... any
---@return any
function os.is_host(...) end

-- os.is_subarch
---@param ... any
---@return any
function os.is_subarch(...) end

-- os.is_subhost
---@param ... any
---@return any
function os.is_subhost(...) end

-- os.isdir
---@param dirpath any
---@return any
function os.isdir(dirpath) end

-- os.isexec
---@param filepath any
---@return any
function os.isexec(filepath) end

-- os.isfile
---@param filepath any
---@return any
function os.isfile(filepath) end

-- os.islink
---@param filepath any
---@return any
function os.islink(filepath) end

-- os.isroot
---@return any
function os.isroot() end

-- os.joinenvs
---@param envs any
---@param oldenvs any
---@return any
function os.joinenvs(envs, oldenvs) end

-- os.ln
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

-- os.meminfo
---@param name any
---@return any
function os.meminfo(name) end

-- os.mkdir
---@param dir any
---@return any
function os.mkdir(dir) end

-- os.mv
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

-- os.programdir
---@return any
function os.programdir() end

-- os.programfile
---@return any
function os.programfile() end

-- os.projectdir
---@return any
function os.projectdir() end

-- os.projectfile
---@return any
function os.projectfile() end

-- os.raise
---@param msg any
---@param ... any
---@return any
function os.raise(msg, ...) end

-- os.raiselevel
---@param level any
---@param msg any
---@param ... any
---@return any
function os.raiselevel(level, msg, ...) end

-- os.readlink
---@param symlink any
---@return any
function os.readlink(symlink) end

-- os.rm
---@param filepath any
---@param opt any
---@return any
function os.rm(filepath, opt) end

-- os.rmdir
---@param dir any
---@return any
function os.rmdir(dir) end

-- os.run
---@param cmd any
---@param ... any
---@return any
function os.run(cmd, ...) end

-- os.runv
---@param program any
---@param argv any
---@param opt any
---@return any
function os.runv(program, argv, opt) end

-- os.scriptdir
---@return any
function os.scriptdir() end

-- os.setenv
---@param name any
---@param ... any
---@return any
function os.setenv(name, ...) end

-- os.setenvp
---@param name any
---@param values any
---@param sep any
---@return any
function os.setenvp(name, values, sep) end

-- os.setenvs
---@param envs any
---@return any
function os.setenvs(envs) end

-- os.shell
---@return any
function os.shell() end

-- os.sleep
---@param ms any
---@return any
function os.sleep(ms) end

-- os.subarch
---@return any
function os.subarch() end

-- os.subhost
---@return any
function os.subhost() end

-- os.term
---@return any
function os.term() end

-- os.tmpdir
---@param opt any
---@return any
function os.tmpdir(opt) end

-- os.tmpfile
---@param key any
---@param opt any
---@return any
function os.tmpfile(key, opt) end

-- os.touch
---@param filepath any
---@param opt any
---@return any
function os.touch(filepath, opt) end

-- os.trycp
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.trycp(srcpath, dstpath, opt) end

-- os.trymv
---@param srcpath any
---@param dstpath any
---@param opt any
---@return any
function os.trymv(srcpath, dstpath, opt) end

-- os.tryrm
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

-- os.workingdir
---@return any
function os.workingdir() end

-- os.xmakever
---@return any
function os.xmakever() end


-- 内建模块 path（21 个函数）
path = {}

-- path.absolute
---@param p any
---@param rootdir any
---@return any
function path.absolute(p, rootdir) end

-- path.basename
---@param p any
---@return any
function path.basename(p) end

-- path.cygwin
---@param p any
---@return any
function path.cygwin(p) end

-- path.cygwin_path
---@param p any
---@return any
function path.cygwin_path(p) end

-- path.directory
---@param p any
---@param sep any
---@return any
function path.directory(p, sep) end

-- path.envsep
---@return any
function path.envsep() end

-- path.extension
---@param p any
---@param level any
---@return any
function path.extension(p, level) end

-- path.filename
---@param p any
---@param sep any
---@return any
function path.filename(p, sep) end

-- path.instance_of
---@param p any
---@return any
function path.instance_of(p) end

-- path.islastsep
---@param p any
---@return any
function path.islastsep(p) end

-- path.join
---@param p any
---@param ... any
---@return any
function path.join(p, ...) end

-- path.joinenv
---@param paths any
---@param envsep any
---@return any
function path.joinenv(paths, envsep) end

-- path.new
---@param p any
---@param transform any
---@return any
function path.new(p, transform) end

-- path.normalize
---@param p any
---@return any
function path.normalize(p) end

-- path.pattern
---@param pattern any
---@return any
function path.pattern(pattern) end

-- path.relative
---@param p any
---@param rootdir any
---@return any
function path.relative(p, rootdir) end

-- path.sep
---@return any
function path.sep() end

-- path.split
---@param p any
---@return any
function path.split(p) end

-- path.splitenv
---@param env_path any
---@return any
function path.splitenv(env_path) end

-- path.translate
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

-- string.ltrim
---@param trimchars any
---@return any
function string.ltrim(trimchars) end

-- string.replace
---@param old any
---@param new any
---@param opt any
---@return any
function string.replace(old, new, opt) end

-- string.rtrim
---@param trimchars any
---@return any
function string.rtrim(trimchars) end

-- string.serialize
---@param object any
---@param opt any
---@return any
function string.serialize(object, opt) end

-- string.split
---@param delimiter any
---@param opt any
---@return any
function string.split(delimiter, opt) end

-- string.trim
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

-- table.contains
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

-- table.join
---@param ... any
---@return any
function table.join(...) end

-- table.join2
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

-- table.orderkeys
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

-- table.slice
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

-- table.unique
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

-- winos.registry_keys
---@param keypath any
---@return any
function winos.registry_keys(keypath) end

-- winos.registry_query
---@param keypath any
---@return any
function winos.registry_query(keypath) end

-- winos.registry_values
---@param keypath any
---@return any
function winos.registry_values(keypath) end

-- winos.short_path
---@param long_path any
---@return any
function winos.short_path(long_path) end

-- winos.version
---@return any
function winos.version() end


-- 内建模块 xmake（8 个函数）
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

