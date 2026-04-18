; ModuleID = 'src/mktemp.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.timespec = type { i64, i64 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Usage: %s [OPTION]... [TEMPLATE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [211 x i8] c"Create a temporary file or directory, safely, and print its name.\0ATEMPLATE must contain at least 3 consecutive 'X's in last component.\0AIf TEMPLATE is not specified, use tmp.XXXXXXXXXX, and --tmpdir is implied.\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"Files are created u+rw, and directories u+rwx, minus umask restrictions.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"  -d, --directory\0A         create a directory, not a file\0A\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"  -u, --dry-run\0A         do not create anything; merely print a name (unsafe)\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"  -q, --quiet\0A         suppress diagnostics about file/dir-creation failure\0A\00", align 1
@.str.9 = private unnamed_addr constant [148 x i8] c"      --suffix=SUFF\0A         append SUFF to TEMPLATE; SUFF must not contain a slash.\0A         This option is implied if TEMPLATE does not end in X\0A\00", align 1
@.str.10 = private unnamed_addr constant [310 x i8] c"  -p DIR, --tmpdir[=DIR]\0A         interpret TEMPLATE relative to DIR;\0A         if DIR is not specified, use $TMPDIR if set, else /tmp.\0A         With this option, TEMPLATE must not be an absolute name;\0A         unlike with -t, TEMPLATE may contain slashes,\0A         but mktemp creates only the final component\0A\00", align 1
@.str.11 = private unnamed_addr constant [187 x i8] c"  -t\0A         interpret TEMPLATE as a single file name component,\0A         relative to a directory: $TMPDIR, if set;\0A         else the directory specified via -p; else /tmp [deprecated]\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"dp:qtuV\00", align 1
@longopts = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 1, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Eric Blake\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"too many templates\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"with --suffix, template %s must end in X\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"invalid suffix %s, contains directory separator\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"too few X's in template %s\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"invalid template, %s, contains directory separator\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"invalid template, %s; with --tmpdir, it may not be absolute\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"failed to create directory via template %s\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"failed to create file via template %s\00", align 1
@stdout_closed = internal unnamed_addr global i1 false, align 1, !dbg !137
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !37
@.str.32 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.54 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.62 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.63 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"dry-run\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"tmpdir\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"tmp.XXXXXXXXXX\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), align 8, !dbg !138
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !143
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !148
@.str.44 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.45 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.46 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !150
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.75 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !186
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !156
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !182
@.str.1.81 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.83 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.82 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !184
@.str.4.76 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.77 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.78 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !191
@.str.102 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.103 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !197
@.str.106 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.107 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.108 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.109 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.110 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.111 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.112 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.113 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.114 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.115 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.108, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.109, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.110, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.111, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.113, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.114, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.115, i32 0, i32 0), i8* null], align 8, !dbg !233
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !259
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !275
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !305
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !312
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !277
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !314
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !265
@.str.10.118 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.116 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.119 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !282
@gen_tempname_len.tryfunc = internal unnamed_addr constant [3 x i32 (i8*, i8*)*] [i32 (i8*, i8*)* @try_file, i32 (i8*, i8*)* @try_dir, i32 (i8*, i8*)* @try_nocreate], align 8, !dbg !320
@.str.126 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 1, !dbg !328
@.str.127 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.128 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.130 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.131 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.132 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.133 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.134 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.135 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.136 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.137 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.138 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.139 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.140 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.141 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.142 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.143 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.148 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.149 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.150 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.151 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.152 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.153 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.154 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !346
@exit_failure = dso_local global i32 1, align 4, !dbg !354
@.str.169 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.167 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.168 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.172 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !360
@.str.177 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.178 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !456 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !460, metadata !DIExpression()), !dbg !461
  %3 = icmp eq i32 %0, 0, !dbg !462
  br i1 %3, label %9, label %4, !dbg !464

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !465, !tbaa !467
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !465
  %7 = load i8*, i8** @program_name, align 8, !dbg !465, !tbaa !467
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !465
  br label %63, !dbg !465

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !471
  %11 = load i8*, i8** @program_name, align 8, !dbg !471, !tbaa !467
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !471
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([211 x i8], [211 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !473
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !473, !tbaa !467
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !473
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 noundef 5) #35, !dbg !474
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !474, !tbaa !467
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !474
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !475, !tbaa !467
  %20 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* noundef %19), !dbg !475
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !476
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !476
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !477
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !477
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !478
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !478
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([148 x i8], [148 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !479
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !479
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([310 x i8], [310 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !480
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !480
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([187 x i8], [187 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #35, !dbg !481
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !481
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #35, !dbg !482
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !482
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #35, !dbg !483
  tail call fastcc void @oputs_(i8* noundef %28), !dbg !483
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !484, metadata !DIExpression()) #35, !dbg !503
  %29 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !505
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %29) #35, !dbg !505
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !489, metadata !DIExpression()) #35, !dbg !506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %29, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !506
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !498, metadata !DIExpression()) #35, !dbg !503
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !499, metadata !DIExpression()) #35, !dbg !503
  %30 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !507
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !499, metadata !DIExpression()) #35, !dbg !503
  br label %31, !dbg !508

31:                                               ; preds = %36, %9
  %32 = phi i8* [ %39, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), %9 ]
  %33 = phi %struct.infomap* [ %37, %36 ], [ %30, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !499, metadata !DIExpression()) #35, !dbg !503
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !516
  call void @llvm.dbg.value(metadata i8* %32, metadata !515, metadata !DIExpression()) #35, !dbg !516
  %34 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %32) #36, !dbg !518
  %35 = icmp eq i32 %34, 0, !dbg !519
  br i1 %35, label %41, label %36, !dbg !508

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 1, !dbg !520
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !499, metadata !DIExpression()) #35, !dbg !503
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 0, i32 0, !dbg !521
  %39 = load i8*, i8** %38, align 8, !dbg !521, !tbaa !522
  %40 = icmp eq i8* %39, null, !dbg !524
  br i1 %40, label %41, label %31, !dbg !525, !llvm.loop !526

41:                                               ; preds = %36, %31
  %42 = phi %struct.infomap* [ %33, %31 ], [ %37, %36 ]
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 1, !dbg !528
  %44 = load i8*, i8** %43, align 8, !dbg !528, !tbaa !530
  %45 = icmp eq i8* %44, null, !dbg !531
  %46 = select i1 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %44, !dbg !532
  call void @llvm.dbg.value(metadata i8* %46, metadata !498, metadata !DIExpression()) #35, !dbg !503
  tail call void @emit_bug_reporting_address() #35, !dbg !533
  %47 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !534
  call void @llvm.dbg.value(metadata i8* %47, metadata !501, metadata !DIExpression()) #35, !dbg !503
  %48 = icmp eq i8* %47, null, !dbg !535
  br i1 %48, label %56, label %49, !dbg !537

49:                                               ; preds = %41
  %50 = tail call i32 @strncmp(i8* noundef nonnull %47, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0), i64 noundef 3) #36, !dbg !538
  %51 = icmp eq i32 %50, 0, !dbg !538
  br i1 %51, label %56, label %52, !dbg !539

52:                                               ; preds = %49
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.63, i64 0, i64 0), i32 noundef 5) #35, !dbg !540
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !540, !tbaa !467
  %55 = tail call i32 @fputs_unlocked(i8* noundef %53, %struct._IO_FILE* noundef %54) #35, !dbg !540
  br label %56, !dbg !542

56:                                               ; preds = %41, %49, %52
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !543
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !543
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !503
  %57 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #35, !dbg !545
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #35, !dbg !545
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #35, !dbg !546
  %60 = icmp eq i8* %46, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !546
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !546
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %59, i8* noundef %46, i8* noundef %61) #35, !dbg !546
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %29) #35, !dbg !547
  br label %63

63:                                               ; preds = %56, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !548
  unreachable, !dbg !548
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !549 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !554 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !39 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !44, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8* %0, metadata !45, metadata !DIExpression()), !dbg !559
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !560, !tbaa !561
  %3 = icmp eq i32 %2, -1, !dbg !563
  br i1 %3, label %4, label %16, !dbg !564

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0)) #35, !dbg !565
  call void @llvm.dbg.value(metadata i8* %5, metadata !46, metadata !DIExpression()), !dbg !566
  %6 = icmp eq i8* %5, null, !dbg !567
  br i1 %6, label %14, label %7, !dbg !568

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !569, !tbaa !570
  %9 = icmp eq i8 %8, 0, !dbg !569
  br i1 %9, label %14, label %10, !dbg !571

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !509, metadata !DIExpression()) #35, !dbg !572
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !572
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)) #36, !dbg !574
  %12 = icmp eq i32 %11, 0, !dbg !575
  %13 = zext i1 %12 to i32, !dbg !571
  br label %14, !dbg !571

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !576, !tbaa !561
  br label %16, !dbg !577

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !578
  %18 = icmp eq i32 %17, 0, !dbg !578
  br i1 %18, label %22, label %19, !dbg !580

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !581, !tbaa !467
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !581
  br label %121, !dbg !583

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !49, metadata !DIExpression()), !dbg !559
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #36, !dbg !584
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !585
  call void @llvm.dbg.value(metadata i8* %24, metadata !50, metadata !DIExpression()), !dbg !559
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !586
  call void @llvm.dbg.value(metadata i8* %25, metadata !51, metadata !DIExpression()), !dbg !559
  %26 = icmp eq i8* %25, null, !dbg !587
  br i1 %26, label %53, label %27, !dbg !588

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !589
  br i1 %28, label %53, label %29, !dbg !590

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !52, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64 0, metadata !56, metadata !DIExpression()), !dbg !591
  %30 = icmp ult i8* %24, %25, !dbg !592
  br i1 %30, label %31, label %53, !dbg !593

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !559
  %33 = load i16*, i16** %32, align 8, !tbaa !467
  br label %34, !dbg !593

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !52, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64 %36, metadata !56, metadata !DIExpression()), !dbg !591
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !594
  call void @llvm.dbg.value(metadata i8* %37, metadata !52, metadata !DIExpression()), !dbg !591
  %38 = load i8, i8* %35, align 1, !dbg !594, !tbaa !570
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !594
  %41 = load i16, i16* %40, align 2, !dbg !594, !tbaa !595
  %42 = lshr i16 %41, 13, !dbg !597
  %43 = and i16 %42, 1, !dbg !597
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !598
  call void @llvm.dbg.value(metadata i64 %45, metadata !56, metadata !DIExpression()), !dbg !591
  %46 = icmp ult i8* %37, %25, !dbg !592
  %47 = icmp ult i64 %45, 2, !dbg !599
  %48 = select i1 %46, i1 %47, i1 false, !dbg !599
  br i1 %48, label %34, label %49, !dbg !593, !llvm.loop !600

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !601
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !603
  %52 = xor i1 %50, true, !dbg !603
  br label %53, !dbg !603

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !559
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !49, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8* %54, metadata !51, metadata !DIExpression()), !dbg !559
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #36, !dbg !604
  call void @llvm.dbg.value(metadata i64 %56, metadata !57, metadata !DIExpression()), !dbg !559
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !605
  call void @llvm.dbg.value(metadata i8* %57, metadata !58, metadata !DIExpression()), !dbg !559
  br label %58, !dbg !606

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !559
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !49, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8* %59, metadata !58, metadata !DIExpression()), !dbg !559
  %61 = load i8, i8* %59, align 1, !dbg !607, !tbaa !570
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !608

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !609
  %64 = load i8, i8* %63, align 1, !dbg !612, !tbaa !570
  %65 = icmp ne i8 %64, 45, !dbg !613
  %66 = select i1 %65, i1 %60, i1 false, !dbg !614
  br label %67, !dbg !614

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !49, metadata !DIExpression()), !dbg !559
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !615
  %70 = load i16*, i16** %69, align 8, !dbg !615, !tbaa !467
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !615
  %73 = load i16, i16* %72, align 2, !dbg !615, !tbaa !595
  %74 = and i16 %73, 8192, !dbg !615
  %75 = icmp eq i16 %74, 0, !dbg !615
  br i1 %75, label %89, label %76, !dbg !617

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !618
  br i1 %77, label %91, label %78, !dbg !621

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !622
  %80 = load i8, i8* %79, align 1, !dbg !622, !tbaa !570
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !622
  %83 = load i16, i16* %82, align 2, !dbg !622, !tbaa !595
  %84 = and i16 %83, 8192, !dbg !622
  %85 = icmp eq i16 %84, 0, !dbg !622
  br i1 %85, label %86, label %91, !dbg !623

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !624
  br i1 %88, label %89, label %91, !dbg !624

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !626
  call void @llvm.dbg.value(metadata i8* %90, metadata !58, metadata !DIExpression()), !dbg !559
  br label %58, !dbg !606, !llvm.loop !627

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !629
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !467
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !630
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !630
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !634
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !636
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !648
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !118, metadata !DIExpression()), !dbg !559
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i64 noundef 6) #36, !dbg !650
  %96 = icmp eq i32 %95, 0, !dbg !650
  br i1 %96, label %100, label %97, !dbg !652

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), i64 noundef 9) #36, !dbg !653
  %99 = icmp eq i32 %98, 0, !dbg !653
  br i1 %99, label %100, label %103, !dbg !654

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !655
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !655
  br label %106, !dbg !657

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !658
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !658
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660, !tbaa !467
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !660
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !467
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !661
  %111 = ptrtoint i8* %59 to i64, !dbg !662
  %112 = sub i64 %111, %92, !dbg !662
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !467
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !662
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !467
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !663
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !467
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !664
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665, !tbaa !467
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !665
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !666
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !667 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !671 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !675 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !681 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !686, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8** %1, metadata !687, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* null, metadata !689, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 0, metadata !690, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* null, metadata !693, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 0, metadata !694, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 0, metadata !695, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 0, metadata !696, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 0, metadata !697, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 0, metadata !698, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* null, metadata !701, metadata !DIExpression()), !dbg !725
  %3 = load i8*, i8** %1, align 8, !dbg !726, !tbaa !467
  tail call void @set_program_name(i8* noundef %3) #35, !dbg !727
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #35, !dbg !728
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !729
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #35, !dbg !730
  %7 = tail call i32 @atexit(void ()* noundef nonnull @maybe_close_stdout) #35, !dbg !731
  br label %8, !dbg !732

8:                                                ; preds = %37, %2
  %9 = phi i1 [ false, %2 ], [ true, %37 ]
  %10 = phi i1 [ false, %2 ], [ %17, %37 ]
  %11 = phi i1 [ false, %2 ], [ %24, %37 ]
  %12 = phi i1 [ false, %2 ], [ %30, %37 ]
  %13 = phi i8* [ null, %2 ], [ %35, %37 ]
  %14 = phi i1 [ false, %2 ], [ %38, %37 ]
  %15 = phi i8* [ null, %2 ], [ %33, %37 ]
  br label %16, !dbg !732

16:                                               ; preds = %37, %8
  %17 = phi i1 [ %10, %8 ], [ true, %37 ]
  %18 = phi i1 [ %11, %8 ], [ %24, %37 ]
  %19 = phi i1 [ %12, %8 ], [ %30, %37 ]
  %20 = phi i8* [ %13, %8 ], [ %35, %37 ]
  %21 = phi i1 [ %14, %8 ], [ %38, %37 ]
  %22 = phi i8* [ %15, %8 ], [ %33, %37 ]
  br label %23, !dbg !732

23:                                               ; preds = %37, %16
  %24 = phi i1 [ %18, %16 ], [ true, %37 ]
  %25 = phi i1 [ %19, %16 ], [ true, %37 ]
  %26 = phi i8* [ %20, %16 ], [ %35, %37 ]
  %27 = phi i1 [ %21, %16 ], [ %38, %37 ]
  %28 = phi i8* [ %22, %16 ], [ %33, %37 ]
  br label %29, !dbg !732

29:                                               ; preds = %23, %40
  %30 = phi i1 [ %25, %23 ], [ true, %40 ]
  %31 = phi i8* [ %26, %23 ], [ %35, %40 ]
  %32 = phi i1 [ %27, %23 ], [ %38, %40 ]
  %33 = phi i8* [ %28, %23 ], [ %41, %40 ]
  br label %34, !dbg !732

34:                                               ; preds = %29, %42
  %35 = phi i8* [ %31, %29 ], [ %43, %42 ]
  %36 = phi i1 [ %32, %29 ], [ %38, %42 ]
  br label %37, !dbg !732

37:                                               ; preds = %37, %34
  %38 = phi i1 [ %36, %34 ], [ true, %37 ]
  call void @llvm.dbg.value(metadata i8* %33, metadata !689, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 poison, metadata !690, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* %35, metadata !693, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 poison, metadata !694, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 poison, metadata !695, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 poison, metadata !697, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 poison, metadata !696, metadata !DIExpression()), !dbg !725
  %39 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #35, !dbg !733
  call void @llvm.dbg.value(metadata i32 %39, metadata !691, metadata !DIExpression()), !dbg !725
  switch i32 %39, label %50 [
    i32 -1, label %51
    i32 100, label %8
    i32 112, label %40
    i32 113, label %37
    i32 116, label %23
    i32 117, label %16
    i32 256, label %42
    i32 -2, label %44
    i32 86, label %45
    i32 -3, label %45
  ], !dbg !732, !llvm.loop !734

40:                                               ; preds = %37
  %41 = load i8*, i8** @optarg, align 8, !dbg !736, !tbaa !467
  call void @llvm.dbg.value(metadata i8* %41, metadata !689, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 1, metadata !694, metadata !DIExpression()), !dbg !725
  br label %29, !dbg !739, !llvm.loop !734

42:                                               ; preds = %37
  %43 = load i8*, i8** @optarg, align 8, !dbg !740, !tbaa !467
  call void @llvm.dbg.value(metadata i8* %43, metadata !693, metadata !DIExpression()), !dbg !725
  br label %34, !dbg !741, !llvm.loop !734

44:                                               ; preds = %37
  tail call void @usage(i32 noundef 0) #39, !dbg !742
  unreachable, !dbg !742

45:                                               ; preds = %37, %37
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !743, !tbaa !467
  %47 = load i8*, i8** @Version, align 8, !dbg !743, !tbaa !467
  %48 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0)) #35, !dbg !743
  %49 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #35, !dbg !743
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef %47, i8* noundef %48, i8* noundef %49, i8* noundef null) #35, !dbg !743
  tail call void @exit(i32 noundef 0) #37, !dbg !743
  unreachable, !dbg !743

50:                                               ; preds = %37
  tail call void @usage(i32 noundef 1) #39, !dbg !744
  unreachable, !dbg !744

51:                                               ; preds = %37
  %52 = load i32, i32* @optind, align 4, !dbg !745, !tbaa !561
  %53 = sub nsw i32 %0, %52, !dbg !746
  call void @llvm.dbg.value(metadata i32 %53, metadata !702, metadata !DIExpression()), !dbg !725
  %54 = icmp sgt i32 %53, 1, !dbg !747
  br i1 %54, label %55, label %57, !dbg !749

55:                                               ; preds = %51
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #35, !dbg !750
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %56) #35, !dbg !750
  tail call void @usage(i32 noundef 1) #39, !dbg !752
  unreachable, !dbg !752

57:                                               ; preds = %51
  %58 = icmp eq i32 %53, 0, !dbg !753
  br i1 %58, label %63, label %59, !dbg !755

59:                                               ; preds = %57
  %60 = sext i32 %52 to i64, !dbg !756
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60, !dbg !756
  %62 = load i8*, i8** %61, align 8, !dbg !756, !tbaa !467
  call void @llvm.dbg.value(metadata i8* %62, metadata !692, metadata !DIExpression()), !dbg !725
  br label %63

63:                                               ; preds = %57, %59
  %64 = phi i1 [ %30, %59 ], [ true, %57 ]
  %65 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i64 0, i64 0), %57 ], !dbg !758
  call void @llvm.dbg.value(metadata i8* %65, metadata !692, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8 poison, metadata !694, metadata !DIExpression()), !dbg !725
  %66 = icmp eq i8* %35, null, !dbg !759
  br i1 %66, label %84, label %67, !dbg !760

67:                                               ; preds = %63
  %68 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %65) #36, !dbg !761
  call void @llvm.dbg.value(metadata i64 %68, metadata !703, metadata !DIExpression()), !dbg !762
  %69 = icmp eq i64 %68, 0, !dbg !763
  br i1 %69, label %75, label %70, !dbg !765

70:                                               ; preds = %67
  %71 = add i64 %68, -1, !dbg !766
  %72 = getelementptr inbounds i8, i8* %65, i64 %71, !dbg !767
  %73 = load i8, i8* %72, align 1, !dbg !767, !tbaa !570
  %74 = icmp eq i8 %73, 88, !dbg !768
  br i1 %74, label %78, label %75, !dbg !769

75:                                               ; preds = %70, %67
  %76 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #35, !dbg !770
  %77 = tail call i8* @quote(i8* noundef %65) #35, !dbg !770
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %76, i8* noundef %77) #35, !dbg !770
  unreachable, !dbg !770

78:                                               ; preds = %70
  %79 = tail call i64 @strlen(i8* noundef nonnull %35) #36, !dbg !772
  call void @llvm.dbg.value(metadata i64 %79, metadata !700, metadata !DIExpression()), !dbg !725
  %80 = add i64 %79, 1, !dbg !773
  %81 = add i64 %80, %68, !dbg !774
  %82 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %81) #40, !dbg !775
  call void @llvm.dbg.value(metadata i8* %82, metadata !701, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* %82, metadata !776, metadata !DIExpression()) #35, !dbg !785
  call void @llvm.dbg.value(metadata i8* %65, metadata !783, metadata !DIExpression()) #35, !dbg !785
  call void @llvm.dbg.value(metadata i64 %68, metadata !784, metadata !DIExpression()) #35, !dbg !785
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %82, i8* noundef nonnull align 1 %65, i64 noundef %68, i1 noundef false) #35, !dbg !787
  %83 = getelementptr inbounds i8, i8* %82, i64 %68, !dbg !788
  call void @llvm.dbg.value(metadata i8* %83, metadata !776, metadata !DIExpression()) #35, !dbg !789
  call void @llvm.dbg.value(metadata i8* %35, metadata !783, metadata !DIExpression()) #35, !dbg !789
  call void @llvm.dbg.value(metadata i64 %80, metadata !784, metadata !DIExpression()) #35, !dbg !789
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %83, i8* noundef nonnull align 1 %35, i64 noundef %80, i1 noundef false) #35, !dbg !791
  call void @llvm.dbg.value(metadata i8* %82, metadata !692, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* %83, metadata !693, metadata !DIExpression()), !dbg !725
  br label %96, !dbg !792

84:                                               ; preds = %63
  %85 = tail call noalias nonnull i8* @xstrdup(i8* noundef %65) #35, !dbg !793
  call void @llvm.dbg.value(metadata i8* %85, metadata !692, metadata !DIExpression()), !dbg !725
  %86 = tail call i8* @strrchr(i8* noundef nonnull %85, i32 noundef 88) #36, !dbg !795
  call void @llvm.dbg.value(metadata i8* %86, metadata !693, metadata !DIExpression()), !dbg !725
  %87 = icmp eq i8* %86, null, !dbg !796
  br i1 %87, label %88, label %91, !dbg !798

88:                                               ; preds = %84
  %89 = tail call i64 @strlen(i8* nonnull %85), !dbg !799
  %90 = getelementptr i8, i8* %85, i64 %89, !dbg !799
  call void @llvm.dbg.value(metadata i8* %90, metadata !693, metadata !DIExpression()), !dbg !725
  br label %93, !dbg !800

91:                                               ; preds = %84
  %92 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !801
  call void @llvm.dbg.value(metadata i8* %92, metadata !693, metadata !DIExpression()), !dbg !725
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i8* [ %92, %91 ], [ %90, %88 ], !dbg !802
  call void @llvm.dbg.value(metadata i8* %94, metadata !693, metadata !DIExpression()), !dbg !725
  %95 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %94) #36, !dbg !803
  call void @llvm.dbg.value(metadata i64 %95, metadata !700, metadata !DIExpression()), !dbg !725
  br label %96

96:                                               ; preds = %93, %78
  %97 = phi i64 [ %79, %78 ], [ %95, %93 ], !dbg !804
  %98 = phi i8* [ %82, %78 ], [ null, %93 ], !dbg !725
  %99 = phi i8* [ %83, %78 ], [ %94, %93 ], !dbg !804
  %100 = phi i8* [ %82, %78 ], [ %85, %93 ], !dbg !804
  call void @llvm.dbg.value(metadata i8* %100, metadata !692, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* %99, metadata !693, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* %98, metadata !701, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %97, metadata !700, metadata !DIExpression()), !dbg !725
  %101 = icmp eq i64 %97, 0, !dbg !805
  br i1 %101, label %108, label %102, !dbg !807

102:                                              ; preds = %96
  %103 = tail call i8* @last_component(i8* noundef %99) #36, !dbg !808
  %104 = icmp eq i8* %103, %99, !dbg !809
  br i1 %104, label %108, label %105, !dbg !810

105:                                              ; preds = %102
  %106 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #35, !dbg !811
  %107 = tail call i8* @quote(i8* noundef %99) #35, !dbg !811
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %106, i8* noundef %107) #35, !dbg !811
  unreachable, !dbg !811

108:                                              ; preds = %102, %96
  %109 = ptrtoint i8* %99 to i64, !dbg !813
  %110 = ptrtoint i8* %100 to i64, !dbg !813
  %111 = sub i64 %109, %110, !dbg !813
  call void @llvm.dbg.value(metadata i8* %100, metadata !814, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %111, metadata !819, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !820, metadata !DIExpression()), !dbg !821
  %112 = icmp eq i64 %111, 0, !dbg !823
  br i1 %112, label %126, label %113, !dbg !826

113:                                              ; preds = %108, %120
  %114 = phi i64 [ %121, %120 ], [ 0, %108 ]
  %115 = phi i64 [ %116, %120 ], [ %111, %108 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !820, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %115, metadata !819, metadata !DIExpression()), !dbg !821
  %116 = add i64 %115, -1, !dbg !827
  %117 = getelementptr inbounds i8, i8* %100, i64 %116, !dbg !828
  %118 = load i8, i8* %117, align 1, !dbg !828, !tbaa !570
  %119 = icmp eq i8 %118, 88, !dbg !829
  br i1 %119, label %120, label %123, !dbg !830

120:                                              ; preds = %113
  %121 = add nuw i64 %114, 1, !dbg !831
  call void @llvm.dbg.value(metadata i64 %121, metadata !820, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %116, metadata !819, metadata !DIExpression()), !dbg !821
  %122 = icmp eq i64 %116, 0, !dbg !823
  br i1 %122, label %123, label %113, !dbg !826, !llvm.loop !832

123:                                              ; preds = %113, %120
  %124 = phi i64 [ %111, %120 ], [ %114, %113 ], !dbg !821
  call void @llvm.dbg.value(metadata i64 %124, metadata !699, metadata !DIExpression()), !dbg !725
  %125 = icmp ult i64 %124, 3, !dbg !834
  br i1 %125, label %126, label %133, !dbg !836

126:                                              ; preds = %108, %123
  %127 = icmp eq i8* %100, %98, !dbg !837
  br i1 %127, label %128, label %130, !dbg !840

128:                                              ; preds = %126
  %129 = getelementptr inbounds i8, i8* %98, i64 %111, !dbg !841
  store i8 0, i8* %129, align 1, !dbg !842, !tbaa !570
  br label %130, !dbg !841

130:                                              ; preds = %128, %126
  %131 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 noundef 5) #35, !dbg !843
  %132 = tail call i8* @quote(i8* noundef nonnull %100) #35, !dbg !843
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %131, i8* noundef %132) #35, !dbg !843
  unreachable, !dbg !843

133:                                              ; preds = %123
  br i1 %64, label %134, label %176, !dbg !844

134:                                              ; preds = %133
  br i1 %24, label %135, label %154, !dbg !845

135:                                              ; preds = %134
  %136 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)) #35, !dbg !846
  call void @llvm.dbg.value(metadata i8* %136, metadata !706, metadata !DIExpression()), !dbg !847
  %137 = icmp eq i8* %136, null, !dbg !848
  br i1 %137, label %141, label %138, !dbg !850

138:                                              ; preds = %135
  %139 = load i8, i8* %136, align 1, !dbg !851, !tbaa !570
  %140 = icmp eq i8 %139, 0, !dbg !851
  br i1 %140, label %141, label %147, !dbg !852

141:                                              ; preds = %138, %135
  %142 = icmp eq i8* %33, null, !dbg !853
  br i1 %142, label %146, label %143, !dbg !855

143:                                              ; preds = %141
  %144 = load i8, i8* %33, align 1, !dbg !856, !tbaa !570
  %145 = icmp eq i8 %144, 0, !dbg !856
  br i1 %145, label %146, label %147, !dbg !857

146:                                              ; preds = %143, %141
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), metadata !688, metadata !DIExpression()), !dbg !725
  br label %147

147:                                              ; preds = %143, %138, %146
  %148 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %146 ], [ %136, %138 ], [ %33, %143 ], !dbg !858
  call void @llvm.dbg.value(metadata i8* %148, metadata !688, metadata !DIExpression()), !dbg !725
  %149 = tail call i8* @last_component(i8* noundef nonnull %100) #36, !dbg !859
  %150 = icmp eq i8* %149, %100, !dbg !861
  br i1 %150, label %173, label %151, !dbg !862

151:                                              ; preds = %147
  %152 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #35, !dbg !863
  %153 = tail call i8* @quote(i8* noundef nonnull %100) #35, !dbg !863
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %152, i8* noundef %153) #35, !dbg !863
  unreachable, !dbg !863

154:                                              ; preds = %134
  %155 = icmp eq i8* %33, null, !dbg !864
  br i1 %155, label %159, label %156, !dbg !865

156:                                              ; preds = %154
  %157 = load i8, i8* %33, align 1, !dbg !866, !tbaa !570
  %158 = icmp eq i8 %157, 0, !dbg !866
  br i1 %158, label %159, label %166, !dbg !867

159:                                              ; preds = %156, %154
  %160 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)) #35, !dbg !868
  call void @llvm.dbg.value(metadata i8* %160, metadata !711, metadata !DIExpression()), !dbg !869
  %161 = icmp eq i8* %160, null, !dbg !870
  br i1 %161, label %166, label %162, !dbg !871

162:                                              ; preds = %159
  %163 = load i8, i8* %160, align 1, !dbg !872, !tbaa !570
  %164 = icmp eq i8 %163, 0, !dbg !872
  %165 = select i1 %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* %160, !dbg !870
  br label %166, !dbg !870

166:                                              ; preds = %162, %159, %156
  %167 = phi i8* [ %33, %156 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %159 ], [ %165, %162 ], !dbg !873
  call void @llvm.dbg.value(metadata i8* %167, metadata !688, metadata !DIExpression()), !dbg !725
  %168 = load i8, i8* %100, align 1, !dbg !874, !tbaa !570
  %169 = icmp eq i8 %168, 47, !dbg !874
  br i1 %169, label %170, label %173, !dbg !876

170:                                              ; preds = %166
  %171 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #35, !dbg !877
  %172 = tail call i8* @quote(i8* noundef nonnull %100) #35, !dbg !877
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %171, i8* noundef %172) #35, !dbg !877
  unreachable, !dbg !877

173:                                              ; preds = %147, %166
  %174 = phi i8* [ %167, %166 ], [ %148, %147 ], !dbg !878
  call void @llvm.dbg.value(metadata i8* %174, metadata !688, metadata !DIExpression()), !dbg !725
  %175 = tail call noalias nonnull i8* @file_name_concat(i8* noundef %174, i8* noundef nonnull %100, i8** noundef null) #35, !dbg !879
  call void @llvm.dbg.value(metadata i8* %175, metadata !701, metadata !DIExpression()), !dbg !725
  tail call void @free(i8* noundef nonnull %100) #35, !dbg !880
  call void @llvm.dbg.value(metadata i8* %175, metadata !692, metadata !DIExpression()), !dbg !725
  br label %176, !dbg !881

176:                                              ; preds = %173, %133
  %177 = phi i8* [ %175, %173 ], [ %100, %133 ], !dbg !725
  call void @llvm.dbg.value(metadata i8* %177, metadata !692, metadata !DIExpression()), !dbg !725
  %178 = tail call noalias nonnull i8* @xstrdup(i8* noundef %177) #35, !dbg !882
  call void @llvm.dbg.value(metadata i8* %178, metadata !701, metadata !DIExpression()), !dbg !725
  %179 = trunc i64 %97 to i32, !dbg !883
  br i1 %9, label %180, label %190, !dbg !884

180:                                              ; preds = %176
  call void @llvm.dbg.value(metadata i8* %178, metadata !885, metadata !DIExpression()) #35, !dbg !893
  call void @llvm.dbg.value(metadata i64 %97, metadata !890, metadata !DIExpression()) #35, !dbg !893
  call void @llvm.dbg.value(metadata i64 %124, metadata !891, metadata !DIExpression()) #35, !dbg !893
  call void @llvm.dbg.value(metadata i1 %17, metadata !892, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !893
  %181 = select i1 %17, i32 2, i32 1, !dbg !895
  %182 = tail call i32 @gen_tempname_len(i8* noundef nonnull %178, i32 noundef %179, i32 noundef 0, i32 noundef %181, i64 noundef %124) #35, !dbg !896
  call void @llvm.dbg.value(metadata i32 %182, metadata !715, metadata !DIExpression()), !dbg !897
  %183 = icmp eq i32 %182, 0, !dbg !898
  %184 = select i1 %183, i1 true, i1 %38, !dbg !900
  br i1 %184, label %207, label %185, !dbg !900

185:                                              ; preds = %180
  %186 = tail call i32* @__errno_location() #38, !dbg !901
  %187 = load i32, i32* %186, align 4, !dbg !901, !tbaa !561
  %188 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0), i32 noundef 5) #35, !dbg !901
  %189 = tail call i8* @quote(i8* noundef %177) #35, !dbg !901
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %187, i8* noundef %188, i8* noundef %189) #35, !dbg !901
  br label %223, !dbg !901

190:                                              ; preds = %176
  call void @llvm.dbg.value(metadata i8* %178, metadata !904, metadata !DIExpression()) #35, !dbg !910
  call void @llvm.dbg.value(metadata i64 %97, metadata !907, metadata !DIExpression()) #35, !dbg !910
  call void @llvm.dbg.value(metadata i64 %124, metadata !908, metadata !DIExpression()) #35, !dbg !910
  call void @llvm.dbg.value(metadata i1 %17, metadata !909, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !910
  %191 = select i1 %17, i32 2, i32 0, !dbg !912
  %192 = tail call i32 @gen_tempname_len(i8* noundef nonnull %178, i32 noundef %179, i32 noundef 0, i32 noundef %191, i64 noundef %124) #35, !dbg !913
  call void @llvm.dbg.value(metadata i32 %192, metadata !718, metadata !DIExpression()), !dbg !914
  %193 = icmp slt i32 %192, 0, !dbg !915
  br i1 %193, label %201, label %194, !dbg !917

194:                                              ; preds = %190
  br i1 %17, label %195, label %197, !dbg !918

195:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i32 undef, metadata !698, metadata !DIExpression()), !dbg !725
  %196 = tail call i32 @puts(i8* noundef nonnull %178), !dbg !919
  br label %223, !dbg !920

197:                                              ; preds = %194
  %198 = tail call i32 @close(i32 noundef %192) #35, !dbg !921
  %199 = icmp eq i32 %198, 0, !dbg !922
  %200 = select i1 %199, i1 true, i1 %38, !dbg !923
  br i1 %200, label %208, label %202, !dbg !923

201:                                              ; preds = %190
  br i1 %38, label %223, label %202, !dbg !924

202:                                              ; preds = %197, %201
  %203 = tail call i32* @__errno_location() #38, !dbg !926
  %204 = load i32, i32* %203, align 4, !dbg !926, !tbaa !561
  %205 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i32 noundef 5) #35, !dbg !926
  %206 = tail call i8* @quote(i8* noundef %177) #35, !dbg !926
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %204, i8* noundef %205, i8* noundef %206) #35, !dbg !926
  br label %223, !dbg !926

207:                                              ; preds = %180
  call void @llvm.dbg.value(metadata i32 undef, metadata !698, metadata !DIExpression()), !dbg !725
  br i1 %183, label %211, label %223, !dbg !928

208:                                              ; preds = %197
  call void @llvm.dbg.value(metadata i32 undef, metadata !698, metadata !DIExpression()), !dbg !725
  br i1 %199, label %209, label %223, !dbg !928

209:                                              ; preds = %208
  %210 = tail call i32 @puts(i8* noundef nonnull %178), !dbg !919
  br label %213, !dbg !920

211:                                              ; preds = %207
  %212 = tail call i32 @puts(i8* noundef nonnull %178), !dbg !919
  br i1 %17, label %223, label %213, !dbg !920

213:                                              ; preds = %209, %211
  store i1 true, i1* @stdout_closed, align 1, !dbg !929
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !930, !tbaa !467
  %215 = tail call i32 @close_stream(%struct._IO_FILE* noundef %214) #35, !dbg !931
  %216 = icmp eq i32 %215, 0, !dbg !932
  br i1 %216, label %223, label %217, !dbg !933

217:                                              ; preds = %213
  %218 = tail call i32* @__errno_location() #38, !dbg !934
  %219 = load i32, i32* %218, align 4, !dbg !934, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %219, metadata !720, metadata !DIExpression()), !dbg !935
  %220 = tail call i32 @remove(i8* noundef nonnull %178) #35, !dbg !936
  br i1 %38, label %223, label %221, !dbg !937

221:                                              ; preds = %217
  %222 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 noundef 5) #35, !dbg !938
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %219, i8* noundef %222) #35, !dbg !938
  br label %223, !dbg !938

223:                                              ; preds = %201, %202, %185, %208, %195, %217, %221, %211, %213, %207
  %224 = phi i32 [ 0, %211 ], [ 0, %213 ], [ 1, %207 ], [ 1, %221 ], [ 1, %217 ], [ 0, %195 ], [ 1, %208 ], [ 1, %185 ], [ 1, %202 ], [ 1, %201 ], !dbg !725
  call void @llvm.dbg.value(metadata i32 %224, metadata !698, metadata !DIExpression()), !dbg !725
  ret i32 %224, !dbg !940
}

; Function Attrs: nounwind
declare !dbg !941 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !944 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @maybe_close_stdout() #12 !dbg !945 {
  %1 = load i1, i1* @stdout_closed, align 1, !dbg !946
  br i1 %1, label %3, label %2, !dbg !948

2:                                                ; preds = %0
  tail call void @close_stdout() #35, !dbg !949
  br label %8, !dbg !949

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !950, !tbaa !467
  %5 = tail call i32 @close_stream(%struct._IO_FILE* noundef %4) #35, !dbg !952
  %6 = icmp eq i32 %5, 0, !dbg !953
  br i1 %6, label %8, label %7, !dbg !954

7:                                                ; preds = %3
  tail call void @_exit(i32 noundef 1) #37, !dbg !955
  unreachable, !dbg !955

8:                                                ; preds = %3, %2
  ret void, !dbg !956
}

; Function Attrs: nounwind
declare !dbg !957 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !960 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !966 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !969 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !973 noundef i32 @remove(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef readonly %0) local_unnamed_addr #15 !dbg !974 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !976, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %0, metadata !977, metadata !DIExpression()), !dbg !981
  br label %2, !dbg !982

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !981
  call void @llvm.dbg.value(metadata i8* %3, metadata !977, metadata !DIExpression()), !dbg !981
  %4 = load i8, i8* %3, align 1, !dbg !983, !tbaa !570
  %5 = icmp eq i8 %4, 47, !dbg !983
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !984
  call void @llvm.dbg.value(metadata i8* %6, metadata !977, metadata !DIExpression()), !dbg !981
  br i1 %5, label %2, label %7, !dbg !982, !llvm.loop !985

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !986
  %9 = phi i8* [ %16, %15 ], [ %3, %2 ], !dbg !988
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi i8* [ %18, %15 ], [ %3, %2 ], !dbg !989
  call void @llvm.dbg.value(metadata i8* %11, metadata !979, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8 poison, metadata !978, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %9, metadata !977, metadata !DIExpression()), !dbg !981
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !990

12:                                               ; preds = %7
  ret i8* %9, !dbg !991

13:                                               ; preds = %7
  %14 = select i1 %10, i8* %11, i8* %9, !dbg !992
  br label %15, !dbg !992

15:                                               ; preds = %13, %7
  %16 = phi i8* [ %9, %7 ], [ %14, %13 ], !dbg !981
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !978, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %16, metadata !977, metadata !DIExpression()), !dbg !981
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !995
  call void @llvm.dbg.value(metadata i8* %18, metadata !979, metadata !DIExpression()), !dbg !989
  %19 = load i8, i8* %18, align 1, !dbg !986, !tbaa !570
  br label %7, !dbg !996, !llvm.loop !997
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @base_len(i8* nocapture noundef readonly %0) local_unnamed_addr #16 !dbg !999 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1003, metadata !DIExpression()), !dbg !1006
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !1007
  call void @llvm.dbg.value(metadata i64 %2, metadata !1004, metadata !DIExpression()), !dbg !1006
  %3 = icmp ne i64 %2, 0, !dbg !1009
  %4 = zext i1 %3 to i64, !dbg !1009
  br label %5, !dbg !1009

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !1010
  call void @llvm.dbg.value(metadata i64 %6, metadata !1004, metadata !DIExpression()), !dbg !1006
  %7 = icmp ugt i64 %6, 1, !dbg !1011
  br i1 %7, label %8, label %13, !dbg !1013

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !1014
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1014
  %11 = load i8, i8* %10, align 1, !dbg !1014, !tbaa !570
  %12 = icmp eq i8 %11, 47, !dbg !1014
  br i1 %12, label %5, label %13, !dbg !1015, !llvm.loop !1016

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !1010
  call void @llvm.dbg.value(metadata i64 0, metadata !1005, metadata !DIExpression()), !dbg !1006
  ret i64 %14, !dbg !1018
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !1019 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1057, metadata !DIExpression()), !dbg !1062
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !1063
  call void @llvm.dbg.value(metadata i1 undef, metadata !1058, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1062
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1064, metadata !DIExpression()), !dbg !1068
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1070
  %4 = load i32, i32* %3, align 8, !dbg !1070, !tbaa !1071
  %5 = and i32 %4, 32, !dbg !1074
  %6 = icmp eq i32 %5, 0, !dbg !1074
  call void @llvm.dbg.value(metadata i1 %6, metadata !1060, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1062
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !1075
  %8 = icmp eq i32 %7, 0, !dbg !1076
  call void @llvm.dbg.value(metadata i1 %8, metadata !1061, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1062
  br i1 %6, label %9, label %19, !dbg !1077

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !1079
  call void @llvm.dbg.value(metadata i1 %10, metadata !1058, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1062
  %11 = select i1 %8, i1 true, i1 %10, !dbg !1080
  %12 = xor i1 %8, true, !dbg !1080
  %13 = sext i1 %12 to i32, !dbg !1080
  br i1 %11, label %22, label %14, !dbg !1080

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !1081
  %16 = load i32, i32* %15, align 4, !dbg !1081, !tbaa !561
  %17 = icmp ne i32 %16, 9, !dbg !1082
  %18 = sext i1 %17 to i32, !dbg !1083
  br label %22, !dbg !1083

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !1084

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !1086
  store i32 0, i32* %21, align 4, !dbg !1088, !tbaa !561
  br label %22, !dbg !1086

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !1062
  ret i32 %23, !dbg !1089
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #17 !dbg !1090 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1092, metadata !DIExpression()), !dbg !1093
  store i8* %0, i8** @file_name, align 8, !dbg !1094, !tbaa !467
  ret void, !dbg !1095
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #17 !dbg !1096 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1100, metadata !DIExpression()), !dbg !1101
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1102, !tbaa !1103
  ret void, !dbg !1105
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() local_unnamed_addr #12 !dbg !1106 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1111, !tbaa !467
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1112
  %3 = icmp eq i32 %2, 0, !dbg !1113
  br i1 %3, label %22, label %4, !dbg !1114

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1115, !tbaa !1103, !range !1116
  %6 = icmp eq i8 %5, 0, !dbg !1115
  br i1 %6, label %11, label %7, !dbg !1117

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1118
  %9 = load i32, i32* %8, align 4, !dbg !1118, !tbaa !561
  %10 = icmp eq i32 %9, 32, !dbg !1119
  br i1 %10, label %22, label %11, !dbg !1120

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.45, i64 0, i64 0), i32 noundef 5) #35, !dbg !1121
  call void @llvm.dbg.value(metadata i8* %12, metadata !1108, metadata !DIExpression()), !dbg !1122
  %13 = load i8*, i8** @file_name, align 8, !dbg !1123, !tbaa !467
  %14 = icmp eq i8* %13, null, !dbg !1123
  %15 = tail call i32* @__errno_location() #38, !dbg !1125
  %16 = load i32, i32* %15, align 4, !dbg !1125, !tbaa !561
  br i1 %14, label %19, label %17, !dbg !1126

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1127
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.46, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1127
  br label %20, !dbg !1127

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.47, i64 0, i64 0), i8* noundef %12) #35, !dbg !1128
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1129, !tbaa !561
  tail call void @_exit(i32 noundef %21) #37, !dbg !1130
  unreachable, !dbg !1130

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1131, !tbaa !467
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1133
  %25 = icmp eq i32 %24, 0, !dbg !1134
  br i1 %25, label %28, label %26, !dbg !1135

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1136, !tbaa !561
  tail call void @_exit(i32 noundef %27) #37, !dbg !1137
  unreachable, !dbg !1137

28:                                               ; preds = %22
  ret void, !dbg !1138
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1139 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1143, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 %1, metadata !1144, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i8* %2, metadata !1145, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1146, metadata !DIExpression()), !dbg !1148
  tail call fastcc void @flush_stdout(), !dbg !1149
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1150, !tbaa !467
  %7 = icmp eq void ()* %6, null, !dbg !1150
  br i1 %7, label %9, label %8, !dbg !1152

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1153
  br label %13, !dbg !1153

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1154, !tbaa !467
  %11 = tail call i8* @getprogname() #36, !dbg !1154
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* noundef %11) #35, !dbg !1154
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1156
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1156
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1156
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1156, !tbaa.struct !1157
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1156
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1156
  ret void, !dbg !1158
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1159 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1161, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 1, metadata !1163, metadata !DIExpression()) #35, !dbg !1166
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1169
  %2 = icmp slt i32 %1, 0, !dbg !1170
  br i1 %2, label %6, label %3, !dbg !1171

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1172, !tbaa !467
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1172
  br label %6, !dbg !1172

6:                                                ; preds = %3, %0
  ret void, !dbg !1173
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1174 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1176, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i32 %1, metadata !1177, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %2, metadata !1178, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1179, metadata !DIExpression()), !dbg !1181
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1182, !tbaa !467
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1183
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1184, metadata !DIExpression()) #35, !dbg !1227
  call void @llvm.dbg.value(metadata i8* %2, metadata !1225, metadata !DIExpression()) #35, !dbg !1227
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1229
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1229, !noalias !1230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1229
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1229
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1229, !noalias !1230
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1234, !tbaa !561
  %12 = add i32 %11, 1, !dbg !1234
  store i32 %12, i32* @error_message_count, align 4, !dbg !1234, !tbaa !561
  %13 = icmp eq i32 %1, 0, !dbg !1235
  br i1 %13, label %24, label %14, !dbg !1237

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1238, metadata !DIExpression()) #35, !dbg !1246
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1248
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1248
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1242, metadata !DIExpression()) #35, !dbg !1249
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1250
  call void @llvm.dbg.value(metadata i8* %16, metadata !1241, metadata !DIExpression()) #35, !dbg !1246
  %17 = icmp eq i8* %16, null, !dbg !1251
  br i1 %17, label %18, label %20, !dbg !1253

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.77, i64 0, i64 0), i32 noundef 5) #35, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %19, metadata !1241, metadata !DIExpression()) #35, !dbg !1246
  br label %20, !dbg !1255

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1246
  call void @llvm.dbg.value(metadata i8* %21, metadata !1241, metadata !DIExpression()) #35, !dbg !1246
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1256, !tbaa !467
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.78, i64 0, i64 0), i8* noundef %21) #35, !dbg !1256
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1257
  br label %24, !dbg !1258

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1259, !tbaa !467
  call void @llvm.dbg.value(metadata i32 10, metadata !1260, metadata !DIExpression()) #35, !dbg !1266
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1265, metadata !DIExpression()) #35, !dbg !1266
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1268
  %27 = load i8*, i8** %26, align 8, !dbg !1268, !tbaa !1269
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1268
  %29 = load i8*, i8** %28, align 8, !dbg !1268, !tbaa !1270
  %30 = icmp ult i8* %27, %29, !dbg !1268
  br i1 %30, label %33, label %31, !dbg !1268, !prof !1271

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1268
  br label %35, !dbg !1268

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1268
  store i8* %34, i8** %26, align 8, !dbg !1268, !tbaa !1269
  store i8 10, i8* %27, align 1, !dbg !1268, !tbaa !570
  br label %35, !dbg !1268

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1272, !tbaa !467
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1272
  %38 = icmp eq i32 %0, 0, !dbg !1273
  br i1 %38, label %40, label %39, !dbg !1275

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1276
  unreachable, !dbg !1276

40:                                               ; preds = %35
  ret void, !dbg !1277
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1278 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1282 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1285 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1289 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1293, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i32 %1, metadata !1294, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %2, metadata !1295, metadata !DIExpression()), !dbg !1297
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1298
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1298
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1296, metadata !DIExpression()), !dbg !1299
  call void @llvm.va_start(i8* nonnull %6), !dbg !1300
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1301
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1301, !tbaa.struct !1157
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #41, !dbg !1301
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1301
  call void @llvm.va_end(i8* nonnull %6), !dbg !1302
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1303
  ret void, !dbg !1303
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #19

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !158 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !176, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 %1, metadata !177, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %2, metadata !178, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 %3, metadata !179, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i8* %4, metadata !180, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !181, metadata !DIExpression()), !dbg !1305
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1306, !tbaa !561
  %9 = icmp eq i32 %8, 0, !dbg !1306
  br i1 %9, label %24, label %10, !dbg !1308

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1309, !tbaa !561
  %12 = icmp eq i32 %11, %3, !dbg !1312
  br i1 %12, label %13, label %23, !dbg !1313

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1314, !tbaa !467
  %15 = icmp eq i8* %14, %2, !dbg !1315
  br i1 %15, label %39, label %16, !dbg !1316

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1317
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1318
  br i1 %19, label %20, label %23, !dbg !1318

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1319
  %22 = icmp eq i32 %21, 0, !dbg !1320
  br i1 %22, label %39, label %23, !dbg !1321

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1322, !tbaa !467
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1323, !tbaa !561
  br label %24, !dbg !1324

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1325
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1326, !tbaa !467
  %26 = icmp eq void ()* %25, null, !dbg !1326
  br i1 %26, label %28, label %27, !dbg !1328

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1329
  br label %32, !dbg !1329

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1330, !tbaa !467
  %30 = tail call i8* @getprogname() #36, !dbg !1330
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.81, i64 0, i64 0), i8* noundef %30) #35, !dbg !1330
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1332, !tbaa !467
  %34 = icmp eq i8* %2, null, !dbg !1332
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.82, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.83, i64 0, i64 0), !dbg !1332
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1332
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1333
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1333
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1333, !tbaa.struct !1157
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1333
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1333
  br label %39, !dbg !1334

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1334
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1335 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1339, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i32 %1, metadata !1340, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i8* %2, metadata !1341, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i32 %3, metadata !1342, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i8* %4, metadata !1343, metadata !DIExpression()), !dbg !1345
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1346
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1346
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1344, metadata !DIExpression()), !dbg !1347
  call void @llvm.va_start(i8* nonnull %8), !dbg !1348
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1349
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1349, !tbaa.struct !1157
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #41, !dbg !1349
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1349
  call void @llvm.va_end(i8* nonnull %8), !dbg !1350
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1351
  ret void, !dbg !1351
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1352 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1390, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i32 0, metadata !1391, metadata !DIExpression()), !dbg !1394
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1395
  call void @llvm.dbg.value(metadata i32 %2, metadata !1392, metadata !DIExpression()), !dbg !1394
  %3 = icmp slt i32 %2, 0, !dbg !1396
  br i1 %3, label %4, label %6, !dbg !1398

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1399
  br label %24, !dbg !1400

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1401
  %8 = icmp eq i32 %7, 0, !dbg !1401
  br i1 %8, label %13, label %9, !dbg !1403

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1404
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !1405
  %12 = icmp eq i64 %11, -1, !dbg !1406
  br i1 %12, label %16, label %13, !dbg !1407

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1408
  %15 = icmp eq i32 %14, 0, !dbg !1408
  br i1 %15, label %16, label %18, !dbg !1409

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !1391, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i32 0, metadata !1393, metadata !DIExpression()), !dbg !1394
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1410
  call void @llvm.dbg.value(metadata i32 %21, metadata !1393, metadata !DIExpression()), !dbg !1394
  br label %24, !dbg !1411

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !1412
  %20 = load i32, i32* %19, align 4, !dbg !1412, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %20, metadata !1391, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i32 0, metadata !1393, metadata !DIExpression()), !dbg !1394
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1410
  call void @llvm.dbg.value(metadata i32 %21, metadata !1393, metadata !DIExpression()), !dbg !1394
  %22 = icmp eq i32 %20, 0, !dbg !1413
  br i1 %22, label %24, label %23, !dbg !1411

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !1415, !tbaa !561
  call void @llvm.dbg.value(metadata i32 -1, metadata !1393, metadata !DIExpression()), !dbg !1394
  br label %24, !dbg !1417

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1394
  ret i32 %25, !dbg !1418
}

; Function Attrs: nofree nounwind
declare !dbg !1419 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1420 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1421 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !1424 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1462, metadata !DIExpression()), !dbg !1463
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1464
  br i1 %2, label %6, label %3, !dbg !1466

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1467
  %5 = icmp eq i32 %4, 0, !dbg !1467
  br i1 %5, label %6, label %8, !dbg !1468

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !1469
  br label %17, !dbg !1470

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1471, metadata !DIExpression()) #35, !dbg !1476
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1478
  %10 = load i32, i32* %9, align 8, !dbg !1478, !tbaa !1071
  %11 = and i32 %10, 256, !dbg !1480
  %12 = icmp eq i32 %11, 0, !dbg !1480
  br i1 %12, label %15, label %13, !dbg !1481

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !1482
  br label %15, !dbg !1482

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !1483
  br label %17, !dbg !1484

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !1463
  ret i32 %18, !dbg !1485
}

; Function Attrs: nofree nounwind
declare !dbg !1486 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @file_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) local_unnamed_addr #12 !dbg !1487 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1491, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i8* %1, metadata !1492, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i8** %2, metadata !1493, metadata !DIExpression()), !dbg !1495
  %4 = tail call noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #35, !dbg !1496
  call void @llvm.dbg.value(metadata i8* %4, metadata !1494, metadata !DIExpression()), !dbg !1495
  %5 = icmp eq i8* %4, null, !dbg !1497
  br i1 %5, label %6, label %7, !dbg !1499

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !1500
  unreachable, !dbg !1500

7:                                                ; preds = %3
  ret i8* %4, !dbg !1501
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef writeonly %2) local_unnamed_addr #20 !dbg !1502 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1504, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8* %1, metadata !1505, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8** %2, metadata !1506, metadata !DIExpression()), !dbg !1515
  %4 = tail call i8* @last_component(i8* noundef %0) #36, !dbg !1516
  call void @llvm.dbg.value(metadata i8* %4, metadata !1507, metadata !DIExpression()), !dbg !1515
  %5 = tail call i64 @base_len(i8* noundef %4) #36, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %5, metadata !1508, metadata !DIExpression()), !dbg !1515
  %6 = ptrtoint i8* %4 to i64, !dbg !1518
  %7 = ptrtoint i8* %0 to i64, !dbg !1518
  %8 = sub i64 %6, %7, !dbg !1518
  %9 = add i64 %8, %5, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %9, metadata !1509, metadata !DIExpression()), !dbg !1515
  %10 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #36, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %10, metadata !1510, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i8 0, metadata !1511, metadata !DIExpression()), !dbg !1515
  %11 = icmp eq i64 %5, 0, !dbg !1521
  br i1 %11, label %22, label %12, !dbg !1523

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1524
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1524
  %15 = load i8, i8* %14, align 1, !dbg !1524, !tbaa !570
  %16 = icmp eq i8 %15, 47, !dbg !1524
  br i1 %16, label %26, label %17, !dbg !1527

17:                                               ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1528, !tbaa !570
  %19 = icmp eq i8 %18, 47, !dbg !1528
  %20 = xor i1 %19, true, !dbg !1529
  %21 = select i1 %19, i8 0, i8 47, !dbg !1529
  br label %26, !dbg !1529

22:                                               ; preds = %3
  %23 = load i8, i8* %1, align 1, !dbg !1530, !tbaa !570
  %24 = icmp eq i8 %23, 47, !dbg !1530
  %25 = select i1 %24, i8 46, i8 0, !dbg !1532
  br label %26, !dbg !1532

26:                                               ; preds = %22, %17, %12
  %27 = phi i1 [ false, %12 ], [ %20, %17 ], [ %24, %22 ]
  %28 = phi i8 [ 0, %12 ], [ %21, %17 ], [ %25, %22 ], !dbg !1515
  %29 = zext i1 %27 to i64
  call void @llvm.dbg.value(metadata i8 %28, metadata !1511, metadata !DIExpression()), !dbg !1515
  %30 = add i64 %10, 1, !dbg !1533
  %31 = add i64 %30, %9, !dbg !1534
  %32 = add i64 %31, %29, !dbg !1535
  %33 = tail call noalias i8* @malloc(i64 noundef %32) #35, !dbg !1536
  call void @llvm.dbg.value(metadata i8* %33, metadata !1512, metadata !DIExpression()), !dbg !1515
  %34 = icmp eq i8* %33, null, !dbg !1537
  br i1 %34, label %42, label %35, !dbg !1539

35:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %33, metadata !1540, metadata !DIExpression()) #35, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %0, metadata !1543, metadata !DIExpression()) #35, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %9, metadata !1544, metadata !DIExpression()) #35, !dbg !1545
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %33, i8* noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #35, !dbg !1547
  %36 = getelementptr inbounds i8, i8* %33, i64 %9, !dbg !1547
  call void @llvm.dbg.value(metadata i8* %36, metadata !1513, metadata !DIExpression()), !dbg !1548
  store i8 %28, i8* %36, align 1, !dbg !1549, !tbaa !570
  %37 = getelementptr inbounds i8, i8* %36, i64 %29, !dbg !1550
  call void @llvm.dbg.value(metadata i8* %37, metadata !1513, metadata !DIExpression()), !dbg !1548
  %38 = icmp eq i8** %2, null, !dbg !1551
  br i1 %38, label %40, label %39, !dbg !1553

39:                                               ; preds = %35
  store i8* %37, i8** %2, align 8, !dbg !1554, !tbaa !467
  br label %40, !dbg !1555

40:                                               ; preds = %39, %35
  call void @llvm.dbg.value(metadata i8* %37, metadata !1540, metadata !DIExpression()) #35, !dbg !1556
  call void @llvm.dbg.value(metadata i8* %1, metadata !1543, metadata !DIExpression()) #35, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %10, metadata !1544, metadata !DIExpression()) #35, !dbg !1556
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %37, i8* noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #35, !dbg !1558
  %41 = getelementptr inbounds i8, i8* %37, i64 %10, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %41, metadata !1513, metadata !DIExpression()), !dbg !1548
  store i8 0, i8* %41, align 1, !dbg !1559, !tbaa !570
  br label %42, !dbg !1560

42:                                               ; preds = %26, %40
  ret i8* %33, !dbg !1561
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !1562 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1601, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i64 %1, metadata !1602, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %2, metadata !1603, metadata !DIExpression()), !dbg !1607
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1608
  %5 = load i8*, i8** %4, align 8, !dbg !1608, !tbaa !1609
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1610
  %7 = load i8*, i8** %6, align 8, !dbg !1610, !tbaa !1611
  %8 = icmp eq i8* %5, %7, !dbg !1612
  br i1 %8, label %9, label %28, !dbg !1613

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1614
  %11 = load i8*, i8** %10, align 8, !dbg !1614, !tbaa !1269
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !1615
  %13 = load i8*, i8** %12, align 8, !dbg !1615, !tbaa !1616
  %14 = icmp eq i8* %11, %13, !dbg !1617
  br i1 %14, label %15, label %28, !dbg !1618

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !1619
  %17 = load i8*, i8** %16, align 8, !dbg !1619, !tbaa !1620
  %18 = icmp eq i8* %17, null, !dbg !1621
  br i1 %18, label %19, label %28, !dbg !1622

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1623
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %21, metadata !1604, metadata !DIExpression()), !dbg !1625
  %22 = icmp eq i64 %21, -1, !dbg !1626
  br i1 %22, label %30, label %23, !dbg !1628

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1629
  %25 = load i32, i32* %24, align 8, !dbg !1630, !tbaa !1071
  %26 = and i32 %25, -17, !dbg !1630
  store i32 %26, i32* %24, align 8, !dbg !1630, !tbaa !1071
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !1631
  store i64 %21, i64* %27, align 8, !dbg !1632, !tbaa !1633
  br label %30, !dbg !1634

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !1635
  br label %30, !dbg !1636

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !1607
  ret i32 %31, !dbg !1637
}

; Function Attrs: nofree nounwind
declare !dbg !1638 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #15 !dbg !1641 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1644, !tbaa !467
  ret i8* %1, !dbg !1645
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #22 !dbg !1646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1648, metadata !DIExpression()), !dbg !1651
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %2, metadata !1649, metadata !DIExpression()), !dbg !1651
  %3 = icmp eq i8* %2, null, !dbg !1653
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1653
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %5, metadata !1650, metadata !DIExpression()), !dbg !1651
  %6 = ptrtoint i8* %5 to i64, !dbg !1654
  %7 = ptrtoint i8* %0 to i64, !dbg !1654
  %8 = sub i64 %6, %7, !dbg !1654
  %9 = icmp sgt i64 %8, 6, !dbg !1656
  br i1 %9, label %10, label %19, !dbg !1657

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1658
  call void @llvm.dbg.value(metadata i8* %11, metadata !1659, metadata !DIExpression()) #35, !dbg !1666
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), metadata !1664, metadata !DIExpression()) #35, !dbg !1666
  call void @llvm.dbg.value(metadata i64 7, metadata !1665, metadata !DIExpression()) #35, !dbg !1666
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i64 7) #35, !dbg !1668
  %13 = icmp eq i32 %12, 0, !dbg !1669
  br i1 %13, label %14, label %19, !dbg !1670

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1648, metadata !DIExpression()), !dbg !1651
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.103, i64 0, i64 0), i64 noundef 3) #36, !dbg !1671
  %16 = icmp eq i32 %15, 0, !dbg !1674
  %17 = select i1 %16, i64 3, i64 0, !dbg !1675
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1675
  br label %19, !dbg !1675

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1651
  call void @llvm.dbg.value(metadata i8* %21, metadata !1650, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8* %20, metadata !1648, metadata !DIExpression()), !dbg !1651
  store i8* %20, i8** @program_name, align 8, !dbg !1676, !tbaa !467
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1677, !tbaa !467
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1678, !tbaa !467
  ret void, !dbg !1679
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !199 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !206, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i8* %1, metadata !207, metadata !DIExpression()), !dbg !1680
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !1681
  call void @llvm.dbg.value(metadata i8* %5, metadata !208, metadata !DIExpression()), !dbg !1680
  %6 = icmp eq i8* %5, %0, !dbg !1682
  br i1 %6, label %7, label %17, !dbg !1684

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1685
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1685
  %10 = bitcast i64* %4 to i8*, !dbg !1686
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1686
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !214, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1688, metadata !DIExpression()) #35, !dbg !1695
  call void @llvm.dbg.value(metadata i8* %10, metadata !1697, metadata !DIExpression()) #35, !dbg !1704
  call void @llvm.dbg.value(metadata i32 0, metadata !1702, metadata !DIExpression()) #35, !dbg !1704
  call void @llvm.dbg.value(metadata i64 8, metadata !1703, metadata !DIExpression()) #35, !dbg !1704
  store i64 0, i64* %4, align 8, !dbg !1706
  call void @llvm.dbg.value(metadata i32* %3, metadata !209, metadata !DIExpression(DW_OP_deref)), !dbg !1680
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !1707
  %12 = icmp eq i64 %11, 2, !dbg !1709
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !209, metadata !DIExpression()), !dbg !1680
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1710
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1680
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1711
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1711
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1680
  ret i8* %18, !dbg !1711
}

; Function Attrs: nounwind
declare !dbg !1712 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1718 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1723, metadata !DIExpression()), !dbg !1726
  %2 = tail call i32* @__errno_location() #38, !dbg !1727
  %3 = load i32, i32* %2, align 4, !dbg !1727, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %3, metadata !1724, metadata !DIExpression()), !dbg !1726
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1728
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1728
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1728
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #42, !dbg !1729
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1729
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1725, metadata !DIExpression()), !dbg !1726
  store i32 %3, i32* %2, align 4, !dbg !1730, !tbaa !561
  ret %struct.quoting_options* %8, !dbg !1731
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #15 !dbg !1732 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1738, metadata !DIExpression()), !dbg !1739
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1740
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1740
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1741
  %5 = load i32, i32* %4, align 8, !dbg !1741, !tbaa !1742
  ret i32 %5, !dbg !1744
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #17 !dbg !1745 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1749, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i32 %1, metadata !1750, metadata !DIExpression()), !dbg !1751
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1752
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1752
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1753
  store i32 %1, i32* %5, align 8, !dbg !1754, !tbaa !1742
  ret void, !dbg !1755
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1756 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1760, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %1, metadata !1761, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 %2, metadata !1762, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %1, metadata !1763, metadata !DIExpression()), !dbg !1768
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1769
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1769
  %6 = lshr i8 %1, 5, !dbg !1770
  %7 = zext i8 %6 to i64, !dbg !1770
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1771
  call void @llvm.dbg.value(metadata i32* %8, metadata !1764, metadata !DIExpression()), !dbg !1768
  %9 = and i8 %1, 31, !dbg !1772
  %10 = zext i8 %9 to i32, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %10, metadata !1766, metadata !DIExpression()), !dbg !1768
  %11 = load i32, i32* %8, align 4, !dbg !1773, !tbaa !561
  %12 = lshr i32 %11, %10, !dbg !1774
  %13 = and i32 %12, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %13, metadata !1767, metadata !DIExpression()), !dbg !1768
  %14 = and i32 %2, 1, !dbg !1776
  %15 = xor i32 %13, %14, !dbg !1777
  %16 = shl i32 %15, %10, !dbg !1778
  %17 = xor i32 %16, %11, !dbg !1779
  store i32 %17, i32* %8, align 4, !dbg !1779, !tbaa !561
  ret i32 %13, !dbg !1780
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1781 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1785, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %1, metadata !1786, metadata !DIExpression()), !dbg !1788
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1789
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1791
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1785, metadata !DIExpression()), !dbg !1788
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1792
  %6 = load i32, i32* %5, align 4, !dbg !1792, !tbaa !1793
  call void @llvm.dbg.value(metadata i32 %6, metadata !1787, metadata !DIExpression()), !dbg !1788
  store i32 %1, i32* %5, align 4, !dbg !1794, !tbaa !1793
  ret i32 %6, !dbg !1795
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1796 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1800, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* %1, metadata !1801, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* %2, metadata !1802, metadata !DIExpression()), !dbg !1803
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1804
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1806
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1800, metadata !DIExpression()), !dbg !1803
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1807
  store i32 10, i32* %6, align 8, !dbg !1808, !tbaa !1742
  %7 = icmp ne i8* %1, null, !dbg !1809
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1811
  br i1 %9, label %11, label %10, !dbg !1811

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !1812
  unreachable, !dbg !1812

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1813
  store i8* %1, i8** %12, align 8, !dbg !1814, !tbaa !1815
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1816
  store i8* %2, i8** %13, align 8, !dbg !1817, !tbaa !1818
  ret void, !dbg !1819
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1820 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1824, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %1, metadata !1825, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i8* %2, metadata !1826, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %3, metadata !1827, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1828, metadata !DIExpression()), !dbg !1832
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1833
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1833
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1829, metadata !DIExpression()), !dbg !1832
  %8 = tail call i32* @__errno_location() #38, !dbg !1834
  %9 = load i32, i32* %8, align 4, !dbg !1834, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %9, metadata !1830, metadata !DIExpression()), !dbg !1832
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1835
  %11 = load i32, i32* %10, align 8, !dbg !1835, !tbaa !1742
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1836
  %13 = load i32, i32* %12, align 4, !dbg !1836, !tbaa !1793
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1837
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1838
  %16 = load i8*, i8** %15, align 8, !dbg !1838, !tbaa !1815
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1839
  %18 = load i8*, i8** %17, align 8, !dbg !1839, !tbaa !1818
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %19, metadata !1831, metadata !DIExpression()), !dbg !1832
  store i32 %9, i32* %8, align 4, !dbg !1841, !tbaa !561
  ret i64 %19, !dbg !1842
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1843 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1849, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %1, metadata !1850, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %2, metadata !1851, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %3, metadata !1852, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 %4, metadata !1853, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 %5, metadata !1854, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32* %6, metadata !1855, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %7, metadata !1856, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %8, metadata !1857, metadata !DIExpression()), !dbg !1911
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !1912
  %18 = icmp eq i64 %17, 1, !dbg !1913
  call void @llvm.dbg.value(metadata i1 %18, metadata !1858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1860, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* null, metadata !1861, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1862, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1863, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 %5, metadata !1864, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1865, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 1, metadata !1866, metadata !DIExpression()), !dbg !1911
  %19 = and i32 %5, 2, !dbg !1914
  %20 = icmp ne i32 %19, 0, !dbg !1914
  %21 = bitcast i64* %13 to %struct.__mbstate_t*
  %22 = bitcast i32* %12 to i8*
  %23 = bitcast i64* %13 to i8*
  %24 = bitcast i64* %11 to %struct.__mbstate_t*
  %25 = bitcast i32* %10 to i8*
  %26 = bitcast i64* %11 to i8*
  %27 = getelementptr inbounds i8, i8* %2, i64 1
  %28 = and i32 %5, 4
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %5, 1
  %31 = icmp eq i32 %30, 0
  %32 = bitcast i64* %14 to i8*
  %33 = bitcast i32* %16 to i8*
  %34 = icmp ne i32* %6, null
  %35 = icmp eq i32* %6, null
  br label %36, !dbg !1914

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1915
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1916
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1917
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1850, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1866, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1865, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1864, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1863, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %43, metadata !1862, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %42, metadata !1861, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %41, metadata !1860, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %40, metadata !1852, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %39, metadata !1857, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %38, metadata !1856, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 %37, metadata !1853, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.label(metadata !1904), !dbg !1918
  call void @llvm.dbg.value(metadata i8 0, metadata !1867, metadata !DIExpression()), !dbg !1911
  switch i32 %37, label %110 [
    i32 6, label %49
    i32 5, label %50
    i32 7, label %111
    i32 0, label %109
    i32 2, label %104
    i32 4, label %101
    i32 3, label %100
    i32 1, label %102
    i32 10, label %79
    i32 8, label %54
    i32 9, label %54
  ], !dbg !1919

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1864, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 5, metadata !1853, metadata !DIExpression()), !dbg !1911
  br label %111, !dbg !1920

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1864, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 5, metadata !1853, metadata !DIExpression()), !dbg !1911
  br i1 %45, label %111, label %51, !dbg !1920

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1921
  br i1 %52, label %111, label %53, !dbg !1925

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1921, !tbaa !570
  br label %111, !dbg !1921

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.116, i64 0, i64 0), metadata !288, metadata !DIExpression()) #35, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #35, !dbg !1926
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.116, i64 0, i64 0), i32 noundef 5) #35, !dbg !1930
  call void @llvm.dbg.value(metadata i8* %55, metadata !290, metadata !DIExpression()) #35, !dbg !1926
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.116, i64 0, i64 0), !dbg !1931
  br i1 %56, label %57, label %66, !dbg !1933

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !1934
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !1935
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !292, metadata !DIExpression()) #35, !dbg !1936
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1937, metadata !DIExpression()) #35, !dbg !1943
  call void @llvm.dbg.value(metadata i8* %23, metadata !1945, metadata !DIExpression()) #35, !dbg !1950
  call void @llvm.dbg.value(metadata i32 0, metadata !1948, metadata !DIExpression()) #35, !dbg !1950
  call void @llvm.dbg.value(metadata i64 8, metadata !1949, metadata !DIExpression()) #35, !dbg !1950
  store i64 0, i64* %13, align 8, !dbg !1952
  call void @llvm.dbg.value(metadata i32* %12, metadata !291, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1926
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !1953
  %59 = icmp eq i64 %58, 3, !dbg !1955
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !291, metadata !DIExpression()) #35, !dbg !1926
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1956
  %63 = icmp eq i32 %37, 9, !dbg !1956
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), !dbg !1956
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1956
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !1957
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !1957
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1926
  call void @llvm.dbg.value(metadata i8* %67, metadata !1856, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), metadata !288, metadata !DIExpression()) #35, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #35, !dbg !1958
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), i32 noundef 5) #35, !dbg !1960
  call void @llvm.dbg.value(metadata i8* %68, metadata !290, metadata !DIExpression()) #35, !dbg !1958
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), !dbg !1961
  br i1 %69, label %70, label %79, !dbg !1962

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !1963
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !1964
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !292, metadata !DIExpression()) #35, !dbg !1965
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1937, metadata !DIExpression()) #35, !dbg !1966
  call void @llvm.dbg.value(metadata i8* %26, metadata !1945, metadata !DIExpression()) #35, !dbg !1968
  call void @llvm.dbg.value(metadata i32 0, metadata !1948, metadata !DIExpression()) #35, !dbg !1968
  call void @llvm.dbg.value(metadata i64 8, metadata !1949, metadata !DIExpression()) #35, !dbg !1968
  store i64 0, i64* %11, align 8, !dbg !1970
  call void @llvm.dbg.value(metadata i32* %10, metadata !291, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1958
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !1971
  %72 = icmp eq i64 %71, 3, !dbg !1972
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !291, metadata !DIExpression()) #35, !dbg !1958
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1973
  %76 = icmp eq i32 %37, 9, !dbg !1973
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), !dbg !1973
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1973
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !1974
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !1974
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1857, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %80, metadata !1856, metadata !DIExpression()), !dbg !1911
  br i1 %45, label %97, label %82, !dbg !1975

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1868, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 0, metadata !1859, metadata !DIExpression()), !dbg !1911
  %83 = load i8, i8* %80, align 1, !dbg !1977, !tbaa !570
  %84 = icmp eq i8 %83, 0, !dbg !1979
  br i1 %84, label %97, label %85, !dbg !1979

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1868, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %88, metadata !1859, metadata !DIExpression()), !dbg !1911
  %89 = icmp ult i64 %88, %48, !dbg !1980
  br i1 %89, label %90, label %92, !dbg !1983

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1980
  store i8 %86, i8* %91, align 1, !dbg !1980, !tbaa !570
  br label %92, !dbg !1980

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %93, metadata !1859, metadata !DIExpression()), !dbg !1911
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1984
  call void @llvm.dbg.value(metadata i8* %94, metadata !1868, metadata !DIExpression()), !dbg !1976
  %95 = load i8, i8* %94, align 1, !dbg !1977, !tbaa !570
  %96 = icmp eq i8 %95, 0, !dbg !1979
  br i1 %96, label %97, label %85, !dbg !1979, !llvm.loop !1985

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1987
  call void @llvm.dbg.value(metadata i64 %98, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 1, metadata !1863, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %81, metadata !1861, metadata !DIExpression()), !dbg !1911
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %99, metadata !1862, metadata !DIExpression()), !dbg !1911
  br label %111, !dbg !1989

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1863, metadata !DIExpression()), !dbg !1911
  br label %102, !dbg !1990

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1864, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1863, metadata !DIExpression()), !dbg !1911
  br i1 %45, label %102, label %105, !dbg !1991

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1864, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1863, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 2, metadata !1853, metadata !DIExpression()), !dbg !1911
  br label %111, !dbg !1992

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1864, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1863, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 2, metadata !1853, metadata !DIExpression()), !dbg !1911
  br i1 %45, label %111, label %105, !dbg !1992

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1993
  br i1 %107, label %111, label %108, !dbg !1997

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1993, !tbaa !570
  br label %111, !dbg !1993

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1864, metadata !DIExpression()), !dbg !1911
  br label %111, !dbg !1998

110:                                              ; preds = %36
  call void @abort() #37, !dbg !1999
  unreachable, !dbg !1999

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1987
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.119, i64 0, i64 0), %102 ], !dbg !1911
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1911
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1864, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1863, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %117, metadata !1862, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %116, metadata !1861, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %115, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %114, metadata !1857, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8* %113, metadata !1856, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 %112, metadata !1853, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1873, metadata !DIExpression()), !dbg !2000
  %120 = icmp ne i32 %112, 2
  %121 = and i1 %120, %118
  %122 = icmp ne i64 %117, 0
  %123 = select i1 %121, i1 %122, i1 false
  %124 = icmp ugt i64 %117, 1
  %125 = xor i1 %119, true
  %126 = icmp eq i32 %112, 2
  %127 = select i1 %119, i1 %122, i1 false
  %128 = or i1 %120, %125
  %129 = and i1 %126, %119
  %130 = xor i1 %118, true
  %131 = and i1 %34, %119
  br label %132, !dbg !2001

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1987
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1915
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2000
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1850, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %139, metadata !1873, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1866, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1865, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %135, metadata !1860, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %134, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %133, metadata !1852, metadata !DIExpression()), !dbg !1911
  %141 = icmp eq i64 %133, -1, !dbg !2002
  br i1 %141, label %142, label %146, !dbg !2003

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2004
  %144 = load i8, i8* %143, align 1, !dbg !2004, !tbaa !570
  %145 = icmp eq i8 %144, 0, !dbg !2005
  br i1 %145, label %596, label %148, !dbg !2006

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2007
  br i1 %147, label %596, label %148, !dbg !2006

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1875, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !1878, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !2008
  br i1 %123, label %149, label %163, !dbg !2009

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2011
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2012
  br i1 %151, label %152, label %154, !dbg !2012

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %153, metadata !1852, metadata !DIExpression()), !dbg !1911
  br label %154, !dbg !2014

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2014
  call void @llvm.dbg.value(metadata i64 %155, metadata !1852, metadata !DIExpression()), !dbg !1911
  %156 = icmp ugt i64 %150, %155, !dbg !2015
  br i1 %156, label %163, label %157, !dbg !2016

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2017
  call void @llvm.dbg.value(metadata i8* %158, metadata !2018, metadata !DIExpression()) #35, !dbg !2023
  call void @llvm.dbg.value(metadata i8* %116, metadata !2021, metadata !DIExpression()) #35, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %117, metadata !2022, metadata !DIExpression()) #35, !dbg !2023
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2025
  %160 = icmp ne i32 %159, 0, !dbg !2026
  %161 = or i1 %160, %125, !dbg !2027
  %162 = xor i1 %160, true, !dbg !2027
  br i1 %161, label %163, label %647, !dbg !2027

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %164, metadata !1852, metadata !DIExpression()), !dbg !1911
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2028
  %167 = load i8, i8* %166, align 1, !dbg !2028, !tbaa !570
  call void @llvm.dbg.value(metadata i8 %167, metadata !1880, metadata !DIExpression()), !dbg !2008
  switch i8 %167, label %298 [
    i8 0, label %168
    i8 63, label %216
    i8 7, label %263
    i8 8, label %252
    i8 12, label %253
    i8 10, label %261
    i8 13, label %254
    i8 9, label %255
    i8 11, label %256
    i8 92, label %257
    i8 123, label %265
    i8 125, label %265
    i8 35, label %269
    i8 126, label %269
    i8 32, label %271
    i8 33, label %272
    i8 34, label %272
    i8 36, label %272
    i8 38, label %272
    i8 40, label %272
    i8 41, label %272
    i8 42, label %272
    i8 59, label %272
    i8 60, label %272
    i8 61, label %272
    i8 62, label %272
    i8 91, label %272
    i8 94, label %272
    i8 96, label %272
    i8 124, label %272
    i8 39, label %275
    i8 37, label %456
    i8 43, label %456
    i8 44, label %456
    i8 45, label %456
    i8 46, label %456
    i8 47, label %456
    i8 48, label %456
    i8 49, label %456
    i8 50, label %456
    i8 51, label %456
    i8 52, label %456
    i8 53, label %456
    i8 54, label %456
    i8 55, label %456
    i8 56, label %456
    i8 57, label %456
    i8 58, label %456
    i8 65, label %456
    i8 66, label %456
    i8 67, label %456
    i8 68, label %456
    i8 69, label %456
    i8 70, label %456
    i8 71, label %456
    i8 72, label %456
    i8 73, label %456
    i8 74, label %456
    i8 75, label %456
    i8 76, label %456
    i8 77, label %456
    i8 78, label %456
    i8 79, label %456
    i8 80, label %456
    i8 81, label %456
    i8 82, label %456
    i8 83, label %456
    i8 84, label %456
    i8 85, label %456
    i8 86, label %456
    i8 87, label %456
    i8 88, label %456
    i8 89, label %456
    i8 90, label %456
    i8 93, label %456
    i8 95, label %456
    i8 97, label %456
    i8 98, label %456
    i8 99, label %456
    i8 100, label %456
    i8 101, label %456
    i8 102, label %456
    i8 103, label %456
    i8 104, label %456
    i8 105, label %456
    i8 106, label %456
    i8 107, label %456
    i8 108, label %456
    i8 109, label %456
    i8 110, label %456
    i8 111, label %456
    i8 112, label %456
    i8 113, label %456
    i8 114, label %456
    i8 115, label %456
    i8 116, label %456
    i8 117, label %456
    i8 118, label %456
    i8 119, label %456
    i8 120, label %456
    i8 121, label %456
    i8 122, label %456
  ], !dbg !2029

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2030

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2031

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1878, metadata !DIExpression()), !dbg !2008
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2035
  br i1 %171, label %188, label %172, !dbg !2035

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2037
  br i1 %173, label %174, label %176, !dbg !2041

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2037
  store i8 39, i8* %175, align 1, !dbg !2037, !tbaa !570
  br label %176, !dbg !2037

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %177, metadata !1859, metadata !DIExpression()), !dbg !1911
  %178 = icmp ult i64 %177, %140, !dbg !2042
  br i1 %178, label %179, label %181, !dbg !2045

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2042
  store i8 36, i8* %180, align 1, !dbg !2042, !tbaa !570
  br label %181, !dbg !2042

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %182, metadata !1859, metadata !DIExpression()), !dbg !1911
  %183 = icmp ult i64 %182, %140, !dbg !2046
  br i1 %183, label %184, label %186, !dbg !2049

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2046
  store i8 39, i8* %185, align 1, !dbg !2046, !tbaa !570
  br label %186, !dbg !2046

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %187, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 1, metadata !1867, metadata !DIExpression()), !dbg !1911
  br label %188, !dbg !2050

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1911
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %189, metadata !1859, metadata !DIExpression()), !dbg !1911
  %191 = icmp ult i64 %189, %140, !dbg !2051
  br i1 %191, label %192, label %194, !dbg !2054

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2051
  store i8 92, i8* %193, align 1, !dbg !2051, !tbaa !570
  br label %194, !dbg !2051

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %195, metadata !1859, metadata !DIExpression()), !dbg !1911
  br i1 %120, label %196, label %499, !dbg !2055

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2057
  %198 = icmp ult i64 %197, %164, !dbg !2058
  br i1 %198, label %199, label %456, !dbg !2059

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2060
  %201 = load i8, i8* %200, align 1, !dbg !2060, !tbaa !570
  %202 = add i8 %201, -48, !dbg !2061
  %203 = icmp ult i8 %202, 10, !dbg !2061
  br i1 %203, label %204, label %456, !dbg !2061

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2062
  br i1 %205, label %206, label %208, !dbg !2066

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2062
  store i8 48, i8* %207, align 1, !dbg !2062, !tbaa !570
  br label %208, !dbg !2062

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %209, metadata !1859, metadata !DIExpression()), !dbg !1911
  %210 = icmp ult i64 %209, %140, !dbg !2067
  br i1 %210, label %211, label %213, !dbg !2070

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2067
  store i8 48, i8* %212, align 1, !dbg !2067, !tbaa !570
  br label %213, !dbg !2067

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %214, metadata !1859, metadata !DIExpression()), !dbg !1911
  br label %456, !dbg !2071

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2072

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2073

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2074

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2076

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2078
  %221 = icmp ult i64 %220, %164, !dbg !2079
  br i1 %221, label %222, label %456, !dbg !2080

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2081
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2082
  %225 = load i8, i8* %224, align 1, !dbg !2082, !tbaa !570
  %226 = icmp eq i8 %225, 63, !dbg !2083
  br i1 %226, label %227, label %456, !dbg !2084

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2085
  %229 = load i8, i8* %228, align 1, !dbg !2085, !tbaa !570
  switch i8 %229, label %456 [
    i8 33, label %230
    i8 39, label %230
    i8 40, label %230
    i8 41, label %230
    i8 45, label %230
    i8 47, label %230
    i8 60, label %230
    i8 61, label %230
    i8 62, label %230
  ], !dbg !2086

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2087

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %220, metadata !1873, metadata !DIExpression()), !dbg !2000
  %232 = icmp ult i64 %134, %140, !dbg !2089
  br i1 %232, label %233, label %235, !dbg !2092

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2089
  store i8 63, i8* %234, align 1, !dbg !2089, !tbaa !570
  br label %235, !dbg !2089

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %236, metadata !1859, metadata !DIExpression()), !dbg !1911
  %237 = icmp ult i64 %236, %140, !dbg !2093
  br i1 %237, label %238, label %240, !dbg !2096

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2093
  store i8 34, i8* %239, align 1, !dbg !2093, !tbaa !570
  br label %240, !dbg !2093

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %241, metadata !1859, metadata !DIExpression()), !dbg !1911
  %242 = icmp ult i64 %241, %140, !dbg !2097
  br i1 %242, label %243, label %245, !dbg !2100

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2097
  store i8 34, i8* %244, align 1, !dbg !2097, !tbaa !570
  br label %245, !dbg !2097

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %246, metadata !1859, metadata !DIExpression()), !dbg !1911
  %247 = icmp ult i64 %246, %140, !dbg !2101
  br i1 %247, label %248, label %250, !dbg !2104

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2101
  store i8 63, i8* %249, align 1, !dbg !2101, !tbaa !570
  br label %250, !dbg !2101

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %251, metadata !1859, metadata !DIExpression()), !dbg !1911
  br label %456, !dbg !2105

252:                                              ; preds = %163
  br label %263, !dbg !2106

253:                                              ; preds = %163
  br label %263, !dbg !2107

254:                                              ; preds = %163
  br label %261, !dbg !2108

255:                                              ; preds = %163
  br label %261, !dbg !2109

256:                                              ; preds = %163
  br label %263, !dbg !2110

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2111

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2112

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2115

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2117

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2118
  call void @llvm.dbg.label(metadata !1905), !dbg !2119
  br i1 %128, label %263, label %638, !dbg !2120

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2118
  call void @llvm.dbg.label(metadata !1907), !dbg !2122
  br i1 %118, label %510, label %467, !dbg !2123

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2124

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2125, !tbaa !570
  %268 = icmp eq i8 %267, 0, !dbg !2127
  br i1 %268, label %269, label %456, !dbg !2128

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2129
  br i1 %270, label %271, label %456, !dbg !2131

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1879, metadata !DIExpression()), !dbg !2008
  br label %272, !dbg !2132

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1879, metadata !DIExpression()), !dbg !2008
  br i1 %126, label %274, label %456, !dbg !2133

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2135

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1865, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 1, metadata !1879, metadata !DIExpression()), !dbg !2008
  br i1 %126, label %276, label %456, !dbg !2136

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2137

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2140
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2142
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2142
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %282, metadata !1850, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %281, metadata !1860, metadata !DIExpression()), !dbg !1911
  %283 = icmp ult i64 %134, %282, !dbg !2143
  br i1 %283, label %284, label %286, !dbg !2146

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2143
  store i8 39, i8* %285, align 1, !dbg !2143, !tbaa !570
  br label %286, !dbg !2143

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %287, metadata !1859, metadata !DIExpression()), !dbg !1911
  %288 = icmp ult i64 %287, %282, !dbg !2147
  br i1 %288, label %289, label %291, !dbg !2150

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2147
  store i8 92, i8* %290, align 1, !dbg !2147, !tbaa !570
  br label %291, !dbg !2147

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %292, metadata !1859, metadata !DIExpression()), !dbg !1911
  %293 = icmp ult i64 %292, %282, !dbg !2151
  br i1 %293, label %294, label %296, !dbg !2154

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2151
  store i8 39, i8* %295, align 1, !dbg !2151, !tbaa !570
  br label %296, !dbg !2151

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %297, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1867, metadata !DIExpression()), !dbg !1911
  br label %456, !dbg !2155

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2156

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1881, metadata !DIExpression()), !dbg !2157
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2158
  %301 = load i16*, i16** %300, align 8, !dbg !2158, !tbaa !467
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2158
  %304 = load i16, i16* %303, align 2, !dbg !2158, !tbaa !595
  %305 = and i16 %304, 16384, !dbg !2158
  %306 = icmp ne i16 %305, 0, !dbg !2160
  call void @llvm.dbg.value(metadata i8 poison, metadata !1884, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %349, metadata !1881, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %312, metadata !1852, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i1 %350, metadata !1879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2008
  br label %352, !dbg !2161

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2162
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1885, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1937, metadata !DIExpression()) #35, !dbg !2164
  call void @llvm.dbg.value(metadata i8* %32, metadata !1945, metadata !DIExpression()) #35, !dbg !2166
  call void @llvm.dbg.value(metadata i32 0, metadata !1948, metadata !DIExpression()) #35, !dbg !2166
  call void @llvm.dbg.value(metadata i64 8, metadata !1949, metadata !DIExpression()) #35, !dbg !2166
  store i64 0, i64* %14, align 8, !dbg !2168
  call void @llvm.dbg.value(metadata i64 0, metadata !1881, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 1, metadata !1884, metadata !DIExpression()), !dbg !2157
  %308 = icmp eq i64 %164, -1, !dbg !2169
  br i1 %308, label %309, label %311, !dbg !2171

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %310, metadata !1852, metadata !DIExpression()), !dbg !1911
  br label %311, !dbg !2173

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2008
  call void @llvm.dbg.value(metadata i64 %312, metadata !1852, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2174
  %313 = sub i64 %312, %139, !dbg !2175
  call void @llvm.dbg.value(metadata i32* %16, metadata !1888, metadata !DIExpression(DW_OP_deref)), !dbg !2176
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %314, metadata !1892, metadata !DIExpression()), !dbg !2176
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2178

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1881, metadata !DIExpression()), !dbg !2157
  %316 = icmp ugt i64 %312, %139, !dbg !2179
  br i1 %316, label %319, label %317, !dbg !2181

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1884, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 0, metadata !1881, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2182
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %349, metadata !1881, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %312, metadata !1852, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i1 %350, metadata !1879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2008
  br label %352, !dbg !2161

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1884, metadata !DIExpression()), !dbg !2157
  br label %346, !dbg !2184

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1881, metadata !DIExpression()), !dbg !2157
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2186
  %323 = load i8, i8* %322, align 1, !dbg !2186, !tbaa !570
  %324 = icmp eq i8 %323, 0, !dbg !2181
  br i1 %324, label %348, label %325, !dbg !2187

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %326, metadata !1881, metadata !DIExpression()), !dbg !2157
  %327 = add i64 %326, %139, !dbg !2189
  %328 = icmp eq i64 %326, %313, !dbg !2179
  br i1 %328, label %348, label %319, !dbg !2181, !llvm.loop !2190

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2191
  call void @llvm.dbg.value(metadata i64 1, metadata !1893, metadata !DIExpression()), !dbg !2192
  br i1 %331, label %332, label %340, !dbg !2191

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1893, metadata !DIExpression()), !dbg !2192
  %334 = add i64 %333, %139, !dbg !2193
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2195
  %336 = load i8, i8* %335, align 1, !dbg !2195, !tbaa !570
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2196

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %338, metadata !1893, metadata !DIExpression()), !dbg !2192
  %339 = icmp eq i64 %338, %314, !dbg !2198
  br i1 %339, label %340, label %332, !dbg !2199, !llvm.loop !2200

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2202, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %341, metadata !1888, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %341, metadata !2204, metadata !DIExpression()) #35, !dbg !2212
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2214
  %343 = icmp ne i32 %342, 0, !dbg !2215
  call void @llvm.dbg.value(metadata i8 poison, metadata !1884, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %314, metadata !1881, metadata !DIExpression()), !dbg !2157
  br label %348, !dbg !2216

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1884, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 0, metadata !1881, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2182
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2183
  call void @llvm.dbg.label(metadata !1910), !dbg !2217
  %345 = select i1 %118, i32 4, i32 2, !dbg !2218
  br label %643, !dbg !2218

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1884, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 0, metadata !1881, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2182
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %349, metadata !1881, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %312, metadata !1852, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i1 %350, metadata !1879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2008
  br label %352, !dbg !2161

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1884, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 0, metadata !1881, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2182
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %349, metadata !1881, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %312, metadata !1852, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i1 %350, metadata !1879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2008
  %351 = icmp ugt i64 %349, 1, !dbg !2220
  br i1 %351, label %357, label %352, !dbg !2161

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2221
  br i1 %356, label %456, label %357, !dbg !2221

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %361, metadata !1901, metadata !DIExpression()), !dbg !2223
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2224

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1911
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2000
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2225
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2008
  call void @llvm.dbg.value(metadata i8 %369, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %368, metadata !1878, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %366, metadata !1873, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %364, metadata !1859, metadata !DIExpression()), !dbg !1911
  br i1 %362, label %414, label %370, !dbg !2226

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2231

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1878, metadata !DIExpression()), !dbg !2008
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2234
  br i1 %372, label %389, label %373, !dbg !2234

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2236
  br i1 %374, label %375, label %377, !dbg !2240

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2236
  store i8 39, i8* %376, align 1, !dbg !2236, !tbaa !570
  br label %377, !dbg !2236

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %378, metadata !1859, metadata !DIExpression()), !dbg !1911
  %379 = icmp ult i64 %378, %140, !dbg !2241
  br i1 %379, label %380, label %382, !dbg !2244

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2241
  store i8 36, i8* %381, align 1, !dbg !2241, !tbaa !570
  br label %382, !dbg !2241

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %383, metadata !1859, metadata !DIExpression()), !dbg !1911
  %384 = icmp ult i64 %383, %140, !dbg !2245
  br i1 %384, label %385, label %387, !dbg !2248

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2245
  store i8 39, i8* %386, align 1, !dbg !2245, !tbaa !570
  br label %387, !dbg !2245

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %388, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 1, metadata !1867, metadata !DIExpression()), !dbg !1911
  br label %389, !dbg !2249

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1911
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %390, metadata !1859, metadata !DIExpression()), !dbg !1911
  %392 = icmp ult i64 %390, %140, !dbg !2250
  br i1 %392, label %393, label %395, !dbg !2253

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2250
  store i8 92, i8* %394, align 1, !dbg !2250, !tbaa !570
  br label %395, !dbg !2250

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %396, metadata !1859, metadata !DIExpression()), !dbg !1911
  %397 = icmp ult i64 %396, %140, !dbg !2254
  br i1 %397, label %398, label %402, !dbg !2257

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2254
  %400 = or i8 %399, 48, !dbg !2254
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2254
  store i8 %400, i8* %401, align 1, !dbg !2254, !tbaa !570
  br label %402, !dbg !2254

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %403, metadata !1859, metadata !DIExpression()), !dbg !1911
  %404 = icmp ult i64 %403, %140, !dbg !2258
  br i1 %404, label %405, label %410, !dbg !2261

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2258
  %407 = and i8 %406, 7, !dbg !2258
  %408 = or i8 %407, 48, !dbg !2258
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2258
  store i8 %408, i8* %409, align 1, !dbg !2258, !tbaa !570
  br label %410, !dbg !2258

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %411, metadata !1859, metadata !DIExpression()), !dbg !1911
  %412 = and i8 %369, 7, !dbg !2262
  %413 = or i8 %412, 48, !dbg !2263
  call void @llvm.dbg.value(metadata i8 %413, metadata !1880, metadata !DIExpression()), !dbg !2008
  br label %421, !dbg !2264

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2265

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2266
  br i1 %416, label %417, label %419, !dbg !2271

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2266
  store i8 92, i8* %418, align 1, !dbg !2266, !tbaa !570
  br label %419, !dbg !2266

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %420, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1875, metadata !DIExpression()), !dbg !2008
  br label %421, !dbg !2272

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1911
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2008
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2008
  call void @llvm.dbg.value(metadata i8 %426, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %425, metadata !1878, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %422, metadata !1859, metadata !DIExpression()), !dbg !1911
  %427 = add i64 %366, 1, !dbg !2273
  %428 = icmp ugt i64 %361, %427, !dbg !2275
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2276

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2277
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2277
  br i1 %432, label %433, label %444, !dbg !2277

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2280
  br i1 %434, label %435, label %437, !dbg !2284

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2280
  store i8 39, i8* %436, align 1, !dbg !2280, !tbaa !570
  br label %437, !dbg !2280

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %438, metadata !1859, metadata !DIExpression()), !dbg !1911
  %439 = icmp ult i64 %438, %140, !dbg !2285
  br i1 %439, label %440, label %442, !dbg !2288

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2285
  store i8 39, i8* %441, align 1, !dbg !2285, !tbaa !570
  br label %442, !dbg !2285

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %443, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1867, metadata !DIExpression()), !dbg !1911
  br label %444, !dbg !2289

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2290
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %445, metadata !1859, metadata !DIExpression()), !dbg !1911
  %447 = icmp ult i64 %445, %140, !dbg !2291
  br i1 %447, label %448, label %450, !dbg !2294

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2291
  store i8 %426, i8* %449, align 1, !dbg !2291, !tbaa !570
  br label %450, !dbg !2291

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %451, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %427, metadata !1873, metadata !DIExpression()), !dbg !2000
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2295
  %453 = load i8, i8* %452, align 1, !dbg !2295, !tbaa !570
  call void @llvm.dbg.value(metadata i8 %453, metadata !1880, metadata !DIExpression()), !dbg !2008
  br label %363, !dbg !2296, !llvm.loop !2297

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i1 %358, metadata !1879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2008
  call void @llvm.dbg.value(metadata i8 %425, metadata !1878, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %366, metadata !1873, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %422, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %360, metadata !1852, metadata !DIExpression()), !dbg !1911
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2300
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1911
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1915
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2000
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2008
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1850, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %465, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1878, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1875, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %462, metadata !1873, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1865, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %459, metadata !1860, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %458, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %457, metadata !1852, metadata !DIExpression()), !dbg !1911
  br i1 %121, label %478, label %467, !dbg !2301

467:                                              ; preds = %259, %215, %263, %456
  %468 = phi i64 [ %466, %456 ], [ %140, %263 ], [ %140, %215 ], [ %140, %259 ]
  %469 = phi i8 [ %465, %456 ], [ %167, %263 ], [ 0, %215 ], [ 92, %259 ]
  %470 = phi i1 [ %464, %456 ], [ false, %263 ], [ false, %215 ], [ false, %259 ]
  %471 = phi i1 [ %463, %456 ], [ false, %263 ], [ false, %215 ], [ false, %259 ]
  %472 = phi i64 [ %462, %456 ], [ %139, %263 ], [ %139, %215 ], [ %139, %259 ]
  %473 = phi i1 [ %461, %456 ], [ %138, %263 ], [ %138, %215 ], [ %138, %259 ]
  %474 = phi i1 [ %460, %456 ], [ %136, %263 ], [ %136, %215 ], [ %136, %259 ]
  %475 = phi i64 [ %459, %456 ], [ %135, %263 ], [ %135, %215 ], [ %135, %259 ]
  %476 = phi i64 [ %458, %456 ], [ %134, %263 ], [ %134, %215 ], [ %134, %259 ]
  %477 = phi i64 [ %457, %456 ], [ %164, %263 ], [ %164, %215 ], [ %164, %259 ]
  br i1 %131, label %479, label %499, !dbg !2303

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2304

479:                                              ; preds = %467, %478
  %480 = phi i64 [ %468, %467 ], [ %466, %478 ]
  %481 = phi i8 [ %469, %467 ], [ %465, %478 ]
  %482 = phi i1 [ %470, %467 ], [ %464, %478 ]
  %483 = phi i1 [ %471, %467 ], [ %463, %478 ]
  %484 = phi i64 [ %472, %467 ], [ %462, %478 ]
  %485 = phi i1 [ %473, %467 ], [ %461, %478 ]
  %486 = phi i1 [ %474, %467 ], [ %460, %478 ]
  %487 = phi i64 [ %475, %467 ], [ %459, %478 ]
  %488 = phi i64 [ %476, %467 ], [ %458, %478 ]
  %489 = phi i64 [ %477, %467 ], [ %457, %478 ]
  %490 = lshr i8 %481, 5, !dbg !2305
  %491 = zext i8 %490 to i64, !dbg !2305
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2306
  %493 = load i32, i32* %492, align 4, !dbg !2306, !tbaa !561
  %494 = and i8 %481, 31, !dbg !2307
  %495 = zext i8 %494 to i32, !dbg !2307
  %496 = shl nuw i32 1, %495, !dbg !2308
  %497 = and i32 %493, %496, !dbg !2308
  %498 = icmp eq i32 %497, 0, !dbg !2308
  br i1 %498, label %499, label %510, !dbg !2309

499:                                              ; preds = %194, %479, %478, %467
  %500 = phi i64 [ %480, %479 ], [ %466, %478 ], [ %468, %467 ], [ %140, %194 ]
  %501 = phi i8 [ %481, %479 ], [ %465, %478 ], [ %469, %467 ], [ 48, %194 ]
  %502 = phi i1 [ %482, %479 ], [ %464, %478 ], [ %470, %467 ], [ false, %194 ]
  %503 = phi i1 [ %483, %479 ], [ %463, %478 ], [ %471, %467 ], [ true, %194 ]
  %504 = phi i64 [ %484, %479 ], [ %462, %478 ], [ %472, %467 ], [ %139, %194 ]
  %505 = phi i1 [ %485, %479 ], [ %461, %478 ], [ %473, %467 ], [ %190, %194 ]
  %506 = phi i1 [ %486, %479 ], [ %460, %478 ], [ %474, %467 ], [ %136, %194 ]
  %507 = phi i64 [ %487, %479 ], [ %459, %478 ], [ %475, %467 ], [ %135, %194 ]
  %508 = phi i64 [ %488, %479 ], [ %458, %478 ], [ %476, %467 ], [ %195, %194 ]
  %509 = phi i64 [ %489, %479 ], [ %457, %478 ], [ %477, %467 ], [ %164, %194 ]
  br i1 %165, label %510, label %546, !dbg !2310

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2300
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1911
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1915
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2311
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2008
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1850, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %518, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %516, metadata !1873, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1865, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %513, metadata !1860, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %512, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %511, metadata !1852, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.label(metadata !1908), !dbg !2312
  br i1 %119, label %638, label %520, !dbg !2313

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1878, metadata !DIExpression()), !dbg !2008
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2315
  br i1 %521, label %538, label %522, !dbg !2315

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2317
  br i1 %523, label %524, label %526, !dbg !2321

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2317
  store i8 39, i8* %525, align 1, !dbg !2317, !tbaa !570
  br label %526, !dbg !2317

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %527, metadata !1859, metadata !DIExpression()), !dbg !1911
  %528 = icmp ult i64 %527, %519, !dbg !2322
  br i1 %528, label %529, label %531, !dbg !2325

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2322
  store i8 36, i8* %530, align 1, !dbg !2322, !tbaa !570
  br label %531, !dbg !2322

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %532, metadata !1859, metadata !DIExpression()), !dbg !1911
  %533 = icmp ult i64 %532, %519, !dbg !2326
  br i1 %533, label %534, label %536, !dbg !2329

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2326
  store i8 39, i8* %535, align 1, !dbg !2326, !tbaa !570
  br label %536, !dbg !2326

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %537, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 1, metadata !1867, metadata !DIExpression()), !dbg !1911
  br label %538, !dbg !2330

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2008
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %539, metadata !1859, metadata !DIExpression()), !dbg !1911
  %541 = icmp ult i64 %539, %519, !dbg !2331
  br i1 %541, label %542, label %544, !dbg !2334

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2331
  store i8 92, i8* %543, align 1, !dbg !2331, !tbaa !570
  br label %544, !dbg !2331

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %556, metadata !1850, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %555, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1878, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %552, metadata !1873, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1865, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %549, metadata !1860, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %548, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %547, metadata !1852, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.label(metadata !1909), !dbg !2335
  br label %570, !dbg !2336

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2300
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1911
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1915
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2311
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2339
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1850, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 %555, metadata !1880, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 poison, metadata !1878, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %552, metadata !1873, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1865, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %549, metadata !1860, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %548, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %547, metadata !1852, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.label(metadata !1909), !dbg !2335
  %557 = xor i1 %551, true, !dbg !2336
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2336
  br i1 %558, label %570, label %559, !dbg !2336

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2340
  br i1 %560, label %561, label %563, !dbg !2344

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2340
  store i8 39, i8* %562, align 1, !dbg !2340, !tbaa !570
  br label %563, !dbg !2340

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %564, metadata !1859, metadata !DIExpression()), !dbg !1911
  %565 = icmp ult i64 %564, %556, !dbg !2345
  br i1 %565, label %566, label %568, !dbg !2348

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2345
  store i8 39, i8* %567, align 1, !dbg !2345, !tbaa !570
  br label %568, !dbg !2345

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %569, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1867, metadata !DIExpression()), !dbg !1911
  br label %570, !dbg !2349

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2008
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %578, metadata !1859, metadata !DIExpression()), !dbg !1911
  %580 = icmp ult i64 %578, %571, !dbg !2350
  br i1 %580, label %581, label %583, !dbg !2353

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2350
  store i8 %572, i8* %582, align 1, !dbg !2350, !tbaa !570
  br label %583, !dbg !2350

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %584, metadata !1859, metadata !DIExpression()), !dbg !1911
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2354
  call void @llvm.dbg.value(metadata i8 poison, metadata !1866, metadata !DIExpression()), !dbg !1911
  br label %586, !dbg !2355

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2300
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1911
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1915
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2311
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1850, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %593, metadata !1873, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 poison, metadata !1867, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1866, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1865, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %589, metadata !1860, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %588, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %587, metadata !1852, metadata !DIExpression()), !dbg !1911
  %595 = add i64 %593, 1, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %595, metadata !1873, metadata !DIExpression()), !dbg !2000
  br label %132, !dbg !2357, !llvm.loop !2358

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1850, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1866, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 poison, metadata !1865, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 undef, metadata !1860, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 undef, metadata !1859, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 undef, metadata !1852, metadata !DIExpression()), !dbg !1911
  %597 = icmp eq i64 %134, 0, !dbg !2360
  %598 = and i1 %126, %597, !dbg !2362
  %599 = and i1 %598, %119, !dbg !2362
  br i1 %599, label %638, label %600, !dbg !2362

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2363
  %602 = or i1 %119, %601, !dbg !2363
  %603 = xor i1 %136, true, !dbg !2363
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2363
  br i1 %604, label %612, label %605, !dbg !2363

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2365

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2367
  br label %653, !dbg !2369

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2370
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2372
  br i1 %611, label %36, label %612, !dbg !2372

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2373
  %615 = or i1 %614, %613, !dbg !2375
  br i1 %615, label %631, label %616, !dbg !2375

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1861, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %134, metadata !1859, metadata !DIExpression()), !dbg !1911
  %617 = load i8, i8* %116, align 1, !dbg !2376, !tbaa !570
  %618 = icmp eq i8 %617, 0, !dbg !2379
  br i1 %618, label %631, label %619, !dbg !2379

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1861, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %622, metadata !1859, metadata !DIExpression()), !dbg !1911
  %623 = icmp ult i64 %622, %140, !dbg !2380
  br i1 %623, label %624, label %626, !dbg !2383

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2380
  store i8 %620, i8* %625, align 1, !dbg !2380, !tbaa !570
  br label %626, !dbg !2380

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %627, metadata !1859, metadata !DIExpression()), !dbg !1911
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2384
  call void @llvm.dbg.value(metadata i8* %628, metadata !1861, metadata !DIExpression()), !dbg !1911
  %629 = load i8, i8* %628, align 1, !dbg !2376, !tbaa !570
  %630 = icmp eq i8 %629, 0, !dbg !2379
  br i1 %630, label %631, label %619, !dbg !2379, !llvm.loop !2385

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1987
  call void @llvm.dbg.value(metadata i64 %632, metadata !1859, metadata !DIExpression()), !dbg !1911
  %633 = icmp ult i64 %632, %140, !dbg !2387
  br i1 %633, label %634, label %653, !dbg !2389

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2390
  store i8 0, i8* %635, align 1, !dbg !2391, !tbaa !570
  br label %653, !dbg !2390

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1910), !dbg !2217
  %637 = icmp eq i32 %112, 2, !dbg !2392
  br i1 %637, label %643, label %647, !dbg !2218

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1910), !dbg !2217
  %641 = icmp eq i32 %112, 2, !dbg !2392
  %642 = select i1 %118, i32 4, i32 2, !dbg !2218
  br i1 %641, label %643, label %647, !dbg !2218

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2218

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1853, metadata !DIExpression()), !dbg !1911
  %651 = and i32 %5, -3, !dbg !2393
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2394
  br label %653, !dbg !2395

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2396
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2397 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2399 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2403, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %1, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %0, metadata !2407, metadata !DIExpression()) #35, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %1, metadata !2412, metadata !DIExpression()) #35, !dbg !2420
  call void @llvm.dbg.value(metadata i64* null, metadata !2413, metadata !DIExpression()) #35, !dbg !2420
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2414, metadata !DIExpression()) #35, !dbg !2420
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2422
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2422
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2415, metadata !DIExpression()) #35, !dbg !2420
  %6 = tail call i32* @__errno_location() #38, !dbg !2423
  %7 = load i32, i32* %6, align 4, !dbg !2423, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %7, metadata !2416, metadata !DIExpression()) #35, !dbg !2420
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2424
  %9 = load i32, i32* %8, align 4, !dbg !2424, !tbaa !1793
  %10 = or i32 %9, 1, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %10, metadata !2417, metadata !DIExpression()) #35, !dbg !2420
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2426
  %12 = load i32, i32* %11, align 8, !dbg !2426, !tbaa !1742
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2427
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2428
  %15 = load i8*, i8** %14, align 8, !dbg !2428, !tbaa !1815
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2429
  %17 = load i8*, i8** %16, align 8, !dbg !2429, !tbaa !1818
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2430
  %19 = add i64 %18, 1, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %19, metadata !2418, metadata !DIExpression()) #35, !dbg !2420
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #40, !dbg !2432
  call void @llvm.dbg.value(metadata i8* %20, metadata !2419, metadata !DIExpression()) #35, !dbg !2420
  %21 = load i32, i32* %11, align 8, !dbg !2433, !tbaa !1742
  %22 = load i8*, i8** %14, align 8, !dbg !2434, !tbaa !1815
  %23 = load i8*, i8** %16, align 8, !dbg !2435, !tbaa !1818
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2436
  store i32 %7, i32* %6, align 4, !dbg !2437, !tbaa !561
  ret i8* %20, !dbg !2438
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2408 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2407, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %1, metadata !2412, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64* %2, metadata !2413, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2414, metadata !DIExpression()), !dbg !2439
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2440
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2440
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2415, metadata !DIExpression()), !dbg !2439
  %7 = tail call i32* @__errno_location() #38, !dbg !2441
  %8 = load i32, i32* %7, align 4, !dbg !2441, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %8, metadata !2416, metadata !DIExpression()), !dbg !2439
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2442
  %10 = load i32, i32* %9, align 4, !dbg !2442, !tbaa !1793
  %11 = icmp eq i64* %2, null, !dbg !2443
  %12 = zext i1 %11 to i32, !dbg !2443
  %13 = or i32 %10, %12, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %13, metadata !2417, metadata !DIExpression()), !dbg !2439
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2445
  %15 = load i32, i32* %14, align 8, !dbg !2445, !tbaa !1742
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2446
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2447
  %18 = load i8*, i8** %17, align 8, !dbg !2447, !tbaa !1815
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2448
  %20 = load i8*, i8** %19, align 8, !dbg !2448, !tbaa !1818
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2449
  %22 = add i64 %21, 1, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %22, metadata !2418, metadata !DIExpression()), !dbg !2439
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #40, !dbg !2451
  call void @llvm.dbg.value(metadata i8* %23, metadata !2419, metadata !DIExpression()), !dbg !2439
  %24 = load i32, i32* %14, align 8, !dbg !2452, !tbaa !1742
  %25 = load i8*, i8** %17, align 8, !dbg !2453, !tbaa !1815
  %26 = load i8*, i8** %19, align 8, !dbg !2454, !tbaa !1818
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2455
  store i32 %8, i32* %7, align 4, !dbg !2456, !tbaa !561
  br i1 %11, label %29, label %28, !dbg !2457

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2458, !tbaa !2460
  br label %29, !dbg !2461

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2462
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2463 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2468, !tbaa !467
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 1, metadata !2466, metadata !DIExpression()), !dbg !2470
  %2 = load i32, i32* @nslots, align 4, !tbaa !561
  call void @llvm.dbg.value(metadata i32 1, metadata !2466, metadata !DIExpression()), !dbg !2470
  %3 = icmp sgt i32 %2, 1, !dbg !2471
  br i1 %3, label %4, label %6, !dbg !2473

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2471
  br label %10, !dbg !2473

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2474
  %8 = load i8*, i8** %7, align 8, !dbg !2474, !tbaa !2476
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2478
  br i1 %9, label %17, label %16, !dbg !2479

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2466, metadata !DIExpression()), !dbg !2470
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2480
  %13 = load i8*, i8** %12, align 8, !dbg !2480, !tbaa !2476
  tail call void @free(i8* noundef %13) #35, !dbg !2481
  %14 = add nuw nsw i64 %11, 1, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %14, metadata !2466, metadata !DIExpression()), !dbg !2470
  %15 = icmp eq i64 %14, %5, !dbg !2471
  br i1 %15, label %6, label %10, !dbg !2473, !llvm.loop !2483

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2485
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2487, !tbaa !2488
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2489, !tbaa !2476
  br label %17, !dbg !2490

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2491
  br i1 %18, label %21, label %19, !dbg !2493

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2494
  tail call void @free(i8* noundef %20) #35, !dbg !2496
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2497, !tbaa !467
  br label %21, !dbg !2498

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2499, !tbaa !561
  ret void, !dbg !2500
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2501 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2503, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8* %1, metadata !2504, metadata !DIExpression()), !dbg !2505
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2506
  ret i8* %3, !dbg !2507
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2508 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2512, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8* %1, metadata !2513, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %2, metadata !2514, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2515, metadata !DIExpression()), !dbg !2528
  %6 = tail call i32* @__errno_location() #38, !dbg !2529
  %7 = load i32, i32* %6, align 4, !dbg !2529, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %7, metadata !2516, metadata !DIExpression()), !dbg !2528
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2530, !tbaa !467
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2517, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2518, metadata !DIExpression()), !dbg !2528
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2531
  br i1 %9, label %10, label %11, !dbg !2531

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2533
  unreachable, !dbg !2533

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2534, !tbaa !561
  %13 = icmp sgt i32 %12, %0, !dbg !2535
  br i1 %13, label %36, label %14, !dbg !2536

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2537
  call void @llvm.dbg.value(metadata i1 %15, metadata !2519, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2538
  %16 = bitcast i64* %5 to i8*, !dbg !2539
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2539
  %17 = sext i32 %12 to i64, !dbg !2540
  call void @llvm.dbg.value(metadata i64 %17, metadata !2522, metadata !DIExpression()), !dbg !2538
  store i64 %17, i64* %5, align 8, !dbg !2541, !tbaa !2460
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2542
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2542
  %20 = add nuw nsw i32 %0, 1, !dbg !2543
  %21 = sub i32 %20, %12, !dbg !2544
  %22 = sext i32 %21 to i64, !dbg !2545
  call void @llvm.dbg.value(metadata i64* %5, metadata !2522, metadata !DIExpression(DW_OP_deref)), !dbg !2538
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !2546
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2546
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2517, metadata !DIExpression()), !dbg !2528
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2547, !tbaa !467
  br i1 %15, label %25, label %26, !dbg !2548

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2549, !tbaa.struct !2551
  br label %26, !dbg !2552

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2553, !tbaa !561
  %28 = sext i32 %27 to i64, !dbg !2554
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2554
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2555
  %31 = load i64, i64* %5, align 8, !dbg !2556, !tbaa !2460
  call void @llvm.dbg.value(metadata i64 %31, metadata !2522, metadata !DIExpression()), !dbg !2538
  %32 = sub nsw i64 %31, %28, !dbg !2557
  %33 = shl i64 %32, 4, !dbg !2558
  call void @llvm.dbg.value(metadata i8* %30, metadata !1945, metadata !DIExpression()) #35, !dbg !2559
  call void @llvm.dbg.value(metadata i32 0, metadata !1948, metadata !DIExpression()) #35, !dbg !2559
  call void @llvm.dbg.value(metadata i64 %33, metadata !1949, metadata !DIExpression()) #35, !dbg !2559
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !2561
  %34 = load i64, i64* %5, align 8, !dbg !2562, !tbaa !2460
  call void @llvm.dbg.value(metadata i64 %34, metadata !2522, metadata !DIExpression()), !dbg !2538
  %35 = trunc i64 %34 to i32, !dbg !2562
  store i32 %35, i32* @nslots, align 4, !dbg !2563, !tbaa !561
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2564
  br label %36, !dbg !2565

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2528
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2517, metadata !DIExpression()), !dbg !2528
  %38 = zext i32 %0 to i64, !dbg !2566
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2567
  %40 = load i64, i64* %39, align 8, !dbg !2567, !tbaa !2488
  call void @llvm.dbg.value(metadata i64 %40, metadata !2523, metadata !DIExpression()), !dbg !2568
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2569
  %42 = load i8*, i8** %41, align 8, !dbg !2569, !tbaa !2476
  call void @llvm.dbg.value(metadata i8* %42, metadata !2525, metadata !DIExpression()), !dbg !2568
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2570
  %44 = load i32, i32* %43, align 4, !dbg !2570, !tbaa !1793
  %45 = or i32 %44, 1, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %45, metadata !2526, metadata !DIExpression()), !dbg !2568
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2572
  %47 = load i32, i32* %46, align 8, !dbg !2572, !tbaa !1742
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2573
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2574
  %50 = load i8*, i8** %49, align 8, !dbg !2574, !tbaa !1815
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2575
  %52 = load i8*, i8** %51, align 8, !dbg !2575, !tbaa !1818
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %53, metadata !2527, metadata !DIExpression()), !dbg !2568
  %54 = icmp ugt i64 %40, %53, !dbg !2577
  br i1 %54, label %65, label %55, !dbg !2579

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %56, metadata !2523, metadata !DIExpression()), !dbg !2568
  store i64 %56, i64* %39, align 8, !dbg !2582, !tbaa !2488
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2583
  br i1 %57, label %59, label %58, !dbg !2585

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !2586
  br label %59, !dbg !2586

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #40, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %60, metadata !2525, metadata !DIExpression()), !dbg !2568
  store i8* %60, i8** %41, align 8, !dbg !2588, !tbaa !2476
  %61 = load i32, i32* %46, align 8, !dbg !2589, !tbaa !1742
  %62 = load i8*, i8** %49, align 8, !dbg !2590, !tbaa !1815
  %63 = load i8*, i8** %51, align 8, !dbg !2591, !tbaa !1818
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2592
  br label %65, !dbg !2593

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2568
  call void @llvm.dbg.value(metadata i8* %66, metadata !2525, metadata !DIExpression()), !dbg !2568
  store i32 %7, i32* %6, align 4, !dbg !2594, !tbaa !561
  ret i8* %66, !dbg !2595
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2596 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2600, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %1, metadata !2601, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %2, metadata !2602, metadata !DIExpression()), !dbg !2603
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2604
  ret i8* %4, !dbg !2605
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2606 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2503, metadata !DIExpression()) #35, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %0, metadata !2504, metadata !DIExpression()) #35, !dbg !2610
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2612
  ret i8* %2, !dbg !2613
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i64 %1, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 0, metadata !2600, metadata !DIExpression()) #35, !dbg !2621
  call void @llvm.dbg.value(metadata i8* %0, metadata !2601, metadata !DIExpression()) #35, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %1, metadata !2602, metadata !DIExpression()) #35, !dbg !2621
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2623
  ret i8* %3, !dbg !2624
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2625 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %1, metadata !2630, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8* %2, metadata !2631, metadata !DIExpression()), !dbg !2633
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2634
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2634
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2632, metadata !DIExpression()), !dbg !2635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636), !dbg !2639
  call void @llvm.dbg.value(metadata i32 %1, metadata !2640, metadata !DIExpression()) #35, !dbg !2646
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2645, metadata !DIExpression()) #35, !dbg !2648
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2648, !alias.scope !2636
  %6 = icmp eq i32 %1, 10, !dbg !2649
  br i1 %6, label %7, label %8, !dbg !2651

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2652, !noalias !2636
  unreachable, !dbg !2652

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2653
  store i32 %1, i32* %9, align 8, !dbg !2654, !tbaa !1742, !alias.scope !2636
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2655
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2656
  ret i8* %10, !dbg !2657
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2658 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2662, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 %1, metadata !2663, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %2, metadata !2664, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i64 %3, metadata !2665, metadata !DIExpression()), !dbg !2667
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2668
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2668
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2666, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2670), !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1, metadata !2640, metadata !DIExpression()) #35, !dbg !2674
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2645, metadata !DIExpression()) #35, !dbg !2676
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !2676, !alias.scope !2670
  %7 = icmp eq i32 %1, 10, !dbg !2677
  br i1 %7, label %8, label %9, !dbg !2678

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2679, !noalias !2670
  unreachable, !dbg !2679

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2680
  store i32 %1, i32* %10, align 8, !dbg !2681, !tbaa !1742, !alias.scope !2670
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2683
  ret i8* %11, !dbg !2684
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2685 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2629, metadata !DIExpression()) #35, !dbg !2692
  call void @llvm.dbg.value(metadata i32 %0, metadata !2630, metadata !DIExpression()) #35, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %1, metadata !2631, metadata !DIExpression()) #35, !dbg !2692
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2694
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2694
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2632, metadata !DIExpression()) #35, !dbg !2695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2696) #35, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %0, metadata !2640, metadata !DIExpression()) #35, !dbg !2700
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2645, metadata !DIExpression()) #35, !dbg !2702
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !2702, !alias.scope !2696
  %5 = icmp eq i32 %0, 10, !dbg !2703
  br i1 %5, label %6, label %7, !dbg !2704

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2705, !noalias !2696
  unreachable, !dbg !2705

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2706
  store i32 %0, i32* %8, align 8, !dbg !2707, !tbaa !1742, !alias.scope !2696
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2708
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2709
  ret i8* %9, !dbg !2710
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2711 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2715, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %1, metadata !2716, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %2, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 0, metadata !2662, metadata !DIExpression()) #35, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %0, metadata !2663, metadata !DIExpression()) #35, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %1, metadata !2664, metadata !DIExpression()) #35, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %2, metadata !2665, metadata !DIExpression()) #35, !dbg !2719
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2721
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2721
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2666, metadata !DIExpression()) #35, !dbg !2722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2723) #35, !dbg !2726
  call void @llvm.dbg.value(metadata i32 %0, metadata !2640, metadata !DIExpression()) #35, !dbg !2727
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2645, metadata !DIExpression()) #35, !dbg !2729
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2729, !alias.scope !2723
  %6 = icmp eq i32 %0, 10, !dbg !2730
  br i1 %6, label %7, label %8, !dbg !2731

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2732, !noalias !2723
  unreachable, !dbg !2732

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2733
  store i32 %0, i32* %9, align 8, !dbg !2734, !tbaa !1742, !alias.scope !2723
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !2735
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2736
  ret i8* %10, !dbg !2737
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2738 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 %2, metadata !2744, metadata !DIExpression()), !dbg !2746
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2747
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2747
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2745, metadata !DIExpression()), !dbg !2748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2749, !tbaa.struct !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1760, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %2, metadata !1761, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 1, metadata !1762, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %2, metadata !1763, metadata !DIExpression()), !dbg !2751
  %6 = lshr i8 %2, 5, !dbg !2753
  %7 = zext i8 %6 to i64, !dbg !2753
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2754
  call void @llvm.dbg.value(metadata i32* %8, metadata !1764, metadata !DIExpression()), !dbg !2751
  %9 = and i8 %2, 31, !dbg !2755
  %10 = zext i8 %9 to i32, !dbg !2755
  call void @llvm.dbg.value(metadata i32 %10, metadata !1766, metadata !DIExpression()), !dbg !2751
  %11 = load i32, i32* %8, align 4, !dbg !2756, !tbaa !561
  %12 = lshr i32 %11, %10, !dbg !2757
  %13 = and i32 %12, 1, !dbg !2758
  call void @llvm.dbg.value(metadata i32 %13, metadata !1767, metadata !DIExpression()), !dbg !2751
  %14 = xor i32 %13, 1, !dbg !2759
  %15 = shl i32 %14, %10, !dbg !2760
  %16 = xor i32 %15, %11, !dbg !2761
  store i32 %16, i32* %8, align 4, !dbg !2761, !tbaa !561
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2762
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2763
  ret i8* %17, !dbg !2764
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2765 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 %1, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()) #35, !dbg !2772
  call void @llvm.dbg.value(metadata i64 -1, metadata !2743, metadata !DIExpression()) #35, !dbg !2772
  call void @llvm.dbg.value(metadata i8 %1, metadata !2744, metadata !DIExpression()) #35, !dbg !2772
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2774
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2774
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2745, metadata !DIExpression()) #35, !dbg !2775
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2776, !tbaa.struct !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1760, metadata !DIExpression()) #35, !dbg !2777
  call void @llvm.dbg.value(metadata i8 %1, metadata !1761, metadata !DIExpression()) #35, !dbg !2777
  call void @llvm.dbg.value(metadata i32 1, metadata !1762, metadata !DIExpression()) #35, !dbg !2777
  call void @llvm.dbg.value(metadata i8 %1, metadata !1763, metadata !DIExpression()) #35, !dbg !2777
  %5 = lshr i8 %1, 5, !dbg !2779
  %6 = zext i8 %5 to i64, !dbg !2779
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2780
  call void @llvm.dbg.value(metadata i32* %7, metadata !1764, metadata !DIExpression()) #35, !dbg !2777
  %8 = and i8 %1, 31, !dbg !2781
  %9 = zext i8 %8 to i32, !dbg !2781
  call void @llvm.dbg.value(metadata i32 %9, metadata !1766, metadata !DIExpression()) #35, !dbg !2777
  %10 = load i32, i32* %7, align 4, !dbg !2782, !tbaa !561
  %11 = lshr i32 %10, %9, !dbg !2783
  %12 = and i32 %11, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i32 %12, metadata !1767, metadata !DIExpression()) #35, !dbg !2777
  %13 = xor i32 %12, 1, !dbg !2785
  %14 = shl i32 %13, %9, !dbg !2786
  %15 = xor i32 %14, %10, !dbg !2787
  store i32 %15, i32* %7, align 4, !dbg !2787, !tbaa !561
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2788
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2789
  ret i8* %16, !dbg !2790
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2791 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %0, metadata !2769, metadata !DIExpression()) #35, !dbg !2795
  call void @llvm.dbg.value(metadata i8 58, metadata !2770, metadata !DIExpression()) #35, !dbg !2795
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()) #35, !dbg !2797
  call void @llvm.dbg.value(metadata i64 -1, metadata !2743, metadata !DIExpression()) #35, !dbg !2797
  call void @llvm.dbg.value(metadata i8 58, metadata !2744, metadata !DIExpression()) #35, !dbg !2797
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2799
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !2799
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2745, metadata !DIExpression()) #35, !dbg !2800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2801, !tbaa.struct !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1760, metadata !DIExpression()) #35, !dbg !2802
  call void @llvm.dbg.value(metadata i8 58, metadata !1761, metadata !DIExpression()) #35, !dbg !2802
  call void @llvm.dbg.value(metadata i32 1, metadata !1762, metadata !DIExpression()) #35, !dbg !2802
  call void @llvm.dbg.value(metadata i8 58, metadata !1763, metadata !DIExpression()) #35, !dbg !2802
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2804
  call void @llvm.dbg.value(metadata i32* %4, metadata !1764, metadata !DIExpression()) #35, !dbg !2802
  call void @llvm.dbg.value(metadata i32 26, metadata !1766, metadata !DIExpression()) #35, !dbg !2802
  %5 = load i32, i32* %4, align 4, !dbg !2805, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %5, metadata !1767, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !2802
  %6 = or i32 %5, 67108864, !dbg !2806
  store i32 %6, i32* %4, align 4, !dbg !2806, !tbaa !561
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !2807
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !2808
  ret i8* %7, !dbg !2809
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2810 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2812, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %1, metadata !2813, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()) #35, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()) #35, !dbg !2815
  call void @llvm.dbg.value(metadata i8 58, metadata !2744, metadata !DIExpression()) #35, !dbg !2815
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2817
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2817
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2745, metadata !DIExpression()) #35, !dbg !2818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2819, !tbaa.struct !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1760, metadata !DIExpression()) #35, !dbg !2820
  call void @llvm.dbg.value(metadata i8 58, metadata !1761, metadata !DIExpression()) #35, !dbg !2820
  call void @llvm.dbg.value(metadata i32 1, metadata !1762, metadata !DIExpression()) #35, !dbg !2820
  call void @llvm.dbg.value(metadata i8 58, metadata !1763, metadata !DIExpression()) #35, !dbg !2820
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2822
  call void @llvm.dbg.value(metadata i32* %5, metadata !1764, metadata !DIExpression()) #35, !dbg !2820
  call void @llvm.dbg.value(metadata i32 26, metadata !1766, metadata !DIExpression()) #35, !dbg !2820
  %6 = load i32, i32* %5, align 4, !dbg !2823, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %6, metadata !1767, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !2820
  %7 = or i32 %6, 67108864, !dbg !2824
  store i32 %7, i32* %5, align 4, !dbg !2824, !tbaa !561
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2825
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2826
  ret i8* %8, !dbg !2827
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2828 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 %1, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8* %2, metadata !2832, metadata !DIExpression()), !dbg !2834
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2835
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2835
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2833, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 %1, metadata !2640, metadata !DIExpression()) #35, !dbg !2837
  call void @llvm.dbg.value(metadata i32 0, metadata !2645, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2837
  %6 = icmp eq i32 %1, 10, !dbg !2839
  br i1 %6, label %7, label %8, !dbg !2840

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2841, !noalias !2842
  unreachable, !dbg !2841

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2645, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2837
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2845
  store i32 %1, i32* %9, align 8, !dbg !2845, !tbaa.struct !2750
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2845
  %11 = bitcast i32* %10 to i8*, !dbg !2845
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1760, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 58, metadata !1761, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i32 1, metadata !1762, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8 58, metadata !1763, metadata !DIExpression()), !dbg !2846
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2848
  call void @llvm.dbg.value(metadata i32* %12, metadata !1764, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i32 26, metadata !1766, metadata !DIExpression()), !dbg !2846
  %13 = load i32, i32* %12, align 4, !dbg !2849, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %13, metadata !1767, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2846
  %14 = or i32 %13, 67108864, !dbg !2850
  store i32 %14, i32* %12, align 4, !dbg !2850, !tbaa !561
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2851
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2852
  ret i8* %15, !dbg !2853
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2854 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2858, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* %1, metadata !2859, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* %2, metadata !2860, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* %3, metadata !2861, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 %0, metadata !2863, metadata !DIExpression()) #35, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %1, metadata !2868, metadata !DIExpression()) #35, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %2, metadata !2869, metadata !DIExpression()) #35, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %3, metadata !2870, metadata !DIExpression()) #35, !dbg !2873
  call void @llvm.dbg.value(metadata i64 -1, metadata !2871, metadata !DIExpression()) #35, !dbg !2873
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2875
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2875
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2872, metadata !DIExpression()) #35, !dbg !2876
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2877, !tbaa.struct !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1800, metadata !DIExpression()) #35, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %1, metadata !1801, metadata !DIExpression()) #35, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %2, metadata !1802, metadata !DIExpression()) #35, !dbg !2878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1800, metadata !DIExpression()) #35, !dbg !2878
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2880
  store i32 10, i32* %7, align 8, !dbg !2881, !tbaa !1742
  %8 = icmp ne i8* %1, null, !dbg !2882
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2883
  br i1 %10, label %12, label %11, !dbg !2883

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2884
  unreachable, !dbg !2884

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2885
  store i8* %1, i8** %13, align 8, !dbg !2886, !tbaa !1815
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2887
  store i8* %2, i8** %14, align 8, !dbg !2888, !tbaa !1818
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2890
  ret i8* %15, !dbg !2891
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2864 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2863, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %1, metadata !2868, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %2, metadata !2869, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %3, metadata !2870, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %4, metadata !2871, metadata !DIExpression()), !dbg !2892
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2893
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !2893
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2872, metadata !DIExpression()), !dbg !2894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2895, !tbaa.struct !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1800, metadata !DIExpression()) #35, !dbg !2896
  call void @llvm.dbg.value(metadata i8* %1, metadata !1801, metadata !DIExpression()) #35, !dbg !2896
  call void @llvm.dbg.value(metadata i8* %2, metadata !1802, metadata !DIExpression()) #35, !dbg !2896
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1800, metadata !DIExpression()) #35, !dbg !2896
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2898
  store i32 10, i32* %8, align 8, !dbg !2899, !tbaa !1742
  %9 = icmp ne i8* %1, null, !dbg !2900
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2901
  br i1 %11, label %13, label %12, !dbg !2901

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !2902
  unreachable, !dbg !2902

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2903
  store i8* %1, i8** %14, align 8, !dbg !2904, !tbaa !1815
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2905
  store i8* %2, i8** %15, align 8, !dbg !2906, !tbaa !1818
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2907
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !2908
  ret i8* %16, !dbg !2909
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2910 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2914, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8* %1, metadata !2915, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8* %2, metadata !2916, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 0, metadata !2858, metadata !DIExpression()) #35, !dbg !2918
  call void @llvm.dbg.value(metadata i8* %0, metadata !2859, metadata !DIExpression()) #35, !dbg !2918
  call void @llvm.dbg.value(metadata i8* %1, metadata !2860, metadata !DIExpression()) #35, !dbg !2918
  call void @llvm.dbg.value(metadata i8* %2, metadata !2861, metadata !DIExpression()) #35, !dbg !2918
  call void @llvm.dbg.value(metadata i32 0, metadata !2863, metadata !DIExpression()) #35, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()) #35, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %1, metadata !2869, metadata !DIExpression()) #35, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %2, metadata !2870, metadata !DIExpression()) #35, !dbg !2920
  call void @llvm.dbg.value(metadata i64 -1, metadata !2871, metadata !DIExpression()) #35, !dbg !2920
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2922
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2922
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2872, metadata !DIExpression()) #35, !dbg !2923
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2924, !tbaa.struct !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1800, metadata !DIExpression()) #35, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %0, metadata !1801, metadata !DIExpression()) #35, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %1, metadata !1802, metadata !DIExpression()) #35, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1800, metadata !DIExpression()) #35, !dbg !2925
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2927
  store i32 10, i32* %6, align 8, !dbg !2928, !tbaa !1742
  %7 = icmp ne i8* %0, null, !dbg !2929
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2930
  br i1 %9, label %11, label %10, !dbg !2930

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2931
  unreachable, !dbg !2931

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2932
  store i8* %0, i8** %12, align 8, !dbg !2933, !tbaa !1815
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2934
  store i8* %1, i8** %13, align 8, !dbg !2935, !tbaa !1818
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !2936
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2937
  ret i8* %14, !dbg !2938
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2939 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %1, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %2, metadata !2945, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %3, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 0, metadata !2863, metadata !DIExpression()) #35, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()) #35, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %1, metadata !2869, metadata !DIExpression()) #35, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %2, metadata !2870, metadata !DIExpression()) #35, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %3, metadata !2871, metadata !DIExpression()) #35, !dbg !2948
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2950
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2950
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2872, metadata !DIExpression()) #35, !dbg !2951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2952, !tbaa.struct !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1800, metadata !DIExpression()) #35, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %0, metadata !1801, metadata !DIExpression()) #35, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %1, metadata !1802, metadata !DIExpression()) #35, !dbg !2953
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1800, metadata !DIExpression()) #35, !dbg !2953
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2955
  store i32 10, i32* %7, align 8, !dbg !2956, !tbaa !1742
  %8 = icmp ne i8* %0, null, !dbg !2957
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2958
  br i1 %10, label %12, label %11, !dbg !2958

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2959
  unreachable, !dbg !2959

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2960
  store i8* %0, i8** %13, align 8, !dbg !2961, !tbaa !1815
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2962
  store i8* %1, i8** %14, align 8, !dbg !2963, !tbaa !1818
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !2964
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2965
  ret i8* %15, !dbg !2966
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2967 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2971, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %1, metadata !2972, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %2, metadata !2973, metadata !DIExpression()), !dbg !2974
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2975
  ret i8* %4, !dbg !2976
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2977 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %1, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 0, metadata !2971, metadata !DIExpression()) #35, !dbg !2984
  call void @llvm.dbg.value(metadata i8* %0, metadata !2972, metadata !DIExpression()) #35, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %1, metadata !2973, metadata !DIExpression()) #35, !dbg !2984
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !2986
  ret i8* %3, !dbg !2987
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2988 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2992, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8* %1, metadata !2993, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i32 %0, metadata !2971, metadata !DIExpression()) #35, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %1, metadata !2972, metadata !DIExpression()) #35, !dbg !2995
  call void @llvm.dbg.value(metadata i64 -1, metadata !2973, metadata !DIExpression()) #35, !dbg !2995
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !2997
  ret i8* %3, !dbg !2998
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2999 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3003, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 0, metadata !2992, metadata !DIExpression()) #35, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %0, metadata !2993, metadata !DIExpression()) #35, !dbg !3005
  call void @llvm.dbg.value(metadata i32 0, metadata !2971, metadata !DIExpression()) #35, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %0, metadata !2972, metadata !DIExpression()) #35, !dbg !3007
  call void @llvm.dbg.value(metadata i64 -1, metadata !2973, metadata !DIExpression()) #35, !dbg !3007
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3009
  ret i8* %2, !dbg !3010
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gen_tempname_len(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !322 {
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !334, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i32 %1, metadata !335, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i32 %2, metadata !336, metadata !DIExpression()), !dbg !3011
  store i32 %2, i32* %6, align 4, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %3, metadata !337, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %4, metadata !338, metadata !DIExpression()), !dbg !3011
  %7 = bitcast i32* %6 to i8*, !dbg !3012
  %8 = sext i32 %3 to i64, !dbg !3013
  %9 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @gen_tempname_len.tryfunc, i64 0, i64 %8, !dbg !3013
  %10 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8, !dbg !3013, !tbaa !467
  call void @llvm.dbg.value(metadata i32* %6, metadata !336, metadata !DIExpression(DW_OP_deref)), !dbg !3011
  %11 = call i32 @try_tempname_len(i8* noundef %0, i32 noundef %1, i8* noundef nonnull %7, i32 (i8*, i8*)* noundef %10, i64 noundef %4), !dbg !3014
  ret i32 %11, !dbg !3015
}

; Function Attrs: nounwind uwtable
define dso_local i32 @try_tempname_len(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 (i8*, i8*)* nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3016 {
  %6 = alloca %struct.timespec, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %1, metadata !3021, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8* %2, metadata !3022, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, metadata !3023, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %4, metadata !3024, metadata !DIExpression()), !dbg !3044
  %8 = tail call i32* @__errno_location() #38, !dbg !3045
  %9 = load i32, i32* %8, align 4, !dbg !3045, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %9, metadata !3025, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 238328, metadata !3026, metadata !DIExpression()), !dbg !3044
  %10 = bitcast i64* %7 to i8*, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !3046
  call void @llvm.dbg.value(metadata i64 0, metadata !3027, metadata !DIExpression()), !dbg !3044
  store i64 0, i64* %7, align 8, !dbg !3047, !tbaa !2460
  call void @llvm.dbg.value(metadata i32 0, metadata !3032, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 -821457390474406912, metadata !3033, metadata !DIExpression()), !dbg !3044
  %11 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %11, metadata !3035, metadata !DIExpression()), !dbg !3044
  %12 = sext i32 %1 to i64, !dbg !3049
  %13 = add i64 %12, %4, !dbg !3051
  %14 = icmp ult i64 %11, %13, !dbg !3052
  br i1 %14, label %88, label %15, !dbg !3053

15:                                               ; preds = %5
  %16 = sub i64 %11, %13, !dbg !3054
  %17 = getelementptr inbounds i8, i8* %0, i64 %16, !dbg !3055
  %18 = tail call i64 @strspn(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i64 0, i64 0)) #36, !dbg !3056
  %19 = icmp ult i64 %18, %4, !dbg !3057
  br i1 %19, label %88, label %20, !dbg !3058

20:                                               ; preds = %15
  %21 = icmp eq i64 %4, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !3037, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 undef, metadata !3031, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 0, metadata !3032, metadata !DIExpression()), !dbg !3044
  %22 = bitcast %struct.timespec* %6 to i8*
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0, i32 0
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0, i32 1
  br label %28, !dbg !3060

25:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i32 %85, metadata !3037, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %35, metadata !3031, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %34, metadata !3032, metadata !DIExpression()), !dbg !3044
  %26 = icmp ult i32 %30, 238327, !dbg !3061
  %27 = icmp eq i32 %85, 238328, !dbg !3061
  br i1 %27, label %88, label %28, !dbg !3060, !llvm.loop !3062

28:                                               ; preds = %20, %25
  %29 = phi i1 [ true, %20 ], [ %26, %25 ]
  %30 = phi i32 [ 0, %20 ], [ %85, %25 ]
  %31 = phi i64 [ undef, %20 ], [ %35, %25 ]
  %32 = phi i32 [ 0, %20 ], [ %34, %25 ]
  call void @llvm.dbg.value(metadata i32 %30, metadata !3037, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %31, metadata !3031, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %32, metadata !3032, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !3039, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %31, metadata !3031, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %32, metadata !3032, metadata !DIExpression()), !dbg !3044
  br i1 %21, label %33, label %38, !dbg !3065

33:                                               ; preds = %68, %28
  %34 = phi i32 [ %32, %28 ], [ %78, %68 ], !dbg !3044
  %35 = phi i64 [ %31, %28 ], [ %72, %68 ]
  %36 = call i32 %3(i8* noundef %0, i8* noundef %2) #35, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %36, metadata !3043, metadata !DIExpression()), !dbg !3067
  %37 = icmp sgt i32 %36, -1, !dbg !3068
  br i1 %37, label %81, label %82, !dbg !3070

38:                                               ; preds = %28, %68
  %39 = phi i64 [ %79, %68 ], [ 0, %28 ]
  %40 = phi i64 [ %72, %68 ], [ %31, %28 ]
  %41 = phi i32 [ %78, %68 ], [ %32, %28 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3039, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %40, metadata !3031, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %41, metadata !3032, metadata !DIExpression()), !dbg !3044
  %42 = icmp eq i32 %41, 0, !dbg !3071
  br i1 %42, label %43, label %68, !dbg !3075

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8, !dbg !3076, !tbaa !2460
  call void @llvm.dbg.value(metadata i64* %7, metadata !3027, metadata !DIExpression(DW_OP_deref)), !dbg !3044
  call void @llvm.dbg.value(metadata i64* %7, metadata !3078, metadata !DIExpression()) #35, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %44, metadata !3084, metadata !DIExpression()) #35, !dbg !3094
  %45 = call i64 @getrandom(i8* noundef nonnull %10, i64 noundef 8, i32 noundef 1) #35, !dbg !3096
  %46 = icmp eq i64 %45, 8, !dbg !3098
  br i1 %46, label %65, label %50, !dbg !3099

47:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i64* %7, metadata !3027, metadata !DIExpression(DW_OP_deref)), !dbg !3044
  call void @llvm.dbg.value(metadata i64* %7, metadata !3078, metadata !DIExpression()) #35, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %66, metadata !3084, metadata !DIExpression()) #35, !dbg !3094
  %48 = call i64 @getrandom(i8* noundef nonnull %10, i64 noundef 8, i32 noundef 1) #35, !dbg !3096
  %49 = icmp eq i64 %48, 8, !dbg !3098
  br i1 %49, label %65, label %50, !dbg !3099, !llvm.loop !3100

50:                                               ; preds = %47, %43
  %51 = phi i64 [ %44, %43 ], [ %66, %47 ], !dbg !3076
  call void @llvm.dbg.value(metadata i64 %51, metadata !3085, metadata !DIExpression()) #35, !dbg !3094
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #35, !dbg !3103
  call void @llvm.dbg.declare(metadata %struct.timespec* %6, metadata !3086, metadata !DIExpression()) #35, !dbg !3104
  %52 = call i32 @clock_gettime(i32 noundef 0, %struct.timespec* noundef nonnull %6) #35, !dbg !3105
  %53 = load i64, i64* %23, align 8, !dbg !3106, !tbaa !3107
  call void @llvm.dbg.value(metadata i64 %51, metadata !3109, metadata !DIExpression()) #35, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %53, metadata !3114, metadata !DIExpression()) #35, !dbg !3115
  %54 = mul i64 %51, 2862933555777941757, !dbg !3117
  %55 = add i64 %54, 3037000493, !dbg !3118
  %56 = xor i64 %53, %55, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %56, metadata !3085, metadata !DIExpression()) #35, !dbg !3094
  %57 = load i64, i64* %24, align 8, !dbg !3120, !tbaa !3121
  call void @llvm.dbg.value(metadata i64 %56, metadata !3109, metadata !DIExpression()) #35, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %57, metadata !3114, metadata !DIExpression()) #35, !dbg !3122
  %58 = mul i64 %56, 2862933555777941757, !dbg !3124
  %59 = add i64 %58, 3037000493, !dbg !3125
  %60 = xor i64 %59, %57, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %60, metadata !3085, metadata !DIExpression()) #35, !dbg !3094
  %61 = call i64 @clock() #35, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %60, metadata !3109, metadata !DIExpression()) #35, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %61, metadata !3114, metadata !DIExpression()) #35, !dbg !3128
  %62 = mul i64 %60, 2862933555777941757, !dbg !3130
  %63 = add i64 %62, 3037000493, !dbg !3131
  %64 = xor i64 %63, %61, !dbg !3132
  store i64 %64, i64* %7, align 8, !dbg !3133, !tbaa !2460
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #35, !dbg !3134
  call void @llvm.dbg.value(metadata i64 undef, metadata !3027, metadata !DIExpression()), !dbg !3044
  br label %68, !dbg !3101

65:                                               ; preds = %43, %47
  %66 = load i64, i64* %7, align 8, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %66, metadata !3027, metadata !DIExpression()), !dbg !3044
  %67 = icmp ugt i64 %66, -821457390474406913, !dbg !3135
  br i1 %67, label %47, label %68, !dbg !3101, !llvm.loop !3100

68:                                               ; preds = %65, %50, %38
  %69 = phi i32 [ %41, %38 ], [ 10, %50 ], [ 10, %65 ], !dbg !3044
  %70 = phi i64 [ %40, %38 ], [ %64, %50 ], [ %66, %65 ]
  call void @llvm.dbg.value(metadata i64 %70, metadata !3031, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %69, metadata !3032, metadata !DIExpression()), !dbg !3044
  %71 = freeze i64 %70
  %72 = udiv i64 %71, 62, !dbg !3136
  %73 = mul i64 %72, 62
  %74 = sub i64 %71, %73
  %75 = getelementptr inbounds [63 x i8], [63 x i8]* @letters, i64 0, i64 %74, !dbg !3137
  %76 = load i8, i8* %75, align 1, !dbg !3137, !tbaa !570
  %77 = getelementptr inbounds i8, i8* %17, i64 %39, !dbg !3138
  store i8 %76, i8* %77, align 1, !dbg !3139, !tbaa !570
  call void @llvm.dbg.value(metadata i64 %72, metadata !3031, metadata !DIExpression()), !dbg !3044
  %78 = add nsw i32 %69, -1, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %78, metadata !3032, metadata !DIExpression()), !dbg !3044
  %79 = add nuw i64 %39, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %79, metadata !3039, metadata !DIExpression()), !dbg !3064
  %80 = icmp eq i64 %79, %4, !dbg !3142
  br i1 %80, label %33, label %38, !dbg !3065, !llvm.loop !3143

81:                                               ; preds = %33
  store i32 %9, i32* %8, align 4, !dbg !3145, !tbaa !561
  br label %86

82:                                               ; preds = %33
  %83 = load i32, i32* %8, align 4, !dbg !3147, !tbaa !561
  %84 = icmp eq i32 %83, 17, !dbg !3149
  %85 = add nuw nsw i32 %30, 1, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %85, metadata !3037, metadata !DIExpression()), !dbg !3059
  br i1 %84, label %25, label %86

86:                                               ; preds = %82, %81
  %87 = phi i32 [ %36, %81 ], [ -1, %82 ]
  br i1 %29, label %90, label %88

88:                                               ; preds = %25, %86, %5, %15
  %89 = phi i32 [ 22, %15 ], [ 22, %5 ], [ 17, %86 ], [ 17, %25 ]
  store i32 %89, i32* %8, align 4, !dbg !3044, !tbaa !561
  br label %90, !dbg !3151

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ -1, %88 ], !dbg !3044
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !3151
  ret i32 %91, !dbg !3151
}

declare !dbg !3152 i64 @getrandom(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3158 i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3166 i64 @clock() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_file(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #20 !dbg !3172 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3174, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !3175, metadata !DIExpression()), !dbg !3177
  %3 = bitcast i8* %1 to i32*, !dbg !3178
  call void @llvm.dbg.value(metadata i32* %3, metadata !3176, metadata !DIExpression()), !dbg !3177
  %4 = load i32, i32* %3, align 4, !dbg !3179, !tbaa !561
  %5 = and i32 %4, -196, !dbg !3180
  %6 = or i32 %5, 194, !dbg !3181
  %7 = tail call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef %6, i32 noundef 384) #35, !dbg !3182
  ret i32 %7, !dbg !3183
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_dir(i8* nocapture noundef readonly %0, i8* nocapture noundef readnone %1) #20 !dbg !3184 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i8* %1, metadata !3187, metadata !DIExpression()), !dbg !3188
  %3 = tail call i32 @mkdir(i8* noundef %0, i32 noundef 448) #35, !dbg !3189
  ret i32 %3, !dbg !3190
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @try_nocreate(i8* nocapture noundef readonly %0, i8* nocapture noundef readnone %1) #20 !dbg !3191 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3193, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i8* %1, metadata !3194, metadata !DIExpression()), !dbg !3224
  %4 = bitcast %struct.stat* %3 to i8*, !dbg !3225
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #35, !dbg !3225
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !3195, metadata !DIExpression()), !dbg !3226
  %5 = call i32 @lstat(i8* noundef %0, %struct.stat* noundef nonnull %3) #35, !dbg !3227
  %6 = icmp eq i32 %5, 0, !dbg !3229
  %7 = tail call i32* @__errno_location() #38, !dbg !3230
  br i1 %6, label %11, label %8, !dbg !3231

8:                                                ; preds = %2
  %9 = load i32, i32* %7, align 4, !dbg !3232, !tbaa !561
  %10 = icmp eq i32 %9, 75, !dbg !3233
  br i1 %10, label %11, label %12, !dbg !3234

11:                                               ; preds = %2, %8
  store i32 17, i32* %7, align 4, !dbg !3235, !tbaa !561
  br label %12, !dbg !3235

12:                                               ; preds = %11, %8
  %13 = load i32, i32* %7, align 4, !dbg !3236, !tbaa !561
  %14 = icmp ne i32 %13, 2, !dbg !3237
  %15 = sext i1 %14 to i32, !dbg !3236
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #35, !dbg !3238
  ret i32 %15, !dbg !3239
}

; Function Attrs: nofree nounwind
declare !dbg !3240 noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3246 noundef i32 @mkdir(i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !3249 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define dso_local i32 @gen_tempname(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !3252 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3256, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 %1, metadata !3257, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 %2, metadata !3258, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 %3, metadata !3259, metadata !DIExpression()), !dbg !3260
  %6 = bitcast i32* %5 to i8*, !dbg !3261
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6), !dbg !3261
  call void @llvm.dbg.value(metadata i8* %0, metadata !334, metadata !DIExpression()) #35, !dbg !3261
  call void @llvm.dbg.value(metadata i32 %1, metadata !335, metadata !DIExpression()) #35, !dbg !3261
  call void @llvm.dbg.value(metadata i32 %2, metadata !336, metadata !DIExpression()) #35, !dbg !3261
  store i32 %2, i32* %5, align 4, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %3, metadata !337, metadata !DIExpression()) #35, !dbg !3261
  call void @llvm.dbg.value(metadata i64 6, metadata !338, metadata !DIExpression()) #35, !dbg !3261
  %7 = sext i32 %3 to i64, !dbg !3263
  %8 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @gen_tempname_len.tryfunc, i64 0, i64 %7, !dbg !3263
  %9 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8, !dbg !3263, !tbaa !467
  call void @llvm.dbg.value(metadata i32* %5, metadata !336, metadata !DIExpression(DW_OP_deref)) #35, !dbg !3261
  %10 = call i32 @try_tempname_len(i8* noundef %0, i32 noundef %1, i8* noundef nonnull %6, i32 (i8*, i8*)* noundef %9, i64 noundef 6) #35, !dbg !3264
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6), !dbg !3265
  ret i32 %10, !dbg !3266
}

; Function Attrs: nounwind uwtable
define dso_local i32 @try_tempname(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 (i8*, i8*)* nocapture noundef readonly %3) local_unnamed_addr #12 !dbg !3267 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3271, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 %1, metadata !3272, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i8* %2, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, metadata !3274, metadata !DIExpression()), !dbg !3275
  %5 = tail call i32 @try_tempname_len(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 (i8*, i8*)* noundef %3, i64 noundef 6), !dbg !3276
  ret i32 %5, !dbg !3277
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3278 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3317, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* %1, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* %2, metadata !3319, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* %3, metadata !3320, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8** %4, metadata !3321, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %5, metadata !3322, metadata !DIExpression()), !dbg !3323
  %7 = icmp eq i8* %1, null, !dbg !3324
  br i1 %7, label %10, label %8, !dbg !3326

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3327
  br label %12, !dbg !3327

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.128, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3328
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.130, i64 0, i64 0), i32 noundef 5) #35, !dbg !3329
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3329
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.131, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3330
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.132, i64 0, i64 0), i32 noundef 5) #35, !dbg !3331
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.133, i64 0, i64 0)) #35, !dbg !3331
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.131, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3332
  switch i64 %5, label %127 [
    i64 0, label %147
    i64 1, label %19
    i64 2, label %23
    i64 3, label %29
    i64 4, label %37
    i64 5, label %47
    i64 6, label %59
    i64 7, label %73
    i64 8, label %89
    i64 9, label %107
  ], !dbg !3333

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.134, i64 0, i64 0), i32 noundef 5) #35, !dbg !3334
  %21 = load i8*, i8** %4, align 8, !dbg !3334, !tbaa !467
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3334
  br label %147, !dbg !3336

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.135, i64 0, i64 0), i32 noundef 5) #35, !dbg !3337
  %25 = load i8*, i8** %4, align 8, !dbg !3337, !tbaa !467
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3337
  %27 = load i8*, i8** %26, align 8, !dbg !3337, !tbaa !467
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3337
  br label %147, !dbg !3338

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.136, i64 0, i64 0), i32 noundef 5) #35, !dbg !3339
  %31 = load i8*, i8** %4, align 8, !dbg !3339, !tbaa !467
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3339
  %33 = load i8*, i8** %32, align 8, !dbg !3339, !tbaa !467
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3339
  %35 = load i8*, i8** %34, align 8, !dbg !3339, !tbaa !467
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3339
  br label %147, !dbg !3340

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.137, i64 0, i64 0), i32 noundef 5) #35, !dbg !3341
  %39 = load i8*, i8** %4, align 8, !dbg !3341, !tbaa !467
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3341
  %41 = load i8*, i8** %40, align 8, !dbg !3341, !tbaa !467
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3341
  %43 = load i8*, i8** %42, align 8, !dbg !3341, !tbaa !467
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3341
  %45 = load i8*, i8** %44, align 8, !dbg !3341, !tbaa !467
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3341
  br label %147, !dbg !3342

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.138, i64 0, i64 0), i32 noundef 5) #35, !dbg !3343
  %49 = load i8*, i8** %4, align 8, !dbg !3343, !tbaa !467
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3343
  %51 = load i8*, i8** %50, align 8, !dbg !3343, !tbaa !467
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3343
  %53 = load i8*, i8** %52, align 8, !dbg !3343, !tbaa !467
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3343
  %55 = load i8*, i8** %54, align 8, !dbg !3343, !tbaa !467
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3343
  %57 = load i8*, i8** %56, align 8, !dbg !3343, !tbaa !467
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3343
  br label %147, !dbg !3344

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.139, i64 0, i64 0), i32 noundef 5) #35, !dbg !3345
  %61 = load i8*, i8** %4, align 8, !dbg !3345, !tbaa !467
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3345
  %63 = load i8*, i8** %62, align 8, !dbg !3345, !tbaa !467
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3345
  %65 = load i8*, i8** %64, align 8, !dbg !3345, !tbaa !467
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3345
  %67 = load i8*, i8** %66, align 8, !dbg !3345, !tbaa !467
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3345
  %69 = load i8*, i8** %68, align 8, !dbg !3345, !tbaa !467
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3345
  %71 = load i8*, i8** %70, align 8, !dbg !3345, !tbaa !467
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3345
  br label %147, !dbg !3346

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.140, i64 0, i64 0), i32 noundef 5) #35, !dbg !3347
  %75 = load i8*, i8** %4, align 8, !dbg !3347, !tbaa !467
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3347
  %77 = load i8*, i8** %76, align 8, !dbg !3347, !tbaa !467
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3347
  %79 = load i8*, i8** %78, align 8, !dbg !3347, !tbaa !467
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3347
  %81 = load i8*, i8** %80, align 8, !dbg !3347, !tbaa !467
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3347
  %83 = load i8*, i8** %82, align 8, !dbg !3347, !tbaa !467
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3347
  %85 = load i8*, i8** %84, align 8, !dbg !3347, !tbaa !467
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3347
  %87 = load i8*, i8** %86, align 8, !dbg !3347, !tbaa !467
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3347
  br label %147, !dbg !3348

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.141, i64 0, i64 0), i32 noundef 5) #35, !dbg !3349
  %91 = load i8*, i8** %4, align 8, !dbg !3349, !tbaa !467
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3349
  %93 = load i8*, i8** %92, align 8, !dbg !3349, !tbaa !467
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3349
  %95 = load i8*, i8** %94, align 8, !dbg !3349, !tbaa !467
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3349
  %97 = load i8*, i8** %96, align 8, !dbg !3349, !tbaa !467
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3349
  %99 = load i8*, i8** %98, align 8, !dbg !3349, !tbaa !467
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3349
  %101 = load i8*, i8** %100, align 8, !dbg !3349, !tbaa !467
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3349
  %103 = load i8*, i8** %102, align 8, !dbg !3349, !tbaa !467
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3349
  %105 = load i8*, i8** %104, align 8, !dbg !3349, !tbaa !467
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3349
  br label %147, !dbg !3350

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.142, i64 0, i64 0), i32 noundef 5) #35, !dbg !3351
  %109 = load i8*, i8** %4, align 8, !dbg !3351, !tbaa !467
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3351
  %111 = load i8*, i8** %110, align 8, !dbg !3351, !tbaa !467
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3351
  %113 = load i8*, i8** %112, align 8, !dbg !3351, !tbaa !467
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3351
  %115 = load i8*, i8** %114, align 8, !dbg !3351, !tbaa !467
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3351
  %117 = load i8*, i8** %116, align 8, !dbg !3351, !tbaa !467
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3351
  %119 = load i8*, i8** %118, align 8, !dbg !3351, !tbaa !467
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3351
  %121 = load i8*, i8** %120, align 8, !dbg !3351, !tbaa !467
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3351
  %123 = load i8*, i8** %122, align 8, !dbg !3351, !tbaa !467
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3351
  %125 = load i8*, i8** %124, align 8, !dbg !3351, !tbaa !467
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3351
  br label %147, !dbg !3352

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.143, i64 0, i64 0), i32 noundef 5) #35, !dbg !3353
  %129 = load i8*, i8** %4, align 8, !dbg !3353, !tbaa !467
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3353
  %131 = load i8*, i8** %130, align 8, !dbg !3353, !tbaa !467
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3353
  %133 = load i8*, i8** %132, align 8, !dbg !3353, !tbaa !467
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3353
  %135 = load i8*, i8** %134, align 8, !dbg !3353, !tbaa !467
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3353
  %137 = load i8*, i8** %136, align 8, !dbg !3353, !tbaa !467
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3353
  %139 = load i8*, i8** %138, align 8, !dbg !3353, !tbaa !467
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3353
  %141 = load i8*, i8** %140, align 8, !dbg !3353, !tbaa !467
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3353
  %143 = load i8*, i8** %142, align 8, !dbg !3353, !tbaa !467
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3353
  %145 = load i8*, i8** %144, align 8, !dbg !3353, !tbaa !467
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3353
  br label %147, !dbg !3354

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3355
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3356 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3360, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %1, metadata !3361, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %2, metadata !3362, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %3, metadata !3363, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8** %4, metadata !3364, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i64 0, metadata !3365, metadata !DIExpression()), !dbg !3366
  br label %6, !dbg !3367

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3369
  call void @llvm.dbg.value(metadata i64 %7, metadata !3365, metadata !DIExpression()), !dbg !3366
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3370
  %9 = load i8*, i8** %8, align 8, !dbg !3370, !tbaa !467
  %10 = icmp eq i8* %9, null, !dbg !3372
  %11 = add i64 %7, 1, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %11, metadata !3365, metadata !DIExpression()), !dbg !3366
  br i1 %10, label %12, label %6, !dbg !3372, !llvm.loop !3374

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3376
  ret void, !dbg !3377
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3378 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3393, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8* %1, metadata !3394, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8* %2, metadata !3395, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8* %3, metadata !3396, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3397, metadata !DIExpression()), !dbg !3402
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3403
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3403
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3399, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 0, metadata !3398, metadata !DIExpression()), !dbg !3401
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3398, metadata !DIExpression()), !dbg !3401
  %11 = load i32, i32* %8, align 8, !dbg !3405
  %12 = icmp sgt i32 %11, -1, !dbg !3405
  br i1 %12, label %20, label %13, !dbg !3405

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3405
  store i32 %14, i32* %8, align 8, !dbg !3405
  %15 = icmp ult i32 %11, -7, !dbg !3405
  br i1 %15, label %16, label %20, !dbg !3405

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3405
  %18 = sext i32 %11 to i64, !dbg !3405
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3405
  br label %24, !dbg !3405

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3405
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3405
  store i8* %23, i8** %10, align 8, !dbg !3405
  br label %24, !dbg !3405

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3405
  %28 = load i8*, i8** %27, align 8, !dbg !3405
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3408
  store i8* %28, i8** %29, align 8, !dbg !3409, !tbaa !467
  %30 = icmp eq i8* %28, null, !dbg !3410
  br i1 %30, label %210, label %31, !dbg !3411

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 1, metadata !3398, metadata !DIExpression()), !dbg !3401
  %32 = icmp sgt i32 %25, -1, !dbg !3405
  br i1 %32, label %40, label %33, !dbg !3405

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3405
  store i32 %34, i32* %8, align 8, !dbg !3405
  %35 = icmp ult i32 %25, -7, !dbg !3405
  br i1 %35, label %36, label %40, !dbg !3405

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3405
  %38 = sext i32 %25 to i64, !dbg !3405
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3405
  br label %44, !dbg !3405

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3405
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3405
  store i8* %43, i8** %10, align 8, !dbg !3405
  br label %44, !dbg !3405

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3405
  %48 = load i8*, i8** %47, align 8, !dbg !3405
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3408
  store i8* %48, i8** %49, align 8, !dbg !3409, !tbaa !467
  %50 = icmp eq i8* %48, null, !dbg !3410
  br i1 %50, label %210, label %51, !dbg !3411

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 2, metadata !3398, metadata !DIExpression()), !dbg !3401
  %52 = icmp sgt i32 %45, -1, !dbg !3405
  br i1 %52, label %60, label %53, !dbg !3405

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3405
  store i32 %54, i32* %8, align 8, !dbg !3405
  %55 = icmp ult i32 %45, -7, !dbg !3405
  br i1 %55, label %56, label %60, !dbg !3405

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3405
  %58 = sext i32 %45 to i64, !dbg !3405
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3405
  br label %64, !dbg !3405

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3405
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3405
  store i8* %63, i8** %10, align 8, !dbg !3405
  br label %64, !dbg !3405

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3405
  %68 = load i8*, i8** %67, align 8, !dbg !3405
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3408
  store i8* %68, i8** %69, align 8, !dbg !3409, !tbaa !467
  %70 = icmp eq i8* %68, null, !dbg !3410
  br i1 %70, label %210, label %71, !dbg !3411

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 3, metadata !3398, metadata !DIExpression()), !dbg !3401
  %72 = icmp sgt i32 %65, -1, !dbg !3405
  br i1 %72, label %80, label %73, !dbg !3405

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3405
  store i32 %74, i32* %8, align 8, !dbg !3405
  %75 = icmp ult i32 %65, -7, !dbg !3405
  br i1 %75, label %76, label %80, !dbg !3405

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3405
  %78 = sext i32 %65 to i64, !dbg !3405
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3405
  br label %84, !dbg !3405

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3405
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3405
  store i8* %83, i8** %10, align 8, !dbg !3405
  br label %84, !dbg !3405

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3405
  %88 = load i8*, i8** %87, align 8, !dbg !3405
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3408
  store i8* %88, i8** %89, align 8, !dbg !3409, !tbaa !467
  %90 = icmp eq i8* %88, null, !dbg !3410
  br i1 %90, label %210, label %91, !dbg !3411

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 4, metadata !3398, metadata !DIExpression()), !dbg !3401
  %92 = icmp sgt i32 %85, -1, !dbg !3405
  br i1 %92, label %100, label %93, !dbg !3405

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3405
  store i32 %94, i32* %8, align 8, !dbg !3405
  %95 = icmp ult i32 %85, -7, !dbg !3405
  br i1 %95, label %96, label %100, !dbg !3405

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3405
  %98 = sext i32 %85 to i64, !dbg !3405
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3405
  br label %104, !dbg !3405

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3405
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3405
  store i8* %103, i8** %10, align 8, !dbg !3405
  br label %104, !dbg !3405

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3405
  %108 = load i8*, i8** %107, align 8, !dbg !3405
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3408
  store i8* %108, i8** %109, align 8, !dbg !3409, !tbaa !467
  %110 = icmp eq i8* %108, null, !dbg !3410
  br i1 %110, label %210, label %111, !dbg !3411

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 5, metadata !3398, metadata !DIExpression()), !dbg !3401
  %112 = icmp sgt i32 %105, -1, !dbg !3405
  br i1 %112, label %120, label %113, !dbg !3405

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3405
  store i32 %114, i32* %8, align 8, !dbg !3405
  %115 = icmp ult i32 %105, -7, !dbg !3405
  br i1 %115, label %116, label %120, !dbg !3405

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3405
  %118 = sext i32 %105 to i64, !dbg !3405
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3405
  br label %124, !dbg !3405

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3405
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3405
  store i8* %123, i8** %10, align 8, !dbg !3405
  br label %124, !dbg !3405

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3405
  %128 = load i8*, i8** %127, align 8, !dbg !3405
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3408
  store i8* %128, i8** %129, align 8, !dbg !3409, !tbaa !467
  %130 = icmp eq i8* %128, null, !dbg !3410
  br i1 %130, label %210, label %131, !dbg !3411

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 6, metadata !3398, metadata !DIExpression()), !dbg !3401
  %132 = icmp sgt i32 %125, -1, !dbg !3405
  br i1 %132, label %140, label %133, !dbg !3405

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3405
  store i32 %134, i32* %8, align 8, !dbg !3405
  %135 = icmp ult i32 %125, -7, !dbg !3405
  br i1 %135, label %136, label %140, !dbg !3405

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3405
  %138 = sext i32 %125 to i64, !dbg !3405
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3405
  br label %144, !dbg !3405

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3405
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3405
  store i8* %143, i8** %10, align 8, !dbg !3405
  br label %144, !dbg !3405

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3405
  %148 = load i8*, i8** %147, align 8, !dbg !3405
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3408
  store i8* %148, i8** %149, align 8, !dbg !3409, !tbaa !467
  %150 = icmp eq i8* %148, null, !dbg !3410
  br i1 %150, label %210, label %151, !dbg !3411

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 7, metadata !3398, metadata !DIExpression()), !dbg !3401
  %152 = icmp sgt i32 %145, -1, !dbg !3405
  br i1 %152, label %160, label %153, !dbg !3405

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3405
  store i32 %154, i32* %8, align 8, !dbg !3405
  %155 = icmp ult i32 %145, -7, !dbg !3405
  br i1 %155, label %156, label %160, !dbg !3405

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3405
  %158 = sext i32 %145 to i64, !dbg !3405
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3405
  br label %164, !dbg !3405

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3405
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3405
  store i8* %163, i8** %10, align 8, !dbg !3405
  br label %164, !dbg !3405

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3405
  %168 = load i8*, i8** %167, align 8, !dbg !3405
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3408
  store i8* %168, i8** %169, align 8, !dbg !3409, !tbaa !467
  %170 = icmp eq i8* %168, null, !dbg !3410
  br i1 %170, label %210, label %171, !dbg !3411

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 8, metadata !3398, metadata !DIExpression()), !dbg !3401
  %172 = icmp sgt i32 %165, -1, !dbg !3405
  br i1 %172, label %180, label %173, !dbg !3405

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3405
  store i32 %174, i32* %8, align 8, !dbg !3405
  %175 = icmp ult i32 %165, -7, !dbg !3405
  br i1 %175, label %176, label %180, !dbg !3405

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3405
  %178 = sext i32 %165 to i64, !dbg !3405
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3405
  br label %184, !dbg !3405

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3405
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3405
  store i8* %183, i8** %10, align 8, !dbg !3405
  br label %184, !dbg !3405

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3405
  %188 = load i8*, i8** %187, align 8, !dbg !3405
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3408
  store i8* %188, i8** %189, align 8, !dbg !3409, !tbaa !467
  %190 = icmp eq i8* %188, null, !dbg !3410
  br i1 %190, label %210, label %191, !dbg !3411

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 9, metadata !3398, metadata !DIExpression()), !dbg !3401
  %192 = icmp sgt i32 %185, -1, !dbg !3405
  br i1 %192, label %200, label %193, !dbg !3405

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3405
  store i32 %194, i32* %8, align 8, !dbg !3405
  %195 = icmp ult i32 %185, -7, !dbg !3405
  br i1 %195, label %196, label %200, !dbg !3405

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3405
  %198 = sext i32 %185 to i64, !dbg !3405
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3405
  br label %203, !dbg !3405

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3405
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3405
  store i8* %202, i8** %10, align 8, !dbg !3405
  br label %203, !dbg !3405

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3405
  %206 = load i8*, i8** %205, align 8, !dbg !3405
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3408
  store i8* %206, i8** %207, align 8, !dbg !3409, !tbaa !467
  %208 = icmp eq i8* %206, null, !dbg !3410
  %209 = select i1 %208, i64 9, i64 10, !dbg !3411
  br label %210, !dbg !3411

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3412
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3413
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3414
  ret void, !dbg !3414
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3415 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3419, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8* %2, metadata !3421, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8* %3, metadata !3422, metadata !DIExpression()), !dbg !3424
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3425
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3425
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3423, metadata !DIExpression()), !dbg !3426
  call void @llvm.va_start(i8* nonnull %7), !dbg !3427
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3428
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3428
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3428, !tbaa.struct !1157
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3428
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3428
  call void @llvm.va_end(i8* nonnull %7), !dbg !3429
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3430
  ret void, !dbg !3430
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3431 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3432, !tbaa !467
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.131, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3432
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.148, i64 0, i64 0), i32 noundef 5) #35, !dbg !3433
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.149, i64 0, i64 0)) #35, !dbg !3433
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.150, i64 0, i64 0), i32 noundef 5) #35, !dbg !3434
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.151, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.152, i64 0, i64 0)) #35, !dbg !3434
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.153, i64 0, i64 0), i32 noundef 5) #35, !dbg !3435
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.154, i64 0, i64 0)) #35, !dbg !3435
  ret void, !dbg !3436
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3437 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3442, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %2, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i8* %0, metadata !3446, metadata !DIExpression()) #35, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()) #35, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %2, metadata !3450, metadata !DIExpression()) #35, !dbg !3451
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3453
  call void @llvm.dbg.value(metadata i8* %4, metadata !3454, metadata !DIExpression()) #35, !dbg !3459
  %5 = icmp eq i8* %4, null, !dbg !3461
  br i1 %5, label %6, label %7, !dbg !3463

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3464
  unreachable, !dbg !3464

7:                                                ; preds = %3
  ret i8* %4, !dbg !3465
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3447 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3446, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %2, metadata !3450, metadata !DIExpression()), !dbg !3466
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %4, metadata !3454, metadata !DIExpression()) #35, !dbg !3468
  %5 = icmp eq i8* %4, null, !dbg !3470
  br i1 %5, label %6, label %7, !dbg !3471

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3472
  unreachable, !dbg !3472

7:                                                ; preds = %3
  ret i8* %4, !dbg !3473
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3474 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3478, metadata !DIExpression()), !dbg !3479
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3480
  call void @llvm.dbg.value(metadata i8* %2, metadata !3454, metadata !DIExpression()) #35, !dbg !3481
  %3 = icmp eq i8* %2, null, !dbg !3483
  br i1 %3, label %4, label %5, !dbg !3484

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3485
  unreachable, !dbg !3485

5:                                                ; preds = %1
  ret i8* %2, !dbg !3486
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3487 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3491, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %0, metadata !3493, metadata !DIExpression()) #35, !dbg !3497
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %2, metadata !3454, metadata !DIExpression()) #35, !dbg !3500
  %3 = icmp eq i8* %2, null, !dbg !3502
  br i1 %3, label %4, label %5, !dbg !3503

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3504
  unreachable, !dbg !3504

5:                                                ; preds = %1
  ret i8* %2, !dbg !3505
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3506 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3510, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 %0, metadata !3478, metadata !DIExpression()) #35, !dbg !3512
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3514
  call void @llvm.dbg.value(metadata i8* %2, metadata !3454, metadata !DIExpression()) #35, !dbg !3515
  %3 = icmp eq i8* %2, null, !dbg !3517
  br i1 %3, label %4, label %5, !dbg !3518

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3519
  unreachable, !dbg !3519

5:                                                ; preds = %1
  ret i8* %2, !dbg !3520
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3521 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3525, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %1, metadata !3526, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8* %0, metadata !3528, metadata !DIExpression()) #35, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %1, metadata !3532, metadata !DIExpression()) #35, !dbg !3533
  %3 = icmp eq i64 %1, 0, !dbg !3535
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3535
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %5, metadata !3454, metadata !DIExpression()) #35, !dbg !3537
  %6 = icmp eq i8* %5, null, !dbg !3539
  br i1 %6, label %7, label %8, !dbg !3540

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3541
  unreachable, !dbg !3541

8:                                                ; preds = %2
  ret i8* %5, !dbg !3542
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3543 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3547, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 %1, metadata !3548, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i8* %0, metadata !3550, metadata !DIExpression()) #35, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %1, metadata !3553, metadata !DIExpression()) #35, !dbg !3554
  call void @llvm.dbg.value(metadata i8* %0, metadata !3528, metadata !DIExpression()) #35, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %1, metadata !3532, metadata !DIExpression()) #35, !dbg !3556
  %3 = icmp eq i64 %1, 0, !dbg !3558
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3558
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3559
  call void @llvm.dbg.value(metadata i8* %5, metadata !3454, metadata !DIExpression()) #35, !dbg !3560
  %6 = icmp eq i8* %5, null, !dbg !3562
  br i1 %6, label %7, label %8, !dbg !3563

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3564
  unreachable, !dbg !3564

8:                                                ; preds = %2
  ret i8* %5, !dbg !3565
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3570, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %1, metadata !3571, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %2, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i8* %0, metadata !3574, metadata !DIExpression()) #35, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %1, metadata !3577, metadata !DIExpression()) #35, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %2, metadata !3578, metadata !DIExpression()) #35, !dbg !3579
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %4, metadata !3454, metadata !DIExpression()) #35, !dbg !3582
  %5 = icmp eq i8* %4, null, !dbg !3584
  br i1 %5, label %6, label %7, !dbg !3585

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3586
  unreachable, !dbg !3586

7:                                                ; preds = %3
  ret i8* %4, !dbg !3587
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3588 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3592, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i64 %1, metadata !3593, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i8* null, metadata !3446, metadata !DIExpression()) #35, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %0, metadata !3449, metadata !DIExpression()) #35, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()) #35, !dbg !3595
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %3, metadata !3454, metadata !DIExpression()) #35, !dbg !3598
  %4 = icmp eq i8* %3, null, !dbg !3600
  br i1 %4, label %5, label %6, !dbg !3601

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3602
  unreachable, !dbg !3602

6:                                                ; preds = %2
  ret i8* %3, !dbg !3603
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3604 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3608, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %1, metadata !3609, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8* null, metadata !3570, metadata !DIExpression()) #35, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %0, metadata !3571, metadata !DIExpression()) #35, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %1, metadata !3572, metadata !DIExpression()) #35, !dbg !3611
  call void @llvm.dbg.value(metadata i8* null, metadata !3574, metadata !DIExpression()) #35, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %0, metadata !3577, metadata !DIExpression()) #35, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %1, metadata !3578, metadata !DIExpression()) #35, !dbg !3613
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3615
  call void @llvm.dbg.value(metadata i8* %3, metadata !3454, metadata !DIExpression()) #35, !dbg !3616
  %4 = icmp eq i8* %3, null, !dbg !3618
  br i1 %4, label %5, label %6, !dbg !3619

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3620
  unreachable, !dbg !3620

6:                                                ; preds = %2
  ret i8* %3, !dbg !3621
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3622 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3626, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i64* %1, metadata !3627, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8* %0, metadata !408, metadata !DIExpression()) #35, !dbg !3629
  call void @llvm.dbg.value(metadata i64* %1, metadata !409, metadata !DIExpression()) #35, !dbg !3629
  call void @llvm.dbg.value(metadata i64 1, metadata !410, metadata !DIExpression()) #35, !dbg !3629
  %3 = load i64, i64* %1, align 8, !dbg !3631, !tbaa !2460
  call void @llvm.dbg.value(metadata i64 %3, metadata !411, metadata !DIExpression()) #35, !dbg !3629
  %4 = icmp eq i8* %0, null, !dbg !3632
  br i1 %4, label %5, label %8, !dbg !3634

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3635
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3638
  br label %15, !dbg !3638

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3639
  %10 = add nuw i64 %9, 1, !dbg !3639
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !3639
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3639
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %13, metadata !411, metadata !DIExpression()) #35, !dbg !3629
  br i1 %12, label %14, label %15, !dbg !3642

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3643
  unreachable, !dbg !3643

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3629
  call void @llvm.dbg.value(metadata i64 %16, metadata !411, metadata !DIExpression()) #35, !dbg !3629
  call void @llvm.dbg.value(metadata i8* %0, metadata !3446, metadata !DIExpression()) #35, !dbg !3644
  call void @llvm.dbg.value(metadata i64 %16, metadata !3449, metadata !DIExpression()) #35, !dbg !3644
  call void @llvm.dbg.value(metadata i64 1, metadata !3450, metadata !DIExpression()) #35, !dbg !3644
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !3646
  call void @llvm.dbg.value(metadata i8* %17, metadata !3454, metadata !DIExpression()) #35, !dbg !3647
  %18 = icmp eq i8* %17, null, !dbg !3649
  br i1 %18, label %19, label %20, !dbg !3650

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3651
  unreachable, !dbg !3651

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !408, metadata !DIExpression()) #35, !dbg !3629
  store i64 %16, i64* %1, align 8, !dbg !3652, !tbaa !2460
  ret i8* %17, !dbg !3653
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !403 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !408, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64* %1, metadata !409, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %2, metadata !410, metadata !DIExpression()), !dbg !3654
  %4 = load i64, i64* %1, align 8, !dbg !3655, !tbaa !2460
  call void @llvm.dbg.value(metadata i64 %4, metadata !411, metadata !DIExpression()), !dbg !3654
  %5 = icmp eq i8* %0, null, !dbg !3656
  br i1 %5, label %6, label %13, !dbg !3657

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3658
  br i1 %7, label %8, label %20, !dbg !3659

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3660
  call void @llvm.dbg.value(metadata i64 %9, metadata !411, metadata !DIExpression()), !dbg !3654
  %10 = icmp ugt i64 %2, 128, !dbg !3662
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %12, metadata !411, metadata !DIExpression()), !dbg !3654
  br label %20, !dbg !3664

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3665
  %15 = add nuw i64 %14, 1, !dbg !3665
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3665
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3665
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3665
  call void @llvm.dbg.value(metadata i64 %18, metadata !411, metadata !DIExpression()), !dbg !3654
  br i1 %17, label %19, label %20, !dbg !3666

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3667
  unreachable, !dbg !3667

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3654
  call void @llvm.dbg.value(metadata i64 %21, metadata !411, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i8* %0, metadata !3446, metadata !DIExpression()) #35, !dbg !3668
  call void @llvm.dbg.value(metadata i64 %21, metadata !3449, metadata !DIExpression()) #35, !dbg !3668
  call void @llvm.dbg.value(metadata i64 %2, metadata !3450, metadata !DIExpression()) #35, !dbg !3668
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !3670
  call void @llvm.dbg.value(metadata i8* %22, metadata !3454, metadata !DIExpression()) #35, !dbg !3671
  %23 = icmp eq i8* %22, null, !dbg !3673
  br i1 %23, label %24, label %25, !dbg !3674

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3675
  unreachable, !dbg !3675

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !408, metadata !DIExpression()), !dbg !3654
  store i64 %21, i64* %1, align 8, !dbg !3676, !tbaa !2460
  ret i8* %22, !dbg !3677
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !423, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64* %1, metadata !424, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %2, metadata !425, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %3, metadata !426, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %4, metadata !427, metadata !DIExpression()), !dbg !3678
  %6 = load i64, i64* %1, align 8, !dbg !3679, !tbaa !2460
  call void @llvm.dbg.value(metadata i64 %6, metadata !428, metadata !DIExpression()), !dbg !3678
  %7 = ashr i64 %6, 1, !dbg !3680
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3680
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3680
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3680
  call void @llvm.dbg.value(metadata i64 %10, metadata !429, metadata !DIExpression()), !dbg !3678
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %11, metadata !429, metadata !DIExpression()), !dbg !3678
  %12 = icmp sgt i64 %3, -1, !dbg !3683
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3685
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3685
  call void @llvm.dbg.value(metadata i64 %15, metadata !429, metadata !DIExpression()), !dbg !3678
  %16 = icmp slt i64 %4, 0, !dbg !3686
  br i1 %16, label %17, label %30, !dbg !3686

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3686
  br i1 %18, label %19, label %24, !dbg !3686

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3686
  %21 = udiv i64 9223372036854775807, %20, !dbg !3686
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3686
  br i1 %23, label %46, label %43, !dbg !3686

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3686
  br i1 %25, label %43, label %26, !dbg !3686

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3686
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3686
  %29 = icmp ult i64 %28, %15, !dbg !3686
  br i1 %29, label %46, label %43, !dbg !3686

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3686
  br i1 %31, label %43, label %32, !dbg !3686

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3686
  br i1 %33, label %34, label %40, !dbg !3686

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3686
  br i1 %35, label %43, label %36, !dbg !3686

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3686
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3686
  %39 = icmp ult i64 %38, %4, !dbg !3686
  br i1 %39, label %46, label %43, !dbg !3686

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3686
  %42 = icmp ult i64 %41, %15, !dbg !3686
  br i1 %42, label %46, label %43, !dbg !3686

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !430, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3678
  %44 = mul i64 %15, %4, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %44, metadata !430, metadata !DIExpression()), !dbg !3678
  %45 = icmp slt i64 %44, 128, !dbg !3686
  br i1 %45, label %46, label %52, !dbg !3686

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !431, metadata !DIExpression()), !dbg !3678
  %48 = sdiv i64 %47, %4, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %48, metadata !429, metadata !DIExpression()), !dbg !3678
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3690
  call void @llvm.dbg.value(metadata i64 %51, metadata !430, metadata !DIExpression()), !dbg !3678
  br label %52, !dbg !3691

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3678
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3678
  call void @llvm.dbg.value(metadata i64 %54, metadata !430, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %53, metadata !429, metadata !DIExpression()), !dbg !3678
  %55 = icmp eq i8* %0, null, !dbg !3692
  br i1 %55, label %56, label %57, !dbg !3694

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3695, !tbaa !2460
  br label %57, !dbg !3696

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3697
  %59 = icmp slt i64 %58, %2, !dbg !3699
  br i1 %59, label %60, label %97, !dbg !3700

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3701
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3701
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3701
  call void @llvm.dbg.value(metadata i64 %63, metadata !429, metadata !DIExpression()), !dbg !3678
  br i1 %62, label %96, label %64, !dbg !3702

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3703
  br i1 %66, label %96, label %67, !dbg !3703

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3704

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3704
  br i1 %69, label %70, label %75, !dbg !3704

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3704
  %72 = udiv i64 9223372036854775807, %71, !dbg !3704
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3704
  br i1 %74, label %96, label %94, !dbg !3704

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3704
  br i1 %76, label %94, label %77, !dbg !3704

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3704
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3704
  %80 = icmp ult i64 %79, %63, !dbg !3704
  br i1 %80, label %96, label %94, !dbg !3704

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3704
  br i1 %82, label %94, label %83, !dbg !3704

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3704
  br i1 %84, label %85, label %91, !dbg !3704

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3704
  br i1 %86, label %94, label %87, !dbg !3704

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3704
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3704
  %90 = icmp ult i64 %89, %4, !dbg !3704
  br i1 %90, label %96, label %94, !dbg !3704

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3704
  %93 = icmp ult i64 %92, %63, !dbg !3704
  br i1 %93, label %96, label %94, !dbg !3704

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !430, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3678
  %95 = mul i64 %63, %4, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %95, metadata !430, metadata !DIExpression()), !dbg !3678
  br label %97, !dbg !3705

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !3706
  unreachable, !dbg !3706

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3678
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3678
  call void @llvm.dbg.value(metadata i64 %99, metadata !430, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %98, metadata !429, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %0, metadata !3525, metadata !DIExpression()) #35, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %99, metadata !3526, metadata !DIExpression()) #35, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %0, metadata !3528, metadata !DIExpression()) #35, !dbg !3709
  call void @llvm.dbg.value(metadata i64 %99, metadata !3532, metadata !DIExpression()) #35, !dbg !3709
  %100 = icmp eq i64 %99, 0, !dbg !3711
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3711
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !3712
  call void @llvm.dbg.value(metadata i8* %102, metadata !3454, metadata !DIExpression()) #35, !dbg !3713
  %103 = icmp eq i8* %102, null, !dbg !3715
  br i1 %103, label %104, label %105, !dbg !3716

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3717
  unreachable, !dbg !3717

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !423, metadata !DIExpression()), !dbg !3678
  store i64 %98, i64* %1, align 8, !dbg !3718, !tbaa !2460
  ret i8* %102, !dbg !3719
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3720 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3722, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i64 %0, metadata !3724, metadata !DIExpression()) #35, !dbg !3728
  call void @llvm.dbg.value(metadata i64 1, metadata !3727, metadata !DIExpression()) #35, !dbg !3728
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3730
  call void @llvm.dbg.value(metadata i8* %2, metadata !3454, metadata !DIExpression()) #35, !dbg !3731
  %3 = icmp eq i8* %2, null, !dbg !3733
  br i1 %3, label %4, label %5, !dbg !3734

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3735
  unreachable, !dbg !3735

5:                                                ; preds = %1
  ret i8* %2, !dbg !3736
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3725 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3724, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %1, metadata !3727, metadata !DIExpression()), !dbg !3737
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3738
  call void @llvm.dbg.value(metadata i8* %3, metadata !3454, metadata !DIExpression()) #35, !dbg !3739
  %4 = icmp eq i8* %3, null, !dbg !3741
  br i1 %4, label %5, label %6, !dbg !3742

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3743
  unreachable, !dbg !3743

6:                                                ; preds = %2
  ret i8* %3, !dbg !3744
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3745 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3747, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %0, metadata !3749, metadata !DIExpression()) #35, !dbg !3753
  call void @llvm.dbg.value(metadata i64 1, metadata !3752, metadata !DIExpression()) #35, !dbg !3753
  call void @llvm.dbg.value(metadata i64 %0, metadata !3755, metadata !DIExpression()) #35, !dbg !3759
  call void @llvm.dbg.value(metadata i64 1, metadata !3758, metadata !DIExpression()) #35, !dbg !3759
  call void @llvm.dbg.value(metadata i64 %0, metadata !3755, metadata !DIExpression()) #35, !dbg !3759
  call void @llvm.dbg.value(metadata i64 1, metadata !3758, metadata !DIExpression()) #35, !dbg !3759
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3761
  call void @llvm.dbg.value(metadata i8* %2, metadata !3454, metadata !DIExpression()) #35, !dbg !3762
  %3 = icmp eq i8* %2, null, !dbg !3764
  br i1 %3, label %4, label %5, !dbg !3765

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3766
  unreachable, !dbg !3766

5:                                                ; preds = %1
  ret i8* %2, !dbg !3767
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3750 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3749, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %0, metadata !3755, metadata !DIExpression()) #35, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %1, metadata !3758, metadata !DIExpression()) #35, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %0, metadata !3755, metadata !DIExpression()) #35, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %1, metadata !3758, metadata !DIExpression()) #35, !dbg !3769
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3771
  call void @llvm.dbg.value(metadata i8* %3, metadata !3454, metadata !DIExpression()) #35, !dbg !3772
  %4 = icmp eq i8* %3, null, !dbg !3774
  br i1 %4, label %5, label %6, !dbg !3775

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3776
  unreachable, !dbg !3776

6:                                                ; preds = %2
  ret i8* %3, !dbg !3777
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3778 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %1, metadata !3783, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %1, metadata !3478, metadata !DIExpression()) #35, !dbg !3785
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3787
  call void @llvm.dbg.value(metadata i8* %3, metadata !3454, metadata !DIExpression()) #35, !dbg !3788
  %4 = icmp eq i8* %3, null, !dbg !3790
  br i1 %4, label %5, label %6, !dbg !3791

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3792
  unreachable, !dbg !3792

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3793, metadata !DIExpression()) #35, !dbg !3798
  call void @llvm.dbg.value(metadata i8* %0, metadata !3796, metadata !DIExpression()) #35, !dbg !3798
  call void @llvm.dbg.value(metadata i64 %1, metadata !3797, metadata !DIExpression()) #35, !dbg !3798
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3800
  ret i8* %3, !dbg !3801
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3802 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3806, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %1, metadata !3807, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %1, metadata !3491, metadata !DIExpression()) #35, !dbg !3809
  call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()) #35, !dbg !3811
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %3, metadata !3454, metadata !DIExpression()) #35, !dbg !3814
  %4 = icmp eq i8* %3, null, !dbg !3816
  br i1 %4, label %5, label %6, !dbg !3817

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3818
  unreachable, !dbg !3818

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3793, metadata !DIExpression()) #35, !dbg !3819
  call void @llvm.dbg.value(metadata i8* %0, metadata !3796, metadata !DIExpression()) #35, !dbg !3819
  call void @llvm.dbg.value(metadata i64 %1, metadata !3797, metadata !DIExpression()) #35, !dbg !3819
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3821
  ret i8* %3, !dbg !3822
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 %1, metadata !3828, metadata !DIExpression()), !dbg !3830
  %3 = add nsw i64 %1, 1, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %3, metadata !3491, metadata !DIExpression()) #35, !dbg !3832
  call void @llvm.dbg.value(metadata i64 %3, metadata !3493, metadata !DIExpression()) #35, !dbg !3834
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %4, metadata !3454, metadata !DIExpression()) #35, !dbg !3837
  %5 = icmp eq i8* %4, null, !dbg !3839
  br i1 %5, label %6, label %7, !dbg !3840

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3841
  unreachable, !dbg !3841

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3829, metadata !DIExpression()), !dbg !3830
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3842
  store i8 0, i8* %8, align 1, !dbg !3843, !tbaa !570
  call void @llvm.dbg.value(metadata i8* %4, metadata !3793, metadata !DIExpression()) #35, !dbg !3844
  call void @llvm.dbg.value(metadata i8* %0, metadata !3796, metadata !DIExpression()) #35, !dbg !3844
  call void @llvm.dbg.value(metadata i64 %1, metadata !3797, metadata !DIExpression()) #35, !dbg !3844
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3846
  ret i8* %4, !dbg !3847
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3848 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3850, metadata !DIExpression()), !dbg !3851
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !3852
  %3 = add i64 %2, 1, !dbg !3853
  call void @llvm.dbg.value(metadata i8* %0, metadata !3782, metadata !DIExpression()) #35, !dbg !3854
  call void @llvm.dbg.value(metadata i64 %3, metadata !3783, metadata !DIExpression()) #35, !dbg !3854
  call void @llvm.dbg.value(metadata i64 %3, metadata !3478, metadata !DIExpression()) #35, !dbg !3856
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3858
  call void @llvm.dbg.value(metadata i8* %4, metadata !3454, metadata !DIExpression()) #35, !dbg !3859
  %5 = icmp eq i8* %4, null, !dbg !3861
  br i1 %5, label %6, label %7, !dbg !3862

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3863
  unreachable, !dbg !3863

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3793, metadata !DIExpression()) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i8* %0, metadata !3796, metadata !DIExpression()) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i64 %3, metadata !3797, metadata !DIExpression()) #35, !dbg !3864
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !3866
  ret i8* %4, !dbg !3867
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3868 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3873, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %1, metadata !3870, metadata !DIExpression()), !dbg !3874
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.167, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.168, i64 0, i64 0), i32 noundef 5) #35, !dbg !3873
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i64 0, i64 0), i8* noundef %2) #35, !dbg !3873
  %3 = icmp eq i32 %1, 0, !dbg !3873
  tail call void @llvm.assume(i1 %3), !dbg !3873
  tail call void @abort() #37, !dbg !3875
  unreachable, !dbg !3875
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3876 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3881, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8* %1, metadata !3882, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 %2, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3884, metadata !DIExpression()), !dbg !3886
  %5 = icmp eq i8* %1, null, !dbg !3887
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3889
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), i8* %1, !dbg !3889
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3889
  call void @llvm.dbg.value(metadata i64 %8, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8* %7, metadata !3882, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32* %6, metadata !3881, metadata !DIExpression()), !dbg !3886
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3890
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3892
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3884, metadata !DIExpression()), !dbg !3886
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %11, metadata !3885, metadata !DIExpression()), !dbg !3886
  %12 = icmp ult i64 %11, -3, !dbg !3894
  br i1 %12, label %13, label %18, !dbg !3896

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !3897
  %15 = icmp eq i32 %14, 0, !dbg !3897
  br i1 %15, label %16, label %30, !dbg !3898

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3899, metadata !DIExpression()) #35, !dbg !3904
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3906, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 0, metadata !3909, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i64 8, metadata !3910, metadata !DIExpression()) #35, !dbg !3911
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3913
  store i64 0, i64* %17, align 1, !dbg !3913
  br label %30, !dbg !3914

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3915
  br i1 %19, label %20, label %21, !dbg !3917

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !3918
  unreachable, !dbg !3918

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3919

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !3921
  br i1 %24, label %30, label %25, !dbg !3922

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3923
  br i1 %26, label %30, label %27, !dbg !3926

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3927, !tbaa !570
  %29 = zext i8 %28 to i32, !dbg !3928
  store i32 %29, i32* %6, align 4, !dbg !3929, !tbaa !561
  br label %30, !dbg !3930

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3886
  ret i64 %31, !dbg !3931
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3932 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !3938 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3940, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i64 %1, metadata !3941, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i64 %2, metadata !3942, metadata !DIExpression()), !dbg !3944
  %4 = icmp eq i64 %2, 0, !dbg !3945
  br i1 %4, label %8, label %5, !dbg !3945

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3945
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3945
  br i1 %7, label %13, label %8, !dbg !3945

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3943, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3944
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3943, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3944
  %9 = mul i64 %2, %1, !dbg !3945
  call void @llvm.dbg.value(metadata i64 %9, metadata !3943, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i8* %0, metadata !3947, metadata !DIExpression()) #35, !dbg !3951
  call void @llvm.dbg.value(metadata i64 %9, metadata !3950, metadata !DIExpression()) #35, !dbg !3951
  %10 = icmp eq i64 %9, 0, !dbg !3953
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3953
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !3954
  br label %15, !dbg !3955

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3943, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3944
  %14 = tail call i32* @__errno_location() #38, !dbg !3956
  store i32 12, i32* %14, align 4, !dbg !3958, !tbaa !561
  br label %15, !dbg !3959

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3944
  ret i8* %16, !dbg !3960
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3961 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3965, metadata !DIExpression()), !dbg !3970
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3971
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !3971
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3966, metadata !DIExpression()), !dbg !3972
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !3973
  %5 = icmp eq i32 %4, 0, !dbg !3973
  br i1 %5, label %6, label %13, !dbg !3975

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3976, metadata !DIExpression()) #35, !dbg !3980
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i64 0, i64 0), metadata !3979, metadata !DIExpression()) #35, !dbg !3980
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i64 0, i64 0), i64 2), !dbg !3983
  %8 = icmp eq i32 %7, 0, !dbg !3984
  br i1 %8, label %12, label %9, !dbg !3985

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3976, metadata !DIExpression()) #35, !dbg !3986
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i64 0, i64 0), metadata !3979, metadata !DIExpression()) #35, !dbg !3986
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i64 0, i64 0), i64 6), !dbg !3988
  %11 = icmp eq i32 %10, 0, !dbg !3989
  br i1 %11, label %12, label %13, !dbg !3990

12:                                               ; preds = %9, %6
  br label %13, !dbg !3991

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3970
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !3992
  ret i1 %14, !dbg !3992
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3997, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8* %1, metadata !3998, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %2, metadata !3999, metadata !DIExpression()), !dbg !4000
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4001
  ret i32 %4, !dbg !4002
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4003 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4007, metadata !DIExpression()), !dbg !4008
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4009
  ret i8* %2, !dbg !4010
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4011 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4013, metadata !DIExpression()), !dbg !4015
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4016
  call void @llvm.dbg.value(metadata i8* %2, metadata !4014, metadata !DIExpression()), !dbg !4015
  ret i8* %2, !dbg !4017
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4018 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4020, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %1, metadata !4021, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i64 %2, metadata !4022, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 %0, metadata !4013, metadata !DIExpression()) #35, !dbg !4028
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4030
  call void @llvm.dbg.value(metadata i8* %4, metadata !4014, metadata !DIExpression()) #35, !dbg !4028
  call void @llvm.dbg.value(metadata i8* %4, metadata !4023, metadata !DIExpression()), !dbg !4027
  %5 = icmp eq i8* %4, null, !dbg !4031
  br i1 %5, label %6, label %9, !dbg !4032

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4033
  br i1 %7, label %19, label %8, !dbg !4036

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4037, !tbaa !570
  br label %19, !dbg !4038

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4039
  call void @llvm.dbg.value(metadata i64 %10, metadata !4024, metadata !DIExpression()), !dbg !4040
  %11 = icmp ult i64 %10, %2, !dbg !4041
  br i1 %11, label %12, label %14, !dbg !4043

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4044
  call void @llvm.dbg.value(metadata i8* %1, metadata !4046, metadata !DIExpression()) #35, !dbg !4051
  call void @llvm.dbg.value(metadata i8* %4, metadata !4049, metadata !DIExpression()) #35, !dbg !4051
  call void @llvm.dbg.value(metadata i64 %13, metadata !4050, metadata !DIExpression()) #35, !dbg !4051
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4053
  br label %19, !dbg !4054

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4055
  br i1 %15, label %19, label %16, !dbg !4058

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %1, metadata !4046, metadata !DIExpression()) #35, !dbg !4061
  call void @llvm.dbg.value(metadata i8* %4, metadata !4049, metadata !DIExpression()) #35, !dbg !4061
  call void @llvm.dbg.value(metadata i64 %17, metadata !4050, metadata !DIExpression()) #35, !dbg !4061
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4063
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4064
  store i8 0, i8* %18, align 1, !dbg !4065, !tbaa !570
  br label %19, !dbg !4066

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4067
  ret i32 %20, !dbg !4068
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nofree nosync nounwind willreturn }
attributes #20 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { argmemonly nofree nounwind willreturn writeonly }
attributes #26 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #27 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { nounwind allocsize(0) }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !140, !376, !378, !145, !152, !356, !380, !382, !385, !387, !389, !391, !193, !203, !235, !326, !393, !348, !399, !433, !362, !435, !438, !440, !442}
!llvm.ident = !{!444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444, !444}
!llvm.module.flags = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 46, type: !125, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mktemp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "de5003826bec9e5f9730c511d0b9293f")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256)
!10 = !DIEnumerator(name: "_ISlower", value: 512)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!14 = !DIEnumerator(name: "_ISspace", value: 8192)
!15 = !DIEnumerator(name: "_ISprint", value: 16384)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768)
!17 = !DIEnumerator(name: "_ISblank", value: 1)
!18 = !DIEnumerator(name: "_IScntrl", value: 2)
!19 = !DIEnumerator(name: "_ISpunct", value: 4)
!20 = !DIEnumerator(name: "_ISalnum", value: 8)
!21 = !{!22, !24, !25, !26, !27, !30, !32}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34, !37, !0, !123}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "stdout_closed", scope: !2, file: !3, line: 138, type: !36, isLocal: true, isDefinition: true)
!36 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !39, file: !40, line: 575, type: !25, isLocal: true, isDefinition: true)
!39 = distinct !DISubprogram(name: "oputs_", scope: !40, file: !40, line: 573, type: !41, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!40 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!41 = !DISubroutineType(types: !42)
!42 = !{null, !30, !30}
!43 = !{!44, !45, !46, !49, !50, !51, !52, !56, !57, !58, !59, !61, !117, !118, !119, !121, !122}
!44 = !DILocalVariable(name: "program", arg: 1, scope: !39, file: !40, line: 573, type: !30)
!45 = !DILocalVariable(name: "option", arg: 2, scope: !39, file: !40, line: 573, type: !30)
!46 = !DILocalVariable(name: "term", scope: !47, file: !40, line: 585, type: !30)
!47 = distinct !DILexicalBlock(scope: !48, file: !40, line: 582, column: 5)
!48 = distinct !DILexicalBlock(scope: !39, file: !40, line: 581, column: 7)
!49 = !DILocalVariable(name: "double_space", scope: !39, file: !40, line: 594, type: !36)
!50 = !DILocalVariable(name: "first_word", scope: !39, file: !40, line: 595, type: !30)
!51 = !DILocalVariable(name: "option_text", scope: !39, file: !40, line: 596, type: !30)
!52 = !DILocalVariable(name: "s", scope: !53, file: !40, line: 608, type: !30)
!53 = distinct !DILexicalBlock(scope: !54, file: !40, line: 605, column: 5)
!54 = distinct !DILexicalBlock(scope: !55, file: !40, line: 604, column: 12)
!55 = distinct !DILexicalBlock(scope: !39, file: !40, line: 597, column: 7)
!56 = !DILocalVariable(name: "spaces", scope: !53, file: !40, line: 609, type: !27)
!57 = !DILocalVariable(name: "anchor_len", scope: !39, file: !40, line: 620, type: !27)
!58 = !DILocalVariable(name: "desc_text", scope: !39, file: !40, line: 625, type: !30)
!59 = !DILocalVariable(name: "__ptr", scope: !60, file: !40, line: 644, type: !30)
!60 = distinct !DILexicalBlock(scope: !39, file: !40, line: 644, column: 3)
!61 = !DILocalVariable(name: "__stream", scope: !60, file: !40, line: 644, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !64, line: 7, baseType: !65)
!64 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 49, size: 1728, elements: !67)
!66 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !83, !85, !86, !87, !91, !92, !94, !98, !101, !103, !106, !109, !110, !111, !112, !113}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !65, file: !66, line: 51, baseType: !25, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !65, file: !66, line: 54, baseType: !22, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !65, file: !66, line: 55, baseType: !22, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !65, file: !66, line: 56, baseType: !22, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !65, file: !66, line: 57, baseType: !22, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !65, file: !66, line: 58, baseType: !22, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !65, file: !66, line: 59, baseType: !22, size: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !65, file: !66, line: 60, baseType: !22, size: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !65, file: !66, line: 61, baseType: !22, size: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !65, file: !66, line: 64, baseType: !22, size: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !65, file: !66, line: 65, baseType: !22, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !65, file: !66, line: 66, baseType: !22, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !65, file: !66, line: 68, baseType: !81, size: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !66, line: 36, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !65, file: !66, line: 70, baseType: !84, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !65, file: !66, line: 72, baseType: !25, size: 32, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !65, file: !66, line: 73, baseType: !25, size: 32, offset: 928)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !65, file: !66, line: 74, baseType: !88, size: 64, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !89, line: 152, baseType: !90)
!89 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!90 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !65, file: !66, line: 77, baseType: !26, size: 16, offset: 1024)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !65, file: !66, line: 78, baseType: !93, size: 8, offset: 1040)
!93 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !65, file: !66, line: 79, baseType: !95, size: 8, offset: 1048)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 1)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !65, file: !66, line: 81, baseType: !99, size: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !66, line: 43, baseType: null)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !65, file: !66, line: 89, baseType: !102, size: 64, offset: 1152)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !89, line: 153, baseType: !90)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !65, file: !66, line: 91, baseType: !104, size: 64, offset: 1216)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !66, line: 37, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !65, file: !66, line: 92, baseType: !107, size: 64, offset: 1280)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !66, line: 38, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !65, file: !66, line: 93, baseType: !84, size: 64, offset: 1344)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !65, file: !66, line: 94, baseType: !24, size: 64, offset: 1408)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !65, file: !66, line: 95, baseType: !27, size: 64, offset: 1472)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !65, file: !66, line: 96, baseType: !25, size: 32, offset: 1536)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !65, file: !66, line: 98, baseType: !114, size: 160, offset: 1568)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 20)
!117 = !DILocalVariable(name: "__cnt", scope: !60, file: !40, line: 644, type: !27)
!118 = !DILocalVariable(name: "url_program", scope: !39, file: !40, line: 648, type: !30)
!119 = !DILocalVariable(name: "__ptr", scope: !120, file: !40, line: 686, type: !30)
!120 = distinct !DILexicalBlock(scope: !39, file: !40, line: 686, column: 3)
!121 = !DILocalVariable(name: "__stream", scope: !120, file: !40, line: 686, type: !62)
!122 = !DILocalVariable(name: "__cnt", scope: !120, file: !40, line: 686, type: !27)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "default_template", scope: !2, file: !3, line: 37, type: !30, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !135)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !128, line: 50, size: 256, elements: !129)
!128 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!129 = !{!130, !131, !132, !134}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !128, line: 52, baseType: !30, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !127, file: !128, line: 55, baseType: !25, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !127, file: !128, line: 56, baseType: !133, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !127, file: !128, line: 57, baseType: !25, size: 32, offset: 192)
!135 = !{!136}
!136 = !DISubrange(count: 8)
!137 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "Version", scope: !140, file: !141, line: 3, type: !30, isLocal: false, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !142, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!142 = !{!138}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "file_name", scope: !145, file: !146, line: 45, type: !30, isLocal: true, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !147, splitDebugInlining: false, nameTableKind: None)
!146 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!147 = !{!143, !148}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !145, file: !146, line: 55, type: !36, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !152, file: !153, line: 66, type: !188, isLocal: false, isDefinition: true)
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !154, globals: !155, splitDebugInlining: false, nameTableKind: None)
!153 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!154 = !{!24, !32}
!155 = !{!156, !182, !150, !184, !186}
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "old_file_name", scope: !158, file: !153, line: 304, type: !30, isLocal: true, isDefinition: true)
!158 = distinct !DISubprogram(name: "verror_at_line", scope: !153, file: !153, line: 298, type: !159, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !175)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !25, !25, !30, !7, !30, !161}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !162, line: 52, baseType: !163)
!162 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !164, line: 32, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !166, baseType: !167)
!166 = !DIFile(filename: "lib/error.c", directory: "/src")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !168, size: 256, elements: !169)
!168 = !DINamespace(name: "std", scope: null)
!169 = !{!170, !171, !172, !173, !174}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !167, file: !166, baseType: !24, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !167, file: !166, baseType: !24, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !167, file: !166, baseType: !24, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !167, file: !166, baseType: !25, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !167, file: !166, baseType: !25, size: 32, offset: 224)
!175 = !{!176, !177, !178, !179, !180, !181}
!176 = !DILocalVariable(name: "status", arg: 1, scope: !158, file: !153, line: 298, type: !25)
!177 = !DILocalVariable(name: "errnum", arg: 2, scope: !158, file: !153, line: 298, type: !25)
!178 = !DILocalVariable(name: "file_name", arg: 3, scope: !158, file: !153, line: 298, type: !30)
!179 = !DILocalVariable(name: "line_number", arg: 4, scope: !158, file: !153, line: 298, type: !7)
!180 = !DILocalVariable(name: "message", arg: 5, scope: !158, file: !153, line: 298, type: !30)
!181 = !DILocalVariable(name: "args", arg: 6, scope: !158, file: !153, line: 298, type: !161)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "old_line_number", scope: !158, file: !153, line: 305, type: !7, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "error_message_count", scope: !152, file: !153, line: 69, type: !7, isLocal: false, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !152, file: !153, line: 295, type: !25, isLocal: false, isDefinition: true)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{null}
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "program_name", scope: !193, file: !194, line: 31, type: !30, isLocal: false, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !195, globals: !196, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!195 = !{!22}
!196 = !{!191}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "utf07FF", scope: !199, file: !200, line: 46, type: !230, isLocal: true, isDefinition: true)
!199 = distinct !DISubprogram(name: "proper_name_lite", scope: !200, file: !200, line: 38, type: !201, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !205)
!200 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!201 = !DISubroutineType(types: !202)
!202 = !{!30, !30, !30}
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !204, splitDebugInlining: false, nameTableKind: None)
!204 = !{!197}
!205 = !{!206, !207, !208, !209, !214}
!206 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !199, file: !200, line: 38, type: !30)
!207 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !199, file: !200, line: 38, type: !30)
!208 = !DILocalVariable(name: "translation", scope: !199, file: !200, line: 40, type: !30)
!209 = !DILocalVariable(name: "w", scope: !199, file: !200, line: 47, type: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !211, line: 37, baseType: !212)
!211 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !89, line: 57, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !89, line: 42, baseType: !7)
!214 = !DILocalVariable(name: "mbs", scope: !199, file: !200, line: 48, type: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !216, line: 6, baseType: !217)
!216 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !218, line: 21, baseType: !219)
!218 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 13, size: 64, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !219, file: !218, line: 15, baseType: !25, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !219, file: !218, line: 20, baseType: !223, size: 32, offset: 32)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !218, line: 16, size: 32, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !223, file: !218, line: 18, baseType: !7, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !223, file: !218, line: 19, baseType: !227, size: 32)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 4)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 16, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 2)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !235, file: !236, line: 76, type: !316, isLocal: false, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !257, globals: !258, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!237 = !{!238, !252, !5}
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !239, line: 42, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!241 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!242 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!243 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!244 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!245 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!246 = !DIEnumerator(name: "c_quoting_style", value: 5)
!247 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!248 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!249 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!250 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!251 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !239, line: 254, baseType: !7, size: 32, elements: !253)
!253 = !{!254, !255, !256}
!254 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!255 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!256 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!257 = !{!25, !26, !27}
!258 = !{!233, !259, !265, !275, !277, !282, !305, !312, !314}
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !235, file: !236, line: 92, type: !261, isLocal: false, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 320, elements: !263)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!263 = !{!264}
!264 = !DISubrange(count: 10)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !235, file: !236, line: 1040, type: !267, isLocal: false, isDefinition: true)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !236, line: 56, size: 448, elements: !268)
!268 = !{!269, !270, !271, !273, !274}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !267, file: !236, line: 59, baseType: !238, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !267, file: !236, line: 62, baseType: !25, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !267, file: !236, line: 66, baseType: !272, size: 256, offset: 64)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !135)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !267, file: !236, line: 69, baseType: !30, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !267, file: !236, line: 72, baseType: !30, size: 64, offset: 384)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !235, file: !236, line: 107, type: !267, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "slot0", scope: !235, file: !236, line: 831, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 256)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "quote", scope: !284, file: !236, line: 228, type: !303, isLocal: true, isDefinition: true)
!284 = distinct !DISubprogram(name: "gettext_quote", scope: !236, file: !236, line: 197, type: !285, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!30, !30, !238}
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(name: "msgid", arg: 1, scope: !284, file: !236, line: 197, type: !30)
!289 = !DILocalVariable(name: "s", arg: 2, scope: !284, file: !236, line: 197, type: !238)
!290 = !DILocalVariable(name: "translation", scope: !284, file: !236, line: 199, type: !30)
!291 = !DILocalVariable(name: "w", scope: !284, file: !236, line: 229, type: !210)
!292 = !DILocalVariable(name: "mbs", scope: !284, file: !236, line: 230, type: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !216, line: 6, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !218, line: 21, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 13, size: 64, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !295, file: !218, line: 15, baseType: !25, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !295, file: !218, line: 20, baseType: !299, size: 32, offset: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !218, line: 16, size: 32, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !299, file: !218, line: 18, baseType: !7, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !299, file: !218, line: 19, baseType: !227, size: 32)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !304)
!304 = !{!232, !229}
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "slotvec", scope: !235, file: !236, line: 834, type: !307, isLocal: true, isDefinition: true)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !236, line: 823, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !308, file: !236, line: 825, baseType: !27, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !236, line: 826, baseType: !22, size: 64, offset: 64)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "nslots", scope: !235, file: !236, line: 832, type: !25, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "slotvec0", scope: !235, file: !236, line: 833, type: !308, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 704, elements: !318)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!318 = !{!319}
!319 = !DISubrange(count: 11)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "tryfunc", scope: !322, file: !323, line: 175, type: !339, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "gen_tempname_len", scope: !323, file: !323, line: 172, type: !324, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !333)
!323 = !DIFile(filename: "lib/tempname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "89467f8095ceec51ae791cc96ec80d48")
!324 = !DISubroutineType(types: !325)
!325 = !{!25, !22, !25, !25, !25, !27}
!326 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !327, splitDebugInlining: false, nameTableKind: None)
!327 = !{!320, !328}
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "letters", scope: !326, file: !323, line: 151, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 504, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 63)
!333 = !{!334, !335, !336, !337, !338}
!334 = !DILocalVariable(name: "tmpl", arg: 1, scope: !322, file: !323, line: 172, type: !22)
!335 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !322, file: !323, line: 172, type: !25)
!336 = !DILocalVariable(name: "flags", arg: 3, scope: !322, file: !323, line: 172, type: !25)
!337 = !DILocalVariable(name: "kind", arg: 4, scope: !322, file: !323, line: 172, type: !25)
!338 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !322, file: !323, line: 173, type: !27)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 192, elements: !344)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!25, !22, !24}
!344 = !{!345}
!345 = !DISubrange(count: 3)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !348, file: !349, line: 26, type: !351, isLocal: false, isDefinition: true)
!348 = distinct !DICompileUnit(language: DW_LANG_C99, file: !349, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !350, splitDebugInlining: false, nameTableKind: None)
!349 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!350 = !{!346}
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 376, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 47)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "exit_failure", scope: !356, file: !357, line: 24, type: !359, isLocal: false, isDefinition: true)
!356 = distinct !DICompileUnit(language: DW_LANG_C99, file: !357, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !358, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!358 = !{!354}
!359 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "internal_state", scope: !362, file: !363, line: 97, type: !366, isLocal: true, isDefinition: true)
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !364, globals: !365, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!364 = !{!24, !27, !32}
!365 = !{!360}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !216, line: 6, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !218, line: 21, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 13, size: 64, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !368, file: !218, line: 15, baseType: !25, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !368, file: !218, line: 20, baseType: !372, size: 32, offset: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !218, line: 16, size: 32, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !372, file: !218, line: 18, baseType: !7, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !372, file: !218, line: 19, baseType: !227, size: 32)
!376 = distinct !DICompileUnit(language: DW_LANG_C99, file: !377, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !195, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!378 = distinct !DICompileUnit(language: DW_LANG_C99, file: !379, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!379 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!384 = !{!24}
!385 = distinct !DICompileUnit(language: DW_LANG_C99, file: !386, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!386 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!392 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!393 = distinct !DICompileUnit(language: DW_LANG_C99, file: !394, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !395, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!395 = !{!396}
!396 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !394, line: 40, baseType: !7, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !401, retainedTypes: !432, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!401 = !{!402, !414}
!402 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !403, file: !400, line: 188, baseType: !7, size: 32, elements: !412)
!403 = distinct !DISubprogram(name: "x2nrealloc", scope: !400, file: !400, line: 176, type: !404, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !407)
!404 = !DISubroutineType(types: !405)
!405 = !{!24, !24, !406, !27}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!407 = !{!408, !409, !410, !411}
!408 = !DILocalVariable(name: "p", arg: 1, scope: !403, file: !400, line: 176, type: !24)
!409 = !DILocalVariable(name: "pn", arg: 2, scope: !403, file: !400, line: 176, type: !406)
!410 = !DILocalVariable(name: "s", arg: 3, scope: !403, file: !400, line: 176, type: !27)
!411 = !DILocalVariable(name: "n", scope: !403, file: !400, line: 178, type: !27)
!412 = !{!413}
!413 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !415, file: !400, line: 228, baseType: !7, size: 32, elements: !412)
!415 = distinct !DISubprogram(name: "xpalloc", scope: !400, file: !400, line: 223, type: !416, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !422)
!416 = !DISubroutineType(types: !417)
!417 = !{!24, !24, !418, !419, !421, !419}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !420, line: 130, baseType: !421)
!420 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !28, line: 35, baseType: !90)
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431}
!423 = !DILocalVariable(name: "pa", arg: 1, scope: !415, file: !400, line: 223, type: !24)
!424 = !DILocalVariable(name: "pn", arg: 2, scope: !415, file: !400, line: 223, type: !418)
!425 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !415, file: !400, line: 223, type: !419)
!426 = !DILocalVariable(name: "n_max", arg: 4, scope: !415, file: !400, line: 223, type: !421)
!427 = !DILocalVariable(name: "s", arg: 5, scope: !415, file: !400, line: 223, type: !419)
!428 = !DILocalVariable(name: "n0", scope: !415, file: !400, line: 230, type: !419)
!429 = !DILocalVariable(name: "n", scope: !415, file: !400, line: 237, type: !419)
!430 = !DILocalVariable(name: "nbytes", scope: !415, file: !400, line: 248, type: !419)
!431 = !DILocalVariable(name: "adjusted_nbytes", scope: !415, file: !400, line: 252, type: !419)
!432 = !{!22, !24, !36, !90, !29}
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!434 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!435 = distinct !DICompileUnit(language: DW_LANG_C99, file: !436, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !437, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!437 = !{!36, !29, !24}
!438 = distinct !DICompileUnit(language: DW_LANG_C99, file: !439, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!439 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!444 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!445 = !{i32 7, !"Dwarf Version", i32 5}
!446 = !{i32 2, !"Debug Info Version", i32 3}
!447 = !{i32 1, !"wchar_size", i32 4}
!448 = !{i32 1, !"branch-target-enforcement", i32 0}
!449 = !{i32 1, !"sign-return-address", i32 0}
!450 = !{i32 1, !"sign-return-address-all", i32 0}
!451 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!452 = !{i32 7, !"PIC Level", i32 2}
!453 = !{i32 7, !"PIE Level", i32 2}
!454 = !{i32 7, !"uwtable", i32 1}
!455 = !{i32 7, !"frame-pointer", i32 1}
!456 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !457, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !25}
!459 = !{!460}
!460 = !DILocalVariable(name: "status", arg: 1, scope: !456, file: !3, line: 59, type: !25)
!461 = !DILocation(line: 0, scope: !456)
!462 = !DILocation(line: 61, column: 14, scope: !463)
!463 = distinct !DILexicalBlock(scope: !456, file: !3, line: 61, column: 7)
!464 = !DILocation(line: 61, column: 7, scope: !456)
!465 = !DILocation(line: 62, column: 5, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 62, column: 5)
!467 = !{!468, !468, i64 0}
!468 = !{!"any pointer", !469, i64 0}
!469 = !{!"omnipotent char", !470, i64 0}
!470 = !{!"Simple C/C++ TBAA"}
!471 = !DILocation(line: 65, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !463, file: !3, line: 64, column: 5)
!473 = !DILocation(line: 66, column: 7, scope: !472)
!474 = !DILocation(line: 71, column: 7, scope: !472)
!475 = !DILocation(line: 74, column: 7, scope: !472)
!476 = !DILocation(line: 75, column: 7, scope: !472)
!477 = !DILocation(line: 79, column: 7, scope: !472)
!478 = !DILocation(line: 83, column: 7, scope: !472)
!479 = !DILocation(line: 87, column: 7, scope: !472)
!480 = !DILocation(line: 92, column: 7, scope: !472)
!481 = !DILocation(line: 100, column: 7, scope: !472)
!482 = !DILocation(line: 106, column: 7, scope: !472)
!483 = !DILocation(line: 107, column: 7, scope: !472)
!484 = !DILocalVariable(name: "program", arg: 1, scope: !485, file: !40, line: 836, type: !30)
!485 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !40, file: !40, line: 836, type: !486, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !30}
!488 = !{!484, !489, !498, !499, !501, !502}
!489 = !DILocalVariable(name: "infomap", scope: !485, file: !40, line: 838, type: !490)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 896, elements: !496)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !485, file: !40, line: 838, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !492, file: !40, line: 838, baseType: !30, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !492, file: !40, line: 838, baseType: !30, size: 64, offset: 64)
!496 = !{!497}
!497 = !DISubrange(count: 7)
!498 = !DILocalVariable(name: "node", scope: !485, file: !40, line: 848, type: !30)
!499 = !DILocalVariable(name: "map_prog", scope: !485, file: !40, line: 849, type: !500)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!501 = !DILocalVariable(name: "lc_messages", scope: !485, file: !40, line: 861, type: !30)
!502 = !DILocalVariable(name: "url_program", scope: !485, file: !40, line: 874, type: !30)
!503 = !DILocation(line: 0, scope: !485, inlinedAt: !504)
!504 = distinct !DILocation(line: 108, column: 7, scope: !472)
!505 = !DILocation(line: 838, column: 3, scope: !485, inlinedAt: !504)
!506 = !DILocation(line: 838, column: 67, scope: !485, inlinedAt: !504)
!507 = !DILocation(line: 849, column: 36, scope: !485, inlinedAt: !504)
!508 = !DILocation(line: 851, column: 3, scope: !485, inlinedAt: !504)
!509 = !DILocalVariable(name: "__s1", arg: 1, scope: !510, file: !511, line: 1359, type: !30)
!510 = distinct !DISubprogram(name: "streq", scope: !511, file: !511, line: 1359, type: !512, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !514)
!511 = !DIFile(filename: "./lib/string.h", directory: "/src")
!512 = !DISubroutineType(types: !513)
!513 = !{!36, !30, !30}
!514 = !{!509, !515}
!515 = !DILocalVariable(name: "__s2", arg: 2, scope: !510, file: !511, line: 1359, type: !30)
!516 = !DILocation(line: 0, scope: !510, inlinedAt: !517)
!517 = distinct !DILocation(line: 851, column: 33, scope: !485, inlinedAt: !504)
!518 = !DILocation(line: 1361, column: 11, scope: !510, inlinedAt: !517)
!519 = !DILocation(line: 1361, column: 10, scope: !510, inlinedAt: !517)
!520 = !DILocation(line: 852, column: 13, scope: !485, inlinedAt: !504)
!521 = !DILocation(line: 851, column: 20, scope: !485, inlinedAt: !504)
!522 = !{!523, !468, i64 0}
!523 = !{!"infomap", !468, i64 0, !468, i64 8}
!524 = !DILocation(line: 851, column: 10, scope: !485, inlinedAt: !504)
!525 = !DILocation(line: 851, column: 28, scope: !485, inlinedAt: !504)
!526 = distinct !{!526, !508, !520, !527}
!527 = !{!"llvm.loop.mustprogress"}
!528 = !DILocation(line: 854, column: 17, scope: !529, inlinedAt: !504)
!529 = distinct !DILexicalBlock(scope: !485, file: !40, line: 854, column: 7)
!530 = !{!523, !468, i64 8}
!531 = !DILocation(line: 854, column: 7, scope: !529, inlinedAt: !504)
!532 = !DILocation(line: 854, column: 7, scope: !485, inlinedAt: !504)
!533 = !DILocation(line: 857, column: 3, scope: !485, inlinedAt: !504)
!534 = !DILocation(line: 861, column: 29, scope: !485, inlinedAt: !504)
!535 = !DILocation(line: 862, column: 7, scope: !536, inlinedAt: !504)
!536 = distinct !DILexicalBlock(scope: !485, file: !40, line: 862, column: 7)
!537 = !DILocation(line: 862, column: 19, scope: !536, inlinedAt: !504)
!538 = !DILocation(line: 862, column: 22, scope: !536, inlinedAt: !504)
!539 = !DILocation(line: 862, column: 7, scope: !485, inlinedAt: !504)
!540 = !DILocation(line: 868, column: 7, scope: !541, inlinedAt: !504)
!541 = distinct !DILexicalBlock(scope: !536, file: !40, line: 863, column: 5)
!542 = !DILocation(line: 870, column: 5, scope: !541, inlinedAt: !504)
!543 = !DILocation(line: 0, scope: !510, inlinedAt: !544)
!544 = distinct !DILocation(line: 874, column: 29, scope: !485, inlinedAt: !504)
!545 = !DILocation(line: 875, column: 3, scope: !485, inlinedAt: !504)
!546 = !DILocation(line: 877, column: 3, scope: !485, inlinedAt: !504)
!547 = !DILocation(line: 879, column: 1, scope: !485, inlinedAt: !504)
!548 = !DILocation(line: 111, column: 3, scope: !456)
!549 = !DISubprogram(name: "dcgettext", scope: !550, file: !550, line: 51, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!550 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!551 = !DISubroutineType(types: !552)
!552 = !{!22, !30, !30, !25}
!553 = !{}
!554 = !DISubprogram(name: "fputs_unlocked", scope: !162, file: !162, line: 691, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!555 = !DISubroutineType(types: !556)
!556 = !{!25, !557, !558}
!557 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!558 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!559 = !DILocation(line: 0, scope: !39)
!560 = !DILocation(line: 581, column: 7, scope: !48)
!561 = !{!562, !562, i64 0}
!562 = !{!"int", !469, i64 0}
!563 = !DILocation(line: 581, column: 19, scope: !48)
!564 = !DILocation(line: 581, column: 7, scope: !39)
!565 = !DILocation(line: 585, column: 26, scope: !47)
!566 = !DILocation(line: 0, scope: !47)
!567 = !DILocation(line: 586, column: 23, scope: !47)
!568 = !DILocation(line: 586, column: 28, scope: !47)
!569 = !DILocation(line: 586, column: 32, scope: !47)
!570 = !{!469, !469, i64 0}
!571 = !DILocation(line: 586, column: 38, scope: !47)
!572 = !DILocation(line: 0, scope: !510, inlinedAt: !573)
!573 = distinct !DILocation(line: 586, column: 41, scope: !47)
!574 = !DILocation(line: 1361, column: 11, scope: !510, inlinedAt: !573)
!575 = !DILocation(line: 1361, column: 10, scope: !510, inlinedAt: !573)
!576 = !DILocation(line: 586, column: 19, scope: !47)
!577 = !DILocation(line: 587, column: 5, scope: !47)
!578 = !DILocation(line: 588, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !39, file: !40, line: 588, column: 7)
!580 = !DILocation(line: 588, column: 7, scope: !39)
!581 = !DILocation(line: 590, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !40, line: 589, column: 5)
!583 = !DILocation(line: 591, column: 7, scope: !582)
!584 = !DILocation(line: 595, column: 37, scope: !39)
!585 = !DILocation(line: 595, column: 35, scope: !39)
!586 = !DILocation(line: 596, column: 29, scope: !39)
!587 = !DILocation(line: 597, column: 8, scope: !55)
!588 = !DILocation(line: 597, column: 7, scope: !39)
!589 = !DILocation(line: 604, column: 24, scope: !54)
!590 = !DILocation(line: 604, column: 12, scope: !55)
!591 = !DILocation(line: 0, scope: !53)
!592 = !DILocation(line: 610, column: 16, scope: !53)
!593 = !DILocation(line: 610, column: 7, scope: !53)
!594 = !DILocation(line: 611, column: 21, scope: !53)
!595 = !{!596, !596, i64 0}
!596 = !{!"short", !469, i64 0}
!597 = !DILocation(line: 611, column: 19, scope: !53)
!598 = !DILocation(line: 611, column: 16, scope: !53)
!599 = !DILocation(line: 610, column: 30, scope: !53)
!600 = distinct !{!600, !593, !594, !527}
!601 = !DILocation(line: 612, column: 18, scope: !602)
!602 = distinct !DILexicalBlock(scope: !53, file: !40, line: 612, column: 11)
!603 = !DILocation(line: 612, column: 11, scope: !53)
!604 = !DILocation(line: 620, column: 23, scope: !39)
!605 = !DILocation(line: 625, column: 39, scope: !39)
!606 = !DILocation(line: 626, column: 3, scope: !39)
!607 = !DILocation(line: 626, column: 10, scope: !39)
!608 = !DILocation(line: 626, column: 21, scope: !39)
!609 = !DILocation(line: 628, column: 44, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !40, line: 628, column: 11)
!611 = distinct !DILexicalBlock(scope: !39, file: !40, line: 627, column: 5)
!612 = !DILocation(line: 628, column: 32, scope: !610)
!613 = !DILocation(line: 628, column: 49, scope: !610)
!614 = !DILocation(line: 628, column: 11, scope: !611)
!615 = !DILocation(line: 630, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !40, line: 630, column: 11)
!617 = !DILocation(line: 630, column: 11, scope: !611)
!618 = !DILocation(line: 632, column: 26, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !40, line: 632, column: 15)
!620 = distinct !DILexicalBlock(scope: !616, file: !40, line: 631, column: 9)
!621 = !DILocation(line: 632, column: 34, scope: !619)
!622 = !DILocation(line: 632, column: 37, scope: !619)
!623 = !DILocation(line: 632, column: 15, scope: !620)
!624 = !DILocation(line: 636, column: 29, scope: !625)
!625 = distinct !DILexicalBlock(scope: !620, file: !40, line: 636, column: 15)
!626 = !DILocation(line: 640, column: 16, scope: !611)
!627 = distinct !{!627, !606, !628, !527}
!628 = !DILocation(line: 641, column: 5, scope: !39)
!629 = !DILocation(line: 644, column: 3, scope: !39)
!630 = !DILocation(line: 0, scope: !510, inlinedAt: !631)
!631 = distinct !DILocation(line: 648, column: 31, scope: !39)
!632 = !DILocation(line: 0, scope: !510, inlinedAt: !633)
!633 = distinct !DILocation(line: 649, column: 31, scope: !39)
!634 = !DILocation(line: 0, scope: !510, inlinedAt: !635)
!635 = distinct !DILocation(line: 650, column: 31, scope: !39)
!636 = !DILocation(line: 0, scope: !510, inlinedAt: !637)
!637 = distinct !DILocation(line: 651, column: 31, scope: !39)
!638 = !DILocation(line: 0, scope: !510, inlinedAt: !639)
!639 = distinct !DILocation(line: 652, column: 31, scope: !39)
!640 = !DILocation(line: 0, scope: !510, inlinedAt: !641)
!641 = distinct !DILocation(line: 653, column: 31, scope: !39)
!642 = !DILocation(line: 0, scope: !510, inlinedAt: !643)
!643 = distinct !DILocation(line: 654, column: 31, scope: !39)
!644 = !DILocation(line: 0, scope: !510, inlinedAt: !645)
!645 = distinct !DILocation(line: 655, column: 31, scope: !39)
!646 = !DILocation(line: 0, scope: !510, inlinedAt: !647)
!647 = distinct !DILocation(line: 656, column: 31, scope: !39)
!648 = !DILocation(line: 0, scope: !510, inlinedAt: !649)
!649 = distinct !DILocation(line: 657, column: 31, scope: !39)
!650 = !DILocation(line: 663, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !39, file: !40, line: 663, column: 7)
!652 = !DILocation(line: 664, column: 7, scope: !651)
!653 = !DILocation(line: 664, column: 10, scope: !651)
!654 = !DILocation(line: 663, column: 7, scope: !39)
!655 = !DILocation(line: 669, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !40, line: 665, column: 5)
!657 = !DILocation(line: 671, column: 5, scope: !656)
!658 = !DILocation(line: 676, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !651, file: !40, line: 673, column: 5)
!660 = !DILocation(line: 679, column: 3, scope: !39)
!661 = !DILocation(line: 683, column: 3, scope: !39)
!662 = !DILocation(line: 686, column: 3, scope: !39)
!663 = !DILocation(line: 688, column: 3, scope: !39)
!664 = !DILocation(line: 691, column: 3, scope: !39)
!665 = !DILocation(line: 695, column: 3, scope: !39)
!666 = !DILocation(line: 696, column: 1, scope: !39)
!667 = !DISubprogram(name: "setlocale", scope: !668, file: !668, line: 122, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!668 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!669 = !DISubroutineType(types: !670)
!670 = !{!22, !25, !30}
!671 = !DISubprogram(name: "getenv", scope: !672, file: !672, line: 641, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!672 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!673 = !DISubroutineType(types: !674)
!674 = !{!22, !30}
!675 = !DISubprogram(name: "fwrite_unlocked", scope: !162, file: !162, line: 704, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!676 = !DISubroutineType(types: !677)
!677 = !{!27, !678, !27, !27, !558}
!678 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!681 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 154, type: !682, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !685)
!682 = !DISubroutineType(types: !683)
!683 = !{!25, !25, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !706, !711, !715, !718, !720}
!686 = !DILocalVariable(name: "argc", arg: 1, scope: !681, file: !3, line: 154, type: !25)
!687 = !DILocalVariable(name: "argv", arg: 2, scope: !681, file: !3, line: 154, type: !684)
!688 = !DILocalVariable(name: "dest_dir", scope: !681, file: !3, line: 156, type: !30)
!689 = !DILocalVariable(name: "dest_dir_arg", scope: !681, file: !3, line: 157, type: !30)
!690 = !DILocalVariable(name: "suppress_file_err", scope: !681, file: !3, line: 158, type: !36)
!691 = !DILocalVariable(name: "c", scope: !681, file: !3, line: 159, type: !25)
!692 = !DILocalVariable(name: "template", scope: !681, file: !3, line: 160, type: !22)
!693 = !DILocalVariable(name: "suffix", scope: !681, file: !3, line: 161, type: !22)
!694 = !DILocalVariable(name: "use_dest_dir", scope: !681, file: !3, line: 162, type: !36)
!695 = !DILocalVariable(name: "deprecated_t_option", scope: !681, file: !3, line: 163, type: !36)
!696 = !DILocalVariable(name: "create_directory", scope: !681, file: !3, line: 164, type: !36)
!697 = !DILocalVariable(name: "dry_run", scope: !681, file: !3, line: 165, type: !36)
!698 = !DILocalVariable(name: "status", scope: !681, file: !3, line: 166, type: !25)
!699 = !DILocalVariable(name: "x_count", scope: !681, file: !3, line: 167, type: !27)
!700 = !DILocalVariable(name: "suffix_len", scope: !681, file: !3, line: 168, type: !27)
!701 = !DILocalVariable(name: "dest_name", scope: !681, file: !3, line: 169, type: !22)
!702 = !DILocalVariable(name: "n_args", scope: !681, file: !3, line: 215, type: !25)
!703 = !DILocalVariable(name: "len", scope: !704, file: !3, line: 234, type: !27)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 233, column: 5)
!705 = distinct !DILexicalBlock(scope: !681, file: !3, line: 232, column: 7)
!706 = !DILocalVariable(name: "env", scope: !707, file: !3, line: 280, type: !22)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 279, column: 9)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 278, column: 11)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 277, column: 5)
!710 = distinct !DILexicalBlock(scope: !681, file: !3, line: 276, column: 7)
!711 = !DILocalVariable(name: "env", scope: !712, file: !3, line: 299, type: !22)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 298, column: 13)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 295, column: 15)
!714 = distinct !DILexicalBlock(scope: !708, file: !3, line: 294, column: 9)
!715 = !DILocalVariable(name: "err", scope: !716, file: !3, line: 321, type: !25)
!716 = distinct !DILexicalBlock(scope: !717, file: !3, line: 320, column: 5)
!717 = distinct !DILexicalBlock(scope: !681, file: !3, line: 319, column: 7)
!718 = !DILocalVariable(name: "fd", scope: !719, file: !3, line: 332, type: !25)
!719 = distinct !DILexicalBlock(scope: !717, file: !3, line: 331, column: 5)
!720 = !DILocalVariable(name: "saved_errno", scope: !721, file: !3, line: 349, type: !25)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 348, column: 9)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 347, column: 11)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 343, column: 5)
!724 = distinct !DILexicalBlock(scope: !681, file: !3, line: 342, column: 7)
!725 = !DILocation(line: 0, scope: !681)
!726 = !DILocation(line: 172, column: 21, scope: !681)
!727 = !DILocation(line: 172, column: 3, scope: !681)
!728 = !DILocation(line: 173, column: 3, scope: !681)
!729 = !DILocation(line: 174, column: 3, scope: !681)
!730 = !DILocation(line: 175, column: 3, scope: !681)
!731 = !DILocation(line: 177, column: 3, scope: !681)
!732 = !DILocation(line: 179, column: 3, scope: !681)
!733 = !DILocation(line: 179, column: 15, scope: !681)
!734 = distinct !{!734, !732, !735, !527}
!735 = !DILocation(line: 213, column: 5, scope: !681)
!736 = !DILocation(line: 187, column: 26, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 182, column: 9)
!738 = distinct !DILexicalBlock(scope: !681, file: !3, line: 180, column: 5)
!739 = !DILocation(line: 189, column: 11, scope: !737)
!740 = !DILocation(line: 202, column: 20, scope: !737)
!741 = !DILocation(line: 203, column: 11, scope: !737)
!742 = !DILocation(line: 205, column: 9, scope: !737)
!743 = !DILocation(line: 209, column: 9, scope: !737)
!744 = !DILocation(line: 211, column: 11, scope: !737)
!745 = !DILocation(line: 215, column: 23, scope: !681)
!746 = !DILocation(line: 215, column: 21, scope: !681)
!747 = !DILocation(line: 216, column: 9, scope: !748)
!748 = distinct !DILexicalBlock(scope: !681, file: !3, line: 216, column: 7)
!749 = !DILocation(line: 216, column: 7, scope: !681)
!750 = !DILocation(line: 218, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !3, line: 217, column: 5)
!752 = !DILocation(line: 219, column: 7, scope: !751)
!753 = !DILocation(line: 222, column: 14, scope: !754)
!754 = distinct !DILexicalBlock(scope: !681, file: !3, line: 222, column: 7)
!755 = !DILocation(line: 222, column: 7, scope: !681)
!756 = !DILocation(line: 229, column: 18, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !3, line: 228, column: 5)
!758 = !DILocation(line: 0, scope: !754)
!759 = !DILocation(line: 232, column: 7, scope: !705)
!760 = !DILocation(line: 232, column: 7, scope: !681)
!761 = !DILocation(line: 234, column: 20, scope: !704)
!762 = !DILocation(line: 0, scope: !704)
!763 = !DILocation(line: 235, column: 12, scope: !764)
!764 = distinct !DILexicalBlock(scope: !704, file: !3, line: 235, column: 11)
!765 = !DILocation(line: 235, column: 16, scope: !764)
!766 = !DILocation(line: 235, column: 32, scope: !764)
!767 = !DILocation(line: 235, column: 19, scope: !764)
!768 = !DILocation(line: 235, column: 37, scope: !764)
!769 = !DILocation(line: 235, column: 11, scope: !704)
!770 = !DILocation(line: 237, column: 11, scope: !771)
!771 = distinct !DILexicalBlock(scope: !764, file: !3, line: 236, column: 9)
!772 = !DILocation(line: 241, column: 20, scope: !704)
!773 = !DILocation(line: 242, column: 35, scope: !704)
!774 = !DILocation(line: 242, column: 48, scope: !704)
!775 = !DILocation(line: 242, column: 19, scope: !704)
!776 = !DILocalVariable(name: "__dest", arg: 1, scope: !777, file: !778, line: 26, type: !781)
!777 = distinct !DISubprogram(name: "memcpy", scope: !778, file: !778, line: 26, type: !779, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !782)
!778 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!779 = !DISubroutineType(types: !780)
!780 = !{!24, !781, !678, !27}
!781 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!782 = !{!776, !783, !784}
!783 = !DILocalVariable(name: "__src", arg: 2, scope: !777, file: !778, line: 26, type: !678)
!784 = !DILocalVariable(name: "__len", arg: 3, scope: !777, file: !778, line: 26, type: !27)
!785 = !DILocation(line: 0, scope: !777, inlinedAt: !786)
!786 = distinct !DILocation(line: 243, column: 7, scope: !704)
!787 = !DILocation(line: 29, column: 10, scope: !777, inlinedAt: !786)
!788 = !DILocation(line: 244, column: 25, scope: !704)
!789 = !DILocation(line: 0, scope: !777, inlinedAt: !790)
!790 = distinct !DILocation(line: 244, column: 7, scope: !704)
!791 = !DILocation(line: 29, column: 10, scope: !777, inlinedAt: !790)
!792 = !DILocation(line: 247, column: 5, scope: !704)
!793 = !DILocation(line: 250, column: 18, scope: !794)
!794 = distinct !DILexicalBlock(scope: !705, file: !3, line: 249, column: 5)
!795 = !DILocation(line: 251, column: 16, scope: !794)
!796 = !DILocation(line: 252, column: 12, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !3, line: 252, column: 11)
!798 = !DILocation(line: 252, column: 11, scope: !794)
!799 = !DILocation(line: 253, column: 18, scope: !797)
!800 = !DILocation(line: 253, column: 9, scope: !797)
!801 = !DILocation(line: 255, column: 15, scope: !797)
!802 = !DILocation(line: 0, scope: !797)
!803 = !DILocation(line: 256, column: 20, scope: !794)
!804 = !DILocation(line: 0, scope: !705)
!805 = !DILocation(line: 260, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !681, file: !3, line: 260, column: 7)
!807 = !DILocation(line: 260, column: 18, scope: !806)
!808 = !DILocation(line: 260, column: 21, scope: !806)
!809 = !DILocation(line: 260, column: 45, scope: !806)
!810 = !DILocation(line: 260, column: 7, scope: !681)
!811 = !DILocation(line: 262, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !806, file: !3, line: 261, column: 5)
!813 = !DILocation(line: 266, column: 53, scope: !681)
!814 = !DILocalVariable(name: "s", arg: 1, scope: !815, file: !3, line: 115, type: !30)
!815 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !3, file: !3, line: 115, type: !816, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !818)
!816 = !DISubroutineType(types: !817)
!817 = !{!27, !30, !27}
!818 = !{!814, !819, !820}
!819 = !DILocalVariable(name: "len", arg: 2, scope: !815, file: !3, line: 115, type: !27)
!820 = !DILocalVariable(name: "n", scope: !815, file: !3, line: 117, type: !27)
!821 = !DILocation(line: 0, scope: !815, inlinedAt: !822)
!822 = distinct !DILocation(line: 266, column: 13, scope: !681)
!823 = !DILocation(line: 118, column: 11, scope: !824, inlinedAt: !822)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 118, column: 3)
!825 = distinct !DILexicalBlock(scope: !815, file: !3, line: 118, column: 3)
!826 = !DILocation(line: 118, column: 15, scope: !824, inlinedAt: !822)
!827 = !DILocation(line: 118, column: 24, scope: !824, inlinedAt: !822)
!828 = !DILocation(line: 118, column: 18, scope: !824, inlinedAt: !822)
!829 = !DILocation(line: 118, column: 29, scope: !824, inlinedAt: !822)
!830 = !DILocation(line: 118, column: 3, scope: !825, inlinedAt: !822)
!831 = !DILocation(line: 119, column: 5, scope: !824, inlinedAt: !822)
!832 = distinct !{!832, !830, !833, !527}
!833 = !DILocation(line: 119, column: 7, scope: !825, inlinedAt: !822)
!834 = !DILocation(line: 267, column: 15, scope: !835)
!835 = distinct !DILexicalBlock(scope: !681, file: !3, line: 267, column: 7)
!836 = !DILocation(line: 267, column: 7, scope: !681)
!837 = !DILocation(line: 270, column: 20, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 270, column: 11)
!839 = distinct !DILexicalBlock(scope: !835, file: !3, line: 268, column: 5)
!840 = !DILocation(line: 270, column: 11, scope: !839)
!841 = !DILocation(line: 271, column: 9, scope: !838)
!842 = !DILocation(line: 271, column: 37, scope: !838)
!843 = !DILocation(line: 272, column: 7, scope: !839)
!844 = !DILocation(line: 276, column: 7, scope: !681)
!845 = !DILocation(line: 278, column: 11, scope: !709)
!846 = !DILocation(line: 280, column: 23, scope: !707)
!847 = !DILocation(line: 0, scope: !707)
!848 = !DILocation(line: 281, column: 15, scope: !849)
!849 = distinct !DILexicalBlock(scope: !707, file: !3, line: 281, column: 15)
!850 = !DILocation(line: 281, column: 19, scope: !849)
!851 = !DILocation(line: 281, column: 22, scope: !849)
!852 = !DILocation(line: 281, column: 15, scope: !707)
!853 = !DILocation(line: 283, column: 20, scope: !854)
!854 = distinct !DILexicalBlock(scope: !849, file: !3, line: 283, column: 20)
!855 = !DILocation(line: 283, column: 33, scope: !854)
!856 = !DILocation(line: 283, column: 36, scope: !854)
!857 = !DILocation(line: 283, column: 20, scope: !849)
!858 = !DILocation(line: 0, scope: !849)
!859 = !DILocation(line: 288, column: 15, scope: !860)
!860 = distinct !DILexicalBlock(scope: !707, file: !3, line: 288, column: 15)
!861 = !DILocation(line: 288, column: 41, scope: !860)
!862 = !DILocation(line: 288, column: 15, scope: !707)
!863 = !DILocation(line: 289, column: 13, scope: !860)
!864 = !DILocation(line: 295, column: 15, scope: !713)
!865 = !DILocation(line: 295, column: 28, scope: !713)
!866 = !DILocation(line: 295, column: 31, scope: !713)
!867 = !DILocation(line: 295, column: 15, scope: !714)
!868 = !DILocation(line: 299, column: 27, scope: !712)
!869 = !DILocation(line: 0, scope: !712)
!870 = !DILocation(line: 300, column: 27, scope: !712)
!871 = !DILocation(line: 300, column: 31, scope: !712)
!872 = !DILocation(line: 300, column: 34, scope: !712)
!873 = !DILocation(line: 0, scope: !713)
!874 = !DILocation(line: 302, column: 15, scope: !875)
!875 = distinct !DILexicalBlock(scope: !714, file: !3, line: 302, column: 15)
!876 = !DILocation(line: 302, column: 15, scope: !714)
!877 = !DILocation(line: 303, column: 13, scope: !875)
!878 = !DILocation(line: 0, scope: !708)
!879 = !DILocation(line: 309, column: 19, scope: !709)
!880 = !DILocation(line: 310, column: 7, scope: !709)
!881 = !DILocation(line: 313, column: 5, scope: !709)
!882 = !DILocation(line: 317, column: 15, scope: !681)
!883 = !DILocation(line: 0, scope: !717)
!884 = !DILocation(line: 319, column: 7, scope: !681)
!885 = !DILocalVariable(name: "tmpl", arg: 1, scope: !886, file: !3, line: 131, type: !22)
!886 = distinct !DISubprogram(name: "mkdtemp_len", scope: !3, file: !3, line: 131, type: !887, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!25, !22, !27, !27, !36}
!889 = !{!885, !890, !891, !892}
!890 = !DILocalVariable(name: "suff_len", arg: 2, scope: !886, file: !3, line: 131, type: !27)
!891 = !DILocalVariable(name: "x_len", arg: 3, scope: !886, file: !3, line: 131, type: !27)
!892 = !DILocalVariable(name: "dry_run", arg: 4, scope: !886, file: !3, line: 131, type: !36)
!893 = !DILocation(line: 0, scope: !886, inlinedAt: !894)
!894 = distinct !DILocation(line: 321, column: 17, scope: !716)
!895 = !DILocation(line: 133, column: 47, scope: !886, inlinedAt: !894)
!896 = !DILocation(line: 133, column: 10, scope: !886, inlinedAt: !894)
!897 = !DILocation(line: 0, scope: !716)
!898 = !DILocation(line: 322, column: 15, scope: !899)
!899 = distinct !DILexicalBlock(scope: !716, file: !3, line: 322, column: 11)
!900 = !DILocation(line: 322, column: 11, scope: !716)
!901 = !DILocation(line: 325, column: 13, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 324, column: 15)
!903 = distinct !DILexicalBlock(scope: !899, file: !3, line: 323, column: 9)
!904 = !DILocalVariable(name: "tmpl", arg: 1, scope: !905, file: !3, line: 124, type: !22)
!905 = distinct !DISubprogram(name: "mkstemp_len", scope: !3, file: !3, line: 124, type: !887, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !906)
!906 = !{!904, !907, !908, !909}
!907 = !DILocalVariable(name: "suff_len", arg: 2, scope: !905, file: !3, line: 124, type: !27)
!908 = !DILocalVariable(name: "x_len", arg: 3, scope: !905, file: !3, line: 124, type: !27)
!909 = !DILocalVariable(name: "dry_run", arg: 4, scope: !905, file: !3, line: 124, type: !36)
!910 = !DILocation(line: 0, scope: !905, inlinedAt: !911)
!911 = distinct !DILocation(line: 332, column: 16, scope: !719)
!912 = !DILocation(line: 126, column: 47, scope: !905, inlinedAt: !911)
!913 = !DILocation(line: 126, column: 10, scope: !905, inlinedAt: !911)
!914 = !DILocation(line: 0, scope: !719)
!915 = !DILocation(line: 333, column: 14, scope: !916)
!916 = distinct !DILexicalBlock(scope: !719, file: !3, line: 333, column: 11)
!917 = !DILocation(line: 333, column: 18, scope: !916)
!918 = !DILocation(line: 333, column: 31, scope: !916)
!919 = !DILocation(line: 344, column: 7, scope: !723)
!920 = !DILocation(line: 347, column: 20, scope: !722)
!921 = !DILocation(line: 333, column: 34, scope: !916)
!922 = !DILocation(line: 333, column: 45, scope: !916)
!923 = !DILocation(line: 333, column: 11, scope: !719)
!924 = !DILocation(line: 335, column: 15, scope: !925)
!925 = distinct !DILexicalBlock(scope: !916, file: !3, line: 334, column: 9)
!926 = !DILocation(line: 336, column: 13, scope: !927)
!927 = distinct !DILexicalBlock(scope: !925, file: !3, line: 335, column: 15)
!928 = !DILocation(line: 342, column: 7, scope: !681)
!929 = !DILocation(line: 347, column: 39, scope: !722)
!930 = !DILocation(line: 347, column: 62, scope: !722)
!931 = !DILocation(line: 347, column: 48, scope: !722)
!932 = !DILocation(line: 347, column: 70, scope: !722)
!933 = !DILocation(line: 347, column: 11, scope: !723)
!934 = !DILocation(line: 349, column: 29, scope: !721)
!935 = !DILocation(line: 0, scope: !721)
!936 = !DILocation(line: 350, column: 11, scope: !721)
!937 = !DILocation(line: 351, column: 15, scope: !721)
!938 = !DILocation(line: 352, column: 13, scope: !939)
!939 = distinct !DILexicalBlock(scope: !721, file: !3, line: 351, column: 15)
!940 = !DILocation(line: 358, column: 1, scope: !681)
!941 = !DISubprogram(name: "bindtextdomain", scope: !550, file: !550, line: 86, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!942 = !DISubroutineType(types: !943)
!943 = !{!22, !30, !30}
!944 = !DISubprogram(name: "textdomain", scope: !550, file: !550, line: 82, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!945 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !3, file: !3, line: 145, type: !189, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !553)
!946 = !DILocation(line: 147, column: 8, scope: !947)
!947 = distinct !DILexicalBlock(scope: !945, file: !3, line: 147, column: 7)
!948 = !DILocation(line: 147, column: 7, scope: !945)
!949 = !DILocation(line: 148, column: 5, scope: !947)
!950 = !DILocation(line: 149, column: 26, scope: !951)
!951 = distinct !DILexicalBlock(scope: !947, file: !3, line: 149, column: 12)
!952 = !DILocation(line: 149, column: 12, scope: !951)
!953 = !DILocation(line: 149, column: 34, scope: !951)
!954 = !DILocation(line: 149, column: 12, scope: !947)
!955 = !DILocation(line: 150, column: 5, scope: !951)
!956 = !DILocation(line: 151, column: 1, scope: !945)
!957 = !DISubprogram(name: "atexit", scope: !672, file: !672, line: 602, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!958 = !DISubroutineType(types: !959)
!959 = !{!25, !188}
!960 = !DISubprogram(name: "getopt_long", scope: !128, file: !128, line: 66, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!961 = !DISubroutineType(types: !962)
!962 = !{!25, !25, !963, !30, !965, !133}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!966 = !DISubprogram(name: "puts", scope: !162, file: !162, line: 661, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!967 = !DISubroutineType(types: !968)
!968 = !{!25, !30}
!969 = !DISubprogram(name: "close", scope: !970, file: !970, line: 358, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!970 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!971 = !DISubroutineType(types: !972)
!972 = !{!25, !25}
!973 = !DISubprogram(name: "remove", scope: !162, file: !162, line: 152, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!974 = distinct !DISubprogram(name: "last_component", scope: !377, file: !377, line: 29, type: !673, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !975)
!975 = !{!976, !977, !978, !979}
!976 = !DILocalVariable(name: "name", arg: 1, scope: !974, file: !377, line: 29, type: !30)
!977 = !DILocalVariable(name: "base", scope: !974, file: !377, line: 31, type: !30)
!978 = !DILocalVariable(name: "last_was_slash", scope: !974, file: !377, line: 35, type: !36)
!979 = !DILocalVariable(name: "p", scope: !980, file: !377, line: 36, type: !30)
!980 = distinct !DILexicalBlock(scope: !974, file: !377, line: 36, column: 3)
!981 = !DILocation(line: 0, scope: !974)
!982 = !DILocation(line: 32, column: 3, scope: !974)
!983 = !DILocation(line: 32, column: 10, scope: !974)
!984 = !DILocation(line: 33, column: 9, scope: !974)
!985 = distinct !{!985, !982, !984, !527}
!986 = !DILocation(line: 36, column: 30, scope: !987)
!987 = distinct !DILexicalBlock(scope: !980, file: !377, line: 36, column: 3)
!988 = !DILocation(line: 31, column: 15, scope: !974)
!989 = !DILocation(line: 0, scope: !980)
!990 = !DILocation(line: 36, column: 3, scope: !980)
!991 = !DILocation(line: 47, column: 3, scope: !974)
!992 = !DILocation(line: 40, column: 16, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !377, line: 38, column: 11)
!994 = distinct !DILexicalBlock(scope: !987, file: !377, line: 37, column: 5)
!995 = !DILocation(line: 36, column: 35, scope: !987)
!996 = !DILocation(line: 36, column: 3, scope: !987)
!997 = distinct !{!997, !990, !998, !527}
!998 = !DILocation(line: 45, column: 5, scope: !980)
!999 = distinct !DISubprogram(name: "base_len", scope: !377, file: !377, line: 51, type: !1000, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!27, !30}
!1002 = !{!1003, !1004, !1005}
!1003 = !DILocalVariable(name: "name", arg: 1, scope: !999, file: !377, line: 51, type: !30)
!1004 = !DILocalVariable(name: "len", scope: !999, file: !377, line: 53, type: !27)
!1005 = !DILocalVariable(name: "prefix_len", scope: !999, file: !377, line: 61, type: !27)
!1006 = !DILocation(line: 0, scope: !999)
!1007 = !DILocation(line: 54, column: 14, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !999, file: !377, line: 54, column: 3)
!1009 = !DILocation(line: 54, column: 8, scope: !1008)
!1010 = !DILocation(line: 0, scope: !1008)
!1011 = !DILocation(line: 54, column: 32, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !377, line: 54, column: 3)
!1013 = !DILocation(line: 54, column: 38, scope: !1012)
!1014 = !DILocation(line: 54, column: 41, scope: !1012)
!1015 = !DILocation(line: 54, column: 3, scope: !1008)
!1016 = distinct !{!1016, !1015, !1017, !527}
!1017 = !DILocation(line: 55, column: 5, scope: !1008)
!1018 = !DILocation(line: 66, column: 3, scope: !999)
!1019 = distinct !DISubprogram(name: "close_stream", scope: !379, file: !379, line: 55, type: !1020, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1056)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!25, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !64, line: 7, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 49, size: 1728, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1024, file: !66, line: 51, baseType: !25, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1024, file: !66, line: 54, baseType: !22, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1024, file: !66, line: 55, baseType: !22, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1024, file: !66, line: 56, baseType: !22, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1024, file: !66, line: 57, baseType: !22, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1024, file: !66, line: 58, baseType: !22, size: 64, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1024, file: !66, line: 59, baseType: !22, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1024, file: !66, line: 60, baseType: !22, size: 64, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1024, file: !66, line: 61, baseType: !22, size: 64, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1024, file: !66, line: 64, baseType: !22, size: 64, offset: 576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1024, file: !66, line: 65, baseType: !22, size: 64, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1024, file: !66, line: 66, baseType: !22, size: 64, offset: 704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1024, file: !66, line: 68, baseType: !81, size: 64, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1024, file: !66, line: 70, baseType: !1040, size: 64, offset: 832)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1024, file: !66, line: 72, baseType: !25, size: 32, offset: 896)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1024, file: !66, line: 73, baseType: !25, size: 32, offset: 928)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1024, file: !66, line: 74, baseType: !88, size: 64, offset: 960)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1024, file: !66, line: 77, baseType: !26, size: 16, offset: 1024)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1024, file: !66, line: 78, baseType: !93, size: 8, offset: 1040)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1024, file: !66, line: 79, baseType: !95, size: 8, offset: 1048)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1024, file: !66, line: 81, baseType: !99, size: 64, offset: 1088)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1024, file: !66, line: 89, baseType: !102, size: 64, offset: 1152)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1024, file: !66, line: 91, baseType: !104, size: 64, offset: 1216)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1024, file: !66, line: 92, baseType: !107, size: 64, offset: 1280)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1024, file: !66, line: 93, baseType: !1040, size: 64, offset: 1344)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1024, file: !66, line: 94, baseType: !24, size: 64, offset: 1408)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1024, file: !66, line: 95, baseType: !27, size: 64, offset: 1472)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1024, file: !66, line: 96, baseType: !25, size: 32, offset: 1536)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1024, file: !66, line: 98, baseType: !114, size: 160, offset: 1568)
!1056 = !{!1057, !1058, !1060, !1061}
!1057 = !DILocalVariable(name: "stream", arg: 1, scope: !1019, file: !379, line: 55, type: !1022)
!1058 = !DILocalVariable(name: "some_pending", scope: !1019, file: !379, line: 57, type: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!1060 = !DILocalVariable(name: "prev_fail", scope: !1019, file: !379, line: 58, type: !1059)
!1061 = !DILocalVariable(name: "fclose_fail", scope: !1019, file: !379, line: 59, type: !1059)
!1062 = !DILocation(line: 0, scope: !1019)
!1063 = !DILocation(line: 57, column: 30, scope: !1019)
!1064 = !DILocalVariable(name: "__stream", arg: 1, scope: !1065, file: !1066, line: 135, type: !1022)
!1065 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1066, file: !1066, line: 135, type: !1020, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !1067)
!1066 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1067 = !{!1064}
!1068 = !DILocation(line: 0, scope: !1065, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 58, column: 27, scope: !1019)
!1070 = !DILocation(line: 137, column: 10, scope: !1065, inlinedAt: !1069)
!1071 = !{!1072, !562, i64 0}
!1072 = !{!"_IO_FILE", !562, i64 0, !468, i64 8, !468, i64 16, !468, i64 24, !468, i64 32, !468, i64 40, !468, i64 48, !468, i64 56, !468, i64 64, !468, i64 72, !468, i64 80, !468, i64 88, !468, i64 96, !468, i64 104, !562, i64 112, !562, i64 116, !1073, i64 120, !596, i64 128, !469, i64 130, !469, i64 131, !468, i64 136, !1073, i64 144, !468, i64 152, !468, i64 160, !468, i64 168, !468, i64 176, !1073, i64 184, !562, i64 192, !469, i64 196}
!1073 = !{!"long", !469, i64 0}
!1074 = !DILocation(line: 58, column: 43, scope: !1019)
!1075 = !DILocation(line: 59, column: 29, scope: !1019)
!1076 = !DILocation(line: 59, column: 45, scope: !1019)
!1077 = !DILocation(line: 69, column: 17, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1019, file: !379, line: 69, column: 7)
!1079 = !DILocation(line: 57, column: 50, scope: !1019)
!1080 = !DILocation(line: 69, column: 33, scope: !1078)
!1081 = !DILocation(line: 69, column: 53, scope: !1078)
!1082 = !DILocation(line: 69, column: 59, scope: !1078)
!1083 = !DILocation(line: 69, column: 7, scope: !1019)
!1084 = !DILocation(line: 71, column: 11, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1078, file: !379, line: 70, column: 5)
!1086 = !DILocation(line: 72, column: 9, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1085, file: !379, line: 71, column: 11)
!1088 = !DILocation(line: 72, column: 15, scope: !1087)
!1089 = !DILocation(line: 77, column: 1, scope: !1019)
!1090 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !146, file: !146, line: 50, type: !486, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1091)
!1091 = !{!1092}
!1092 = !DILocalVariable(name: "file", arg: 1, scope: !1090, file: !146, line: 50, type: !30)
!1093 = !DILocation(line: 0, scope: !1090)
!1094 = !DILocation(line: 52, column: 13, scope: !1090)
!1095 = !DILocation(line: 53, column: 1, scope: !1090)
!1096 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !146, file: !146, line: 87, type: !1097, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1099)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !36}
!1099 = !{!1100}
!1100 = !DILocalVariable(name: "ignore", arg: 1, scope: !1096, file: !146, line: 87, type: !36)
!1101 = !DILocation(line: 0, scope: !1096)
!1102 = !DILocation(line: 89, column: 16, scope: !1096)
!1103 = !{!1104, !1104, i64 0}
!1104 = !{!"_Bool", !469, i64 0}
!1105 = !DILocation(line: 90, column: 1, scope: !1096)
!1106 = distinct !DISubprogram(name: "close_stdout", scope: !146, file: !146, line: 116, type: !189, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1107)
!1107 = !{!1108}
!1108 = !DILocalVariable(name: "write_error", scope: !1109, file: !146, line: 121, type: !30)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !146, line: 120, column: 5)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !146, line: 118, column: 7)
!1111 = !DILocation(line: 118, column: 21, scope: !1110)
!1112 = !DILocation(line: 118, column: 7, scope: !1110)
!1113 = !DILocation(line: 118, column: 29, scope: !1110)
!1114 = !DILocation(line: 119, column: 7, scope: !1110)
!1115 = !DILocation(line: 119, column: 12, scope: !1110)
!1116 = !{i8 0, i8 2}
!1117 = !DILocation(line: 119, column: 25, scope: !1110)
!1118 = !DILocation(line: 119, column: 28, scope: !1110)
!1119 = !DILocation(line: 119, column: 34, scope: !1110)
!1120 = !DILocation(line: 118, column: 7, scope: !1106)
!1121 = !DILocation(line: 121, column: 33, scope: !1109)
!1122 = !DILocation(line: 0, scope: !1109)
!1123 = !DILocation(line: 122, column: 11, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1109, file: !146, line: 122, column: 11)
!1125 = !DILocation(line: 0, scope: !1124)
!1126 = !DILocation(line: 122, column: 11, scope: !1109)
!1127 = !DILocation(line: 123, column: 9, scope: !1124)
!1128 = !DILocation(line: 126, column: 9, scope: !1124)
!1129 = !DILocation(line: 128, column: 14, scope: !1109)
!1130 = !DILocation(line: 128, column: 7, scope: !1109)
!1131 = !DILocation(line: 133, column: 42, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1106, file: !146, line: 133, column: 7)
!1133 = !DILocation(line: 133, column: 28, scope: !1132)
!1134 = !DILocation(line: 133, column: 50, scope: !1132)
!1135 = !DILocation(line: 133, column: 7, scope: !1106)
!1136 = !DILocation(line: 134, column: 12, scope: !1132)
!1137 = !DILocation(line: 134, column: 5, scope: !1132)
!1138 = !DILocation(line: 135, column: 1, scope: !1106)
!1139 = distinct !DISubprogram(name: "verror", scope: !153, file: !153, line: 251, type: !1140, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !25, !25, !30, !161}
!1142 = !{!1143, !1144, !1145, !1146}
!1143 = !DILocalVariable(name: "status", arg: 1, scope: !1139, file: !153, line: 251, type: !25)
!1144 = !DILocalVariable(name: "errnum", arg: 2, scope: !1139, file: !153, line: 251, type: !25)
!1145 = !DILocalVariable(name: "message", arg: 3, scope: !1139, file: !153, line: 251, type: !30)
!1146 = !DILocalVariable(name: "args", arg: 4, scope: !1139, file: !153, line: 251, type: !161)
!1147 = !DILocation(line: 0, scope: !1139)
!1148 = !DILocation(line: 251, column: 1, scope: !1139)
!1149 = !DILocation(line: 261, column: 3, scope: !1139)
!1150 = !DILocation(line: 265, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1139, file: !153, line: 265, column: 7)
!1152 = !DILocation(line: 265, column: 7, scope: !1139)
!1153 = !DILocation(line: 266, column: 5, scope: !1151)
!1154 = !DILocation(line: 272, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !153, line: 268, column: 5)
!1156 = !DILocation(line: 276, column: 3, scope: !1139)
!1157 = !{i64 0, i64 8, !467, i64 8, i64 8, !467, i64 16, i64 8, !467, i64 24, i64 4, !561, i64 28, i64 4, !561}
!1158 = !DILocation(line: 282, column: 1, scope: !1139)
!1159 = distinct !DISubprogram(name: "flush_stdout", scope: !153, file: !153, line: 163, type: !189, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !1160)
!1160 = !{!1161}
!1161 = !DILocalVariable(name: "stdout_fd", scope: !1159, file: !153, line: 166, type: !25)
!1162 = !DILocation(line: 0, scope: !1159)
!1163 = !DILocalVariable(name: "fd", arg: 1, scope: !1164, file: !153, line: 145, type: !25)
!1164 = distinct !DISubprogram(name: "is_open", scope: !153, file: !153, line: 145, type: !971, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !1165)
!1165 = !{!1163}
!1166 = !DILocation(line: 0, scope: !1164, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 182, column: 25, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1159, file: !153, line: 182, column: 7)
!1169 = !DILocation(line: 157, column: 15, scope: !1164, inlinedAt: !1167)
!1170 = !DILocation(line: 182, column: 25, scope: !1168)
!1171 = !DILocation(line: 182, column: 7, scope: !1159)
!1172 = !DILocation(line: 184, column: 5, scope: !1168)
!1173 = !DILocation(line: 185, column: 1, scope: !1159)
!1174 = distinct !DISubprogram(name: "error_tail", scope: !153, file: !153, line: 219, type: !1140, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !1175)
!1175 = !{!1176, !1177, !1178, !1179}
!1176 = !DILocalVariable(name: "status", arg: 1, scope: !1174, file: !153, line: 219, type: !25)
!1177 = !DILocalVariable(name: "errnum", arg: 2, scope: !1174, file: !153, line: 219, type: !25)
!1178 = !DILocalVariable(name: "message", arg: 3, scope: !1174, file: !153, line: 219, type: !30)
!1179 = !DILocalVariable(name: "args", arg: 4, scope: !1174, file: !153, line: 219, type: !161)
!1180 = !DILocation(line: 0, scope: !1174)
!1181 = !DILocation(line: 219, column: 1, scope: !1174)
!1182 = !DILocation(line: 229, column: 13, scope: !1174)
!1183 = !DILocation(line: 229, column: 3, scope: !1174)
!1184 = !DILocalVariable(name: "__stream", arg: 1, scope: !1185, file: !1186, line: 132, type: !1189)
!1185 = distinct !DISubprogram(name: "vfprintf", scope: !1186, file: !1186, line: 132, type: !1187, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !1224)
!1186 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!25, !1189, !557, !163}
!1189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !64, line: 7, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 49, size: 1728, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1192, file: !66, line: 51, baseType: !25, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1192, file: !66, line: 54, baseType: !22, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1192, file: !66, line: 55, baseType: !22, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1192, file: !66, line: 56, baseType: !22, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1192, file: !66, line: 57, baseType: !22, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1192, file: !66, line: 58, baseType: !22, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1192, file: !66, line: 59, baseType: !22, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1192, file: !66, line: 60, baseType: !22, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1192, file: !66, line: 61, baseType: !22, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1192, file: !66, line: 64, baseType: !22, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1192, file: !66, line: 65, baseType: !22, size: 64, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1192, file: !66, line: 66, baseType: !22, size: 64, offset: 704)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1192, file: !66, line: 68, baseType: !81, size: 64, offset: 768)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1192, file: !66, line: 70, baseType: !1208, size: 64, offset: 832)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1192, file: !66, line: 72, baseType: !25, size: 32, offset: 896)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1192, file: !66, line: 73, baseType: !25, size: 32, offset: 928)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1192, file: !66, line: 74, baseType: !88, size: 64, offset: 960)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1192, file: !66, line: 77, baseType: !26, size: 16, offset: 1024)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1192, file: !66, line: 78, baseType: !93, size: 8, offset: 1040)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1192, file: !66, line: 79, baseType: !95, size: 8, offset: 1048)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1192, file: !66, line: 81, baseType: !99, size: 64, offset: 1088)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1192, file: !66, line: 89, baseType: !102, size: 64, offset: 1152)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1192, file: !66, line: 91, baseType: !104, size: 64, offset: 1216)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1192, file: !66, line: 92, baseType: !107, size: 64, offset: 1280)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1192, file: !66, line: 93, baseType: !1208, size: 64, offset: 1344)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1192, file: !66, line: 94, baseType: !24, size: 64, offset: 1408)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1192, file: !66, line: 95, baseType: !27, size: 64, offset: 1472)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1192, file: !66, line: 96, baseType: !25, size: 32, offset: 1536)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1192, file: !66, line: 98, baseType: !114, size: 160, offset: 1568)
!1224 = !{!1184, !1225, !1226}
!1225 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1185, file: !1186, line: 133, type: !557)
!1226 = !DILocalVariable(name: "__ap", arg: 3, scope: !1185, file: !1186, line: 133, type: !163)
!1227 = !DILocation(line: 0, scope: !1185, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 229, column: 3, scope: !1174)
!1229 = !DILocation(line: 135, column: 10, scope: !1185, inlinedAt: !1228)
!1230 = !{!1231, !1233}
!1231 = distinct !{!1231, !1232, !"vfprintf.inline: argument 0"}
!1232 = distinct !{!1232, !"vfprintf.inline"}
!1233 = distinct !{!1233, !1232, !"vfprintf.inline: argument 1"}
!1234 = !DILocation(line: 232, column: 3, scope: !1174)
!1235 = !DILocation(line: 233, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1174, file: !153, line: 233, column: 7)
!1237 = !DILocation(line: 233, column: 7, scope: !1174)
!1238 = !DILocalVariable(name: "errnum", arg: 1, scope: !1239, file: !153, line: 188, type: !25)
!1239 = distinct !DISubprogram(name: "print_errno_message", scope: !153, file: !153, line: 188, type: !457, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !1240)
!1240 = !{!1238, !1241, !1242}
!1241 = !DILocalVariable(name: "s", scope: !1239, file: !153, line: 190, type: !30)
!1242 = !DILocalVariable(name: "errbuf", scope: !1239, file: !153, line: 193, type: !1243)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 1024)
!1246 = !DILocation(line: 0, scope: !1239, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 234, column: 5, scope: !1236)
!1248 = !DILocation(line: 193, column: 3, scope: !1239, inlinedAt: !1247)
!1249 = !DILocation(line: 193, column: 8, scope: !1239, inlinedAt: !1247)
!1250 = !DILocation(line: 195, column: 7, scope: !1239, inlinedAt: !1247)
!1251 = !DILocation(line: 207, column: 9, scope: !1252, inlinedAt: !1247)
!1252 = distinct !DILexicalBlock(scope: !1239, file: !153, line: 207, column: 7)
!1253 = !DILocation(line: 207, column: 7, scope: !1239, inlinedAt: !1247)
!1254 = !DILocation(line: 208, column: 9, scope: !1252, inlinedAt: !1247)
!1255 = !DILocation(line: 208, column: 5, scope: !1252, inlinedAt: !1247)
!1256 = !DILocation(line: 214, column: 3, scope: !1239, inlinedAt: !1247)
!1257 = !DILocation(line: 216, column: 1, scope: !1239, inlinedAt: !1247)
!1258 = !DILocation(line: 234, column: 5, scope: !1236)
!1259 = !DILocation(line: 238, column: 3, scope: !1174)
!1260 = !DILocalVariable(name: "__c", arg: 1, scope: !1261, file: !1066, line: 101, type: !25)
!1261 = distinct !DISubprogram(name: "putc_unlocked", scope: !1066, file: !1066, line: 101, type: !1262, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !1264)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!25, !25, !1190}
!1264 = !{!1260, !1265}
!1265 = !DILocalVariable(name: "__stream", arg: 2, scope: !1261, file: !1066, line: 101, type: !1190)
!1266 = !DILocation(line: 0, scope: !1261, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 238, column: 3, scope: !1174)
!1268 = !DILocation(line: 103, column: 10, scope: !1261, inlinedAt: !1267)
!1269 = !{!1072, !468, i64 40}
!1270 = !{!1072, !468, i64 48}
!1271 = !{!"branch_weights", i32 2000, i32 1}
!1272 = !DILocation(line: 240, column: 3, scope: !1174)
!1273 = !DILocation(line: 241, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1174, file: !153, line: 241, column: 7)
!1275 = !DILocation(line: 241, column: 7, scope: !1174)
!1276 = !DILocation(line: 242, column: 5, scope: !1274)
!1277 = !DILocation(line: 243, column: 1, scope: !1174)
!1278 = !DISubprogram(name: "strerror_r", scope: !1279, file: !1279, line: 444, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1279 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!22, !25, !22, !27}
!1282 = !DISubprogram(name: "fflush_unlocked", scope: !162, file: !162, line: 239, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!25, !1190}
!1285 = !DISubprogram(name: "fcntl", scope: !1286, file: !1286, line: 149, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1286 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!25, !25, !25, null}
!1289 = distinct !DISubprogram(name: "error", scope: !153, file: !153, line: 285, type: !1290, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !1292)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !25, !25, !30, null}
!1292 = !{!1293, !1294, !1295, !1296}
!1293 = !DILocalVariable(name: "status", arg: 1, scope: !1289, file: !153, line: 285, type: !25)
!1294 = !DILocalVariable(name: "errnum", arg: 2, scope: !1289, file: !153, line: 285, type: !25)
!1295 = !DILocalVariable(name: "message", arg: 3, scope: !1289, file: !153, line: 285, type: !30)
!1296 = !DILocalVariable(name: "ap", scope: !1289, file: !153, line: 287, type: !161)
!1297 = !DILocation(line: 0, scope: !1289)
!1298 = !DILocation(line: 287, column: 3, scope: !1289)
!1299 = !DILocation(line: 287, column: 11, scope: !1289)
!1300 = !DILocation(line: 288, column: 3, scope: !1289)
!1301 = !DILocation(line: 289, column: 3, scope: !1289)
!1302 = !DILocation(line: 290, column: 3, scope: !1289)
!1303 = !DILocation(line: 291, column: 1, scope: !1289)
!1304 = !DILocation(line: 0, scope: !158)
!1305 = !DILocation(line: 298, column: 1, scope: !158)
!1306 = !DILocation(line: 302, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !158, file: !153, line: 302, column: 7)
!1308 = !DILocation(line: 302, column: 7, scope: !158)
!1309 = !DILocation(line: 307, column: 11, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !153, line: 307, column: 11)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !153, line: 303, column: 5)
!1312 = !DILocation(line: 307, column: 27, scope: !1310)
!1313 = !DILocation(line: 308, column: 11, scope: !1310)
!1314 = !DILocation(line: 308, column: 28, scope: !1310)
!1315 = !DILocation(line: 308, column: 25, scope: !1310)
!1316 = !DILocation(line: 309, column: 15, scope: !1310)
!1317 = !DILocation(line: 309, column: 33, scope: !1310)
!1318 = !DILocation(line: 310, column: 19, scope: !1310)
!1319 = !DILocation(line: 311, column: 22, scope: !1310)
!1320 = !DILocation(line: 311, column: 56, scope: !1310)
!1321 = !DILocation(line: 307, column: 11, scope: !1311)
!1322 = !DILocation(line: 316, column: 21, scope: !1311)
!1323 = !DILocation(line: 317, column: 23, scope: !1311)
!1324 = !DILocation(line: 318, column: 5, scope: !1311)
!1325 = !DILocation(line: 327, column: 3, scope: !158)
!1326 = !DILocation(line: 331, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !158, file: !153, line: 331, column: 7)
!1328 = !DILocation(line: 331, column: 7, scope: !158)
!1329 = !DILocation(line: 332, column: 5, scope: !1327)
!1330 = !DILocation(line: 338, column: 7, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !153, line: 334, column: 5)
!1332 = !DILocation(line: 346, column: 3, scope: !158)
!1333 = !DILocation(line: 350, column: 3, scope: !158)
!1334 = !DILocation(line: 356, column: 1, scope: !158)
!1335 = distinct !DISubprogram(name: "error_at_line", scope: !153, file: !153, line: 359, type: !1336, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !1338)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !25, !25, !30, !7, !30, null}
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344}
!1339 = !DILocalVariable(name: "status", arg: 1, scope: !1335, file: !153, line: 359, type: !25)
!1340 = !DILocalVariable(name: "errnum", arg: 2, scope: !1335, file: !153, line: 359, type: !25)
!1341 = !DILocalVariable(name: "file_name", arg: 3, scope: !1335, file: !153, line: 359, type: !30)
!1342 = !DILocalVariable(name: "line_number", arg: 4, scope: !1335, file: !153, line: 360, type: !7)
!1343 = !DILocalVariable(name: "message", arg: 5, scope: !1335, file: !153, line: 360, type: !30)
!1344 = !DILocalVariable(name: "ap", scope: !1335, file: !153, line: 362, type: !161)
!1345 = !DILocation(line: 0, scope: !1335)
!1346 = !DILocation(line: 362, column: 3, scope: !1335)
!1347 = !DILocation(line: 362, column: 11, scope: !1335)
!1348 = !DILocation(line: 363, column: 3, scope: !1335)
!1349 = !DILocation(line: 364, column: 3, scope: !1335)
!1350 = !DILocation(line: 366, column: 3, scope: !1335)
!1351 = !DILocation(line: 367, column: 1, scope: !1335)
!1352 = distinct !DISubprogram(name: "rpl_fclose", scope: !381, file: !381, line: 58, type: !1353, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1389)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!25, !1355}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !64, line: 7, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 49, size: 1728, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1357, file: !66, line: 51, baseType: !25, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1357, file: !66, line: 54, baseType: !22, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1357, file: !66, line: 55, baseType: !22, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1357, file: !66, line: 56, baseType: !22, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1357, file: !66, line: 57, baseType: !22, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1357, file: !66, line: 58, baseType: !22, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1357, file: !66, line: 59, baseType: !22, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1357, file: !66, line: 60, baseType: !22, size: 64, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1357, file: !66, line: 61, baseType: !22, size: 64, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1357, file: !66, line: 64, baseType: !22, size: 64, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1357, file: !66, line: 65, baseType: !22, size: 64, offset: 640)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1357, file: !66, line: 66, baseType: !22, size: 64, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1357, file: !66, line: 68, baseType: !81, size: 64, offset: 768)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1357, file: !66, line: 70, baseType: !1373, size: 64, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1357, file: !66, line: 72, baseType: !25, size: 32, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1357, file: !66, line: 73, baseType: !25, size: 32, offset: 928)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1357, file: !66, line: 74, baseType: !88, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1357, file: !66, line: 77, baseType: !26, size: 16, offset: 1024)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1357, file: !66, line: 78, baseType: !93, size: 8, offset: 1040)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1357, file: !66, line: 79, baseType: !95, size: 8, offset: 1048)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1357, file: !66, line: 81, baseType: !99, size: 64, offset: 1088)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1357, file: !66, line: 89, baseType: !102, size: 64, offset: 1152)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1357, file: !66, line: 91, baseType: !104, size: 64, offset: 1216)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1357, file: !66, line: 92, baseType: !107, size: 64, offset: 1280)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1357, file: !66, line: 93, baseType: !1373, size: 64, offset: 1344)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1357, file: !66, line: 94, baseType: !24, size: 64, offset: 1408)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1357, file: !66, line: 95, baseType: !27, size: 64, offset: 1472)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1357, file: !66, line: 96, baseType: !25, size: 32, offset: 1536)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1357, file: !66, line: 98, baseType: !114, size: 160, offset: 1568)
!1389 = !{!1390, !1391, !1392, !1393}
!1390 = !DILocalVariable(name: "fp", arg: 1, scope: !1352, file: !381, line: 58, type: !1355)
!1391 = !DILocalVariable(name: "saved_errno", scope: !1352, file: !381, line: 60, type: !25)
!1392 = !DILocalVariable(name: "fd", scope: !1352, file: !381, line: 63, type: !25)
!1393 = !DILocalVariable(name: "result", scope: !1352, file: !381, line: 74, type: !25)
!1394 = !DILocation(line: 0, scope: !1352)
!1395 = !DILocation(line: 63, column: 12, scope: !1352)
!1396 = !DILocation(line: 64, column: 10, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1352, file: !381, line: 64, column: 7)
!1398 = !DILocation(line: 64, column: 7, scope: !1352)
!1399 = !DILocation(line: 65, column: 12, scope: !1397)
!1400 = !DILocation(line: 65, column: 5, scope: !1397)
!1401 = !DILocation(line: 70, column: 9, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1352, file: !381, line: 70, column: 7)
!1403 = !DILocation(line: 70, column: 23, scope: !1402)
!1404 = !DILocation(line: 70, column: 33, scope: !1402)
!1405 = !DILocation(line: 70, column: 26, scope: !1402)
!1406 = !DILocation(line: 70, column: 59, scope: !1402)
!1407 = !DILocation(line: 71, column: 7, scope: !1402)
!1408 = !DILocation(line: 71, column: 10, scope: !1402)
!1409 = !DILocation(line: 70, column: 7, scope: !1352)
!1410 = !DILocation(line: 100, column: 12, scope: !1352)
!1411 = !DILocation(line: 105, column: 7, scope: !1352)
!1412 = !DILocation(line: 72, column: 19, scope: !1402)
!1413 = !DILocation(line: 105, column: 19, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1352, file: !381, line: 105, column: 7)
!1415 = !DILocation(line: 107, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1414, file: !381, line: 106, column: 5)
!1417 = !DILocation(line: 109, column: 5, scope: !1416)
!1418 = !DILocation(line: 112, column: 1, scope: !1352)
!1419 = !DISubprogram(name: "fileno", scope: !162, file: !162, line: 809, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1420 = !DISubprogram(name: "fclose", scope: !162, file: !162, line: 178, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1421 = !DISubprogram(name: "lseek", scope: !970, file: !970, line: 339, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!88, !25, !88, !25}
!1424 = distinct !DISubprogram(name: "rpl_fflush", scope: !383, file: !383, line: 130, type: !1425, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !1461)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!25, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !64, line: 7, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 49, size: 1728, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1429, file: !66, line: 51, baseType: !25, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1429, file: !66, line: 54, baseType: !22, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1429, file: !66, line: 55, baseType: !22, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1429, file: !66, line: 56, baseType: !22, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1429, file: !66, line: 57, baseType: !22, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1429, file: !66, line: 58, baseType: !22, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1429, file: !66, line: 59, baseType: !22, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1429, file: !66, line: 60, baseType: !22, size: 64, offset: 448)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1429, file: !66, line: 61, baseType: !22, size: 64, offset: 512)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1429, file: !66, line: 64, baseType: !22, size: 64, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1429, file: !66, line: 65, baseType: !22, size: 64, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1429, file: !66, line: 66, baseType: !22, size: 64, offset: 704)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1429, file: !66, line: 68, baseType: !81, size: 64, offset: 768)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1429, file: !66, line: 70, baseType: !1445, size: 64, offset: 832)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1429, file: !66, line: 72, baseType: !25, size: 32, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1429, file: !66, line: 73, baseType: !25, size: 32, offset: 928)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1429, file: !66, line: 74, baseType: !88, size: 64, offset: 960)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1429, file: !66, line: 77, baseType: !26, size: 16, offset: 1024)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1429, file: !66, line: 78, baseType: !93, size: 8, offset: 1040)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1429, file: !66, line: 79, baseType: !95, size: 8, offset: 1048)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1429, file: !66, line: 81, baseType: !99, size: 64, offset: 1088)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1429, file: !66, line: 89, baseType: !102, size: 64, offset: 1152)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1429, file: !66, line: 91, baseType: !104, size: 64, offset: 1216)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1429, file: !66, line: 92, baseType: !107, size: 64, offset: 1280)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1429, file: !66, line: 93, baseType: !1445, size: 64, offset: 1344)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1429, file: !66, line: 94, baseType: !24, size: 64, offset: 1408)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1429, file: !66, line: 95, baseType: !27, size: 64, offset: 1472)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1429, file: !66, line: 96, baseType: !25, size: 32, offset: 1536)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1429, file: !66, line: 98, baseType: !114, size: 160, offset: 1568)
!1461 = !{!1462}
!1462 = !DILocalVariable(name: "stream", arg: 1, scope: !1424, file: !383, line: 130, type: !1427)
!1463 = !DILocation(line: 0, scope: !1424)
!1464 = !DILocation(line: 151, column: 14, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1424, file: !383, line: 151, column: 7)
!1466 = !DILocation(line: 151, column: 22, scope: !1465)
!1467 = !DILocation(line: 151, column: 27, scope: !1465)
!1468 = !DILocation(line: 151, column: 7, scope: !1424)
!1469 = !DILocation(line: 152, column: 12, scope: !1465)
!1470 = !DILocation(line: 152, column: 5, scope: !1465)
!1471 = !DILocalVariable(name: "fp", arg: 1, scope: !1472, file: !383, line: 42, type: !1427)
!1472 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !383, file: !383, line: 42, type: !1473, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !1427}
!1475 = !{!1471}
!1476 = !DILocation(line: 0, scope: !1472, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 157, column: 3, scope: !1424)
!1478 = !DILocation(line: 44, column: 12, scope: !1479, inlinedAt: !1477)
!1479 = distinct !DILexicalBlock(scope: !1472, file: !383, line: 44, column: 7)
!1480 = !DILocation(line: 44, column: 19, scope: !1479, inlinedAt: !1477)
!1481 = !DILocation(line: 44, column: 7, scope: !1472, inlinedAt: !1477)
!1482 = !DILocation(line: 46, column: 5, scope: !1479, inlinedAt: !1477)
!1483 = !DILocation(line: 159, column: 10, scope: !1424)
!1484 = !DILocation(line: 159, column: 3, scope: !1424)
!1485 = !DILocation(line: 236, column: 1, scope: !1424)
!1486 = !DISubprogram(name: "fflush", scope: !162, file: !162, line: 230, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1487 = distinct !DISubprogram(name: "file_name_concat", scope: !386, file: !386, line: 35, type: !1488, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!22, !30, !30, !684}
!1490 = !{!1491, !1492, !1493, !1494}
!1491 = !DILocalVariable(name: "dir", arg: 1, scope: !1487, file: !386, line: 35, type: !30)
!1492 = !DILocalVariable(name: "base", arg: 2, scope: !1487, file: !386, line: 35, type: !30)
!1493 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1487, file: !386, line: 35, type: !684)
!1494 = !DILocalVariable(name: "p", scope: !1487, file: !386, line: 37, type: !22)
!1495 = !DILocation(line: 0, scope: !1487)
!1496 = !DILocation(line: 37, column: 13, scope: !1487)
!1497 = !DILocation(line: 38, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1487, file: !386, line: 38, column: 7)
!1499 = !DILocation(line: 38, column: 7, scope: !1487)
!1500 = !DILocation(line: 39, column: 5, scope: !1498)
!1501 = !DILocation(line: 40, column: 3, scope: !1487)
!1502 = distinct !DISubprogram(name: "mfile_name_concat", scope: !388, file: !388, line: 48, type: !1488, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1504 = !DILocalVariable(name: "dir", arg: 1, scope: !1502, file: !388, line: 48, type: !30)
!1505 = !DILocalVariable(name: "base", arg: 2, scope: !1502, file: !388, line: 48, type: !30)
!1506 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1502, file: !388, line: 48, type: !684)
!1507 = !DILocalVariable(name: "dirbase", scope: !1502, file: !388, line: 50, type: !30)
!1508 = !DILocalVariable(name: "dirbaselen", scope: !1502, file: !388, line: 51, type: !27)
!1509 = !DILocalVariable(name: "dirlen", scope: !1502, file: !388, line: 52, type: !27)
!1510 = !DILocalVariable(name: "baselen", scope: !1502, file: !388, line: 53, type: !27)
!1511 = !DILocalVariable(name: "sep", scope: !1502, file: !388, line: 54, type: !23)
!1512 = !DILocalVariable(name: "p_concat", scope: !1502, file: !388, line: 71, type: !22)
!1513 = !DILocalVariable(name: "p", scope: !1514, file: !388, line: 76, type: !22)
!1514 = distinct !DILexicalBlock(scope: !1502, file: !388, line: 75, column: 3)
!1515 = !DILocation(line: 0, scope: !1502)
!1516 = !DILocation(line: 50, column: 25, scope: !1502)
!1517 = !DILocation(line: 51, column: 23, scope: !1502)
!1518 = !DILocation(line: 52, column: 27, scope: !1502)
!1519 = !DILocation(line: 52, column: 33, scope: !1502)
!1520 = !DILocation(line: 53, column: 20, scope: !1502)
!1521 = !DILocation(line: 55, column: 7, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1502, file: !388, line: 55, column: 7)
!1523 = !DILocation(line: 55, column: 7, scope: !1502)
!1524 = !DILocation(line: 58, column: 13, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !388, line: 58, column: 11)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !388, line: 56, column: 5)
!1527 = !DILocation(line: 58, column: 39, scope: !1525)
!1528 = !DILocation(line: 58, column: 44, scope: !1525)
!1529 = !DILocation(line: 58, column: 11, scope: !1526)
!1530 = !DILocation(line: 61, column: 12, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1522, file: !388, line: 61, column: 12)
!1532 = !DILocation(line: 61, column: 12, scope: !1522)
!1533 = !DILocation(line: 71, column: 35, scope: !1502)
!1534 = !DILocation(line: 71, column: 52, scope: !1502)
!1535 = !DILocation(line: 71, column: 62, scope: !1502)
!1536 = !DILocation(line: 71, column: 20, scope: !1502)
!1537 = !DILocation(line: 72, column: 16, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1502, file: !388, line: 72, column: 7)
!1539 = !DILocation(line: 72, column: 7, scope: !1502)
!1540 = !DILocalVariable(name: "__dest", arg: 1, scope: !1541, file: !778, line: 42, type: !781)
!1541 = distinct !DISubprogram(name: "mempcpy", scope: !778, file: !778, line: 42, type: !779, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1542)
!1542 = !{!1540, !1543, !1544}
!1543 = !DILocalVariable(name: "__src", arg: 2, scope: !1541, file: !778, line: 42, type: !678)
!1544 = !DILocalVariable(name: "__len", arg: 3, scope: !1541, file: !778, line: 42, type: !27)
!1545 = !DILocation(line: 0, scope: !1541, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 78, column: 9, scope: !1514)
!1547 = !DILocation(line: 45, column: 10, scope: !1541, inlinedAt: !1546)
!1548 = !DILocation(line: 0, scope: !1514)
!1549 = !DILocation(line: 79, column: 8, scope: !1514)
!1550 = !DILocation(line: 80, column: 7, scope: !1514)
!1551 = !DILocation(line: 82, column: 9, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1514, file: !388, line: 82, column: 9)
!1553 = !DILocation(line: 82, column: 9, scope: !1514)
!1554 = !DILocation(line: 83, column: 23, scope: !1552)
!1555 = !DILocation(line: 83, column: 7, scope: !1552)
!1556 = !DILocation(line: 0, scope: !1541, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 85, column: 9, scope: !1514)
!1558 = !DILocation(line: 45, column: 10, scope: !1541, inlinedAt: !1557)
!1559 = !DILocation(line: 86, column: 8, scope: !1514)
!1560 = !DILocation(line: 89, column: 3, scope: !1502)
!1561 = !DILocation(line: 90, column: 1, scope: !1502)
!1562 = distinct !DISubprogram(name: "rpl_fseeko", scope: !390, file: !390, line: 28, type: !1563, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !1600)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!25, !1565, !1599, !25}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !64, line: 7, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 49, size: 1728, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1567, file: !66, line: 51, baseType: !25, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1567, file: !66, line: 54, baseType: !22, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1567, file: !66, line: 55, baseType: !22, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1567, file: !66, line: 56, baseType: !22, size: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1567, file: !66, line: 57, baseType: !22, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1567, file: !66, line: 58, baseType: !22, size: 64, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1567, file: !66, line: 59, baseType: !22, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1567, file: !66, line: 60, baseType: !22, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1567, file: !66, line: 61, baseType: !22, size: 64, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1567, file: !66, line: 64, baseType: !22, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1567, file: !66, line: 65, baseType: !22, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1567, file: !66, line: 66, baseType: !22, size: 64, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1567, file: !66, line: 68, baseType: !81, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1567, file: !66, line: 70, baseType: !1583, size: 64, offset: 832)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1567, file: !66, line: 72, baseType: !25, size: 32, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1567, file: !66, line: 73, baseType: !25, size: 32, offset: 928)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1567, file: !66, line: 74, baseType: !88, size: 64, offset: 960)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1567, file: !66, line: 77, baseType: !26, size: 16, offset: 1024)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1567, file: !66, line: 78, baseType: !93, size: 8, offset: 1040)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1567, file: !66, line: 79, baseType: !95, size: 8, offset: 1048)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1567, file: !66, line: 81, baseType: !99, size: 64, offset: 1088)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1567, file: !66, line: 89, baseType: !102, size: 64, offset: 1152)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1567, file: !66, line: 91, baseType: !104, size: 64, offset: 1216)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1567, file: !66, line: 92, baseType: !107, size: 64, offset: 1280)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1567, file: !66, line: 93, baseType: !1583, size: 64, offset: 1344)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1567, file: !66, line: 94, baseType: !24, size: 64, offset: 1408)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1567, file: !66, line: 95, baseType: !27, size: 64, offset: 1472)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1567, file: !66, line: 96, baseType: !25, size: 32, offset: 1536)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1567, file: !66, line: 98, baseType: !114, size: 160, offset: 1568)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !162, line: 63, baseType: !88)
!1600 = !{!1601, !1602, !1603, !1604}
!1601 = !DILocalVariable(name: "fp", arg: 1, scope: !1562, file: !390, line: 28, type: !1565)
!1602 = !DILocalVariable(name: "offset", arg: 2, scope: !1562, file: !390, line: 28, type: !1599)
!1603 = !DILocalVariable(name: "whence", arg: 3, scope: !1562, file: !390, line: 28, type: !25)
!1604 = !DILocalVariable(name: "pos", scope: !1605, file: !390, line: 123, type: !1599)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !390, line: 119, column: 5)
!1606 = distinct !DILexicalBlock(scope: !1562, file: !390, line: 55, column: 7)
!1607 = !DILocation(line: 0, scope: !1562)
!1608 = !DILocation(line: 55, column: 12, scope: !1606)
!1609 = !{!1072, !468, i64 16}
!1610 = !DILocation(line: 55, column: 33, scope: !1606)
!1611 = !{!1072, !468, i64 8}
!1612 = !DILocation(line: 55, column: 25, scope: !1606)
!1613 = !DILocation(line: 56, column: 7, scope: !1606)
!1614 = !DILocation(line: 56, column: 15, scope: !1606)
!1615 = !DILocation(line: 56, column: 37, scope: !1606)
!1616 = !{!1072, !468, i64 32}
!1617 = !DILocation(line: 56, column: 29, scope: !1606)
!1618 = !DILocation(line: 57, column: 7, scope: !1606)
!1619 = !DILocation(line: 57, column: 15, scope: !1606)
!1620 = !{!1072, !468, i64 72}
!1621 = !DILocation(line: 57, column: 29, scope: !1606)
!1622 = !DILocation(line: 55, column: 7, scope: !1562)
!1623 = !DILocation(line: 123, column: 26, scope: !1605)
!1624 = !DILocation(line: 123, column: 19, scope: !1605)
!1625 = !DILocation(line: 0, scope: !1605)
!1626 = !DILocation(line: 124, column: 15, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1605, file: !390, line: 124, column: 11)
!1628 = !DILocation(line: 124, column: 11, scope: !1605)
!1629 = !DILocation(line: 135, column: 12, scope: !1605)
!1630 = !DILocation(line: 135, column: 19, scope: !1605)
!1631 = !DILocation(line: 136, column: 12, scope: !1605)
!1632 = !DILocation(line: 136, column: 20, scope: !1605)
!1633 = !{!1072, !1073, i64 144}
!1634 = !DILocation(line: 167, column: 7, scope: !1605)
!1635 = !DILocation(line: 169, column: 10, scope: !1562)
!1636 = !DILocation(line: 169, column: 3, scope: !1562)
!1637 = !DILocation(line: 170, column: 1, scope: !1562)
!1638 = !DISubprogram(name: "fseeko", scope: !162, file: !162, line: 736, type: !1639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!25, !1565, !88, !25}
!1641 = distinct !DISubprogram(name: "getprogname", scope: !392, file: !392, line: 54, type: !1642, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !553)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!30}
!1644 = !DILocation(line: 58, column: 10, scope: !1641)
!1645 = !DILocation(line: 58, column: 3, scope: !1641)
!1646 = distinct !DISubprogram(name: "set_program_name", scope: !194, file: !194, line: 37, type: !486, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1647)
!1647 = !{!1648, !1649, !1650}
!1648 = !DILocalVariable(name: "argv0", arg: 1, scope: !1646, file: !194, line: 37, type: !30)
!1649 = !DILocalVariable(name: "slash", scope: !1646, file: !194, line: 44, type: !30)
!1650 = !DILocalVariable(name: "base", scope: !1646, file: !194, line: 45, type: !30)
!1651 = !DILocation(line: 0, scope: !1646)
!1652 = !DILocation(line: 44, column: 23, scope: !1646)
!1653 = !DILocation(line: 45, column: 22, scope: !1646)
!1654 = !DILocation(line: 46, column: 17, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1646, file: !194, line: 46, column: 7)
!1656 = !DILocation(line: 46, column: 9, scope: !1655)
!1657 = !DILocation(line: 46, column: 25, scope: !1655)
!1658 = !DILocation(line: 46, column: 40, scope: !1655)
!1659 = !DILocalVariable(name: "__s1", arg: 1, scope: !1660, file: !511, line: 974, type: !679)
!1660 = distinct !DISubprogram(name: "memeq", scope: !511, file: !511, line: 974, type: !1661, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1663)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!36, !679, !679, !27}
!1663 = !{!1659, !1664, !1665}
!1664 = !DILocalVariable(name: "__s2", arg: 2, scope: !1660, file: !511, line: 974, type: !679)
!1665 = !DILocalVariable(name: "__n", arg: 3, scope: !1660, file: !511, line: 974, type: !27)
!1666 = !DILocation(line: 0, scope: !1660, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 46, column: 28, scope: !1655)
!1668 = !DILocation(line: 976, column: 11, scope: !1660, inlinedAt: !1667)
!1669 = !DILocation(line: 976, column: 10, scope: !1660, inlinedAt: !1667)
!1670 = !DILocation(line: 46, column: 7, scope: !1646)
!1671 = !DILocation(line: 49, column: 11, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !194, line: 49, column: 11)
!1673 = distinct !DILexicalBlock(scope: !1655, file: !194, line: 47, column: 5)
!1674 = !DILocation(line: 49, column: 36, scope: !1672)
!1675 = !DILocation(line: 49, column: 11, scope: !1673)
!1676 = !DILocation(line: 65, column: 16, scope: !1646)
!1677 = !DILocation(line: 71, column: 27, scope: !1646)
!1678 = !DILocation(line: 74, column: 33, scope: !1646)
!1679 = !DILocation(line: 76, column: 1, scope: !1646)
!1680 = !DILocation(line: 0, scope: !199)
!1681 = !DILocation(line: 40, column: 29, scope: !199)
!1682 = !DILocation(line: 41, column: 19, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !199, file: !200, line: 41, column: 7)
!1684 = !DILocation(line: 41, column: 7, scope: !199)
!1685 = !DILocation(line: 47, column: 3, scope: !199)
!1686 = !DILocation(line: 48, column: 3, scope: !199)
!1687 = !DILocation(line: 48, column: 13, scope: !199)
!1688 = !DILocalVariable(name: "ps", arg: 1, scope: !1689, file: !1690, line: 1135, type: !1693)
!1689 = distinct !DISubprogram(name: "mbszero", scope: !1690, file: !1690, line: 1135, type: !1691, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1694)
!1690 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!1694 = !{!1688}
!1695 = !DILocation(line: 0, scope: !1689, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 48, column: 18, scope: !199)
!1697 = !DILocalVariable(name: "__dest", arg: 1, scope: !1698, file: !778, line: 57, type: !24)
!1698 = distinct !DISubprogram(name: "memset", scope: !778, file: !778, line: 57, type: !1699, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!24, !24, !25, !27}
!1701 = !{!1697, !1702, !1703}
!1702 = !DILocalVariable(name: "__ch", arg: 2, scope: !1698, file: !778, line: 57, type: !25)
!1703 = !DILocalVariable(name: "__len", arg: 3, scope: !1698, file: !778, line: 57, type: !27)
!1704 = !DILocation(line: 0, scope: !1698, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 1137, column: 3, scope: !1689, inlinedAt: !1696)
!1706 = !DILocation(line: 59, column: 10, scope: !1698, inlinedAt: !1705)
!1707 = !DILocation(line: 49, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !199, file: !200, line: 49, column: 7)
!1709 = !DILocation(line: 49, column: 39, scope: !1708)
!1710 = !DILocation(line: 49, column: 44, scope: !1708)
!1711 = !DILocation(line: 54, column: 1, scope: !199)
!1712 = !DISubprogram(name: "mbrtoc32", scope: !211, file: !211, line: 57, type: !1713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!27, !1715, !557, !27, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1693)
!1718 = distinct !DISubprogram(name: "clone_quoting_options", scope: !236, file: !236, line: 113, type: !1719, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1722)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1721, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1722 = !{!1723, !1724, !1725}
!1723 = !DILocalVariable(name: "o", arg: 1, scope: !1718, file: !236, line: 113, type: !1721)
!1724 = !DILocalVariable(name: "saved_errno", scope: !1718, file: !236, line: 115, type: !25)
!1725 = !DILocalVariable(name: "p", scope: !1718, file: !236, line: 116, type: !1721)
!1726 = !DILocation(line: 0, scope: !1718)
!1727 = !DILocation(line: 115, column: 21, scope: !1718)
!1728 = !DILocation(line: 116, column: 40, scope: !1718)
!1729 = !DILocation(line: 116, column: 31, scope: !1718)
!1730 = !DILocation(line: 118, column: 9, scope: !1718)
!1731 = !DILocation(line: 119, column: 3, scope: !1718)
!1732 = distinct !DISubprogram(name: "get_quoting_style", scope: !236, file: !236, line: 124, type: !1733, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1737)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!238, !1735}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!1737 = !{!1738}
!1738 = !DILocalVariable(name: "o", arg: 1, scope: !1732, file: !236, line: 124, type: !1735)
!1739 = !DILocation(line: 0, scope: !1732)
!1740 = !DILocation(line: 126, column: 11, scope: !1732)
!1741 = !DILocation(line: 126, column: 46, scope: !1732)
!1742 = !{!1743, !469, i64 0}
!1743 = !{!"quoting_options", !469, i64 0, !562, i64 4, !469, i64 8, !468, i64 40, !468, i64 48}
!1744 = !DILocation(line: 126, column: 3, scope: !1732)
!1745 = distinct !DISubprogram(name: "set_quoting_style", scope: !236, file: !236, line: 132, type: !1746, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !1721, !238}
!1748 = !{!1749, !1750}
!1749 = !DILocalVariable(name: "o", arg: 1, scope: !1745, file: !236, line: 132, type: !1721)
!1750 = !DILocalVariable(name: "s", arg: 2, scope: !1745, file: !236, line: 132, type: !238)
!1751 = !DILocation(line: 0, scope: !1745)
!1752 = !DILocation(line: 134, column: 4, scope: !1745)
!1753 = !DILocation(line: 134, column: 39, scope: !1745)
!1754 = !DILocation(line: 134, column: 45, scope: !1745)
!1755 = !DILocation(line: 135, column: 1, scope: !1745)
!1756 = distinct !DISubprogram(name: "set_char_quoting", scope: !236, file: !236, line: 143, type: !1757, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!25, !1721, !23, !25}
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1766, !1767}
!1760 = !DILocalVariable(name: "o", arg: 1, scope: !1756, file: !236, line: 143, type: !1721)
!1761 = !DILocalVariable(name: "c", arg: 2, scope: !1756, file: !236, line: 143, type: !23)
!1762 = !DILocalVariable(name: "i", arg: 3, scope: !1756, file: !236, line: 143, type: !25)
!1763 = !DILocalVariable(name: "uc", scope: !1756, file: !236, line: 145, type: !32)
!1764 = !DILocalVariable(name: "p", scope: !1756, file: !236, line: 146, type: !1765)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1766 = !DILocalVariable(name: "shift", scope: !1756, file: !236, line: 148, type: !25)
!1767 = !DILocalVariable(name: "r", scope: !1756, file: !236, line: 149, type: !7)
!1768 = !DILocation(line: 0, scope: !1756)
!1769 = !DILocation(line: 147, column: 6, scope: !1756)
!1770 = !DILocation(line: 147, column: 62, scope: !1756)
!1771 = !DILocation(line: 147, column: 57, scope: !1756)
!1772 = !DILocation(line: 148, column: 15, scope: !1756)
!1773 = !DILocation(line: 149, column: 21, scope: !1756)
!1774 = !DILocation(line: 149, column: 24, scope: !1756)
!1775 = !DILocation(line: 149, column: 34, scope: !1756)
!1776 = !DILocation(line: 150, column: 13, scope: !1756)
!1777 = !DILocation(line: 150, column: 19, scope: !1756)
!1778 = !DILocation(line: 150, column: 24, scope: !1756)
!1779 = !DILocation(line: 150, column: 6, scope: !1756)
!1780 = !DILocation(line: 151, column: 3, scope: !1756)
!1781 = distinct !DISubprogram(name: "set_quoting_flags", scope: !236, file: !236, line: 159, type: !1782, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1784)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!25, !1721, !25}
!1784 = !{!1785, !1786, !1787}
!1785 = !DILocalVariable(name: "o", arg: 1, scope: !1781, file: !236, line: 159, type: !1721)
!1786 = !DILocalVariable(name: "i", arg: 2, scope: !1781, file: !236, line: 159, type: !25)
!1787 = !DILocalVariable(name: "r", scope: !1781, file: !236, line: 163, type: !25)
!1788 = !DILocation(line: 0, scope: !1781)
!1789 = !DILocation(line: 161, column: 8, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1781, file: !236, line: 161, column: 7)
!1791 = !DILocation(line: 161, column: 7, scope: !1781)
!1792 = !DILocation(line: 163, column: 14, scope: !1781)
!1793 = !{!1743, !562, i64 4}
!1794 = !DILocation(line: 164, column: 12, scope: !1781)
!1795 = !DILocation(line: 165, column: 3, scope: !1781)
!1796 = distinct !DISubprogram(name: "set_custom_quoting", scope: !236, file: !236, line: 169, type: !1797, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !1721, !30, !30}
!1799 = !{!1800, !1801, !1802}
!1800 = !DILocalVariable(name: "o", arg: 1, scope: !1796, file: !236, line: 169, type: !1721)
!1801 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1796, file: !236, line: 170, type: !30)
!1802 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1796, file: !236, line: 170, type: !30)
!1803 = !DILocation(line: 0, scope: !1796)
!1804 = !DILocation(line: 172, column: 8, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1796, file: !236, line: 172, column: 7)
!1806 = !DILocation(line: 172, column: 7, scope: !1796)
!1807 = !DILocation(line: 174, column: 6, scope: !1796)
!1808 = !DILocation(line: 174, column: 12, scope: !1796)
!1809 = !DILocation(line: 175, column: 8, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1796, file: !236, line: 175, column: 7)
!1811 = !DILocation(line: 175, column: 19, scope: !1810)
!1812 = !DILocation(line: 176, column: 5, scope: !1810)
!1813 = !DILocation(line: 177, column: 6, scope: !1796)
!1814 = !DILocation(line: 177, column: 17, scope: !1796)
!1815 = !{!1743, !468, i64 40}
!1816 = !DILocation(line: 178, column: 6, scope: !1796)
!1817 = !DILocation(line: 178, column: 18, scope: !1796)
!1818 = !{!1743, !468, i64 48}
!1819 = !DILocation(line: 179, column: 1, scope: !1796)
!1820 = distinct !DISubprogram(name: "quotearg_buffer", scope: !236, file: !236, line: 774, type: !1821, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!27, !22, !27, !30, !27, !1735}
!1823 = !{!1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831}
!1824 = !DILocalVariable(name: "buffer", arg: 1, scope: !1820, file: !236, line: 774, type: !22)
!1825 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1820, file: !236, line: 774, type: !27)
!1826 = !DILocalVariable(name: "arg", arg: 3, scope: !1820, file: !236, line: 775, type: !30)
!1827 = !DILocalVariable(name: "argsize", arg: 4, scope: !1820, file: !236, line: 775, type: !27)
!1828 = !DILocalVariable(name: "o", arg: 5, scope: !1820, file: !236, line: 776, type: !1735)
!1829 = !DILocalVariable(name: "p", scope: !1820, file: !236, line: 778, type: !1735)
!1830 = !DILocalVariable(name: "saved_errno", scope: !1820, file: !236, line: 779, type: !25)
!1831 = !DILocalVariable(name: "r", scope: !1820, file: !236, line: 780, type: !27)
!1832 = !DILocation(line: 0, scope: !1820)
!1833 = !DILocation(line: 778, column: 37, scope: !1820)
!1834 = !DILocation(line: 779, column: 21, scope: !1820)
!1835 = !DILocation(line: 781, column: 43, scope: !1820)
!1836 = !DILocation(line: 781, column: 53, scope: !1820)
!1837 = !DILocation(line: 781, column: 60, scope: !1820)
!1838 = !DILocation(line: 782, column: 43, scope: !1820)
!1839 = !DILocation(line: 782, column: 58, scope: !1820)
!1840 = !DILocation(line: 780, column: 14, scope: !1820)
!1841 = !DILocation(line: 783, column: 9, scope: !1820)
!1842 = !DILocation(line: 784, column: 3, scope: !1820)
!1843 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !236, file: !236, line: 251, type: !1844, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1848)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!27, !22, !27, !30, !27, !238, !25, !1846, !30, !30}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1873, !1875, !1878, !1879, !1880, !1881, !1884, !1885, !1888, !1892, !1893, !1901, !1904, !1905, !1907, !1908, !1909, !1910}
!1849 = !DILocalVariable(name: "buffer", arg: 1, scope: !1843, file: !236, line: 251, type: !22)
!1850 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1843, file: !236, line: 251, type: !27)
!1851 = !DILocalVariable(name: "arg", arg: 3, scope: !1843, file: !236, line: 252, type: !30)
!1852 = !DILocalVariable(name: "argsize", arg: 4, scope: !1843, file: !236, line: 252, type: !27)
!1853 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1843, file: !236, line: 253, type: !238)
!1854 = !DILocalVariable(name: "flags", arg: 6, scope: !1843, file: !236, line: 253, type: !25)
!1855 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1843, file: !236, line: 254, type: !1846)
!1856 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1843, file: !236, line: 255, type: !30)
!1857 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1843, file: !236, line: 256, type: !30)
!1858 = !DILocalVariable(name: "unibyte_locale", scope: !1843, file: !236, line: 258, type: !36)
!1859 = !DILocalVariable(name: "len", scope: !1843, file: !236, line: 260, type: !27)
!1860 = !DILocalVariable(name: "orig_buffersize", scope: !1843, file: !236, line: 261, type: !27)
!1861 = !DILocalVariable(name: "quote_string", scope: !1843, file: !236, line: 262, type: !30)
!1862 = !DILocalVariable(name: "quote_string_len", scope: !1843, file: !236, line: 263, type: !27)
!1863 = !DILocalVariable(name: "backslash_escapes", scope: !1843, file: !236, line: 264, type: !36)
!1864 = !DILocalVariable(name: "elide_outer_quotes", scope: !1843, file: !236, line: 265, type: !36)
!1865 = !DILocalVariable(name: "encountered_single_quote", scope: !1843, file: !236, line: 266, type: !36)
!1866 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1843, file: !236, line: 267, type: !36)
!1867 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1843, file: !236, line: 309, type: !36)
!1868 = !DILocalVariable(name: "lq", scope: !1869, file: !236, line: 361, type: !30)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !236, line: 361, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !236, line: 360, column: 13)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !236, line: 333, column: 7)
!1872 = distinct !DILexicalBlock(scope: !1843, file: !236, line: 312, column: 5)
!1873 = !DILocalVariable(name: "i", scope: !1874, file: !236, line: 395, type: !27)
!1874 = distinct !DILexicalBlock(scope: !1843, file: !236, line: 395, column: 3)
!1875 = !DILocalVariable(name: "is_right_quote", scope: !1876, file: !236, line: 397, type: !36)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !236, line: 396, column: 5)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !236, line: 395, column: 3)
!1878 = !DILocalVariable(name: "escaping", scope: !1876, file: !236, line: 398, type: !36)
!1879 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1876, file: !236, line: 399, type: !36)
!1880 = !DILocalVariable(name: "c", scope: !1876, file: !236, line: 417, type: !32)
!1881 = !DILocalVariable(name: "m", scope: !1882, file: !236, line: 598, type: !27)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !236, line: 596, column: 11)
!1883 = distinct !DILexicalBlock(scope: !1876, file: !236, line: 419, column: 9)
!1884 = !DILocalVariable(name: "printable", scope: !1882, file: !236, line: 600, type: !36)
!1885 = !DILocalVariable(name: "mbs", scope: !1886, file: !236, line: 609, type: !293)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !236, line: 608, column: 15)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !236, line: 602, column: 17)
!1888 = !DILocalVariable(name: "w", scope: !1889, file: !236, line: 618, type: !210)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !236, line: 617, column: 19)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !236, line: 616, column: 17)
!1891 = distinct !DILexicalBlock(scope: !1886, file: !236, line: 616, column: 17)
!1892 = !DILocalVariable(name: "bytes", scope: !1889, file: !236, line: 619, type: !27)
!1893 = !DILocalVariable(name: "j", scope: !1894, file: !236, line: 648, type: !27)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !236, line: 648, column: 29)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !236, line: 647, column: 27)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !236, line: 645, column: 29)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !236, line: 636, column: 23)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !236, line: 628, column: 30)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !236, line: 623, column: 30)
!1900 = distinct !DILexicalBlock(scope: !1889, file: !236, line: 621, column: 25)
!1901 = !DILocalVariable(name: "ilim", scope: !1902, file: !236, line: 674, type: !27)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !236, line: 671, column: 15)
!1903 = distinct !DILexicalBlock(scope: !1882, file: !236, line: 670, column: 17)
!1904 = !DILabel(scope: !1843, name: "process_input", file: !236, line: 308)
!1905 = !DILabel(scope: !1906, name: "c_and_shell_escape", file: !236, line: 502)
!1906 = distinct !DILexicalBlock(scope: !1883, file: !236, line: 478, column: 9)
!1907 = !DILabel(scope: !1906, name: "c_escape", file: !236, line: 507)
!1908 = !DILabel(scope: !1876, name: "store_escape", file: !236, line: 709)
!1909 = !DILabel(scope: !1876, name: "store_c", file: !236, line: 712)
!1910 = !DILabel(scope: !1843, name: "force_outer_quoting_style", file: !236, line: 753)
!1911 = !DILocation(line: 0, scope: !1843)
!1912 = !DILocation(line: 258, column: 25, scope: !1843)
!1913 = !DILocation(line: 258, column: 36, scope: !1843)
!1914 = !DILocation(line: 267, column: 3, scope: !1843)
!1915 = !DILocation(line: 261, column: 10, scope: !1843)
!1916 = !DILocation(line: 262, column: 15, scope: !1843)
!1917 = !DILocation(line: 263, column: 10, scope: !1843)
!1918 = !DILocation(line: 308, column: 2, scope: !1843)
!1919 = !DILocation(line: 311, column: 3, scope: !1843)
!1920 = !DILocation(line: 318, column: 11, scope: !1872)
!1921 = !DILocation(line: 319, column: 9, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !236, line: 319, column: 9)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !236, line: 319, column: 9)
!1924 = distinct !DILexicalBlock(scope: !1872, file: !236, line: 318, column: 11)
!1925 = !DILocation(line: 319, column: 9, scope: !1923)
!1926 = !DILocation(line: 0, scope: !284, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 357, column: 26, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !236, line: 335, column: 11)
!1929 = distinct !DILexicalBlock(scope: !1871, file: !236, line: 334, column: 13)
!1930 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1927)
!1931 = !DILocation(line: 201, column: 19, scope: !1932, inlinedAt: !1927)
!1932 = distinct !DILexicalBlock(scope: !284, file: !236, line: 201, column: 7)
!1933 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1927)
!1934 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1927)
!1935 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1927)
!1936 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1927)
!1937 = !DILocalVariable(name: "ps", arg: 1, scope: !1938, file: !1690, line: 1135, type: !1941)
!1938 = distinct !DISubprogram(name: "mbszero", scope: !1690, file: !1690, line: 1135, type: !1939, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1942)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1942 = !{!1937}
!1943 = !DILocation(line: 0, scope: !1938, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1927)
!1945 = !DILocalVariable(name: "__dest", arg: 1, scope: !1946, file: !778, line: 57, type: !24)
!1946 = distinct !DISubprogram(name: "memset", scope: !778, file: !778, line: 57, type: !1699, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1947)
!1947 = !{!1945, !1948, !1949}
!1948 = !DILocalVariable(name: "__ch", arg: 2, scope: !1946, file: !778, line: 57, type: !25)
!1949 = !DILocalVariable(name: "__len", arg: 3, scope: !1946, file: !778, line: 57, type: !27)
!1950 = !DILocation(line: 0, scope: !1946, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 1137, column: 3, scope: !1938, inlinedAt: !1944)
!1952 = !DILocation(line: 59, column: 10, scope: !1946, inlinedAt: !1951)
!1953 = !DILocation(line: 231, column: 7, scope: !1954, inlinedAt: !1927)
!1954 = distinct !DILexicalBlock(scope: !284, file: !236, line: 231, column: 7)
!1955 = !DILocation(line: 231, column: 40, scope: !1954, inlinedAt: !1927)
!1956 = !DILocation(line: 231, column: 45, scope: !1954, inlinedAt: !1927)
!1957 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1927)
!1958 = !DILocation(line: 0, scope: !284, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 358, column: 27, scope: !1928)
!1960 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1959)
!1961 = !DILocation(line: 201, column: 19, scope: !1932, inlinedAt: !1959)
!1962 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1959)
!1963 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1959)
!1964 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1959)
!1965 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1959)
!1966 = !DILocation(line: 0, scope: !1938, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1959)
!1968 = !DILocation(line: 0, scope: !1946, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 1137, column: 3, scope: !1938, inlinedAt: !1967)
!1970 = !DILocation(line: 59, column: 10, scope: !1946, inlinedAt: !1969)
!1971 = !DILocation(line: 231, column: 7, scope: !1954, inlinedAt: !1959)
!1972 = !DILocation(line: 231, column: 40, scope: !1954, inlinedAt: !1959)
!1973 = !DILocation(line: 231, column: 45, scope: !1954, inlinedAt: !1959)
!1974 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1959)
!1975 = !DILocation(line: 360, column: 13, scope: !1871)
!1976 = !DILocation(line: 0, scope: !1869)
!1977 = !DILocation(line: 361, column: 45, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1869, file: !236, line: 361, column: 11)
!1979 = !DILocation(line: 361, column: 11, scope: !1869)
!1980 = !DILocation(line: 362, column: 13, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !236, line: 362, column: 13)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !236, line: 362, column: 13)
!1983 = !DILocation(line: 362, column: 13, scope: !1982)
!1984 = !DILocation(line: 361, column: 52, scope: !1978)
!1985 = distinct !{!1985, !1979, !1986, !527}
!1986 = !DILocation(line: 362, column: 13, scope: !1869)
!1987 = !DILocation(line: 260, column: 10, scope: !1843)
!1988 = !DILocation(line: 365, column: 28, scope: !1871)
!1989 = !DILocation(line: 367, column: 7, scope: !1872)
!1990 = !DILocation(line: 370, column: 7, scope: !1872)
!1991 = !DILocation(line: 376, column: 11, scope: !1872)
!1992 = !DILocation(line: 381, column: 11, scope: !1872)
!1993 = !DILocation(line: 382, column: 9, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !236, line: 382, column: 9)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !236, line: 382, column: 9)
!1996 = distinct !DILexicalBlock(scope: !1872, file: !236, line: 381, column: 11)
!1997 = !DILocation(line: 382, column: 9, scope: !1995)
!1998 = !DILocation(line: 389, column: 7, scope: !1872)
!1999 = !DILocation(line: 392, column: 7, scope: !1872)
!2000 = !DILocation(line: 0, scope: !1874)
!2001 = !DILocation(line: 395, column: 8, scope: !1874)
!2002 = !DILocation(line: 395, column: 34, scope: !1877)
!2003 = !DILocation(line: 395, column: 26, scope: !1877)
!2004 = !DILocation(line: 395, column: 48, scope: !1877)
!2005 = !DILocation(line: 395, column: 55, scope: !1877)
!2006 = !DILocation(line: 395, column: 3, scope: !1874)
!2007 = !DILocation(line: 395, column: 67, scope: !1877)
!2008 = !DILocation(line: 0, scope: !1876)
!2009 = !DILocation(line: 402, column: 11, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1876, file: !236, line: 401, column: 11)
!2011 = !DILocation(line: 404, column: 17, scope: !2010)
!2012 = !DILocation(line: 405, column: 39, scope: !2010)
!2013 = !DILocation(line: 409, column: 32, scope: !2010)
!2014 = !DILocation(line: 405, column: 19, scope: !2010)
!2015 = !DILocation(line: 405, column: 15, scope: !2010)
!2016 = !DILocation(line: 410, column: 11, scope: !2010)
!2017 = !DILocation(line: 410, column: 25, scope: !2010)
!2018 = !DILocalVariable(name: "__s1", arg: 1, scope: !2019, file: !511, line: 974, type: !679)
!2019 = distinct !DISubprogram(name: "memeq", scope: !511, file: !511, line: 974, type: !1661, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2020)
!2020 = !{!2018, !2021, !2022}
!2021 = !DILocalVariable(name: "__s2", arg: 2, scope: !2019, file: !511, line: 974, type: !679)
!2022 = !DILocalVariable(name: "__n", arg: 3, scope: !2019, file: !511, line: 974, type: !27)
!2023 = !DILocation(line: 0, scope: !2019, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 410, column: 14, scope: !2010)
!2025 = !DILocation(line: 976, column: 11, scope: !2019, inlinedAt: !2024)
!2026 = !DILocation(line: 976, column: 10, scope: !2019, inlinedAt: !2024)
!2027 = !DILocation(line: 401, column: 11, scope: !1876)
!2028 = !DILocation(line: 417, column: 25, scope: !1876)
!2029 = !DILocation(line: 418, column: 7, scope: !1876)
!2030 = !DILocation(line: 421, column: 15, scope: !1883)
!2031 = !DILocation(line: 423, column: 15, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !236, line: 423, column: 15)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !236, line: 422, column: 13)
!2034 = distinct !DILexicalBlock(scope: !1883, file: !236, line: 421, column: 15)
!2035 = !DILocation(line: 423, column: 15, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2032, file: !236, line: 423, column: 15)
!2037 = !DILocation(line: 423, column: 15, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !236, line: 423, column: 15)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !236, line: 423, column: 15)
!2040 = distinct !DILexicalBlock(scope: !2036, file: !236, line: 423, column: 15)
!2041 = !DILocation(line: 423, column: 15, scope: !2039)
!2042 = !DILocation(line: 423, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !236, line: 423, column: 15)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !236, line: 423, column: 15)
!2045 = !DILocation(line: 423, column: 15, scope: !2044)
!2046 = !DILocation(line: 423, column: 15, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !236, line: 423, column: 15)
!2048 = distinct !DILexicalBlock(scope: !2040, file: !236, line: 423, column: 15)
!2049 = !DILocation(line: 423, column: 15, scope: !2048)
!2050 = !DILocation(line: 423, column: 15, scope: !2040)
!2051 = !DILocation(line: 423, column: 15, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !236, line: 423, column: 15)
!2053 = distinct !DILexicalBlock(scope: !2032, file: !236, line: 423, column: 15)
!2054 = !DILocation(line: 423, column: 15, scope: !2053)
!2055 = !DILocation(line: 431, column: 19, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2033, file: !236, line: 430, column: 19)
!2057 = !DILocation(line: 431, column: 24, scope: !2056)
!2058 = !DILocation(line: 431, column: 28, scope: !2056)
!2059 = !DILocation(line: 431, column: 38, scope: !2056)
!2060 = !DILocation(line: 431, column: 48, scope: !2056)
!2061 = !DILocation(line: 431, column: 59, scope: !2056)
!2062 = !DILocation(line: 433, column: 19, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !236, line: 433, column: 19)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !236, line: 433, column: 19)
!2065 = distinct !DILexicalBlock(scope: !2056, file: !236, line: 432, column: 17)
!2066 = !DILocation(line: 433, column: 19, scope: !2064)
!2067 = !DILocation(line: 434, column: 19, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !236, line: 434, column: 19)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !236, line: 434, column: 19)
!2070 = !DILocation(line: 434, column: 19, scope: !2069)
!2071 = !DILocation(line: 435, column: 17, scope: !2065)
!2072 = !DILocation(line: 442, column: 20, scope: !2034)
!2073 = !DILocation(line: 447, column: 11, scope: !1883)
!2074 = !DILocation(line: 450, column: 19, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1883, file: !236, line: 448, column: 13)
!2076 = !DILocation(line: 456, column: 19, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2075, file: !236, line: 455, column: 19)
!2078 = !DILocation(line: 456, column: 24, scope: !2077)
!2079 = !DILocation(line: 456, column: 28, scope: !2077)
!2080 = !DILocation(line: 456, column: 38, scope: !2077)
!2081 = !DILocation(line: 456, column: 47, scope: !2077)
!2082 = !DILocation(line: 456, column: 41, scope: !2077)
!2083 = !DILocation(line: 456, column: 52, scope: !2077)
!2084 = !DILocation(line: 455, column: 19, scope: !2075)
!2085 = !DILocation(line: 457, column: 25, scope: !2077)
!2086 = !DILocation(line: 457, column: 17, scope: !2077)
!2087 = !DILocation(line: 464, column: 25, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2077, file: !236, line: 458, column: 19)
!2089 = !DILocation(line: 468, column: 21, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !236, line: 468, column: 21)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !236, line: 468, column: 21)
!2092 = !DILocation(line: 468, column: 21, scope: !2091)
!2093 = !DILocation(line: 469, column: 21, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !236, line: 469, column: 21)
!2095 = distinct !DILexicalBlock(scope: !2088, file: !236, line: 469, column: 21)
!2096 = !DILocation(line: 469, column: 21, scope: !2095)
!2097 = !DILocation(line: 470, column: 21, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !236, line: 470, column: 21)
!2099 = distinct !DILexicalBlock(scope: !2088, file: !236, line: 470, column: 21)
!2100 = !DILocation(line: 470, column: 21, scope: !2099)
!2101 = !DILocation(line: 471, column: 21, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !236, line: 471, column: 21)
!2103 = distinct !DILexicalBlock(scope: !2088, file: !236, line: 471, column: 21)
!2104 = !DILocation(line: 471, column: 21, scope: !2103)
!2105 = !DILocation(line: 472, column: 21, scope: !2088)
!2106 = !DILocation(line: 482, column: 33, scope: !1906)
!2107 = !DILocation(line: 483, column: 33, scope: !1906)
!2108 = !DILocation(line: 485, column: 33, scope: !1906)
!2109 = !DILocation(line: 486, column: 33, scope: !1906)
!2110 = !DILocation(line: 487, column: 33, scope: !1906)
!2111 = !DILocation(line: 490, column: 17, scope: !1906)
!2112 = !DILocation(line: 492, column: 21, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !236, line: 491, column: 15)
!2114 = distinct !DILexicalBlock(scope: !1906, file: !236, line: 490, column: 17)
!2115 = !DILocation(line: 499, column: 35, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1906, file: !236, line: 499, column: 17)
!2117 = !DILocation(line: 499, column: 57, scope: !2116)
!2118 = !DILocation(line: 0, scope: !1906)
!2119 = !DILocation(line: 502, column: 11, scope: !1906)
!2120 = !DILocation(line: 504, column: 17, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1906, file: !236, line: 503, column: 17)
!2122 = !DILocation(line: 507, column: 11, scope: !1906)
!2123 = !DILocation(line: 508, column: 17, scope: !1906)
!2124 = !DILocation(line: 517, column: 15, scope: !1883)
!2125 = !DILocation(line: 517, column: 40, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1883, file: !236, line: 517, column: 15)
!2127 = !DILocation(line: 517, column: 47, scope: !2126)
!2128 = !DILocation(line: 517, column: 18, scope: !2126)
!2129 = !DILocation(line: 521, column: 17, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1883, file: !236, line: 521, column: 15)
!2131 = !DILocation(line: 521, column: 15, scope: !1883)
!2132 = !DILocation(line: 525, column: 11, scope: !1883)
!2133 = !DILocation(line: 537, column: 15, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1883, file: !236, line: 536, column: 15)
!2135 = !DILocation(line: 536, column: 15, scope: !1883)
!2136 = !DILocation(line: 544, column: 15, scope: !1883)
!2137 = !DILocation(line: 546, column: 19, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !236, line: 545, column: 13)
!2139 = distinct !DILexicalBlock(scope: !1883, file: !236, line: 544, column: 15)
!2140 = !DILocation(line: 549, column: 19, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !236, line: 549, column: 19)
!2142 = !DILocation(line: 549, column: 30, scope: !2141)
!2143 = !DILocation(line: 558, column: 15, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !236, line: 558, column: 15)
!2145 = distinct !DILexicalBlock(scope: !2138, file: !236, line: 558, column: 15)
!2146 = !DILocation(line: 558, column: 15, scope: !2145)
!2147 = !DILocation(line: 559, column: 15, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !236, line: 559, column: 15)
!2149 = distinct !DILexicalBlock(scope: !2138, file: !236, line: 559, column: 15)
!2150 = !DILocation(line: 559, column: 15, scope: !2149)
!2151 = !DILocation(line: 560, column: 15, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !236, line: 560, column: 15)
!2153 = distinct !DILexicalBlock(scope: !2138, file: !236, line: 560, column: 15)
!2154 = !DILocation(line: 560, column: 15, scope: !2153)
!2155 = !DILocation(line: 562, column: 13, scope: !2138)
!2156 = !DILocation(line: 602, column: 17, scope: !1882)
!2157 = !DILocation(line: 0, scope: !1882)
!2158 = !DILocation(line: 605, column: 29, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1887, file: !236, line: 603, column: 15)
!2160 = !DILocation(line: 605, column: 41, scope: !2159)
!2161 = !DILocation(line: 670, column: 23, scope: !1903)
!2162 = !DILocation(line: 609, column: 17, scope: !1886)
!2163 = !DILocation(line: 609, column: 27, scope: !1886)
!2164 = !DILocation(line: 0, scope: !1938, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 609, column: 32, scope: !1886)
!2166 = !DILocation(line: 0, scope: !1946, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 1137, column: 3, scope: !1938, inlinedAt: !2165)
!2168 = !DILocation(line: 59, column: 10, scope: !1946, inlinedAt: !2167)
!2169 = !DILocation(line: 613, column: 29, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !1886, file: !236, line: 613, column: 21)
!2171 = !DILocation(line: 613, column: 21, scope: !1886)
!2172 = !DILocation(line: 614, column: 29, scope: !2170)
!2173 = !DILocation(line: 614, column: 19, scope: !2170)
!2174 = !DILocation(line: 618, column: 21, scope: !1889)
!2175 = !DILocation(line: 620, column: 54, scope: !1889)
!2176 = !DILocation(line: 0, scope: !1889)
!2177 = !DILocation(line: 619, column: 36, scope: !1889)
!2178 = !DILocation(line: 621, column: 25, scope: !1889)
!2179 = !DILocation(line: 631, column: 38, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !1898, file: !236, line: 629, column: 23)
!2181 = !DILocation(line: 631, column: 48, scope: !2180)
!2182 = !DILocation(line: 665, column: 19, scope: !1890)
!2183 = !DILocation(line: 666, column: 15, scope: !1887)
!2184 = !DILocation(line: 626, column: 25, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !1899, file: !236, line: 624, column: 23)
!2186 = !DILocation(line: 631, column: 51, scope: !2180)
!2187 = !DILocation(line: 631, column: 25, scope: !2180)
!2188 = !DILocation(line: 632, column: 28, scope: !2180)
!2189 = !DILocation(line: 631, column: 34, scope: !2180)
!2190 = distinct !{!2190, !2187, !2188, !527}
!2191 = !DILocation(line: 646, column: 29, scope: !1896)
!2192 = !DILocation(line: 0, scope: !1894)
!2193 = !DILocation(line: 649, column: 49, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1894, file: !236, line: 648, column: 29)
!2195 = !DILocation(line: 649, column: 39, scope: !2194)
!2196 = !DILocation(line: 649, column: 31, scope: !2194)
!2197 = !DILocation(line: 648, column: 60, scope: !2194)
!2198 = !DILocation(line: 648, column: 50, scope: !2194)
!2199 = !DILocation(line: 648, column: 29, scope: !1894)
!2200 = distinct !{!2200, !2199, !2201, !527}
!2201 = !DILocation(line: 654, column: 33, scope: !1894)
!2202 = !DILocation(line: 657, column: 43, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1897, file: !236, line: 657, column: 29)
!2204 = !DILocalVariable(name: "wc", arg: 1, scope: !2205, file: !2206, line: 865, type: !2209)
!2205 = distinct !DISubprogram(name: "c32isprint", scope: !2206, file: !2206, line: 865, type: !2207, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2211)
!2206 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!25, !2209}
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2210, line: 20, baseType: !7)
!2210 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2211 = !{!2204}
!2212 = !DILocation(line: 0, scope: !2205, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 657, column: 31, scope: !2203)
!2214 = !DILocation(line: 871, column: 10, scope: !2205, inlinedAt: !2213)
!2215 = !DILocation(line: 657, column: 31, scope: !2203)
!2216 = !DILocation(line: 664, column: 23, scope: !1889)
!2217 = !DILocation(line: 753, column: 2, scope: !1843)
!2218 = !DILocation(line: 756, column: 51, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !1843, file: !236, line: 756, column: 7)
!2220 = !DILocation(line: 670, column: 19, scope: !1903)
!2221 = !DILocation(line: 670, column: 45, scope: !1903)
!2222 = !DILocation(line: 674, column: 33, scope: !1902)
!2223 = !DILocation(line: 0, scope: !1902)
!2224 = !DILocation(line: 676, column: 17, scope: !1902)
!2225 = !DILocation(line: 398, column: 12, scope: !1876)
!2226 = !DILocation(line: 678, column: 43, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !236, line: 678, column: 25)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !236, line: 677, column: 19)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !236, line: 676, column: 17)
!2230 = distinct !DILexicalBlock(scope: !1902, file: !236, line: 676, column: 17)
!2231 = !DILocation(line: 680, column: 25, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !236, line: 680, column: 25)
!2233 = distinct !DILexicalBlock(scope: !2227, file: !236, line: 679, column: 23)
!2234 = !DILocation(line: 680, column: 25, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !236, line: 680, column: 25)
!2236 = !DILocation(line: 680, column: 25, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !236, line: 680, column: 25)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !236, line: 680, column: 25)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !236, line: 680, column: 25)
!2240 = !DILocation(line: 680, column: 25, scope: !2238)
!2241 = !DILocation(line: 680, column: 25, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !236, line: 680, column: 25)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !236, line: 680, column: 25)
!2244 = !DILocation(line: 680, column: 25, scope: !2243)
!2245 = !DILocation(line: 680, column: 25, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !236, line: 680, column: 25)
!2247 = distinct !DILexicalBlock(scope: !2239, file: !236, line: 680, column: 25)
!2248 = !DILocation(line: 680, column: 25, scope: !2247)
!2249 = !DILocation(line: 680, column: 25, scope: !2239)
!2250 = !DILocation(line: 680, column: 25, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !236, line: 680, column: 25)
!2252 = distinct !DILexicalBlock(scope: !2232, file: !236, line: 680, column: 25)
!2253 = !DILocation(line: 680, column: 25, scope: !2252)
!2254 = !DILocation(line: 681, column: 25, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !236, line: 681, column: 25)
!2256 = distinct !DILexicalBlock(scope: !2233, file: !236, line: 681, column: 25)
!2257 = !DILocation(line: 681, column: 25, scope: !2256)
!2258 = !DILocation(line: 682, column: 25, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !236, line: 682, column: 25)
!2260 = distinct !DILexicalBlock(scope: !2233, file: !236, line: 682, column: 25)
!2261 = !DILocation(line: 682, column: 25, scope: !2260)
!2262 = !DILocation(line: 683, column: 38, scope: !2233)
!2263 = !DILocation(line: 683, column: 33, scope: !2233)
!2264 = !DILocation(line: 684, column: 23, scope: !2233)
!2265 = !DILocation(line: 685, column: 30, scope: !2227)
!2266 = !DILocation(line: 687, column: 25, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !236, line: 687, column: 25)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !236, line: 687, column: 25)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !236, line: 686, column: 23)
!2270 = distinct !DILexicalBlock(scope: !2227, file: !236, line: 685, column: 30)
!2271 = !DILocation(line: 687, column: 25, scope: !2268)
!2272 = !DILocation(line: 689, column: 23, scope: !2269)
!2273 = !DILocation(line: 690, column: 35, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2228, file: !236, line: 690, column: 25)
!2275 = !DILocation(line: 690, column: 30, scope: !2274)
!2276 = !DILocation(line: 690, column: 25, scope: !2228)
!2277 = !DILocation(line: 692, column: 21, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !236, line: 692, column: 21)
!2279 = distinct !DILexicalBlock(scope: !2228, file: !236, line: 692, column: 21)
!2280 = !DILocation(line: 692, column: 21, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !236, line: 692, column: 21)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !236, line: 692, column: 21)
!2283 = distinct !DILexicalBlock(scope: !2278, file: !236, line: 692, column: 21)
!2284 = !DILocation(line: 692, column: 21, scope: !2282)
!2285 = !DILocation(line: 692, column: 21, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !236, line: 692, column: 21)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !236, line: 692, column: 21)
!2288 = !DILocation(line: 692, column: 21, scope: !2287)
!2289 = !DILocation(line: 692, column: 21, scope: !2283)
!2290 = !DILocation(line: 0, scope: !2228)
!2291 = !DILocation(line: 693, column: 21, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !236, line: 693, column: 21)
!2293 = distinct !DILexicalBlock(scope: !2228, file: !236, line: 693, column: 21)
!2294 = !DILocation(line: 693, column: 21, scope: !2293)
!2295 = !DILocation(line: 694, column: 25, scope: !2228)
!2296 = !DILocation(line: 676, column: 17, scope: !2229)
!2297 = distinct !{!2297, !2298, !2299}
!2298 = !DILocation(line: 676, column: 17, scope: !2230)
!2299 = !DILocation(line: 695, column: 19, scope: !2230)
!2300 = !DILocation(line: 409, column: 30, scope: !2010)
!2301 = !DILocation(line: 702, column: 34, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !1876, file: !236, line: 702, column: 11)
!2303 = !DILocation(line: 704, column: 14, scope: !2302)
!2304 = !DILocation(line: 705, column: 14, scope: !2302)
!2305 = !DILocation(line: 705, column: 35, scope: !2302)
!2306 = !DILocation(line: 705, column: 17, scope: !2302)
!2307 = !DILocation(line: 705, column: 47, scope: !2302)
!2308 = !DILocation(line: 705, column: 65, scope: !2302)
!2309 = !DILocation(line: 706, column: 11, scope: !2302)
!2310 = !DILocation(line: 702, column: 11, scope: !1876)
!2311 = !DILocation(line: 395, column: 15, scope: !1874)
!2312 = !DILocation(line: 709, column: 5, scope: !1876)
!2313 = !DILocation(line: 710, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !1876, file: !236, line: 710, column: 7)
!2315 = !DILocation(line: 710, column: 7, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2314, file: !236, line: 710, column: 7)
!2317 = !DILocation(line: 710, column: 7, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !236, line: 710, column: 7)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !236, line: 710, column: 7)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !236, line: 710, column: 7)
!2321 = !DILocation(line: 710, column: 7, scope: !2319)
!2322 = !DILocation(line: 710, column: 7, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !236, line: 710, column: 7)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !236, line: 710, column: 7)
!2325 = !DILocation(line: 710, column: 7, scope: !2324)
!2326 = !DILocation(line: 710, column: 7, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !236, line: 710, column: 7)
!2328 = distinct !DILexicalBlock(scope: !2320, file: !236, line: 710, column: 7)
!2329 = !DILocation(line: 710, column: 7, scope: !2328)
!2330 = !DILocation(line: 710, column: 7, scope: !2320)
!2331 = !DILocation(line: 710, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !236, line: 710, column: 7)
!2333 = distinct !DILexicalBlock(scope: !2314, file: !236, line: 710, column: 7)
!2334 = !DILocation(line: 710, column: 7, scope: !2333)
!2335 = !DILocation(line: 712, column: 5, scope: !1876)
!2336 = !DILocation(line: 713, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !236, line: 713, column: 7)
!2338 = distinct !DILexicalBlock(scope: !1876, file: !236, line: 713, column: 7)
!2339 = !DILocation(line: 417, column: 21, scope: !1876)
!2340 = !DILocation(line: 713, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !236, line: 713, column: 7)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !236, line: 713, column: 7)
!2343 = distinct !DILexicalBlock(scope: !2337, file: !236, line: 713, column: 7)
!2344 = !DILocation(line: 713, column: 7, scope: !2342)
!2345 = !DILocation(line: 713, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !236, line: 713, column: 7)
!2347 = distinct !DILexicalBlock(scope: !2343, file: !236, line: 713, column: 7)
!2348 = !DILocation(line: 713, column: 7, scope: !2347)
!2349 = !DILocation(line: 713, column: 7, scope: !2343)
!2350 = !DILocation(line: 714, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !236, line: 714, column: 7)
!2352 = distinct !DILexicalBlock(scope: !1876, file: !236, line: 714, column: 7)
!2353 = !DILocation(line: 714, column: 7, scope: !2352)
!2354 = !DILocation(line: 716, column: 11, scope: !1876)
!2355 = !DILocation(line: 718, column: 5, scope: !1877)
!2356 = !DILocation(line: 395, column: 82, scope: !1877)
!2357 = !DILocation(line: 395, column: 3, scope: !1877)
!2358 = distinct !{!2358, !2006, !2359, !527}
!2359 = !DILocation(line: 718, column: 5, scope: !1874)
!2360 = !DILocation(line: 720, column: 11, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !1843, file: !236, line: 720, column: 7)
!2362 = !DILocation(line: 720, column: 16, scope: !2361)
!2363 = !DILocation(line: 728, column: 51, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !1843, file: !236, line: 728, column: 7)
!2365 = !DILocation(line: 731, column: 11, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2364, file: !236, line: 730, column: 5)
!2367 = !DILocation(line: 732, column: 16, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2366, file: !236, line: 731, column: 11)
!2369 = !DILocation(line: 732, column: 9, scope: !2368)
!2370 = !DILocation(line: 736, column: 18, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !236, line: 736, column: 16)
!2372 = !DILocation(line: 736, column: 29, scope: !2371)
!2373 = !DILocation(line: 745, column: 7, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !1843, file: !236, line: 745, column: 7)
!2375 = !DILocation(line: 745, column: 20, scope: !2374)
!2376 = !DILocation(line: 746, column: 12, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !236, line: 746, column: 5)
!2378 = distinct !DILexicalBlock(scope: !2374, file: !236, line: 746, column: 5)
!2379 = !DILocation(line: 746, column: 5, scope: !2378)
!2380 = !DILocation(line: 747, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !236, line: 747, column: 7)
!2382 = distinct !DILexicalBlock(scope: !2377, file: !236, line: 747, column: 7)
!2383 = !DILocation(line: 747, column: 7, scope: !2382)
!2384 = !DILocation(line: 746, column: 39, scope: !2377)
!2385 = distinct !{!2385, !2379, !2386, !527}
!2386 = !DILocation(line: 747, column: 7, scope: !2378)
!2387 = !DILocation(line: 749, column: 11, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !1843, file: !236, line: 749, column: 7)
!2389 = !DILocation(line: 749, column: 7, scope: !1843)
!2390 = !DILocation(line: 750, column: 5, scope: !2388)
!2391 = !DILocation(line: 750, column: 17, scope: !2388)
!2392 = !DILocation(line: 756, column: 21, scope: !2219)
!2393 = !DILocation(line: 760, column: 42, scope: !1843)
!2394 = !DILocation(line: 758, column: 10, scope: !1843)
!2395 = !DILocation(line: 758, column: 3, scope: !1843)
!2396 = !DILocation(line: 762, column: 1, scope: !1843)
!2397 = !DISubprogram(name: "iswprint", scope: !2398, file: !2398, line: 120, type: !2207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2398 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2399 = distinct !DISubprogram(name: "quotearg_alloc", scope: !236, file: !236, line: 788, type: !2400, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!22, !30, !27, !1735}
!2402 = !{!2403, !2404, !2405}
!2403 = !DILocalVariable(name: "arg", arg: 1, scope: !2399, file: !236, line: 788, type: !30)
!2404 = !DILocalVariable(name: "argsize", arg: 2, scope: !2399, file: !236, line: 788, type: !27)
!2405 = !DILocalVariable(name: "o", arg: 3, scope: !2399, file: !236, line: 789, type: !1735)
!2406 = !DILocation(line: 0, scope: !2399)
!2407 = !DILocalVariable(name: "arg", arg: 1, scope: !2408, file: !236, line: 801, type: !30)
!2408 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !236, file: !236, line: 801, type: !2409, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!22, !30, !27, !406, !1735}
!2411 = !{!2407, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419}
!2412 = !DILocalVariable(name: "argsize", arg: 2, scope: !2408, file: !236, line: 801, type: !27)
!2413 = !DILocalVariable(name: "size", arg: 3, scope: !2408, file: !236, line: 801, type: !406)
!2414 = !DILocalVariable(name: "o", arg: 4, scope: !2408, file: !236, line: 802, type: !1735)
!2415 = !DILocalVariable(name: "p", scope: !2408, file: !236, line: 804, type: !1735)
!2416 = !DILocalVariable(name: "saved_errno", scope: !2408, file: !236, line: 805, type: !25)
!2417 = !DILocalVariable(name: "flags", scope: !2408, file: !236, line: 807, type: !25)
!2418 = !DILocalVariable(name: "bufsize", scope: !2408, file: !236, line: 808, type: !27)
!2419 = !DILocalVariable(name: "buf", scope: !2408, file: !236, line: 812, type: !22)
!2420 = !DILocation(line: 0, scope: !2408, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 791, column: 10, scope: !2399)
!2422 = !DILocation(line: 804, column: 37, scope: !2408, inlinedAt: !2421)
!2423 = !DILocation(line: 805, column: 21, scope: !2408, inlinedAt: !2421)
!2424 = !DILocation(line: 807, column: 18, scope: !2408, inlinedAt: !2421)
!2425 = !DILocation(line: 807, column: 24, scope: !2408, inlinedAt: !2421)
!2426 = !DILocation(line: 808, column: 72, scope: !2408, inlinedAt: !2421)
!2427 = !DILocation(line: 809, column: 53, scope: !2408, inlinedAt: !2421)
!2428 = !DILocation(line: 810, column: 49, scope: !2408, inlinedAt: !2421)
!2429 = !DILocation(line: 811, column: 49, scope: !2408, inlinedAt: !2421)
!2430 = !DILocation(line: 808, column: 20, scope: !2408, inlinedAt: !2421)
!2431 = !DILocation(line: 811, column: 62, scope: !2408, inlinedAt: !2421)
!2432 = !DILocation(line: 812, column: 15, scope: !2408, inlinedAt: !2421)
!2433 = !DILocation(line: 813, column: 60, scope: !2408, inlinedAt: !2421)
!2434 = !DILocation(line: 815, column: 32, scope: !2408, inlinedAt: !2421)
!2435 = !DILocation(line: 815, column: 47, scope: !2408, inlinedAt: !2421)
!2436 = !DILocation(line: 813, column: 3, scope: !2408, inlinedAt: !2421)
!2437 = !DILocation(line: 816, column: 9, scope: !2408, inlinedAt: !2421)
!2438 = !DILocation(line: 791, column: 3, scope: !2399)
!2439 = !DILocation(line: 0, scope: !2408)
!2440 = !DILocation(line: 804, column: 37, scope: !2408)
!2441 = !DILocation(line: 805, column: 21, scope: !2408)
!2442 = !DILocation(line: 807, column: 18, scope: !2408)
!2443 = !DILocation(line: 807, column: 27, scope: !2408)
!2444 = !DILocation(line: 807, column: 24, scope: !2408)
!2445 = !DILocation(line: 808, column: 72, scope: !2408)
!2446 = !DILocation(line: 809, column: 53, scope: !2408)
!2447 = !DILocation(line: 810, column: 49, scope: !2408)
!2448 = !DILocation(line: 811, column: 49, scope: !2408)
!2449 = !DILocation(line: 808, column: 20, scope: !2408)
!2450 = !DILocation(line: 811, column: 62, scope: !2408)
!2451 = !DILocation(line: 812, column: 15, scope: !2408)
!2452 = !DILocation(line: 813, column: 60, scope: !2408)
!2453 = !DILocation(line: 815, column: 32, scope: !2408)
!2454 = !DILocation(line: 815, column: 47, scope: !2408)
!2455 = !DILocation(line: 813, column: 3, scope: !2408)
!2456 = !DILocation(line: 816, column: 9, scope: !2408)
!2457 = !DILocation(line: 817, column: 7, scope: !2408)
!2458 = !DILocation(line: 818, column: 11, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2408, file: !236, line: 817, column: 7)
!2460 = !{!1073, !1073, i64 0}
!2461 = !DILocation(line: 818, column: 5, scope: !2459)
!2462 = !DILocation(line: 819, column: 3, scope: !2408)
!2463 = distinct !DISubprogram(name: "quotearg_free", scope: !236, file: !236, line: 837, type: !189, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2464)
!2464 = !{!2465, !2466}
!2465 = !DILocalVariable(name: "sv", scope: !2463, file: !236, line: 839, type: !307)
!2466 = !DILocalVariable(name: "i", scope: !2467, file: !236, line: 840, type: !25)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !236, line: 840, column: 3)
!2468 = !DILocation(line: 839, column: 24, scope: !2463)
!2469 = !DILocation(line: 0, scope: !2463)
!2470 = !DILocation(line: 0, scope: !2467)
!2471 = !DILocation(line: 840, column: 21, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !236, line: 840, column: 3)
!2473 = !DILocation(line: 840, column: 3, scope: !2467)
!2474 = !DILocation(line: 842, column: 13, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2463, file: !236, line: 842, column: 7)
!2476 = !{!2477, !468, i64 8}
!2477 = !{!"slotvec", !1073, i64 0, !468, i64 8}
!2478 = !DILocation(line: 842, column: 17, scope: !2475)
!2479 = !DILocation(line: 842, column: 7, scope: !2463)
!2480 = !DILocation(line: 841, column: 17, scope: !2472)
!2481 = !DILocation(line: 841, column: 5, scope: !2472)
!2482 = !DILocation(line: 840, column: 32, scope: !2472)
!2483 = distinct !{!2483, !2473, !2484, !527}
!2484 = !DILocation(line: 841, column: 20, scope: !2467)
!2485 = !DILocation(line: 844, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2475, file: !236, line: 843, column: 5)
!2487 = !DILocation(line: 845, column: 21, scope: !2486)
!2488 = !{!2477, !1073, i64 0}
!2489 = !DILocation(line: 846, column: 20, scope: !2486)
!2490 = !DILocation(line: 847, column: 5, scope: !2486)
!2491 = !DILocation(line: 848, column: 10, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2463, file: !236, line: 848, column: 7)
!2493 = !DILocation(line: 848, column: 7, scope: !2463)
!2494 = !DILocation(line: 850, column: 13, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2492, file: !236, line: 849, column: 5)
!2496 = !DILocation(line: 850, column: 7, scope: !2495)
!2497 = !DILocation(line: 851, column: 15, scope: !2495)
!2498 = !DILocation(line: 852, column: 5, scope: !2495)
!2499 = !DILocation(line: 853, column: 10, scope: !2463)
!2500 = !DILocation(line: 854, column: 1, scope: !2463)
!2501 = distinct !DISubprogram(name: "quotearg_n", scope: !236, file: !236, line: 919, type: !669, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2502)
!2502 = !{!2503, !2504}
!2503 = !DILocalVariable(name: "n", arg: 1, scope: !2501, file: !236, line: 919, type: !25)
!2504 = !DILocalVariable(name: "arg", arg: 2, scope: !2501, file: !236, line: 919, type: !30)
!2505 = !DILocation(line: 0, scope: !2501)
!2506 = !DILocation(line: 921, column: 10, scope: !2501)
!2507 = !DILocation(line: 921, column: 3, scope: !2501)
!2508 = distinct !DISubprogram(name: "quotearg_n_options", scope: !236, file: !236, line: 866, type: !2509, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!22, !25, !30, !27, !1735}
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2522, !2523, !2525, !2526, !2527}
!2512 = !DILocalVariable(name: "n", arg: 1, scope: !2508, file: !236, line: 866, type: !25)
!2513 = !DILocalVariable(name: "arg", arg: 2, scope: !2508, file: !236, line: 866, type: !30)
!2514 = !DILocalVariable(name: "argsize", arg: 3, scope: !2508, file: !236, line: 866, type: !27)
!2515 = !DILocalVariable(name: "options", arg: 4, scope: !2508, file: !236, line: 867, type: !1735)
!2516 = !DILocalVariable(name: "saved_errno", scope: !2508, file: !236, line: 869, type: !25)
!2517 = !DILocalVariable(name: "sv", scope: !2508, file: !236, line: 871, type: !307)
!2518 = !DILocalVariable(name: "nslots_max", scope: !2508, file: !236, line: 873, type: !25)
!2519 = !DILocalVariable(name: "preallocated", scope: !2520, file: !236, line: 879, type: !36)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !236, line: 878, column: 5)
!2521 = distinct !DILexicalBlock(scope: !2508, file: !236, line: 877, column: 7)
!2522 = !DILocalVariable(name: "new_nslots", scope: !2520, file: !236, line: 880, type: !419)
!2523 = !DILocalVariable(name: "size", scope: !2524, file: !236, line: 891, type: !27)
!2524 = distinct !DILexicalBlock(scope: !2508, file: !236, line: 890, column: 3)
!2525 = !DILocalVariable(name: "val", scope: !2524, file: !236, line: 892, type: !22)
!2526 = !DILocalVariable(name: "flags", scope: !2524, file: !236, line: 894, type: !25)
!2527 = !DILocalVariable(name: "qsize", scope: !2524, file: !236, line: 895, type: !27)
!2528 = !DILocation(line: 0, scope: !2508)
!2529 = !DILocation(line: 869, column: 21, scope: !2508)
!2530 = !DILocation(line: 871, column: 24, scope: !2508)
!2531 = !DILocation(line: 874, column: 17, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2508, file: !236, line: 874, column: 7)
!2533 = !DILocation(line: 875, column: 5, scope: !2532)
!2534 = !DILocation(line: 877, column: 7, scope: !2521)
!2535 = !DILocation(line: 877, column: 14, scope: !2521)
!2536 = !DILocation(line: 877, column: 7, scope: !2508)
!2537 = !DILocation(line: 879, column: 31, scope: !2520)
!2538 = !DILocation(line: 0, scope: !2520)
!2539 = !DILocation(line: 880, column: 7, scope: !2520)
!2540 = !DILocation(line: 880, column: 26, scope: !2520)
!2541 = !DILocation(line: 880, column: 13, scope: !2520)
!2542 = !DILocation(line: 882, column: 31, scope: !2520)
!2543 = !DILocation(line: 883, column: 33, scope: !2520)
!2544 = !DILocation(line: 883, column: 42, scope: !2520)
!2545 = !DILocation(line: 883, column: 31, scope: !2520)
!2546 = !DILocation(line: 882, column: 22, scope: !2520)
!2547 = !DILocation(line: 882, column: 15, scope: !2520)
!2548 = !DILocation(line: 884, column: 11, scope: !2520)
!2549 = !DILocation(line: 885, column: 15, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2520, file: !236, line: 884, column: 11)
!2551 = !{i64 0, i64 8, !2460, i64 8, i64 8, !467}
!2552 = !DILocation(line: 885, column: 9, scope: !2550)
!2553 = !DILocation(line: 886, column: 20, scope: !2520)
!2554 = !DILocation(line: 886, column: 18, scope: !2520)
!2555 = !DILocation(line: 886, column: 15, scope: !2520)
!2556 = !DILocation(line: 886, column: 32, scope: !2520)
!2557 = !DILocation(line: 886, column: 43, scope: !2520)
!2558 = !DILocation(line: 886, column: 53, scope: !2520)
!2559 = !DILocation(line: 0, scope: !1946, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 886, column: 7, scope: !2520)
!2561 = !DILocation(line: 59, column: 10, scope: !1946, inlinedAt: !2560)
!2562 = !DILocation(line: 887, column: 16, scope: !2520)
!2563 = !DILocation(line: 887, column: 14, scope: !2520)
!2564 = !DILocation(line: 888, column: 5, scope: !2521)
!2565 = !DILocation(line: 888, column: 5, scope: !2520)
!2566 = !DILocation(line: 891, column: 19, scope: !2524)
!2567 = !DILocation(line: 891, column: 25, scope: !2524)
!2568 = !DILocation(line: 0, scope: !2524)
!2569 = !DILocation(line: 892, column: 23, scope: !2524)
!2570 = !DILocation(line: 894, column: 26, scope: !2524)
!2571 = !DILocation(line: 894, column: 32, scope: !2524)
!2572 = !DILocation(line: 896, column: 55, scope: !2524)
!2573 = !DILocation(line: 897, column: 46, scope: !2524)
!2574 = !DILocation(line: 898, column: 55, scope: !2524)
!2575 = !DILocation(line: 899, column: 55, scope: !2524)
!2576 = !DILocation(line: 895, column: 20, scope: !2524)
!2577 = !DILocation(line: 901, column: 14, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2524, file: !236, line: 901, column: 9)
!2579 = !DILocation(line: 901, column: 9, scope: !2524)
!2580 = !DILocation(line: 903, column: 35, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2578, file: !236, line: 902, column: 7)
!2582 = !DILocation(line: 903, column: 20, scope: !2581)
!2583 = !DILocation(line: 904, column: 17, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !236, line: 904, column: 13)
!2585 = !DILocation(line: 904, column: 13, scope: !2581)
!2586 = !DILocation(line: 905, column: 11, scope: !2584)
!2587 = !DILocation(line: 906, column: 27, scope: !2581)
!2588 = !DILocation(line: 906, column: 19, scope: !2581)
!2589 = !DILocation(line: 907, column: 69, scope: !2581)
!2590 = !DILocation(line: 909, column: 44, scope: !2581)
!2591 = !DILocation(line: 910, column: 44, scope: !2581)
!2592 = !DILocation(line: 907, column: 9, scope: !2581)
!2593 = !DILocation(line: 911, column: 7, scope: !2581)
!2594 = !DILocation(line: 913, column: 11, scope: !2524)
!2595 = !DILocation(line: 914, column: 5, scope: !2524)
!2596 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !236, file: !236, line: 925, type: !2597, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!22, !25, !30, !27}
!2599 = !{!2600, !2601, !2602}
!2600 = !DILocalVariable(name: "n", arg: 1, scope: !2596, file: !236, line: 925, type: !25)
!2601 = !DILocalVariable(name: "arg", arg: 2, scope: !2596, file: !236, line: 925, type: !30)
!2602 = !DILocalVariable(name: "argsize", arg: 3, scope: !2596, file: !236, line: 925, type: !27)
!2603 = !DILocation(line: 0, scope: !2596)
!2604 = !DILocation(line: 927, column: 10, scope: !2596)
!2605 = !DILocation(line: 927, column: 3, scope: !2596)
!2606 = distinct !DISubprogram(name: "quotearg", scope: !236, file: !236, line: 931, type: !673, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2607)
!2607 = !{!2608}
!2608 = !DILocalVariable(name: "arg", arg: 1, scope: !2606, file: !236, line: 931, type: !30)
!2609 = !DILocation(line: 0, scope: !2606)
!2610 = !DILocation(line: 0, scope: !2501, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 933, column: 10, scope: !2606)
!2612 = !DILocation(line: 921, column: 10, scope: !2501, inlinedAt: !2611)
!2613 = !DILocation(line: 933, column: 3, scope: !2606)
!2614 = distinct !DISubprogram(name: "quotearg_mem", scope: !236, file: !236, line: 937, type: !2615, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!22, !30, !27}
!2617 = !{!2618, !2619}
!2618 = !DILocalVariable(name: "arg", arg: 1, scope: !2614, file: !236, line: 937, type: !30)
!2619 = !DILocalVariable(name: "argsize", arg: 2, scope: !2614, file: !236, line: 937, type: !27)
!2620 = !DILocation(line: 0, scope: !2614)
!2621 = !DILocation(line: 0, scope: !2596, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 939, column: 10, scope: !2614)
!2623 = !DILocation(line: 927, column: 10, scope: !2596, inlinedAt: !2622)
!2624 = !DILocation(line: 939, column: 3, scope: !2614)
!2625 = distinct !DISubprogram(name: "quotearg_n_style", scope: !236, file: !236, line: 943, type: !2626, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!22, !25, !238, !30}
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = !DILocalVariable(name: "n", arg: 1, scope: !2625, file: !236, line: 943, type: !25)
!2630 = !DILocalVariable(name: "s", arg: 2, scope: !2625, file: !236, line: 943, type: !238)
!2631 = !DILocalVariable(name: "arg", arg: 3, scope: !2625, file: !236, line: 943, type: !30)
!2632 = !DILocalVariable(name: "o", scope: !2625, file: !236, line: 945, type: !1736)
!2633 = !DILocation(line: 0, scope: !2625)
!2634 = !DILocation(line: 945, column: 3, scope: !2625)
!2635 = !DILocation(line: 945, column: 32, scope: !2625)
!2636 = !{!2637}
!2637 = distinct !{!2637, !2638, !"quoting_options_from_style: argument 0"}
!2638 = distinct !{!2638, !"quoting_options_from_style"}
!2639 = !DILocation(line: 945, column: 36, scope: !2625)
!2640 = !DILocalVariable(name: "style", arg: 1, scope: !2641, file: !236, line: 183, type: !238)
!2641 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !236, file: !236, line: 183, type: !2642, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!267, !238}
!2644 = !{!2640, !2645}
!2645 = !DILocalVariable(name: "o", scope: !2641, file: !236, line: 185, type: !267)
!2646 = !DILocation(line: 0, scope: !2641, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 945, column: 36, scope: !2625)
!2648 = !DILocation(line: 185, column: 26, scope: !2641, inlinedAt: !2647)
!2649 = !DILocation(line: 186, column: 13, scope: !2650, inlinedAt: !2647)
!2650 = distinct !DILexicalBlock(scope: !2641, file: !236, line: 186, column: 7)
!2651 = !DILocation(line: 186, column: 7, scope: !2641, inlinedAt: !2647)
!2652 = !DILocation(line: 187, column: 5, scope: !2650, inlinedAt: !2647)
!2653 = !DILocation(line: 188, column: 5, scope: !2641, inlinedAt: !2647)
!2654 = !DILocation(line: 188, column: 11, scope: !2641, inlinedAt: !2647)
!2655 = !DILocation(line: 946, column: 10, scope: !2625)
!2656 = !DILocation(line: 947, column: 1, scope: !2625)
!2657 = !DILocation(line: 946, column: 3, scope: !2625)
!2658 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !236, file: !236, line: 950, type: !2659, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!22, !25, !238, !30, !27}
!2661 = !{!2662, !2663, !2664, !2665, !2666}
!2662 = !DILocalVariable(name: "n", arg: 1, scope: !2658, file: !236, line: 950, type: !25)
!2663 = !DILocalVariable(name: "s", arg: 2, scope: !2658, file: !236, line: 950, type: !238)
!2664 = !DILocalVariable(name: "arg", arg: 3, scope: !2658, file: !236, line: 951, type: !30)
!2665 = !DILocalVariable(name: "argsize", arg: 4, scope: !2658, file: !236, line: 951, type: !27)
!2666 = !DILocalVariable(name: "o", scope: !2658, file: !236, line: 953, type: !1736)
!2667 = !DILocation(line: 0, scope: !2658)
!2668 = !DILocation(line: 953, column: 3, scope: !2658)
!2669 = !DILocation(line: 953, column: 32, scope: !2658)
!2670 = !{!2671}
!2671 = distinct !{!2671, !2672, !"quoting_options_from_style: argument 0"}
!2672 = distinct !{!2672, !"quoting_options_from_style"}
!2673 = !DILocation(line: 953, column: 36, scope: !2658)
!2674 = !DILocation(line: 0, scope: !2641, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 953, column: 36, scope: !2658)
!2676 = !DILocation(line: 185, column: 26, scope: !2641, inlinedAt: !2675)
!2677 = !DILocation(line: 186, column: 13, scope: !2650, inlinedAt: !2675)
!2678 = !DILocation(line: 186, column: 7, scope: !2641, inlinedAt: !2675)
!2679 = !DILocation(line: 187, column: 5, scope: !2650, inlinedAt: !2675)
!2680 = !DILocation(line: 188, column: 5, scope: !2641, inlinedAt: !2675)
!2681 = !DILocation(line: 188, column: 11, scope: !2641, inlinedAt: !2675)
!2682 = !DILocation(line: 954, column: 10, scope: !2658)
!2683 = !DILocation(line: 955, column: 1, scope: !2658)
!2684 = !DILocation(line: 954, column: 3, scope: !2658)
!2685 = distinct !DISubprogram(name: "quotearg_style", scope: !236, file: !236, line: 958, type: !2686, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!22, !238, !30}
!2688 = !{!2689, !2690}
!2689 = !DILocalVariable(name: "s", arg: 1, scope: !2685, file: !236, line: 958, type: !238)
!2690 = !DILocalVariable(name: "arg", arg: 2, scope: !2685, file: !236, line: 958, type: !30)
!2691 = !DILocation(line: 0, scope: !2685)
!2692 = !DILocation(line: 0, scope: !2625, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 960, column: 10, scope: !2685)
!2694 = !DILocation(line: 945, column: 3, scope: !2625, inlinedAt: !2693)
!2695 = !DILocation(line: 945, column: 32, scope: !2625, inlinedAt: !2693)
!2696 = !{!2697}
!2697 = distinct !{!2697, !2698, !"quoting_options_from_style: argument 0"}
!2698 = distinct !{!2698, !"quoting_options_from_style"}
!2699 = !DILocation(line: 945, column: 36, scope: !2625, inlinedAt: !2693)
!2700 = !DILocation(line: 0, scope: !2641, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 945, column: 36, scope: !2625, inlinedAt: !2693)
!2702 = !DILocation(line: 185, column: 26, scope: !2641, inlinedAt: !2701)
!2703 = !DILocation(line: 186, column: 13, scope: !2650, inlinedAt: !2701)
!2704 = !DILocation(line: 186, column: 7, scope: !2641, inlinedAt: !2701)
!2705 = !DILocation(line: 187, column: 5, scope: !2650, inlinedAt: !2701)
!2706 = !DILocation(line: 188, column: 5, scope: !2641, inlinedAt: !2701)
!2707 = !DILocation(line: 188, column: 11, scope: !2641, inlinedAt: !2701)
!2708 = !DILocation(line: 946, column: 10, scope: !2625, inlinedAt: !2693)
!2709 = !DILocation(line: 947, column: 1, scope: !2625, inlinedAt: !2693)
!2710 = !DILocation(line: 960, column: 3, scope: !2685)
!2711 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !236, file: !236, line: 964, type: !2712, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!22, !238, !30, !27}
!2714 = !{!2715, !2716, !2717}
!2715 = !DILocalVariable(name: "s", arg: 1, scope: !2711, file: !236, line: 964, type: !238)
!2716 = !DILocalVariable(name: "arg", arg: 2, scope: !2711, file: !236, line: 964, type: !30)
!2717 = !DILocalVariable(name: "argsize", arg: 3, scope: !2711, file: !236, line: 964, type: !27)
!2718 = !DILocation(line: 0, scope: !2711)
!2719 = !DILocation(line: 0, scope: !2658, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 966, column: 10, scope: !2711)
!2721 = !DILocation(line: 953, column: 3, scope: !2658, inlinedAt: !2720)
!2722 = !DILocation(line: 953, column: 32, scope: !2658, inlinedAt: !2720)
!2723 = !{!2724}
!2724 = distinct !{!2724, !2725, !"quoting_options_from_style: argument 0"}
!2725 = distinct !{!2725, !"quoting_options_from_style"}
!2726 = !DILocation(line: 953, column: 36, scope: !2658, inlinedAt: !2720)
!2727 = !DILocation(line: 0, scope: !2641, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 953, column: 36, scope: !2658, inlinedAt: !2720)
!2729 = !DILocation(line: 185, column: 26, scope: !2641, inlinedAt: !2728)
!2730 = !DILocation(line: 186, column: 13, scope: !2650, inlinedAt: !2728)
!2731 = !DILocation(line: 186, column: 7, scope: !2641, inlinedAt: !2728)
!2732 = !DILocation(line: 187, column: 5, scope: !2650, inlinedAt: !2728)
!2733 = !DILocation(line: 188, column: 5, scope: !2641, inlinedAt: !2728)
!2734 = !DILocation(line: 188, column: 11, scope: !2641, inlinedAt: !2728)
!2735 = !DILocation(line: 954, column: 10, scope: !2658, inlinedAt: !2720)
!2736 = !DILocation(line: 955, column: 1, scope: !2658, inlinedAt: !2720)
!2737 = !DILocation(line: 966, column: 3, scope: !2711)
!2738 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !236, file: !236, line: 970, type: !2739, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!22, !30, !27, !23}
!2741 = !{!2742, !2743, !2744, !2745}
!2742 = !DILocalVariable(name: "arg", arg: 1, scope: !2738, file: !236, line: 970, type: !30)
!2743 = !DILocalVariable(name: "argsize", arg: 2, scope: !2738, file: !236, line: 970, type: !27)
!2744 = !DILocalVariable(name: "ch", arg: 3, scope: !2738, file: !236, line: 970, type: !23)
!2745 = !DILocalVariable(name: "options", scope: !2738, file: !236, line: 972, type: !267)
!2746 = !DILocation(line: 0, scope: !2738)
!2747 = !DILocation(line: 972, column: 3, scope: !2738)
!2748 = !DILocation(line: 972, column: 26, scope: !2738)
!2749 = !DILocation(line: 973, column: 13, scope: !2738)
!2750 = !{i64 0, i64 4, !570, i64 4, i64 4, !561, i64 8, i64 32, !570, i64 40, i64 8, !467, i64 48, i64 8, !467}
!2751 = !DILocation(line: 0, scope: !1756, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 974, column: 3, scope: !2738)
!2753 = !DILocation(line: 147, column: 62, scope: !1756, inlinedAt: !2752)
!2754 = !DILocation(line: 147, column: 57, scope: !1756, inlinedAt: !2752)
!2755 = !DILocation(line: 148, column: 15, scope: !1756, inlinedAt: !2752)
!2756 = !DILocation(line: 149, column: 21, scope: !1756, inlinedAt: !2752)
!2757 = !DILocation(line: 149, column: 24, scope: !1756, inlinedAt: !2752)
!2758 = !DILocation(line: 149, column: 34, scope: !1756, inlinedAt: !2752)
!2759 = !DILocation(line: 150, column: 19, scope: !1756, inlinedAt: !2752)
!2760 = !DILocation(line: 150, column: 24, scope: !1756, inlinedAt: !2752)
!2761 = !DILocation(line: 150, column: 6, scope: !1756, inlinedAt: !2752)
!2762 = !DILocation(line: 975, column: 10, scope: !2738)
!2763 = !DILocation(line: 976, column: 1, scope: !2738)
!2764 = !DILocation(line: 975, column: 3, scope: !2738)
!2765 = distinct !DISubprogram(name: "quotearg_char", scope: !236, file: !236, line: 979, type: !2766, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!22, !30, !23}
!2768 = !{!2769, !2770}
!2769 = !DILocalVariable(name: "arg", arg: 1, scope: !2765, file: !236, line: 979, type: !30)
!2770 = !DILocalVariable(name: "ch", arg: 2, scope: !2765, file: !236, line: 979, type: !23)
!2771 = !DILocation(line: 0, scope: !2765)
!2772 = !DILocation(line: 0, scope: !2738, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 981, column: 10, scope: !2765)
!2774 = !DILocation(line: 972, column: 3, scope: !2738, inlinedAt: !2773)
!2775 = !DILocation(line: 972, column: 26, scope: !2738, inlinedAt: !2773)
!2776 = !DILocation(line: 973, column: 13, scope: !2738, inlinedAt: !2773)
!2777 = !DILocation(line: 0, scope: !1756, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 974, column: 3, scope: !2738, inlinedAt: !2773)
!2779 = !DILocation(line: 147, column: 62, scope: !1756, inlinedAt: !2778)
!2780 = !DILocation(line: 147, column: 57, scope: !1756, inlinedAt: !2778)
!2781 = !DILocation(line: 148, column: 15, scope: !1756, inlinedAt: !2778)
!2782 = !DILocation(line: 149, column: 21, scope: !1756, inlinedAt: !2778)
!2783 = !DILocation(line: 149, column: 24, scope: !1756, inlinedAt: !2778)
!2784 = !DILocation(line: 149, column: 34, scope: !1756, inlinedAt: !2778)
!2785 = !DILocation(line: 150, column: 19, scope: !1756, inlinedAt: !2778)
!2786 = !DILocation(line: 150, column: 24, scope: !1756, inlinedAt: !2778)
!2787 = !DILocation(line: 150, column: 6, scope: !1756, inlinedAt: !2778)
!2788 = !DILocation(line: 975, column: 10, scope: !2738, inlinedAt: !2773)
!2789 = !DILocation(line: 976, column: 1, scope: !2738, inlinedAt: !2773)
!2790 = !DILocation(line: 981, column: 3, scope: !2765)
!2791 = distinct !DISubprogram(name: "quotearg_colon", scope: !236, file: !236, line: 985, type: !673, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2792)
!2792 = !{!2793}
!2793 = !DILocalVariable(name: "arg", arg: 1, scope: !2791, file: !236, line: 985, type: !30)
!2794 = !DILocation(line: 0, scope: !2791)
!2795 = !DILocation(line: 0, scope: !2765, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 987, column: 10, scope: !2791)
!2797 = !DILocation(line: 0, scope: !2738, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 981, column: 10, scope: !2765, inlinedAt: !2796)
!2799 = !DILocation(line: 972, column: 3, scope: !2738, inlinedAt: !2798)
!2800 = !DILocation(line: 972, column: 26, scope: !2738, inlinedAt: !2798)
!2801 = !DILocation(line: 973, column: 13, scope: !2738, inlinedAt: !2798)
!2802 = !DILocation(line: 0, scope: !1756, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 974, column: 3, scope: !2738, inlinedAt: !2798)
!2804 = !DILocation(line: 147, column: 57, scope: !1756, inlinedAt: !2803)
!2805 = !DILocation(line: 149, column: 21, scope: !1756, inlinedAt: !2803)
!2806 = !DILocation(line: 150, column: 6, scope: !1756, inlinedAt: !2803)
!2807 = !DILocation(line: 975, column: 10, scope: !2738, inlinedAt: !2798)
!2808 = !DILocation(line: 976, column: 1, scope: !2738, inlinedAt: !2798)
!2809 = !DILocation(line: 987, column: 3, scope: !2791)
!2810 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !236, file: !236, line: 991, type: !2615, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2811)
!2811 = !{!2812, !2813}
!2812 = !DILocalVariable(name: "arg", arg: 1, scope: !2810, file: !236, line: 991, type: !30)
!2813 = !DILocalVariable(name: "argsize", arg: 2, scope: !2810, file: !236, line: 991, type: !27)
!2814 = !DILocation(line: 0, scope: !2810)
!2815 = !DILocation(line: 0, scope: !2738, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 993, column: 10, scope: !2810)
!2817 = !DILocation(line: 972, column: 3, scope: !2738, inlinedAt: !2816)
!2818 = !DILocation(line: 972, column: 26, scope: !2738, inlinedAt: !2816)
!2819 = !DILocation(line: 973, column: 13, scope: !2738, inlinedAt: !2816)
!2820 = !DILocation(line: 0, scope: !1756, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 974, column: 3, scope: !2738, inlinedAt: !2816)
!2822 = !DILocation(line: 147, column: 57, scope: !1756, inlinedAt: !2821)
!2823 = !DILocation(line: 149, column: 21, scope: !1756, inlinedAt: !2821)
!2824 = !DILocation(line: 150, column: 6, scope: !1756, inlinedAt: !2821)
!2825 = !DILocation(line: 975, column: 10, scope: !2738, inlinedAt: !2816)
!2826 = !DILocation(line: 976, column: 1, scope: !2738, inlinedAt: !2816)
!2827 = !DILocation(line: 993, column: 3, scope: !2810)
!2828 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !236, file: !236, line: 997, type: !2626, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2829)
!2829 = !{!2830, !2831, !2832, !2833}
!2830 = !DILocalVariable(name: "n", arg: 1, scope: !2828, file: !236, line: 997, type: !25)
!2831 = !DILocalVariable(name: "s", arg: 2, scope: !2828, file: !236, line: 997, type: !238)
!2832 = !DILocalVariable(name: "arg", arg: 3, scope: !2828, file: !236, line: 997, type: !30)
!2833 = !DILocalVariable(name: "options", scope: !2828, file: !236, line: 999, type: !267)
!2834 = !DILocation(line: 0, scope: !2828)
!2835 = !DILocation(line: 999, column: 3, scope: !2828)
!2836 = !DILocation(line: 999, column: 26, scope: !2828)
!2837 = !DILocation(line: 0, scope: !2641, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 1000, column: 13, scope: !2828)
!2839 = !DILocation(line: 186, column: 13, scope: !2650, inlinedAt: !2838)
!2840 = !DILocation(line: 186, column: 7, scope: !2641, inlinedAt: !2838)
!2841 = !DILocation(line: 187, column: 5, scope: !2650, inlinedAt: !2838)
!2842 = !{!2843}
!2843 = distinct !{!2843, !2844, !"quoting_options_from_style: argument 0"}
!2844 = distinct !{!2844, !"quoting_options_from_style"}
!2845 = !DILocation(line: 1000, column: 13, scope: !2828)
!2846 = !DILocation(line: 0, scope: !1756, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 1001, column: 3, scope: !2828)
!2848 = !DILocation(line: 147, column: 57, scope: !1756, inlinedAt: !2847)
!2849 = !DILocation(line: 149, column: 21, scope: !1756, inlinedAt: !2847)
!2850 = !DILocation(line: 150, column: 6, scope: !1756, inlinedAt: !2847)
!2851 = !DILocation(line: 1002, column: 10, scope: !2828)
!2852 = !DILocation(line: 1003, column: 1, scope: !2828)
!2853 = !DILocation(line: 1002, column: 3, scope: !2828)
!2854 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !236, file: !236, line: 1006, type: !2855, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!22, !25, !30, !30, !30}
!2857 = !{!2858, !2859, !2860, !2861}
!2858 = !DILocalVariable(name: "n", arg: 1, scope: !2854, file: !236, line: 1006, type: !25)
!2859 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2854, file: !236, line: 1006, type: !30)
!2860 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2854, file: !236, line: 1007, type: !30)
!2861 = !DILocalVariable(name: "arg", arg: 4, scope: !2854, file: !236, line: 1007, type: !30)
!2862 = !DILocation(line: 0, scope: !2854)
!2863 = !DILocalVariable(name: "n", arg: 1, scope: !2864, file: !236, line: 1014, type: !25)
!2864 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !236, file: !236, line: 1014, type: !2865, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!22, !25, !30, !30, !30, !27}
!2867 = !{!2863, !2868, !2869, !2870, !2871, !2872}
!2868 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2864, file: !236, line: 1014, type: !30)
!2869 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2864, file: !236, line: 1015, type: !30)
!2870 = !DILocalVariable(name: "arg", arg: 4, scope: !2864, file: !236, line: 1016, type: !30)
!2871 = !DILocalVariable(name: "argsize", arg: 5, scope: !2864, file: !236, line: 1016, type: !27)
!2872 = !DILocalVariable(name: "o", scope: !2864, file: !236, line: 1018, type: !267)
!2873 = !DILocation(line: 0, scope: !2864, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 1009, column: 10, scope: !2854)
!2875 = !DILocation(line: 1018, column: 3, scope: !2864, inlinedAt: !2874)
!2876 = !DILocation(line: 1018, column: 26, scope: !2864, inlinedAt: !2874)
!2877 = !DILocation(line: 1018, column: 30, scope: !2864, inlinedAt: !2874)
!2878 = !DILocation(line: 0, scope: !1796, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 1019, column: 3, scope: !2864, inlinedAt: !2874)
!2880 = !DILocation(line: 174, column: 6, scope: !1796, inlinedAt: !2879)
!2881 = !DILocation(line: 174, column: 12, scope: !1796, inlinedAt: !2879)
!2882 = !DILocation(line: 175, column: 8, scope: !1810, inlinedAt: !2879)
!2883 = !DILocation(line: 175, column: 19, scope: !1810, inlinedAt: !2879)
!2884 = !DILocation(line: 176, column: 5, scope: !1810, inlinedAt: !2879)
!2885 = !DILocation(line: 177, column: 6, scope: !1796, inlinedAt: !2879)
!2886 = !DILocation(line: 177, column: 17, scope: !1796, inlinedAt: !2879)
!2887 = !DILocation(line: 178, column: 6, scope: !1796, inlinedAt: !2879)
!2888 = !DILocation(line: 178, column: 18, scope: !1796, inlinedAt: !2879)
!2889 = !DILocation(line: 1020, column: 10, scope: !2864, inlinedAt: !2874)
!2890 = !DILocation(line: 1021, column: 1, scope: !2864, inlinedAt: !2874)
!2891 = !DILocation(line: 1009, column: 3, scope: !2854)
!2892 = !DILocation(line: 0, scope: !2864)
!2893 = !DILocation(line: 1018, column: 3, scope: !2864)
!2894 = !DILocation(line: 1018, column: 26, scope: !2864)
!2895 = !DILocation(line: 1018, column: 30, scope: !2864)
!2896 = !DILocation(line: 0, scope: !1796, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 1019, column: 3, scope: !2864)
!2898 = !DILocation(line: 174, column: 6, scope: !1796, inlinedAt: !2897)
!2899 = !DILocation(line: 174, column: 12, scope: !1796, inlinedAt: !2897)
!2900 = !DILocation(line: 175, column: 8, scope: !1810, inlinedAt: !2897)
!2901 = !DILocation(line: 175, column: 19, scope: !1810, inlinedAt: !2897)
!2902 = !DILocation(line: 176, column: 5, scope: !1810, inlinedAt: !2897)
!2903 = !DILocation(line: 177, column: 6, scope: !1796, inlinedAt: !2897)
!2904 = !DILocation(line: 177, column: 17, scope: !1796, inlinedAt: !2897)
!2905 = !DILocation(line: 178, column: 6, scope: !1796, inlinedAt: !2897)
!2906 = !DILocation(line: 178, column: 18, scope: !1796, inlinedAt: !2897)
!2907 = !DILocation(line: 1020, column: 10, scope: !2864)
!2908 = !DILocation(line: 1021, column: 1, scope: !2864)
!2909 = !DILocation(line: 1020, column: 3, scope: !2864)
!2910 = distinct !DISubprogram(name: "quotearg_custom", scope: !236, file: !236, line: 1024, type: !2911, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2913)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!22, !30, !30, !30}
!2913 = !{!2914, !2915, !2916}
!2914 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2910, file: !236, line: 1024, type: !30)
!2915 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2910, file: !236, line: 1024, type: !30)
!2916 = !DILocalVariable(name: "arg", arg: 3, scope: !2910, file: !236, line: 1025, type: !30)
!2917 = !DILocation(line: 0, scope: !2910)
!2918 = !DILocation(line: 0, scope: !2854, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 1027, column: 10, scope: !2910)
!2920 = !DILocation(line: 0, scope: !2864, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 1009, column: 10, scope: !2854, inlinedAt: !2919)
!2922 = !DILocation(line: 1018, column: 3, scope: !2864, inlinedAt: !2921)
!2923 = !DILocation(line: 1018, column: 26, scope: !2864, inlinedAt: !2921)
!2924 = !DILocation(line: 1018, column: 30, scope: !2864, inlinedAt: !2921)
!2925 = !DILocation(line: 0, scope: !1796, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 1019, column: 3, scope: !2864, inlinedAt: !2921)
!2927 = !DILocation(line: 174, column: 6, scope: !1796, inlinedAt: !2926)
!2928 = !DILocation(line: 174, column: 12, scope: !1796, inlinedAt: !2926)
!2929 = !DILocation(line: 175, column: 8, scope: !1810, inlinedAt: !2926)
!2930 = !DILocation(line: 175, column: 19, scope: !1810, inlinedAt: !2926)
!2931 = !DILocation(line: 176, column: 5, scope: !1810, inlinedAt: !2926)
!2932 = !DILocation(line: 177, column: 6, scope: !1796, inlinedAt: !2926)
!2933 = !DILocation(line: 177, column: 17, scope: !1796, inlinedAt: !2926)
!2934 = !DILocation(line: 178, column: 6, scope: !1796, inlinedAt: !2926)
!2935 = !DILocation(line: 178, column: 18, scope: !1796, inlinedAt: !2926)
!2936 = !DILocation(line: 1020, column: 10, scope: !2864, inlinedAt: !2921)
!2937 = !DILocation(line: 1021, column: 1, scope: !2864, inlinedAt: !2921)
!2938 = !DILocation(line: 1027, column: 3, scope: !2910)
!2939 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !236, file: !236, line: 1031, type: !2940, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!22, !30, !30, !30, !27}
!2942 = !{!2943, !2944, !2945, !2946}
!2943 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2939, file: !236, line: 1031, type: !30)
!2944 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2939, file: !236, line: 1031, type: !30)
!2945 = !DILocalVariable(name: "arg", arg: 3, scope: !2939, file: !236, line: 1032, type: !30)
!2946 = !DILocalVariable(name: "argsize", arg: 4, scope: !2939, file: !236, line: 1032, type: !27)
!2947 = !DILocation(line: 0, scope: !2939)
!2948 = !DILocation(line: 0, scope: !2864, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 1034, column: 10, scope: !2939)
!2950 = !DILocation(line: 1018, column: 3, scope: !2864, inlinedAt: !2949)
!2951 = !DILocation(line: 1018, column: 26, scope: !2864, inlinedAt: !2949)
!2952 = !DILocation(line: 1018, column: 30, scope: !2864, inlinedAt: !2949)
!2953 = !DILocation(line: 0, scope: !1796, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 1019, column: 3, scope: !2864, inlinedAt: !2949)
!2955 = !DILocation(line: 174, column: 6, scope: !1796, inlinedAt: !2954)
!2956 = !DILocation(line: 174, column: 12, scope: !1796, inlinedAt: !2954)
!2957 = !DILocation(line: 175, column: 8, scope: !1810, inlinedAt: !2954)
!2958 = !DILocation(line: 175, column: 19, scope: !1810, inlinedAt: !2954)
!2959 = !DILocation(line: 176, column: 5, scope: !1810, inlinedAt: !2954)
!2960 = !DILocation(line: 177, column: 6, scope: !1796, inlinedAt: !2954)
!2961 = !DILocation(line: 177, column: 17, scope: !1796, inlinedAt: !2954)
!2962 = !DILocation(line: 178, column: 6, scope: !1796, inlinedAt: !2954)
!2963 = !DILocation(line: 178, column: 18, scope: !1796, inlinedAt: !2954)
!2964 = !DILocation(line: 1020, column: 10, scope: !2864, inlinedAt: !2949)
!2965 = !DILocation(line: 1021, column: 1, scope: !2864, inlinedAt: !2949)
!2966 = !DILocation(line: 1034, column: 3, scope: !2939)
!2967 = distinct !DISubprogram(name: "quote_n_mem", scope: !236, file: !236, line: 1049, type: !2968, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!30, !25, !30, !27}
!2970 = !{!2971, !2972, !2973}
!2971 = !DILocalVariable(name: "n", arg: 1, scope: !2967, file: !236, line: 1049, type: !25)
!2972 = !DILocalVariable(name: "arg", arg: 2, scope: !2967, file: !236, line: 1049, type: !30)
!2973 = !DILocalVariable(name: "argsize", arg: 3, scope: !2967, file: !236, line: 1049, type: !27)
!2974 = !DILocation(line: 0, scope: !2967)
!2975 = !DILocation(line: 1051, column: 10, scope: !2967)
!2976 = !DILocation(line: 1051, column: 3, scope: !2967)
!2977 = distinct !DISubprogram(name: "quote_mem", scope: !236, file: !236, line: 1055, type: !2978, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!30, !30, !27}
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "arg", arg: 1, scope: !2977, file: !236, line: 1055, type: !30)
!2982 = !DILocalVariable(name: "argsize", arg: 2, scope: !2977, file: !236, line: 1055, type: !27)
!2983 = !DILocation(line: 0, scope: !2977)
!2984 = !DILocation(line: 0, scope: !2967, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 1057, column: 10, scope: !2977)
!2986 = !DILocation(line: 1051, column: 10, scope: !2967, inlinedAt: !2985)
!2987 = !DILocation(line: 1057, column: 3, scope: !2977)
!2988 = distinct !DISubprogram(name: "quote_n", scope: !236, file: !236, line: 1061, type: !2989, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!30, !25, !30}
!2991 = !{!2992, !2993}
!2992 = !DILocalVariable(name: "n", arg: 1, scope: !2988, file: !236, line: 1061, type: !25)
!2993 = !DILocalVariable(name: "arg", arg: 2, scope: !2988, file: !236, line: 1061, type: !30)
!2994 = !DILocation(line: 0, scope: !2988)
!2995 = !DILocation(line: 0, scope: !2967, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 1063, column: 10, scope: !2988)
!2997 = !DILocation(line: 1051, column: 10, scope: !2967, inlinedAt: !2996)
!2998 = !DILocation(line: 1063, column: 3, scope: !2988)
!2999 = distinct !DISubprogram(name: "quote", scope: !236, file: !236, line: 1067, type: !3000, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!30, !30}
!3002 = !{!3003}
!3003 = !DILocalVariable(name: "arg", arg: 1, scope: !2999, file: !236, line: 1067, type: !30)
!3004 = !DILocation(line: 0, scope: !2999)
!3005 = !DILocation(line: 0, scope: !2988, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 1069, column: 10, scope: !2999)
!3007 = !DILocation(line: 0, scope: !2967, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 1063, column: 10, scope: !2988, inlinedAt: !3006)
!3009 = !DILocation(line: 1051, column: 10, scope: !2967, inlinedAt: !3008)
!3010 = !DILocation(line: 1069, column: 3, scope: !2999)
!3011 = !DILocation(line: 0, scope: !322)
!3012 = !DILocation(line: 181, column: 45, scope: !322)
!3013 = !DILocation(line: 181, column: 53, scope: !322)
!3014 = !DILocation(line: 181, column: 10, scope: !322)
!3015 = !DILocation(line: 181, column: 3, scope: !322)
!3016 = distinct !DISubprogram(name: "try_tempname_len", scope: !323, file: !323, line: 189, type: !3017, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!25, !22, !25, !24, !341, !27}
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3031, !3032, !3033, !3035, !3036, !3037, !3039, !3043}
!3020 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3016, file: !323, line: 189, type: !22)
!3021 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3016, file: !323, line: 189, type: !25)
!3022 = !DILocalVariable(name: "args", arg: 3, scope: !3016, file: !323, line: 189, type: !24)
!3023 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3016, file: !323, line: 190, type: !341)
!3024 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3016, file: !323, line: 190, type: !27)
!3025 = !DILocalVariable(name: "saved_errno", scope: !3016, file: !323, line: 192, type: !25)
!3026 = !DILocalVariable(name: "attempts", scope: !3016, file: !323, line: 208, type: !7)
!3027 = !DILocalVariable(name: "v", scope: !3016, file: !323, line: 212, type: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "random_value", file: !323, line: 64, baseType: !3029)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !3030, line: 75, baseType: !29)
!3030 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!3031 = !DILocalVariable(name: "vdigbuf", scope: !3016, file: !323, line: 216, type: !3028)
!3032 = !DILocalVariable(name: "vdigits", scope: !3016, file: !323, line: 217, type: !25)
!3033 = !DILocalVariable(name: "biased_min", scope: !3016, file: !323, line: 221, type: !3034)
!3034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3028)
!3035 = !DILocalVariable(name: "len", scope: !3016, file: !323, line: 224, type: !27)
!3036 = !DILocalVariable(name: "XXXXXX", scope: !3016, file: !323, line: 233, type: !22)
!3037 = !DILocalVariable(name: "count", scope: !3038, file: !323, line: 235, type: !7)
!3038 = distinct !DILexicalBlock(scope: !3016, file: !323, line: 235, column: 3)
!3039 = !DILocalVariable(name: "i", scope: !3040, file: !323, line: 237, type: !27)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !323, line: 237, column: 7)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !323, line: 236, column: 5)
!3042 = distinct !DILexicalBlock(scope: !3038, file: !323, line: 235, column: 3)
!3043 = !DILocalVariable(name: "fd", scope: !3041, file: !323, line: 254, type: !25)
!3044 = !DILocation(line: 0, scope: !3016)
!3045 = !DILocation(line: 192, column: 21, scope: !3016)
!3046 = !DILocation(line: 212, column: 3, scope: !3016)
!3047 = !DILocation(line: 212, column: 16, scope: !3016)
!3048 = !DILocation(line: 224, column: 16, scope: !3016)
!3049 = !DILocation(line: 225, column: 28, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3016, file: !323, line: 225, column: 7)
!3051 = !DILocation(line: 225, column: 26, scope: !3050)
!3052 = !DILocation(line: 225, column: 11, scope: !3050)
!3053 = !DILocation(line: 226, column: 7, scope: !3050)
!3054 = !DILocation(line: 226, column: 43, scope: !3050)
!3055 = !DILocation(line: 226, column: 19, scope: !3050)
!3056 = !DILocation(line: 226, column: 10, scope: !3050)
!3057 = !DILocation(line: 226, column: 62, scope: !3050)
!3058 = !DILocation(line: 225, column: 7, scope: !3016)
!3059 = !DILocation(line: 0, scope: !3038)
!3060 = !DILocation(line: 235, column: 3, scope: !3038)
!3061 = !DILocation(line: 235, column: 38, scope: !3042)
!3062 = distinct !{!3062, !3060, !3063, !527}
!3063 = !DILocation(line: 262, column: 5, scope: !3038)
!3064 = !DILocation(line: 0, scope: !3040)
!3065 = !DILocation(line: 237, column: 7, scope: !3040)
!3066 = !DILocation(line: 254, column: 16, scope: !3041)
!3067 = !DILocation(line: 0, scope: !3041)
!3068 = !DILocation(line: 255, column: 14, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3041, file: !323, line: 255, column: 11)
!3070 = !DILocation(line: 255, column: 11, scope: !3041)
!3071 = !DILocation(line: 239, column: 23, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !323, line: 239, column: 15)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !323, line: 238, column: 9)
!3074 = distinct !DILexicalBlock(scope: !3040, file: !323, line: 237, column: 7)
!3075 = !DILocation(line: 239, column: 15, scope: !3073)
!3076 = !DILocation(line: 242, column: 39, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3072, file: !323, line: 240, column: 13)
!3078 = !DILocalVariable(name: "r", arg: 1, scope: !3079, file: !323, line: 93, type: !3082)
!3079 = distinct !DISubprogram(name: "random_bits", scope: !323, file: !323, line: 93, type: !3080, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3083)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!36, !3082, !3028}
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3083 = !{!3078, !3084, !3085, !3086}
!3084 = !DILocalVariable(name: "s", arg: 2, scope: !3079, file: !323, line: 93, type: !3028)
!3085 = !DILocalVariable(name: "v", scope: !3079, file: !323, line: 107, type: !3028)
!3086 = !DILocalVariable(name: "tv", scope: !3079, file: !323, line: 110, type: !3087)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3088, line: 11, size: 128, elements: !3089)
!3088 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3089 = !{!3090, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3087, file: !3088, line: 16, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !89, line: 160, baseType: !90)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3087, file: !3088, line: 21, baseType: !3093, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !89, line: 197, baseType: !90)
!3094 = !DILocation(line: 0, scope: !3079, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 242, column: 22, scope: !3077)
!3096 = !DILocation(line: 96, column: 7, scope: !3097, inlinedAt: !3095)
!3097 = distinct !DILexicalBlock(scope: !3079, file: !323, line: 96, column: 7)
!3098 = !DILocation(line: 96, column: 49, scope: !3097, inlinedAt: !3095)
!3099 = !DILocation(line: 96, column: 7, scope: !3079, inlinedAt: !3095)
!3100 = distinct !{!3100, !3101, !3102, !527}
!3101 = !DILocation(line: 242, column: 15, scope: !3077)
!3102 = !DILocation(line: 243, column: 17, scope: !3077)
!3103 = !DILocation(line: 110, column: 3, scope: !3079, inlinedAt: !3095)
!3104 = !DILocation(line: 110, column: 23, scope: !3079, inlinedAt: !3095)
!3105 = !DILocation(line: 111, column: 3, scope: !3079, inlinedAt: !3095)
!3106 = !DILocation(line: 112, column: 32, scope: !3079, inlinedAt: !3095)
!3107 = !{!3108, !1073, i64 0}
!3108 = !{!"timespec", !1073, i64 0, !1073, i64 8}
!3109 = !DILocalVariable(name: "r", arg: 1, scope: !3110, file: !323, line: 74, type: !3028)
!3110 = distinct !DISubprogram(name: "mix_random_values", scope: !323, file: !323, line: 74, type: !3111, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!3028, !3028, !3028}
!3113 = !{!3109, !3114}
!3114 = !DILocalVariable(name: "s", arg: 2, scope: !3110, file: !323, line: 74, type: !3028)
!3115 = !DILocation(line: 0, scope: !3110, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 112, column: 7, scope: !3079, inlinedAt: !3095)
!3117 = !DILocation(line: 79, column: 31, scope: !3110, inlinedAt: !3116)
!3118 = !DILocation(line: 79, column: 35, scope: !3110, inlinedAt: !3116)
!3119 = !DILocation(line: 79, column: 49, scope: !3110, inlinedAt: !3116)
!3120 = !DILocation(line: 113, column: 32, scope: !3079, inlinedAt: !3095)
!3121 = !{!3108, !1073, i64 8}
!3122 = !DILocation(line: 0, scope: !3110, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 113, column: 7, scope: !3079, inlinedAt: !3095)
!3124 = !DILocation(line: 79, column: 31, scope: !3110, inlinedAt: !3123)
!3125 = !DILocation(line: 79, column: 35, scope: !3110, inlinedAt: !3123)
!3126 = !DILocation(line: 79, column: 49, scope: !3110, inlinedAt: !3123)
!3127 = !DILocation(line: 116, column: 30, scope: !3079, inlinedAt: !3095)
!3128 = !DILocation(line: 0, scope: !3110, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 116, column: 8, scope: !3079, inlinedAt: !3095)
!3130 = !DILocation(line: 79, column: 31, scope: !3110, inlinedAt: !3129)
!3131 = !DILocation(line: 79, column: 35, scope: !3110, inlinedAt: !3129)
!3132 = !DILocation(line: 79, column: 49, scope: !3110, inlinedAt: !3129)
!3133 = !DILocation(line: 116, column: 6, scope: !3079, inlinedAt: !3095)
!3134 = !DILocation(line: 118, column: 1, scope: !3079, inlinedAt: !3095)
!3135 = !DILocation(line: 242, column: 42, scope: !3077)
!3136 = !DILocation(line: 250, column: 19, scope: !3073)
!3137 = !DILocation(line: 249, column: 23, scope: !3073)
!3138 = !DILocation(line: 249, column: 11, scope: !3073)
!3139 = !DILocation(line: 249, column: 21, scope: !3073)
!3140 = !DILocation(line: 251, column: 18, scope: !3073)
!3141 = !DILocation(line: 237, column: 45, scope: !3074)
!3142 = !DILocation(line: 237, column: 28, scope: !3074)
!3143 = distinct !{!3143, !3065, !3144, !527}
!3144 = !DILocation(line: 252, column: 9, scope: !3040)
!3145 = !DILocation(line: 257, column: 11, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3069, file: !323, line: 256, column: 9)
!3147 = !DILocation(line: 260, column: 16, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3069, file: !323, line: 260, column: 16)
!3149 = !DILocation(line: 260, column: 22, scope: !3148)
!3150 = !DILocation(line: 235, column: 50, scope: !3042)
!3151 = !DILocation(line: 267, column: 1, scope: !3016)
!3152 = !DISubprogram(name: "getrandom", scope: !3153, file: !3153, line: 34, type: !3154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3153 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/random.h", directory: "", checksumkind: CSK_MD5, checksum: "993db293d7c3a15007a82e16d5213f99")
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!3156, !24, !27, !7}
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !162, line: 77, baseType: !3157)
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !89, line: 194, baseType: !90)
!3158 = !DISubprogram(name: "clock_gettime", scope: !3159, file: !3159, line: 279, type: !3160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3159 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!25, !3162, !3165}
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !3163, line: 7, baseType: !3164)
!3163 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !89, line: 169, baseType: !25)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3166 = !DISubprogram(name: "clock", scope: !3159, file: !3159, line: 72, type: !3167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!3169}
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !3170, line: 7, baseType: !3171)
!3170 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !89, line: 156, baseType: !90)
!3172 = distinct !DISubprogram(name: "try_file", scope: !323, file: !323, line: 126, type: !342, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3173)
!3173 = !{!3174, !3175, !3176}
!3174 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3172, file: !323, line: 126, type: !22)
!3175 = !DILocalVariable(name: "flags", arg: 2, scope: !3172, file: !323, line: 126, type: !24)
!3176 = !DILocalVariable(name: "openflags", scope: !3172, file: !323, line: 128, type: !133)
!3177 = !DILocation(line: 0, scope: !3172)
!3178 = !DILocation(line: 128, column: 20, scope: !3172)
!3179 = !DILocation(line: 130, column: 19, scope: !3172)
!3180 = !DILocation(line: 130, column: 30, scope: !3172)
!3181 = !DILocation(line: 131, column: 37, scope: !3172)
!3182 = !DILocation(line: 129, column: 10, scope: !3172)
!3183 = !DILocation(line: 129, column: 3, scope: !3172)
!3184 = distinct !DISubprogram(name: "try_dir", scope: !323, file: !323, line: 135, type: !342, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3185)
!3185 = !{!3186, !3187}
!3186 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3184, file: !323, line: 135, type: !22)
!3187 = !DILocalVariable(name: "flags", arg: 2, scope: !3184, file: !323, line: 135, type: !24)
!3188 = !DILocation(line: 0, scope: !3184)
!3189 = !DILocation(line: 137, column: 10, scope: !3184)
!3190 = !DILocation(line: 137, column: 3, scope: !3184)
!3191 = distinct !DISubprogram(name: "try_nocreate", scope: !323, file: !323, line: 141, type: !342, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3192)
!3192 = !{!3193, !3194, !3195}
!3193 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3191, file: !323, line: 141, type: !22)
!3194 = !DILocalVariable(name: "flags", arg: 2, scope: !3191, file: !323, line: 141, type: !24)
!3195 = !DILocalVariable(name: "st", scope: !3191, file: !323, line: 143, type: !3196)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3197, line: 44, size: 1024, elements: !3198)
!3197 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!3198 = !{!3199, !3201, !3203, !3205, !3207, !3209, !3211, !3212, !3213, !3214, !3216, !3217, !3219, !3220, !3221, !3222}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3196, file: !3197, line: 46, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !89, line: 145, baseType: !29)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3196, file: !3197, line: 47, baseType: !3202, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !89, line: 148, baseType: !29)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3196, file: !3197, line: 48, baseType: !3204, size: 32, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !89, line: 150, baseType: !7)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3196, file: !3197, line: 49, baseType: !3206, size: 32, offset: 160)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !89, line: 151, baseType: !7)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3196, file: !3197, line: 50, baseType: !3208, size: 32, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !89, line: 146, baseType: !7)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3196, file: !3197, line: 51, baseType: !3210, size: 32, offset: 224)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !89, line: 147, baseType: !7)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3196, file: !3197, line: 52, baseType: !3200, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3196, file: !3197, line: 53, baseType: !3200, size: 64, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3196, file: !3197, line: 54, baseType: !88, size: 64, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3196, file: !3197, line: 55, baseType: !3215, size: 32, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !89, line: 175, baseType: !25)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3196, file: !3197, line: 56, baseType: !25, size: 32, offset: 480)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3196, file: !3197, line: 57, baseType: !3218, size: 64, offset: 512)
!3218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !89, line: 180, baseType: !90)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3196, file: !3197, line: 65, baseType: !3087, size: 128, offset: 576)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3196, file: !3197, line: 66, baseType: !3087, size: 128, offset: 704)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3196, file: !3197, line: 67, baseType: !3087, size: 128, offset: 832)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3196, file: !3197, line: 79, baseType: !3223, size: 64, offset: 960)
!3223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !231)
!3224 = !DILocation(line: 0, scope: !3191)
!3225 = !DILocation(line: 143, column: 3, scope: !3191)
!3226 = !DILocation(line: 143, column: 17, scope: !3191)
!3227 = !DILocation(line: 145, column: 7, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3191, file: !323, line: 145, column: 7)
!3229 = !DILocation(line: 145, column: 36, scope: !3228)
!3230 = !DILocation(line: 0, scope: !3228)
!3231 = !DILocation(line: 145, column: 41, scope: !3228)
!3232 = !DILocation(line: 145, column: 44, scope: !3228)
!3233 = !DILocation(line: 145, column: 50, scope: !3228)
!3234 = !DILocation(line: 145, column: 7, scope: !3191)
!3235 = !DILocation(line: 146, column: 5, scope: !3228)
!3236 = !DILocation(line: 147, column: 10, scope: !3191)
!3237 = !DILocation(line: 147, column: 16, scope: !3191)
!3238 = !DILocation(line: 148, column: 1, scope: !3191)
!3239 = !DILocation(line: 147, column: 3, scope: !3191)
!3240 = !DISubprogram(name: "lstat", scope: !3241, file: !3241, line: 313, type: !3242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3241 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!25, !557, !3244}
!3244 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3245)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3246 = !DISubprogram(name: "mkdir", scope: !3241, file: !3241, line: 389, type: !3247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!25, !30, !3204}
!3249 = !DISubprogram(name: "open", scope: !1286, file: !1286, line: 181, type: !3250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!25, !30, !25, null}
!3252 = distinct !DISubprogram(name: "gen_tempname", scope: !323, file: !323, line: 270, type: !3253, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!25, !22, !25, !25, !25}
!3255 = !{!3256, !3257, !3258, !3259}
!3256 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3252, file: !323, line: 270, type: !22)
!3257 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3252, file: !323, line: 270, type: !25)
!3258 = !DILocalVariable(name: "flags", arg: 3, scope: !3252, file: !323, line: 270, type: !25)
!3259 = !DILocalVariable(name: "kind", arg: 4, scope: !3252, file: !323, line: 270, type: !25)
!3260 = !DILocation(line: 0, scope: !3252)
!3261 = !DILocation(line: 0, scope: !322, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 272, column: 10, scope: !3252)
!3263 = !DILocation(line: 181, column: 53, scope: !322, inlinedAt: !3262)
!3264 = !DILocation(line: 181, column: 10, scope: !322, inlinedAt: !3262)
!3265 = !DILocation(line: 181, column: 3, scope: !322, inlinedAt: !3262)
!3266 = !DILocation(line: 272, column: 3, scope: !3252)
!3267 = distinct !DISubprogram(name: "try_tempname", scope: !323, file: !323, line: 277, type: !3268, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !326, retainedNodes: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!25, !22, !25, !24, !341}
!3270 = !{!3271, !3272, !3273, !3274}
!3271 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3267, file: !323, line: 277, type: !22)
!3272 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3267, file: !323, line: 277, type: !25)
!3273 = !DILocalVariable(name: "args", arg: 3, scope: !3267, file: !323, line: 277, type: !24)
!3274 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3267, file: !323, line: 278, type: !341)
!3275 = !DILocation(line: 0, scope: !3267)
!3276 = !DILocation(line: 280, column: 10, scope: !3267)
!3277 = !DILocation(line: 280, column: 3, scope: !3267)
!3278 = distinct !DISubprogram(name: "version_etc_arn", scope: !394, file: !394, line: 61, type: !3279, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3316)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !3281, !30, !30, !30, !3315, !27}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !64, line: 7, baseType: !3283)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 49, size: 1728, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3283, file: !66, line: 51, baseType: !25, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3283, file: !66, line: 54, baseType: !22, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3283, file: !66, line: 55, baseType: !22, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3283, file: !66, line: 56, baseType: !22, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3283, file: !66, line: 57, baseType: !22, size: 64, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3283, file: !66, line: 58, baseType: !22, size: 64, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3283, file: !66, line: 59, baseType: !22, size: 64, offset: 384)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3283, file: !66, line: 60, baseType: !22, size: 64, offset: 448)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3283, file: !66, line: 61, baseType: !22, size: 64, offset: 512)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3283, file: !66, line: 64, baseType: !22, size: 64, offset: 576)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3283, file: !66, line: 65, baseType: !22, size: 64, offset: 640)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3283, file: !66, line: 66, baseType: !22, size: 64, offset: 704)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3283, file: !66, line: 68, baseType: !81, size: 64, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3283, file: !66, line: 70, baseType: !3299, size: 64, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3283, file: !66, line: 72, baseType: !25, size: 32, offset: 896)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3283, file: !66, line: 73, baseType: !25, size: 32, offset: 928)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3283, file: !66, line: 74, baseType: !88, size: 64, offset: 960)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3283, file: !66, line: 77, baseType: !26, size: 16, offset: 1024)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3283, file: !66, line: 78, baseType: !93, size: 8, offset: 1040)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3283, file: !66, line: 79, baseType: !95, size: 8, offset: 1048)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3283, file: !66, line: 81, baseType: !99, size: 64, offset: 1088)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3283, file: !66, line: 89, baseType: !102, size: 64, offset: 1152)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3283, file: !66, line: 91, baseType: !104, size: 64, offset: 1216)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3283, file: !66, line: 92, baseType: !107, size: 64, offset: 1280)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3283, file: !66, line: 93, baseType: !3299, size: 64, offset: 1344)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3283, file: !66, line: 94, baseType: !24, size: 64, offset: 1408)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3283, file: !66, line: 95, baseType: !27, size: 64, offset: 1472)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3283, file: !66, line: 96, baseType: !25, size: 32, offset: 1536)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3283, file: !66, line: 98, baseType: !114, size: 160, offset: 1568)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322}
!3317 = !DILocalVariable(name: "stream", arg: 1, scope: !3278, file: !394, line: 61, type: !3281)
!3318 = !DILocalVariable(name: "command_name", arg: 2, scope: !3278, file: !394, line: 62, type: !30)
!3319 = !DILocalVariable(name: "package", arg: 3, scope: !3278, file: !394, line: 62, type: !30)
!3320 = !DILocalVariable(name: "version", arg: 4, scope: !3278, file: !394, line: 63, type: !30)
!3321 = !DILocalVariable(name: "authors", arg: 5, scope: !3278, file: !394, line: 64, type: !3315)
!3322 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3278, file: !394, line: 64, type: !27)
!3323 = !DILocation(line: 0, scope: !3278)
!3324 = !DILocation(line: 66, column: 7, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3278, file: !394, line: 66, column: 7)
!3326 = !DILocation(line: 66, column: 7, scope: !3278)
!3327 = !DILocation(line: 67, column: 5, scope: !3325)
!3328 = !DILocation(line: 69, column: 5, scope: !3325)
!3329 = !DILocation(line: 83, column: 3, scope: !3278)
!3330 = !DILocation(line: 85, column: 3, scope: !3278)
!3331 = !DILocation(line: 88, column: 3, scope: !3278)
!3332 = !DILocation(line: 95, column: 3, scope: !3278)
!3333 = !DILocation(line: 97, column: 3, scope: !3278)
!3334 = !DILocation(line: 105, column: 7, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3278, file: !394, line: 98, column: 5)
!3336 = !DILocation(line: 106, column: 7, scope: !3335)
!3337 = !DILocation(line: 109, column: 7, scope: !3335)
!3338 = !DILocation(line: 110, column: 7, scope: !3335)
!3339 = !DILocation(line: 113, column: 7, scope: !3335)
!3340 = !DILocation(line: 115, column: 7, scope: !3335)
!3341 = !DILocation(line: 120, column: 7, scope: !3335)
!3342 = !DILocation(line: 122, column: 7, scope: !3335)
!3343 = !DILocation(line: 127, column: 7, scope: !3335)
!3344 = !DILocation(line: 129, column: 7, scope: !3335)
!3345 = !DILocation(line: 134, column: 7, scope: !3335)
!3346 = !DILocation(line: 137, column: 7, scope: !3335)
!3347 = !DILocation(line: 142, column: 7, scope: !3335)
!3348 = !DILocation(line: 145, column: 7, scope: !3335)
!3349 = !DILocation(line: 150, column: 7, scope: !3335)
!3350 = !DILocation(line: 154, column: 7, scope: !3335)
!3351 = !DILocation(line: 159, column: 7, scope: !3335)
!3352 = !DILocation(line: 163, column: 7, scope: !3335)
!3353 = !DILocation(line: 170, column: 7, scope: !3335)
!3354 = !DILocation(line: 174, column: 7, scope: !3335)
!3355 = !DILocation(line: 176, column: 1, scope: !3278)
!3356 = distinct !DISubprogram(name: "version_etc_ar", scope: !394, file: !394, line: 183, type: !3357, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3359)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{null, !3281, !30, !30, !30, !3315}
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365}
!3360 = !DILocalVariable(name: "stream", arg: 1, scope: !3356, file: !394, line: 183, type: !3281)
!3361 = !DILocalVariable(name: "command_name", arg: 2, scope: !3356, file: !394, line: 184, type: !30)
!3362 = !DILocalVariable(name: "package", arg: 3, scope: !3356, file: !394, line: 184, type: !30)
!3363 = !DILocalVariable(name: "version", arg: 4, scope: !3356, file: !394, line: 185, type: !30)
!3364 = !DILocalVariable(name: "authors", arg: 5, scope: !3356, file: !394, line: 185, type: !3315)
!3365 = !DILocalVariable(name: "n_authors", scope: !3356, file: !394, line: 187, type: !27)
!3366 = !DILocation(line: 0, scope: !3356)
!3367 = !DILocation(line: 189, column: 8, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3356, file: !394, line: 189, column: 3)
!3369 = !DILocation(line: 0, scope: !3368)
!3370 = !DILocation(line: 189, column: 23, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3368, file: !394, line: 189, column: 3)
!3372 = !DILocation(line: 189, column: 3, scope: !3368)
!3373 = !DILocation(line: 189, column: 52, scope: !3371)
!3374 = distinct !{!3374, !3372, !3375, !527}
!3375 = !DILocation(line: 190, column: 5, scope: !3368)
!3376 = !DILocation(line: 191, column: 3, scope: !3356)
!3377 = !DILocation(line: 192, column: 1, scope: !3356)
!3378 = distinct !DISubprogram(name: "version_etc_va", scope: !394, file: !394, line: 199, type: !3379, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3392)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{null, !3281, !30, !30, !30, !3381}
!3381 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !162, line: 52, baseType: !3382)
!3382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !164, line: 32, baseType: !3383)
!3383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3384, baseType: !3385)
!3384 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !168, size: 256, elements: !3386)
!3386 = !{!3387, !3388, !3389, !3390, !3391}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3385, file: !3384, line: 192, baseType: !24, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3385, file: !3384, line: 192, baseType: !24, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3385, file: !3384, line: 192, baseType: !24, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3385, file: !3384, line: 192, baseType: !25, size: 32, offset: 192)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3385, file: !3384, line: 192, baseType: !25, size: 32, offset: 224)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399}
!3393 = !DILocalVariable(name: "stream", arg: 1, scope: !3378, file: !394, line: 199, type: !3281)
!3394 = !DILocalVariable(name: "command_name", arg: 2, scope: !3378, file: !394, line: 200, type: !30)
!3395 = !DILocalVariable(name: "package", arg: 3, scope: !3378, file: !394, line: 200, type: !30)
!3396 = !DILocalVariable(name: "version", arg: 4, scope: !3378, file: !394, line: 201, type: !30)
!3397 = !DILocalVariable(name: "authors", arg: 5, scope: !3378, file: !394, line: 201, type: !3381)
!3398 = !DILocalVariable(name: "n_authors", scope: !3378, file: !394, line: 203, type: !27)
!3399 = !DILocalVariable(name: "authtab", scope: !3378, file: !394, line: 204, type: !3400)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !263)
!3401 = !DILocation(line: 0, scope: !3378)
!3402 = !DILocation(line: 201, column: 46, scope: !3378)
!3403 = !DILocation(line: 204, column: 3, scope: !3378)
!3404 = !DILocation(line: 204, column: 15, scope: !3378)
!3405 = !DILocation(line: 208, column: 35, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !394, line: 206, column: 3)
!3407 = distinct !DILexicalBlock(scope: !3378, file: !394, line: 206, column: 3)
!3408 = !DILocation(line: 208, column: 14, scope: !3406)
!3409 = !DILocation(line: 208, column: 33, scope: !3406)
!3410 = !DILocation(line: 208, column: 67, scope: !3406)
!3411 = !DILocation(line: 206, column: 3, scope: !3407)
!3412 = !DILocation(line: 0, scope: !3407)
!3413 = !DILocation(line: 211, column: 3, scope: !3378)
!3414 = !DILocation(line: 213, column: 1, scope: !3378)
!3415 = distinct !DISubprogram(name: "version_etc", scope: !394, file: !394, line: 230, type: !3416, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{null, !3281, !30, !30, !30, null}
!3418 = !{!3419, !3420, !3421, !3422, !3423}
!3419 = !DILocalVariable(name: "stream", arg: 1, scope: !3415, file: !394, line: 230, type: !3281)
!3420 = !DILocalVariable(name: "command_name", arg: 2, scope: !3415, file: !394, line: 231, type: !30)
!3421 = !DILocalVariable(name: "package", arg: 3, scope: !3415, file: !394, line: 231, type: !30)
!3422 = !DILocalVariable(name: "version", arg: 4, scope: !3415, file: !394, line: 232, type: !30)
!3423 = !DILocalVariable(name: "authors", scope: !3415, file: !394, line: 234, type: !3381)
!3424 = !DILocation(line: 0, scope: !3415)
!3425 = !DILocation(line: 234, column: 3, scope: !3415)
!3426 = !DILocation(line: 234, column: 11, scope: !3415)
!3427 = !DILocation(line: 235, column: 3, scope: !3415)
!3428 = !DILocation(line: 236, column: 3, scope: !3415)
!3429 = !DILocation(line: 237, column: 3, scope: !3415)
!3430 = !DILocation(line: 238, column: 1, scope: !3415)
!3431 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !394, file: !394, line: 241, type: !189, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !553)
!3432 = !DILocation(line: 243, column: 3, scope: !3431)
!3433 = !DILocation(line: 248, column: 3, scope: !3431)
!3434 = !DILocation(line: 254, column: 3, scope: !3431)
!3435 = !DILocation(line: 259, column: 3, scope: !3431)
!3436 = !DILocation(line: 261, column: 1, scope: !3431)
!3437 = distinct !DISubprogram(name: "xnrealloc", scope: !3438, file: !3438, line: 147, type: !3439, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3441)
!3438 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!24, !24, !27, !27}
!3441 = !{!3442, !3443, !3444}
!3442 = !DILocalVariable(name: "p", arg: 1, scope: !3437, file: !3438, line: 147, type: !24)
!3443 = !DILocalVariable(name: "n", arg: 2, scope: !3437, file: !3438, line: 147, type: !27)
!3444 = !DILocalVariable(name: "s", arg: 3, scope: !3437, file: !3438, line: 147, type: !27)
!3445 = !DILocation(line: 0, scope: !3437)
!3446 = !DILocalVariable(name: "p", arg: 1, scope: !3447, file: !400, line: 83, type: !24)
!3447 = distinct !DISubprogram(name: "xreallocarray", scope: !400, file: !400, line: 83, type: !3439, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3448)
!3448 = !{!3446, !3449, !3450}
!3449 = !DILocalVariable(name: "n", arg: 2, scope: !3447, file: !400, line: 83, type: !27)
!3450 = !DILocalVariable(name: "s", arg: 3, scope: !3447, file: !400, line: 83, type: !27)
!3451 = !DILocation(line: 0, scope: !3447, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 149, column: 10, scope: !3437)
!3453 = !DILocation(line: 85, column: 25, scope: !3447, inlinedAt: !3452)
!3454 = !DILocalVariable(name: "p", arg: 1, scope: !3455, file: !400, line: 37, type: !24)
!3455 = distinct !DISubprogram(name: "check_nonnull", scope: !400, file: !400, line: 37, type: !3456, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!24, !24}
!3458 = !{!3454}
!3459 = !DILocation(line: 0, scope: !3455, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 85, column: 10, scope: !3447, inlinedAt: !3452)
!3461 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3460)
!3462 = distinct !DILexicalBlock(scope: !3455, file: !400, line: 39, column: 7)
!3463 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3460)
!3464 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3460)
!3465 = !DILocation(line: 149, column: 3, scope: !3437)
!3466 = !DILocation(line: 0, scope: !3447)
!3467 = !DILocation(line: 85, column: 25, scope: !3447)
!3468 = !DILocation(line: 0, scope: !3455, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 85, column: 10, scope: !3447)
!3470 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3469)
!3471 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3469)
!3472 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3469)
!3473 = !DILocation(line: 85, column: 3, scope: !3447)
!3474 = distinct !DISubprogram(name: "xmalloc", scope: !400, file: !400, line: 47, type: !3475, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!24, !27}
!3477 = !{!3478}
!3478 = !DILocalVariable(name: "s", arg: 1, scope: !3474, file: !400, line: 47, type: !27)
!3479 = !DILocation(line: 0, scope: !3474)
!3480 = !DILocation(line: 49, column: 25, scope: !3474)
!3481 = !DILocation(line: 0, scope: !3455, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 49, column: 10, scope: !3474)
!3483 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3482)
!3484 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3482)
!3485 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3482)
!3486 = !DILocation(line: 49, column: 3, scope: !3474)
!3487 = distinct !DISubprogram(name: "ximalloc", scope: !400, file: !400, line: 53, type: !3488, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!24, !419}
!3490 = !{!3491}
!3491 = !DILocalVariable(name: "s", arg: 1, scope: !3487, file: !400, line: 53, type: !419)
!3492 = !DILocation(line: 0, scope: !3487)
!3493 = !DILocalVariable(name: "s", arg: 1, scope: !3494, file: !3495, line: 55, type: !419)
!3494 = distinct !DISubprogram(name: "imalloc", scope: !3495, file: !3495, line: 55, type: !3488, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3496)
!3495 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3496 = !{!3493}
!3497 = !DILocation(line: 0, scope: !3494, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 55, column: 25, scope: !3487)
!3499 = !DILocation(line: 57, column: 26, scope: !3494, inlinedAt: !3498)
!3500 = !DILocation(line: 0, scope: !3455, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 55, column: 10, scope: !3487)
!3502 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3501)
!3503 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3501)
!3504 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3501)
!3505 = !DILocation(line: 55, column: 3, scope: !3487)
!3506 = distinct !DISubprogram(name: "xcharalloc", scope: !400, file: !400, line: 59, type: !3507, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!22, !27}
!3509 = !{!3510}
!3510 = !DILocalVariable(name: "n", arg: 1, scope: !3506, file: !400, line: 59, type: !27)
!3511 = !DILocation(line: 0, scope: !3506)
!3512 = !DILocation(line: 0, scope: !3474, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 61, column: 10, scope: !3506)
!3514 = !DILocation(line: 49, column: 25, scope: !3474, inlinedAt: !3513)
!3515 = !DILocation(line: 0, scope: !3455, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 49, column: 10, scope: !3474, inlinedAt: !3513)
!3517 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3516)
!3518 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3516)
!3519 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3516)
!3520 = !DILocation(line: 61, column: 3, scope: !3506)
!3521 = distinct !DISubprogram(name: "xrealloc", scope: !400, file: !400, line: 68, type: !3522, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3524)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!24, !24, !27}
!3524 = !{!3525, !3526}
!3525 = !DILocalVariable(name: "p", arg: 1, scope: !3521, file: !400, line: 68, type: !24)
!3526 = !DILocalVariable(name: "s", arg: 2, scope: !3521, file: !400, line: 68, type: !27)
!3527 = !DILocation(line: 0, scope: !3521)
!3528 = !DILocalVariable(name: "ptr", arg: 1, scope: !3529, file: !3530, line: 2057, type: !24)
!3529 = distinct !DISubprogram(name: "rpl_realloc", scope: !3530, file: !3530, line: 2057, type: !3522, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3531)
!3530 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3531 = !{!3528, !3532}
!3532 = !DILocalVariable(name: "size", arg: 2, scope: !3529, file: !3530, line: 2057, type: !27)
!3533 = !DILocation(line: 0, scope: !3529, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 70, column: 25, scope: !3521)
!3535 = !DILocation(line: 2059, column: 24, scope: !3529, inlinedAt: !3534)
!3536 = !DILocation(line: 2059, column: 10, scope: !3529, inlinedAt: !3534)
!3537 = !DILocation(line: 0, scope: !3455, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 70, column: 10, scope: !3521)
!3539 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3538)
!3540 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3538)
!3541 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3538)
!3542 = !DILocation(line: 70, column: 3, scope: !3521)
!3543 = distinct !DISubprogram(name: "xirealloc", scope: !400, file: !400, line: 74, type: !3544, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!24, !24, !419}
!3546 = !{!3547, !3548}
!3547 = !DILocalVariable(name: "p", arg: 1, scope: !3543, file: !400, line: 74, type: !24)
!3548 = !DILocalVariable(name: "s", arg: 2, scope: !3543, file: !400, line: 74, type: !419)
!3549 = !DILocation(line: 0, scope: !3543)
!3550 = !DILocalVariable(name: "p", arg: 1, scope: !3551, file: !3495, line: 66, type: !24)
!3551 = distinct !DISubprogram(name: "irealloc", scope: !3495, file: !3495, line: 66, type: !3544, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3552)
!3552 = !{!3550, !3553}
!3553 = !DILocalVariable(name: "s", arg: 2, scope: !3551, file: !3495, line: 66, type: !419)
!3554 = !DILocation(line: 0, scope: !3551, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 76, column: 25, scope: !3543)
!3556 = !DILocation(line: 0, scope: !3529, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 68, column: 26, scope: !3551, inlinedAt: !3555)
!3558 = !DILocation(line: 2059, column: 24, scope: !3529, inlinedAt: !3557)
!3559 = !DILocation(line: 2059, column: 10, scope: !3529, inlinedAt: !3557)
!3560 = !DILocation(line: 0, scope: !3455, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 76, column: 10, scope: !3543)
!3562 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3561)
!3563 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3561)
!3564 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3561)
!3565 = !DILocation(line: 76, column: 3, scope: !3543)
!3566 = distinct !DISubprogram(name: "xireallocarray", scope: !400, file: !400, line: 89, type: !3567, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!24, !24, !419, !419}
!3569 = !{!3570, !3571, !3572}
!3570 = !DILocalVariable(name: "p", arg: 1, scope: !3566, file: !400, line: 89, type: !24)
!3571 = !DILocalVariable(name: "n", arg: 2, scope: !3566, file: !400, line: 89, type: !419)
!3572 = !DILocalVariable(name: "s", arg: 3, scope: !3566, file: !400, line: 89, type: !419)
!3573 = !DILocation(line: 0, scope: !3566)
!3574 = !DILocalVariable(name: "p", arg: 1, scope: !3575, file: !3495, line: 98, type: !24)
!3575 = distinct !DISubprogram(name: "ireallocarray", scope: !3495, file: !3495, line: 98, type: !3567, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3576)
!3576 = !{!3574, !3577, !3578}
!3577 = !DILocalVariable(name: "n", arg: 2, scope: !3575, file: !3495, line: 98, type: !419)
!3578 = !DILocalVariable(name: "s", arg: 3, scope: !3575, file: !3495, line: 98, type: !419)
!3579 = !DILocation(line: 0, scope: !3575, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 91, column: 25, scope: !3566)
!3581 = !DILocation(line: 101, column: 13, scope: !3575, inlinedAt: !3580)
!3582 = !DILocation(line: 0, scope: !3455, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 91, column: 10, scope: !3566)
!3584 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3583)
!3585 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3583)
!3586 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3583)
!3587 = !DILocation(line: 91, column: 3, scope: !3566)
!3588 = distinct !DISubprogram(name: "xnmalloc", scope: !400, file: !400, line: 98, type: !3589, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!24, !27, !27}
!3591 = !{!3592, !3593}
!3592 = !DILocalVariable(name: "n", arg: 1, scope: !3588, file: !400, line: 98, type: !27)
!3593 = !DILocalVariable(name: "s", arg: 2, scope: !3588, file: !400, line: 98, type: !27)
!3594 = !DILocation(line: 0, scope: !3588)
!3595 = !DILocation(line: 0, scope: !3447, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 100, column: 10, scope: !3588)
!3597 = !DILocation(line: 85, column: 25, scope: !3447, inlinedAt: !3596)
!3598 = !DILocation(line: 0, scope: !3455, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 85, column: 10, scope: !3447, inlinedAt: !3596)
!3600 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3599)
!3601 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3599)
!3602 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3599)
!3603 = !DILocation(line: 100, column: 3, scope: !3588)
!3604 = distinct !DISubprogram(name: "xinmalloc", scope: !400, file: !400, line: 104, type: !3605, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!24, !419, !419}
!3607 = !{!3608, !3609}
!3608 = !DILocalVariable(name: "n", arg: 1, scope: !3604, file: !400, line: 104, type: !419)
!3609 = !DILocalVariable(name: "s", arg: 2, scope: !3604, file: !400, line: 104, type: !419)
!3610 = !DILocation(line: 0, scope: !3604)
!3611 = !DILocation(line: 0, scope: !3566, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 106, column: 10, scope: !3604)
!3613 = !DILocation(line: 0, scope: !3575, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 91, column: 25, scope: !3566, inlinedAt: !3612)
!3615 = !DILocation(line: 101, column: 13, scope: !3575, inlinedAt: !3614)
!3616 = !DILocation(line: 0, scope: !3455, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 91, column: 10, scope: !3566, inlinedAt: !3612)
!3618 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3617)
!3619 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3617)
!3620 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3617)
!3621 = !DILocation(line: 106, column: 3, scope: !3604)
!3622 = distinct !DISubprogram(name: "x2realloc", scope: !400, file: !400, line: 116, type: !3623, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3625)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!24, !24, !406}
!3625 = !{!3626, !3627}
!3626 = !DILocalVariable(name: "p", arg: 1, scope: !3622, file: !400, line: 116, type: !24)
!3627 = !DILocalVariable(name: "ps", arg: 2, scope: !3622, file: !400, line: 116, type: !406)
!3628 = !DILocation(line: 0, scope: !3622)
!3629 = !DILocation(line: 0, scope: !403, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 118, column: 10, scope: !3622)
!3631 = !DILocation(line: 178, column: 14, scope: !403, inlinedAt: !3630)
!3632 = !DILocation(line: 180, column: 9, scope: !3633, inlinedAt: !3630)
!3633 = distinct !DILexicalBlock(scope: !403, file: !400, line: 180, column: 7)
!3634 = !DILocation(line: 180, column: 7, scope: !403, inlinedAt: !3630)
!3635 = !DILocation(line: 182, column: 13, scope: !3636, inlinedAt: !3630)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !400, line: 182, column: 11)
!3637 = distinct !DILexicalBlock(scope: !3633, file: !400, line: 181, column: 5)
!3638 = !DILocation(line: 182, column: 11, scope: !3637, inlinedAt: !3630)
!3639 = !DILocation(line: 197, column: 11, scope: !3640, inlinedAt: !3630)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !400, line: 197, column: 11)
!3641 = distinct !DILexicalBlock(scope: !3633, file: !400, line: 195, column: 5)
!3642 = !DILocation(line: 197, column: 11, scope: !3641, inlinedAt: !3630)
!3643 = !DILocation(line: 198, column: 9, scope: !3640, inlinedAt: !3630)
!3644 = !DILocation(line: 0, scope: !3447, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 201, column: 7, scope: !403, inlinedAt: !3630)
!3646 = !DILocation(line: 85, column: 25, scope: !3447, inlinedAt: !3645)
!3647 = !DILocation(line: 0, scope: !3455, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 85, column: 10, scope: !3447, inlinedAt: !3645)
!3649 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3648)
!3650 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3648)
!3651 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3648)
!3652 = !DILocation(line: 202, column: 7, scope: !403, inlinedAt: !3630)
!3653 = !DILocation(line: 118, column: 3, scope: !3622)
!3654 = !DILocation(line: 0, scope: !403)
!3655 = !DILocation(line: 178, column: 14, scope: !403)
!3656 = !DILocation(line: 180, column: 9, scope: !3633)
!3657 = !DILocation(line: 180, column: 7, scope: !403)
!3658 = !DILocation(line: 182, column: 13, scope: !3636)
!3659 = !DILocation(line: 182, column: 11, scope: !3637)
!3660 = !DILocation(line: 190, column: 30, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3636, file: !400, line: 183, column: 9)
!3662 = !DILocation(line: 191, column: 16, scope: !3661)
!3663 = !DILocation(line: 191, column: 13, scope: !3661)
!3664 = !DILocation(line: 192, column: 9, scope: !3661)
!3665 = !DILocation(line: 197, column: 11, scope: !3640)
!3666 = !DILocation(line: 197, column: 11, scope: !3641)
!3667 = !DILocation(line: 198, column: 9, scope: !3640)
!3668 = !DILocation(line: 0, scope: !3447, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 201, column: 7, scope: !403)
!3670 = !DILocation(line: 85, column: 25, scope: !3447, inlinedAt: !3669)
!3671 = !DILocation(line: 0, scope: !3455, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 85, column: 10, scope: !3447, inlinedAt: !3669)
!3673 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3672)
!3674 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3672)
!3675 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3672)
!3676 = !DILocation(line: 202, column: 7, scope: !403)
!3677 = !DILocation(line: 203, column: 3, scope: !403)
!3678 = !DILocation(line: 0, scope: !415)
!3679 = !DILocation(line: 230, column: 14, scope: !415)
!3680 = !DILocation(line: 238, column: 7, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !415, file: !400, line: 238, column: 7)
!3682 = !DILocation(line: 238, column: 7, scope: !415)
!3683 = !DILocation(line: 240, column: 9, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !415, file: !400, line: 240, column: 7)
!3685 = !DILocation(line: 240, column: 18, scope: !3684)
!3686 = !DILocation(line: 253, column: 8, scope: !415)
!3687 = !DILocation(line: 258, column: 27, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !400, line: 257, column: 5)
!3689 = distinct !DILexicalBlock(scope: !415, file: !400, line: 256, column: 7)
!3690 = !DILocation(line: 259, column: 32, scope: !3688)
!3691 = !DILocation(line: 260, column: 5, scope: !3688)
!3692 = !DILocation(line: 262, column: 9, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !415, file: !400, line: 262, column: 7)
!3694 = !DILocation(line: 262, column: 7, scope: !415)
!3695 = !DILocation(line: 263, column: 9, scope: !3693)
!3696 = !DILocation(line: 263, column: 5, scope: !3693)
!3697 = !DILocation(line: 264, column: 9, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !415, file: !400, line: 264, column: 7)
!3699 = !DILocation(line: 264, column: 14, scope: !3698)
!3700 = !DILocation(line: 265, column: 7, scope: !3698)
!3701 = !DILocation(line: 265, column: 11, scope: !3698)
!3702 = !DILocation(line: 266, column: 11, scope: !3698)
!3703 = !DILocation(line: 266, column: 26, scope: !3698)
!3704 = !DILocation(line: 267, column: 14, scope: !3698)
!3705 = !DILocation(line: 264, column: 7, scope: !415)
!3706 = !DILocation(line: 268, column: 5, scope: !3698)
!3707 = !DILocation(line: 0, scope: !3521, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 269, column: 8, scope: !415)
!3709 = !DILocation(line: 0, scope: !3529, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 70, column: 25, scope: !3521, inlinedAt: !3708)
!3711 = !DILocation(line: 2059, column: 24, scope: !3529, inlinedAt: !3710)
!3712 = !DILocation(line: 2059, column: 10, scope: !3529, inlinedAt: !3710)
!3713 = !DILocation(line: 0, scope: !3455, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 70, column: 10, scope: !3521, inlinedAt: !3708)
!3715 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3714)
!3716 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3714)
!3717 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3714)
!3718 = !DILocation(line: 270, column: 7, scope: !415)
!3719 = !DILocation(line: 271, column: 3, scope: !415)
!3720 = distinct !DISubprogram(name: "xzalloc", scope: !400, file: !400, line: 279, type: !3475, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3721)
!3721 = !{!3722}
!3722 = !DILocalVariable(name: "s", arg: 1, scope: !3720, file: !400, line: 279, type: !27)
!3723 = !DILocation(line: 0, scope: !3720)
!3724 = !DILocalVariable(name: "n", arg: 1, scope: !3725, file: !400, line: 294, type: !27)
!3725 = distinct !DISubprogram(name: "xcalloc", scope: !400, file: !400, line: 294, type: !3589, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3726)
!3726 = !{!3724, !3727}
!3727 = !DILocalVariable(name: "s", arg: 2, scope: !3725, file: !400, line: 294, type: !27)
!3728 = !DILocation(line: 0, scope: !3725, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 281, column: 10, scope: !3720)
!3730 = !DILocation(line: 296, column: 25, scope: !3725, inlinedAt: !3729)
!3731 = !DILocation(line: 0, scope: !3455, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 296, column: 10, scope: !3725, inlinedAt: !3729)
!3733 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3732)
!3734 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3732)
!3735 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3732)
!3736 = !DILocation(line: 281, column: 3, scope: !3720)
!3737 = !DILocation(line: 0, scope: !3725)
!3738 = !DILocation(line: 296, column: 25, scope: !3725)
!3739 = !DILocation(line: 0, scope: !3455, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 296, column: 10, scope: !3725)
!3741 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3740)
!3742 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3740)
!3743 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3740)
!3744 = !DILocation(line: 296, column: 3, scope: !3725)
!3745 = distinct !DISubprogram(name: "xizalloc", scope: !400, file: !400, line: 285, type: !3488, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3746)
!3746 = !{!3747}
!3747 = !DILocalVariable(name: "s", arg: 1, scope: !3745, file: !400, line: 285, type: !419)
!3748 = !DILocation(line: 0, scope: !3745)
!3749 = !DILocalVariable(name: "n", arg: 1, scope: !3750, file: !400, line: 300, type: !419)
!3750 = distinct !DISubprogram(name: "xicalloc", scope: !400, file: !400, line: 300, type: !3605, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3751)
!3751 = !{!3749, !3752}
!3752 = !DILocalVariable(name: "s", arg: 2, scope: !3750, file: !400, line: 300, type: !419)
!3753 = !DILocation(line: 0, scope: !3750, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 287, column: 10, scope: !3745)
!3755 = !DILocalVariable(name: "n", arg: 1, scope: !3756, file: !3495, line: 77, type: !419)
!3756 = distinct !DISubprogram(name: "icalloc", scope: !3495, file: !3495, line: 77, type: !3605, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3757)
!3757 = !{!3755, !3758}
!3758 = !DILocalVariable(name: "s", arg: 2, scope: !3756, file: !3495, line: 77, type: !419)
!3759 = !DILocation(line: 0, scope: !3756, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 302, column: 25, scope: !3750, inlinedAt: !3754)
!3761 = !DILocation(line: 91, column: 10, scope: !3756, inlinedAt: !3760)
!3762 = !DILocation(line: 0, scope: !3455, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 302, column: 10, scope: !3750, inlinedAt: !3754)
!3764 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3763)
!3765 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3763)
!3766 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3763)
!3767 = !DILocation(line: 287, column: 3, scope: !3745)
!3768 = !DILocation(line: 0, scope: !3750)
!3769 = !DILocation(line: 0, scope: !3756, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 302, column: 25, scope: !3750)
!3771 = !DILocation(line: 91, column: 10, scope: !3756, inlinedAt: !3770)
!3772 = !DILocation(line: 0, scope: !3455, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 302, column: 10, scope: !3750)
!3774 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3773)
!3775 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3773)
!3776 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3773)
!3777 = !DILocation(line: 302, column: 3, scope: !3750)
!3778 = distinct !DISubprogram(name: "xmemdup", scope: !400, file: !400, line: 310, type: !3779, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!24, !679, !27}
!3781 = !{!3782, !3783}
!3782 = !DILocalVariable(name: "p", arg: 1, scope: !3778, file: !400, line: 310, type: !679)
!3783 = !DILocalVariable(name: "s", arg: 2, scope: !3778, file: !400, line: 310, type: !27)
!3784 = !DILocation(line: 0, scope: !3778)
!3785 = !DILocation(line: 0, scope: !3474, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 312, column: 18, scope: !3778)
!3787 = !DILocation(line: 49, column: 25, scope: !3474, inlinedAt: !3786)
!3788 = !DILocation(line: 0, scope: !3455, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 49, column: 10, scope: !3474, inlinedAt: !3786)
!3790 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3789)
!3791 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3789)
!3792 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3789)
!3793 = !DILocalVariable(name: "__dest", arg: 1, scope: !3794, file: !778, line: 26, type: !781)
!3794 = distinct !DISubprogram(name: "memcpy", scope: !778, file: !778, line: 26, type: !779, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3795)
!3795 = !{!3793, !3796, !3797}
!3796 = !DILocalVariable(name: "__src", arg: 2, scope: !3794, file: !778, line: 26, type: !678)
!3797 = !DILocalVariable(name: "__len", arg: 3, scope: !3794, file: !778, line: 26, type: !27)
!3798 = !DILocation(line: 0, scope: !3794, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 312, column: 10, scope: !3778)
!3800 = !DILocation(line: 29, column: 10, scope: !3794, inlinedAt: !3799)
!3801 = !DILocation(line: 312, column: 3, scope: !3778)
!3802 = distinct !DISubprogram(name: "ximemdup", scope: !400, file: !400, line: 316, type: !3803, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!24, !679, !419}
!3805 = !{!3806, !3807}
!3806 = !DILocalVariable(name: "p", arg: 1, scope: !3802, file: !400, line: 316, type: !679)
!3807 = !DILocalVariable(name: "s", arg: 2, scope: !3802, file: !400, line: 316, type: !419)
!3808 = !DILocation(line: 0, scope: !3802)
!3809 = !DILocation(line: 0, scope: !3487, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 318, column: 18, scope: !3802)
!3811 = !DILocation(line: 0, scope: !3494, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 55, column: 25, scope: !3487, inlinedAt: !3810)
!3813 = !DILocation(line: 57, column: 26, scope: !3494, inlinedAt: !3812)
!3814 = !DILocation(line: 0, scope: !3455, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 55, column: 10, scope: !3487, inlinedAt: !3810)
!3816 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3815)
!3817 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3815)
!3818 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3815)
!3819 = !DILocation(line: 0, scope: !3794, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 318, column: 10, scope: !3802)
!3821 = !DILocation(line: 29, column: 10, scope: !3794, inlinedAt: !3820)
!3822 = !DILocation(line: 318, column: 3, scope: !3802)
!3823 = distinct !DISubprogram(name: "ximemdup0", scope: !400, file: !400, line: 325, type: !3824, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3826)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!22, !679, !419}
!3826 = !{!3827, !3828, !3829}
!3827 = !DILocalVariable(name: "p", arg: 1, scope: !3823, file: !400, line: 325, type: !679)
!3828 = !DILocalVariable(name: "s", arg: 2, scope: !3823, file: !400, line: 325, type: !419)
!3829 = !DILocalVariable(name: "result", scope: !3823, file: !400, line: 327, type: !22)
!3830 = !DILocation(line: 0, scope: !3823)
!3831 = !DILocation(line: 327, column: 30, scope: !3823)
!3832 = !DILocation(line: 0, scope: !3487, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 327, column: 18, scope: !3823)
!3834 = !DILocation(line: 0, scope: !3494, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 55, column: 25, scope: !3487, inlinedAt: !3833)
!3836 = !DILocation(line: 57, column: 26, scope: !3494, inlinedAt: !3835)
!3837 = !DILocation(line: 0, scope: !3455, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 55, column: 10, scope: !3487, inlinedAt: !3833)
!3839 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3838)
!3840 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3838)
!3841 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3838)
!3842 = !DILocation(line: 328, column: 3, scope: !3823)
!3843 = !DILocation(line: 328, column: 13, scope: !3823)
!3844 = !DILocation(line: 0, scope: !3794, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 329, column: 10, scope: !3823)
!3846 = !DILocation(line: 29, column: 10, scope: !3794, inlinedAt: !3845)
!3847 = !DILocation(line: 329, column: 3, scope: !3823)
!3848 = distinct !DISubprogram(name: "xstrdup", scope: !400, file: !400, line: 335, type: !673, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3849)
!3849 = !{!3850}
!3850 = !DILocalVariable(name: "string", arg: 1, scope: !3848, file: !400, line: 335, type: !30)
!3851 = !DILocation(line: 0, scope: !3848)
!3852 = !DILocation(line: 337, column: 27, scope: !3848)
!3853 = !DILocation(line: 337, column: 43, scope: !3848)
!3854 = !DILocation(line: 0, scope: !3778, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 337, column: 10, scope: !3848)
!3856 = !DILocation(line: 0, scope: !3474, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 312, column: 18, scope: !3778, inlinedAt: !3855)
!3858 = !DILocation(line: 49, column: 25, scope: !3474, inlinedAt: !3857)
!3859 = !DILocation(line: 0, scope: !3455, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 49, column: 10, scope: !3474, inlinedAt: !3857)
!3861 = !DILocation(line: 39, column: 8, scope: !3462, inlinedAt: !3860)
!3862 = !DILocation(line: 39, column: 7, scope: !3455, inlinedAt: !3860)
!3863 = !DILocation(line: 40, column: 5, scope: !3462, inlinedAt: !3860)
!3864 = !DILocation(line: 0, scope: !3794, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 312, column: 10, scope: !3778, inlinedAt: !3855)
!3866 = !DILocation(line: 29, column: 10, scope: !3794, inlinedAt: !3865)
!3867 = !DILocation(line: 337, column: 3, scope: !3848)
!3868 = distinct !DISubprogram(name: "xalloc_die", scope: !434, file: !434, line: 32, type: !189, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !3869)
!3869 = !{!3870}
!3870 = !DILocalVariable(name: "__errstatus", scope: !3871, file: !434, line: 34, type: !3872)
!3871 = distinct !DILexicalBlock(scope: !3868, file: !434, line: 34, column: 3)
!3872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!3873 = !DILocation(line: 34, column: 3, scope: !3871)
!3874 = !DILocation(line: 0, scope: !3871)
!3875 = !DILocation(line: 40, column: 3, scope: !3868)
!3876 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !363, file: !363, line: 100, type: !3877, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !3880)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!27, !1716, !30, !27, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!3880 = !{!3881, !3882, !3883, !3884, !3885}
!3881 = !DILocalVariable(name: "pwc", arg: 1, scope: !3876, file: !363, line: 100, type: !1716)
!3882 = !DILocalVariable(name: "s", arg: 2, scope: !3876, file: !363, line: 100, type: !30)
!3883 = !DILocalVariable(name: "n", arg: 3, scope: !3876, file: !363, line: 100, type: !27)
!3884 = !DILocalVariable(name: "ps", arg: 4, scope: !3876, file: !363, line: 100, type: !3879)
!3885 = !DILocalVariable(name: "ret", scope: !3876, file: !363, line: 130, type: !27)
!3886 = !DILocation(line: 0, scope: !3876)
!3887 = !DILocation(line: 105, column: 9, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3876, file: !363, line: 105, column: 7)
!3889 = !DILocation(line: 105, column: 7, scope: !3876)
!3890 = !DILocation(line: 117, column: 10, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3876, file: !363, line: 117, column: 7)
!3892 = !DILocation(line: 117, column: 7, scope: !3876)
!3893 = !DILocation(line: 130, column: 16, scope: !3876)
!3894 = !DILocation(line: 135, column: 11, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3876, file: !363, line: 135, column: 7)
!3896 = !DILocation(line: 135, column: 25, scope: !3895)
!3897 = !DILocation(line: 135, column: 30, scope: !3895)
!3898 = !DILocation(line: 135, column: 7, scope: !3876)
!3899 = !DILocalVariable(name: "ps", arg: 1, scope: !3900, file: !1690, line: 1135, type: !3879)
!3900 = distinct !DISubprogram(name: "mbszero", scope: !1690, file: !1690, line: 1135, type: !3901, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !3903)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !3879}
!3903 = !{!3899}
!3904 = !DILocation(line: 0, scope: !3900, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 137, column: 5, scope: !3895)
!3906 = !DILocalVariable(name: "__dest", arg: 1, scope: !3907, file: !778, line: 57, type: !24)
!3907 = distinct !DISubprogram(name: "memset", scope: !778, file: !778, line: 57, type: !1699, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !3908)
!3908 = !{!3906, !3909, !3910}
!3909 = !DILocalVariable(name: "__ch", arg: 2, scope: !3907, file: !778, line: 57, type: !25)
!3910 = !DILocalVariable(name: "__len", arg: 3, scope: !3907, file: !778, line: 57, type: !27)
!3911 = !DILocation(line: 0, scope: !3907, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 1137, column: 3, scope: !3900, inlinedAt: !3905)
!3913 = !DILocation(line: 59, column: 10, scope: !3907, inlinedAt: !3912)
!3914 = !DILocation(line: 137, column: 5, scope: !3895)
!3915 = !DILocation(line: 138, column: 11, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3876, file: !363, line: 138, column: 7)
!3917 = !DILocation(line: 138, column: 7, scope: !3876)
!3918 = !DILocation(line: 139, column: 5, scope: !3916)
!3919 = !DILocation(line: 143, column: 26, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3876, file: !363, line: 143, column: 7)
!3921 = !DILocation(line: 143, column: 41, scope: !3920)
!3922 = !DILocation(line: 143, column: 7, scope: !3876)
!3923 = !DILocation(line: 145, column: 15, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !363, line: 145, column: 11)
!3925 = distinct !DILexicalBlock(scope: !3920, file: !363, line: 144, column: 5)
!3926 = !DILocation(line: 145, column: 11, scope: !3925)
!3927 = !DILocation(line: 146, column: 32, scope: !3924)
!3928 = !DILocation(line: 146, column: 16, scope: !3924)
!3929 = !DILocation(line: 146, column: 14, scope: !3924)
!3930 = !DILocation(line: 146, column: 9, scope: !3924)
!3931 = !DILocation(line: 286, column: 1, scope: !3876)
!3932 = !DISubprogram(name: "mbsinit", scope: !3933, file: !3933, line: 293, type: !3934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3933 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!25, !3936}
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!3938 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !436, file: !436, line: 27, type: !3439, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !3939)
!3939 = !{!3940, !3941, !3942, !3943}
!3940 = !DILocalVariable(name: "ptr", arg: 1, scope: !3938, file: !436, line: 27, type: !24)
!3941 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3938, file: !436, line: 27, type: !27)
!3942 = !DILocalVariable(name: "size", arg: 3, scope: !3938, file: !436, line: 27, type: !27)
!3943 = !DILocalVariable(name: "nbytes", scope: !3938, file: !436, line: 29, type: !27)
!3944 = !DILocation(line: 0, scope: !3938)
!3945 = !DILocation(line: 30, column: 7, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3938, file: !436, line: 30, column: 7)
!3947 = !DILocalVariable(name: "ptr", arg: 1, scope: !3948, file: !3530, line: 2057, type: !24)
!3948 = distinct !DISubprogram(name: "rpl_realloc", scope: !3530, file: !3530, line: 2057, type: !3522, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !3949)
!3949 = !{!3947, !3950}
!3950 = !DILocalVariable(name: "size", arg: 2, scope: !3948, file: !3530, line: 2057, type: !27)
!3951 = !DILocation(line: 0, scope: !3948, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 37, column: 10, scope: !3938)
!3953 = !DILocation(line: 2059, column: 24, scope: !3948, inlinedAt: !3952)
!3954 = !DILocation(line: 2059, column: 10, scope: !3948, inlinedAt: !3952)
!3955 = !DILocation(line: 37, column: 3, scope: !3938)
!3956 = !DILocation(line: 32, column: 7, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3946, file: !436, line: 31, column: 5)
!3958 = !DILocation(line: 32, column: 13, scope: !3957)
!3959 = !DILocation(line: 33, column: 7, scope: !3957)
!3960 = !DILocation(line: 38, column: 1, scope: !3938)
!3961 = distinct !DISubprogram(name: "hard_locale", scope: !439, file: !439, line: 28, type: !3962, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!36, !25}
!3964 = !{!3965, !3966}
!3965 = !DILocalVariable(name: "category", arg: 1, scope: !3961, file: !439, line: 28, type: !25)
!3966 = !DILocalVariable(name: "locale", scope: !3961, file: !439, line: 30, type: !3967)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !3968)
!3968 = !{!3969}
!3969 = !DISubrange(count: 257)
!3970 = !DILocation(line: 0, scope: !3961)
!3971 = !DILocation(line: 30, column: 3, scope: !3961)
!3972 = !DILocation(line: 30, column: 8, scope: !3961)
!3973 = !DILocation(line: 32, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3961, file: !439, line: 32, column: 7)
!3975 = !DILocation(line: 32, column: 7, scope: !3961)
!3976 = !DILocalVariable(name: "__s1", arg: 1, scope: !3977, file: !511, line: 1359, type: !30)
!3977 = distinct !DISubprogram(name: "streq", scope: !511, file: !511, line: 1359, type: !512, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !3978)
!3978 = !{!3976, !3979}
!3979 = !DILocalVariable(name: "__s2", arg: 2, scope: !3977, file: !511, line: 1359, type: !30)
!3980 = !DILocation(line: 0, scope: !3977, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 35, column: 9, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3961, file: !439, line: 35, column: 7)
!3983 = !DILocation(line: 1361, column: 11, scope: !3977, inlinedAt: !3981)
!3984 = !DILocation(line: 1361, column: 10, scope: !3977, inlinedAt: !3981)
!3985 = !DILocation(line: 35, column: 29, scope: !3982)
!3986 = !DILocation(line: 0, scope: !3977, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 35, column: 32, scope: !3982)
!3988 = !DILocation(line: 1361, column: 11, scope: !3977, inlinedAt: !3987)
!3989 = !DILocation(line: 1361, column: 10, scope: !3977, inlinedAt: !3987)
!3990 = !DILocation(line: 35, column: 7, scope: !3961)
!3991 = !DILocation(line: 46, column: 3, scope: !3961)
!3992 = !DILocation(line: 47, column: 1, scope: !3961)
!3993 = distinct !DISubprogram(name: "setlocale_null_r", scope: !441, file: !441, line: 154, type: !3994, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!25, !25, !22, !27}
!3996 = !{!3997, !3998, !3999}
!3997 = !DILocalVariable(name: "category", arg: 1, scope: !3993, file: !441, line: 154, type: !25)
!3998 = !DILocalVariable(name: "buf", arg: 2, scope: !3993, file: !441, line: 154, type: !22)
!3999 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3993, file: !441, line: 154, type: !27)
!4000 = !DILocation(line: 0, scope: !3993)
!4001 = !DILocation(line: 159, column: 10, scope: !3993)
!4002 = !DILocation(line: 159, column: 3, scope: !3993)
!4003 = distinct !DISubprogram(name: "setlocale_null", scope: !441, file: !441, line: 186, type: !4004, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!30, !25}
!4006 = !{!4007}
!4007 = !DILocalVariable(name: "category", arg: 1, scope: !4003, file: !441, line: 186, type: !25)
!4008 = !DILocation(line: 0, scope: !4003)
!4009 = !DILocation(line: 189, column: 10, scope: !4003)
!4010 = !DILocation(line: 189, column: 3, scope: !4003)
!4011 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !443, file: !443, line: 35, type: !4004, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4012)
!4012 = !{!4013, !4014}
!4013 = !DILocalVariable(name: "category", arg: 1, scope: !4011, file: !443, line: 35, type: !25)
!4014 = !DILocalVariable(name: "result", scope: !4011, file: !443, line: 37, type: !30)
!4015 = !DILocation(line: 0, scope: !4011)
!4016 = !DILocation(line: 37, column: 24, scope: !4011)
!4017 = !DILocation(line: 62, column: 3, scope: !4011)
!4018 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !443, file: !443, line: 66, type: !3994, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4019)
!4019 = !{!4020, !4021, !4022, !4023, !4024}
!4020 = !DILocalVariable(name: "category", arg: 1, scope: !4018, file: !443, line: 66, type: !25)
!4021 = !DILocalVariable(name: "buf", arg: 2, scope: !4018, file: !443, line: 66, type: !22)
!4022 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4018, file: !443, line: 66, type: !27)
!4023 = !DILocalVariable(name: "result", scope: !4018, file: !443, line: 111, type: !30)
!4024 = !DILocalVariable(name: "length", scope: !4025, file: !443, line: 125, type: !27)
!4025 = distinct !DILexicalBlock(scope: !4026, file: !443, line: 124, column: 5)
!4026 = distinct !DILexicalBlock(scope: !4018, file: !443, line: 113, column: 7)
!4027 = !DILocation(line: 0, scope: !4018)
!4028 = !DILocation(line: 0, scope: !4011, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 111, column: 24, scope: !4018)
!4030 = !DILocation(line: 37, column: 24, scope: !4011, inlinedAt: !4029)
!4031 = !DILocation(line: 113, column: 14, scope: !4026)
!4032 = !DILocation(line: 113, column: 7, scope: !4018)
!4033 = !DILocation(line: 116, column: 19, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !443, line: 116, column: 11)
!4035 = distinct !DILexicalBlock(scope: !4026, file: !443, line: 114, column: 5)
!4036 = !DILocation(line: 116, column: 11, scope: !4035)
!4037 = !DILocation(line: 120, column: 16, scope: !4034)
!4038 = !DILocation(line: 120, column: 9, scope: !4034)
!4039 = !DILocation(line: 125, column: 23, scope: !4025)
!4040 = !DILocation(line: 0, scope: !4025)
!4041 = !DILocation(line: 126, column: 18, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4025, file: !443, line: 126, column: 11)
!4043 = !DILocation(line: 126, column: 11, scope: !4025)
!4044 = !DILocation(line: 128, column: 39, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4042, file: !443, line: 127, column: 9)
!4046 = !DILocalVariable(name: "__dest", arg: 1, scope: !4047, file: !778, line: 26, type: !781)
!4047 = distinct !DISubprogram(name: "memcpy", scope: !778, file: !778, line: 26, type: !779, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4048)
!4048 = !{!4046, !4049, !4050}
!4049 = !DILocalVariable(name: "__src", arg: 2, scope: !4047, file: !778, line: 26, type: !678)
!4050 = !DILocalVariable(name: "__len", arg: 3, scope: !4047, file: !778, line: 26, type: !27)
!4051 = !DILocation(line: 0, scope: !4047, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 128, column: 11, scope: !4045)
!4053 = !DILocation(line: 29, column: 10, scope: !4047, inlinedAt: !4052)
!4054 = !DILocation(line: 129, column: 11, scope: !4045)
!4055 = !DILocation(line: 133, column: 23, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !443, line: 133, column: 15)
!4057 = distinct !DILexicalBlock(scope: !4042, file: !443, line: 132, column: 9)
!4058 = !DILocation(line: 133, column: 15, scope: !4057)
!4059 = !DILocation(line: 138, column: 44, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4056, file: !443, line: 134, column: 13)
!4061 = !DILocation(line: 0, scope: !4047, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 138, column: 15, scope: !4060)
!4063 = !DILocation(line: 29, column: 10, scope: !4047, inlinedAt: !4062)
!4064 = !DILocation(line: 139, column: 15, scope: !4060)
!4065 = !DILocation(line: 139, column: 32, scope: !4060)
!4066 = !DILocation(line: 140, column: 13, scope: !4060)
!4067 = !DILocation(line: 0, scope: !4026)
!4068 = !DILocation(line: 145, column: 1, scope: !4018)
