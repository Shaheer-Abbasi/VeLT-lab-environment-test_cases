; ModuleID = 'src/paste.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [204 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0AThe newline of every line except the line from the last file\0Ais replaced with a TAB.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"paste\00", align 1
@.str.4 = private unnamed_addr constant [119 x i8] c"  -d, --delimiters=LIST\0A         reuse characters from LIST instead of TABs;\0A         backslash escapes are supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [166 x i8] c"  -s, --serial\0A         paste one file at a time instead of in parallel; the newline of\0A         every line except the last line in each file is replaced with a TAB\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"  -z, --zero-terminated\0A         line delimiter is NUL, not newline\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"d:sz\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@serial_merge = internal unnamed_addr global i1 false, align 1, !dbg !183
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !184
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1
@delims = internal unnamed_addr global i8* null, align 8, !dbg !73
@delim_lens = internal unnamed_addr global i64* null, align 8, !dbg !75
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !185
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !78
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.52 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.53 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@num_delims = internal unnamed_addr global i64 0, align 8, !dbg !166
@.str.62 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1
@switch.table.main = private unnamed_addr constant [14 x i8] c"\\\08\08\08\08\0C\08\08\08\0A\08\0D\09\0B", align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), align 8, !dbg !186
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !191
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !196
@.str.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !198
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !234
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !204
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !230
@.str.1.40 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.42 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.41 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !232
@.str.4.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.36 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.37 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !239
@.str.66 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.67 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !245
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.73, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.79, i32 0, i32 0), i8* null], align 8, !dbg !281
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !293
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !311
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !341
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !348
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !313
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !350
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !299
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.83 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !318
@.str.88 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.89 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.90 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.91 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.92 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.93 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.94 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.109 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.110 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.111 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.112 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.113 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.114 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.115 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !356
@exit_failure = dso_local global i32 1, align 4, !dbg !364
@.str.134 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.132 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.133 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.141 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !370
@.str.146 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.147 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !463 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !467, metadata !DIExpression()), !dbg !468
  %3 = icmp eq i32 %0, 0, !dbg !469
  br i1 %3, label %9, label %4, !dbg !471

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !472, !tbaa !474
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !472
  %7 = load i8*, i8** @program_name, align 8, !dbg !472, !tbaa !474
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !472
  br label %61, !dbg !472

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !478
  %11 = load i8*, i8** @program_name, align 8, !dbg !478, !tbaa !474
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33, !dbg !478
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([204 x i8], [204 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !480
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !480, !tbaa !474
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !480
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #33, !dbg !481
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !481, !tbaa !474
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #33, !dbg !481
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #33, !dbg !485
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !485, !tbaa !474
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20) #33, !dbg !485
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([119 x i8], [119 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !488
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !488
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([166 x i8], [166 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !489
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !489
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #33, !dbg !490
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !490
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !491
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !491
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #33, !dbg !492
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !492
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !493, metadata !DIExpression()) #33, !dbg !512
  %27 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !514
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %27) #33, !dbg !514
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !498, metadata !DIExpression()) #33, !dbg !515
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %27, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !515
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #33, !dbg !512
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !508, metadata !DIExpression()) #33, !dbg !512
  %28 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !516
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !508, metadata !DIExpression()) #33, !dbg !512
  br label %29, !dbg !517

29:                                               ; preds = %34, %9
  %30 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), %9 ]
  %31 = phi %struct.infomap* [ %35, %34 ], [ %28, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !508, metadata !DIExpression()) #33, !dbg !512
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !525
  call void @llvm.dbg.value(metadata i8* %30, metadata !524, metadata !DIExpression()) #33, !dbg !525
  %32 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %30) #34, !dbg !527
  %33 = icmp eq i32 %32, 0, !dbg !528
  br i1 %33, label %39, label %34, !dbg !517

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 1, !dbg !529
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !508, metadata !DIExpression()) #33, !dbg !512
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 0, !dbg !530
  %37 = load i8*, i8** %36, align 8, !dbg !530, !tbaa !531
  %38 = icmp eq i8* %37, null, !dbg !533
  br i1 %38, label %39, label %29, !dbg !534, !llvm.loop !535

39:                                               ; preds = %34, %29
  %40 = phi %struct.infomap* [ %31, %29 ], [ %35, %34 ]
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 1, !dbg !537
  %42 = load i8*, i8** %41, align 8, !dbg !537, !tbaa !539
  %43 = icmp eq i8* %42, null, !dbg !540
  %44 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %42, !dbg !541
  call void @llvm.dbg.value(metadata i8* %44, metadata !507, metadata !DIExpression()) #33, !dbg !512
  tail call void @emit_bug_reporting_address() #33, !dbg !542
  %45 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !543
  call void @llvm.dbg.value(metadata i8* %45, metadata !510, metadata !DIExpression()) #33, !dbg !512
  %46 = icmp eq i8* %45, null, !dbg !544
  br i1 %46, label %54, label %47, !dbg !546

47:                                               ; preds = %39
  %48 = tail call i32 @strncmp(i8* noundef nonnull %45, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i64 noundef 3) #34, !dbg !547
  %49 = icmp eq i32 %48, 0, !dbg !547
  br i1 %49, label %54, label %50, !dbg !548

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.53, i64 0, i64 0), i32 noundef 5) #33, !dbg !549
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !549, !tbaa !474
  %53 = tail call i32 @fputs_unlocked(i8* noundef %51, %struct._IO_FILE* noundef %52) #33, !dbg !549
  br label %54, !dbg !551

54:                                               ; preds = %39, %47, %50
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !552
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), metadata !524, metadata !DIExpression()) #33, !dbg !552
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !511, metadata !DIExpression()) #33, !dbg !512
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #33, !dbg !554
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %55, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !554
  %57 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #33, !dbg !555
  %58 = icmp eq i8* %44, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), !dbg !555
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !555
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %57, i8* noundef %44, i8* noundef %59) #33, !dbg !555
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %27) #33, !dbg !556
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !557
  unreachable, !dbg !557
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !558 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !562 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !80 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !85, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %0, metadata !86, metadata !DIExpression()), !dbg !567
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !568, !tbaa !569
  %3 = icmp eq i32 %2, -1, !dbg !571
  br i1 %3, label %4, label %16, !dbg !572

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #33, !dbg !573
  call void @llvm.dbg.value(metadata i8* %5, metadata !87, metadata !DIExpression()), !dbg !574
  %6 = icmp eq i8* %5, null, !dbg !575
  br i1 %6, label %14, label %7, !dbg !576

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !577, !tbaa !578
  %9 = icmp eq i8 %8, 0, !dbg !577
  br i1 %9, label %14, label %10, !dbg !579

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !518, metadata !DIExpression()) #33, !dbg !580
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), metadata !524, metadata !DIExpression()) #33, !dbg !580
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #34, !dbg !582
  %12 = icmp eq i32 %11, 0, !dbg !583
  %13 = zext i1 %12 to i32, !dbg !579
  br label %14, !dbg !579

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !584, !tbaa !569
  br label %16, !dbg !585

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !586
  %18 = icmp eq i32 %17, 0, !dbg !586
  br i1 %18, label %22, label %19, !dbg !588

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !474
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !589
  br label %121, !dbg !591

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !90, metadata !DIExpression()), !dbg !567
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)) #34, !dbg !592
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !593
  call void @llvm.dbg.value(metadata i8* %24, metadata !91, metadata !DIExpression()), !dbg !567
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !594
  call void @llvm.dbg.value(metadata i8* %25, metadata !92, metadata !DIExpression()), !dbg !567
  %26 = icmp eq i8* %25, null, !dbg !595
  br i1 %26, label %53, label %27, !dbg !596

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !597
  br i1 %28, label %53, label %29, !dbg !598

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !93, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 0, metadata !97, metadata !DIExpression()), !dbg !599
  %30 = icmp ult i8* %24, %25, !dbg !600
  br i1 %30, label %31, label %53, !dbg !601

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #36, !dbg !567
  %33 = load i16*, i16** %32, align 8, !tbaa !474
  br label %34, !dbg !601

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !93, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 %36, metadata !97, metadata !DIExpression()), !dbg !599
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !602
  call void @llvm.dbg.value(metadata i8* %37, metadata !93, metadata !DIExpression()), !dbg !599
  %38 = load i8, i8* %35, align 1, !dbg !602, !tbaa !578
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !602
  %41 = load i16, i16* %40, align 2, !dbg !602, !tbaa !603
  %42 = lshr i16 %41, 13, !dbg !605
  %43 = and i16 %42, 1, !dbg !605
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !606
  call void @llvm.dbg.value(metadata i64 %45, metadata !97, metadata !DIExpression()), !dbg !599
  %46 = icmp ult i8* %37, %25, !dbg !600
  %47 = icmp ult i64 %45, 2, !dbg !607
  %48 = select i1 %46, i1 %47, i1 false, !dbg !607
  br i1 %48, label %34, label %49, !dbg !601, !llvm.loop !608

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !609
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !611
  %52 = xor i1 %50, true, !dbg !611
  br label %53, !dbg !611

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !567
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %54, metadata !92, metadata !DIExpression()), !dbg !567
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)) #34, !dbg !612
  call void @llvm.dbg.value(metadata i64 %56, metadata !98, metadata !DIExpression()), !dbg !567
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !613
  call void @llvm.dbg.value(metadata i8* %57, metadata !99, metadata !DIExpression()), !dbg !567
  br label %58, !dbg !614

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !567
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %59, metadata !99, metadata !DIExpression()), !dbg !567
  %61 = load i8, i8* %59, align 1, !dbg !615, !tbaa !578
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !616

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !617
  %64 = load i8, i8* %63, align 1, !dbg !620, !tbaa !578
  %65 = icmp ne i8 %64, 45, !dbg !621
  %66 = select i1 %65, i1 %60, i1 false, !dbg !622
  br label %67, !dbg !622

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !567
  %69 = tail call i16** @__ctype_b_loc() #36, !dbg !623
  %70 = load i16*, i16** %69, align 8, !dbg !623, !tbaa !474
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !623
  %73 = load i16, i16* %72, align 2, !dbg !623, !tbaa !603
  %74 = and i16 %73, 8192, !dbg !623
  %75 = icmp eq i16 %74, 0, !dbg !623
  br i1 %75, label %89, label %76, !dbg !625

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !626
  br i1 %77, label %91, label %78, !dbg !629

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !630
  %80 = load i8, i8* %79, align 1, !dbg !630, !tbaa !578
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !630
  %83 = load i16, i16* %82, align 2, !dbg !630, !tbaa !603
  %84 = and i16 %83, 8192, !dbg !630
  %85 = icmp eq i16 %84, 0, !dbg !630
  br i1 %85, label %86, label %91, !dbg !631

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !632
  br i1 %88, label %89, label %91, !dbg !632

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !634
  call void @llvm.dbg.value(metadata i8* %90, metadata !99, metadata !DIExpression()), !dbg !567
  br label %58, !dbg !614, !llvm.loop !635

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !637
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !474
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !637
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), metadata !524, metadata !DIExpression()) #33, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !648
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !650
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !652
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !518, metadata !DIExpression()) #33, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !159, metadata !DIExpression()), !dbg !567
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i64 noundef 6) #34, !dbg !658
  %96 = icmp eq i32 %95, 0, !dbg !658
  br i1 %96, label %100, label %97, !dbg !660

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i64 noundef 9) #34, !dbg !661
  %99 = icmp eq i32 %98, 0, !dbg !661
  br i1 %99, label %100, label %103, !dbg !662

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !663
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !663
  br label %106, !dbg !665

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !666
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !666
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !474
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !668
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !474
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !669
  %111 = ptrtoint i8* %59 to i64, !dbg !670
  %112 = sub i64 %111, %92, !dbg !670
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !474
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !670
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !474
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !671
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !474
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !672
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !474
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !673
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !674
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
declare !dbg !675 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !679 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !683 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !689 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !694, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8** %1, metadata !695, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), metadata !697, metadata !DIExpression()), !dbg !700
  %5 = load i8*, i8** %1, align 8, !dbg !701, !tbaa !474
  tail call void @set_program_name(i8* noundef %5) #33, !dbg !702
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #33, !dbg !703
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #33, !dbg !704
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #33, !dbg !705
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !706
  br label %10, !dbg !707

10:                                               ; preds = %14, %2
  %11 = phi i8* [ %18, %14 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %2 ]
  br label %12, !dbg !707

12:                                               ; preds = %21, %10
  call void @llvm.dbg.value(metadata i8* %11, metadata !697, metadata !DIExpression()), !dbg !700
  %13 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #33, !dbg !708
  call void @llvm.dbg.value(metadata i32 %13, metadata !696, metadata !DIExpression()), !dbg !700
  switch i32 %13, label %28 [
    i32 -1, label %29
    i32 100, label %14
    i32 115, label %19
    i32 122, label %20
    i32 -2, label %22
    i32 -3, label %23
  ], !dbg !707

14:                                               ; preds = %12
  %15 = load i8*, i8** @optarg, align 8, !dbg !709, !tbaa !474
  %16 = load i8, i8* %15, align 1, !dbg !709, !tbaa !578
  %17 = icmp eq i8 %16, 0, !dbg !712
  %18 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %15, !dbg !709
  call void @llvm.dbg.value(metadata i8* %18, metadata !697, metadata !DIExpression()), !dbg !700
  br label %10, !dbg !713, !llvm.loop !714

19:                                               ; preds = %12
  store i1 true, i1* @serial_merge, align 1, !dbg !716
  br label %21, !dbg !717

20:                                               ; preds = %12
  store i1 true, i1* @line_delim, align 1, !dbg !718
  br label %21, !dbg !719

21:                                               ; preds = %20, %19
  br label %12, !dbg !700, !llvm.loop !714

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #37, !dbg !720
  unreachable, !dbg !720

23:                                               ; preds = %12
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !721, !tbaa !474
  %25 = load i8*, i8** @Version, align 8, !dbg !721, !tbaa !474
  %26 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0)) #33, !dbg !721
  %27 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #33, !dbg !721
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* noundef %25, i8* noundef %26, i8* noundef %27, i8* noundef null) #33, !dbg !721
  tail call void @exit(i32 noundef 0) #35, !dbg !721
  unreachable, !dbg !721

28:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #37, !dbg !722
  unreachable, !dbg !722

29:                                               ; preds = %12
  %30 = load i32, i32* @optind, align 4, !dbg !723, !tbaa !569
  %31 = sub nsw i32 %0, %30, !dbg !724
  call void @llvm.dbg.value(metadata i32 %31, metadata !698, metadata !DIExpression()), !dbg !700
  %32 = icmp eq i32 %31, 0, !dbg !725
  br i1 %32, label %33, label %36, !dbg !727

33:                                               ; preds = %29
  %34 = sext i32 %30 to i64, !dbg !728
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !728
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** %35, align 8, !dbg !730, !tbaa !474
  call void @llvm.dbg.value(metadata i32 1, metadata !698, metadata !DIExpression()), !dbg !700
  br label %36, !dbg !731

36:                                               ; preds = %33, %29
  %37 = phi i32 [ 1, %33 ], [ %31, %29 ], !dbg !700
  call void @llvm.dbg.value(metadata i32 %37, metadata !698, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %11, metadata !732, metadata !DIExpression()) #33, !dbg !750
  %38 = tail call noalias nonnull i8* @xstrdup(i8* noundef %11) #33, !dbg !753
  call void @llvm.dbg.value(metadata i8* %38, metadata !737, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.value(metadata i8 0, metadata !738, metadata !DIExpression()) #33, !dbg !750
  store i8* %38, i8** @delims, align 8, !dbg !754, !tbaa !474
  %39 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %11) #34, !dbg !755
  %40 = icmp eq i64 %39, 0, !dbg !755
  %41 = select i1 %40, i64 1, i64 %39, !dbg !755
  %42 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %41, i64 noundef 8) #38, !dbg !756
  store i8* %42, i8** bitcast (i64** @delim_lens to i8**), align 8, !dbg !757, !tbaa !474
  call void @llvm.dbg.value(metadata i8* %11, metadata !739, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.value(metadata i64 0, metadata !740, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.value(metadata i8* %38, metadata !737, metadata !DIExpression()) #33, !dbg !750
  %43 = load i8, i8* %11, align 1, !dbg !758, !tbaa !578
  %44 = icmp eq i8 %43, 0, !dbg !759
  %45 = bitcast i8* %42 to i64*, !dbg !759
  br i1 %44, label %46, label %47, !dbg !759

46:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !738, metadata !DIExpression()) #33, !dbg !750
  store i8 0, i8* %38, align 1, !dbg !760, !tbaa !578
  store i64 0, i64* %45, align 8, !dbg !761, !tbaa !764
  call void @llvm.dbg.value(metadata i64 1, metadata !740, metadata !DIExpression()) #33, !dbg !750
  br label %137, !dbg !766

47:                                               ; preds = %36
  %48 = bitcast %struct.__mbstate_t* %3 to i8*
  %49 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %3, i64 0, i32 0
  %50 = bitcast i32* %4 to i8*
  br label %51, !dbg !759

51:                                               ; preds = %84, %47
  %52 = phi i64* [ %45, %47 ], [ %85, %84 ]
  %53 = phi i64* [ %45, %47 ], [ %86, %84 ]
  %54 = phi i64* [ %45, %47 ], [ %87, %84 ]
  %55 = phi i8 [ %43, %47 ], [ %91, %84 ]
  %56 = phi i8* [ %38, %47 ], [ %89, %84 ]
  %57 = phi i8* [ %11, %47 ], [ %88, %84 ]
  %58 = phi i64 [ 0, %47 ], [ %90, %84 ]
  call void @llvm.dbg.value(metadata i8* %56, metadata !737, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.value(metadata i8* %57, metadata !739, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.value(metadata i64 %58, metadata !740, metadata !DIExpression()) #33, !dbg !750
  %59 = icmp eq i8 %55, 92, !dbg !767
  br i1 %59, label %60, label %94, !dbg !769

60:                                               ; preds = %51
  %61 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !770
  call void @llvm.dbg.value(metadata i8* %61, metadata !739, metadata !DIExpression()) #33, !dbg !750
  %62 = load i8, i8* %61, align 1, !dbg !772, !tbaa !578
  switch i8 %62, label %63 [
    i8 0, label %130
    i8 48, label %78
  ], !dbg !774

63:                                               ; preds = %60
  %64 = zext i8 %62 to i32, !dbg !772
  %65 = add nsw i32 %64, -92, !dbg !775
  %66 = call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 31) #33, !dbg !775
  %67 = icmp ult i32 %66, 14, !dbg !775
  br i1 %67, label %68, label %94, !dbg !775

68:                                               ; preds = %63
  %69 = trunc i32 %66 to i16, !dbg !775
  %70 = lshr i16 14889, %69, !dbg !775
  %71 = and i16 %70, 1, !dbg !775
  %72 = icmp eq i16 %71, 0, !dbg !775
  br i1 %72, label %94, label %73, !dbg !775

73:                                               ; preds = %68
  %74 = sext i32 %66 to i64, !dbg !775
  %75 = getelementptr inbounds [14 x i8], [14 x i8]* @switch.table.main, i64 0, i64 %74, !dbg !775
  %76 = load i8, i8* %75, align 1, !dbg !775
  store i8 %76, i8* %56, align 1, !dbg !778, !tbaa !578
  %77 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !778
  call void @llvm.dbg.value(metadata i8* %77, metadata !737, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.value(metadata i8* %57, metadata !739, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #33, !dbg !750
  call void @llvm.dbg.value(metadata i64 %58, metadata !740, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #33, !dbg !750
  br label %78

78:                                               ; preds = %73, %60
  %79 = phi i64* [ %53, %73 ], [ %54, %60 ]
  %80 = phi i64 [ 1, %73 ], [ 0, %60 ]
  %81 = phi i8* [ %77, %73 ], [ %56, %60 ], !dbg !750
  %82 = getelementptr inbounds i64, i64* %79, i64 %58, !dbg !780
  store i64 %80, i64* %82, align 8, !dbg !780, !tbaa !764
  %83 = getelementptr inbounds i8, i8* %57, i64 2, !dbg !780
  call void @llvm.dbg.value(metadata i8* %81, metadata !737, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.value(metadata i8* %83, metadata !739, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.value(metadata i64 %58, metadata !740, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #33, !dbg !750
  br label %84, !dbg !781

84:                                               ; preds = %124, %78
  %85 = phi i64* [ %52, %78 ], [ %128, %124 ]
  %86 = phi i64* [ %53, %78 ], [ %128, %124 ]
  %87 = phi i64* [ %79, %78 ], [ %128, %124 ]
  %88 = phi i8* [ %83, %78 ], [ %127, %124 ]
  %89 = phi i8* [ %81, %78 ], [ %126, %124 ]
  %90 = add nuw nsw i64 %58, 1, !dbg !782
  call void @llvm.dbg.value(metadata i8* %89, metadata !737, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.value(metadata i8* %88, metadata !739, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.value(metadata i64 %90, metadata !740, metadata !DIExpression()) #33, !dbg !750
  %91 = load i8, i8* %88, align 1, !dbg !758, !tbaa !578
  %92 = icmp eq i8 %91, 0, !dbg !759
  br i1 %92, label %93, label %51, !dbg !759, !llvm.loop !783

93:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i8 poison, metadata !738, metadata !DIExpression()) #33, !dbg !750
  store i8 0, i8* %89, align 1, !dbg !760, !tbaa !578
  call void @llvm.dbg.value(metadata i64 1, metadata !740, metadata !DIExpression()) #33, !dbg !750
  br label %137, !dbg !766

94:                                               ; preds = %68, %63, %51
  %95 = phi i8 [ %55, %51 ], [ %62, %63 ], [ %62, %68 ], !dbg !785
  %96 = phi i8* [ %57, %51 ], [ %61, %63 ], [ %61, %68 ], !dbg !750
  call void @llvm.dbg.value(metadata i8* %96, metadata !739, metadata !DIExpression()) #33, !dbg !750
  call void @llvm.dbg.label(metadata !749) #33, !dbg !803
  call void @llvm.dbg.value(metadata i8* %96, metadata !801, metadata !DIExpression()) #33, !dbg !804
  call void @llvm.dbg.value(metadata i8* %96, metadata !791, metadata !DIExpression()) #33, !dbg !805
  call void @llvm.dbg.value(metadata i8 0, metadata !792, metadata !DIExpression()) #33, !dbg !805
  call void @llvm.dbg.value(metadata i8 %95, metadata !806, metadata !DIExpression()) #33, !dbg !811
  %97 = icmp sgt i8 %95, -1, !dbg !813
  br i1 %97, label %124, label %98, !dbg !814

98:                                               ; preds = %94
  %99 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !815
  call void @llvm.dbg.value(metadata i32 0, metadata !794, metadata !DIExpression()) #33, !dbg !816
  call void @llvm.dbg.value(metadata i8* %99, metadata !793, metadata !DIExpression()) #33, !dbg !805
  %100 = load i8, i8* %99, align 1, !dbg !817, !tbaa !578
  %101 = icmp ne i8 %100, 0, !dbg !819
  %102 = zext i1 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102, !dbg !820
  call void @llvm.dbg.value(metadata i32 1, metadata !794, metadata !DIExpression()) #33, !dbg !816
  call void @llvm.dbg.value(metadata i8* %103, metadata !793, metadata !DIExpression()) #33, !dbg !805
  %104 = load i8, i8* %103, align 1, !dbg !817, !tbaa !578
  %105 = icmp ne i8 %104, 0, !dbg !819
  %106 = zext i1 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106, !dbg !820
  call void @llvm.dbg.value(metadata i32 2, metadata !794, metadata !DIExpression()) #33, !dbg !816
  call void @llvm.dbg.value(metadata i8* %107, metadata !793, metadata !DIExpression()) #33, !dbg !805
  %108 = load i8, i8* %107, align 1, !dbg !817, !tbaa !578
  %109 = icmp ne i8 %108, 0, !dbg !819
  %110 = zext i1 %109 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110, !dbg !820
  call void @llvm.dbg.value(metadata i8* %111, metadata !793, metadata !DIExpression()) #33, !dbg !805
  call void @llvm.dbg.value(metadata i32 3, metadata !794, metadata !DIExpression()) #33, !dbg !816
  call void @llvm.dbg.value(metadata i8* %96, metadata !821, metadata !DIExpression()) #33, !dbg !841
  call void @llvm.dbg.value(metadata i8* %111, metadata !826, metadata !DIExpression()) #33, !dbg !841
  call void @llvm.dbg.value(metadata i8 %95, metadata !827, metadata !DIExpression()) #33, !dbg !841
  call void @llvm.dbg.value(metadata i8 %95, metadata !806, metadata !DIExpression()) #33, !dbg !843
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #33, !dbg !846
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %3, metadata !828, metadata !DIExpression()) #33, !dbg !847
  store i32 0, i32* %49, align 4, !dbg !848, !tbaa !849
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50) #33, !dbg !851
  %112 = ptrtoint i8* %111 to i64, !dbg !852
  %113 = ptrtoint i8* %96 to i64, !dbg !852
  %114 = sub i64 %112, %113, !dbg !852
  call void @llvm.dbg.value(metadata i32* %4, metadata !839, metadata !DIExpression(DW_OP_deref)) #33, !dbg !841
  %115 = call i64 @mbrtoc32(i32* noundef nonnull %4, i8* noundef nonnull %96, i64 noundef %114, %struct.__mbstate_t* noundef nonnull %3) #33, !dbg !853
  call void @llvm.dbg.value(metadata i64 %115, metadata !840, metadata !DIExpression()) #33, !dbg !841
  %116 = icmp slt i64 %115, 0, !dbg !854
  br i1 %116, label %122, label %117, !dbg !856, !prof !857

117:                                              ; preds = %98
  %118 = load i32, i32* %4, align 4, !dbg !858, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %118, metadata !839, metadata !DIExpression()) #33, !dbg !841
  call void @llvm.dbg.value(metadata i32 %118, metadata !859, metadata !DIExpression()) #33, !dbg !865
  call void @llvm.dbg.value(metadata i64 %115, metadata !864, metadata !DIExpression()) #33, !dbg !865
  %119 = icmp ne i64 %115, 0, !dbg !867
  call void @llvm.assume(i1 %119) #33, !dbg !867
  %120 = icmp ult i64 %115, 5, !dbg !868
  call void @llvm.assume(i1 %120) #33, !dbg !868
  %121 = icmp ult i32 %118, 1114112, !dbg !869
  call void @llvm.assume(i1 %121) #33, !dbg !869
  br label %122, !dbg !870

122:                                              ; preds = %117, %98
  %123 = phi i64 [ %115, %117 ], [ 1, %98 ], !dbg !841
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #33, !dbg !871
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #33, !dbg !871
  br label %124

124:                                              ; preds = %122, %94
  %125 = phi i64 [ %123, %122 ], [ 1, %94 ], !dbg !805
  call void @llvm.dbg.value(metadata i64 %125, metadata !741, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)) #33, !dbg !782
  call void @llvm.dbg.value(metadata i64 %125, metadata !741, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !782
  call void @llvm.dbg.value(metadata i64 %125, metadata !741, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #33, !dbg !782
  call void @llvm.dbg.value(metadata i8* %56, metadata !872, metadata !DIExpression()) #33, !dbg !881
  call void @llvm.dbg.value(metadata i8* %96, metadata !879, metadata !DIExpression()) #33, !dbg !881
  call void @llvm.dbg.value(metadata i64 %125, metadata !880, metadata !DIExpression()) #33, !dbg !881
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %56, i8* noundef nonnull align 1 %96, i64 noundef %125, i1 noundef false) #33, !dbg !883
  %126 = getelementptr inbounds i8, i8* %56, i64 %125, !dbg !883
  call void @llvm.dbg.value(metadata i8* %126, metadata !737, metadata !DIExpression()) #33, !dbg !750
  %127 = getelementptr inbounds i8, i8* %96, i64 %125, !dbg !884
  call void @llvm.dbg.value(metadata i8* %127, metadata !739, metadata !DIExpression()) #33, !dbg !750
  %128 = load i64*, i64** @delim_lens, align 8, !dbg !885, !tbaa !474
  call void @llvm.dbg.value(metadata i64 %58, metadata !740, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #33, !dbg !750
  %129 = getelementptr inbounds i64, i64* %128, i64 %58, !dbg !885
  store i64 %125, i64* %129, align 8, !dbg !886, !tbaa !764
  br label %84, !dbg !759

130:                                              ; preds = %60
  call void @llvm.dbg.value(metadata i8 poison, metadata !738, metadata !DIExpression()) #33, !dbg !750
  store i8 0, i8* %56, align 1, !dbg !760, !tbaa !578
  %131 = icmp eq i64 %58, 0, !dbg !887
  br i1 %131, label %132, label %133, !dbg !888

132:                                              ; preds = %130
  store i64 0, i64* %52, align 8, !dbg !761, !tbaa !764
  call void @llvm.dbg.value(metadata i64 1, metadata !740, metadata !DIExpression()) #33, !dbg !750
  br label %133

133:                                              ; preds = %130, %132
  %134 = phi i64 [ 1, %132 ], [ %58, %130 ], !dbg !889
  store i64 %134, i64* @num_delims, align 8, !dbg !889, !tbaa !764
  %135 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #33, !dbg !890
  %136 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 6, i8* noundef nonnull %11) #33, !dbg !890
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %135, i8* noundef %136) #33, !dbg !890
  unreachable, !dbg !890

137:                                              ; preds = %46, %93
  %138 = phi i64 [ %90, %93 ], [ 1, %46 ], !dbg !889
  store i64 %138, i64* @num_delims, align 8, !dbg !889, !tbaa !764
  %139 = load i1, i1* @serial_merge, align 1, !dbg !892
  %140 = select i1 %139, i1 (i64, i8**)* @paste_serial, i1 (i64, i8**)* @paste_parallel, !dbg !892
  %141 = sext i32 %37 to i64, !dbg !893
  %142 = load i32, i32* @optind, align 4, !dbg !894, !tbaa !569
  %143 = sext i32 %142 to i64, !dbg !895
  %144 = getelementptr inbounds i8*, i8** %1, i64 %143, !dbg !895
  %145 = call i1 %140(i64 noundef %141, i8** noundef nonnull %144) #33, !dbg !896, !callees !897
  call void @llvm.dbg.value(metadata i1 %145, metadata !699, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !700
  %146 = load i8*, i8** @delims, align 8, !dbg !898, !tbaa !474
  call void @free(i8* noundef %146) #33, !dbg !899
  %147 = load i8*, i8** bitcast (i64** @delim_lens to i8**), align 8, !dbg !900, !tbaa !474
  call void @free(i8* noundef %147) #33, !dbg !901
  %148 = load i1, i1* @have_read_stdin, align 1, !dbg !902
  br i1 %148, label %149, label %156, !dbg !904

149:                                              ; preds = %137
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !905, !tbaa !474
  %151 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %150) #33, !dbg !906
  %152 = icmp eq i32 %151, -1, !dbg !907
  br i1 %152, label %153, label %156, !dbg !908

153:                                              ; preds = %149
  %154 = tail call i32* @__errno_location() #36, !dbg !909
  %155 = load i32, i32* %154, align 4, !dbg !909, !tbaa !569
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %155, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #33, !dbg !909
  unreachable, !dbg !909

156:                                              ; preds = %149, %137
  %157 = xor i1 %145, true, !dbg !910
  %158 = zext i1 %157 to i32, !dbg !910
  ret i32 %158, !dbg !911
}

; Function Attrs: nounwind
declare !dbg !912 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !915 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !916 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !919 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !925 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind uwtable
define internal i1 @paste_serial(i64 noundef %0, i8** nocapture noundef readonly %1) unnamed_addr #12 !dbg !932 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !936, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8** %1, metadata !937, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8 1, metadata !938, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8 poison, metadata !938, metadata !DIExpression()), !dbg !949
  %3 = icmp eq i64 %0, 0, !dbg !950
  br i1 %3, label %199, label %4, !dbg !950

4:                                                ; preds = %2, %194
  %5 = phi i64 [ %196, %194 ], [ %0, %2 ]
  %6 = phi i8** [ %197, %194 ], [ %1, %2 ]
  %7 = phi i1 [ %195, %194 ], [ true, %2 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !936, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8** %6, metadata !937, metadata !DIExpression()), !dbg !949
  %8 = load i8*, i8** %6, align 8, !dbg !951, !tbaa !474
  call void @llvm.dbg.value(metadata i8* %8, metadata !518, metadata !DIExpression()) #33, !dbg !952
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), metadata !524, metadata !DIExpression()) #33, !dbg !952
  %9 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %8, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #34, !dbg !954
  %10 = icmp eq i32 %9, 0, !dbg !955
  call void @llvm.dbg.value(metadata i1 %10, metadata !946, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !956
  br i1 %10, label %11, label %13, !dbg !957

11:                                               ; preds = %4
  store i1 true, i1* @have_read_stdin, align 1, !dbg !958
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !961, !tbaa !474
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !941, metadata !DIExpression()), !dbg !949
  br label %20, !dbg !962

13:                                               ; preds = %4
  %14 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0)) #33, !dbg !963
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !941, metadata !DIExpression()), !dbg !949
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !965
  br i1 %15, label %16, label %19, !dbg !967

16:                                               ; preds = %13
  %17 = tail call i32* @__errno_location() #36, !dbg !968
  %18 = load i32, i32* %17, align 4, !dbg !968, !tbaa !569
  call void @llvm.dbg.value(metadata i8 0, metadata !938, metadata !DIExpression()), !dbg !949
  br label %190, !dbg !970

19:                                               ; preds = %13
  tail call void @fadvise(%struct._IO_FILE* noundef nonnull %14, i32 noundef 2) #33, !dbg !971
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %19 ], !dbg !972
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, metadata !941, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i64 0, metadata !948, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, metadata !973, metadata !DIExpression()) #33, !dbg !979
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 1, !dbg !981
  %23 = load i8*, i8** %22, align 8, !dbg !981, !tbaa !982
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 2, !dbg !981
  %25 = load i8*, i8** %24, align 8, !dbg !981, !tbaa !984
  %26 = icmp ult i8* %23, %25, !dbg !981
  br i1 %26, label %27, label %32, !dbg !981, !prof !985

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !981
  store i8* %28, i8** %22, align 8, !dbg !981, !tbaa !982
  %29 = load i8, i8* %23, align 1, !dbg !981, !tbaa !578
  %30 = zext i8 %29 to i32, !dbg !981
  call void @llvm.dbg.value(metadata i32 %33, metadata !940, metadata !DIExpression()), !dbg !949
  %31 = tail call i32* @__errno_location() #36, !dbg !986
  call void @llvm.dbg.value(metadata i32 undef, metadata !942, metadata !DIExpression()), !dbg !956
  br label %36, !dbg !987

32:                                               ; preds = %20
  %33 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %21) #33, !dbg !981
  call void @llvm.dbg.value(metadata i32 %33, metadata !940, metadata !DIExpression()), !dbg !949
  %34 = tail call i32* @__errno_location() #36, !dbg !986
  call void @llvm.dbg.value(metadata i32 undef, metadata !942, metadata !DIExpression()), !dbg !956
  %35 = icmp eq i32 %33, -1, !dbg !988
  br i1 %35, label %39, label %36, !dbg !987

36:                                               ; preds = %27, %32
  %37 = phi i32* [ %31, %27 ], [ %34, %32 ]
  %38 = phi i32 [ %30, %27 ], [ %33, %32 ]
  br label %92, !dbg !990

39:                                               ; preds = %32
  %40 = load i32, i32* %34, align 4, !dbg !986, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %120, metadata !942, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 %45, metadata !940, metadata !DIExpression()), !dbg !949
  %41 = load i1, i1* @line_delim, align 1, !dbg !992
  %42 = select i1 %41, i8 0, i8 10, !dbg !992
  %43 = zext i8 %42 to i32, !dbg !992
  br label %147, !dbg !994

44:                                               ; preds = %110, %92
  %45 = phi i32 [ %93, %92 ], [ %57, %110 ], !dbg !956
  call void @llvm.dbg.value(metadata i64 %95, metadata !948, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i64 %94, metadata !947, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 %45, metadata !940, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, metadata !973, metadata !DIExpression()) #33, !dbg !995
  %46 = load i8*, i8** %22, align 8, !dbg !997, !tbaa !982
  %47 = load i8*, i8** %24, align 8, !dbg !997, !tbaa !984
  %48 = icmp ult i8* %46, %47, !dbg !997
  br i1 %48, label %49, label %53, !dbg !997, !prof !985

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !997
  store i8* %50, i8** %22, align 8, !dbg !997, !tbaa !982
  %51 = load i8, i8* %46, align 1, !dbg !997, !tbaa !578
  %52 = zext i8 %51 to i32, !dbg !997
  call void @llvm.dbg.value(metadata i32 %54, metadata !939, metadata !DIExpression()), !dbg !949
  br label %56, !dbg !990

53:                                               ; preds = %44
  %54 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %21) #33, !dbg !997
  call void @llvm.dbg.value(metadata i32 %54, metadata !939, metadata !DIExpression()), !dbg !949
  %55 = icmp eq i32 %54, -1, !dbg !998
  br i1 %55, label %119, label %56, !dbg !990

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %52, %49 ], [ %54, %53 ]
  %58 = load i1, i1* @line_delim, align 1, !dbg !999
  %59 = select i1 %58, i32 0, i32 10, !dbg !999
  %60 = icmp eq i32 %45, %59, !dbg !1002
  br i1 %60, label %61, label %96, !dbg !1003

61:                                               ; preds = %56
  %62 = load i64*, i64** @delim_lens, align 8, !dbg !1004, !tbaa !474
  %63 = getelementptr inbounds i64, i64* %62, i64 %94, !dbg !1004
  %64 = load i64, i64* %63, align 8, !dbg !1004, !tbaa !764
  call void @llvm.dbg.value(metadata !DIArgList(i8* undef, i64 %95), metadata !1006, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #33, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %64, metadata !1011, metadata !DIExpression()) #33, !dbg !1017
  %65 = icmp eq i64 %64, 0, !dbg !1019
  br i1 %65, label %84, label %66, !dbg !1020

66:                                               ; preds = %61
  %67 = load i8*, i8** @delims, align 8, !dbg !1021, !tbaa !474
  call void @llvm.dbg.value(metadata !DIArgList(i8* %67, i64 %95), metadata !1006, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #33, !dbg !1017
  %68 = getelementptr inbounds i8, i8* %67, i64 %95, !dbg !1022
  call void @llvm.dbg.value(metadata i8* %68, metadata !1006, metadata !DIExpression()) #33, !dbg !1017
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1023, !tbaa !474
  %70 = tail call i64 @fwrite_unlocked(i8* noundef %68, i64 noundef 1, i64 noundef %64, %struct._IO_FILE* noundef %69) #33, !dbg !1024
  %71 = icmp eq i64 %70, %64, !dbg !1025
  br i1 %71, label %72, label %76, !dbg !1026

72:                                               ; preds = %66
  %73 = load i64*, i64** @delim_lens, align 8, !dbg !1027, !tbaa !474
  %74 = getelementptr inbounds i64, i64* %73, i64 %94
  %75 = load i64, i64* %74, align 8, !dbg !1027, !tbaa !764
  br label %84, !dbg !1026

76:                                               ; preds = %66
  %77 = load i32, i32* %37, align 4, !dbg !1028, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %77, metadata !1031, metadata !DIExpression()) #33, !dbg !1033
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1034, !tbaa !474
  %79 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %78) #33, !dbg !1034
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1035, !tbaa !474
  %81 = tail call i32 @fpurge(%struct._IO_FILE* noundef %80) #33, !dbg !1036
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1037, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %82) #33, !dbg !1037
  %83 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1038
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %77, i8* noundef %83) #33, !dbg !1038
  unreachable, !dbg !1038

84:                                               ; preds = %72, %61
  %85 = phi i64 [ %75, %72 ], [ 0, %61 ], !dbg !1027
  %86 = add i64 %85, %95, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %86, metadata !948, metadata !DIExpression()), !dbg !956
  %87 = add nsw i64 %94, 1, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %87, metadata !947, metadata !DIExpression()), !dbg !956
  %88 = load i64, i64* @num_delims, align 8, !dbg !1042, !tbaa !764
  %89 = icmp eq i64 %87, %88, !dbg !1043
  %90 = select i1 %89, i64 0, i64 %87, !dbg !1044
  %91 = select i1 %89, i64 0, i64 %86, !dbg !1044
  br label %92, !dbg !1044, !llvm.loop !1045

92:                                               ; preds = %84, %36
  %93 = phi i32 [ %57, %84 ], [ %38, %36 ]
  %94 = phi i64 [ %90, %84 ], [ 0, %36 ]
  %95 = phi i64 [ %91, %84 ], [ 0, %36 ]
  br label %44, !dbg !990

96:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i32 %45, metadata !1047, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1052
  call void @llvm.dbg.value(metadata i32 %45, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1059
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1062, !tbaa !474
  %98 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %97, i64 0, i32 5, !dbg !1062
  %99 = load i8*, i8** %98, align 8, !dbg !1062, !tbaa !1063
  %100 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %97, i64 0, i32 6, !dbg !1062
  %101 = load i8*, i8** %100, align 8, !dbg !1062, !tbaa !1064
  %102 = icmp ult i8* %99, %101, !dbg !1062
  br i1 %102, label %103, label %106, !dbg !1062, !prof !985

103:                                              ; preds = %96
  %104 = trunc i32 %45 to i8, !dbg !1065
  call void @llvm.dbg.value(metadata i8 %104, metadata !1047, metadata !DIExpression()) #33, !dbg !1052
  call void @llvm.dbg.value(metadata i8 %104, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1059
  %105 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !1062
  store i8* %105, i8** %98, align 8, !dbg !1062, !tbaa !1063
  store i8 %104, i8* %99, align 1, !dbg !1062, !tbaa !578
  br label %110, !dbg !1066

106:                                              ; preds = %96
  %107 = and i32 %45, 255, !dbg !1067
  call void @llvm.dbg.value(metadata i32 %107, metadata !1054, metadata !DIExpression()) #33, !dbg !1059
  %108 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %97, i32 noundef %107) #33, !dbg !1062
  %109 = icmp slt i32 %108, 0, !dbg !1068
  br i1 %109, label %111, label %110, !dbg !1066

110:                                              ; preds = %106, %103
  br label %44, !dbg !956, !llvm.loop !1045

111:                                              ; preds = %106
  %112 = load i32, i32* %37, align 4, !dbg !1069, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %112, metadata !1031, metadata !DIExpression()) #33, !dbg !1071
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1072, !tbaa !474
  %114 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %113) #33, !dbg !1072
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1073, !tbaa !474
  %116 = tail call i32 @fpurge(%struct._IO_FILE* noundef %115) #33, !dbg !1074
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1075, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %117) #33, !dbg !1075
  %118 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1076
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %112, i8* noundef %118) #33, !dbg !1076
  unreachable, !dbg !1076

119:                                              ; preds = %53
  %120 = load i32, i32* %37, align 4, !dbg !1077, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %120, metadata !942, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 %45, metadata !1047, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1078
  call void @llvm.dbg.value(metadata i32 %45, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1080
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1082, !tbaa !474
  %122 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %121, i64 0, i32 5, !dbg !1082
  %123 = load i8*, i8** %122, align 8, !dbg !1082, !tbaa !1063
  %124 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %121, i64 0, i32 6, !dbg !1082
  %125 = load i8*, i8** %124, align 8, !dbg !1082, !tbaa !1064
  %126 = icmp ult i8* %123, %125, !dbg !1082
  br i1 %126, label %127, label %130, !dbg !1082, !prof !985

127:                                              ; preds = %119
  %128 = trunc i32 %45 to i8, !dbg !1083
  call void @llvm.dbg.value(metadata i8 %128, metadata !1047, metadata !DIExpression()) #33, !dbg !1078
  call void @llvm.dbg.value(metadata i8 %128, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1080
  %129 = getelementptr inbounds i8, i8* %123, i64 1, !dbg !1082
  store i8* %129, i8** %122, align 8, !dbg !1082, !tbaa !1063
  store i8 %128, i8* %123, align 1, !dbg !1082, !tbaa !578
  br label %142, !dbg !1084

130:                                              ; preds = %119
  %131 = and i32 %45, 255, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %131, metadata !1054, metadata !DIExpression()) #33, !dbg !1080
  %132 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %121, i32 noundef %131) #33, !dbg !1082
  %133 = icmp slt i32 %132, 0, !dbg !1086
  br i1 %133, label %134, label %142, !dbg !1084

134:                                              ; preds = %130
  %135 = load i32, i32* %37, align 4, !dbg !1087, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %135, metadata !1031, metadata !DIExpression()) #33, !dbg !1089
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1090, !tbaa !474
  %137 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %136) #33, !dbg !1090
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1091, !tbaa !474
  %139 = tail call i32 @fpurge(%struct._IO_FILE* noundef %138) #33, !dbg !1092
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1093, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %140) #33, !dbg !1093
  %141 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1094
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %135, i8* noundef %141) #33, !dbg !1094
  unreachable, !dbg !1094

142:                                              ; preds = %130, %127
  call void @llvm.dbg.value(metadata i32 %120, metadata !942, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 undef, metadata !940, metadata !DIExpression()), !dbg !949
  %143 = load i1, i1* @line_delim, align 1, !dbg !992
  %144 = select i1 %143, i8 0, i8 10, !dbg !992
  %145 = zext i8 %144 to i32, !dbg !992
  %146 = icmp eq i32 %45, %145, !dbg !1095
  br i1 %146, label %171, label %147, !dbg !994

147:                                              ; preds = %39, %142
  %148 = phi i32* [ %34, %39 ], [ %37, %142 ]
  %149 = phi i32 [ %43, %39 ], [ %145, %142 ]
  %150 = phi i8 [ %42, %39 ], [ %144, %142 ]
  %151 = phi i32 [ %40, %39 ], [ %120, %142 ]
  call void @llvm.dbg.value(metadata i8 %144, metadata !1047, metadata !DIExpression()) #33, !dbg !1096
  call void @llvm.dbg.value(metadata i8 %144, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1098
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1100, !tbaa !474
  %153 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %152, i64 0, i32 5, !dbg !1100
  %154 = load i8*, i8** %153, align 8, !dbg !1100, !tbaa !1063
  %155 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %152, i64 0, i32 6, !dbg !1100
  %156 = load i8*, i8** %155, align 8, !dbg !1100, !tbaa !1064
  %157 = icmp ult i8* %154, %156, !dbg !1100
  br i1 %157, label %158, label %160, !dbg !1100, !prof !985

158:                                              ; preds = %147
  %159 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !1100
  store i8* %159, i8** %153, align 8, !dbg !1100, !tbaa !1063
  store i8 %150, i8* %154, align 1, !dbg !1100, !tbaa !578
  br label %171, !dbg !1101

160:                                              ; preds = %147
  call void @llvm.dbg.value(metadata i32 %145, metadata !1054, metadata !DIExpression()) #33, !dbg !1098
  %161 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %152, i32 noundef %149) #33, !dbg !1100
  %162 = icmp slt i32 %161, 0, !dbg !1102
  br i1 %162, label %163, label %171, !dbg !1101

163:                                              ; preds = %160
  %164 = load i32, i32* %148, align 4, !dbg !1103, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %164, metadata !1031, metadata !DIExpression()) #33, !dbg !1105
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1106, !tbaa !474
  %166 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %165) #33, !dbg !1106
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1107, !tbaa !474
  %168 = tail call i32 @fpurge(%struct._IO_FILE* noundef %167) #33, !dbg !1108
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1109, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %169) #33, !dbg !1109
  %170 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1110
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %164, i8* noundef %170) #33, !dbg !1110
  unreachable, !dbg !1110

171:                                              ; preds = %160, %158, %142
  %172 = phi i32* [ %37, %142 ], [ %148, %158 ], [ %148, %160 ]
  %173 = phi i32 [ %120, %142 ], [ %151, %158 ], [ %151, %160 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, metadata !1111, metadata !DIExpression()), !dbg !1114
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 0, !dbg !1117
  %175 = load i32, i32* %174, align 8, !dbg !1117, !tbaa !1118
  %176 = and i32 %175, 32, !dbg !1119
  %177 = icmp eq i32 %176, 0, !dbg !1119
  %178 = select i1 %177, i32 0, i32 %173, !dbg !1120
  call void @llvm.dbg.value(metadata i32 %178, metadata !942, metadata !DIExpression()), !dbg !956
  br i1 %10, label %179, label %180, !dbg !1121

179:                                              ; preds = %171
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef nonnull %21) #33, !dbg !1122
  br label %187, !dbg !1122

180:                                              ; preds = %171
  %181 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %21) #33, !dbg !1124
  %182 = icmp eq i32 %181, 0, !dbg !1126
  %183 = icmp ne i32 %178, 0
  %184 = select i1 %182, i1 true, i1 %183, !dbg !1127
  br i1 %184, label %187, label %185, !dbg !1127

185:                                              ; preds = %180
  %186 = load i32, i32* %172, align 4, !dbg !1128, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %186, metadata !942, metadata !DIExpression()), !dbg !956
  br label %187, !dbg !1129

187:                                              ; preds = %180, %185, %179
  %188 = phi i32 [ %178, %179 ], [ %178, %180 ], [ %186, %185 ], !dbg !956
  call void @llvm.dbg.value(metadata i32 %188, metadata !942, metadata !DIExpression()), !dbg !956
  %189 = icmp eq i32 %188, 0, !dbg !1130
  br i1 %189, label %194, label %190, !dbg !1132

190:                                              ; preds = %187, %16
  %191 = phi i32 [ %18, %16 ], [ %188, %187 ]
  %192 = load i8*, i8** %6, align 8, !dbg !956, !tbaa !474
  %193 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %192) #33, !dbg !956
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %191, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0), i8* noundef %193) #33, !dbg !956
  br label %194, !dbg !1133

194:                                              ; preds = %190, %187
  %195 = phi i1 [ %7, %187 ], [ false, %190 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !938, metadata !DIExpression()), !dbg !949
  %196 = add i64 %5, -1, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %196, metadata !936, metadata !DIExpression()), !dbg !949
  %197 = getelementptr inbounds i8*, i8** %6, i64 1, !dbg !1134
  call void @llvm.dbg.value(metadata i8** %197, metadata !937, metadata !DIExpression()), !dbg !949
  %198 = icmp eq i64 %196, 0, !dbg !950
  br i1 %198, label %199, label %4, !dbg !950, !llvm.loop !1135

199:                                              ; preds = %194, %2
  %200 = phi i1 [ true, %2 ], [ %195, %194 ]
  ret i1 %200, !dbg !1137
}

; Function Attrs: nounwind uwtable
define internal i1 @paste_parallel(i64 noundef %0, i8** nocapture noundef readonly %1) unnamed_addr #12 !dbg !1138 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1140, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8** %1, metadata !1141, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 1, metadata !1142, metadata !DIExpression()), !dbg !1188
  %3 = add i64 %0, -1, !dbg !1189
  %4 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !1190
  %5 = mul i64 %4, %3, !dbg !1191
  %6 = add i64 %5, 1, !dbg !1192
  %7 = tail call noalias nonnull i8* @xmalloc(i64 noundef %6) #39, !dbg !1193
  call void @llvm.dbg.value(metadata i8* %7, metadata !1143, metadata !DIExpression()), !dbg !1188
  %8 = add i64 %0, 1, !dbg !1194
  %9 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %8, i64 noundef 8) #38, !dbg !1195
  %10 = bitcast i8* %9 to %struct._IO_FILE**, !dbg !1195
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %10, metadata !1144, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 0, metadata !1147, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 0, metadata !1146, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 poison, metadata !1147, metadata !DIExpression()), !dbg !1188
  %11 = icmp eq i64 %0, 0, !dbg !1196
  br i1 %11, label %331, label %12, !dbg !1199

12:                                               ; preds = %2, %36
  %13 = phi i64 [ %38, %36 ], [ 0, %2 ]
  %14 = phi i1 [ %37, %36 ], [ false, %2 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !1146, metadata !DIExpression()), !dbg !1188
  %15 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !1200
  %16 = load i8*, i8** %15, align 8, !dbg !1200, !tbaa !474
  call void @llvm.dbg.value(metadata i8* %16, metadata !518, metadata !DIExpression()) #33, !dbg !1203
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), metadata !524, metadata !DIExpression()) #33, !dbg !1203
  %17 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %16, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #34, !dbg !1205
  %18 = icmp eq i32 %17, 0, !dbg !1206
  br i1 %18, label %19, label %22, !dbg !1207

19:                                               ; preds = %12
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1208
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1210, !tbaa !474
  %21 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %10, i64 %13, !dbg !1211
  store %struct._IO_FILE* %20, %struct._IO_FILE** %21, align 8, !dbg !1212, !tbaa !474
  br label %36, !dbg !1213

22:                                               ; preds = %12
  %23 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0)) #33, !dbg !1214
  %24 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %10, i64 %13, !dbg !1216
  store %struct._IO_FILE* %23, %struct._IO_FILE** %24, align 8, !dbg !1217, !tbaa !474
  %25 = icmp eq %struct._IO_FILE* %23, null, !dbg !1218
  br i1 %25, label %26, label %32, !dbg !1220

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !1200
  %28 = tail call i32* @__errno_location() #36, !dbg !1221
  %29 = load i32, i32* %28, align 4, !dbg !1221, !tbaa !569
  %30 = load i8*, i8** %27, align 8, !dbg !1221, !tbaa !474
  %31 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %30) #33, !dbg !1221
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %29, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0), i8* noundef %31) #33, !dbg !1221
  unreachable, !dbg !1221

32:                                               ; preds = %22
  %33 = tail call i32 @fileno_unlocked(%struct._IO_FILE* noundef nonnull %23) #33, !dbg !1222
  %34 = icmp eq i32 %33, 0, !dbg !1224
  %35 = select i1 %34, i1 true, i1 %14, !dbg !1225
  call void @llvm.dbg.value(metadata i8 poison, metadata !1147, metadata !DIExpression()), !dbg !1188
  tail call void @fadvise(%struct._IO_FILE* noundef nonnull %23, i32 noundef 2) #33, !dbg !1226
  br label %36

36:                                               ; preds = %19, %32
  %37 = phi i1 [ %14, %19 ], [ %35, %32 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1147, metadata !DIExpression()), !dbg !1188
  %38 = add nuw i64 %13, 1, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %38, metadata !1146, metadata !DIExpression()), !dbg !1188
  %39 = icmp eq i64 %38, %0, !dbg !1196
  br i1 %39, label %40, label %12, !dbg !1199, !llvm.loop !1228

40:                                               ; preds = %36
  br i1 %37, label %42, label %41, !dbg !1230

41:                                               ; preds = %42, %40
  br label %50, !dbg !1232

42:                                               ; preds = %40
  %43 = load i1, i1* @have_read_stdin, align 1, !dbg !1233
  br i1 %43, label %44, label %41, !dbg !1234

44:                                               ; preds = %42
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #33, !dbg !1235
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %45) #33, !dbg !1235
  unreachable, !dbg !1235

46:                                               ; preds = %320, %173, %198, %200, %50
  %47 = phi i64 [ %52, %50 ], [ %169, %200 ], [ %169, %198 ], [ %169, %173 ], [ %326, %320 ], !dbg !1236
  %48 = phi i1 [ %51, %50 ], [ %170, %200 ], [ %170, %198 ], [ %170, %173 ], [ %327, %320 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1142, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %47, metadata !1146, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 undef, metadata !1158, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 undef, metadata !1155, metadata !DIExpression()), !dbg !1237
  %49 = icmp eq i64 %47, 0, !dbg !1232
  br i1 %49, label %331, label %50, !dbg !1232, !llvm.loop !1238

50:                                               ; preds = %41, %46
  %51 = phi i1 [ %48, %46 ], [ true, %41 ]
  %52 = phi i64 [ %47, %46 ], [ %0, %41 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1142, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %52, metadata !1146, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 poison, metadata !1148, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 0, metadata !1150, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 0, metadata !1151, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 undef, metadata !1158, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 undef, metadata !1155, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 0, metadata !1153, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 0, metadata !1152, metadata !DIExpression()), !dbg !1240
  br i1 %11, label %46, label %53, !dbg !1242

53:                                               ; preds = %50, %320
  %54 = phi i1 [ %327, %320 ], [ %51, %50 ]
  %55 = phi i64 [ %326, %320 ], [ %52, %50 ]
  %56 = phi i1 [ %325, %320 ], [ false, %50 ]
  %57 = phi i64 [ %324, %320 ], [ 0, %50 ]
  %58 = phi i64 [ %323, %320 ], [ 0, %50 ]
  %59 = phi i64 [ %321, %320 ], [ 0, %50 ]
  %60 = phi i64 [ %322, %320 ], [ 0, %50 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !1146, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %57, metadata !1150, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %58, metadata !1151, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 undef, metadata !1158, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 undef, metadata !1155, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %59, metadata !1153, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %60, metadata !1152, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8 0, metadata !1159, metadata !DIExpression()), !dbg !1237
  %61 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %10, i64 %59, !dbg !1243
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %61, align 8, !dbg !1243, !tbaa !474
  %63 = icmp eq %struct._IO_FILE* %62, null, !dbg !1243
  br i1 %63, label %167, label %64, !dbg !1244

64:                                               ; preds = %53
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !973, metadata !DIExpression()) #33, !dbg !1245
  %65 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %62, i64 0, i32 1, !dbg !1247
  %66 = load i8*, i8** %65, align 8, !dbg !1247, !tbaa !982
  %67 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %62, i64 0, i32 2, !dbg !1247
  %68 = load i8*, i8** %67, align 8, !dbg !1247, !tbaa !984
  %69 = icmp ult i8* %66, %68, !dbg !1247
  br i1 %69, label %72, label %70, !dbg !1247, !prof !985

70:                                               ; preds = %64
  %71 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %62) #33, !dbg !1247
  br label %76, !dbg !1247

72:                                               ; preds = %64
  %73 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1247
  store i8* %73, i8** %65, align 8, !dbg !1247, !tbaa !982
  %74 = load i8, i8* %66, align 1, !dbg !1247, !tbaa !578
  %75 = zext i8 %74 to i32, !dbg !1247
  br label %76, !dbg !1247

76:                                               ; preds = %70, %72
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !1247
  call void @llvm.dbg.value(metadata i32 %77, metadata !1155, metadata !DIExpression()), !dbg !1237
  %78 = tail call i32* @__errno_location() #36, !dbg !1248
  %79 = load i32, i32* %78, align 4, !dbg !1248, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %79, metadata !1158, metadata !DIExpression()), !dbg !1237
  %80 = icmp ne i32 %77, -1, !dbg !1249
  %81 = icmp ne i64 %60, 0
  %82 = select i1 %80, i1 %81, i1 false, !dbg !1250
  br i1 %82, label %83, label %95, !dbg !1250

83:                                               ; preds = %76
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1251, !tbaa !474
  %85 = tail call i64 @fwrite_unlocked(i8* noundef nonnull %7, i64 noundef 1, i64 noundef %60, %struct._IO_FILE* noundef %84), !dbg !1252
  %86 = icmp eq i64 %85, %60, !dbg !1253
  br i1 %86, label %95, label %87, !dbg !1254

87:                                               ; preds = %83
  %88 = load i32, i32* %78, align 4, !dbg !1255, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %88, metadata !1031, metadata !DIExpression()) #33, !dbg !1257
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1258, !tbaa !474
  %90 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %89) #33, !dbg !1258
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1259, !tbaa !474
  %92 = tail call i32 @fpurge(%struct._IO_FILE* noundef %91) #33, !dbg !1260
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1261, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %93) #33, !dbg !1261
  %94 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1262
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %88, i8* noundef %94) #33, !dbg !1262
  unreachable, !dbg !1262

95:                                               ; preds = %83, %76
  %96 = phi i64 [ %60, %76 ], [ 0, %83 ], !dbg !1240
  call void @llvm.dbg.value(metadata i64 %96, metadata !1152, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8 undef, metadata !1159, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 %79, metadata !1158, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 %77, metadata !1155, metadata !DIExpression()), !dbg !1237
  %97 = icmp eq i32 %77, -1, !dbg !1263
  br i1 %97, label %140, label %98, !dbg !1264

98:                                               ; preds = %95, %135
  %99 = phi i32 [ %136, %135 ], [ %77, %95 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1158, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 %99, metadata !1155, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1159, metadata !DIExpression()), !dbg !1237
  %100 = load i1, i1* @line_delim, align 1, !dbg !1265
  %101 = select i1 %100, i32 0, i32 10, !dbg !1265
  %102 = icmp eq i32 %99, %101, !dbg !1268
  br i1 %102, label %231, label %103, !dbg !1269

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i32 %99, metadata !1047, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1270
  call void @llvm.dbg.value(metadata i32 %99, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1272
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1274, !tbaa !474
  %105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 5, !dbg !1274
  %106 = load i8*, i8** %105, align 8, !dbg !1274, !tbaa !1063
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 6, !dbg !1274
  %108 = load i8*, i8** %107, align 8, !dbg !1274, !tbaa !1064
  %109 = icmp ult i8* %106, %108, !dbg !1274
  br i1 %109, label %110, label %113, !dbg !1274, !prof !985

110:                                              ; preds = %103
  %111 = trunc i32 %99 to i8, !dbg !1275
  call void @llvm.dbg.value(metadata i8 %111, metadata !1047, metadata !DIExpression()) #33, !dbg !1270
  call void @llvm.dbg.value(metadata i8 %111, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1272
  %112 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1274
  store i8* %112, i8** %105, align 8, !dbg !1274, !tbaa !1063
  store i8 %111, i8* %106, align 1, !dbg !1274, !tbaa !578
  br label %125, !dbg !1276

113:                                              ; preds = %103
  %114 = and i32 %99, 255, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %114, metadata !1054, metadata !DIExpression()) #33, !dbg !1272
  %115 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %104, i32 noundef %114) #33, !dbg !1274
  %116 = icmp slt i32 %115, 0, !dbg !1278
  br i1 %116, label %117, label %125, !dbg !1276

117:                                              ; preds = %113
  %118 = load i32, i32* %78, align 4, !dbg !1279, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %118, metadata !1031, metadata !DIExpression()) #33, !dbg !1281
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1282, !tbaa !474
  %120 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %119) #33, !dbg !1282
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1283, !tbaa !474
  %122 = tail call i32 @fpurge(%struct._IO_FILE* noundef %121) #33, !dbg !1284
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1285, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %123) #33, !dbg !1285
  %124 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1286
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %118, i8* noundef %124) #33, !dbg !1286
  unreachable, !dbg !1286

125:                                              ; preds = %110, %113
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !973, metadata !DIExpression()) #33, !dbg !1287
  %126 = load i8*, i8** %65, align 8, !dbg !1289, !tbaa !982
  %127 = load i8*, i8** %67, align 8, !dbg !1289, !tbaa !984
  %128 = icmp ult i8* %126, %127, !dbg !1289
  br i1 %128, label %131, label %129, !dbg !1289, !prof !985

129:                                              ; preds = %125
  %130 = tail call i32 @__uflow(%struct._IO_FILE* noundef nonnull %62) #33, !dbg !1289
  br label %135, !dbg !1289

131:                                              ; preds = %125
  %132 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1289
  store i8* %132, i8** %65, align 8, !dbg !1289, !tbaa !982
  %133 = load i8, i8* %126, align 1, !dbg !1289, !tbaa !578
  %134 = zext i8 %133 to i32, !dbg !1289
  br label %135, !dbg !1289

135:                                              ; preds = %129, %131
  %136 = phi i32 [ %130, %129 ], [ %134, %131 ], !dbg !1289
  call void @llvm.dbg.value(metadata i32 %136, metadata !1155, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 undef, metadata !1159, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 undef, metadata !1158, metadata !DIExpression()), !dbg !1237
  %137 = icmp eq i32 %136, -1, !dbg !1263
  br i1 %137, label %138, label %98, !dbg !1264, !llvm.loop !1290

138:                                              ; preds = %135
  %139 = load i32, i32* %78, align 4, !dbg !1292, !tbaa !569
  call void @llvm.dbg.value(metadata i8 poison, metadata !1159, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 %139, metadata !1158, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 -1, metadata !1155, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %96, metadata !1152, metadata !DIExpression()), !dbg !1240
  br i1 %97, label %140, label %231, !dbg !1293

140:                                              ; preds = %95, %138
  %141 = phi i32 [ %139, %138 ], [ %79, %95 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !1111, metadata !DIExpression()), !dbg !1294
  %142 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %62, i64 0, i32 0, !dbg !1299
  %143 = load i32, i32* %142, align 8, !dbg !1299, !tbaa !1118
  %144 = and i32 %143, 32, !dbg !1300
  %145 = icmp eq i32 %144, 0, !dbg !1300
  %146 = select i1 %145, i32 0, i32 %141, !dbg !1301
  call void @llvm.dbg.value(metadata i32 %146, metadata !1158, metadata !DIExpression()), !dbg !1237
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1302, !tbaa !474
  %148 = icmp eq %struct._IO_FILE* %62, %147, !dbg !1304
  br i1 %148, label %149, label %150, !dbg !1305

149:                                              ; preds = %140
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef nonnull %62) #33, !dbg !1306
  br label %157, !dbg !1306

150:                                              ; preds = %140
  %151 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %62) #33, !dbg !1307
  %152 = icmp ne i32 %151, -1, !dbg !1309
  %153 = icmp ne i32 %146, 0
  %154 = select i1 %152, i1 true, i1 %153, !dbg !1310
  br i1 %154, label %157, label %155, !dbg !1310

155:                                              ; preds = %150
  %156 = load i32, i32* %78, align 4, !dbg !1311, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %156, metadata !1158, metadata !DIExpression()), !dbg !1237
  br label %157, !dbg !1312

157:                                              ; preds = %150, %155, %149
  %158 = phi i32 [ %146, %149 ], [ %146, %150 ], [ %156, %155 ], !dbg !1237
  call void @llvm.dbg.value(metadata i32 %158, metadata !1158, metadata !DIExpression()), !dbg !1237
  %159 = icmp eq i32 %158, 0, !dbg !1313
  br i1 %159, label %164, label %160, !dbg !1315

160:                                              ; preds = %157
  %161 = getelementptr inbounds i8*, i8** %1, i64 %59, !dbg !1316
  %162 = load i8*, i8** %161, align 8, !dbg !1316, !tbaa !474
  %163 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %162) #33, !dbg !1316
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %158, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0), i8* noundef %163) #33, !dbg !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1142, metadata !DIExpression()), !dbg !1188
  br label %164, !dbg !1318

164:                                              ; preds = %160, %157
  %165 = phi i1 [ false, %160 ], [ %54, %157 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1142, metadata !DIExpression()), !dbg !1188
  store %struct._IO_FILE* null, %struct._IO_FILE** %61, align 8, !dbg !1319, !tbaa !474
  %166 = add i64 %55, -1, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %166, metadata !1146, metadata !DIExpression()), !dbg !1188
  br label %167, !dbg !1321

167:                                              ; preds = %53, %164
  %168 = phi i64 [ %96, %164 ], [ %60, %53 ]
  %169 = phi i64 [ %166, %164 ], [ %55, %53 ], !dbg !1188
  %170 = phi i1 [ %165, %164 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1142, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %169, metadata !1146, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 undef, metadata !1158, metadata !DIExpression()), !dbg !1237
  %171 = add nuw i64 %59, 1, !dbg !1322
  %172 = icmp eq i64 %171, %0, !dbg !1323
  br i1 %172, label %173, label %213, !dbg !1324

173:                                              ; preds = %167
  br i1 %56, label %174, label %46, !dbg !1325

174:                                              ; preds = %173
  %175 = icmp eq i64 %168, 0, !dbg !1326
  br i1 %175, label %189, label %176, !dbg !1327

176:                                              ; preds = %174
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1328, !tbaa !474
  %178 = tail call i64 @fwrite_unlocked(i8* noundef nonnull %7, i64 noundef 1, i64 noundef %168, %struct._IO_FILE* noundef %177), !dbg !1329
  %179 = icmp eq i64 %178, %168, !dbg !1330
  br i1 %179, label %189, label %180, !dbg !1331

180:                                              ; preds = %176
  %181 = tail call i32* @__errno_location() #36, !dbg !1332
  %182 = load i32, i32* %181, align 4, !dbg !1332, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %182, metadata !1031, metadata !DIExpression()) #33, !dbg !1334
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1335, !tbaa !474
  %184 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %183) #33, !dbg !1335
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1336, !tbaa !474
  %186 = tail call i32 @fpurge(%struct._IO_FILE* noundef %185) #33, !dbg !1337
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1338, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %187) #33, !dbg !1338
  %188 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1339
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %182, i8* noundef %188) #33, !dbg !1339
  unreachable, !dbg !1339

189:                                              ; preds = %176, %174
  call void @llvm.dbg.value(metadata i64 0, metadata !1152, metadata !DIExpression()), !dbg !1240
  %190 = load i1, i1* @line_delim, align 1, !dbg !1340
  %191 = select i1 %190, i8 0, i8 10, !dbg !1340
  call void @llvm.dbg.value(metadata i8 %191, metadata !1047, metadata !DIExpression()) #33, !dbg !1341
  call void @llvm.dbg.value(metadata i8 %191, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1343
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1345, !tbaa !474
  %193 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %192, i64 0, i32 5, !dbg !1345
  %194 = load i8*, i8** %193, align 8, !dbg !1345, !tbaa !1063
  %195 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %192, i64 0, i32 6, !dbg !1345
  %196 = load i8*, i8** %195, align 8, !dbg !1345, !tbaa !1064
  %197 = icmp ult i8* %194, %196, !dbg !1345
  br i1 %197, label %198, label %200, !dbg !1345, !prof !985

198:                                              ; preds = %189
  %199 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !1345
  store i8* %199, i8** %193, align 8, !dbg !1345, !tbaa !1063
  store i8 %191, i8* %194, align 1, !dbg !1345, !tbaa !578
  br label %46, !dbg !1346

200:                                              ; preds = %189
  %201 = zext i8 %191 to i32, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %201, metadata !1054, metadata !DIExpression()) #33, !dbg !1343
  %202 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %192, i32 noundef %201) #33, !dbg !1345
  %203 = icmp slt i32 %202, 0, !dbg !1348
  br i1 %203, label %204, label %46, !dbg !1346

204:                                              ; preds = %200
  %205 = tail call i32* @__errno_location() #36, !dbg !1349
  %206 = load i32, i32* %205, align 4, !dbg !1349, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %206, metadata !1031, metadata !DIExpression()) #33, !dbg !1351
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1352, !tbaa !474
  %208 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %207) #33, !dbg !1352
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1353, !tbaa !474
  %210 = tail call i32 @fpurge(%struct._IO_FILE* noundef %209) #33, !dbg !1354
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1355, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %211) #33, !dbg !1355
  %212 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1356
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %206, i8* noundef %212) #33, !dbg !1356
  unreachable, !dbg !1356

213:                                              ; preds = %167
  %214 = load i64*, i64** @delim_lens, align 8, !dbg !1357, !tbaa !474
  %215 = getelementptr inbounds i64, i64* %214, i64 %57, !dbg !1357
  %216 = load i64, i64* %215, align 8, !dbg !1357, !tbaa !764
  call void @llvm.dbg.value(metadata i64 %216, metadata !1182, metadata !DIExpression()), !dbg !1358
  %217 = icmp eq i64 %216, 0, !dbg !1359
  br i1 %217, label %223, label %218, !dbg !1361

218:                                              ; preds = %213
  %219 = getelementptr inbounds i8, i8* %7, i64 %168, !dbg !1362
  %220 = load i8*, i8** @delims, align 8, !dbg !1364, !tbaa !474
  %221 = getelementptr inbounds i8, i8* %220, i64 %58, !dbg !1365
  call void @llvm.dbg.value(metadata i8* %219, metadata !1366, metadata !DIExpression()) #33, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %221, metadata !1369, metadata !DIExpression()) #33, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %216, metadata !1370, metadata !DIExpression()) #33, !dbg !1371
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %219, i8* noundef nonnull align 1 %221, i64 noundef %216, i1 noundef false) #33, !dbg !1373
  %222 = add i64 %216, %168, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %222, metadata !1152, metadata !DIExpression()), !dbg !1240
  br label %223, !dbg !1375

223:                                              ; preds = %218, %213
  %224 = phi i64 [ %222, %218 ], [ %168, %213 ], !dbg !1237
  call void @llvm.dbg.value(metadata i64 %224, metadata !1152, metadata !DIExpression()), !dbg !1240
  %225 = add i64 %216, %58, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %225, metadata !1151, metadata !DIExpression()), !dbg !1240
  %226 = add nsw i64 %57, 1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %226, metadata !1150, metadata !DIExpression()), !dbg !1240
  %227 = load i64, i64* @num_delims, align 8, !dbg !1379, !tbaa !764
  %228 = icmp eq i64 %226, %227, !dbg !1380
  %229 = select i1 %228, i64 0, i64 %225, !dbg !1381
  %230 = select i1 %228, i64 0, i64 %226, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %230, metadata !1150, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %229, metadata !1151, metadata !DIExpression()), !dbg !1240
  br label %320, !dbg !1382

231:                                              ; preds = %98, %138
  %232 = phi i32 [ -1, %138 ], [ %99, %98 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1148, metadata !DIExpression()), !dbg !1240
  %233 = add nuw i64 %59, 1, !dbg !1383
  %234 = icmp eq i64 %233, %0, !dbg !1384
  br i1 %234, label %294, label %235, !dbg !1385

235:                                              ; preds = %231
  %236 = load i1, i1* @line_delim, align 1, !dbg !1386
  %237 = select i1 %236, i32 0, i32 10, !dbg !1386
  %238 = icmp ne i32 %232, %237, !dbg !1389
  %239 = icmp ne i32 %232, -1
  %240 = and i1 %239, %238, !dbg !1390
  br i1 %240, label %241, label %263, !dbg !1390

241:                                              ; preds = %235
  call void @llvm.dbg.value(metadata i32 %232, metadata !1047, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %232, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1393
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1395, !tbaa !474
  %243 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %242, i64 0, i32 5, !dbg !1395
  %244 = load i8*, i8** %243, align 8, !dbg !1395, !tbaa !1063
  %245 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %242, i64 0, i32 6, !dbg !1395
  %246 = load i8*, i8** %245, align 8, !dbg !1395, !tbaa !1064
  %247 = icmp ult i8* %244, %246, !dbg !1395
  br i1 %247, label %248, label %251, !dbg !1395, !prof !985

248:                                              ; preds = %241
  %249 = trunc i32 %232 to i8, !dbg !1396
  call void @llvm.dbg.value(metadata i8 %249, metadata !1047, metadata !DIExpression()) #33, !dbg !1391
  call void @llvm.dbg.value(metadata i8 %249, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1393
  %250 = getelementptr inbounds i8, i8* %244, i64 1, !dbg !1395
  store i8* %250, i8** %243, align 8, !dbg !1395, !tbaa !1063
  store i8 %249, i8* %244, align 1, !dbg !1395, !tbaa !578
  br label %263, !dbg !1397

251:                                              ; preds = %241
  %252 = and i32 %232, 255, !dbg !1398
  call void @llvm.dbg.value(metadata i32 %252, metadata !1054, metadata !DIExpression()) #33, !dbg !1393
  %253 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %242, i32 noundef %252) #33, !dbg !1395
  %254 = icmp slt i32 %253, 0, !dbg !1399
  br i1 %254, label %255, label %263, !dbg !1397

255:                                              ; preds = %251
  %256 = load i32, i32* %78, align 4, !dbg !1400, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %256, metadata !1031, metadata !DIExpression()) #33, !dbg !1402
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1403, !tbaa !474
  %258 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %257) #33, !dbg !1403
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404, !tbaa !474
  %260 = tail call i32 @fpurge(%struct._IO_FILE* noundef %259) #33, !dbg !1405
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1406, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %261) #33, !dbg !1406
  %262 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1407
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %256, i8* noundef %262) #33, !dbg !1407
  unreachable, !dbg !1407

263:                                              ; preds = %251, %248, %235
  %264 = load i64*, i64** @delim_lens, align 8, !dbg !1408, !tbaa !474
  %265 = getelementptr inbounds i64, i64* %264, i64 %57, !dbg !1408
  %266 = load i64, i64* %265, align 8, !dbg !1408, !tbaa !764
  call void @llvm.dbg.value(metadata !DIArgList(i8* undef, i64 %58), metadata !1006, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #33, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %266, metadata !1011, metadata !DIExpression()) #33, !dbg !1409
  %267 = icmp eq i64 %266, 0, !dbg !1411
  br i1 %267, label %286, label %268, !dbg !1412

268:                                              ; preds = %263
  %269 = load i8*, i8** @delims, align 8, !dbg !1413, !tbaa !474
  call void @llvm.dbg.value(metadata !DIArgList(i8* %269, i64 %58), metadata !1006, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #33, !dbg !1409
  %270 = getelementptr inbounds i8, i8* %269, i64 %58, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %270, metadata !1006, metadata !DIExpression()) #33, !dbg !1409
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1415, !tbaa !474
  %272 = tail call i64 @fwrite_unlocked(i8* noundef %270, i64 noundef 1, i64 noundef %266, %struct._IO_FILE* noundef %271) #33, !dbg !1416
  %273 = icmp eq i64 %272, %266, !dbg !1417
  br i1 %273, label %274, label %278, !dbg !1418

274:                                              ; preds = %268
  %275 = load i64*, i64** @delim_lens, align 8, !dbg !1419, !tbaa !474
  %276 = getelementptr inbounds i64, i64* %275, i64 %57
  %277 = load i64, i64* %276, align 8, !dbg !1419, !tbaa !764
  br label %286, !dbg !1418

278:                                              ; preds = %268
  %279 = load i32, i32* %78, align 4, !dbg !1420, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %279, metadata !1031, metadata !DIExpression()) #33, !dbg !1422
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1423, !tbaa !474
  %281 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %280) #33, !dbg !1423
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1424, !tbaa !474
  %283 = tail call i32 @fpurge(%struct._IO_FILE* noundef %282) #33, !dbg !1425
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1426, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %284) #33, !dbg !1426
  %285 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1427
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %279, i8* noundef %285) #33, !dbg !1427
  unreachable, !dbg !1427

286:                                              ; preds = %274, %263
  %287 = phi i64 [ %277, %274 ], [ 0, %263 ], !dbg !1419
  %288 = add i64 %287, %58, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %288, metadata !1151, metadata !DIExpression()), !dbg !1240
  %289 = add nsw i64 %57, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %289, metadata !1150, metadata !DIExpression()), !dbg !1240
  %290 = load i64, i64* @num_delims, align 8, !dbg !1431, !tbaa !764
  %291 = icmp eq i64 %289, %290, !dbg !1432
  %292 = select i1 %291, i64 0, i64 %288, !dbg !1433
  %293 = select i1 %291, i64 0, i64 %289, !dbg !1433
  br label %320, !dbg !1433

294:                                              ; preds = %231
  %295 = icmp eq i32 %232, -1, !dbg !1434
  %296 = load i1, i1* @line_delim, align 1, !dbg !1435
  %297 = select i1 %296, i32 0, i32 10, !dbg !1435
  %298 = select i1 %295, i32 %297, i32 %232, !dbg !1435
  call void @llvm.dbg.value(metadata i32 %298, metadata !1184, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %298, metadata !1047, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1437
  call void @llvm.dbg.value(metadata i32 %298, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1439
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1441, !tbaa !474
  %300 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %299, i64 0, i32 5, !dbg !1441
  %301 = load i8*, i8** %300, align 8, !dbg !1441, !tbaa !1063
  %302 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %299, i64 0, i32 6, !dbg !1441
  %303 = load i8*, i8** %302, align 8, !dbg !1441, !tbaa !1064
  %304 = icmp ult i8* %301, %303, !dbg !1441
  br i1 %304, label %305, label %308, !dbg !1441, !prof !985

305:                                              ; preds = %294
  %306 = trunc i32 %298 to i8, !dbg !1442
  call void @llvm.dbg.value(metadata i8 %306, metadata !1184, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 %306, metadata !1047, metadata !DIExpression()) #33, !dbg !1437
  call void @llvm.dbg.value(metadata i8 %306, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1439
  %307 = getelementptr inbounds i8, i8* %301, i64 1, !dbg !1441
  store i8* %307, i8** %300, align 8, !dbg !1441, !tbaa !1063
  store i8 %306, i8* %301, align 1, !dbg !1441, !tbaa !578
  br label %320, !dbg !1443

308:                                              ; preds = %294
  %309 = and i32 %298, 255, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %309, metadata !1054, metadata !DIExpression()) #33, !dbg !1439
  %310 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %299, i32 noundef %309) #33, !dbg !1441
  %311 = icmp slt i32 %310, 0, !dbg !1445
  br i1 %311, label %312, label %320, !dbg !1443

312:                                              ; preds = %308
  %313 = load i32, i32* %78, align 4, !dbg !1446, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %313, metadata !1031, metadata !DIExpression()) #33, !dbg !1448
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1449, !tbaa !474
  %315 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %314) #33, !dbg !1449
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1450, !tbaa !474
  %317 = tail call i32 @fpurge(%struct._IO_FILE* noundef %316) #33, !dbg !1451
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1452, !tbaa !474
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %318) #33, !dbg !1452
  %319 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !1453
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %313, i8* noundef %319) #33, !dbg !1453
  unreachable, !dbg !1453

320:                                              ; preds = %308, %305, %286, %223
  %321 = phi i64 [ %233, %308 ], [ %233, %305 ], [ %233, %286 ], [ %171, %223 ], !dbg !1454
  %322 = phi i64 [ %96, %308 ], [ %96, %305 ], [ %96, %286 ], [ %224, %223 ], !dbg !1237
  %323 = phi i64 [ %58, %308 ], [ %58, %305 ], [ %292, %286 ], [ %229, %223 ], !dbg !1240
  %324 = phi i64 [ %57, %308 ], [ %57, %305 ], [ %293, %286 ], [ %230, %223 ], !dbg !1240
  %325 = phi i1 [ true, %308 ], [ true, %305 ], [ true, %286 ], [ %56, %223 ]
  %326 = phi i64 [ %55, %308 ], [ %55, %305 ], [ %55, %286 ], [ %169, %223 ], !dbg !1188
  %327 = phi i1 [ %54, %308 ], [ %54, %305 ], [ %54, %286 ], [ %170, %223 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1142, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %326, metadata !1146, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 poison, metadata !1148, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %324, metadata !1150, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %323, metadata !1151, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 undef, metadata !1158, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %322, metadata !1152, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 undef, metadata !1155, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %321, metadata !1153, metadata !DIExpression()), !dbg !1241
  %328 = icmp ult i64 %321, %0, !dbg !1455
  %329 = icmp ne i64 %326, 0, !dbg !1456
  %330 = select i1 %328, i1 %329, i1 false, !dbg !1456
  br i1 %330, label %53, label %46, !dbg !1242, !llvm.loop !1457

331:                                              ; preds = %46, %2
  %332 = phi i1 [ true, %2 ], [ %48, %46 ]
  tail call void @free(i8* noundef nonnull %9) #33, !dbg !1459
  tail call void @free(i8* noundef nonnull %7) #33, !dbg !1460
  ret i1 %332, !dbg !1461
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1462 i32 @fileno_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1463 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1464 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 !dbg !1467 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i8* %0, i8** @file_name, align 8, !dbg !1471, !tbaa !474
  ret void, !dbg !1472
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1473 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1477, metadata !DIExpression()), !dbg !1478
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1479, !tbaa !1480
  ret void, !dbg !1482
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1483 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1488, !tbaa !474
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !1489
  %3 = icmp eq i32 %2, 0, !dbg !1490
  br i1 %3, label %22, label %4, !dbg !1491

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1492, !tbaa !1480, !range !1493
  %6 = icmp eq i8 %5, 0, !dbg !1492
  br i1 %6, label %11, label %7, !dbg !1494

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !1495
  %9 = load i32, i32* %8, align 4, !dbg !1495, !tbaa !569
  %10 = icmp eq i32 %9, 32, !dbg !1496
  br i1 %10, label %22, label %11, !dbg !1497

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.31, i64 0, i64 0), i32 noundef 5) #33, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %12, metadata !1485, metadata !DIExpression()), !dbg !1499
  %13 = load i8*, i8** @file_name, align 8, !dbg !1500, !tbaa !474
  %14 = icmp eq i8* %13, null, !dbg !1500
  %15 = tail call i32* @__errno_location() #36, !dbg !1502
  %16 = load i32, i32* %15, align 4, !dbg !1502, !tbaa !569
  br i1 %14, label %19, label %17, !dbg !1503

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !1504
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.32, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !1504
  br label %20, !dbg !1504

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.33, i64 0, i64 0), i8* noundef %12) #33, !dbg !1505
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1506, !tbaa !569
  tail call void @_exit(i32 noundef %21) #35, !dbg !1507
  unreachable, !dbg !1507

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1508, !tbaa !474
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !1510
  %25 = icmp eq i32 %24, 0, !dbg !1511
  br i1 %25, label %28, label %26, !dbg !1512

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1513, !tbaa !569
  tail call void @_exit(i32 noundef %27) #35, !dbg !1514
  unreachable, !dbg !1514

28:                                               ; preds = %22
  ret void, !dbg !1515
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1516 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1520, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i32 %1, metadata !1521, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i8* %2, metadata !1522, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1523, metadata !DIExpression()), !dbg !1525
  tail call fastcc void @flush_stdout(), !dbg !1526
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1527, !tbaa !474
  %7 = icmp eq void ()* %6, null, !dbg !1527
  br i1 %7, label %9, label %8, !dbg !1529

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !1530
  br label %13, !dbg !1530

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1531, !tbaa !474
  %11 = tail call i8* @getprogname() #34, !dbg !1531
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8* noundef %11) #33, !dbg !1531
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1533
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1533
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1533, !tbaa.struct !1534
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1533
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1533
  ret void, !dbg !1535
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1536 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1538, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 1, metadata !1540, metadata !DIExpression()) #33, !dbg !1543
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !1546
  %2 = icmp slt i32 %1, 0, !dbg !1547
  br i1 %2, label %6, label %3, !dbg !1548

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1549, !tbaa !474
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !1549
  br label %6, !dbg !1549

6:                                                ; preds = %3, %0
  ret void, !dbg !1550
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1551 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1553, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i32 %1, metadata !1554, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i8* %2, metadata !1555, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1556, metadata !DIExpression()), !dbg !1558
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1559, !tbaa !474
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1560
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1561, metadata !DIExpression()) #33, !dbg !1604
  call void @llvm.dbg.value(metadata i8* %2, metadata !1602, metadata !DIExpression()) #33, !dbg !1604
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1606
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1606, !noalias !1607
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1606
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !1606
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1606, !noalias !1607
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1611, !tbaa !569
  %12 = add i32 %11, 1, !dbg !1611
  store i32 %12, i32* @error_message_count, align 4, !dbg !1611, !tbaa !569
  %13 = icmp eq i32 %1, 0, !dbg !1612
  br i1 %13, label %24, label %14, !dbg !1614

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1615, metadata !DIExpression()) #33, !dbg !1623
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1625
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1625
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1619, metadata !DIExpression()) #33, !dbg !1626
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !1627
  call void @llvm.dbg.value(metadata i8* %16, metadata !1618, metadata !DIExpression()) #33, !dbg !1623
  %17 = icmp eq i8* %16, null, !dbg !1628
  br i1 %17, label %18, label %20, !dbg !1630

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.36, i64 0, i64 0), i32 noundef 5) #33, !dbg !1631
  call void @llvm.dbg.value(metadata i8* %19, metadata !1618, metadata !DIExpression()) #33, !dbg !1623
  br label %20, !dbg !1632

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1623
  call void @llvm.dbg.value(metadata i8* %21, metadata !1618, metadata !DIExpression()) #33, !dbg !1623
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1633, !tbaa !474
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.37, i64 0, i64 0), i8* noundef %21) #33, !dbg !1633
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1634
  br label %24, !dbg !1635

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1636, !tbaa !474
  call void @llvm.dbg.value(metadata i32 10, metadata !1637, metadata !DIExpression()) #33, !dbg !1643
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1642, metadata !DIExpression()) #33, !dbg !1643
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1645
  %27 = load i8*, i8** %26, align 8, !dbg !1645, !tbaa !1063
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1645
  %29 = load i8*, i8** %28, align 8, !dbg !1645, !tbaa !1064
  %30 = icmp ult i8* %27, %29, !dbg !1645
  br i1 %30, label %33, label %31, !dbg !1645, !prof !985

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !1645
  br label %35, !dbg !1645

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1645
  store i8* %34, i8** %26, align 8, !dbg !1645, !tbaa !1063
  store i8 10, i8* %27, align 1, !dbg !1645, !tbaa !578
  br label %35, !dbg !1645

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1646, !tbaa !474
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !1646
  %38 = icmp eq i32 %0, 0, !dbg !1647
  br i1 %38, label %40, label %39, !dbg !1649

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !1650
  unreachable, !dbg !1650

40:                                               ; preds = %35
  ret void, !dbg !1651
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1652 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1656 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1660 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1664, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 %1, metadata !1665, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8* %2, metadata !1666, metadata !DIExpression()), !dbg !1668
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1669
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1669
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1667, metadata !DIExpression()), !dbg !1670
  call void @llvm.va_start(i8* nonnull %6), !dbg !1671
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1672
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1672
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1672, !tbaa.struct !1534
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1672
  call void @llvm.va_end(i8* nonnull %6), !dbg !1673
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1674
  ret void, !dbg !1674
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #18

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !206 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !224, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %1, metadata !225, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %2, metadata !226, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %3, metadata !227, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %4, metadata !228, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !229, metadata !DIExpression()), !dbg !1676
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1677, !tbaa !569
  %9 = icmp eq i32 %8, 0, !dbg !1677
  br i1 %9, label %24, label %10, !dbg !1679

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1680, !tbaa !569
  %12 = icmp eq i32 %11, %3, !dbg !1683
  br i1 %12, label %13, label %23, !dbg !1684

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1685, !tbaa !474
  %15 = icmp eq i8* %14, %2, !dbg !1686
  br i1 %15, label %39, label %16, !dbg !1687

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1688
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1689
  br i1 %19, label %20, label %23, !dbg !1689

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !1690
  %22 = icmp eq i32 %21, 0, !dbg !1691
  br i1 %22, label %39, label %23, !dbg !1692

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1693, !tbaa !474
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1694, !tbaa !569
  br label %24, !dbg !1695

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1696
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1697, !tbaa !474
  %26 = icmp eq void ()* %25, null, !dbg !1697
  br i1 %26, label %28, label %27, !dbg !1699

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !1700
  br label %32, !dbg !1700

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1701, !tbaa !474
  %30 = tail call i8* @getprogname() #34, !dbg !1701
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.40, i64 0, i64 0), i8* noundef %30) #33, !dbg !1701
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1703, !tbaa !474
  %34 = icmp eq i8* %2, null, !dbg !1703
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.41, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.42, i64 0, i64 0), !dbg !1703
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !1703
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1704
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1704
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1704
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1704, !tbaa.struct !1534
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1704
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1704
  br label %39, !dbg !1705

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1705
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1706 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1710, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i32 %1, metadata !1711, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8* %2, metadata !1712, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i32 %3, metadata !1713, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8* %4, metadata !1714, metadata !DIExpression()), !dbg !1716
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1717
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1717
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1715, metadata !DIExpression()), !dbg !1718
  call void @llvm.va_start(i8* nonnull %8), !dbg !1719
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1720
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1720, !tbaa.struct !1534
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1720
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1720
  call void @llvm.va_end(i8* nonnull %8), !dbg !1721
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1722
  ret void, !dbg !1722
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1723 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1729, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i64 %1, metadata !1730, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i64 %2, metadata !1731, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i32 %3, metadata !1732, metadata !DIExpression()), !dbg !1733
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #33, !dbg !1734
  ret void, !dbg !1735
}

; Function Attrs: nounwind
declare !dbg !1736 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1739 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %1, metadata !1778, metadata !DIExpression()), !dbg !1779
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1780
  br i1 %3, label %7, label %4, !dbg !1782

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %5, metadata !1729, metadata !DIExpression()) #33, !dbg !1784
  call void @llvm.dbg.value(metadata i64 0, metadata !1730, metadata !DIExpression()) #33, !dbg !1784
  call void @llvm.dbg.value(metadata i64 0, metadata !1731, metadata !DIExpression()) #33, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %1, metadata !1732, metadata !DIExpression()) #33, !dbg !1784
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #33, !dbg !1786
  br label %7, !dbg !1787

7:                                                ; preds = %4, %2
  ret void, !dbg !1788
}

; Function Attrs: nofree nounwind
declare !dbg !1789 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1792 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1830, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 0, metadata !1831, metadata !DIExpression()), !dbg !1834
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1835
  call void @llvm.dbg.value(metadata i32 %2, metadata !1832, metadata !DIExpression()), !dbg !1834
  %3 = icmp slt i32 %2, 0, !dbg !1836
  br i1 %3, label %4, label %6, !dbg !1838

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1839
  br label %24, !dbg !1840

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1841
  %8 = icmp eq i32 %7, 0, !dbg !1841
  br i1 %8, label %13, label %9, !dbg !1843

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1844
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !1845
  %12 = icmp eq i64 %11, -1, !dbg !1846
  br i1 %12, label %16, label %13, !dbg !1847

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1848
  %15 = icmp eq i32 %14, 0, !dbg !1848
  br i1 %15, label %16, label %18, !dbg !1849

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !1831, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 0, metadata !1833, metadata !DIExpression()), !dbg !1834
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1850
  call void @llvm.dbg.value(metadata i32 %21, metadata !1833, metadata !DIExpression()), !dbg !1834
  br label %24, !dbg !1851

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !1852
  %20 = load i32, i32* %19, align 4, !dbg !1852, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %20, metadata !1831, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i32 0, metadata !1833, metadata !DIExpression()), !dbg !1834
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1850
  call void @llvm.dbg.value(metadata i32 %21, metadata !1833, metadata !DIExpression()), !dbg !1834
  %22 = icmp eq i32 %20, 0, !dbg !1853
  br i1 %22, label %24, label %23, !dbg !1851

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !1855, !tbaa !569
  call void @llvm.dbg.value(metadata i32 -1, metadata !1833, metadata !DIExpression()), !dbg !1834
  br label %24, !dbg !1857

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1834
  ret i32 %25, !dbg !1858
}

; Function Attrs: nofree nounwind
declare !dbg !1859 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1860 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !1864 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1902, metadata !DIExpression()), !dbg !1903
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1904
  br i1 %2, label %6, label %3, !dbg !1906

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1907
  %5 = icmp eq i32 %4, 0, !dbg !1907
  br i1 %5, label %6, label %8, !dbg !1908

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !1909
  br label %17, !dbg !1910

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1911, metadata !DIExpression()) #33, !dbg !1916
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1918
  %10 = load i32, i32* %9, align 8, !dbg !1918, !tbaa !1118
  %11 = and i32 %10, 256, !dbg !1920
  %12 = icmp eq i32 %11, 0, !dbg !1920
  br i1 %12, label %15, label %13, !dbg !1921

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !1922
  br label %15, !dbg !1922

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !1923
  br label %17, !dbg !1924

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !1903
  ret i32 %18, !dbg !1925
}

; Function Attrs: nofree nounwind
declare !dbg !1926 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1927 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1965, metadata !DIExpression()), !dbg !1966
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1967
  ret i32 0, !dbg !1968
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !1969 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2007, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %1, metadata !2008, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i32 %2, metadata !2009, metadata !DIExpression()), !dbg !2013
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2014
  %5 = load i8*, i8** %4, align 8, !dbg !2014, !tbaa !984
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2015
  %7 = load i8*, i8** %6, align 8, !dbg !2015, !tbaa !982
  %8 = icmp eq i8* %5, %7, !dbg !2016
  br i1 %8, label %9, label %28, !dbg !2017

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2018
  %11 = load i8*, i8** %10, align 8, !dbg !2018, !tbaa !1063
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !2019
  %13 = load i8*, i8** %12, align 8, !dbg !2019, !tbaa !2020
  %14 = icmp eq i8* %11, %13, !dbg !2021
  br i1 %14, label %15, label %28, !dbg !2022

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !2023
  %17 = load i8*, i8** %16, align 8, !dbg !2023, !tbaa !2024
  %18 = icmp eq i8* %17, null, !dbg !2025
  br i1 %18, label %19, label %28, !dbg !2026

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2027
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %21, metadata !2010, metadata !DIExpression()), !dbg !2029
  %22 = icmp eq i64 %21, -1, !dbg !2030
  br i1 %22, label %30, label %23, !dbg !2032

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2033
  %25 = load i32, i32* %24, align 8, !dbg !2034, !tbaa !1118
  %26 = and i32 %25, -17, !dbg !2034
  store i32 %26, i32* %24, align 8, !dbg !2034, !tbaa !1118
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !2035
  store i64 %21, i64* %27, align 8, !dbg !2036, !tbaa !2037
  br label %30, !dbg !2038

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2039
  br label %30, !dbg !2040

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !2013
  ret i32 %31, !dbg !2041
}

; Function Attrs: nofree nounwind
declare !dbg !2042 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !2045 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2048, !tbaa !474
  ret i8* %1, !dbg !2049
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #20 !dbg !2050 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2052, metadata !DIExpression()), !dbg !2055
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !2056
  call void @llvm.dbg.value(metadata i8* %2, metadata !2053, metadata !DIExpression()), !dbg !2055
  %3 = icmp eq i8* %2, null, !dbg !2057
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2057
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2057
  call void @llvm.dbg.value(metadata i8* %5, metadata !2054, metadata !DIExpression()), !dbg !2055
  %6 = ptrtoint i8* %5 to i64, !dbg !2058
  %7 = ptrtoint i8* %0 to i64, !dbg !2058
  %8 = sub i64 %6, %7, !dbg !2058
  %9 = icmp sgt i64 %8, 6, !dbg !2060
  br i1 %9, label %10, label %19, !dbg !2061

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2062
  call void @llvm.dbg.value(metadata i8* %11, metadata !2063, metadata !DIExpression()) #33, !dbg !2070
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), metadata !2068, metadata !DIExpression()) #33, !dbg !2070
  call void @llvm.dbg.value(metadata i64 7, metadata !2069, metadata !DIExpression()) #33, !dbg !2070
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), i64 7) #33, !dbg !2072
  %13 = icmp eq i32 %12, 0, !dbg !2073
  br i1 %13, label %14, label %19, !dbg !2074

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2052, metadata !DIExpression()), !dbg !2055
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.67, i64 0, i64 0), i64 noundef 3) #34, !dbg !2075
  %16 = icmp eq i32 %15, 0, !dbg !2078
  %17 = select i1 %16, i64 3, i64 0, !dbg !2079
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2079
  br label %19, !dbg !2079

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2055
  call void @llvm.dbg.value(metadata i8* %21, metadata !2054, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %20, metadata !2052, metadata !DIExpression()), !dbg !2055
  store i8* %20, i8** @program_name, align 8, !dbg !2080, !tbaa !474
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2081, !tbaa !474
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2082, !tbaa !474
  ret void, !dbg !2083
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !247 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !254, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %1, metadata !255, metadata !DIExpression()), !dbg !2084
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %5, metadata !256, metadata !DIExpression()), !dbg !2084
  %6 = icmp eq i8* %5, %0, !dbg !2086
  br i1 %6, label %7, label %17, !dbg !2088

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2089
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !2089
  %10 = bitcast i64* %4 to i8*, !dbg !2090
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !2090
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !262, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2092, metadata !DIExpression()) #33, !dbg !2099
  call void @llvm.dbg.value(metadata i8* %10, metadata !2101, metadata !DIExpression()) #33, !dbg !2108
  call void @llvm.dbg.value(metadata i32 0, metadata !2106, metadata !DIExpression()) #33, !dbg !2108
  call void @llvm.dbg.value(metadata i64 8, metadata !2107, metadata !DIExpression()) #33, !dbg !2108
  store i64 0, i64* %4, align 8, !dbg !2110
  call void @llvm.dbg.value(metadata i32* %3, metadata !257, metadata !DIExpression(DW_OP_deref)), !dbg !2084
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !2111
  %12 = icmp eq i64 %11, 2, !dbg !2113
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !257, metadata !DIExpression()), !dbg !2084
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2114
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2084
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !2115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !2115
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2084
  ret i8* %18, !dbg !2115
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2116 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2121, metadata !DIExpression()), !dbg !2124
  %2 = tail call i32* @__errno_location() #36, !dbg !2125
  %3 = load i32, i32* %2, align 4, !dbg !2125, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %3, metadata !2122, metadata !DIExpression()), !dbg !2124
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2126
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2126
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2126
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !2127
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2127
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2123, metadata !DIExpression()), !dbg !2124
  store i32 %3, i32* %2, align 4, !dbg !2128, !tbaa !569
  ret %struct.quoting_options* %8, !dbg !2129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !2130 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2136, metadata !DIExpression()), !dbg !2137
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2138
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2138
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2139
  %5 = load i32, i32* %4, align 8, !dbg !2139, !tbaa !2140
  ret i32 %5, !dbg !2142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 !dbg !2143 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2147, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 %1, metadata !2148, metadata !DIExpression()), !dbg !2149
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2150
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2150
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2151
  store i32 %1, i32* %5, align 8, !dbg !2152, !tbaa !2140
  ret void, !dbg !2153
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2154 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2158, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 %1, metadata !2159, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i32 %2, metadata !2160, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 %1, metadata !2161, metadata !DIExpression()), !dbg !2166
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2167
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2167
  %6 = lshr i8 %1, 5, !dbg !2168
  %7 = zext i8 %6 to i64, !dbg !2168
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2169
  call void @llvm.dbg.value(metadata i32* %8, metadata !2162, metadata !DIExpression()), !dbg !2166
  %9 = and i8 %1, 31, !dbg !2170
  %10 = zext i8 %9 to i32, !dbg !2170
  call void @llvm.dbg.value(metadata i32 %10, metadata !2164, metadata !DIExpression()), !dbg !2166
  %11 = load i32, i32* %8, align 4, !dbg !2171, !tbaa !569
  %12 = lshr i32 %11, %10, !dbg !2172
  %13 = and i32 %12, 1, !dbg !2173
  call void @llvm.dbg.value(metadata i32 %13, metadata !2165, metadata !DIExpression()), !dbg !2166
  %14 = and i32 %2, 1, !dbg !2174
  %15 = xor i32 %13, %14, !dbg !2175
  %16 = shl i32 %15, %10, !dbg !2176
  %17 = xor i32 %16, %11, !dbg !2177
  store i32 %17, i32* %8, align 4, !dbg !2177, !tbaa !569
  ret i32 %13, !dbg !2178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2179 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2183, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 %1, metadata !2184, metadata !DIExpression()), !dbg !2186
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2187
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2183, metadata !DIExpression()), !dbg !2186
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2190
  %6 = load i32, i32* %5, align 4, !dbg !2190, !tbaa !2191
  call void @llvm.dbg.value(metadata i32 %6, metadata !2185, metadata !DIExpression()), !dbg !2186
  store i32 %1, i32* %5, align 4, !dbg !2192, !tbaa !2191
  ret i32 %6, !dbg !2193
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2194 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2198, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8* %1, metadata !2199, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8* %2, metadata !2200, metadata !DIExpression()), !dbg !2201
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2202
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2204
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2198, metadata !DIExpression()), !dbg !2201
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2205
  store i32 10, i32* %6, align 8, !dbg !2206, !tbaa !2140
  %7 = icmp ne i8* %1, null, !dbg !2207
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2209
  br i1 %9, label %11, label %10, !dbg !2209

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2210
  unreachable, !dbg !2210

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2211
  store i8* %1, i8** %12, align 8, !dbg !2212, !tbaa !2213
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2214
  store i8* %2, i8** %13, align 8, !dbg !2215, !tbaa !2216
  ret void, !dbg !2217
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2218 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2222, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i64 %1, metadata !2223, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8* %2, metadata !2224, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i64 %3, metadata !2225, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2226, metadata !DIExpression()), !dbg !2230
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2231
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2231
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2227, metadata !DIExpression()), !dbg !2230
  %8 = tail call i32* @__errno_location() #36, !dbg !2232
  %9 = load i32, i32* %8, align 4, !dbg !2232, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %9, metadata !2228, metadata !DIExpression()), !dbg !2230
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2233
  %11 = load i32, i32* %10, align 8, !dbg !2233, !tbaa !2140
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2234
  %13 = load i32, i32* %12, align 4, !dbg !2234, !tbaa !2191
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2235
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2236
  %16 = load i8*, i8** %15, align 8, !dbg !2236, !tbaa !2213
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2237
  %18 = load i8*, i8** %17, align 8, !dbg !2237, !tbaa !2216
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2238
  call void @llvm.dbg.value(metadata i64 %19, metadata !2229, metadata !DIExpression()), !dbg !2230
  store i32 %9, i32* %8, align 4, !dbg !2239, !tbaa !569
  ret i64 %19, !dbg !2240
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2241 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2247, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %1, metadata !2248, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %2, metadata !2249, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %3, metadata !2250, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %4, metadata !2251, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %5, metadata !2252, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32* %6, metadata !2253, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %7, metadata !2254, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %8, metadata !2255, metadata !DIExpression()), !dbg !2309
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !2310
  %18 = icmp eq i64 %17, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i1 %18, metadata !2256, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2309
  call void @llvm.dbg.value(metadata i64 0, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 0, metadata !2258, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* null, metadata !2259, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 0, metadata !2260, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 0, metadata !2261, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %5, metadata !2262, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2309
  call void @llvm.dbg.value(metadata i8 0, metadata !2263, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 1, metadata !2264, metadata !DIExpression()), !dbg !2309
  %19 = and i32 %5, 2, !dbg !2312
  %20 = icmp ne i32 %19, 0, !dbg !2312
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
  br label %36, !dbg !2312

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2313
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2314
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2315
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2248, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2264, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2263, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2262, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2261, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %43, metadata !2260, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %42, metadata !2259, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %41, metadata !2258, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 0, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %40, metadata !2250, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %39, metadata !2255, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %38, metadata !2254, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %37, metadata !2251, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.label(metadata !2302), !dbg !2316
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2309
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
  ], !dbg !2317

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2262, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 5, metadata !2251, metadata !DIExpression()), !dbg !2309
  br label %111, !dbg !2318

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2262, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 5, metadata !2251, metadata !DIExpression()), !dbg !2309
  br i1 %45, label %111, label %51, !dbg !2318

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2319
  br i1 %52, label %111, label %53, !dbg !2323

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2319, !tbaa !578
  br label %111, !dbg !2319

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), metadata !324, metadata !DIExpression()) #33, !dbg !2324
  call void @llvm.dbg.value(metadata i32 %37, metadata !325, metadata !DIExpression()) #33, !dbg !2324
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), i32 noundef 5) #33, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %55, metadata !326, metadata !DIExpression()) #33, !dbg !2324
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), !dbg !2329
  br i1 %56, label %57, label %66, !dbg !2331

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !2332
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !2333
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !328, metadata !DIExpression()) #33, !dbg !2334
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2335, metadata !DIExpression()) #33, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %23, metadata !2343, metadata !DIExpression()) #33, !dbg !2348
  call void @llvm.dbg.value(metadata i32 0, metadata !2346, metadata !DIExpression()) #33, !dbg !2348
  call void @llvm.dbg.value(metadata i64 8, metadata !2347, metadata !DIExpression()) #33, !dbg !2348
  store i64 0, i64* %13, align 8, !dbg !2350
  call void @llvm.dbg.value(metadata i32* %12, metadata !327, metadata !DIExpression(DW_OP_deref)) #33, !dbg !2324
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !2351
  %59 = icmp eq i64 %58, 3, !dbg !2353
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !327, metadata !DIExpression()) #33, !dbg !2324
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2354
  %63 = icmp eq i32 %37, 9, !dbg !2354
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), !dbg !2354
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2354
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !2355
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !2355
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2324
  call void @llvm.dbg.value(metadata i8* %67, metadata !2254, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), metadata !324, metadata !DIExpression()) #33, !dbg !2356
  call void @llvm.dbg.value(metadata i32 %37, metadata !325, metadata !DIExpression()) #33, !dbg !2356
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), i32 noundef 5) #33, !dbg !2358
  call void @llvm.dbg.value(metadata i8* %68, metadata !326, metadata !DIExpression()) #33, !dbg !2356
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), !dbg !2359
  br i1 %69, label %70, label %79, !dbg !2360

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !2361
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !2362
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !328, metadata !DIExpression()) #33, !dbg !2363
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2335, metadata !DIExpression()) #33, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %26, metadata !2343, metadata !DIExpression()) #33, !dbg !2366
  call void @llvm.dbg.value(metadata i32 0, metadata !2346, metadata !DIExpression()) #33, !dbg !2366
  call void @llvm.dbg.value(metadata i64 8, metadata !2347, metadata !DIExpression()) #33, !dbg !2366
  store i64 0, i64* %11, align 8, !dbg !2368
  call void @llvm.dbg.value(metadata i32* %10, metadata !327, metadata !DIExpression(DW_OP_deref)) #33, !dbg !2356
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !2369
  %72 = icmp eq i64 %71, 3, !dbg !2370
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !327, metadata !DIExpression()) #33, !dbg !2356
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2371
  %76 = icmp eq i32 %37, 9, !dbg !2371
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), !dbg !2371
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2371
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !2372
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2255, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %80, metadata !2254, metadata !DIExpression()), !dbg !2309
  br i1 %45, label %97, label %82, !dbg !2373

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2266, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i64 0, metadata !2257, metadata !DIExpression()), !dbg !2309
  %83 = load i8, i8* %80, align 1, !dbg !2375, !tbaa !578
  %84 = icmp eq i8 %83, 0, !dbg !2377
  br i1 %84, label %97, label %85, !dbg !2377

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2266, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %88, metadata !2257, metadata !DIExpression()), !dbg !2309
  %89 = icmp ult i64 %88, %48, !dbg !2378
  br i1 %89, label %90, label %92, !dbg !2381

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2378
  store i8 %86, i8* %91, align 1, !dbg !2378, !tbaa !578
  br label %92, !dbg !2378

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %93, metadata !2257, metadata !DIExpression()), !dbg !2309
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2382
  call void @llvm.dbg.value(metadata i8* %94, metadata !2266, metadata !DIExpression()), !dbg !2374
  %95 = load i8, i8* %94, align 1, !dbg !2375, !tbaa !578
  %96 = icmp eq i8 %95, 0, !dbg !2377
  br i1 %96, label %97, label %85, !dbg !2377, !llvm.loop !2383

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2385
  call void @llvm.dbg.value(metadata i64 %98, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 1, metadata !2261, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %81, metadata !2259, metadata !DIExpression()), !dbg !2309
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %99, metadata !2260, metadata !DIExpression()), !dbg !2309
  br label %111, !dbg !2387

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2261, metadata !DIExpression()), !dbg !2309
  br label %102, !dbg !2388

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2262, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2261, metadata !DIExpression()), !dbg !2309
  br i1 %45, label %102, label %105, !dbg !2389

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2262, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2261, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 2, metadata !2251, metadata !DIExpression()), !dbg !2309
  br label %111, !dbg !2390

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2262, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2261, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 2, metadata !2251, metadata !DIExpression()), !dbg !2309
  br i1 %45, label %111, label %105, !dbg !2390

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2391
  br i1 %107, label %111, label %108, !dbg !2395

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2391, !tbaa !578
  br label %111, !dbg !2391

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2262, metadata !DIExpression()), !dbg !2309
  br label %111, !dbg !2396

110:                                              ; preds = %36
  call void @abort() #35, !dbg !2397
  unreachable, !dbg !2397

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2385
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.83, i64 0, i64 0), %102 ], !dbg !2309
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2309
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2262, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2261, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %117, metadata !2260, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %116, metadata !2259, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %115, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %114, metadata !2255, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %113, metadata !2254, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %112, metadata !2251, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 0, metadata !2271, metadata !DIExpression()), !dbg !2398
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
  br label %132, !dbg !2399

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2385
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2313
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2398
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2248, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %139, metadata !2271, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2264, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2263, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %135, metadata !2258, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %134, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %133, metadata !2250, metadata !DIExpression()), !dbg !2309
  %141 = icmp eq i64 %133, -1, !dbg !2400
  br i1 %141, label %142, label %146, !dbg !2401

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2402
  %144 = load i8, i8* %143, align 1, !dbg !2402, !tbaa !578
  %145 = icmp eq i8 %144, 0, !dbg !2403
  br i1 %145, label %596, label %148, !dbg !2404

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2405
  br i1 %147, label %596, label %148, !dbg !2404

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2273, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 0, metadata !2276, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 0, metadata !2277, metadata !DIExpression()), !dbg !2406
  br i1 %123, label %149, label %163, !dbg !2407

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2409
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2410
  br i1 %151, label %152, label %154, !dbg !2410

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %153, metadata !2250, metadata !DIExpression()), !dbg !2309
  br label %154, !dbg !2412

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2412
  call void @llvm.dbg.value(metadata i64 %155, metadata !2250, metadata !DIExpression()), !dbg !2309
  %156 = icmp ugt i64 %150, %155, !dbg !2413
  br i1 %156, label %163, label %157, !dbg !2414

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %158, metadata !2416, metadata !DIExpression()) #33, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %116, metadata !2419, metadata !DIExpression()) #33, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %117, metadata !2420, metadata !DIExpression()) #33, !dbg !2421
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !2423
  %160 = icmp ne i32 %159, 0, !dbg !2424
  %161 = or i1 %160, %125, !dbg !2425
  %162 = xor i1 %160, true, !dbg !2425
  br i1 %161, label %163, label %647, !dbg !2425

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2273, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %164, metadata !2250, metadata !DIExpression()), !dbg !2309
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2426
  %167 = load i8, i8* %166, align 1, !dbg !2426, !tbaa !578
  call void @llvm.dbg.value(metadata i8 %167, metadata !2278, metadata !DIExpression()), !dbg !2406
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
  ], !dbg !2427

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2428

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2429

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2276, metadata !DIExpression()), !dbg !2406
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2433
  br i1 %171, label %188, label %172, !dbg !2433

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2435
  br i1 %173, label %174, label %176, !dbg !2439

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2435
  store i8 39, i8* %175, align 1, !dbg !2435, !tbaa !578
  br label %176, !dbg !2435

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %177, metadata !2257, metadata !DIExpression()), !dbg !2309
  %178 = icmp ult i64 %177, %140, !dbg !2440
  br i1 %178, label %179, label %181, !dbg !2443

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2440
  store i8 36, i8* %180, align 1, !dbg !2440, !tbaa !578
  br label %181, !dbg !2440

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %182, metadata !2257, metadata !DIExpression()), !dbg !2309
  %183 = icmp ult i64 %182, %140, !dbg !2444
  br i1 %183, label %184, label %186, !dbg !2447

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2444
  store i8 39, i8* %185, align 1, !dbg !2444, !tbaa !578
  br label %186, !dbg !2444

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %187, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 1, metadata !2265, metadata !DIExpression()), !dbg !2309
  br label %188, !dbg !2448

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2309
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %189, metadata !2257, metadata !DIExpression()), !dbg !2309
  %191 = icmp ult i64 %189, %140, !dbg !2449
  br i1 %191, label %192, label %194, !dbg !2452

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2449
  store i8 92, i8* %193, align 1, !dbg !2449, !tbaa !578
  br label %194, !dbg !2449

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %195, metadata !2257, metadata !DIExpression()), !dbg !2309
  br i1 %120, label %196, label %499, !dbg !2453

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2455
  %198 = icmp ult i64 %197, %164, !dbg !2456
  br i1 %198, label %199, label %456, !dbg !2457

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2458
  %201 = load i8, i8* %200, align 1, !dbg !2458, !tbaa !578
  %202 = add i8 %201, -48, !dbg !2459
  %203 = icmp ult i8 %202, 10, !dbg !2459
  br i1 %203, label %204, label %456, !dbg !2459

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2460
  br i1 %205, label %206, label %208, !dbg !2464

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2460
  store i8 48, i8* %207, align 1, !dbg !2460, !tbaa !578
  br label %208, !dbg !2460

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %209, metadata !2257, metadata !DIExpression()), !dbg !2309
  %210 = icmp ult i64 %209, %140, !dbg !2465
  br i1 %210, label %211, label %213, !dbg !2468

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2465
  store i8 48, i8* %212, align 1, !dbg !2465, !tbaa !578
  br label %213, !dbg !2465

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %214, metadata !2257, metadata !DIExpression()), !dbg !2309
  br label %456, !dbg !2469

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2470

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2471

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2472

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2474

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2476
  %221 = icmp ult i64 %220, %164, !dbg !2477
  br i1 %221, label %222, label %456, !dbg !2478

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2479
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2480
  %225 = load i8, i8* %224, align 1, !dbg !2480, !tbaa !578
  %226 = icmp eq i8 %225, 63, !dbg !2481
  br i1 %226, label %227, label %456, !dbg !2482

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2483
  %229 = load i8, i8* %228, align 1, !dbg !2483, !tbaa !578
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
  ], !dbg !2484

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2485

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2278, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %220, metadata !2271, metadata !DIExpression()), !dbg !2398
  %232 = icmp ult i64 %134, %140, !dbg !2487
  br i1 %232, label %233, label %235, !dbg !2490

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2487
  store i8 63, i8* %234, align 1, !dbg !2487, !tbaa !578
  br label %235, !dbg !2487

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %236, metadata !2257, metadata !DIExpression()), !dbg !2309
  %237 = icmp ult i64 %236, %140, !dbg !2491
  br i1 %237, label %238, label %240, !dbg !2494

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2491
  store i8 34, i8* %239, align 1, !dbg !2491, !tbaa !578
  br label %240, !dbg !2491

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2494
  call void @llvm.dbg.value(metadata i64 %241, metadata !2257, metadata !DIExpression()), !dbg !2309
  %242 = icmp ult i64 %241, %140, !dbg !2495
  br i1 %242, label %243, label %245, !dbg !2498

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2495
  store i8 34, i8* %244, align 1, !dbg !2495, !tbaa !578
  br label %245, !dbg !2495

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %246, metadata !2257, metadata !DIExpression()), !dbg !2309
  %247 = icmp ult i64 %246, %140, !dbg !2499
  br i1 %247, label %248, label %250, !dbg !2502

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2499
  store i8 63, i8* %249, align 1, !dbg !2499, !tbaa !578
  br label %250, !dbg !2499

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2502
  call void @llvm.dbg.value(metadata i64 %251, metadata !2257, metadata !DIExpression()), !dbg !2309
  br label %456, !dbg !2503

252:                                              ; preds = %163
  br label %263, !dbg !2504

253:                                              ; preds = %163
  br label %263, !dbg !2505

254:                                              ; preds = %163
  br label %261, !dbg !2506

255:                                              ; preds = %163
  br label %261, !dbg !2507

256:                                              ; preds = %163
  br label %263, !dbg !2508

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2509

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2510

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2513

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2515

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2516
  call void @llvm.dbg.label(metadata !2303), !dbg !2517
  br i1 %128, label %263, label %638, !dbg !2518

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2516
  call void @llvm.dbg.label(metadata !2305), !dbg !2520
  br i1 %118, label %510, label %467, !dbg !2521

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2522

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2523, !tbaa !578
  %268 = icmp eq i8 %267, 0, !dbg !2525
  br i1 %268, label %269, label %456, !dbg !2526

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2527
  br i1 %270, label %271, label %456, !dbg !2529

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2277, metadata !DIExpression()), !dbg !2406
  br label %272, !dbg !2530

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2277, metadata !DIExpression()), !dbg !2406
  br i1 %126, label %274, label %456, !dbg !2531

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2533

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2263, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 1, metadata !2277, metadata !DIExpression()), !dbg !2406
  br i1 %126, label %276, label %456, !dbg !2534

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2535

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2538
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2540
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2540
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2540
  call void @llvm.dbg.value(metadata i64 %282, metadata !2248, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %281, metadata !2258, metadata !DIExpression()), !dbg !2309
  %283 = icmp ult i64 %134, %282, !dbg !2541
  br i1 %283, label %284, label %286, !dbg !2544

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2541
  store i8 39, i8* %285, align 1, !dbg !2541, !tbaa !578
  br label %286, !dbg !2541

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %287, metadata !2257, metadata !DIExpression()), !dbg !2309
  %288 = icmp ult i64 %287, %282, !dbg !2545
  br i1 %288, label %289, label %291, !dbg !2548

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2545
  store i8 92, i8* %290, align 1, !dbg !2545, !tbaa !578
  br label %291, !dbg !2545

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %292, metadata !2257, metadata !DIExpression()), !dbg !2309
  %293 = icmp ult i64 %292, %282, !dbg !2549
  br i1 %293, label %294, label %296, !dbg !2552

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2549
  store i8 39, i8* %295, align 1, !dbg !2549, !tbaa !578
  br label %296, !dbg !2549

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %297, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2309
  br label %456, !dbg !2553

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2554

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2279, metadata !DIExpression()), !dbg !2555
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !2556
  %301 = load i16*, i16** %300, align 8, !dbg !2556, !tbaa !474
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2556
  %304 = load i16, i16* %303, align 2, !dbg !2556, !tbaa !603
  %305 = and i16 %304, 16384, !dbg !2556
  %306 = icmp ne i16 %305, 0, !dbg !2558
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %349, metadata !2279, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %312, metadata !2250, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i1 %350, metadata !2277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2406
  br label %352, !dbg !2559

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2560
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2283, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2335, metadata !DIExpression()) #33, !dbg !2562
  call void @llvm.dbg.value(metadata i8* %32, metadata !2343, metadata !DIExpression()) #33, !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2346, metadata !DIExpression()) #33, !dbg !2564
  call void @llvm.dbg.value(metadata i64 8, metadata !2347, metadata !DIExpression()) #33, !dbg !2564
  store i64 0, i64* %14, align 8, !dbg !2566
  call void @llvm.dbg.value(metadata i64 0, metadata !2279, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 1, metadata !2282, metadata !DIExpression()), !dbg !2555
  %308 = icmp eq i64 %164, -1, !dbg !2567
  br i1 %308, label %309, label %311, !dbg !2569

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !2570
  call void @llvm.dbg.value(metadata i64 %310, metadata !2250, metadata !DIExpression()), !dbg !2309
  br label %311, !dbg !2571

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2406
  call void @llvm.dbg.value(metadata i64 %312, metadata !2250, metadata !DIExpression()), !dbg !2309
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2572
  %313 = sub i64 %312, %139, !dbg !2573
  call void @llvm.dbg.value(metadata i32* %16, metadata !2286, metadata !DIExpression(DW_OP_deref)), !dbg !2574
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %314, metadata !2290, metadata !DIExpression()), !dbg !2574
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2576

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2279, metadata !DIExpression()), !dbg !2555
  %316 = icmp ugt i64 %312, %139, !dbg !2577
  br i1 %316, label %319, label %317, !dbg !2579

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 0, metadata !2279, metadata !DIExpression()), !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %349, metadata !2279, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %312, metadata !2250, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i1 %350, metadata !2277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2406
  br label %352, !dbg !2559

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2282, metadata !DIExpression()), !dbg !2555
  br label %346, !dbg !2582

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2279, metadata !DIExpression()), !dbg !2555
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2584
  %323 = load i8, i8* %322, align 1, !dbg !2584, !tbaa !578
  %324 = icmp eq i8 %323, 0, !dbg !2579
  br i1 %324, label %348, label %325, !dbg !2585

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %326, metadata !2279, metadata !DIExpression()), !dbg !2555
  %327 = add i64 %326, %139, !dbg !2587
  %328 = icmp eq i64 %326, %313, !dbg !2577
  br i1 %328, label %348, label %319, !dbg !2579, !llvm.loop !2588

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2589
  call void @llvm.dbg.value(metadata i64 1, metadata !2291, metadata !DIExpression()), !dbg !2590
  br i1 %331, label %332, label %340, !dbg !2589

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2291, metadata !DIExpression()), !dbg !2590
  %334 = add i64 %333, %139, !dbg !2591
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2593
  %336 = load i8, i8* %335, align 1, !dbg !2593, !tbaa !578
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2594

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %338, metadata !2291, metadata !DIExpression()), !dbg !2590
  %339 = icmp eq i64 %338, %314, !dbg !2596
  br i1 %339, label %340, label %332, !dbg !2597, !llvm.loop !2598

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2600, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %341, metadata !2286, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 %341, metadata !2602, metadata !DIExpression()) #33, !dbg !2610
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !2612
  %343 = icmp ne i32 %342, 0, !dbg !2613
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %314, metadata !2279, metadata !DIExpression()), !dbg !2555
  br label %348, !dbg !2614

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 0, metadata !2279, metadata !DIExpression()), !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2581
  call void @llvm.dbg.label(metadata !2308), !dbg !2615
  %345 = select i1 %118, i32 4, i32 2, !dbg !2616
  br label %643, !dbg !2616

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 0, metadata !2279, metadata !DIExpression()), !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %349, metadata !2279, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %312, metadata !2250, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i1 %350, metadata !2277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2406
  br label %352, !dbg !2559

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2282, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 0, metadata !2279, metadata !DIExpression()), !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %349, metadata !2279, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %312, metadata !2250, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i1 %350, metadata !2277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2406
  %351 = icmp ugt i64 %349, 1, !dbg !2618
  br i1 %351, label %357, label %352, !dbg !2559

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2619
  br i1 %356, label %456, label %357, !dbg !2619

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %361, metadata !2299, metadata !DIExpression()), !dbg !2621
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2622

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2309
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2398
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2623
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2406
  call void @llvm.dbg.value(metadata i8 %369, metadata !2278, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 %368, metadata !2276, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2273, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %366, metadata !2271, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %364, metadata !2257, metadata !DIExpression()), !dbg !2309
  br i1 %362, label %414, label %370, !dbg !2624

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2629

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2276, metadata !DIExpression()), !dbg !2406
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2632
  br i1 %372, label %389, label %373, !dbg !2632

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2634
  br i1 %374, label %375, label %377, !dbg !2638

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2634
  store i8 39, i8* %376, align 1, !dbg !2634, !tbaa !578
  br label %377, !dbg !2634

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %378, metadata !2257, metadata !DIExpression()), !dbg !2309
  %379 = icmp ult i64 %378, %140, !dbg !2639
  br i1 %379, label %380, label %382, !dbg !2642

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2639
  store i8 36, i8* %381, align 1, !dbg !2639, !tbaa !578
  br label %382, !dbg !2639

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %383, metadata !2257, metadata !DIExpression()), !dbg !2309
  %384 = icmp ult i64 %383, %140, !dbg !2643
  br i1 %384, label %385, label %387, !dbg !2646

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2643
  store i8 39, i8* %386, align 1, !dbg !2643, !tbaa !578
  br label %387, !dbg !2643

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %388, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 1, metadata !2265, metadata !DIExpression()), !dbg !2309
  br label %389, !dbg !2647

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2309
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %390, metadata !2257, metadata !DIExpression()), !dbg !2309
  %392 = icmp ult i64 %390, %140, !dbg !2648
  br i1 %392, label %393, label %395, !dbg !2651

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2648
  store i8 92, i8* %394, align 1, !dbg !2648, !tbaa !578
  br label %395, !dbg !2648

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %396, metadata !2257, metadata !DIExpression()), !dbg !2309
  %397 = icmp ult i64 %396, %140, !dbg !2652
  br i1 %397, label %398, label %402, !dbg !2655

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2652
  %400 = or i8 %399, 48, !dbg !2652
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2652
  store i8 %400, i8* %401, align 1, !dbg !2652, !tbaa !578
  br label %402, !dbg !2652

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %403, metadata !2257, metadata !DIExpression()), !dbg !2309
  %404 = icmp ult i64 %403, %140, !dbg !2656
  br i1 %404, label %405, label %410, !dbg !2659

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2656
  %407 = and i8 %406, 7, !dbg !2656
  %408 = or i8 %407, 48, !dbg !2656
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2656
  store i8 %408, i8* %409, align 1, !dbg !2656, !tbaa !578
  br label %410, !dbg !2656

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %411, metadata !2257, metadata !DIExpression()), !dbg !2309
  %412 = and i8 %369, 7, !dbg !2660
  %413 = or i8 %412, 48, !dbg !2661
  call void @llvm.dbg.value(metadata i8 %413, metadata !2278, metadata !DIExpression()), !dbg !2406
  br label %421, !dbg !2662

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2663

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2664
  br i1 %416, label %417, label %419, !dbg !2669

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2664
  store i8 92, i8* %418, align 1, !dbg !2664, !tbaa !578
  br label %419, !dbg !2664

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %420, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 0, metadata !2273, metadata !DIExpression()), !dbg !2406
  br label %421, !dbg !2670

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2309
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2406
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2406
  call void @llvm.dbg.value(metadata i8 %426, metadata !2278, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 %425, metadata !2276, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2273, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %422, metadata !2257, metadata !DIExpression()), !dbg !2309
  %427 = add i64 %366, 1, !dbg !2671
  %428 = icmp ugt i64 %361, %427, !dbg !2673
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2674

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2675
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2675
  br i1 %432, label %433, label %444, !dbg !2675

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2678
  br i1 %434, label %435, label %437, !dbg !2682

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2678
  store i8 39, i8* %436, align 1, !dbg !2678, !tbaa !578
  br label %437, !dbg !2678

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2682
  call void @llvm.dbg.value(metadata i64 %438, metadata !2257, metadata !DIExpression()), !dbg !2309
  %439 = icmp ult i64 %438, %140, !dbg !2683
  br i1 %439, label %440, label %442, !dbg !2686

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2683
  store i8 39, i8* %441, align 1, !dbg !2683, !tbaa !578
  br label %442, !dbg !2683

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2686
  call void @llvm.dbg.value(metadata i64 %443, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2309
  br label %444, !dbg !2687

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2688
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %445, metadata !2257, metadata !DIExpression()), !dbg !2309
  %447 = icmp ult i64 %445, %140, !dbg !2689
  br i1 %447, label %448, label %450, !dbg !2692

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2689
  store i8 %426, i8* %449, align 1, !dbg !2689, !tbaa !578
  br label %450, !dbg !2689

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %451, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %427, metadata !2271, metadata !DIExpression()), !dbg !2398
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2693
  %453 = load i8, i8* %452, align 1, !dbg !2693, !tbaa !578
  call void @llvm.dbg.value(metadata i8 %453, metadata !2278, metadata !DIExpression()), !dbg !2406
  br label %363, !dbg !2694, !llvm.loop !2695

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2278, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i1 %358, metadata !2277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2406
  call void @llvm.dbg.value(metadata i8 %425, metadata !2276, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2273, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %366, metadata !2271, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %422, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %360, metadata !2250, metadata !DIExpression()), !dbg !2309
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2698
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2309
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2313
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2398
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2406
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2248, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %465, metadata !2278, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2277, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2276, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2273, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %462, metadata !2271, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2263, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %459, metadata !2258, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %458, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %457, metadata !2250, metadata !DIExpression()), !dbg !2309
  br i1 %121, label %478, label %467, !dbg !2699

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
  br i1 %131, label %479, label %499, !dbg !2701

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2702

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
  %490 = lshr i8 %481, 5, !dbg !2703
  %491 = zext i8 %490 to i64, !dbg !2703
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2704
  %493 = load i32, i32* %492, align 4, !dbg !2704, !tbaa !569
  %494 = and i8 %481, 31, !dbg !2705
  %495 = zext i8 %494 to i32, !dbg !2705
  %496 = shl nuw i32 1, %495, !dbg !2706
  %497 = and i32 %493, %496, !dbg !2706
  %498 = icmp eq i32 %497, 0, !dbg !2706
  br i1 %498, label %499, label %510, !dbg !2707

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
  br i1 %165, label %510, label %546, !dbg !2708

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2698
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2309
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2313
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2709
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2406
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2248, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %518, metadata !2278, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2277, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %516, metadata !2271, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2263, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %513, metadata !2258, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %512, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %511, metadata !2250, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.label(metadata !2306), !dbg !2710
  br i1 %119, label %638, label %520, !dbg !2711

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2276, metadata !DIExpression()), !dbg !2406
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2713
  br i1 %521, label %538, label %522, !dbg !2713

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2715
  br i1 %523, label %524, label %526, !dbg !2719

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2715
  store i8 39, i8* %525, align 1, !dbg !2715, !tbaa !578
  br label %526, !dbg !2715

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %527, metadata !2257, metadata !DIExpression()), !dbg !2309
  %528 = icmp ult i64 %527, %519, !dbg !2720
  br i1 %528, label %529, label %531, !dbg !2723

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2720
  store i8 36, i8* %530, align 1, !dbg !2720, !tbaa !578
  br label %531, !dbg !2720

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %532, metadata !2257, metadata !DIExpression()), !dbg !2309
  %533 = icmp ult i64 %532, %519, !dbg !2724
  br i1 %533, label %534, label %536, !dbg !2727

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2724
  store i8 39, i8* %535, align 1, !dbg !2724, !tbaa !578
  br label %536, !dbg !2724

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %537, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 1, metadata !2265, metadata !DIExpression()), !dbg !2309
  br label %538, !dbg !2728

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2406
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %539, metadata !2257, metadata !DIExpression()), !dbg !2309
  %541 = icmp ult i64 %539, %519, !dbg !2729
  br i1 %541, label %542, label %544, !dbg !2732

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2729
  store i8 92, i8* %543, align 1, !dbg !2729, !tbaa !578
  br label %544, !dbg !2729

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %556, metadata !2248, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %555, metadata !2278, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2277, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2276, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %552, metadata !2271, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2263, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %549, metadata !2258, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %548, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %547, metadata !2250, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.label(metadata !2307), !dbg !2733
  br label %570, !dbg !2734

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2698
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2309
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2313
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2709
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2737
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2248, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %555, metadata !2278, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2277, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 poison, metadata !2276, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 %552, metadata !2271, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2263, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %549, metadata !2258, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %548, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %547, metadata !2250, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.label(metadata !2307), !dbg !2733
  %557 = xor i1 %551, true, !dbg !2734
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2734
  br i1 %558, label %570, label %559, !dbg !2734

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2738
  br i1 %560, label %561, label %563, !dbg !2742

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2738
  store i8 39, i8* %562, align 1, !dbg !2738, !tbaa !578
  br label %563, !dbg !2738

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %564, metadata !2257, metadata !DIExpression()), !dbg !2309
  %565 = icmp ult i64 %564, %556, !dbg !2743
  br i1 %565, label %566, label %568, !dbg !2746

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2743
  store i8 39, i8* %567, align 1, !dbg !2743, !tbaa !578
  br label %568, !dbg !2743

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %569, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2309
  br label %570, !dbg !2747

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2406
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %578, metadata !2257, metadata !DIExpression()), !dbg !2309
  %580 = icmp ult i64 %578, %571, !dbg !2748
  br i1 %580, label %581, label %583, !dbg !2751

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2748
  store i8 %572, i8* %582, align 1, !dbg !2748, !tbaa !578
  br label %583, !dbg !2748

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %584, metadata !2257, metadata !DIExpression()), !dbg !2309
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2752
  call void @llvm.dbg.value(metadata i8 poison, metadata !2264, metadata !DIExpression()), !dbg !2309
  br label %586, !dbg !2753

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2698
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2309
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2313
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2709
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2248, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %593, metadata !2271, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8 poison, metadata !2265, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2264, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2263, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %589, metadata !2258, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %588, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %587, metadata !2250, metadata !DIExpression()), !dbg !2309
  %595 = add i64 %593, 1, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %595, metadata !2271, metadata !DIExpression()), !dbg !2398
  br label %132, !dbg !2755, !llvm.loop !2756

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2248, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2264, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 poison, metadata !2263, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 undef, metadata !2258, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 undef, metadata !2257, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 undef, metadata !2250, metadata !DIExpression()), !dbg !2309
  %597 = icmp eq i64 %134, 0, !dbg !2758
  %598 = and i1 %126, %597, !dbg !2760
  %599 = and i1 %598, %119, !dbg !2760
  br i1 %599, label %638, label %600, !dbg !2760

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2761
  %602 = or i1 %119, %601, !dbg !2761
  %603 = xor i1 %136, true, !dbg !2761
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2761
  br i1 %604, label %612, label %605, !dbg !2761

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2763

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2765
  br label %653, !dbg !2767

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2768
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2770
  br i1 %611, label %36, label %612, !dbg !2770

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2771
  %615 = or i1 %614, %613, !dbg !2773
  br i1 %615, label %631, label %616, !dbg !2773

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2259, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %134, metadata !2257, metadata !DIExpression()), !dbg !2309
  %617 = load i8, i8* %116, align 1, !dbg !2774, !tbaa !578
  %618 = icmp eq i8 %617, 0, !dbg !2777
  br i1 %618, label %631, label %619, !dbg !2777

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2259, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %622, metadata !2257, metadata !DIExpression()), !dbg !2309
  %623 = icmp ult i64 %622, %140, !dbg !2778
  br i1 %623, label %624, label %626, !dbg !2781

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2778
  store i8 %620, i8* %625, align 1, !dbg !2778, !tbaa !578
  br label %626, !dbg !2778

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %627, metadata !2257, metadata !DIExpression()), !dbg !2309
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2782
  call void @llvm.dbg.value(metadata i8* %628, metadata !2259, metadata !DIExpression()), !dbg !2309
  %629 = load i8, i8* %628, align 1, !dbg !2774, !tbaa !578
  %630 = icmp eq i8 %629, 0, !dbg !2777
  br i1 %630, label %631, label %619, !dbg !2777, !llvm.loop !2783

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2385
  call void @llvm.dbg.value(metadata i64 %632, metadata !2257, metadata !DIExpression()), !dbg !2309
  %633 = icmp ult i64 %632, %140, !dbg !2785
  br i1 %633, label %634, label %653, !dbg !2787

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2788
  store i8 0, i8* %635, align 1, !dbg !2789, !tbaa !578
  br label %653, !dbg !2788

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2308), !dbg !2615
  %637 = icmp eq i32 %112, 2, !dbg !2790
  br i1 %637, label %643, label %647, !dbg !2616

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2308), !dbg !2615
  %641 = icmp eq i32 %112, 2, !dbg !2790
  %642 = select i1 %118, i32 4, i32 2, !dbg !2616
  br i1 %641, label %643, label %647, !dbg !2616

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2616

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2251, metadata !DIExpression()), !dbg !2309
  %651 = and i32 %5, -3, !dbg !2791
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2792
  br label %653, !dbg !2793

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2794
}

; Function Attrs: nounwind
declare !dbg !2795 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2797 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %1, metadata !2802, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2803, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8* %0, metadata !2805, metadata !DIExpression()) #33, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %1, metadata !2810, metadata !DIExpression()) #33, !dbg !2818
  call void @llvm.dbg.value(metadata i64* null, metadata !2811, metadata !DIExpression()) #33, !dbg !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2812, metadata !DIExpression()) #33, !dbg !2818
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2820
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2813, metadata !DIExpression()) #33, !dbg !2818
  %6 = tail call i32* @__errno_location() #36, !dbg !2821
  %7 = load i32, i32* %6, align 4, !dbg !2821, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %7, metadata !2814, metadata !DIExpression()) #33, !dbg !2818
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2822
  %9 = load i32, i32* %8, align 4, !dbg !2822, !tbaa !2191
  %10 = or i32 %9, 1, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %10, metadata !2815, metadata !DIExpression()) #33, !dbg !2818
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2824
  %12 = load i32, i32* %11, align 8, !dbg !2824, !tbaa !2140
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2825
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2826
  %15 = load i8*, i8** %14, align 8, !dbg !2826, !tbaa !2213
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2827
  %17 = load i8*, i8** %16, align 8, !dbg !2827, !tbaa !2216
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !2828
  %19 = add i64 %18, 1, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %19, metadata !2816, metadata !DIExpression()) #33, !dbg !2818
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !2830
  call void @llvm.dbg.value(metadata i8* %20, metadata !2817, metadata !DIExpression()) #33, !dbg !2818
  %21 = load i32, i32* %11, align 8, !dbg !2831, !tbaa !2140
  %22 = load i8*, i8** %14, align 8, !dbg !2832, !tbaa !2213
  %23 = load i8*, i8** %16, align 8, !dbg !2833, !tbaa !2216
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !2834
  store i32 %7, i32* %6, align 4, !dbg !2835, !tbaa !569
  ret i8* %20, !dbg !2836
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2806 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2805, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64 %1, metadata !2810, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64* %2, metadata !2811, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2812, metadata !DIExpression()), !dbg !2837
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2838
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2813, metadata !DIExpression()), !dbg !2837
  %7 = tail call i32* @__errno_location() #36, !dbg !2839
  %8 = load i32, i32* %7, align 4, !dbg !2839, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %8, metadata !2814, metadata !DIExpression()), !dbg !2837
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2840
  %10 = load i32, i32* %9, align 4, !dbg !2840, !tbaa !2191
  %11 = icmp eq i64* %2, null, !dbg !2841
  %12 = zext i1 %11 to i32, !dbg !2841
  %13 = or i32 %10, %12, !dbg !2842
  call void @llvm.dbg.value(metadata i32 %13, metadata !2815, metadata !DIExpression()), !dbg !2837
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2843
  %15 = load i32, i32* %14, align 8, !dbg !2843, !tbaa !2140
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2844
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2845
  %18 = load i8*, i8** %17, align 8, !dbg !2845, !tbaa !2213
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2846
  %20 = load i8*, i8** %19, align 8, !dbg !2846, !tbaa !2216
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2847
  %22 = add i64 %21, 1, !dbg !2848
  call void @llvm.dbg.value(metadata i64 %22, metadata !2816, metadata !DIExpression()), !dbg !2837
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %23, metadata !2817, metadata !DIExpression()), !dbg !2837
  %24 = load i32, i32* %14, align 8, !dbg !2850, !tbaa !2140
  %25 = load i8*, i8** %17, align 8, !dbg !2851, !tbaa !2213
  %26 = load i8*, i8** %19, align 8, !dbg !2852, !tbaa !2216
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2853
  store i32 %8, i32* %7, align 4, !dbg !2854, !tbaa !569
  br i1 %11, label %29, label %28, !dbg !2855

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2856, !tbaa !764
  br label %29, !dbg !2858

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2859
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2860 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2865, !tbaa !474
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2862, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 1, metadata !2863, metadata !DIExpression()), !dbg !2867
  %2 = load i32, i32* @nslots, align 4, !tbaa !569
  call void @llvm.dbg.value(metadata i32 1, metadata !2863, metadata !DIExpression()), !dbg !2867
  %3 = icmp sgt i32 %2, 1, !dbg !2868
  br i1 %3, label %4, label %6, !dbg !2870

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2868
  br label %10, !dbg !2870

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2871
  %8 = load i8*, i8** %7, align 8, !dbg !2871, !tbaa !2873
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2875
  br i1 %9, label %17, label %16, !dbg !2876

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2863, metadata !DIExpression()), !dbg !2867
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2877
  %13 = load i8*, i8** %12, align 8, !dbg !2877, !tbaa !2873
  tail call void @free(i8* noundef %13) #33, !dbg !2878
  %14 = add nuw nsw i64 %11, 1, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %14, metadata !2863, metadata !DIExpression()), !dbg !2867
  %15 = icmp eq i64 %14, %5, !dbg !2868
  br i1 %15, label %6, label %10, !dbg !2870, !llvm.loop !2880

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !2882
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2884, !tbaa !2885
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2886, !tbaa !2873
  br label %17, !dbg !2887

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2888
  br i1 %18, label %21, label %19, !dbg !2890

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2891
  tail call void @free(i8* noundef %20) #33, !dbg !2893
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2894, !tbaa !474
  br label %21, !dbg !2895

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2896, !tbaa !569
  ret void, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2898 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %1, metadata !2901, metadata !DIExpression()), !dbg !2902
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2903
  ret i8* %3, !dbg !2904
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2905 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2909, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %1, metadata !2910, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %2, metadata !2911, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2912, metadata !DIExpression()), !dbg !2925
  %6 = tail call i32* @__errno_location() #36, !dbg !2926
  %7 = load i32, i32* %6, align 4, !dbg !2926, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %7, metadata !2913, metadata !DIExpression()), !dbg !2925
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2927, !tbaa !474
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2914, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2915, metadata !DIExpression()), !dbg !2925
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2928
  br i1 %9, label %10, label %11, !dbg !2928

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2930
  unreachable, !dbg !2930

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2931, !tbaa !569
  %13 = icmp sgt i32 %12, %0, !dbg !2932
  br i1 %13, label %36, label %14, !dbg !2933

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2934
  call void @llvm.dbg.value(metadata i1 %15, metadata !2916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2935
  %16 = bitcast i64* %5 to i8*, !dbg !2936
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2936
  %17 = sext i32 %12 to i64, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %17, metadata !2919, metadata !DIExpression()), !dbg !2935
  store i64 %17, i64* %5, align 8, !dbg !2938, !tbaa !764
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2939
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2939
  %20 = add nuw nsw i32 %0, 1, !dbg !2940
  %21 = sub i32 %20, %12, !dbg !2941
  %22 = sext i32 %21 to i64, !dbg !2942
  call void @llvm.dbg.value(metadata i64* %5, metadata !2919, metadata !DIExpression(DW_OP_deref)), !dbg !2935
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !2943
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2943
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2914, metadata !DIExpression()), !dbg !2925
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2944, !tbaa !474
  br i1 %15, label %25, label %26, !dbg !2945

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2946, !tbaa.struct !2948
  br label %26, !dbg !2949

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2950, !tbaa !569
  %28 = sext i32 %27 to i64, !dbg !2951
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2951
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2952
  %31 = load i64, i64* %5, align 8, !dbg !2953, !tbaa !764
  call void @llvm.dbg.value(metadata i64 %31, metadata !2919, metadata !DIExpression()), !dbg !2935
  %32 = sub nsw i64 %31, %28, !dbg !2954
  %33 = shl i64 %32, 4, !dbg !2955
  call void @llvm.dbg.value(metadata i8* %30, metadata !2343, metadata !DIExpression()) #33, !dbg !2956
  call void @llvm.dbg.value(metadata i32 0, metadata !2346, metadata !DIExpression()) #33, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %33, metadata !2347, metadata !DIExpression()) #33, !dbg !2956
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !2958
  %34 = load i64, i64* %5, align 8, !dbg !2959, !tbaa !764
  call void @llvm.dbg.value(metadata i64 %34, metadata !2919, metadata !DIExpression()), !dbg !2935
  %35 = trunc i64 %34 to i32, !dbg !2959
  store i32 %35, i32* @nslots, align 4, !dbg !2960, !tbaa !569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2961
  br label %36, !dbg !2962

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2925
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2914, metadata !DIExpression()), !dbg !2925
  %38 = zext i32 %0 to i64, !dbg !2963
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2964
  %40 = load i64, i64* %39, align 8, !dbg !2964, !tbaa !2885
  call void @llvm.dbg.value(metadata i64 %40, metadata !2920, metadata !DIExpression()), !dbg !2965
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2966
  %42 = load i8*, i8** %41, align 8, !dbg !2966, !tbaa !2873
  call void @llvm.dbg.value(metadata i8* %42, metadata !2922, metadata !DIExpression()), !dbg !2965
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2967
  %44 = load i32, i32* %43, align 4, !dbg !2967, !tbaa !2191
  %45 = or i32 %44, 1, !dbg !2968
  call void @llvm.dbg.value(metadata i32 %45, metadata !2923, metadata !DIExpression()), !dbg !2965
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2969
  %47 = load i32, i32* %46, align 8, !dbg !2969, !tbaa !2140
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2970
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2971
  %50 = load i8*, i8** %49, align 8, !dbg !2971, !tbaa !2213
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2972
  %52 = load i8*, i8** %51, align 8, !dbg !2972, !tbaa !2216
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %53, metadata !2924, metadata !DIExpression()), !dbg !2965
  %54 = icmp ugt i64 %40, %53, !dbg !2974
  br i1 %54, label %65, label %55, !dbg !2976

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %56, metadata !2920, metadata !DIExpression()), !dbg !2965
  store i64 %56, i64* %39, align 8, !dbg !2979, !tbaa !2885
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2980
  br i1 %57, label %59, label %58, !dbg !2982

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !2983
  br label %59, !dbg !2983

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !2984
  call void @llvm.dbg.value(metadata i8* %60, metadata !2922, metadata !DIExpression()), !dbg !2965
  store i8* %60, i8** %41, align 8, !dbg !2985, !tbaa !2873
  %61 = load i32, i32* %46, align 8, !dbg !2986, !tbaa !2140
  %62 = load i8*, i8** %49, align 8, !dbg !2987, !tbaa !2213
  %63 = load i8*, i8** %51, align 8, !dbg !2988, !tbaa !2216
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2989
  br label %65, !dbg !2990

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2965
  call void @llvm.dbg.value(metadata i8* %66, metadata !2922, metadata !DIExpression()), !dbg !2965
  store i32 %7, i32* %6, align 4, !dbg !2991, !tbaa !569
  ret i8* %66, !dbg !2992
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2997, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8* %1, metadata !2998, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %2, metadata !2999, metadata !DIExpression()), !dbg !3000
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3001
  ret i8* %4, !dbg !3002
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 0, metadata !2900, metadata !DIExpression()) #33, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %0, metadata !2901, metadata !DIExpression()) #33, !dbg !3007
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !3009
  ret i8* %2, !dbg !3010
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3011 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3015, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %1, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 0, metadata !2997, metadata !DIExpression()) #33, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %0, metadata !2998, metadata !DIExpression()) #33, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %1, metadata !2999, metadata !DIExpression()) #33, !dbg !3018
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !3020
  ret i8* %3, !dbg !3021
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3022 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3026, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i32 %1, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %2, metadata !3028, metadata !DIExpression()), !dbg !3030
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3031
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3031
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3029, metadata !DIExpression()), !dbg !3032
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3033), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %1, metadata !3037, metadata !DIExpression()) #33, !dbg !3043
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3042, metadata !DIExpression()) #33, !dbg !3045
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !3045, !alias.scope !3033
  %6 = icmp eq i32 %1, 10, !dbg !3046
  br i1 %6, label %7, label %8, !dbg !3048

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3049, !noalias !3033
  unreachable, !dbg !3049

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3050
  store i32 %1, i32* %9, align 8, !dbg !3051, !tbaa !2140, !alias.scope !3033
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3052
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3053
  ret i8* %10, !dbg !3054
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3055 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3059, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %1, metadata !3060, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8* %2, metadata !3061, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %3, metadata !3062, metadata !DIExpression()), !dbg !3064
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3065
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3065
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3063, metadata !DIExpression()), !dbg !3066
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3067), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %1, metadata !3037, metadata !DIExpression()) #33, !dbg !3071
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3042, metadata !DIExpression()) #33, !dbg !3073
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !3073, !alias.scope !3067
  %7 = icmp eq i32 %1, 10, !dbg !3074
  br i1 %7, label %8, label %9, !dbg !3075

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !3076, !noalias !3067
  unreachable, !dbg !3076

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3077
  store i32 %1, i32* %10, align 8, !dbg !3078, !tbaa !2140, !alias.scope !3067
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3079
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3080
  ret i8* %11, !dbg !3081
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3082 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3086, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8* %1, metadata !3087, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i32 0, metadata !3026, metadata !DIExpression()) #33, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %0, metadata !3027, metadata !DIExpression()) #33, !dbg !3089
  call void @llvm.dbg.value(metadata i8* %1, metadata !3028, metadata !DIExpression()) #33, !dbg !3089
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3091
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3091
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3029, metadata !DIExpression()) #33, !dbg !3092
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093) #33, !dbg !3096
  call void @llvm.dbg.value(metadata i32 %0, metadata !3037, metadata !DIExpression()) #33, !dbg !3097
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3042, metadata !DIExpression()) #33, !dbg !3099
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !3099, !alias.scope !3093
  %5 = icmp eq i32 %0, 10, !dbg !3100
  br i1 %5, label %6, label %7, !dbg !3101

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !3102, !noalias !3093
  unreachable, !dbg !3102

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3103
  store i32 %0, i32* %8, align 8, !dbg !3104, !tbaa !2140, !alias.scope !3093
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3105
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3106
  ret i8* %9, !dbg !3107
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3108 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3112, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i8* %1, metadata !3113, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i64 %2, metadata !3114, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32 0, metadata !3059, metadata !DIExpression()) #33, !dbg !3116
  call void @llvm.dbg.value(metadata i32 %0, metadata !3060, metadata !DIExpression()) #33, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %1, metadata !3061, metadata !DIExpression()) #33, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %2, metadata !3062, metadata !DIExpression()) #33, !dbg !3116
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3118
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3118
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3063, metadata !DIExpression()) #33, !dbg !3119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3120) #33, !dbg !3123
  call void @llvm.dbg.value(metadata i32 %0, metadata !3037, metadata !DIExpression()) #33, !dbg !3124
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3042, metadata !DIExpression()) #33, !dbg !3126
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !3126, !alias.scope !3120
  %6 = icmp eq i32 %0, 10, !dbg !3127
  br i1 %6, label %7, label %8, !dbg !3128

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3129, !noalias !3120
  unreachable, !dbg !3129

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3130
  store i32 %0, i32* %9, align 8, !dbg !3131, !tbaa !2140, !alias.scope !3120
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !3132
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3133
  ret i8* %10, !dbg !3134
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3135 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3139, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i64 %1, metadata !3140, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8 %2, metadata !3141, metadata !DIExpression()), !dbg !3143
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3144
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3142, metadata !DIExpression()), !dbg !3145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3146, !tbaa.struct !3147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2158, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8 %2, metadata !2159, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8 %2, metadata !2161, metadata !DIExpression()), !dbg !3148
  %6 = lshr i8 %2, 5, !dbg !3150
  %7 = zext i8 %6 to i64, !dbg !3150
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3151
  call void @llvm.dbg.value(metadata i32* %8, metadata !2162, metadata !DIExpression()), !dbg !3148
  %9 = and i8 %2, 31, !dbg !3152
  %10 = zext i8 %9 to i32, !dbg !3152
  call void @llvm.dbg.value(metadata i32 %10, metadata !2164, metadata !DIExpression()), !dbg !3148
  %11 = load i32, i32* %8, align 4, !dbg !3153, !tbaa !569
  %12 = lshr i32 %11, %10, !dbg !3154
  %13 = and i32 %12, 1, !dbg !3155
  call void @llvm.dbg.value(metadata i32 %13, metadata !2165, metadata !DIExpression()), !dbg !3148
  %14 = xor i32 %13, 1, !dbg !3156
  %15 = shl i32 %14, %10, !dbg !3157
  %16 = xor i32 %15, %11, !dbg !3158
  store i32 %16, i32* %8, align 4, !dbg !3158, !tbaa !569
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3160
  ret i8* %17, !dbg !3161
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3162 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3166, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8 %1, metadata !3167, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8* %0, metadata !3139, metadata !DIExpression()) #33, !dbg !3169
  call void @llvm.dbg.value(metadata i64 -1, metadata !3140, metadata !DIExpression()) #33, !dbg !3169
  call void @llvm.dbg.value(metadata i8 %1, metadata !3141, metadata !DIExpression()) #33, !dbg !3169
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3171
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3171
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3142, metadata !DIExpression()) #33, !dbg !3172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3173, !tbaa.struct !3147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2158, metadata !DIExpression()) #33, !dbg !3174
  call void @llvm.dbg.value(metadata i8 %1, metadata !2159, metadata !DIExpression()) #33, !dbg !3174
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()) #33, !dbg !3174
  call void @llvm.dbg.value(metadata i8 %1, metadata !2161, metadata !DIExpression()) #33, !dbg !3174
  %5 = lshr i8 %1, 5, !dbg !3176
  %6 = zext i8 %5 to i64, !dbg !3176
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3177
  call void @llvm.dbg.value(metadata i32* %7, metadata !2162, metadata !DIExpression()) #33, !dbg !3174
  %8 = and i8 %1, 31, !dbg !3178
  %9 = zext i8 %8 to i32, !dbg !3178
  call void @llvm.dbg.value(metadata i32 %9, metadata !2164, metadata !DIExpression()) #33, !dbg !3174
  %10 = load i32, i32* %7, align 4, !dbg !3179, !tbaa !569
  %11 = lshr i32 %10, %9, !dbg !3180
  %12 = and i32 %11, 1, !dbg !3181
  call void @llvm.dbg.value(metadata i32 %12, metadata !2165, metadata !DIExpression()) #33, !dbg !3174
  %13 = xor i32 %12, 1, !dbg !3182
  %14 = shl i32 %13, %9, !dbg !3183
  %15 = xor i32 %14, %10, !dbg !3184
  store i32 %15, i32* %7, align 4, !dbg !3184, !tbaa !569
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3185
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3186
  ret i8* %16, !dbg !3187
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3188 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3190, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i8* %0, metadata !3166, metadata !DIExpression()) #33, !dbg !3192
  call void @llvm.dbg.value(metadata i8 58, metadata !3167, metadata !DIExpression()) #33, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %0, metadata !3139, metadata !DIExpression()) #33, !dbg !3194
  call void @llvm.dbg.value(metadata i64 -1, metadata !3140, metadata !DIExpression()) #33, !dbg !3194
  call void @llvm.dbg.value(metadata i8 58, metadata !3141, metadata !DIExpression()) #33, !dbg !3194
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3196
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !3196
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3142, metadata !DIExpression()) #33, !dbg !3197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3198, !tbaa.struct !3147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2158, metadata !DIExpression()) #33, !dbg !3199
  call void @llvm.dbg.value(metadata i8 58, metadata !2159, metadata !DIExpression()) #33, !dbg !3199
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()) #33, !dbg !3199
  call void @llvm.dbg.value(metadata i8 58, metadata !2161, metadata !DIExpression()) #33, !dbg !3199
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3201
  call void @llvm.dbg.value(metadata i32* %4, metadata !2162, metadata !DIExpression()) #33, !dbg !3199
  call void @llvm.dbg.value(metadata i32 26, metadata !2164, metadata !DIExpression()) #33, !dbg !3199
  %5 = load i32, i32* %4, align 4, !dbg !3202, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %5, metadata !2165, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !3199
  %6 = or i32 %5, 67108864, !dbg !3203
  store i32 %6, i32* %4, align 4, !dbg !3203, !tbaa !569
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !3204
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !3205
  ret i8* %7, !dbg !3206
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3207 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3209, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %1, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %0, metadata !3139, metadata !DIExpression()) #33, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %1, metadata !3140, metadata !DIExpression()) #33, !dbg !3212
  call void @llvm.dbg.value(metadata i8 58, metadata !3141, metadata !DIExpression()) #33, !dbg !3212
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3214
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3214
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3142, metadata !DIExpression()) #33, !dbg !3215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3216, !tbaa.struct !3147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2158, metadata !DIExpression()) #33, !dbg !3217
  call void @llvm.dbg.value(metadata i8 58, metadata !2159, metadata !DIExpression()) #33, !dbg !3217
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()) #33, !dbg !3217
  call void @llvm.dbg.value(metadata i8 58, metadata !2161, metadata !DIExpression()) #33, !dbg !3217
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3219
  call void @llvm.dbg.value(metadata i32* %5, metadata !2162, metadata !DIExpression()) #33, !dbg !3217
  call void @llvm.dbg.value(metadata i32 26, metadata !2164, metadata !DIExpression()) #33, !dbg !3217
  %6 = load i32, i32* %5, align 4, !dbg !3220, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %6, metadata !2165, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !3217
  %7 = or i32 %6, 67108864, !dbg !3221
  store i32 %7, i32* %5, align 4, !dbg !3221, !tbaa !569
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3222
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3223
  ret i8* %8, !dbg !3224
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3225 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3227, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i32 %1, metadata !3228, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8* %2, metadata !3229, metadata !DIExpression()), !dbg !3231
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3232
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3232
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3230, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 %1, metadata !3037, metadata !DIExpression()) #33, !dbg !3234
  call void @llvm.dbg.value(metadata i32 0, metadata !3042, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3234
  %6 = icmp eq i32 %1, 10, !dbg !3236
  br i1 %6, label %7, label %8, !dbg !3237

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3238, !noalias !3239
  unreachable, !dbg !3238

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3042, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3234
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3242
  store i32 %1, i32* %9, align 8, !dbg !3242, !tbaa.struct !3147
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3242
  %11 = bitcast i32* %10 to i8*, !dbg !3242
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2158, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i8 58, metadata !2159, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i8 58, metadata !2161, metadata !DIExpression()), !dbg !3243
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3245
  call void @llvm.dbg.value(metadata i32* %12, metadata !2162, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 26, metadata !2164, metadata !DIExpression()), !dbg !3243
  %13 = load i32, i32* %12, align 4, !dbg !3246, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %13, metadata !2165, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3243
  %14 = or i32 %13, 67108864, !dbg !3247
  store i32 %14, i32* %12, align 4, !dbg !3247, !tbaa !569
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3248
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3249
  ret i8* %15, !dbg !3250
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3251 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3255, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* %1, metadata !3256, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* %2, metadata !3257, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* %3, metadata !3258, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i32 %0, metadata !3260, metadata !DIExpression()) #33, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %1, metadata !3265, metadata !DIExpression()) #33, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %2, metadata !3266, metadata !DIExpression()) #33, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %3, metadata !3267, metadata !DIExpression()) #33, !dbg !3270
  call void @llvm.dbg.value(metadata i64 -1, metadata !3268, metadata !DIExpression()) #33, !dbg !3270
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3272
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3272
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3269, metadata !DIExpression()) #33, !dbg !3273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3274, !tbaa.struct !3147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2198, metadata !DIExpression()) #33, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %1, metadata !2199, metadata !DIExpression()) #33, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %2, metadata !2200, metadata !DIExpression()) #33, !dbg !3275
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2198, metadata !DIExpression()) #33, !dbg !3275
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3277
  store i32 10, i32* %7, align 8, !dbg !3278, !tbaa !2140
  %8 = icmp ne i8* %1, null, !dbg !3279
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3280
  br i1 %10, label %12, label %11, !dbg !3280

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3281
  unreachable, !dbg !3281

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3282
  store i8* %1, i8** %13, align 8, !dbg !3283, !tbaa !2213
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3284
  store i8* %2, i8** %14, align 8, !dbg !3285, !tbaa !2216
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !3286
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3287
  ret i8* %15, !dbg !3288
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3261 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3260, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %1, metadata !3265, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %2, metadata !3266, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %3, metadata !3267, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %4, metadata !3268, metadata !DIExpression()), !dbg !3289
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3290
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !3290
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3269, metadata !DIExpression()), !dbg !3291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3292, !tbaa.struct !3147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2198, metadata !DIExpression()) #33, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %1, metadata !2199, metadata !DIExpression()) #33, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %2, metadata !2200, metadata !DIExpression()) #33, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2198, metadata !DIExpression()) #33, !dbg !3293
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3295
  store i32 10, i32* %8, align 8, !dbg !3296, !tbaa !2140
  %9 = icmp ne i8* %1, null, !dbg !3297
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3298
  br i1 %11, label %13, label %12, !dbg !3298

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !3299
  unreachable, !dbg !3299

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3300
  store i8* %1, i8** %14, align 8, !dbg !3301, !tbaa !2213
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3302
  store i8* %2, i8** %15, align 8, !dbg !3303, !tbaa !2216
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3304
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !3305
  ret i8* %16, !dbg !3306
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3307 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8* %1, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8* %2, metadata !3313, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 0, metadata !3255, metadata !DIExpression()) #33, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %0, metadata !3256, metadata !DIExpression()) #33, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %1, metadata !3257, metadata !DIExpression()) #33, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %2, metadata !3258, metadata !DIExpression()) #33, !dbg !3315
  call void @llvm.dbg.value(metadata i32 0, metadata !3260, metadata !DIExpression()) #33, !dbg !3317
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #33, !dbg !3317
  call void @llvm.dbg.value(metadata i8* %1, metadata !3266, metadata !DIExpression()) #33, !dbg !3317
  call void @llvm.dbg.value(metadata i8* %2, metadata !3267, metadata !DIExpression()) #33, !dbg !3317
  call void @llvm.dbg.value(metadata i64 -1, metadata !3268, metadata !DIExpression()) #33, !dbg !3317
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3319
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3319
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3269, metadata !DIExpression()) #33, !dbg !3320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3321, !tbaa.struct !3147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2198, metadata !DIExpression()) #33, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %0, metadata !2199, metadata !DIExpression()) #33, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %1, metadata !2200, metadata !DIExpression()) #33, !dbg !3322
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2198, metadata !DIExpression()) #33, !dbg !3322
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3324
  store i32 10, i32* %6, align 8, !dbg !3325, !tbaa !2140
  %7 = icmp ne i8* %0, null, !dbg !3326
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3327
  br i1 %9, label %11, label %10, !dbg !3327

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !3328
  unreachable, !dbg !3328

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3329
  store i8* %0, i8** %12, align 8, !dbg !3330, !tbaa !2213
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3331
  store i8* %1, i8** %13, align 8, !dbg !3332, !tbaa !2216
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !3333
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3334
  ret i8* %14, !dbg !3335
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3336 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3340, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %1, metadata !3341, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %2, metadata !3342, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %3, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3260, metadata !DIExpression()) #33, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #33, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %1, metadata !3266, metadata !DIExpression()) #33, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %2, metadata !3267, metadata !DIExpression()) #33, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %3, metadata !3268, metadata !DIExpression()) #33, !dbg !3345
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3347
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3347
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3269, metadata !DIExpression()) #33, !dbg !3348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3349, !tbaa.struct !3147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2198, metadata !DIExpression()) #33, !dbg !3350
  call void @llvm.dbg.value(metadata i8* %0, metadata !2199, metadata !DIExpression()) #33, !dbg !3350
  call void @llvm.dbg.value(metadata i8* %1, metadata !2200, metadata !DIExpression()) #33, !dbg !3350
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2198, metadata !DIExpression()) #33, !dbg !3350
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3352
  store i32 10, i32* %7, align 8, !dbg !3353, !tbaa !2140
  %8 = icmp ne i8* %0, null, !dbg !3354
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3355
  br i1 %10, label %12, label %11, !dbg !3355

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3356
  unreachable, !dbg !3356

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3357
  store i8* %0, i8** %13, align 8, !dbg !3358, !tbaa !2213
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3359
  store i8* %1, i8** %14, align 8, !dbg !3360, !tbaa !2216
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !3361
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3362
  ret i8* %15, !dbg !3363
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3364 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3368, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i8* %1, metadata !3369, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %2, metadata !3370, metadata !DIExpression()), !dbg !3371
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3372
  ret i8* %4, !dbg !3373
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3374 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3378, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %1, metadata !3379, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 0, metadata !3368, metadata !DIExpression()) #33, !dbg !3381
  call void @llvm.dbg.value(metadata i8* %0, metadata !3369, metadata !DIExpression()) #33, !dbg !3381
  call void @llvm.dbg.value(metadata i64 %1, metadata !3370, metadata !DIExpression()) #33, !dbg !3381
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3383
  ret i8* %3, !dbg !3384
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8* %1, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i32 %0, metadata !3368, metadata !DIExpression()) #33, !dbg !3392
  call void @llvm.dbg.value(metadata i8* %1, metadata !3369, metadata !DIExpression()) #33, !dbg !3392
  call void @llvm.dbg.value(metadata i64 -1, metadata !3370, metadata !DIExpression()) #33, !dbg !3392
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3394
  ret i8* %3, !dbg !3395
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3396 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i32 0, metadata !3389, metadata !DIExpression()) #33, !dbg !3402
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()) #33, !dbg !3402
  call void @llvm.dbg.value(metadata i32 0, metadata !3368, metadata !DIExpression()) #33, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %0, metadata !3369, metadata !DIExpression()) #33, !dbg !3404
  call void @llvm.dbg.value(metadata i64 -1, metadata !3370, metadata !DIExpression()) #33, !dbg !3404
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3406
  ret i8* %2, !dbg !3407
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3408 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3447, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8* %1, metadata !3448, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8* %2, metadata !3449, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8* %3, metadata !3450, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8** %4, metadata !3451, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 %5, metadata !3452, metadata !DIExpression()), !dbg !3453
  %7 = icmp eq i8* %1, null, !dbg !3454
  br i1 %7, label %10, label %8, !dbg !3456

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !3457
  br label %12, !dbg !3457

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.89, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !3458
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.91, i64 0, i64 0), i32 noundef 5) #33, !dbg !3459
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !3459
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.92, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3460
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.93, i64 0, i64 0), i32 noundef 5) #33, !dbg !3461
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.94, i64 0, i64 0)) #33, !dbg !3461
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.92, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3462
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
  ], !dbg !3463

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.95, i64 0, i64 0), i32 noundef 5) #33, !dbg !3464
  %21 = load i8*, i8** %4, align 8, !dbg !3464, !tbaa !474
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !3464
  br label %147, !dbg !3466

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.96, i64 0, i64 0), i32 noundef 5) #33, !dbg !3467
  %25 = load i8*, i8** %4, align 8, !dbg !3467, !tbaa !474
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3467
  %27 = load i8*, i8** %26, align 8, !dbg !3467, !tbaa !474
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !3467
  br label %147, !dbg !3468

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.97, i64 0, i64 0), i32 noundef 5) #33, !dbg !3469
  %31 = load i8*, i8** %4, align 8, !dbg !3469, !tbaa !474
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3469
  %33 = load i8*, i8** %32, align 8, !dbg !3469, !tbaa !474
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3469
  %35 = load i8*, i8** %34, align 8, !dbg !3469, !tbaa !474
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !3469
  br label %147, !dbg !3470

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.98, i64 0, i64 0), i32 noundef 5) #33, !dbg !3471
  %39 = load i8*, i8** %4, align 8, !dbg !3471, !tbaa !474
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3471
  %41 = load i8*, i8** %40, align 8, !dbg !3471, !tbaa !474
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3471
  %43 = load i8*, i8** %42, align 8, !dbg !3471, !tbaa !474
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3471
  %45 = load i8*, i8** %44, align 8, !dbg !3471, !tbaa !474
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !3471
  br label %147, !dbg !3472

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.99, i64 0, i64 0), i32 noundef 5) #33, !dbg !3473
  %49 = load i8*, i8** %4, align 8, !dbg !3473, !tbaa !474
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3473
  %51 = load i8*, i8** %50, align 8, !dbg !3473, !tbaa !474
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3473
  %53 = load i8*, i8** %52, align 8, !dbg !3473, !tbaa !474
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3473
  %55 = load i8*, i8** %54, align 8, !dbg !3473, !tbaa !474
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3473
  %57 = load i8*, i8** %56, align 8, !dbg !3473, !tbaa !474
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !3473
  br label %147, !dbg !3474

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.100, i64 0, i64 0), i32 noundef 5) #33, !dbg !3475
  %61 = load i8*, i8** %4, align 8, !dbg !3475, !tbaa !474
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3475
  %63 = load i8*, i8** %62, align 8, !dbg !3475, !tbaa !474
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3475
  %65 = load i8*, i8** %64, align 8, !dbg !3475, !tbaa !474
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3475
  %67 = load i8*, i8** %66, align 8, !dbg !3475, !tbaa !474
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3475
  %69 = load i8*, i8** %68, align 8, !dbg !3475, !tbaa !474
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3475
  %71 = load i8*, i8** %70, align 8, !dbg !3475, !tbaa !474
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !3475
  br label %147, !dbg !3476

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.101, i64 0, i64 0), i32 noundef 5) #33, !dbg !3477
  %75 = load i8*, i8** %4, align 8, !dbg !3477, !tbaa !474
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3477
  %77 = load i8*, i8** %76, align 8, !dbg !3477, !tbaa !474
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3477
  %79 = load i8*, i8** %78, align 8, !dbg !3477, !tbaa !474
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3477
  %81 = load i8*, i8** %80, align 8, !dbg !3477, !tbaa !474
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3477
  %83 = load i8*, i8** %82, align 8, !dbg !3477, !tbaa !474
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3477
  %85 = load i8*, i8** %84, align 8, !dbg !3477, !tbaa !474
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3477
  %87 = load i8*, i8** %86, align 8, !dbg !3477, !tbaa !474
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !3477
  br label %147, !dbg !3478

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.102, i64 0, i64 0), i32 noundef 5) #33, !dbg !3479
  %91 = load i8*, i8** %4, align 8, !dbg !3479, !tbaa !474
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3479
  %93 = load i8*, i8** %92, align 8, !dbg !3479, !tbaa !474
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3479
  %95 = load i8*, i8** %94, align 8, !dbg !3479, !tbaa !474
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3479
  %97 = load i8*, i8** %96, align 8, !dbg !3479, !tbaa !474
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3479
  %99 = load i8*, i8** %98, align 8, !dbg !3479, !tbaa !474
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3479
  %101 = load i8*, i8** %100, align 8, !dbg !3479, !tbaa !474
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3479
  %103 = load i8*, i8** %102, align 8, !dbg !3479, !tbaa !474
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3479
  %105 = load i8*, i8** %104, align 8, !dbg !3479, !tbaa !474
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !3479
  br label %147, !dbg !3480

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.103, i64 0, i64 0), i32 noundef 5) #33, !dbg !3481
  %109 = load i8*, i8** %4, align 8, !dbg !3481, !tbaa !474
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3481
  %111 = load i8*, i8** %110, align 8, !dbg !3481, !tbaa !474
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3481
  %113 = load i8*, i8** %112, align 8, !dbg !3481, !tbaa !474
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3481
  %115 = load i8*, i8** %114, align 8, !dbg !3481, !tbaa !474
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3481
  %117 = load i8*, i8** %116, align 8, !dbg !3481, !tbaa !474
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3481
  %119 = load i8*, i8** %118, align 8, !dbg !3481, !tbaa !474
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3481
  %121 = load i8*, i8** %120, align 8, !dbg !3481, !tbaa !474
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3481
  %123 = load i8*, i8** %122, align 8, !dbg !3481, !tbaa !474
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3481
  %125 = load i8*, i8** %124, align 8, !dbg !3481, !tbaa !474
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !3481
  br label %147, !dbg !3482

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.104, i64 0, i64 0), i32 noundef 5) #33, !dbg !3483
  %129 = load i8*, i8** %4, align 8, !dbg !3483, !tbaa !474
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3483
  %131 = load i8*, i8** %130, align 8, !dbg !3483, !tbaa !474
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3483
  %133 = load i8*, i8** %132, align 8, !dbg !3483, !tbaa !474
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3483
  %135 = load i8*, i8** %134, align 8, !dbg !3483, !tbaa !474
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3483
  %137 = load i8*, i8** %136, align 8, !dbg !3483, !tbaa !474
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3483
  %139 = load i8*, i8** %138, align 8, !dbg !3483, !tbaa !474
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3483
  %141 = load i8*, i8** %140, align 8, !dbg !3483, !tbaa !474
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3483
  %143 = load i8*, i8** %142, align 8, !dbg !3483, !tbaa !474
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3483
  %145 = load i8*, i8** %144, align 8, !dbg !3483, !tbaa !474
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !3483
  br label %147, !dbg !3484

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3485
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3486 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3490, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8* %1, metadata !3491, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8* %3, metadata !3493, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8** %4, metadata !3494, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 0, metadata !3495, metadata !DIExpression()), !dbg !3496
  br label %6, !dbg !3497

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3499
  call void @llvm.dbg.value(metadata i64 %7, metadata !3495, metadata !DIExpression()), !dbg !3496
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3500
  %9 = load i8*, i8** %8, align 8, !dbg !3500, !tbaa !474
  %10 = icmp eq i8* %9, null, !dbg !3502
  %11 = add i64 %7, 1, !dbg !3503
  call void @llvm.dbg.value(metadata i64 %11, metadata !3495, metadata !DIExpression()), !dbg !3496
  br i1 %10, label %12, label %6, !dbg !3502, !llvm.loop !3504

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3506
  ret void, !dbg !3507
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3508 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3523, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i8* %1, metadata !3524, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i8* %2, metadata !3525, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i8* %3, metadata !3526, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3527, metadata !DIExpression()), !dbg !3532
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3533
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !3533
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3529, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 0, metadata !3528, metadata !DIExpression()), !dbg !3531
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3528, metadata !DIExpression()), !dbg !3531
  %11 = load i32, i32* %8, align 8, !dbg !3535
  %12 = icmp sgt i32 %11, -1, !dbg !3535
  br i1 %12, label %20, label %13, !dbg !3535

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3535
  store i32 %14, i32* %8, align 8, !dbg !3535
  %15 = icmp ult i32 %11, -7, !dbg !3535
  br i1 %15, label %16, label %20, !dbg !3535

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3535
  %18 = sext i32 %11 to i64, !dbg !3535
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3535
  br label %24, !dbg !3535

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3535
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3535
  store i8* %23, i8** %10, align 8, !dbg !3535
  br label %24, !dbg !3535

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3535
  %28 = load i8*, i8** %27, align 8, !dbg !3535
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3538
  store i8* %28, i8** %29, align 8, !dbg !3539, !tbaa !474
  %30 = icmp eq i8* %28, null, !dbg !3540
  br i1 %30, label %210, label %31, !dbg !3541

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 1, metadata !3528, metadata !DIExpression()), !dbg !3531
  %32 = icmp sgt i32 %25, -1, !dbg !3535
  br i1 %32, label %40, label %33, !dbg !3535

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3535
  store i32 %34, i32* %8, align 8, !dbg !3535
  %35 = icmp ult i32 %25, -7, !dbg !3535
  br i1 %35, label %36, label %40, !dbg !3535

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3535
  %38 = sext i32 %25 to i64, !dbg !3535
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3535
  br label %44, !dbg !3535

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3535
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3535
  store i8* %43, i8** %10, align 8, !dbg !3535
  br label %44, !dbg !3535

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3535
  %48 = load i8*, i8** %47, align 8, !dbg !3535
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3538
  store i8* %48, i8** %49, align 8, !dbg !3539, !tbaa !474
  %50 = icmp eq i8* %48, null, !dbg !3540
  br i1 %50, label %210, label %51, !dbg !3541

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 2, metadata !3528, metadata !DIExpression()), !dbg !3531
  %52 = icmp sgt i32 %45, -1, !dbg !3535
  br i1 %52, label %60, label %53, !dbg !3535

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3535
  store i32 %54, i32* %8, align 8, !dbg !3535
  %55 = icmp ult i32 %45, -7, !dbg !3535
  br i1 %55, label %56, label %60, !dbg !3535

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3535
  %58 = sext i32 %45 to i64, !dbg !3535
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3535
  br label %64, !dbg !3535

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3535
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3535
  store i8* %63, i8** %10, align 8, !dbg !3535
  br label %64, !dbg !3535

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3535
  %68 = load i8*, i8** %67, align 8, !dbg !3535
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3538
  store i8* %68, i8** %69, align 8, !dbg !3539, !tbaa !474
  %70 = icmp eq i8* %68, null, !dbg !3540
  br i1 %70, label %210, label %71, !dbg !3541

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 3, metadata !3528, metadata !DIExpression()), !dbg !3531
  %72 = icmp sgt i32 %65, -1, !dbg !3535
  br i1 %72, label %80, label %73, !dbg !3535

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3535
  store i32 %74, i32* %8, align 8, !dbg !3535
  %75 = icmp ult i32 %65, -7, !dbg !3535
  br i1 %75, label %76, label %80, !dbg !3535

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3535
  %78 = sext i32 %65 to i64, !dbg !3535
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3535
  br label %84, !dbg !3535

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3535
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3535
  store i8* %83, i8** %10, align 8, !dbg !3535
  br label %84, !dbg !3535

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3535
  %88 = load i8*, i8** %87, align 8, !dbg !3535
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3538
  store i8* %88, i8** %89, align 8, !dbg !3539, !tbaa !474
  %90 = icmp eq i8* %88, null, !dbg !3540
  br i1 %90, label %210, label %91, !dbg !3541

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 4, metadata !3528, metadata !DIExpression()), !dbg !3531
  %92 = icmp sgt i32 %85, -1, !dbg !3535
  br i1 %92, label %100, label %93, !dbg !3535

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3535
  store i32 %94, i32* %8, align 8, !dbg !3535
  %95 = icmp ult i32 %85, -7, !dbg !3535
  br i1 %95, label %96, label %100, !dbg !3535

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3535
  %98 = sext i32 %85 to i64, !dbg !3535
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3535
  br label %104, !dbg !3535

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3535
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3535
  store i8* %103, i8** %10, align 8, !dbg !3535
  br label %104, !dbg !3535

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3535
  %108 = load i8*, i8** %107, align 8, !dbg !3535
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3538
  store i8* %108, i8** %109, align 8, !dbg !3539, !tbaa !474
  %110 = icmp eq i8* %108, null, !dbg !3540
  br i1 %110, label %210, label %111, !dbg !3541

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 5, metadata !3528, metadata !DIExpression()), !dbg !3531
  %112 = icmp sgt i32 %105, -1, !dbg !3535
  br i1 %112, label %120, label %113, !dbg !3535

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3535
  store i32 %114, i32* %8, align 8, !dbg !3535
  %115 = icmp ult i32 %105, -7, !dbg !3535
  br i1 %115, label %116, label %120, !dbg !3535

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3535
  %118 = sext i32 %105 to i64, !dbg !3535
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3535
  br label %124, !dbg !3535

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3535
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3535
  store i8* %123, i8** %10, align 8, !dbg !3535
  br label %124, !dbg !3535

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3535
  %128 = load i8*, i8** %127, align 8, !dbg !3535
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3538
  store i8* %128, i8** %129, align 8, !dbg !3539, !tbaa !474
  %130 = icmp eq i8* %128, null, !dbg !3540
  br i1 %130, label %210, label %131, !dbg !3541

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 6, metadata !3528, metadata !DIExpression()), !dbg !3531
  %132 = icmp sgt i32 %125, -1, !dbg !3535
  br i1 %132, label %140, label %133, !dbg !3535

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3535
  store i32 %134, i32* %8, align 8, !dbg !3535
  %135 = icmp ult i32 %125, -7, !dbg !3535
  br i1 %135, label %136, label %140, !dbg !3535

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3535
  %138 = sext i32 %125 to i64, !dbg !3535
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3535
  br label %144, !dbg !3535

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3535
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3535
  store i8* %143, i8** %10, align 8, !dbg !3535
  br label %144, !dbg !3535

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3535
  %148 = load i8*, i8** %147, align 8, !dbg !3535
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3538
  store i8* %148, i8** %149, align 8, !dbg !3539, !tbaa !474
  %150 = icmp eq i8* %148, null, !dbg !3540
  br i1 %150, label %210, label %151, !dbg !3541

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 7, metadata !3528, metadata !DIExpression()), !dbg !3531
  %152 = icmp sgt i32 %145, -1, !dbg !3535
  br i1 %152, label %160, label %153, !dbg !3535

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3535
  store i32 %154, i32* %8, align 8, !dbg !3535
  %155 = icmp ult i32 %145, -7, !dbg !3535
  br i1 %155, label %156, label %160, !dbg !3535

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3535
  %158 = sext i32 %145 to i64, !dbg !3535
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3535
  br label %164, !dbg !3535

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3535
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3535
  store i8* %163, i8** %10, align 8, !dbg !3535
  br label %164, !dbg !3535

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3535
  %168 = load i8*, i8** %167, align 8, !dbg !3535
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3538
  store i8* %168, i8** %169, align 8, !dbg !3539, !tbaa !474
  %170 = icmp eq i8* %168, null, !dbg !3540
  br i1 %170, label %210, label %171, !dbg !3541

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 8, metadata !3528, metadata !DIExpression()), !dbg !3531
  %172 = icmp sgt i32 %165, -1, !dbg !3535
  br i1 %172, label %180, label %173, !dbg !3535

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3535
  store i32 %174, i32* %8, align 8, !dbg !3535
  %175 = icmp ult i32 %165, -7, !dbg !3535
  br i1 %175, label %176, label %180, !dbg !3535

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3535
  %178 = sext i32 %165 to i64, !dbg !3535
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3535
  br label %184, !dbg !3535

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3535
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3535
  store i8* %183, i8** %10, align 8, !dbg !3535
  br label %184, !dbg !3535

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3535
  %188 = load i8*, i8** %187, align 8, !dbg !3535
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3538
  store i8* %188, i8** %189, align 8, !dbg !3539, !tbaa !474
  %190 = icmp eq i8* %188, null, !dbg !3540
  br i1 %190, label %210, label %191, !dbg !3541

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 9, metadata !3528, metadata !DIExpression()), !dbg !3531
  %192 = icmp sgt i32 %185, -1, !dbg !3535
  br i1 %192, label %200, label %193, !dbg !3535

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3535
  store i32 %194, i32* %8, align 8, !dbg !3535
  %195 = icmp ult i32 %185, -7, !dbg !3535
  br i1 %195, label %196, label %200, !dbg !3535

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3535
  %198 = sext i32 %185 to i64, !dbg !3535
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3535
  br label %203, !dbg !3535

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3535
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3535
  store i8* %202, i8** %10, align 8, !dbg !3535
  br label %203, !dbg !3535

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3535
  %206 = load i8*, i8** %205, align 8, !dbg !3535
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3538
  store i8* %206, i8** %207, align 8, !dbg !3539, !tbaa !474
  %208 = icmp eq i8* %206, null, !dbg !3540
  %209 = select i1 %208, i64 9, i64 10, !dbg !3541
  br label %210, !dbg !3541

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3542
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3543
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !3544
  ret void, !dbg !3544
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3545 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3549, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8* %1, metadata !3550, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8* %2, metadata !3551, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8* %3, metadata !3552, metadata !DIExpression()), !dbg !3554
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3555
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3555
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3553, metadata !DIExpression()), !dbg !3556
  call void @llvm.va_start(i8* nonnull %7), !dbg !3557
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3558
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !3558
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3558, !tbaa.struct !1534
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3558
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !3558
  call void @llvm.va_end(i8* nonnull %7), !dbg !3559
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3560
  ret void, !dbg !3560
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3561 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3562, !tbaa !474
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.92, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3562
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.109, i64 0, i64 0), i32 noundef 5) #33, !dbg !3563
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.110, i64 0, i64 0)) #33, !dbg !3563
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.111, i64 0, i64 0), i32 noundef 5) #33, !dbg !3564
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.113, i64 0, i64 0)) #33, !dbg !3564
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.114, i64 0, i64 0), i32 noundef 5) #33, !dbg !3565
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.115, i64 0, i64 0)) #33, !dbg !3565
  ret void, !dbg !3566
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !3567 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3572, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %1, metadata !3573, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %2, metadata !3574, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8* %0, metadata !3576, metadata !DIExpression()) #33, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %1, metadata !3579, metadata !DIExpression()) #33, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %2, metadata !3580, metadata !DIExpression()) #33, !dbg !3581
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %4, metadata !3584, metadata !DIExpression()) #33, !dbg !3589
  %5 = icmp eq i8* %4, null, !dbg !3591
  br i1 %5, label %6, label %7, !dbg !3593

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3594
  unreachable, !dbg !3594

7:                                                ; preds = %3
  ret i8* %4, !dbg !3595
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3577 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3576, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %1, metadata !3579, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %2, metadata !3580, metadata !DIExpression()), !dbg !3596
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %4, metadata !3584, metadata !DIExpression()) #33, !dbg !3598
  %5 = icmp eq i8* %4, null, !dbg !3600
  br i1 %5, label %6, label %7, !dbg !3601

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3602
  unreachable, !dbg !3602

7:                                                ; preds = %3
  ret i8* %4, !dbg !3603
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3604 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3608, metadata !DIExpression()), !dbg !3609
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3610
  call void @llvm.dbg.value(metadata i8* %2, metadata !3584, metadata !DIExpression()) #33, !dbg !3611
  %3 = icmp eq i8* %2, null, !dbg !3613
  br i1 %3, label %4, label %5, !dbg !3614

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3615
  unreachable, !dbg !3615

5:                                                ; preds = %1
  ret i8* %2, !dbg !3616
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3617 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3621, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %0, metadata !3623, metadata !DIExpression()) #33, !dbg !3627
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3629
  call void @llvm.dbg.value(metadata i8* %2, metadata !3584, metadata !DIExpression()) #33, !dbg !3630
  %3 = icmp eq i8* %2, null, !dbg !3632
  br i1 %3, label %4, label %5, !dbg !3633

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3634
  unreachable, !dbg !3634

5:                                                ; preds = %1
  ret i8* %2, !dbg !3635
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3636 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %0, metadata !3608, metadata !DIExpression()) #33, !dbg !3642
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3644
  call void @llvm.dbg.value(metadata i8* %2, metadata !3584, metadata !DIExpression()) #33, !dbg !3645
  %3 = icmp eq i8* %2, null, !dbg !3647
  br i1 %3, label %4, label %5, !dbg !3648

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3649
  unreachable, !dbg !3649

5:                                                ; preds = %1
  ret i8* %2, !dbg !3650
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3651 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3655, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %1, metadata !3656, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i8* %0, metadata !3658, metadata !DIExpression()) #33, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()) #33, !dbg !3663
  %3 = icmp eq i64 %1, 0, !dbg !3665
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3665
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %5, metadata !3584, metadata !DIExpression()) #33, !dbg !3667
  %6 = icmp eq i8* %5, null, !dbg !3669
  br i1 %6, label %7, label %8, !dbg !3670

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3671
  unreachable, !dbg !3671

8:                                                ; preds = %2
  ret i8* %5, !dbg !3672
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3673 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 %1, metadata !3678, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8* %0, metadata !3680, metadata !DIExpression()) #33, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %1, metadata !3683, metadata !DIExpression()) #33, !dbg !3684
  call void @llvm.dbg.value(metadata i8* %0, metadata !3658, metadata !DIExpression()) #33, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()) #33, !dbg !3686
  %3 = icmp eq i64 %1, 0, !dbg !3688
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3688
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3689
  call void @llvm.dbg.value(metadata i8* %5, metadata !3584, metadata !DIExpression()) #33, !dbg !3690
  %6 = icmp eq i8* %5, null, !dbg !3692
  br i1 %6, label %7, label %8, !dbg !3693

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3694
  unreachable, !dbg !3694

8:                                                ; preds = %2
  ret i8* %5, !dbg !3695
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3696 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3700, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %1, metadata !3701, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %2, metadata !3702, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i8* %0, metadata !3704, metadata !DIExpression()) #33, !dbg !3709
  call void @llvm.dbg.value(metadata i64 %1, metadata !3707, metadata !DIExpression()) #33, !dbg !3709
  call void @llvm.dbg.value(metadata i64 %2, metadata !3708, metadata !DIExpression()) #33, !dbg !3709
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %4, metadata !3584, metadata !DIExpression()) #33, !dbg !3712
  %5 = icmp eq i8* %4, null, !dbg !3714
  br i1 %5, label %6, label %7, !dbg !3715

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3716
  unreachable, !dbg !3716

7:                                                ; preds = %3
  ret i8* %4, !dbg !3717
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3718 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3722, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 %1, metadata !3723, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i8* null, metadata !3576, metadata !DIExpression()) #33, !dbg !3725
  call void @llvm.dbg.value(metadata i64 %0, metadata !3579, metadata !DIExpression()) #33, !dbg !3725
  call void @llvm.dbg.value(metadata i64 %1, metadata !3580, metadata !DIExpression()) #33, !dbg !3725
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3727
  call void @llvm.dbg.value(metadata i8* %3, metadata !3584, metadata !DIExpression()) #33, !dbg !3728
  %4 = icmp eq i8* %3, null, !dbg !3730
  br i1 %4, label %5, label %6, !dbg !3731

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3732
  unreachable, !dbg !3732

6:                                                ; preds = %2
  ret i8* %3, !dbg !3733
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3734 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3738, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %1, metadata !3739, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8* null, metadata !3700, metadata !DIExpression()) #33, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %0, metadata !3701, metadata !DIExpression()) #33, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %1, metadata !3702, metadata !DIExpression()) #33, !dbg !3741
  call void @llvm.dbg.value(metadata i8* null, metadata !3704, metadata !DIExpression()) #33, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %0, metadata !3707, metadata !DIExpression()) #33, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %1, metadata !3708, metadata !DIExpression()) #33, !dbg !3743
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3745
  call void @llvm.dbg.value(metadata i8* %3, metadata !3584, metadata !DIExpression()) #33, !dbg !3746
  %4 = icmp eq i8* %3, null, !dbg !3748
  br i1 %4, label %5, label %6, !dbg !3749

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3750
  unreachable, !dbg !3750

6:                                                ; preds = %2
  ret i8* %3, !dbg !3751
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3752 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3756, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64* %1, metadata !3757, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i8* %0, metadata !414, metadata !DIExpression()) #33, !dbg !3759
  call void @llvm.dbg.value(metadata i64* %1, metadata !415, metadata !DIExpression()) #33, !dbg !3759
  call void @llvm.dbg.value(metadata i64 1, metadata !416, metadata !DIExpression()) #33, !dbg !3759
  %3 = load i64, i64* %1, align 8, !dbg !3761, !tbaa !764
  call void @llvm.dbg.value(metadata i64 %3, metadata !417, metadata !DIExpression()) #33, !dbg !3759
  %4 = icmp eq i8* %0, null, !dbg !3762
  br i1 %4, label %5, label %8, !dbg !3764

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3765
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3768
  br label %15, !dbg !3768

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3769
  %10 = add nuw i64 %9, 1, !dbg !3769
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !3769
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3769
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %13, metadata !417, metadata !DIExpression()) #33, !dbg !3759
  br i1 %12, label %14, label %15, !dbg !3772

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !3773
  unreachable, !dbg !3773

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3759
  call void @llvm.dbg.value(metadata i64 %16, metadata !417, metadata !DIExpression()) #33, !dbg !3759
  call void @llvm.dbg.value(metadata i8* %0, metadata !3576, metadata !DIExpression()) #33, !dbg !3774
  call void @llvm.dbg.value(metadata i64 %16, metadata !3579, metadata !DIExpression()) #33, !dbg !3774
  call void @llvm.dbg.value(metadata i64 1, metadata !3580, metadata !DIExpression()) #33, !dbg !3774
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !3776
  call void @llvm.dbg.value(metadata i8* %17, metadata !3584, metadata !DIExpression()) #33, !dbg !3777
  %18 = icmp eq i8* %17, null, !dbg !3779
  br i1 %18, label %19, label %20, !dbg !3780

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !3781
  unreachable, !dbg !3781

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !414, metadata !DIExpression()) #33, !dbg !3759
  store i64 %16, i64* %1, align 8, !dbg !3782, !tbaa !764
  ret i8* %17, !dbg !3783
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !414, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64* %1, metadata !415, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %2, metadata !416, metadata !DIExpression()), !dbg !3784
  %4 = load i64, i64* %1, align 8, !dbg !3785, !tbaa !764
  call void @llvm.dbg.value(metadata i64 %4, metadata !417, metadata !DIExpression()), !dbg !3784
  %5 = icmp eq i8* %0, null, !dbg !3786
  br i1 %5, label %6, label %13, !dbg !3787

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3788
  br i1 %7, label %8, label %20, !dbg !3789

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3790
  call void @llvm.dbg.value(metadata i64 %9, metadata !417, metadata !DIExpression()), !dbg !3784
  %10 = icmp ugt i64 %2, 128, !dbg !3792
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3793
  call void @llvm.dbg.value(metadata i64 %12, metadata !417, metadata !DIExpression()), !dbg !3784
  br label %20, !dbg !3794

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3795
  %15 = add nuw i64 %14, 1, !dbg !3795
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3795
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3795
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3795
  call void @llvm.dbg.value(metadata i64 %18, metadata !417, metadata !DIExpression()), !dbg !3784
  br i1 %17, label %19, label %20, !dbg !3796

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !3797
  unreachable, !dbg !3797

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3784
  call void @llvm.dbg.value(metadata i64 %21, metadata !417, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %0, metadata !3576, metadata !DIExpression()) #33, !dbg !3798
  call void @llvm.dbg.value(metadata i64 %21, metadata !3579, metadata !DIExpression()) #33, !dbg !3798
  call void @llvm.dbg.value(metadata i64 %2, metadata !3580, metadata !DIExpression()) #33, !dbg !3798
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %22, metadata !3584, metadata !DIExpression()) #33, !dbg !3801
  %23 = icmp eq i8* %22, null, !dbg !3803
  br i1 %23, label %24, label %25, !dbg !3804

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !3805
  unreachable, !dbg !3805

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !414, metadata !DIExpression()), !dbg !3784
  store i64 %21, i64* %1, align 8, !dbg !3806, !tbaa !764
  ret i8* %22, !dbg !3807
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !421 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !426, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64* %1, metadata !427, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %2, metadata !428, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %3, metadata !429, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %4, metadata !430, metadata !DIExpression()), !dbg !3808
  %6 = load i64, i64* %1, align 8, !dbg !3809, !tbaa !764
  call void @llvm.dbg.value(metadata i64 %6, metadata !431, metadata !DIExpression()), !dbg !3808
  %7 = ashr i64 %6, 1, !dbg !3810
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3810
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3810
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3810
  call void @llvm.dbg.value(metadata i64 %10, metadata !432, metadata !DIExpression()), !dbg !3808
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %11, metadata !432, metadata !DIExpression()), !dbg !3808
  %12 = icmp sgt i64 %3, -1, !dbg !3813
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3815
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3815
  call void @llvm.dbg.value(metadata i64 %15, metadata !432, metadata !DIExpression()), !dbg !3808
  %16 = icmp slt i64 %4, 0, !dbg !3816
  br i1 %16, label %17, label %30, !dbg !3816

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3816
  br i1 %18, label %19, label %24, !dbg !3816

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3816
  %21 = udiv i64 9223372036854775807, %20, !dbg !3816
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3816
  br i1 %23, label %46, label %43, !dbg !3816

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3816
  br i1 %25, label %43, label %26, !dbg !3816

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3816
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3816
  %29 = icmp ult i64 %28, %15, !dbg !3816
  br i1 %29, label %46, label %43, !dbg !3816

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3816
  br i1 %31, label %43, label %32, !dbg !3816

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3816
  br i1 %33, label %34, label %40, !dbg !3816

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3816
  br i1 %35, label %43, label %36, !dbg !3816

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3816
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3816
  %39 = icmp ult i64 %38, %4, !dbg !3816
  br i1 %39, label %46, label %43, !dbg !3816

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3816
  %42 = icmp ult i64 %41, %15, !dbg !3816
  br i1 %42, label %46, label %43, !dbg !3816

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !433, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3808
  %44 = mul i64 %15, %4, !dbg !3816
  call void @llvm.dbg.value(metadata i64 %44, metadata !433, metadata !DIExpression()), !dbg !3808
  %45 = icmp slt i64 %44, 128, !dbg !3816
  br i1 %45, label %46, label %52, !dbg !3816

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !434, metadata !DIExpression()), !dbg !3808
  %48 = sdiv i64 %47, %4, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %48, metadata !432, metadata !DIExpression()), !dbg !3808
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3820
  call void @llvm.dbg.value(metadata i64 %51, metadata !433, metadata !DIExpression()), !dbg !3808
  br label %52, !dbg !3821

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3808
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3808
  call void @llvm.dbg.value(metadata i64 %54, metadata !433, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %53, metadata !432, metadata !DIExpression()), !dbg !3808
  %55 = icmp eq i8* %0, null, !dbg !3822
  br i1 %55, label %56, label %57, !dbg !3824

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3825, !tbaa !764
  br label %57, !dbg !3826

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3827
  %59 = icmp slt i64 %58, %2, !dbg !3829
  br i1 %59, label %60, label %97, !dbg !3830

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3831
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3831
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %63, metadata !432, metadata !DIExpression()), !dbg !3808
  br i1 %62, label %96, label %64, !dbg !3832

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3833
  br i1 %66, label %96, label %67, !dbg !3833

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3834

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3834
  br i1 %69, label %70, label %75, !dbg !3834

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3834
  %72 = udiv i64 9223372036854775807, %71, !dbg !3834
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3834
  br i1 %74, label %96, label %94, !dbg !3834

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3834
  br i1 %76, label %94, label %77, !dbg !3834

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3834
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3834
  %80 = icmp ult i64 %79, %63, !dbg !3834
  br i1 %80, label %96, label %94, !dbg !3834

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3834
  br i1 %82, label %94, label %83, !dbg !3834

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3834
  br i1 %84, label %85, label %91, !dbg !3834

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3834
  br i1 %86, label %94, label %87, !dbg !3834

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3834
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3834
  %90 = icmp ult i64 %89, %4, !dbg !3834
  br i1 %90, label %96, label %94, !dbg !3834

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3834
  %93 = icmp ult i64 %92, %63, !dbg !3834
  br i1 %93, label %96, label %94, !dbg !3834

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !433, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3808
  %95 = mul i64 %63, %4, !dbg !3834
  call void @llvm.dbg.value(metadata i64 %95, metadata !433, metadata !DIExpression()), !dbg !3808
  br label %97, !dbg !3835

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !3836
  unreachable, !dbg !3836

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3808
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3808
  call void @llvm.dbg.value(metadata i64 %99, metadata !433, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %98, metadata !432, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i8* %0, metadata !3655, metadata !DIExpression()) #33, !dbg !3837
  call void @llvm.dbg.value(metadata i64 %99, metadata !3656, metadata !DIExpression()) #33, !dbg !3837
  call void @llvm.dbg.value(metadata i8* %0, metadata !3658, metadata !DIExpression()) #33, !dbg !3839
  call void @llvm.dbg.value(metadata i64 %99, metadata !3662, metadata !DIExpression()) #33, !dbg !3839
  %100 = icmp eq i64 %99, 0, !dbg !3841
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3841
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !3842
  call void @llvm.dbg.value(metadata i8* %102, metadata !3584, metadata !DIExpression()) #33, !dbg !3843
  %103 = icmp eq i8* %102, null, !dbg !3845
  br i1 %103, label %104, label %105, !dbg !3846

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !3847
  unreachable, !dbg !3847

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !426, metadata !DIExpression()), !dbg !3808
  store i64 %98, i64* %1, align 8, !dbg !3848, !tbaa !764
  ret i8* %102, !dbg !3849
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3850 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3852, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i64 %0, metadata !3854, metadata !DIExpression()) #33, !dbg !3858
  call void @llvm.dbg.value(metadata i64 1, metadata !3857, metadata !DIExpression()) #33, !dbg !3858
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %2, metadata !3584, metadata !DIExpression()) #33, !dbg !3861
  %3 = icmp eq i8* %2, null, !dbg !3863
  br i1 %3, label %4, label %5, !dbg !3864

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3865
  unreachable, !dbg !3865

5:                                                ; preds = %1
  ret i8* %2, !dbg !3866
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3855 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3854, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %1, metadata !3857, metadata !DIExpression()), !dbg !3867
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3868
  call void @llvm.dbg.value(metadata i8* %3, metadata !3584, metadata !DIExpression()) #33, !dbg !3869
  %4 = icmp eq i8* %3, null, !dbg !3871
  br i1 %4, label %5, label %6, !dbg !3872

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3873
  unreachable, !dbg !3873

6:                                                ; preds = %2
  ret i8* %3, !dbg !3874
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3875 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3877, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 %0, metadata !3879, metadata !DIExpression()) #33, !dbg !3883
  call void @llvm.dbg.value(metadata i64 1, metadata !3882, metadata !DIExpression()) #33, !dbg !3883
  call void @llvm.dbg.value(metadata i64 %0, metadata !3885, metadata !DIExpression()) #33, !dbg !3889
  call void @llvm.dbg.value(metadata i64 1, metadata !3888, metadata !DIExpression()) #33, !dbg !3889
  call void @llvm.dbg.value(metadata i64 %0, metadata !3885, metadata !DIExpression()) #33, !dbg !3889
  call void @llvm.dbg.value(metadata i64 1, metadata !3888, metadata !DIExpression()) #33, !dbg !3889
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3891
  call void @llvm.dbg.value(metadata i8* %2, metadata !3584, metadata !DIExpression()) #33, !dbg !3892
  %3 = icmp eq i8* %2, null, !dbg !3894
  br i1 %3, label %4, label %5, !dbg !3895

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3896
  unreachable, !dbg !3896

5:                                                ; preds = %1
  ret i8* %2, !dbg !3897
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3880 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3879, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %1, metadata !3882, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %0, metadata !3885, metadata !DIExpression()) #33, !dbg !3899
  call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()) #33, !dbg !3899
  call void @llvm.dbg.value(metadata i64 %0, metadata !3885, metadata !DIExpression()) #33, !dbg !3899
  call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()) #33, !dbg !3899
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3901
  call void @llvm.dbg.value(metadata i8* %3, metadata !3584, metadata !DIExpression()) #33, !dbg !3902
  %4 = icmp eq i8* %3, null, !dbg !3904
  br i1 %4, label %5, label %6, !dbg !3905

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3906
  unreachable, !dbg !3906

6:                                                ; preds = %2
  ret i8* %3, !dbg !3907
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3908 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3912, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %1, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %1, metadata !3608, metadata !DIExpression()) #33, !dbg !3915
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3917
  call void @llvm.dbg.value(metadata i8* %3, metadata !3584, metadata !DIExpression()) #33, !dbg !3918
  %4 = icmp eq i8* %3, null, !dbg !3920
  br i1 %4, label %5, label %6, !dbg !3921

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3922
  unreachable, !dbg !3922

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3923, metadata !DIExpression()) #33, !dbg !3928
  call void @llvm.dbg.value(metadata i8* %0, metadata !3926, metadata !DIExpression()) #33, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %1, metadata !3927, metadata !DIExpression()) #33, !dbg !3928
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3930
  ret i8* %3, !dbg !3931
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3932 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %1, metadata !3937, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %1, metadata !3621, metadata !DIExpression()) #33, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %1, metadata !3623, metadata !DIExpression()) #33, !dbg !3941
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3943
  call void @llvm.dbg.value(metadata i8* %3, metadata !3584, metadata !DIExpression()) #33, !dbg !3944
  %4 = icmp eq i8* %3, null, !dbg !3946
  br i1 %4, label %5, label %6, !dbg !3947

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3948
  unreachable, !dbg !3948

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3923, metadata !DIExpression()) #33, !dbg !3949
  call void @llvm.dbg.value(metadata i8* %0, metadata !3926, metadata !DIExpression()) #33, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %1, metadata !3927, metadata !DIExpression()) #33, !dbg !3949
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3951
  ret i8* %3, !dbg !3952
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3953 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3957, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %1, metadata !3958, metadata !DIExpression()), !dbg !3960
  %3 = add nsw i64 %1, 1, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %3, metadata !3621, metadata !DIExpression()) #33, !dbg !3962
  call void @llvm.dbg.value(metadata i64 %3, metadata !3623, metadata !DIExpression()) #33, !dbg !3964
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3966
  call void @llvm.dbg.value(metadata i8* %4, metadata !3584, metadata !DIExpression()) #33, !dbg !3967
  %5 = icmp eq i8* %4, null, !dbg !3969
  br i1 %5, label %6, label %7, !dbg !3970

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3971
  unreachable, !dbg !3971

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3959, metadata !DIExpression()), !dbg !3960
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3972
  store i8 0, i8* %8, align 1, !dbg !3973, !tbaa !578
  call void @llvm.dbg.value(metadata i8* %4, metadata !3923, metadata !DIExpression()) #33, !dbg !3974
  call void @llvm.dbg.value(metadata i8* %0, metadata !3926, metadata !DIExpression()) #33, !dbg !3974
  call void @llvm.dbg.value(metadata i64 %1, metadata !3927, metadata !DIExpression()) #33, !dbg !3974
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3976
  ret i8* %4, !dbg !3977
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3978 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()), !dbg !3981
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !3982
  %3 = add i64 %2, 1, !dbg !3983
  call void @llvm.dbg.value(metadata i8* %0, metadata !3912, metadata !DIExpression()) #33, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %3, metadata !3913, metadata !DIExpression()) #33, !dbg !3984
  call void @llvm.dbg.value(metadata i64 %3, metadata !3608, metadata !DIExpression()) #33, !dbg !3986
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3988
  call void @llvm.dbg.value(metadata i8* %4, metadata !3584, metadata !DIExpression()) #33, !dbg !3989
  %5 = icmp eq i8* %4, null, !dbg !3991
  br i1 %5, label %6, label %7, !dbg !3992

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3993
  unreachable, !dbg !3993

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3923, metadata !DIExpression()) #33, !dbg !3994
  call void @llvm.dbg.value(metadata i8* %0, metadata !3926, metadata !DIExpression()) #33, !dbg !3994
  call void @llvm.dbg.value(metadata i64 %3, metadata !3927, metadata !DIExpression()) #33, !dbg !3994
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !3996
  ret i8* %4, !dbg !3997
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3998 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4003, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %1, metadata !4000, metadata !DIExpression()), !dbg !4004
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.133, i64 0, i64 0), i32 noundef 5) #33, !dbg !4003
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i64 0, i64 0), i8* noundef %2) #33, !dbg !4003
  %3 = icmp eq i32 %1, 0, !dbg !4003
  tail call void @llvm.assume(i1 %3), !dbg !4003
  tail call void @abort() #35, !dbg !4005
  unreachable, !dbg !4005
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !4006 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4044, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i8* %1, metadata !4045, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i32 0, metadata !4046, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i32 0, metadata !4047, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i8 0, metadata !4048, metadata !DIExpression()), !dbg !4068
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4069
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #33, !dbg !4069
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4049, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i8* %1, metadata !4053, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8* %4, metadata !4055, metadata !DIExpression()), !dbg !4071
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4072

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4071
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4073
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4068
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4074
  call void @llvm.dbg.value(metadata i32 %11, metadata !4046, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i32 %10, metadata !4047, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i8* %9, metadata !4055, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8* %8, metadata !4053, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8 poison, metadata !4048, metadata !DIExpression()), !dbg !4068
  %12 = load i8, i8* %8, align 1, !dbg !4075, !tbaa !578
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4076

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4046, metadata !DIExpression()), !dbg !4068
  %14 = icmp ult i8* %9, %5, !dbg !4077
  br i1 %14, label %15, label %47, !dbg !4080

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4081
  call void @llvm.dbg.value(metadata i8* %16, metadata !4055, metadata !DIExpression()), !dbg !4071
  store i8 114, i8* %9, align 1, !dbg !4082, !tbaa !578
  br label %47, !dbg !4083

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4046, metadata !DIExpression()), !dbg !4068
  %18 = or i32 %10, 576, !dbg !4084
  call void @llvm.dbg.value(metadata i32 %18, metadata !4047, metadata !DIExpression()), !dbg !4068
  %19 = icmp ult i8* %9, %5, !dbg !4085
  br i1 %19, label %20, label %47, !dbg !4087

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4088
  call void @llvm.dbg.value(metadata i8* %21, metadata !4055, metadata !DIExpression()), !dbg !4071
  store i8 119, i8* %9, align 1, !dbg !4089, !tbaa !578
  br label %47, !dbg !4090

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4046, metadata !DIExpression()), !dbg !4068
  %23 = or i32 %10, 1088, !dbg !4091
  call void @llvm.dbg.value(metadata i32 %23, metadata !4047, metadata !DIExpression()), !dbg !4068
  %24 = icmp ult i8* %9, %5, !dbg !4092
  br i1 %24, label %25, label %47, !dbg !4094

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4095
  call void @llvm.dbg.value(metadata i8* %26, metadata !4055, metadata !DIExpression()), !dbg !4071
  store i8 97, i8* %9, align 1, !dbg !4096, !tbaa !578
  br label %47, !dbg !4097

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4047, metadata !DIExpression()), !dbg !4068
  %28 = icmp ult i8* %9, %5, !dbg !4098
  br i1 %28, label %29, label %47, !dbg !4100

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4101
  call void @llvm.dbg.value(metadata i8* %30, metadata !4055, metadata !DIExpression()), !dbg !4071
  store i8 98, i8* %9, align 1, !dbg !4102, !tbaa !578
  br label %47, !dbg !4103

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4046, metadata !DIExpression()), !dbg !4068
  %32 = icmp ult i8* %9, %5, !dbg !4104
  br i1 %32, label %33, label %47, !dbg !4106

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4107
  call void @llvm.dbg.value(metadata i8* %34, metadata !4055, metadata !DIExpression()), !dbg !4071
  store i8 43, i8* %9, align 1, !dbg !4108, !tbaa !578
  br label %47, !dbg !4109

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4110
  call void @llvm.dbg.value(metadata i32 %36, metadata !4047, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i8 1, metadata !4048, metadata !DIExpression()), !dbg !4068
  br label %47, !dbg !4111

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4112
  call void @llvm.dbg.value(metadata i32 %38, metadata !4047, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i8 1, metadata !4048, metadata !DIExpression()), !dbg !4068
  br label %47, !dbg !4113

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #34, !dbg !4114
  call void @llvm.dbg.value(metadata i64 %40, metadata !4056, metadata !DIExpression()), !dbg !4115
  %41 = ptrtoint i8* %5 to i64, !dbg !4116
  %42 = ptrtoint i8* %9 to i64, !dbg !4116
  %43 = sub i64 %41, %42, !dbg !4116
  %44 = icmp ugt i64 %40, %43, !dbg !4118
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4119
  call void @llvm.dbg.value(metadata i64 %45, metadata !4056, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i8* %9, metadata !4120, metadata !DIExpression()) #33, !dbg !4125
  call void @llvm.dbg.value(metadata i8* %8, metadata !4123, metadata !DIExpression()) #33, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %45, metadata !4124, metadata !DIExpression()) #33, !dbg !4125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #33, !dbg !4127
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4128
  call void @llvm.dbg.value(metadata i8* %46, metadata !4055, metadata !DIExpression()), !dbg !4071
  br label %53, !dbg !4129

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4071
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4068
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4068
  call void @llvm.dbg.value(metadata i32 %51, metadata !4046, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i32 %50, metadata !4047, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i8* %49, metadata !4055, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8 poison, metadata !4048, metadata !DIExpression()), !dbg !4068
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4130
  call void @llvm.dbg.value(metadata i8* %52, metadata !4053, metadata !DIExpression()), !dbg !4071
  br label %6, !dbg !4131, !llvm.loop !4132

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4071
  call void @llvm.dbg.value(metadata i8* %54, metadata !4055, metadata !DIExpression()), !dbg !4071
  store i8 0, i8* %54, align 1, !dbg !4134, !tbaa !578
  br i1 %7, label %55, label %66, !dbg !4135

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4136
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #33, !dbg !4137
  call void @llvm.dbg.value(metadata i32 %57, metadata !4061, metadata !DIExpression()), !dbg !4138
  %58 = icmp slt i32 %57, 0, !dbg !4139
  br i1 %58, label %68, label %59, !dbg !4141

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #33, !dbg !4142
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4064, metadata !DIExpression()), !dbg !4138
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4143
  br i1 %61, label %62, label %68, !dbg !4144

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #36, !dbg !4145
  %64 = load i32, i32* %63, align 4, !dbg !4145, !tbaa !569
  call void @llvm.dbg.value(metadata i32 %64, metadata !4065, metadata !DIExpression()), !dbg !4146
  %65 = call i32 @close(i32 noundef %57) #33, !dbg !4147
  store i32 %64, i32* %63, align 4, !dbg !4148, !tbaa !569
  br label %68, !dbg !4149

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4150, metadata !DIExpression()) #33, !dbg !4154
  call void @llvm.dbg.value(metadata i8* %1, metadata !4153, metadata !DIExpression()) #33, !dbg !4154
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #33, !dbg !4156
  br label %68, !dbg !4157

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4068
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #33, !dbg !4158
  ret %struct._IO_FILE* %69, !dbg !4158
}

; Function Attrs: nofree
declare !dbg !4159 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #30

; Function Attrs: nofree nounwind
declare !dbg !4162 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4165 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4166 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4204, metadata !DIExpression()), !dbg !4209
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !4210
  call void @llvm.dbg.value(metadata i1 undef, metadata !4205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4211, metadata !DIExpression()), !dbg !4214
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4216
  %4 = load i32, i32* %3, align 8, !dbg !4216, !tbaa !1118
  %5 = and i32 %4, 32, !dbg !4217
  %6 = icmp eq i32 %5, 0, !dbg !4217
  call void @llvm.dbg.value(metadata i1 %6, metadata !4207, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !4218
  %8 = icmp eq i32 %7, 0, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %8, metadata !4208, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  br i1 %6, label %9, label %19, !dbg !4220

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4222
  call void @llvm.dbg.value(metadata i1 %10, metadata !4205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4223
  %12 = xor i1 %8, true, !dbg !4223
  %13 = sext i1 %12 to i32, !dbg !4223
  br i1 %11, label %22, label %14, !dbg !4223

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !4224
  %16 = load i32, i32* %15, align 4, !dbg !4224, !tbaa !569
  %17 = icmp ne i32 %16, 9, !dbg !4225
  %18 = sext i1 %17 to i32, !dbg !4226
  br label %22, !dbg !4226

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4227

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !4229
  store i32 0, i32* %21, align 4, !dbg !4231, !tbaa !569
  br label %22, !dbg !4229

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4209
  ret i32 %23, !dbg !4232
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4233 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4238, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i8* %1, metadata !4239, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %2, metadata !4240, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4241, metadata !DIExpression()), !dbg !4243
  %5 = icmp eq i8* %1, null, !dbg !4244
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4246
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.141, i64 0, i64 0), i8* %1, !dbg !4246
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4246
  call void @llvm.dbg.value(metadata i64 %8, metadata !4240, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i8* %7, metadata !4239, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i32* %6, metadata !4238, metadata !DIExpression()), !dbg !4243
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4247
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4249
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4241, metadata !DIExpression()), !dbg !4243
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !4250
  call void @llvm.dbg.value(metadata i64 %11, metadata !4242, metadata !DIExpression()), !dbg !4243
  %12 = icmp ult i64 %11, -3, !dbg !4251
  br i1 %12, label %13, label %18, !dbg !4253

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !4254
  %15 = icmp eq i32 %14, 0, !dbg !4254
  br i1 %15, label %16, label %30, !dbg !4255

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4256, metadata !DIExpression()) #33, !dbg !4261
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4263, metadata !DIExpression()) #33, !dbg !4268
  call void @llvm.dbg.value(metadata i32 0, metadata !4266, metadata !DIExpression()) #33, !dbg !4268
  call void @llvm.dbg.value(metadata i64 8, metadata !4267, metadata !DIExpression()) #33, !dbg !4268
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4270
  store i64 0, i64* %17, align 1, !dbg !4270
  br label %30, !dbg !4271

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4272
  br i1 %19, label %20, label %21, !dbg !4274

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !4275
  unreachable, !dbg !4275

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4276

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !4278
  br i1 %24, label %30, label %25, !dbg !4279

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4280
  br i1 %26, label %30, label %27, !dbg !4283

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4284, !tbaa !578
  %29 = zext i8 %28 to i32, !dbg !4285
  store i32 %29, i32* %6, align 4, !dbg !4286, !tbaa !569
  br label %30, !dbg !4287

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4243
  ret i64 %31, !dbg !4288
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4289 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4295 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4297, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %2, metadata !4299, metadata !DIExpression()), !dbg !4301
  %4 = icmp eq i64 %2, 0, !dbg !4302
  br i1 %4, label %8, label %5, !dbg !4302

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4302
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4302
  br i1 %7, label %13, label %8, !dbg !4302

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4300, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4301
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4300, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4301
  %9 = mul i64 %2, %1, !dbg !4302
  call void @llvm.dbg.value(metadata i64 %9, metadata !4300, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i8* %0, metadata !4304, metadata !DIExpression()) #33, !dbg !4308
  call void @llvm.dbg.value(metadata i64 %9, metadata !4307, metadata !DIExpression()) #33, !dbg !4308
  %10 = icmp eq i64 %9, 0, !dbg !4310
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4310
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !4311
  br label %15, !dbg !4312

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4300, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4301
  %14 = tail call i32* @__errno_location() #36, !dbg !4313
  store i32 12, i32* %14, align 4, !dbg !4315, !tbaa !569
  br label %15, !dbg !4316

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4301
  ret i8* %16, !dbg !4317
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4318 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4322, metadata !DIExpression()), !dbg !4327
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4328
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !4328
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4323, metadata !DIExpression()), !dbg !4329
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !4330
  %5 = icmp eq i32 %4, 0, !dbg !4330
  br i1 %5, label %6, label %13, !dbg !4332

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4333, metadata !DIExpression()) #33, !dbg !4337
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i64 0, i64 0), metadata !4336, metadata !DIExpression()) #33, !dbg !4337
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i64 0, i64 0), i64 2), !dbg !4340
  %8 = icmp eq i32 %7, 0, !dbg !4341
  br i1 %8, label %12, label %9, !dbg !4342

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4333, metadata !DIExpression()) #33, !dbg !4343
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.147, i64 0, i64 0), metadata !4336, metadata !DIExpression()) #33, !dbg !4343
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.147, i64 0, i64 0), i64 6), !dbg !4345
  %11 = icmp eq i32 %10, 0, !dbg !4346
  br i1 %11, label %12, label %13, !dbg !4347

12:                                               ; preds = %9, %6
  br label %13, !dbg !4348

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4327
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !4349
  ret i1 %14, !dbg !4349
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4350 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4354, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i8* %1, metadata !4355, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i64 %2, metadata !4356, metadata !DIExpression()), !dbg !4357
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !4358
  ret i32 %4, !dbg !4359
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4364, metadata !DIExpression()), !dbg !4365
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !4366
  ret i8* %2, !dbg !4367
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4368 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4370, metadata !DIExpression()), !dbg !4372
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4373
  call void @llvm.dbg.value(metadata i8* %2, metadata !4371, metadata !DIExpression()), !dbg !4372
  ret i8* %2, !dbg !4374
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4375 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4377, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i8* %1, metadata !4378, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %2, metadata !4379, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i32 %0, metadata !4370, metadata !DIExpression()) #33, !dbg !4385
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4387
  call void @llvm.dbg.value(metadata i8* %4, metadata !4371, metadata !DIExpression()) #33, !dbg !4385
  call void @llvm.dbg.value(metadata i8* %4, metadata !4380, metadata !DIExpression()), !dbg !4384
  %5 = icmp eq i8* %4, null, !dbg !4388
  br i1 %5, label %6, label %9, !dbg !4389

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4390
  br i1 %7, label %19, label %8, !dbg !4393

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4394, !tbaa !578
  br label %19, !dbg !4395

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !4396
  call void @llvm.dbg.value(metadata i64 %10, metadata !4381, metadata !DIExpression()), !dbg !4397
  %11 = icmp ult i64 %10, %2, !dbg !4398
  br i1 %11, label %12, label %14, !dbg !4400

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i8* %1, metadata !4403, metadata !DIExpression()) #33, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %4, metadata !4406, metadata !DIExpression()) #33, !dbg !4408
  call void @llvm.dbg.value(metadata i64 %13, metadata !4407, metadata !DIExpression()) #33, !dbg !4408
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !4410
  br label %19, !dbg !4411

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4412
  br i1 %15, label %19, label %16, !dbg !4415

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4416
  call void @llvm.dbg.value(metadata i8* %1, metadata !4403, metadata !DIExpression()) #33, !dbg !4418
  call void @llvm.dbg.value(metadata i8* %4, metadata !4406, metadata !DIExpression()) #33, !dbg !4418
  call void @llvm.dbg.value(metadata i64 %17, metadata !4407, metadata !DIExpression()) #33, !dbg !4418
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !4420
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4421
  store i8 0, i8* %18, align 1, !dbg !4422, !tbaa !578
  br label %19, !dbg !4423

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4424
  ret i32 %20, !dbg !4425
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
attributes #13 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind }
attributes #34 = { nounwind readonly willreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind readnone willreturn }
attributes #37 = { noreturn }
attributes #38 = { nounwind allocsize(0,1) }
attributes #39 = { nounwind allocsize(0) }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !188, !193, !200, !366, !386, !389, !391, !394, !396, !398, !241, !251, !283, !400, !358, !406, !436, !438, !440, !372, !442, !445, !447, !449}
!llvm.ident = !{!451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451, !451}
!llvm.module.flags = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 74, type: !171, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !54, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/paste.c", directory: "/src", checksumkind: CSK_MD5, checksum: "043eec2995868248cd7453e271fe4ea7")
!4 = !{!5, !20, !35, !39, !42, !45}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 42, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIEnumerator(name: "_ISupper", value: 256)
!24 = !DIEnumerator(name: "_ISlower", value: 512)
!25 = !DIEnumerator(name: "_ISalpha", value: 1024)
!26 = !DIEnumerator(name: "_ISdigit", value: 2048)
!27 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!28 = !DIEnumerator(name: "_ISspace", value: 8192)
!29 = !DIEnumerator(name: "_ISprint", value: 16384)
!30 = !DIEnumerator(name: "_ISgraph", value: 32768)
!31 = !DIEnumerator(name: "_ISblank", value: 1)
!32 = !DIEnumerator(name: "_IScntrl", value: 2)
!33 = !DIEnumerator(name: "_ISpunct", value: 4)
!34 = !DIEnumerator(name: "_ISalnum", value: 8)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 127, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!37 = !{!38}
!38 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 131, baseType: !7, size: 32, elements: !40)
!40 = !{!41}
!41 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 130, baseType: !7, size: 32, elements: !43)
!43 = !{!44}
!44 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 44, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!47 = !{!48, !49, !50, !51, !52, !53}
!48 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!49 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!50 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!51 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!52 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!53 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!54 = !{!55, !57, !58, !59, !60, !63, !65, !66}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!67 = !{!68, !71, !73, !75, !78, !0, !164, !166}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 55, type: !70, isLocal: true, isDefinition: true)
!70 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "serial_merge", scope: !2, file: !3, line: 59, type: !70, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "delims", scope: !2, file: !3, line: 63, type: !55, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "delim_lens", scope: !2, file: !3, line: 67, type: !77, isLocal: true, isDefinition: true)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !80, file: !81, line: 575, type: !58, isLocal: true, isDefinition: true)
!80 = distinct !DISubprogram(name: "oputs_", scope: !81, file: !81, line: 573, type: !82, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!81 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!82 = !DISubroutineType(types: !83)
!83 = !{null, !63, !63}
!84 = !{!85, !86, !87, !90, !91, !92, !93, !97, !98, !99, !100, !102, !158, !159, !160, !162, !163}
!85 = !DILocalVariable(name: "program", arg: 1, scope: !80, file: !81, line: 573, type: !63)
!86 = !DILocalVariable(name: "option", arg: 2, scope: !80, file: !81, line: 573, type: !63)
!87 = !DILocalVariable(name: "term", scope: !88, file: !81, line: 585, type: !63)
!88 = distinct !DILexicalBlock(scope: !89, file: !81, line: 582, column: 5)
!89 = distinct !DILexicalBlock(scope: !80, file: !81, line: 581, column: 7)
!90 = !DILocalVariable(name: "double_space", scope: !80, file: !81, line: 594, type: !70)
!91 = !DILocalVariable(name: "first_word", scope: !80, file: !81, line: 595, type: !63)
!92 = !DILocalVariable(name: "option_text", scope: !80, file: !81, line: 596, type: !63)
!93 = !DILocalVariable(name: "s", scope: !94, file: !81, line: 608, type: !63)
!94 = distinct !DILexicalBlock(scope: !95, file: !81, line: 605, column: 5)
!95 = distinct !DILexicalBlock(scope: !96, file: !81, line: 604, column: 12)
!96 = distinct !DILexicalBlock(scope: !80, file: !81, line: 597, column: 7)
!97 = !DILocalVariable(name: "spaces", scope: !94, file: !81, line: 609, type: !60)
!98 = !DILocalVariable(name: "anchor_len", scope: !80, file: !81, line: 620, type: !60)
!99 = !DILocalVariable(name: "desc_text", scope: !80, file: !81, line: 625, type: !63)
!100 = !DILocalVariable(name: "__ptr", scope: !101, file: !81, line: 644, type: !63)
!101 = distinct !DILexicalBlock(scope: !80, file: !81, line: 644, column: 3)
!102 = !DILocalVariable(name: "__stream", scope: !101, file: !81, line: 644, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !106)
!105 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !108)
!107 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !124, !126, !127, !128, !132, !133, !135, !139, !142, !144, !147, !150, !151, !152, !153, !154}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !106, file: !107, line: 51, baseType: !58, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !106, file: !107, line: 54, baseType: !55, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !106, file: !107, line: 55, baseType: !55, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !106, file: !107, line: 56, baseType: !55, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !106, file: !107, line: 57, baseType: !55, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !106, file: !107, line: 58, baseType: !55, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !106, file: !107, line: 59, baseType: !55, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !106, file: !107, line: 60, baseType: !55, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !106, file: !107, line: 61, baseType: !55, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !106, file: !107, line: 64, baseType: !55, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !106, file: !107, line: 65, baseType: !55, size: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !106, file: !107, line: 66, baseType: !55, size: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !106, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !107, line: 36, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !106, file: !107, line: 70, baseType: !125, size: 64, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !106, file: !107, line: 72, baseType: !58, size: 32, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !106, file: !107, line: 73, baseType: !58, size: 32, offset: 928)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !106, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !130, line: 152, baseType: !131)
!130 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!131 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !106, file: !107, line: 77, baseType: !59, size: 16, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !106, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!134 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !106, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 1)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !106, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !107, line: 43, baseType: null)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !106, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !130, line: 153, baseType: !131)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !106, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !107, line: 37, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !106, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !107, line: 38, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !106, file: !107, line: 93, baseType: !125, size: 64, offset: 1344)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !106, file: !107, line: 94, baseType: !57, size: 64, offset: 1408)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !106, file: !107, line: 95, baseType: !60, size: 64, offset: 1472)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !106, file: !107, line: 96, baseType: !58, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !106, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 20)
!158 = !DILocalVariable(name: "__cnt", scope: !101, file: !81, line: 644, type: !60)
!159 = !DILocalVariable(name: "url_program", scope: !80, file: !81, line: 648, type: !63)
!160 = !DILocalVariable(name: "__ptr", scope: !161, file: !81, line: 686, type: !63)
!161 = distinct !DILexicalBlock(scope: !80, file: !81, line: 686, column: 3)
!162 = !DILocalVariable(name: "__stream", scope: !161, file: !81, line: 686, type: !103)
!163 = !DILocalVariable(name: "__cnt", scope: !161, file: !81, line: 686, type: !60)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 72, type: !65, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "num_delims", scope: !2, file: !3, line: 70, type: !168, isLocal: true, isDefinition: true)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !169, line: 130, baseType: !170)
!169 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !61, line: 35, baseType: !131)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 1536, elements: !181)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !174, line: 50, size: 256, elements: !175)
!174 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!175 = !{!176, !177, !178, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !174, line: 52, baseType: !63, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !173, file: !174, line: 55, baseType: !58, size: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !173, file: !174, line: 56, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !173, file: !174, line: 57, baseType: !58, size: 32, offset: 192)
!181 = !{!182}
!182 = !DISubrange(count: 6)
!183 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!184 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!185 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "Version", scope: !188, file: !189, line: 3, type: !63, isLocal: false, isDefinition: true)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !190, splitDebugInlining: false, nameTableKind: None)
!189 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!190 = !{!186}
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "file_name", scope: !193, file: !194, line: 45, type: !63, isLocal: true, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !195, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!195 = !{!191, !196}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !193, file: !194, line: 55, type: !70, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !200, file: !201, line: 66, type: !236, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !202, globals: !203, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!202 = !{!57, !65}
!203 = !{!204, !230, !198, !232, !234}
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "old_file_name", scope: !206, file: !201, line: 304, type: !63, isLocal: true, isDefinition: true)
!206 = distinct !DISubprogram(name: "verror_at_line", scope: !201, file: !201, line: 298, type: !207, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !223)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !58, !58, !63, !7, !63, !209}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !210, line: 52, baseType: !211)
!210 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !212, line: 32, baseType: !213)
!212 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !214, baseType: !215)
!214 = !DIFile(filename: "lib/error.c", directory: "/src")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !216, size: 256, elements: !217)
!216 = !DINamespace(name: "std", scope: null)
!217 = !{!218, !219, !220, !221, !222}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !215, file: !214, baseType: !57, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !215, file: !214, baseType: !57, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !215, file: !214, baseType: !57, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !215, file: !214, baseType: !58, size: 32, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !215, file: !214, baseType: !58, size: 32, offset: 224)
!223 = !{!224, !225, !226, !227, !228, !229}
!224 = !DILocalVariable(name: "status", arg: 1, scope: !206, file: !201, line: 298, type: !58)
!225 = !DILocalVariable(name: "errnum", arg: 2, scope: !206, file: !201, line: 298, type: !58)
!226 = !DILocalVariable(name: "file_name", arg: 3, scope: !206, file: !201, line: 298, type: !63)
!227 = !DILocalVariable(name: "line_number", arg: 4, scope: !206, file: !201, line: 298, type: !7)
!228 = !DILocalVariable(name: "message", arg: 5, scope: !206, file: !201, line: 298, type: !63)
!229 = !DILocalVariable(name: "args", arg: 6, scope: !206, file: !201, line: 298, type: !209)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "old_line_number", scope: !206, file: !201, line: 305, type: !7, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "error_message_count", scope: !200, file: !201, line: 69, type: !7, isLocal: false, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !200, file: !201, line: 295, type: !58, isLocal: false, isDefinition: true)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null}
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "program_name", scope: !241, file: !242, line: 31, type: !63, isLocal: false, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !243, globals: !244, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!243 = !{!55}
!244 = !{!239}
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "utf07FF", scope: !247, file: !248, line: 46, type: !278, isLocal: true, isDefinition: true)
!247 = distinct !DISubprogram(name: "proper_name_lite", scope: !248, file: !248, line: 38, type: !249, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !253)
!248 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!249 = !DISubroutineType(types: !250)
!250 = !{!63, !63, !63}
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !252, splitDebugInlining: false, nameTableKind: None)
!252 = !{!245}
!253 = !{!254, !255, !256, !257, !262}
!254 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !247, file: !248, line: 38, type: !63)
!255 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !247, file: !248, line: 38, type: !63)
!256 = !DILocalVariable(name: "translation", scope: !247, file: !248, line: 40, type: !63)
!257 = !DILocalVariable(name: "w", scope: !247, file: !248, line: 47, type: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !259, line: 37, baseType: !260)
!259 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !130, line: 57, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !130, line: 42, baseType: !7)
!262 = !DILocalVariable(name: "mbs", scope: !247, file: !248, line: 48, type: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !264, line: 6, baseType: !265)
!264 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !266, line: 21, baseType: !267)
!266 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 13, size: 64, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !267, file: !266, line: 15, baseType: !58, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !267, file: !266, line: 20, baseType: !271, size: 32, offset: 32)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !267, file: !266, line: 16, size: 32, elements: !272)
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !271, file: !266, line: 18, baseType: !7, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !271, file: !266, line: 19, baseType: !275, size: 32)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 32, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 4)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 16, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 2)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !283, file: !284, line: 76, type: !352, isLocal: false, isDefinition: true)
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !285, retainedTypes: !291, globals: !292, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!285 = !{!5, !286, !20}
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 254, baseType: !7, size: 32, elements: !287)
!287 = !{!288, !289, !290}
!288 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!289 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!290 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!291 = !{!58, !59, !60}
!292 = !{!281, !293, !299, !311, !313, !318, !341, !348, !350}
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !283, file: !284, line: 92, type: !295, isLocal: false, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 320, elements: !297)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!297 = !{!298}
!298 = !DISubrange(count: 10)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !283, file: !284, line: 1040, type: !301, isLocal: false, isDefinition: true)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !284, line: 56, size: 448, elements: !302)
!302 = !{!303, !304, !305, !309, !310}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !301, file: !284, line: 59, baseType: !5, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !284, line: 62, baseType: !58, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !301, file: !284, line: 66, baseType: !306, size: 256, offset: 64)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !301, file: !284, line: 69, baseType: !63, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !301, file: !284, line: 72, baseType: !63, size: 64, offset: 384)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !283, file: !284, line: 107, type: !301, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "slot0", scope: !283, file: !284, line: 831, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 2048, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 256)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "quote", scope: !320, file: !284, line: 228, type: !339, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "gettext_quote", scope: !284, file: !284, line: 197, type: !321, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{!63, !63, !5}
!323 = !{!324, !325, !326, !327, !328}
!324 = !DILocalVariable(name: "msgid", arg: 1, scope: !320, file: !284, line: 197, type: !63)
!325 = !DILocalVariable(name: "s", arg: 2, scope: !320, file: !284, line: 197, type: !5)
!326 = !DILocalVariable(name: "translation", scope: !320, file: !284, line: 199, type: !63)
!327 = !DILocalVariable(name: "w", scope: !320, file: !284, line: 229, type: !258)
!328 = !DILocalVariable(name: "mbs", scope: !320, file: !284, line: 230, type: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !264, line: 6, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !266, line: 21, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 13, size: 64, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !331, file: !266, line: 15, baseType: !58, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !331, file: !266, line: 20, baseType: !335, size: 32, offset: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !266, line: 16, size: 32, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !335, file: !266, line: 18, baseType: !7, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !335, file: !266, line: 19, baseType: !275, size: 32)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !340)
!340 = !{!280, !277}
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "slotvec", scope: !283, file: !284, line: 834, type: !343, isLocal: true, isDefinition: true)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !284, line: 823, size: 128, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !344, file: !284, line: 825, baseType: !60, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !344, file: !284, line: 826, baseType: !55, size: 64, offset: 64)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "nslots", scope: !283, file: !284, line: 832, type: !58, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "slotvec0", scope: !283, file: !284, line: 833, type: !344, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 704, elements: !354)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!354 = !{!355}
!355 = !DISubrange(count: 11)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !358, file: !359, line: 26, type: !361, isLocal: false, isDefinition: true)
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !360, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!360 = !{!356}
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 376, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 47)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "exit_failure", scope: !366, file: !367, line: 24, type: !369, isLocal: false, isDefinition: true)
!366 = distinct !DICompileUnit(language: DW_LANG_C99, file: !367, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !368, splitDebugInlining: false, nameTableKind: None)
!367 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!368 = !{!364}
!369 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "internal_state", scope: !372, file: !373, line: 97, type: !376, isLocal: true, isDefinition: true)
!372 = distinct !DICompileUnit(language: DW_LANG_C99, file: !373, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !374, globals: !375, splitDebugInlining: false, nameTableKind: None)
!373 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!374 = !{!57, !60, !65}
!375 = !{!370}
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !264, line: 6, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !266, line: 21, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 13, size: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !378, file: !266, line: 15, baseType: !58, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !378, file: !266, line: 20, baseType: !382, size: 32, offset: 32)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !266, line: 16, size: 32, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !382, file: !266, line: 18, baseType: !7, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !382, file: !266, line: 19, baseType: !275, size: 32)
!386 = distinct !DICompileUnit(language: DW_LANG_C99, file: !387, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !388, splitDebugInlining: false, nameTableKind: None)
!387 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!388 = !{!45}
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !393, splitDebugInlining: false, nameTableKind: None)
!392 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!393 = !{!57}
!394 = distinct !DICompileUnit(language: DW_LANG_C99, file: !395, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !393, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!398 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!399 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !402, retainedTypes: !393, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!402 = !{!403}
!403 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !401, line: 40, baseType: !7, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !408, retainedTypes: !435, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!408 = !{!409, !420}
!409 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !410, file: !407, line: 188, baseType: !7, size: 32, elements: !418)
!410 = distinct !DISubprogram(name: "x2nrealloc", scope: !407, file: !407, line: 176, type: !411, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{!57, !57, !77, !60}
!413 = !{!414, !415, !416, !417}
!414 = !DILocalVariable(name: "p", arg: 1, scope: !410, file: !407, line: 176, type: !57)
!415 = !DILocalVariable(name: "pn", arg: 2, scope: !410, file: !407, line: 176, type: !77)
!416 = !DILocalVariable(name: "s", arg: 3, scope: !410, file: !407, line: 176, type: !60)
!417 = !DILocalVariable(name: "n", scope: !410, file: !407, line: 178, type: !60)
!418 = !{!419}
!419 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!420 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !421, file: !407, line: 228, baseType: !7, size: 32, elements: !418)
!421 = distinct !DISubprogram(name: "xpalloc", scope: !407, file: !407, line: 223, type: !422, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !425)
!422 = !DISubroutineType(types: !423)
!423 = !{!57, !57, !424, !168, !170, !168}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434}
!426 = !DILocalVariable(name: "pa", arg: 1, scope: !421, file: !407, line: 223, type: !57)
!427 = !DILocalVariable(name: "pn", arg: 2, scope: !421, file: !407, line: 223, type: !424)
!428 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !421, file: !407, line: 223, type: !168)
!429 = !DILocalVariable(name: "n_max", arg: 4, scope: !421, file: !407, line: 223, type: !170)
!430 = !DILocalVariable(name: "s", arg: 5, scope: !421, file: !407, line: 223, type: !168)
!431 = !DILocalVariable(name: "n0", scope: !421, file: !407, line: 230, type: !168)
!432 = !DILocalVariable(name: "n", scope: !421, file: !407, line: 237, type: !168)
!433 = !DILocalVariable(name: "nbytes", scope: !421, file: !407, line: 248, type: !168)
!434 = !DILocalVariable(name: "adjusted_nbytes", scope: !421, file: !407, line: 252, type: !168)
!435 = !{!55, !57, !70, !131, !62}
!436 = distinct !DICompileUnit(language: DW_LANG_C99, file: !437, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!437 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!438 = distinct !DICompileUnit(language: DW_LANG_C99, file: !439, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !393, splitDebugInlining: false, nameTableKind: None)
!439 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !444, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!444 = !{!70, !62, !57}
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !448, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!448 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !393, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!451 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!452 = !{i32 7, !"Dwarf Version", i32 5}
!453 = !{i32 2, !"Debug Info Version", i32 3}
!454 = !{i32 1, !"wchar_size", i32 4}
!455 = !{i32 1, !"branch-target-enforcement", i32 0}
!456 = !{i32 1, !"sign-return-address", i32 0}
!457 = !{i32 1, !"sign-return-address-all", i32 0}
!458 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!459 = !{i32 7, !"PIC Level", i32 2}
!460 = !{i32 7, !"PIE Level", i32 2}
!461 = !{i32 7, !"uwtable", i32 1}
!462 = !{i32 7, !"frame-pointer", i32 1}
!463 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 447, type: !464, scopeLine: 448, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !58}
!466 = !{!467}
!467 = !DILocalVariable(name: "status", arg: 1, scope: !463, file: !3, line: 447, type: !58)
!468 = !DILocation(line: 0, scope: !463)
!469 = !DILocation(line: 449, column: 14, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !3, line: 449, column: 7)
!471 = !DILocation(line: 449, column: 7, scope: !463)
!472 = !DILocation(line: 450, column: 5, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 450, column: 5)
!474 = !{!475, !475, i64 0}
!475 = !{!"any pointer", !476, i64 0}
!476 = !{!"omnipotent char", !477, i64 0}
!477 = !{!"Simple C/C++ TBAA"}
!478 = !DILocation(line: 453, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !470, file: !3, line: 452, column: 5)
!480 = !DILocation(line: 457, column: 7, scope: !479)
!481 = !DILocation(line: 729, column: 3, scope: !482, inlinedAt: !484)
!482 = distinct !DISubprogram(name: "emit_stdin_note", scope: !81, file: !81, line: 727, type: !237, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !483)
!483 = !{}
!484 = distinct !DILocation(line: 464, column: 7, scope: !479)
!485 = !DILocation(line: 736, column: 3, scope: !486, inlinedAt: !487)
!486 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !81, file: !81, line: 734, type: !237, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !483)
!487 = distinct !DILocation(line: 465, column: 7, scope: !479)
!488 = !DILocation(line: 467, column: 7, scope: !479)
!489 = !DILocation(line: 472, column: 7, scope: !479)
!490 = !DILocation(line: 478, column: 7, scope: !479)
!491 = !DILocation(line: 482, column: 7, scope: !479)
!492 = !DILocation(line: 483, column: 7, scope: !479)
!493 = !DILocalVariable(name: "program", arg: 1, scope: !494, file: !81, line: 836, type: !63)
!494 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !81, file: !81, line: 836, type: !495, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !63}
!497 = !{!493, !498, !507, !508, !510, !511}
!498 = !DILocalVariable(name: "infomap", scope: !494, file: !81, line: 838, type: !499)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 896, elements: !505)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !494, file: !81, line: 838, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !501, file: !81, line: 838, baseType: !63, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !501, file: !81, line: 838, baseType: !63, size: 64, offset: 64)
!505 = !{!506}
!506 = !DISubrange(count: 7)
!507 = !DILocalVariable(name: "node", scope: !494, file: !81, line: 848, type: !63)
!508 = !DILocalVariable(name: "map_prog", scope: !494, file: !81, line: 849, type: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!510 = !DILocalVariable(name: "lc_messages", scope: !494, file: !81, line: 861, type: !63)
!511 = !DILocalVariable(name: "url_program", scope: !494, file: !81, line: 874, type: !63)
!512 = !DILocation(line: 0, scope: !494, inlinedAt: !513)
!513 = distinct !DILocation(line: 485, column: 7, scope: !479)
!514 = !DILocation(line: 838, column: 3, scope: !494, inlinedAt: !513)
!515 = !DILocation(line: 838, column: 67, scope: !494, inlinedAt: !513)
!516 = !DILocation(line: 849, column: 36, scope: !494, inlinedAt: !513)
!517 = !DILocation(line: 851, column: 3, scope: !494, inlinedAt: !513)
!518 = !DILocalVariable(name: "__s1", arg: 1, scope: !519, file: !520, line: 1359, type: !63)
!519 = distinct !DISubprogram(name: "streq", scope: !520, file: !520, line: 1359, type: !521, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !523)
!520 = !DIFile(filename: "./lib/string.h", directory: "/src")
!521 = !DISubroutineType(types: !522)
!522 = !{!70, !63, !63}
!523 = !{!518, !524}
!524 = !DILocalVariable(name: "__s2", arg: 2, scope: !519, file: !520, line: 1359, type: !63)
!525 = !DILocation(line: 0, scope: !519, inlinedAt: !526)
!526 = distinct !DILocation(line: 851, column: 33, scope: !494, inlinedAt: !513)
!527 = !DILocation(line: 1361, column: 11, scope: !519, inlinedAt: !526)
!528 = !DILocation(line: 1361, column: 10, scope: !519, inlinedAt: !526)
!529 = !DILocation(line: 852, column: 13, scope: !494, inlinedAt: !513)
!530 = !DILocation(line: 851, column: 20, scope: !494, inlinedAt: !513)
!531 = !{!532, !475, i64 0}
!532 = !{!"infomap", !475, i64 0, !475, i64 8}
!533 = !DILocation(line: 851, column: 10, scope: !494, inlinedAt: !513)
!534 = !DILocation(line: 851, column: 28, scope: !494, inlinedAt: !513)
!535 = distinct !{!535, !517, !529, !536}
!536 = !{!"llvm.loop.mustprogress"}
!537 = !DILocation(line: 854, column: 17, scope: !538, inlinedAt: !513)
!538 = distinct !DILexicalBlock(scope: !494, file: !81, line: 854, column: 7)
!539 = !{!532, !475, i64 8}
!540 = !DILocation(line: 854, column: 7, scope: !538, inlinedAt: !513)
!541 = !DILocation(line: 854, column: 7, scope: !494, inlinedAt: !513)
!542 = !DILocation(line: 857, column: 3, scope: !494, inlinedAt: !513)
!543 = !DILocation(line: 861, column: 29, scope: !494, inlinedAt: !513)
!544 = !DILocation(line: 862, column: 7, scope: !545, inlinedAt: !513)
!545 = distinct !DILexicalBlock(scope: !494, file: !81, line: 862, column: 7)
!546 = !DILocation(line: 862, column: 19, scope: !545, inlinedAt: !513)
!547 = !DILocation(line: 862, column: 22, scope: !545, inlinedAt: !513)
!548 = !DILocation(line: 862, column: 7, scope: !494, inlinedAt: !513)
!549 = !DILocation(line: 868, column: 7, scope: !550, inlinedAt: !513)
!550 = distinct !DILexicalBlock(scope: !545, file: !81, line: 863, column: 5)
!551 = !DILocation(line: 870, column: 5, scope: !550, inlinedAt: !513)
!552 = !DILocation(line: 0, scope: !519, inlinedAt: !553)
!553 = distinct !DILocation(line: 874, column: 29, scope: !494, inlinedAt: !513)
!554 = !DILocation(line: 875, column: 3, scope: !494, inlinedAt: !513)
!555 = !DILocation(line: 877, column: 3, scope: !494, inlinedAt: !513)
!556 = !DILocation(line: 879, column: 1, scope: !494, inlinedAt: !513)
!557 = !DILocation(line: 487, column: 3, scope: !463)
!558 = !DISubprogram(name: "dcgettext", scope: !559, file: !559, line: 51, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!559 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!560 = !DISubroutineType(types: !561)
!561 = !{!55, !63, !63, !58}
!562 = !DISubprogram(name: "fputs_unlocked", scope: !210, file: !210, line: 691, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!563 = !DISubroutineType(types: !564)
!564 = !{!58, !565, !566}
!565 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!566 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!567 = !DILocation(line: 0, scope: !80)
!568 = !DILocation(line: 581, column: 7, scope: !89)
!569 = !{!570, !570, i64 0}
!570 = !{!"int", !476, i64 0}
!571 = !DILocation(line: 581, column: 19, scope: !89)
!572 = !DILocation(line: 581, column: 7, scope: !80)
!573 = !DILocation(line: 585, column: 26, scope: !88)
!574 = !DILocation(line: 0, scope: !88)
!575 = !DILocation(line: 586, column: 23, scope: !88)
!576 = !DILocation(line: 586, column: 28, scope: !88)
!577 = !DILocation(line: 586, column: 32, scope: !88)
!578 = !{!476, !476, i64 0}
!579 = !DILocation(line: 586, column: 38, scope: !88)
!580 = !DILocation(line: 0, scope: !519, inlinedAt: !581)
!581 = distinct !DILocation(line: 586, column: 41, scope: !88)
!582 = !DILocation(line: 1361, column: 11, scope: !519, inlinedAt: !581)
!583 = !DILocation(line: 1361, column: 10, scope: !519, inlinedAt: !581)
!584 = !DILocation(line: 586, column: 19, scope: !88)
!585 = !DILocation(line: 587, column: 5, scope: !88)
!586 = !DILocation(line: 588, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !80, file: !81, line: 588, column: 7)
!588 = !DILocation(line: 588, column: 7, scope: !80)
!589 = !DILocation(line: 590, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !81, line: 589, column: 5)
!591 = !DILocation(line: 591, column: 7, scope: !590)
!592 = !DILocation(line: 595, column: 37, scope: !80)
!593 = !DILocation(line: 595, column: 35, scope: !80)
!594 = !DILocation(line: 596, column: 29, scope: !80)
!595 = !DILocation(line: 597, column: 8, scope: !96)
!596 = !DILocation(line: 597, column: 7, scope: !80)
!597 = !DILocation(line: 604, column: 24, scope: !95)
!598 = !DILocation(line: 604, column: 12, scope: !96)
!599 = !DILocation(line: 0, scope: !94)
!600 = !DILocation(line: 610, column: 16, scope: !94)
!601 = !DILocation(line: 610, column: 7, scope: !94)
!602 = !DILocation(line: 611, column: 21, scope: !94)
!603 = !{!604, !604, i64 0}
!604 = !{!"short", !476, i64 0}
!605 = !DILocation(line: 611, column: 19, scope: !94)
!606 = !DILocation(line: 611, column: 16, scope: !94)
!607 = !DILocation(line: 610, column: 30, scope: !94)
!608 = distinct !{!608, !601, !602, !536}
!609 = !DILocation(line: 612, column: 18, scope: !610)
!610 = distinct !DILexicalBlock(scope: !94, file: !81, line: 612, column: 11)
!611 = !DILocation(line: 612, column: 11, scope: !94)
!612 = !DILocation(line: 620, column: 23, scope: !80)
!613 = !DILocation(line: 625, column: 39, scope: !80)
!614 = !DILocation(line: 626, column: 3, scope: !80)
!615 = !DILocation(line: 626, column: 10, scope: !80)
!616 = !DILocation(line: 626, column: 21, scope: !80)
!617 = !DILocation(line: 628, column: 44, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !81, line: 628, column: 11)
!619 = distinct !DILexicalBlock(scope: !80, file: !81, line: 627, column: 5)
!620 = !DILocation(line: 628, column: 32, scope: !618)
!621 = !DILocation(line: 628, column: 49, scope: !618)
!622 = !DILocation(line: 628, column: 11, scope: !619)
!623 = !DILocation(line: 630, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !81, line: 630, column: 11)
!625 = !DILocation(line: 630, column: 11, scope: !619)
!626 = !DILocation(line: 632, column: 26, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !81, line: 632, column: 15)
!628 = distinct !DILexicalBlock(scope: !624, file: !81, line: 631, column: 9)
!629 = !DILocation(line: 632, column: 34, scope: !627)
!630 = !DILocation(line: 632, column: 37, scope: !627)
!631 = !DILocation(line: 632, column: 15, scope: !628)
!632 = !DILocation(line: 636, column: 29, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !81, line: 636, column: 15)
!634 = !DILocation(line: 640, column: 16, scope: !619)
!635 = distinct !{!635, !614, !636, !536}
!636 = !DILocation(line: 641, column: 5, scope: !80)
!637 = !DILocation(line: 644, column: 3, scope: !80)
!638 = !DILocation(line: 0, scope: !519, inlinedAt: !639)
!639 = distinct !DILocation(line: 648, column: 31, scope: !80)
!640 = !DILocation(line: 0, scope: !519, inlinedAt: !641)
!641 = distinct !DILocation(line: 649, column: 31, scope: !80)
!642 = !DILocation(line: 0, scope: !519, inlinedAt: !643)
!643 = distinct !DILocation(line: 650, column: 31, scope: !80)
!644 = !DILocation(line: 0, scope: !519, inlinedAt: !645)
!645 = distinct !DILocation(line: 651, column: 31, scope: !80)
!646 = !DILocation(line: 0, scope: !519, inlinedAt: !647)
!647 = distinct !DILocation(line: 652, column: 31, scope: !80)
!648 = !DILocation(line: 0, scope: !519, inlinedAt: !649)
!649 = distinct !DILocation(line: 653, column: 31, scope: !80)
!650 = !DILocation(line: 0, scope: !519, inlinedAt: !651)
!651 = distinct !DILocation(line: 654, column: 31, scope: !80)
!652 = !DILocation(line: 0, scope: !519, inlinedAt: !653)
!653 = distinct !DILocation(line: 655, column: 31, scope: !80)
!654 = !DILocation(line: 0, scope: !519, inlinedAt: !655)
!655 = distinct !DILocation(line: 656, column: 31, scope: !80)
!656 = !DILocation(line: 0, scope: !519, inlinedAt: !657)
!657 = distinct !DILocation(line: 657, column: 31, scope: !80)
!658 = !DILocation(line: 663, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !80, file: !81, line: 663, column: 7)
!660 = !DILocation(line: 664, column: 7, scope: !659)
!661 = !DILocation(line: 664, column: 10, scope: !659)
!662 = !DILocation(line: 663, column: 7, scope: !80)
!663 = !DILocation(line: 669, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !81, line: 665, column: 5)
!665 = !DILocation(line: 671, column: 5, scope: !664)
!666 = !DILocation(line: 676, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !659, file: !81, line: 673, column: 5)
!668 = !DILocation(line: 679, column: 3, scope: !80)
!669 = !DILocation(line: 683, column: 3, scope: !80)
!670 = !DILocation(line: 686, column: 3, scope: !80)
!671 = !DILocation(line: 688, column: 3, scope: !80)
!672 = !DILocation(line: 691, column: 3, scope: !80)
!673 = !DILocation(line: 695, column: 3, scope: !80)
!674 = !DILocation(line: 696, column: 1, scope: !80)
!675 = !DISubprogram(name: "setlocale", scope: !676, file: !676, line: 122, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!676 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!677 = !DISubroutineType(types: !678)
!678 = !{!55, !58, !63}
!679 = !DISubprogram(name: "getenv", scope: !680, file: !680, line: 641, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!680 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!681 = !DISubroutineType(types: !682)
!682 = !{!55, !63}
!683 = !DISubprogram(name: "fwrite_unlocked", scope: !210, file: !210, line: 704, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!684 = !DISubroutineType(types: !685)
!685 = !{!60, !686, !60, !60, !566}
!686 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!689 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 491, type: !690, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!690 = !DISubroutineType(types: !691)
!691 = !{!58, !58, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!693 = !{!694, !695, !696, !697, !698, !699}
!694 = !DILocalVariable(name: "argc", arg: 1, scope: !689, file: !3, line: 491, type: !58)
!695 = !DILocalVariable(name: "argv", arg: 2, scope: !689, file: !3, line: 491, type: !692)
!696 = !DILocalVariable(name: "optc", scope: !689, file: !3, line: 493, type: !58)
!697 = !DILocalVariable(name: "delim_arg", scope: !689, file: !3, line: 494, type: !63)
!698 = !DILocalVariable(name: "nfiles", scope: !689, file: !3, line: 530, type: !58)
!699 = !DILocalVariable(name: "ok", scope: !689, file: !3, line: 546, type: !70)
!700 = !DILocation(line: 0, scope: !689)
!701 = !DILocation(line: 497, column: 21, scope: !689)
!702 = !DILocation(line: 497, column: 3, scope: !689)
!703 = !DILocation(line: 498, column: 3, scope: !689)
!704 = !DILocation(line: 499, column: 3, scope: !689)
!705 = !DILocation(line: 500, column: 3, scope: !689)
!706 = !DILocation(line: 502, column: 3, scope: !689)
!707 = !DILocation(line: 504, column: 3, scope: !689)
!708 = !DILocation(line: 504, column: 18, scope: !689)
!709 = !DILocation(line: 510, column: 24, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 507, column: 9)
!711 = distinct !DILexicalBlock(scope: !689, file: !3, line: 505, column: 5)
!712 = !DILocation(line: 510, column: 34, scope: !710)
!713 = !DILocation(line: 511, column: 11, scope: !710)
!714 = distinct !{!714, !707, !715, !536}
!715 = !DILocation(line: 528, column: 5, scope: !689)
!716 = !DILocation(line: 514, column: 24, scope: !710)
!717 = !DILocation(line: 515, column: 11, scope: !710)
!718 = !DILocation(line: 518, column: 22, scope: !710)
!719 = !DILocation(line: 519, column: 11, scope: !710)
!720 = !DILocation(line: 521, column: 9, scope: !710)
!721 = !DILocation(line: 523, column: 9, scope: !710)
!722 = !DILocation(line: 526, column: 11, scope: !710)
!723 = !DILocation(line: 530, column: 23, scope: !689)
!724 = !DILocation(line: 530, column: 21, scope: !689)
!725 = !DILocation(line: 531, column: 14, scope: !726)
!726 = distinct !DILexicalBlock(scope: !689, file: !3, line: 531, column: 7)
!727 = !DILocation(line: 531, column: 7, scope: !689)
!728 = !DILocation(line: 533, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !3, line: 532, column: 5)
!730 = !DILocation(line: 533, column: 20, scope: !729)
!731 = !DILocation(line: 535, column: 5, scope: !729)
!732 = !DILocalVariable(name: "strptr", arg: 1, scope: !733, file: !3, line: 93, type: !63)
!733 = distinct !DISubprogram(name: "collapse_escapes", scope: !3, file: !3, line: 93, type: !734, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!58, !63}
!736 = !{!732, !737, !738, !739, !740, !741, !749}
!737 = !DILocalVariable(name: "strout", scope: !733, file: !3, line: 95, type: !55)
!738 = !DILocalVariable(name: "backslash_at_end", scope: !733, file: !3, line: 96, type: !70)
!739 = !DILocalVariable(name: "s", scope: !733, file: !3, line: 101, type: !63)
!740 = !DILocalVariable(name: "idx", scope: !733, file: !3, line: 102, type: !168)
!741 = !DILocalVariable(name: "g", scope: !742, file: !3, line: 142, type: !743)
!742 = distinct !DILexicalBlock(scope: !733, file: !3, line: 105, column: 5)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !36, line: 143, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 138, size: 64, elements: !745)
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !744, file: !36, line: 140, baseType: !258, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !744, file: !36, line: 141, baseType: !65, size: 8, offset: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !744, file: !36, line: 142, baseType: !65, size: 8, offset: 40)
!749 = !DILabel(scope: !742, name: "copy_character", file: !3, line: 141)
!750 = !DILocation(line: 0, scope: !733, inlinedAt: !751)
!751 = distinct !DILocation(line: 537, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !689, file: !3, line: 537, column: 7)
!753 = !DILocation(line: 95, column: 18, scope: !733, inlinedAt: !751)
!754 = !DILocation(line: 98, column: 10, scope: !733, inlinedAt: !751)
!755 = !DILocation(line: 99, column: 26, scope: !733, inlinedAt: !751)
!756 = !DILocation(line: 99, column: 16, scope: !733, inlinedAt: !751)
!757 = !DILocation(line: 99, column: 14, scope: !733, inlinedAt: !751)
!758 = !DILocation(line: 104, column: 10, scope: !733, inlinedAt: !751)
!759 = !DILocation(line: 104, column: 3, scope: !733, inlinedAt: !751)
!760 = !DILocation(line: 148, column: 11, scope: !733, inlinedAt: !751)
!761 = !DILocation(line: 152, column: 21, scope: !762, inlinedAt: !751)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 151, column: 5)
!763 = distinct !DILexicalBlock(scope: !733, file: !3, line: 150, column: 7)
!764 = !{!765, !765, i64 0}
!765 = !{!"long", !476, i64 0}
!766 = !DILocation(line: 537, column: 7, scope: !689)
!767 = !DILocation(line: 106, column: 14, scope: !768, inlinedAt: !751)
!768 = distinct !DILexicalBlock(scope: !742, file: !3, line: 106, column: 11)
!769 = !DILocation(line: 106, column: 11, scope: !742, inlinedAt: !751)
!770 = !DILocation(line: 108, column: 12, scope: !771, inlinedAt: !751)
!771 = distinct !DILexicalBlock(scope: !768, file: !3, line: 107, column: 9)
!772 = !DILocation(line: 109, column: 15, scope: !773, inlinedAt: !751)
!773 = distinct !DILexicalBlock(scope: !771, file: !3, line: 109, column: 15)
!774 = !DILocation(line: 109, column: 15, scope: !771, inlinedAt: !751)
!775 = !DILocation(line: 122, column: 15, scope: !776, inlinedAt: !751)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 121, column: 13)
!777 = distinct !DILexicalBlock(scope: !773, file: !3, line: 114, column: 20)
!778 = !DILocation(line: 0, scope: !779, inlinedAt: !751)
!779 = distinct !DILexicalBlock(scope: !776, file: !3, line: 123, column: 17)
!780 = !DILocation(line: 0, scope: !777, inlinedAt: !751)
!781 = !DILocation(line: 138, column: 11, scope: !771, inlinedAt: !751)
!782 = !DILocation(line: 0, scope: !742, inlinedAt: !751)
!783 = distinct !{!783, !759, !784, !536}
!784 = !DILocation(line: 146, column: 5, scope: !733, inlinedAt: !751)
!785 = !DILocation(line: 291, column: 21, scope: !786, inlinedAt: !796)
!786 = distinct !DILexicalBlock(scope: !787, file: !36, line: 291, column: 7)
!787 = distinct !DISubprogram(name: "mcel_scant", scope: !36, file: !36, line: 288, type: !788, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{!743, !63, !56}
!790 = !{!791, !792, !793, !794}
!791 = !DILocalVariable(name: "p", arg: 1, scope: !787, file: !36, line: 288, type: !63)
!792 = !DILocalVariable(name: "terminator", arg: 2, scope: !787, file: !36, line: 288, type: !56)
!793 = !DILocalVariable(name: "lim", scope: !787, file: !36, line: 296, type: !63)
!794 = !DILocalVariable(name: "i", scope: !795, file: !36, line: 297, type: !58)
!795 = distinct !DILexicalBlock(scope: !787, file: !36, line: 297, column: 3)
!796 = distinct !DILocation(line: 309, column: 10, scope: !797, inlinedAt: !802)
!797 = distinct !DISubprogram(name: "mcel_scanz", scope: !36, file: !36, line: 307, type: !798, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!743, !63}
!800 = !{!801}
!801 = !DILocalVariable(name: "p", arg: 1, scope: !797, file: !36, line: 307, type: !63)
!802 = distinct !DILocation(line: 142, column: 18, scope: !742, inlinedAt: !751)
!803 = !DILocation(line: 141, column: 7, scope: !742, inlinedAt: !751)
!804 = !DILocation(line: 0, scope: !797, inlinedAt: !802)
!805 = !DILocation(line: 0, scope: !787, inlinedAt: !796)
!806 = !DILocalVariable(name: "c", arg: 1, scope: !807, file: !36, line: 215, type: !56)
!807 = distinct !DISubprogram(name: "mcel_isbasic", scope: !36, file: !36, line: 215, type: !808, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !810)
!808 = !DISubroutineType(types: !809)
!809 = !{!70, !56}
!810 = !{!806}
!811 = !DILocation(line: 0, scope: !807, inlinedAt: !812)
!812 = distinct !DILocation(line: 291, column: 7, scope: !786, inlinedAt: !796)
!813 = !DILocation(line: 217, column: 10, scope: !807, inlinedAt: !812)
!814 = !DILocation(line: 291, column: 7, scope: !787, inlinedAt: !796)
!815 = !DILocation(line: 296, column: 23, scope: !787, inlinedAt: !796)
!816 = !DILocation(line: 0, scope: !795, inlinedAt: !796)
!817 = !DILocation(line: 298, column: 12, scope: !818, inlinedAt: !796)
!818 = distinct !DILexicalBlock(scope: !795, file: !36, line: 297, column: 3)
!819 = !DILocation(line: 298, column: 17, scope: !818, inlinedAt: !796)
!820 = !DILocation(line: 298, column: 9, scope: !818, inlinedAt: !796)
!821 = !DILocalVariable(name: "p", arg: 1, scope: !822, file: !36, line: 230, type: !63)
!822 = distinct !DISubprogram(name: "mcel_scan", scope: !36, file: !36, line: 230, type: !823, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{!743, !63, !63}
!825 = !{!821, !826, !827, !828, !839, !840}
!826 = !DILocalVariable(name: "lim", arg: 2, scope: !822, file: !36, line: 230, type: !63)
!827 = !DILocalVariable(name: "c", scope: !822, file: !36, line: 235, type: !56)
!828 = !DILocalVariable(name: "mbs", scope: !822, file: !36, line: 244, type: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !264, line: 6, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !266, line: 21, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 13, size: 64, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !831, file: !266, line: 15, baseType: !58, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !831, file: !266, line: 20, baseType: !835, size: 32, offset: 32)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !266, line: 16, size: 32, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !835, file: !266, line: 18, baseType: !7, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !835, file: !266, line: 19, baseType: !275, size: 32)
!839 = !DILocalVariable(name: "ch", scope: !822, file: !36, line: 267, type: !258)
!840 = !DILocalVariable(name: "len", scope: !822, file: !36, line: 268, type: !60)
!841 = !DILocation(line: 0, scope: !822, inlinedAt: !842)
!842 = distinct !DILocation(line: 299, column: 10, scope: !787, inlinedAt: !796)
!843 = !DILocation(line: 0, scope: !807, inlinedAt: !844)
!844 = distinct !DILocation(line: 236, column: 7, scope: !845, inlinedAt: !842)
!845 = distinct !DILexicalBlock(scope: !822, file: !36, line: 236, column: 7)
!846 = !DILocation(line: 244, column: 3, scope: !822, inlinedAt: !842)
!847 = !DILocation(line: 244, column: 13, scope: !822, inlinedAt: !842)
!848 = !DILocation(line: 244, column: 30, scope: !822, inlinedAt: !842)
!849 = !{!850, !570, i64 0}
!850 = !{!"", !570, i64 0, !476, i64 4}
!851 = !DILocation(line: 267, column: 3, scope: !822, inlinedAt: !842)
!852 = !DILocation(line: 268, column: 38, scope: !822, inlinedAt: !842)
!853 = !DILocation(line: 268, column: 16, scope: !822, inlinedAt: !842)
!854 = !DILocation(line: 274, column: 7, scope: !855, inlinedAt: !842)
!855 = distinct !DILexicalBlock(scope: !822, file: !36, line: 274, column: 7)
!856 = !DILocation(line: 274, column: 7, scope: !822, inlinedAt: !842)
!857 = !{!"branch_weights", i32 1, i32 2000}
!858 = !DILocation(line: 279, column: 19, scope: !822, inlinedAt: !842)
!859 = !DILocalVariable(name: "ch", arg: 1, scope: !860, file: !36, line: 167, type: !258)
!860 = distinct !DISubprogram(name: "mcel_ch", scope: !36, file: !36, line: 167, type: !861, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{!743, !258, !60}
!863 = !{!859, !864}
!864 = !DILocalVariable(name: "len", arg: 2, scope: !860, file: !36, line: 167, type: !60)
!865 = !DILocation(line: 0, scope: !860, inlinedAt: !866)
!866 = distinct !DILocation(line: 279, column: 10, scope: !822, inlinedAt: !842)
!867 = !DILocation(line: 169, column: 3, scope: !860, inlinedAt: !866)
!868 = !DILocation(line: 170, column: 3, scope: !860, inlinedAt: !866)
!869 = !DILocation(line: 171, column: 3, scope: !860, inlinedAt: !866)
!870 = !DILocation(line: 279, column: 3, scope: !822, inlinedAt: !842)
!871 = !DILocation(line: 280, column: 1, scope: !822, inlinedAt: !842)
!872 = !DILocalVariable(name: "__dest", arg: 1, scope: !873, file: !874, line: 42, type: !877)
!873 = distinct !DISubprogram(name: "mempcpy", scope: !874, file: !874, line: 42, type: !875, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !878)
!874 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!875 = !DISubroutineType(types: !876)
!876 = !{!57, !877, !686, !60}
!877 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!878 = !{!872, !879, !880}
!879 = !DILocalVariable(name: "__src", arg: 2, scope: !873, file: !874, line: 42, type: !686)
!880 = !DILocalVariable(name: "__len", arg: 3, scope: !873, file: !874, line: 42, type: !60)
!881 = !DILocation(line: 0, scope: !873, inlinedAt: !882)
!882 = distinct !DILocation(line: 143, column: 16, scope: !742, inlinedAt: !751)
!883 = !DILocation(line: 45, column: 10, scope: !873, inlinedAt: !882)
!884 = !DILocation(line: 144, column: 9, scope: !742, inlinedAt: !751)
!885 = !DILocation(line: 145, column: 7, scope: !742, inlinedAt: !751)
!886 = !DILocation(line: 145, column: 25, scope: !742, inlinedAt: !751)
!887 = !DILocation(line: 150, column: 11, scope: !763, inlinedAt: !751)
!888 = !DILocation(line: 150, column: 7, scope: !733, inlinedAt: !751)
!889 = !DILocation(line: 156, column: 14, scope: !733, inlinedAt: !751)
!890 = !DILocation(line: 541, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !752, file: !3, line: 538, column: 5)
!892 = !DILocation(line: 546, column: 15, scope: !689)
!893 = !DILocation(line: 547, column: 15, scope: !689)
!894 = !DILocation(line: 547, column: 29, scope: !689)
!895 = !DILocation(line: 547, column: 24, scope: !689)
!896 = !DILocation(line: 546, column: 14, scope: !689)
!897 = !{i1 (i64, i8**)* @paste_parallel, i1 (i64, i8**)* @paste_serial}
!898 = !DILocation(line: 549, column: 9, scope: !689)
!899 = !DILocation(line: 549, column: 3, scope: !689)
!900 = !DILocation(line: 550, column: 9, scope: !689)
!901 = !DILocation(line: 550, column: 3, scope: !689)
!902 = !DILocation(line: 552, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !689, file: !3, line: 552, column: 7)
!904 = !DILocation(line: 552, column: 23, scope: !903)
!905 = !DILocation(line: 552, column: 34, scope: !903)
!906 = !DILocation(line: 552, column: 26, scope: !903)
!907 = !DILocation(line: 552, column: 41, scope: !903)
!908 = !DILocation(line: 552, column: 7, scope: !689)
!909 = !DILocation(line: 553, column: 5, scope: !903)
!910 = !DILocation(line: 554, column: 10, scope: !689)
!911 = !DILocation(line: 554, column: 3, scope: !689)
!912 = !DISubprogram(name: "bindtextdomain", scope: !559, file: !559, line: 86, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!913 = !DISubroutineType(types: !914)
!914 = !{!55, !63, !63}
!915 = !DISubprogram(name: "textdomain", scope: !559, file: !559, line: 82, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!916 = !DISubprogram(name: "atexit", scope: !680, file: !680, line: 602, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!917 = !DISubroutineType(types: !918)
!918 = !{!58, !236}
!919 = !DISubprogram(name: "getopt_long", scope: !174, file: !174, line: 66, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!920 = !DISubroutineType(types: !921)
!921 = !{!58, !58, !922, !63, !924, !179}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!925 = !DISubprogram(name: "mbrtoc32", scope: !259, file: !259, line: 57, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!926 = !DISubroutineType(types: !927)
!927 = !{!60, !928, !565, !60, !930}
!928 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!932 = distinct !DISubprogram(name: "paste_serial", scope: !3, file: !3, line: 364, type: !933, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!70, !60, !692}
!935 = !{!936, !937, !938, !939, !940, !941, !942, !946, !947, !948}
!936 = !DILocalVariable(name: "nfiles", arg: 1, scope: !932, file: !3, line: 364, type: !60)
!937 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !932, file: !3, line: 364, type: !692)
!938 = !DILocalVariable(name: "ok", scope: !932, file: !3, line: 366, type: !70)
!939 = !DILocalVariable(name: "charnew", scope: !932, file: !3, line: 367, type: !58)
!940 = !DILocalVariable(name: "charold", scope: !932, file: !3, line: 367, type: !58)
!941 = !DILocalVariable(name: "fileptr", scope: !932, file: !3, line: 368, type: !103)
!942 = !DILocalVariable(name: "saved_errno", scope: !943, file: !3, line: 372, type: !58)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 371, column: 5)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 370, column: 3)
!945 = distinct !DILexicalBlock(scope: !932, file: !3, line: 370, column: 3)
!946 = !DILocalVariable(name: "is_stdin", scope: !943, file: !3, line: 373, type: !70)
!947 = !DILocalVariable(name: "delimidx", scope: !943, file: !3, line: 391, type: !168)
!948 = !DILocalVariable(name: "delimoff", scope: !943, file: !3, line: 392, type: !168)
!949 = !DILocation(line: 0, scope: !932)
!950 = !DILocation(line: 370, column: 3, scope: !945)
!951 = !DILocation(line: 373, column: 30, scope: !943)
!952 = !DILocation(line: 0, scope: !519, inlinedAt: !953)
!953 = distinct !DILocation(line: 373, column: 23, scope: !943)
!954 = !DILocation(line: 1361, column: 11, scope: !519, inlinedAt: !953)
!955 = !DILocation(line: 1361, column: 10, scope: !519, inlinedAt: !953)
!956 = !DILocation(line: 0, scope: !943)
!957 = !DILocation(line: 374, column: 11, scope: !943)
!958 = !DILocation(line: 376, column: 27, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 375, column: 9)
!960 = distinct !DILexicalBlock(scope: !943, file: !3, line: 374, column: 11)
!961 = !DILocation(line: 377, column: 21, scope: !959)
!962 = !DILocation(line: 378, column: 9, scope: !959)
!963 = !DILocation(line: 381, column: 21, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !3, line: 380, column: 9)
!965 = !DILocation(line: 382, column: 23, scope: !966)
!966 = distinct !DILexicalBlock(scope: !964, file: !3, line: 382, column: 15)
!967 = !DILocation(line: 382, column: 15, scope: !964)
!968 = !DILocation(line: 384, column: 15, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !3, line: 383, column: 13)
!970 = !DILocation(line: 386, column: 15, scope: !969)
!971 = !DILocation(line: 388, column: 11, scope: !964)
!972 = !DILocation(line: 0, scope: !960)
!973 = !DILocalVariable(name: "__fp", arg: 1, scope: !974, file: !975, line: 66, type: !103)
!974 = distinct !DISubprogram(name: "getc_unlocked", scope: !975, file: !975, line: 66, type: !976, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !978)
!975 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!976 = !DISubroutineType(types: !977)
!977 = !{!58, !103}
!978 = !{!973}
!979 = !DILocation(line: 0, scope: !974, inlinedAt: !980)
!980 = distinct !DILocation(line: 394, column: 17, scope: !943)
!981 = !DILocation(line: 68, column: 10, scope: !974, inlinedAt: !980)
!982 = !{!983, !475, i64 8}
!983 = !{!"_IO_FILE", !570, i64 0, !475, i64 8, !475, i64 16, !475, i64 24, !475, i64 32, !475, i64 40, !475, i64 48, !475, i64 56, !475, i64 64, !475, i64 72, !475, i64 80, !475, i64 88, !475, i64 96, !475, i64 104, !570, i64 112, !570, i64 116, !765, i64 120, !604, i64 128, !476, i64 130, !476, i64 131, !475, i64 136, !765, i64 144, !475, i64 152, !475, i64 160, !475, i64 168, !475, i64 176, !765, i64 184, !570, i64 192, !476, i64 196}
!984 = !{!983, !475, i64 16}
!985 = !{!"branch_weights", i32 2000, i32 1}
!986 = !DILocation(line: 395, column: 21, scope: !943)
!987 = !DILocation(line: 396, column: 11, scope: !943)
!988 = !DILocation(line: 396, column: 19, scope: !989)
!989 = distinct !DILexicalBlock(scope: !943, file: !3, line: 396, column: 11)
!990 = !DILocation(line: 404, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !989, file: !3, line: 397, column: 9)
!992 = !DILocation(line: 428, column: 22, scope: !993)
!993 = distinct !DILexicalBlock(scope: !943, file: !3, line: 428, column: 11)
!994 = !DILocation(line: 428, column: 11, scope: !943)
!995 = !DILocation(line: 0, scope: !974, inlinedAt: !996)
!996 = distinct !DILocation(line: 404, column: 29, scope: !991)
!997 = !DILocation(line: 68, column: 10, scope: !974, inlinedAt: !996)
!998 = !DILocation(line: 404, column: 45, scope: !991)
!999 = !DILocation(line: 407, column: 30, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 407, column: 19)
!1001 = distinct !DILexicalBlock(scope: !991, file: !3, line: 405, column: 13)
!1002 = !DILocation(line: 407, column: 27, scope: !1000)
!1003 = !DILocation(line: 407, column: 19, scope: !1001)
!1004 = !DILocation(line: 409, column: 52, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 408, column: 17)
!1006 = !DILocalVariable(name: "delimptr", arg: 1, scope: !1007, file: !3, line: 174, type: !63)
!1007 = distinct !DISubprogram(name: "output_delim", scope: !3, file: !3, line: 174, type: !1008, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1010)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !63, !60}
!1010 = !{!1006, !1011, !1012, !1015, !1016}
!1011 = !DILocalVariable(name: "len", arg: 2, scope: !1007, file: !3, line: 174, type: !60)
!1012 = !DILocalVariable(name: "__ptr", scope: !1013, file: !3, line: 176, type: !63)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 176, column: 18)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 176, column: 7)
!1015 = !DILocalVariable(name: "__stream", scope: !1013, file: !3, line: 176, type: !103)
!1016 = !DILocalVariable(name: "__cnt", scope: !1013, file: !3, line: 176, type: !60)
!1017 = !DILocation(line: 0, scope: !1007, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 409, column: 19, scope: !1005)
!1019 = !DILocation(line: 176, column: 11, scope: !1014, inlinedAt: !1018)
!1020 = !DILocation(line: 176, column: 15, scope: !1014, inlinedAt: !1018)
!1021 = !DILocation(line: 409, column: 33, scope: !1005)
!1022 = !DILocation(line: 409, column: 40, scope: !1005)
!1023 = !DILocation(line: 0, scope: !1014, inlinedAt: !1018)
!1024 = !DILocation(line: 176, column: 18, scope: !1014, inlinedAt: !1018)
!1025 = !DILocation(line: 176, column: 52, scope: !1014, inlinedAt: !1018)
!1026 = !DILocation(line: 176, column: 7, scope: !1007, inlinedAt: !1018)
!1027 = !DILocation(line: 410, column: 31, scope: !1005)
!1028 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1032)
!1029 = distinct !DISubprogram(name: "write_error", scope: !81, file: !81, line: 946, type: !237, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1030 = !{!1031}
!1031 = !DILocalVariable(name: "saved_errno", scope: !1029, file: !81, line: 948, type: !58)
!1032 = distinct !DILocation(line: 177, column: 5, scope: !1014, inlinedAt: !1018)
!1033 = !DILocation(line: 0, scope: !1029, inlinedAt: !1032)
!1034 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1032)
!1035 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1032)
!1036 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1032)
!1037 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1032)
!1038 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1032)
!1039 = !DILocation(line: 410, column: 28, scope: !1005)
!1040 = !DILocation(line: 411, column: 23, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 411, column: 23)
!1042 = !DILocation(line: 411, column: 37, scope: !1041)
!1043 = !DILocation(line: 411, column: 34, scope: !1041)
!1044 = !DILocation(line: 411, column: 23, scope: !1005)
!1045 = distinct !{!1045, !990, !1046, !536}
!1046 = !DILocation(line: 421, column: 13, scope: !991)
!1047 = !DILocalVariable(name: "c", arg: 1, scope: !1048, file: !3, line: 164, type: !56)
!1048 = distinct !DISubprogram(name: "xputchar", scope: !3, file: !3, line: 164, type: !1049, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !56}
!1051 = !{!1047}
!1052 = !DILocation(line: 0, scope: !1048, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 418, column: 17, scope: !1000)
!1054 = !DILocalVariable(name: "__c", arg: 1, scope: !1055, file: !975, line: 108, type: !58)
!1055 = distinct !DISubprogram(name: "putchar_unlocked", scope: !975, file: !975, line: 108, type: !1056, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!58, !58}
!1058 = !{!1054}
!1059 = !DILocation(line: 0, scope: !1055, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1053)
!1061 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 166, column: 7)
!1062 = !DILocation(line: 110, column: 10, scope: !1055, inlinedAt: !1060)
!1063 = !{!983, !475, i64 40}
!1064 = !{!983, !475, i64 48}
!1065 = !DILocation(line: 418, column: 27, scope: !1000)
!1066 = !DILocation(line: 166, column: 7, scope: !1048, inlinedAt: !1053)
!1067 = !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1053)
!1068 = !DILocation(line: 166, column: 19, scope: !1061, inlinedAt: !1053)
!1069 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 167, column: 5, scope: !1061, inlinedAt: !1053)
!1071 = !DILocation(line: 0, scope: !1029, inlinedAt: !1070)
!1072 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1070)
!1073 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1070)
!1074 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1070)
!1075 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1070)
!1076 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1070)
!1077 = !DILocation(line: 422, column: 25, scope: !991)
!1078 = !DILocation(line: 0, scope: !1048, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 425, column: 11, scope: !991)
!1080 = !DILocation(line: 0, scope: !1055, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1079)
!1082 = !DILocation(line: 110, column: 10, scope: !1055, inlinedAt: !1081)
!1083 = !DILocation(line: 425, column: 21, scope: !991)
!1084 = !DILocation(line: 166, column: 7, scope: !1048, inlinedAt: !1079)
!1085 = !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1079)
!1086 = !DILocation(line: 166, column: 19, scope: !1061, inlinedAt: !1079)
!1087 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 167, column: 5, scope: !1061, inlinedAt: !1079)
!1089 = !DILocation(line: 0, scope: !1029, inlinedAt: !1088)
!1090 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1088)
!1091 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1088)
!1092 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1088)
!1093 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1088)
!1094 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1088)
!1095 = !DILocation(line: 428, column: 19, scope: !993)
!1096 = !DILocation(line: 0, scope: !1048, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 429, column: 9, scope: !993)
!1098 = !DILocation(line: 0, scope: !1055, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1097)
!1100 = !DILocation(line: 110, column: 10, scope: !1055, inlinedAt: !1099)
!1101 = !DILocation(line: 166, column: 7, scope: !1048, inlinedAt: !1097)
!1102 = !DILocation(line: 166, column: 19, scope: !1061, inlinedAt: !1097)
!1103 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 167, column: 5, scope: !1061, inlinedAt: !1097)
!1105 = !DILocation(line: 0, scope: !1029, inlinedAt: !1104)
!1106 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1104)
!1107 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1104)
!1108 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1104)
!1109 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1104)
!1110 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1104)
!1111 = !DILocalVariable(name: "__stream", arg: 1, scope: !1112, file: !975, line: 135, type: !103)
!1112 = distinct !DISubprogram(name: "ferror_unlocked", scope: !975, file: !975, line: 135, type: !976, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1113 = !{!1111}
!1114 = !DILocation(line: 0, scope: !1112, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 431, column: 12, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !943, file: !3, line: 431, column: 11)
!1117 = !DILocation(line: 137, column: 10, scope: !1112, inlinedAt: !1115)
!1118 = !{!983, !570, i64 0}
!1119 = !DILocation(line: 431, column: 12, scope: !1116)
!1120 = !DILocation(line: 431, column: 11, scope: !943)
!1121 = !DILocation(line: 433, column: 11, scope: !943)
!1122 = !DILocation(line: 434, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !943, file: !3, line: 433, column: 11)
!1124 = !DILocation(line: 435, column: 16, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 435, column: 16)
!1126 = !DILocation(line: 435, column: 33, scope: !1125)
!1127 = !DILocation(line: 435, column: 38, scope: !1125)
!1128 = !DILocation(line: 436, column: 23, scope: !1125)
!1129 = !DILocation(line: 436, column: 9, scope: !1125)
!1130 = !DILocation(line: 437, column: 11, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !943, file: !3, line: 437, column: 11)
!1132 = !DILocation(line: 437, column: 11, scope: !943)
!1133 = !DILocation(line: 370, column: 24, scope: !944)
!1134 = !DILocation(line: 370, column: 35, scope: !944)
!1135 = distinct !{!1135, !950, !1136, !536}
!1136 = !DILocation(line: 442, column: 5, scope: !945)
!1137 = !DILocation(line: 443, column: 3, scope: !932)
!1138 = distinct !DISubprogram(name: "paste_parallel", scope: !3, file: !3, line: 185, type: !933, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1146, !1147, !1148, !1150, !1151, !1152, !1153, !1155, !1158, !1159, !1160, !1167, !1168, !1169, !1180, !1181, !1182, !1184}
!1140 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1138, file: !3, line: 185, type: !60)
!1141 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1138, file: !3, line: 185, type: !692)
!1142 = !DILocalVariable(name: "ok", scope: !1138, file: !3, line: 187, type: !70)
!1143 = !DILocalVariable(name: "delbuf", scope: !1138, file: !3, line: 192, type: !55)
!1144 = !DILocalVariable(name: "fileptr", scope: !1138, file: !3, line: 196, type: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1146 = !DILocalVariable(name: "files_open", scope: !1138, file: !3, line: 199, type: !60)
!1147 = !DILocalVariable(name: "opened_stdin", scope: !1138, file: !3, line: 202, type: !70)
!1148 = !DILocalVariable(name: "somedone", scope: !1149, file: !3, line: 236, type: !70)
!1149 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 234, column: 5)
!1150 = !DILocalVariable(name: "delimidx", scope: !1149, file: !3, line: 237, type: !168)
!1151 = !DILocalVariable(name: "delimoff", scope: !1149, file: !3, line: 238, type: !168)
!1152 = !DILocalVariable(name: "delims_saved", scope: !1149, file: !3, line: 239, type: !168)
!1153 = !DILocalVariable(name: "i", scope: !1154, file: !3, line: 241, type: !60)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 241, column: 7)
!1155 = !DILocalVariable(name: "chr", scope: !1156, file: !3, line: 243, type: !58)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 242, column: 9)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 241, column: 7)
!1158 = !DILocalVariable(name: "err", scope: !1156, file: !3, line: 244, type: !58)
!1159 = !DILocalVariable(name: "sometodo", scope: !1156, file: !3, line: 245, type: !70)
!1160 = !DILocalVariable(name: "__ptr", scope: !1161, file: !3, line: 253, type: !63)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 253, column: 23)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 253, column: 23)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 252, column: 17)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 251, column: 19)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 248, column: 13)
!1166 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 247, column: 15)
!1167 = !DILocalVariable(name: "__stream", scope: !1161, file: !3, line: 253, type: !103)
!1168 = !DILocalVariable(name: "__cnt", scope: !1161, file: !3, line: 253, type: !60)
!1169 = !DILocalVariable(name: "__ptr", scope: !1170, file: !3, line: 300, type: !63)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 300, column: 31)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 300, column: 31)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 299, column: 25)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 298, column: 27)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 296, column: 21)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 295, column: 23)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 292, column: 17)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 291, column: 19)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 270, column: 13)
!1179 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 269, column: 15)
!1180 = !DILocalVariable(name: "__stream", scope: !1170, file: !3, line: 300, type: !103)
!1181 = !DILocalVariable(name: "__cnt", scope: !1170, file: !3, line: 300, type: !60)
!1182 = !DILocalVariable(name: "len", scope: !1183, file: !3, line: 312, type: !60)
!1183 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 310, column: 17)
!1184 = !DILocalVariable(name: "c", scope: !1185, file: !3, line: 348, type: !56)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 345, column: 17)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 332, column: 19)
!1187 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 327, column: 13)
!1188 = !DILocation(line: 0, scope: !1138)
!1189 = !DILocation(line: 192, column: 35, scope: !1138)
!1190 = !DILocation(line: 192, column: 42, scope: !1138)
!1191 = !DILocation(line: 192, column: 40, scope: !1138)
!1192 = !DILocation(line: 192, column: 53, scope: !1138)
!1193 = !DILocation(line: 192, column: 18, scope: !1138)
!1194 = !DILocation(line: 196, column: 37, scope: !1138)
!1195 = !DILocation(line: 196, column: 20, scope: !1138)
!1196 = !DILocation(line: 208, column: 35, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 208, column: 3)
!1198 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 208, column: 3)
!1199 = !DILocation(line: 208, column: 3, scope: !1198)
!1200 = !DILocation(line: 210, column: 18, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 210, column: 11)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 209, column: 5)
!1203 = !DILocation(line: 0, scope: !519, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 210, column: 11, scope: !1201)
!1205 = !DILocation(line: 1361, column: 11, scope: !519, inlinedAt: !1204)
!1206 = !DILocation(line: 1361, column: 10, scope: !519, inlinedAt: !1204)
!1207 = !DILocation(line: 210, column: 11, scope: !1202)
!1208 = !DILocation(line: 212, column: 27, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 211, column: 9)
!1210 = !DILocation(line: 213, column: 33, scope: !1209)
!1211 = !DILocation(line: 213, column: 11, scope: !1209)
!1212 = !DILocation(line: 213, column: 31, scope: !1209)
!1213 = !DILocation(line: 214, column: 9, scope: !1209)
!1214 = !DILocation(line: 217, column: 33, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 216, column: 9)
!1216 = !DILocation(line: 217, column: 11, scope: !1215)
!1217 = !DILocation(line: 217, column: 31, scope: !1215)
!1218 = !DILocation(line: 218, column: 35, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 218, column: 15)
!1220 = !DILocation(line: 218, column: 15, scope: !1215)
!1221 = !DILocation(line: 219, column: 13, scope: !1219)
!1222 = !DILocation(line: 220, column: 20, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 220, column: 20)
!1224 = !DILocation(line: 220, column: 49, scope: !1223)
!1225 = !DILocation(line: 220, column: 20, scope: !1219)
!1226 = !DILocation(line: 222, column: 11, scope: !1215)
!1227 = !DILocation(line: 208, column: 45, scope: !1197)
!1228 = distinct !{!1228, !1199, !1229, !536}
!1229 = !DILocation(line: 224, column: 5, scope: !1198)
!1230 = !DILocation(line: 226, column: 20, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 226, column: 7)
!1232 = !DILocation(line: 233, column: 3, scope: !1138)
!1233 = !DILocation(line: 226, column: 23, scope: !1231)
!1234 = !DILocation(line: 226, column: 7, scope: !1138)
!1235 = !DILocation(line: 227, column: 5, scope: !1231)
!1236 = !DILocation(line: 208, column: 19, scope: !1198)
!1237 = !DILocation(line: 0, scope: !1156)
!1238 = distinct !{!1238, !1232, !1239, !536}
!1239 = !DILocation(line: 353, column: 5, scope: !1138)
!1240 = !DILocation(line: 0, scope: !1149)
!1241 = !DILocation(line: 0, scope: !1154)
!1242 = !DILocation(line: 241, column: 7, scope: !1154)
!1243 = !DILocation(line: 247, column: 15, scope: !1166)
!1244 = !DILocation(line: 247, column: 15, scope: !1156)
!1245 = !DILocation(line: 0, scope: !974, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 249, column: 21, scope: !1165)
!1247 = !DILocation(line: 68, column: 10, scope: !974, inlinedAt: !1246)
!1248 = !DILocation(line: 250, column: 21, scope: !1165)
!1249 = !DILocation(line: 251, column: 23, scope: !1164)
!1250 = !DILocation(line: 251, column: 30, scope: !1164)
!1251 = !DILocation(line: 0, scope: !1162)
!1252 = !DILocation(line: 253, column: 23, scope: !1162)
!1253 = !DILocation(line: 253, column: 64, scope: !1162)
!1254 = !DILocation(line: 253, column: 23, scope: !1163)
!1255 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 254, column: 21, scope: !1162)
!1257 = !DILocation(line: 0, scope: !1029, inlinedAt: !1256)
!1258 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1256)
!1259 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1256)
!1260 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1256)
!1261 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1256)
!1262 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1256)
!1263 = !DILocation(line: 258, column: 26, scope: !1165)
!1264 = !DILocation(line: 258, column: 15, scope: !1165)
!1265 = !DILocation(line: 261, column: 30, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 261, column: 23)
!1267 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 259, column: 17)
!1268 = !DILocation(line: 261, column: 27, scope: !1266)
!1269 = !DILocation(line: 261, column: 23, scope: !1267)
!1270 = !DILocation(line: 0, scope: !1048, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 263, column: 19, scope: !1267)
!1272 = !DILocation(line: 0, scope: !1055, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1271)
!1274 = !DILocation(line: 110, column: 10, scope: !1055, inlinedAt: !1273)
!1275 = !DILocation(line: 263, column: 29, scope: !1267)
!1276 = !DILocation(line: 166, column: 7, scope: !1048, inlinedAt: !1271)
!1277 = !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1271)
!1278 = !DILocation(line: 166, column: 19, scope: !1061, inlinedAt: !1271)
!1279 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 167, column: 5, scope: !1061, inlinedAt: !1271)
!1281 = !DILocation(line: 0, scope: !1029, inlinedAt: !1280)
!1282 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1280)
!1283 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1280)
!1284 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1280)
!1285 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1280)
!1286 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1280)
!1287 = !DILocation(line: 0, scope: !974, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 264, column: 25, scope: !1267)
!1289 = !DILocation(line: 68, column: 10, scope: !974, inlinedAt: !1288)
!1290 = distinct !{!1290, !1264, !1291, !536}
!1291 = !DILocation(line: 266, column: 17, scope: !1165)
!1292 = !DILocation(line: 265, column: 25, scope: !1267)
!1293 = !DILocation(line: 269, column: 15, scope: !1156)
!1294 = !DILocation(line: 0, scope: !1112, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 275, column: 24, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 275, column: 23)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 274, column: 17)
!1298 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 273, column: 19)
!1299 = !DILocation(line: 137, column: 10, scope: !1112, inlinedAt: !1295)
!1300 = !DILocation(line: 275, column: 24, scope: !1296)
!1301 = !DILocation(line: 275, column: 23, scope: !1297)
!1302 = !DILocation(line: 277, column: 37, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 277, column: 23)
!1304 = !DILocation(line: 277, column: 34, scope: !1303)
!1305 = !DILocation(line: 277, column: 23, scope: !1297)
!1306 = !DILocation(line: 278, column: 21, scope: !1303)
!1307 = !DILocation(line: 279, column: 28, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 279, column: 28)
!1309 = !DILocation(line: 279, column: 48, scope: !1308)
!1310 = !DILocation(line: 279, column: 55, scope: !1308)
!1311 = !DILocation(line: 280, column: 27, scope: !1308)
!1312 = !DILocation(line: 280, column: 21, scope: !1308)
!1313 = !DILocation(line: 281, column: 23, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 281, column: 23)
!1315 = !DILocation(line: 281, column: 23, scope: !1297)
!1316 = !DILocation(line: 283, column: 23, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 282, column: 21)
!1318 = !DILocation(line: 285, column: 21, scope: !1317)
!1319 = !DILocation(line: 287, column: 30, scope: !1297)
!1320 = !DILocation(line: 288, column: 29, scope: !1297)
!1321 = !DILocation(line: 289, column: 17, scope: !1297)
!1322 = !DILocation(line: 291, column: 21, scope: !1177)
!1323 = !DILocation(line: 291, column: 25, scope: !1177)
!1324 = !DILocation(line: 291, column: 19, scope: !1178)
!1325 = !DILocation(line: 295, column: 23, scope: !1176)
!1326 = !DILocation(line: 298, column: 27, scope: !1173)
!1327 = !DILocation(line: 298, column: 27, scope: !1174)
!1328 = !DILocation(line: 0, scope: !1171)
!1329 = !DILocation(line: 300, column: 31, scope: !1171)
!1330 = !DILocation(line: 301, column: 31, scope: !1171)
!1331 = !DILocation(line: 300, column: 31, scope: !1172)
!1332 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 302, column: 29, scope: !1171)
!1334 = !DILocation(line: 0, scope: !1029, inlinedAt: !1333)
!1335 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1333)
!1336 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1333)
!1337 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1333)
!1338 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1333)
!1339 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1333)
!1340 = !DILocation(line: 305, column: 33, scope: !1174)
!1341 = !DILocation(line: 0, scope: !1048, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 305, column: 23, scope: !1174)
!1343 = !DILocation(line: 0, scope: !1055, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1342)
!1345 = !DILocation(line: 110, column: 10, scope: !1055, inlinedAt: !1344)
!1346 = !DILocation(line: 166, column: 7, scope: !1048, inlinedAt: !1342)
!1347 = !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1342)
!1348 = !DILocation(line: 166, column: 19, scope: !1061, inlinedAt: !1342)
!1349 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 167, column: 5, scope: !1061, inlinedAt: !1342)
!1351 = !DILocation(line: 0, scope: !1029, inlinedAt: !1350)
!1352 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1350)
!1353 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1350)
!1354 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1350)
!1355 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1350)
!1356 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1350)
!1357 = !DILocation(line: 312, column: 32, scope: !1183)
!1358 = !DILocation(line: 0, scope: !1183)
!1359 = !DILocation(line: 313, column: 27, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 313, column: 23)
!1361 = !DILocation(line: 313, column: 23, scope: !1183)
!1362 = !DILocation(line: 315, column: 38, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 314, column: 21)
!1364 = !DILocation(line: 315, column: 54, scope: !1363)
!1365 = !DILocation(line: 315, column: 61, scope: !1363)
!1366 = !DILocalVariable(name: "__dest", arg: 1, scope: !1367, file: !874, line: 26, type: !877)
!1367 = distinct !DISubprogram(name: "memcpy", scope: !874, file: !874, line: 26, type: !875, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1368)
!1368 = !{!1366, !1369, !1370}
!1369 = !DILocalVariable(name: "__src", arg: 2, scope: !1367, file: !874, line: 26, type: !686)
!1370 = !DILocalVariable(name: "__len", arg: 3, scope: !1367, file: !874, line: 26, type: !60)
!1371 = !DILocation(line: 0, scope: !1367, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 315, column: 23, scope: !1363)
!1373 = !DILocation(line: 29, column: 10, scope: !1367, inlinedAt: !1372)
!1374 = !DILocation(line: 316, column: 36, scope: !1363)
!1375 = !DILocation(line: 317, column: 21, scope: !1363)
!1376 = !DILocation(line: 318, column: 28, scope: !1183)
!1377 = !DILocation(line: 319, column: 23, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 319, column: 23)
!1379 = !DILocation(line: 319, column: 37, scope: !1378)
!1380 = !DILocation(line: 319, column: 34, scope: !1378)
!1381 = !DILocation(line: 319, column: 23, scope: !1183)
!1382 = !DILocation(line: 325, column: 13, scope: !1178)
!1383 = !DILocation(line: 332, column: 21, scope: !1186)
!1384 = !DILocation(line: 332, column: 25, scope: !1186)
!1385 = !DILocation(line: 332, column: 19, scope: !1187)
!1386 = !DILocation(line: 334, column: 30, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 334, column: 23)
!1388 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 333, column: 17)
!1389 = !DILocation(line: 334, column: 27, scope: !1387)
!1390 = !DILocation(line: 334, column: 41, scope: !1387)
!1391 = !DILocation(line: 0, scope: !1048, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 335, column: 21, scope: !1387)
!1393 = !DILocation(line: 0, scope: !1055, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1392)
!1395 = !DILocation(line: 110, column: 10, scope: !1055, inlinedAt: !1394)
!1396 = !DILocation(line: 335, column: 31, scope: !1387)
!1397 = !DILocation(line: 166, column: 7, scope: !1048, inlinedAt: !1392)
!1398 = !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1392)
!1399 = !DILocation(line: 166, column: 19, scope: !1061, inlinedAt: !1392)
!1400 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 167, column: 5, scope: !1061, inlinedAt: !1392)
!1402 = !DILocation(line: 0, scope: !1029, inlinedAt: !1401)
!1403 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1401)
!1404 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1401)
!1405 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1401)
!1406 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1401)
!1407 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1401)
!1408 = !DILocation(line: 336, column: 52, scope: !1388)
!1409 = !DILocation(line: 0, scope: !1007, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 336, column: 19, scope: !1388)
!1411 = !DILocation(line: 176, column: 11, scope: !1014, inlinedAt: !1410)
!1412 = !DILocation(line: 176, column: 15, scope: !1014, inlinedAt: !1410)
!1413 = !DILocation(line: 336, column: 33, scope: !1388)
!1414 = !DILocation(line: 336, column: 40, scope: !1388)
!1415 = !DILocation(line: 0, scope: !1014, inlinedAt: !1410)
!1416 = !DILocation(line: 176, column: 18, scope: !1014, inlinedAt: !1410)
!1417 = !DILocation(line: 176, column: 52, scope: !1014, inlinedAt: !1410)
!1418 = !DILocation(line: 176, column: 7, scope: !1007, inlinedAt: !1410)
!1419 = !DILocation(line: 337, column: 31, scope: !1388)
!1420 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 177, column: 5, scope: !1014, inlinedAt: !1410)
!1422 = !DILocation(line: 0, scope: !1029, inlinedAt: !1421)
!1423 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1421)
!1424 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1421)
!1425 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1421)
!1426 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1421)
!1427 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1421)
!1428 = !DILocation(line: 337, column: 28, scope: !1388)
!1429 = !DILocation(line: 338, column: 23, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 338, column: 23)
!1431 = !DILocation(line: 338, column: 37, scope: !1430)
!1432 = !DILocation(line: 338, column: 34, scope: !1430)
!1433 = !DILocation(line: 338, column: 23, scope: !1388)
!1434 = !DILocation(line: 348, column: 33, scope: !1185)
!1435 = !DILocation(line: 348, column: 29, scope: !1185)
!1436 = !DILocation(line: 0, scope: !1185)
!1437 = !DILocation(line: 0, scope: !1048, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 349, column: 19, scope: !1185)
!1439 = !DILocation(line: 0, scope: !1055, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1438)
!1441 = !DILocation(line: 110, column: 10, scope: !1055, inlinedAt: !1440)
!1442 = !DILocation(line: 348, column: 28, scope: !1185)
!1443 = !DILocation(line: 166, column: 7, scope: !1048, inlinedAt: !1438)
!1444 = !DILocation(line: 166, column: 7, scope: !1061, inlinedAt: !1438)
!1445 = !DILocation(line: 166, column: 19, scope: !1061, inlinedAt: !1438)
!1446 = !DILocation(line: 948, column: 21, scope: !1029, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 167, column: 5, scope: !1061, inlinedAt: !1438)
!1448 = !DILocation(line: 0, scope: !1029, inlinedAt: !1447)
!1449 = !DILocation(line: 949, column: 3, scope: !1029, inlinedAt: !1447)
!1450 = !DILocation(line: 950, column: 11, scope: !1029, inlinedAt: !1447)
!1451 = !DILocation(line: 950, column: 3, scope: !1029, inlinedAt: !1447)
!1452 = !DILocation(line: 951, column: 3, scope: !1029, inlinedAt: !1447)
!1453 = !DILocation(line: 952, column: 3, scope: !1029, inlinedAt: !1447)
!1454 = !DILocation(line: 241, column: 53, scope: !1157)
!1455 = !DILocation(line: 241, column: 28, scope: !1157)
!1456 = !DILocation(line: 241, column: 37, scope: !1157)
!1457 = distinct !{!1457, !1242, !1458, !536}
!1458 = !DILocation(line: 352, column: 9, scope: !1154)
!1459 = !DILocation(line: 354, column: 3, scope: !1138)
!1460 = !DILocation(line: 355, column: 3, scope: !1138)
!1461 = !DILocation(line: 356, column: 3, scope: !1138)
!1462 = !DISubprogram(name: "fileno_unlocked", scope: !210, file: !210, line: 814, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1463 = !DISubprogram(name: "fflush_unlocked", scope: !210, file: !210, line: 239, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1464 = !DISubprogram(name: "clearerr_unlocked", scope: !210, file: !210, line: 794, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !103}
!1467 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !194, file: !194, line: 50, type: !495, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1468)
!1468 = !{!1469}
!1469 = !DILocalVariable(name: "file", arg: 1, scope: !1467, file: !194, line: 50, type: !63)
!1470 = !DILocation(line: 0, scope: !1467)
!1471 = !DILocation(line: 52, column: 13, scope: !1467)
!1472 = !DILocation(line: 53, column: 1, scope: !1467)
!1473 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !194, file: !194, line: 87, type: !1474, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1476)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !70}
!1476 = !{!1477}
!1477 = !DILocalVariable(name: "ignore", arg: 1, scope: !1473, file: !194, line: 87, type: !70)
!1478 = !DILocation(line: 0, scope: !1473)
!1479 = !DILocation(line: 89, column: 16, scope: !1473)
!1480 = !{!1481, !1481, i64 0}
!1481 = !{!"_Bool", !476, i64 0}
!1482 = !DILocation(line: 90, column: 1, scope: !1473)
!1483 = distinct !DISubprogram(name: "close_stdout", scope: !194, file: !194, line: 116, type: !237, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1484)
!1484 = !{!1485}
!1485 = !DILocalVariable(name: "write_error", scope: !1486, file: !194, line: 121, type: !63)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !194, line: 120, column: 5)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !194, line: 118, column: 7)
!1488 = !DILocation(line: 118, column: 21, scope: !1487)
!1489 = !DILocation(line: 118, column: 7, scope: !1487)
!1490 = !DILocation(line: 118, column: 29, scope: !1487)
!1491 = !DILocation(line: 119, column: 7, scope: !1487)
!1492 = !DILocation(line: 119, column: 12, scope: !1487)
!1493 = !{i8 0, i8 2}
!1494 = !DILocation(line: 119, column: 25, scope: !1487)
!1495 = !DILocation(line: 119, column: 28, scope: !1487)
!1496 = !DILocation(line: 119, column: 34, scope: !1487)
!1497 = !DILocation(line: 118, column: 7, scope: !1483)
!1498 = !DILocation(line: 121, column: 33, scope: !1486)
!1499 = !DILocation(line: 0, scope: !1486)
!1500 = !DILocation(line: 122, column: 11, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1486, file: !194, line: 122, column: 11)
!1502 = !DILocation(line: 0, scope: !1501)
!1503 = !DILocation(line: 122, column: 11, scope: !1486)
!1504 = !DILocation(line: 123, column: 9, scope: !1501)
!1505 = !DILocation(line: 126, column: 9, scope: !1501)
!1506 = !DILocation(line: 128, column: 14, scope: !1486)
!1507 = !DILocation(line: 128, column: 7, scope: !1486)
!1508 = !DILocation(line: 133, column: 42, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1483, file: !194, line: 133, column: 7)
!1510 = !DILocation(line: 133, column: 28, scope: !1509)
!1511 = !DILocation(line: 133, column: 50, scope: !1509)
!1512 = !DILocation(line: 133, column: 7, scope: !1483)
!1513 = !DILocation(line: 134, column: 12, scope: !1509)
!1514 = !DILocation(line: 134, column: 5, scope: !1509)
!1515 = !DILocation(line: 135, column: 1, scope: !1483)
!1516 = distinct !DISubprogram(name: "verror", scope: !201, file: !201, line: 251, type: !1517, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !58, !58, !63, !209}
!1519 = !{!1520, !1521, !1522, !1523}
!1520 = !DILocalVariable(name: "status", arg: 1, scope: !1516, file: !201, line: 251, type: !58)
!1521 = !DILocalVariable(name: "errnum", arg: 2, scope: !1516, file: !201, line: 251, type: !58)
!1522 = !DILocalVariable(name: "message", arg: 3, scope: !1516, file: !201, line: 251, type: !63)
!1523 = !DILocalVariable(name: "args", arg: 4, scope: !1516, file: !201, line: 251, type: !209)
!1524 = !DILocation(line: 0, scope: !1516)
!1525 = !DILocation(line: 251, column: 1, scope: !1516)
!1526 = !DILocation(line: 261, column: 3, scope: !1516)
!1527 = !DILocation(line: 265, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1516, file: !201, line: 265, column: 7)
!1529 = !DILocation(line: 265, column: 7, scope: !1516)
!1530 = !DILocation(line: 266, column: 5, scope: !1528)
!1531 = !DILocation(line: 272, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !201, line: 268, column: 5)
!1533 = !DILocation(line: 276, column: 3, scope: !1516)
!1534 = !{i64 0, i64 8, !474, i64 8, i64 8, !474, i64 16, i64 8, !474, i64 24, i64 4, !569, i64 28, i64 4, !569}
!1535 = !DILocation(line: 282, column: 1, scope: !1516)
!1536 = distinct !DISubprogram(name: "flush_stdout", scope: !201, file: !201, line: 163, type: !237, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1537)
!1537 = !{!1538}
!1538 = !DILocalVariable(name: "stdout_fd", scope: !1536, file: !201, line: 166, type: !58)
!1539 = !DILocation(line: 0, scope: !1536)
!1540 = !DILocalVariable(name: "fd", arg: 1, scope: !1541, file: !201, line: 145, type: !58)
!1541 = distinct !DISubprogram(name: "is_open", scope: !201, file: !201, line: 145, type: !1056, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1542)
!1542 = !{!1540}
!1543 = !DILocation(line: 0, scope: !1541, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 182, column: 25, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1536, file: !201, line: 182, column: 7)
!1546 = !DILocation(line: 157, column: 15, scope: !1541, inlinedAt: !1544)
!1547 = !DILocation(line: 182, column: 25, scope: !1545)
!1548 = !DILocation(line: 182, column: 7, scope: !1536)
!1549 = !DILocation(line: 184, column: 5, scope: !1545)
!1550 = !DILocation(line: 185, column: 1, scope: !1536)
!1551 = distinct !DISubprogram(name: "error_tail", scope: !201, file: !201, line: 219, type: !1517, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1552)
!1552 = !{!1553, !1554, !1555, !1556}
!1553 = !DILocalVariable(name: "status", arg: 1, scope: !1551, file: !201, line: 219, type: !58)
!1554 = !DILocalVariable(name: "errnum", arg: 2, scope: !1551, file: !201, line: 219, type: !58)
!1555 = !DILocalVariable(name: "message", arg: 3, scope: !1551, file: !201, line: 219, type: !63)
!1556 = !DILocalVariable(name: "args", arg: 4, scope: !1551, file: !201, line: 219, type: !209)
!1557 = !DILocation(line: 0, scope: !1551)
!1558 = !DILocation(line: 219, column: 1, scope: !1551)
!1559 = !DILocation(line: 229, column: 13, scope: !1551)
!1560 = !DILocation(line: 229, column: 3, scope: !1551)
!1561 = !DILocalVariable(name: "__stream", arg: 1, scope: !1562, file: !1563, line: 132, type: !1566)
!1562 = distinct !DISubprogram(name: "vfprintf", scope: !1563, file: !1563, line: 132, type: !1564, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1601)
!1563 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!58, !1566, !565, !211}
!1566 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1569, file: !107, line: 51, baseType: !58, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1569, file: !107, line: 54, baseType: !55, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1569, file: !107, line: 55, baseType: !55, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1569, file: !107, line: 56, baseType: !55, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1569, file: !107, line: 57, baseType: !55, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1569, file: !107, line: 58, baseType: !55, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1569, file: !107, line: 59, baseType: !55, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1569, file: !107, line: 60, baseType: !55, size: 64, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1569, file: !107, line: 61, baseType: !55, size: 64, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1569, file: !107, line: 64, baseType: !55, size: 64, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1569, file: !107, line: 65, baseType: !55, size: 64, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1569, file: !107, line: 66, baseType: !55, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1569, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1569, file: !107, line: 70, baseType: !1585, size: 64, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1569, file: !107, line: 72, baseType: !58, size: 32, offset: 896)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1569, file: !107, line: 73, baseType: !58, size: 32, offset: 928)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1569, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1569, file: !107, line: 77, baseType: !59, size: 16, offset: 1024)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1569, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1569, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1569, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1569, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1569, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1569, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1569, file: !107, line: 93, baseType: !1585, size: 64, offset: 1344)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1569, file: !107, line: 94, baseType: !57, size: 64, offset: 1408)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1569, file: !107, line: 95, baseType: !60, size: 64, offset: 1472)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1569, file: !107, line: 96, baseType: !58, size: 32, offset: 1536)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1569, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1601 = !{!1561, !1602, !1603}
!1602 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1562, file: !1563, line: 133, type: !565)
!1603 = !DILocalVariable(name: "__ap", arg: 3, scope: !1562, file: !1563, line: 133, type: !211)
!1604 = !DILocation(line: 0, scope: !1562, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 229, column: 3, scope: !1551)
!1606 = !DILocation(line: 135, column: 10, scope: !1562, inlinedAt: !1605)
!1607 = !{!1608, !1610}
!1608 = distinct !{!1608, !1609, !"vfprintf.inline: argument 0"}
!1609 = distinct !{!1609, !"vfprintf.inline"}
!1610 = distinct !{!1610, !1609, !"vfprintf.inline: argument 1"}
!1611 = !DILocation(line: 232, column: 3, scope: !1551)
!1612 = !DILocation(line: 233, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1551, file: !201, line: 233, column: 7)
!1614 = !DILocation(line: 233, column: 7, scope: !1551)
!1615 = !DILocalVariable(name: "errnum", arg: 1, scope: !1616, file: !201, line: 188, type: !58)
!1616 = distinct !DISubprogram(name: "print_errno_message", scope: !201, file: !201, line: 188, type: !464, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1617)
!1617 = !{!1615, !1618, !1619}
!1618 = !DILocalVariable(name: "s", scope: !1616, file: !201, line: 190, type: !63)
!1619 = !DILocalVariable(name: "errbuf", scope: !1616, file: !201, line: 193, type: !1620)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8192, elements: !1621)
!1621 = !{!1622}
!1622 = !DISubrange(count: 1024)
!1623 = !DILocation(line: 0, scope: !1616, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 234, column: 5, scope: !1613)
!1625 = !DILocation(line: 193, column: 3, scope: !1616, inlinedAt: !1624)
!1626 = !DILocation(line: 193, column: 8, scope: !1616, inlinedAt: !1624)
!1627 = !DILocation(line: 195, column: 7, scope: !1616, inlinedAt: !1624)
!1628 = !DILocation(line: 207, column: 9, scope: !1629, inlinedAt: !1624)
!1629 = distinct !DILexicalBlock(scope: !1616, file: !201, line: 207, column: 7)
!1630 = !DILocation(line: 207, column: 7, scope: !1616, inlinedAt: !1624)
!1631 = !DILocation(line: 208, column: 9, scope: !1629, inlinedAt: !1624)
!1632 = !DILocation(line: 208, column: 5, scope: !1629, inlinedAt: !1624)
!1633 = !DILocation(line: 214, column: 3, scope: !1616, inlinedAt: !1624)
!1634 = !DILocation(line: 216, column: 1, scope: !1616, inlinedAt: !1624)
!1635 = !DILocation(line: 234, column: 5, scope: !1613)
!1636 = !DILocation(line: 238, column: 3, scope: !1551)
!1637 = !DILocalVariable(name: "__c", arg: 1, scope: !1638, file: !975, line: 101, type: !58)
!1638 = distinct !DISubprogram(name: "putc_unlocked", scope: !975, file: !975, line: 101, type: !1639, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!58, !58, !1567}
!1641 = !{!1637, !1642}
!1642 = !DILocalVariable(name: "__stream", arg: 2, scope: !1638, file: !975, line: 101, type: !1567)
!1643 = !DILocation(line: 0, scope: !1638, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 238, column: 3, scope: !1551)
!1645 = !DILocation(line: 103, column: 10, scope: !1638, inlinedAt: !1644)
!1646 = !DILocation(line: 240, column: 3, scope: !1551)
!1647 = !DILocation(line: 241, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1551, file: !201, line: 241, column: 7)
!1649 = !DILocation(line: 241, column: 7, scope: !1551)
!1650 = !DILocation(line: 242, column: 5, scope: !1648)
!1651 = !DILocation(line: 243, column: 1, scope: !1551)
!1652 = !DISubprogram(name: "strerror_r", scope: !1653, file: !1653, line: 444, type: !1654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1653 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!55, !58, !55, !60}
!1656 = !DISubprogram(name: "fcntl", scope: !1657, file: !1657, line: 149, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1657 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!58, !58, !58, null}
!1660 = distinct !DISubprogram(name: "error", scope: !201, file: !201, line: 285, type: !1661, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1663)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !58, !58, !63, null}
!1663 = !{!1664, !1665, !1666, !1667}
!1664 = !DILocalVariable(name: "status", arg: 1, scope: !1660, file: !201, line: 285, type: !58)
!1665 = !DILocalVariable(name: "errnum", arg: 2, scope: !1660, file: !201, line: 285, type: !58)
!1666 = !DILocalVariable(name: "message", arg: 3, scope: !1660, file: !201, line: 285, type: !63)
!1667 = !DILocalVariable(name: "ap", scope: !1660, file: !201, line: 287, type: !209)
!1668 = !DILocation(line: 0, scope: !1660)
!1669 = !DILocation(line: 287, column: 3, scope: !1660)
!1670 = !DILocation(line: 287, column: 11, scope: !1660)
!1671 = !DILocation(line: 288, column: 3, scope: !1660)
!1672 = !DILocation(line: 289, column: 3, scope: !1660)
!1673 = !DILocation(line: 290, column: 3, scope: !1660)
!1674 = !DILocation(line: 291, column: 1, scope: !1660)
!1675 = !DILocation(line: 0, scope: !206)
!1676 = !DILocation(line: 298, column: 1, scope: !206)
!1677 = !DILocation(line: 302, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !206, file: !201, line: 302, column: 7)
!1679 = !DILocation(line: 302, column: 7, scope: !206)
!1680 = !DILocation(line: 307, column: 11, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !201, line: 307, column: 11)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !201, line: 303, column: 5)
!1683 = !DILocation(line: 307, column: 27, scope: !1681)
!1684 = !DILocation(line: 308, column: 11, scope: !1681)
!1685 = !DILocation(line: 308, column: 28, scope: !1681)
!1686 = !DILocation(line: 308, column: 25, scope: !1681)
!1687 = !DILocation(line: 309, column: 15, scope: !1681)
!1688 = !DILocation(line: 309, column: 33, scope: !1681)
!1689 = !DILocation(line: 310, column: 19, scope: !1681)
!1690 = !DILocation(line: 311, column: 22, scope: !1681)
!1691 = !DILocation(line: 311, column: 56, scope: !1681)
!1692 = !DILocation(line: 307, column: 11, scope: !1682)
!1693 = !DILocation(line: 316, column: 21, scope: !1682)
!1694 = !DILocation(line: 317, column: 23, scope: !1682)
!1695 = !DILocation(line: 318, column: 5, scope: !1682)
!1696 = !DILocation(line: 327, column: 3, scope: !206)
!1697 = !DILocation(line: 331, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !206, file: !201, line: 331, column: 7)
!1699 = !DILocation(line: 331, column: 7, scope: !206)
!1700 = !DILocation(line: 332, column: 5, scope: !1698)
!1701 = !DILocation(line: 338, column: 7, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !201, line: 334, column: 5)
!1703 = !DILocation(line: 346, column: 3, scope: !206)
!1704 = !DILocation(line: 350, column: 3, scope: !206)
!1705 = !DILocation(line: 356, column: 1, scope: !206)
!1706 = distinct !DISubprogram(name: "error_at_line", scope: !201, file: !201, line: 359, type: !1707, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !58, !58, !63, !7, !63, null}
!1709 = !{!1710, !1711, !1712, !1713, !1714, !1715}
!1710 = !DILocalVariable(name: "status", arg: 1, scope: !1706, file: !201, line: 359, type: !58)
!1711 = !DILocalVariable(name: "errnum", arg: 2, scope: !1706, file: !201, line: 359, type: !58)
!1712 = !DILocalVariable(name: "file_name", arg: 3, scope: !1706, file: !201, line: 359, type: !63)
!1713 = !DILocalVariable(name: "line_number", arg: 4, scope: !1706, file: !201, line: 360, type: !7)
!1714 = !DILocalVariable(name: "message", arg: 5, scope: !1706, file: !201, line: 360, type: !63)
!1715 = !DILocalVariable(name: "ap", scope: !1706, file: !201, line: 362, type: !209)
!1716 = !DILocation(line: 0, scope: !1706)
!1717 = !DILocation(line: 362, column: 3, scope: !1706)
!1718 = !DILocation(line: 362, column: 11, scope: !1706)
!1719 = !DILocation(line: 363, column: 3, scope: !1706)
!1720 = !DILocation(line: 364, column: 3, scope: !1706)
!1721 = !DILocation(line: 366, column: 3, scope: !1706)
!1722 = !DILocation(line: 367, column: 1, scope: !1706)
!1723 = distinct !DISubprogram(name: "fdadvise", scope: !387, file: !387, line: 25, type: !1724, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1728)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !58, !1726, !1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !210, line: 63, baseType: !129)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !46, line: 51, baseType: !45)
!1728 = !{!1729, !1730, !1731, !1732}
!1729 = !DILocalVariable(name: "fd", arg: 1, scope: !1723, file: !387, line: 25, type: !58)
!1730 = !DILocalVariable(name: "offset", arg: 2, scope: !1723, file: !387, line: 25, type: !1726)
!1731 = !DILocalVariable(name: "len", arg: 3, scope: !1723, file: !387, line: 25, type: !1726)
!1732 = !DILocalVariable(name: "advice", arg: 4, scope: !1723, file: !387, line: 25, type: !1727)
!1733 = !DILocation(line: 0, scope: !1723)
!1734 = !DILocation(line: 28, column: 3, scope: !1723)
!1735 = !DILocation(line: 30, column: 1, scope: !1723)
!1736 = !DISubprogram(name: "posix_fadvise", scope: !1657, file: !1657, line: 273, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!58, !58, !1726, !1726, !58}
!1739 = distinct !DISubprogram(name: "fadvise", scope: !387, file: !387, line: 33, type: !1740, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1776)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !1742, !1727}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1744, file: !107, line: 51, baseType: !58, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1744, file: !107, line: 54, baseType: !55, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1744, file: !107, line: 55, baseType: !55, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1744, file: !107, line: 56, baseType: !55, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1744, file: !107, line: 57, baseType: !55, size: 64, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1744, file: !107, line: 58, baseType: !55, size: 64, offset: 320)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1744, file: !107, line: 59, baseType: !55, size: 64, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1744, file: !107, line: 60, baseType: !55, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1744, file: !107, line: 61, baseType: !55, size: 64, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1744, file: !107, line: 64, baseType: !55, size: 64, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1744, file: !107, line: 65, baseType: !55, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1744, file: !107, line: 66, baseType: !55, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1744, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1744, file: !107, line: 70, baseType: !1760, size: 64, offset: 832)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1744, file: !107, line: 72, baseType: !58, size: 32, offset: 896)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1744, file: !107, line: 73, baseType: !58, size: 32, offset: 928)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1744, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1744, file: !107, line: 77, baseType: !59, size: 16, offset: 1024)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1744, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1744, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1744, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1744, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1744, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1744, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1744, file: !107, line: 93, baseType: !1760, size: 64, offset: 1344)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1744, file: !107, line: 94, baseType: !57, size: 64, offset: 1408)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1744, file: !107, line: 95, baseType: !60, size: 64, offset: 1472)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1744, file: !107, line: 96, baseType: !58, size: 32, offset: 1536)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1744, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1776 = !{!1777, !1778}
!1777 = !DILocalVariable(name: "fp", arg: 1, scope: !1739, file: !387, line: 33, type: !1742)
!1778 = !DILocalVariable(name: "advice", arg: 2, scope: !1739, file: !387, line: 33, type: !1727)
!1779 = !DILocation(line: 0, scope: !1739)
!1780 = !DILocation(line: 35, column: 7, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1739, file: !387, line: 35, column: 7)
!1782 = !DILocation(line: 35, column: 7, scope: !1739)
!1783 = !DILocation(line: 36, column: 15, scope: !1781)
!1784 = !DILocation(line: 0, scope: !1723, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 36, column: 5, scope: !1781)
!1786 = !DILocation(line: 28, column: 3, scope: !1723, inlinedAt: !1785)
!1787 = !DILocation(line: 36, column: 5, scope: !1781)
!1788 = !DILocation(line: 37, column: 1, scope: !1739)
!1789 = !DISubprogram(name: "fileno", scope: !210, file: !210, line: 809, type: !1790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!58, !1742}
!1792 = distinct !DISubprogram(name: "rpl_fclose", scope: !390, file: !390, line: 58, type: !1793, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !1829)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!58, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1797, file: !107, line: 51, baseType: !58, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1797, file: !107, line: 54, baseType: !55, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1797, file: !107, line: 55, baseType: !55, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1797, file: !107, line: 56, baseType: !55, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1797, file: !107, line: 57, baseType: !55, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1797, file: !107, line: 58, baseType: !55, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1797, file: !107, line: 59, baseType: !55, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1797, file: !107, line: 60, baseType: !55, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1797, file: !107, line: 61, baseType: !55, size: 64, offset: 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1797, file: !107, line: 64, baseType: !55, size: 64, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1797, file: !107, line: 65, baseType: !55, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1797, file: !107, line: 66, baseType: !55, size: 64, offset: 704)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1797, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1797, file: !107, line: 70, baseType: !1813, size: 64, offset: 832)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1797, file: !107, line: 72, baseType: !58, size: 32, offset: 896)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1797, file: !107, line: 73, baseType: !58, size: 32, offset: 928)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1797, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1797, file: !107, line: 77, baseType: !59, size: 16, offset: 1024)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1797, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1797, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1797, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1797, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1797, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1797, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1797, file: !107, line: 93, baseType: !1813, size: 64, offset: 1344)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1797, file: !107, line: 94, baseType: !57, size: 64, offset: 1408)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1797, file: !107, line: 95, baseType: !60, size: 64, offset: 1472)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1797, file: !107, line: 96, baseType: !58, size: 32, offset: 1536)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1797, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1829 = !{!1830, !1831, !1832, !1833}
!1830 = !DILocalVariable(name: "fp", arg: 1, scope: !1792, file: !390, line: 58, type: !1795)
!1831 = !DILocalVariable(name: "saved_errno", scope: !1792, file: !390, line: 60, type: !58)
!1832 = !DILocalVariable(name: "fd", scope: !1792, file: !390, line: 63, type: !58)
!1833 = !DILocalVariable(name: "result", scope: !1792, file: !390, line: 74, type: !58)
!1834 = !DILocation(line: 0, scope: !1792)
!1835 = !DILocation(line: 63, column: 12, scope: !1792)
!1836 = !DILocation(line: 64, column: 10, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1792, file: !390, line: 64, column: 7)
!1838 = !DILocation(line: 64, column: 7, scope: !1792)
!1839 = !DILocation(line: 65, column: 12, scope: !1837)
!1840 = !DILocation(line: 65, column: 5, scope: !1837)
!1841 = !DILocation(line: 70, column: 9, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1792, file: !390, line: 70, column: 7)
!1843 = !DILocation(line: 70, column: 23, scope: !1842)
!1844 = !DILocation(line: 70, column: 33, scope: !1842)
!1845 = !DILocation(line: 70, column: 26, scope: !1842)
!1846 = !DILocation(line: 70, column: 59, scope: !1842)
!1847 = !DILocation(line: 71, column: 7, scope: !1842)
!1848 = !DILocation(line: 71, column: 10, scope: !1842)
!1849 = !DILocation(line: 70, column: 7, scope: !1792)
!1850 = !DILocation(line: 100, column: 12, scope: !1792)
!1851 = !DILocation(line: 105, column: 7, scope: !1792)
!1852 = !DILocation(line: 72, column: 19, scope: !1842)
!1853 = !DILocation(line: 105, column: 19, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1792, file: !390, line: 105, column: 7)
!1855 = !DILocation(line: 107, column: 13, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1854, file: !390, line: 106, column: 5)
!1857 = !DILocation(line: 109, column: 5, scope: !1856)
!1858 = !DILocation(line: 112, column: 1, scope: !1792)
!1859 = !DISubprogram(name: "fclose", scope: !210, file: !210, line: 178, type: !1793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1860 = !DISubprogram(name: "lseek", scope: !1861, file: !1861, line: 339, type: !1862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1861 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!129, !58, !129, !58}
!1864 = distinct !DISubprogram(name: "rpl_fflush", scope: !392, file: !392, line: 130, type: !1865, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !1901)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!58, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1869, file: !107, line: 51, baseType: !58, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1869, file: !107, line: 54, baseType: !55, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1869, file: !107, line: 55, baseType: !55, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1869, file: !107, line: 56, baseType: !55, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1869, file: !107, line: 57, baseType: !55, size: 64, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1869, file: !107, line: 58, baseType: !55, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1869, file: !107, line: 59, baseType: !55, size: 64, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1869, file: !107, line: 60, baseType: !55, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1869, file: !107, line: 61, baseType: !55, size: 64, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1869, file: !107, line: 64, baseType: !55, size: 64, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1869, file: !107, line: 65, baseType: !55, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1869, file: !107, line: 66, baseType: !55, size: 64, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1869, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1869, file: !107, line: 70, baseType: !1885, size: 64, offset: 832)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1869, file: !107, line: 72, baseType: !58, size: 32, offset: 896)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1869, file: !107, line: 73, baseType: !58, size: 32, offset: 928)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1869, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1869, file: !107, line: 77, baseType: !59, size: 16, offset: 1024)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1869, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1869, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1869, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1869, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1869, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1869, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1869, file: !107, line: 93, baseType: !1885, size: 64, offset: 1344)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1869, file: !107, line: 94, baseType: !57, size: 64, offset: 1408)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1869, file: !107, line: 95, baseType: !60, size: 64, offset: 1472)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1869, file: !107, line: 96, baseType: !58, size: 32, offset: 1536)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1869, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "stream", arg: 1, scope: !1864, file: !392, line: 130, type: !1867)
!1903 = !DILocation(line: 0, scope: !1864)
!1904 = !DILocation(line: 151, column: 14, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1864, file: !392, line: 151, column: 7)
!1906 = !DILocation(line: 151, column: 22, scope: !1905)
!1907 = !DILocation(line: 151, column: 27, scope: !1905)
!1908 = !DILocation(line: 151, column: 7, scope: !1864)
!1909 = !DILocation(line: 152, column: 12, scope: !1905)
!1910 = !DILocation(line: 152, column: 5, scope: !1905)
!1911 = !DILocalVariable(name: "fp", arg: 1, scope: !1912, file: !392, line: 42, type: !1867)
!1912 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !392, file: !392, line: 42, type: !1913, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1867}
!1915 = !{!1911}
!1916 = !DILocation(line: 0, scope: !1912, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 157, column: 3, scope: !1864)
!1918 = !DILocation(line: 44, column: 12, scope: !1919, inlinedAt: !1917)
!1919 = distinct !DILexicalBlock(scope: !1912, file: !392, line: 44, column: 7)
!1920 = !DILocation(line: 44, column: 19, scope: !1919, inlinedAt: !1917)
!1921 = !DILocation(line: 44, column: 7, scope: !1912, inlinedAt: !1917)
!1922 = !DILocation(line: 46, column: 5, scope: !1919, inlinedAt: !1917)
!1923 = !DILocation(line: 159, column: 10, scope: !1864)
!1924 = !DILocation(line: 159, column: 3, scope: !1864)
!1925 = !DILocation(line: 236, column: 1, scope: !1864)
!1926 = !DISubprogram(name: "fflush", scope: !210, file: !210, line: 230, type: !1865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!1927 = distinct !DISubprogram(name: "fpurge", scope: !395, file: !395, line: 32, type: !1928, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1964)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!58, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1933)
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1932, file: !107, line: 51, baseType: !58, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1932, file: !107, line: 54, baseType: !55, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1932, file: !107, line: 55, baseType: !55, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1932, file: !107, line: 56, baseType: !55, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1932, file: !107, line: 57, baseType: !55, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1932, file: !107, line: 58, baseType: !55, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1932, file: !107, line: 59, baseType: !55, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1932, file: !107, line: 60, baseType: !55, size: 64, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1932, file: !107, line: 61, baseType: !55, size: 64, offset: 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1932, file: !107, line: 64, baseType: !55, size: 64, offset: 576)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1932, file: !107, line: 65, baseType: !55, size: 64, offset: 640)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1932, file: !107, line: 66, baseType: !55, size: 64, offset: 704)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1932, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1932, file: !107, line: 70, baseType: !1948, size: 64, offset: 832)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1932, file: !107, line: 72, baseType: !58, size: 32, offset: 896)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1932, file: !107, line: 73, baseType: !58, size: 32, offset: 928)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1932, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1932, file: !107, line: 77, baseType: !59, size: 16, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1932, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1932, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1932, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1932, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1932, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1932, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1932, file: !107, line: 93, baseType: !1948, size: 64, offset: 1344)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1932, file: !107, line: 94, baseType: !57, size: 64, offset: 1408)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1932, file: !107, line: 95, baseType: !60, size: 64, offset: 1472)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1932, file: !107, line: 96, baseType: !58, size: 32, offset: 1536)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1932, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1964 = !{!1965}
!1965 = !DILocalVariable(name: "fp", arg: 1, scope: !1927, file: !395, line: 32, type: !1930)
!1966 = !DILocation(line: 0, scope: !1927)
!1967 = !DILocation(line: 36, column: 3, scope: !1927)
!1968 = !DILocation(line: 38, column: 3, scope: !1927)
!1969 = distinct !DISubprogram(name: "rpl_fseeko", scope: !397, file: !397, line: 28, type: !1970, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2006)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!58, !1972, !1726, !58}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1974, file: !107, line: 51, baseType: !58, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1974, file: !107, line: 54, baseType: !55, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1974, file: !107, line: 55, baseType: !55, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1974, file: !107, line: 56, baseType: !55, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1974, file: !107, line: 57, baseType: !55, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1974, file: !107, line: 58, baseType: !55, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1974, file: !107, line: 59, baseType: !55, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1974, file: !107, line: 60, baseType: !55, size: 64, offset: 448)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1974, file: !107, line: 61, baseType: !55, size: 64, offset: 512)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1974, file: !107, line: 64, baseType: !55, size: 64, offset: 576)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1974, file: !107, line: 65, baseType: !55, size: 64, offset: 640)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1974, file: !107, line: 66, baseType: !55, size: 64, offset: 704)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1974, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1974, file: !107, line: 70, baseType: !1990, size: 64, offset: 832)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1974, file: !107, line: 72, baseType: !58, size: 32, offset: 896)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1974, file: !107, line: 73, baseType: !58, size: 32, offset: 928)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1974, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1974, file: !107, line: 77, baseType: !59, size: 16, offset: 1024)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1974, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1974, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1974, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1974, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1974, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1974, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1974, file: !107, line: 93, baseType: !1990, size: 64, offset: 1344)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1974, file: !107, line: 94, baseType: !57, size: 64, offset: 1408)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1974, file: !107, line: 95, baseType: !60, size: 64, offset: 1472)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1974, file: !107, line: 96, baseType: !58, size: 32, offset: 1536)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1974, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!2006 = !{!2007, !2008, !2009, !2010}
!2007 = !DILocalVariable(name: "fp", arg: 1, scope: !1969, file: !397, line: 28, type: !1972)
!2008 = !DILocalVariable(name: "offset", arg: 2, scope: !1969, file: !397, line: 28, type: !1726)
!2009 = !DILocalVariable(name: "whence", arg: 3, scope: !1969, file: !397, line: 28, type: !58)
!2010 = !DILocalVariable(name: "pos", scope: !2011, file: !397, line: 123, type: !1726)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !397, line: 119, column: 5)
!2012 = distinct !DILexicalBlock(scope: !1969, file: !397, line: 55, column: 7)
!2013 = !DILocation(line: 0, scope: !1969)
!2014 = !DILocation(line: 55, column: 12, scope: !2012)
!2015 = !DILocation(line: 55, column: 33, scope: !2012)
!2016 = !DILocation(line: 55, column: 25, scope: !2012)
!2017 = !DILocation(line: 56, column: 7, scope: !2012)
!2018 = !DILocation(line: 56, column: 15, scope: !2012)
!2019 = !DILocation(line: 56, column: 37, scope: !2012)
!2020 = !{!983, !475, i64 32}
!2021 = !DILocation(line: 56, column: 29, scope: !2012)
!2022 = !DILocation(line: 57, column: 7, scope: !2012)
!2023 = !DILocation(line: 57, column: 15, scope: !2012)
!2024 = !{!983, !475, i64 72}
!2025 = !DILocation(line: 57, column: 29, scope: !2012)
!2026 = !DILocation(line: 55, column: 7, scope: !1969)
!2027 = !DILocation(line: 123, column: 26, scope: !2011)
!2028 = !DILocation(line: 123, column: 19, scope: !2011)
!2029 = !DILocation(line: 0, scope: !2011)
!2030 = !DILocation(line: 124, column: 15, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2011, file: !397, line: 124, column: 11)
!2032 = !DILocation(line: 124, column: 11, scope: !2011)
!2033 = !DILocation(line: 135, column: 12, scope: !2011)
!2034 = !DILocation(line: 135, column: 19, scope: !2011)
!2035 = !DILocation(line: 136, column: 12, scope: !2011)
!2036 = !DILocation(line: 136, column: 20, scope: !2011)
!2037 = !{!983, !765, i64 144}
!2038 = !DILocation(line: 167, column: 7, scope: !2011)
!2039 = !DILocation(line: 169, column: 10, scope: !1969)
!2040 = !DILocation(line: 169, column: 3, scope: !1969)
!2041 = !DILocation(line: 170, column: 1, scope: !1969)
!2042 = !DISubprogram(name: "fseeko", scope: !210, file: !210, line: 736, type: !2043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!58, !1972, !129, !58}
!2045 = distinct !DISubprogram(name: "getprogname", scope: !399, file: !399, line: 54, type: !2046, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !483)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!63}
!2048 = !DILocation(line: 58, column: 10, scope: !2045)
!2049 = !DILocation(line: 58, column: 3, scope: !2045)
!2050 = distinct !DISubprogram(name: "set_program_name", scope: !242, file: !242, line: 37, type: !495, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !2051)
!2051 = !{!2052, !2053, !2054}
!2052 = !DILocalVariable(name: "argv0", arg: 1, scope: !2050, file: !242, line: 37, type: !63)
!2053 = !DILocalVariable(name: "slash", scope: !2050, file: !242, line: 44, type: !63)
!2054 = !DILocalVariable(name: "base", scope: !2050, file: !242, line: 45, type: !63)
!2055 = !DILocation(line: 0, scope: !2050)
!2056 = !DILocation(line: 44, column: 23, scope: !2050)
!2057 = !DILocation(line: 45, column: 22, scope: !2050)
!2058 = !DILocation(line: 46, column: 17, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2050, file: !242, line: 46, column: 7)
!2060 = !DILocation(line: 46, column: 9, scope: !2059)
!2061 = !DILocation(line: 46, column: 25, scope: !2059)
!2062 = !DILocation(line: 46, column: 40, scope: !2059)
!2063 = !DILocalVariable(name: "__s1", arg: 1, scope: !2064, file: !520, line: 974, type: !687)
!2064 = distinct !DISubprogram(name: "memeq", scope: !520, file: !520, line: 974, type: !2065, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!70, !687, !687, !60}
!2067 = !{!2063, !2068, !2069}
!2068 = !DILocalVariable(name: "__s2", arg: 2, scope: !2064, file: !520, line: 974, type: !687)
!2069 = !DILocalVariable(name: "__n", arg: 3, scope: !2064, file: !520, line: 974, type: !60)
!2070 = !DILocation(line: 0, scope: !2064, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 46, column: 28, scope: !2059)
!2072 = !DILocation(line: 976, column: 11, scope: !2064, inlinedAt: !2071)
!2073 = !DILocation(line: 976, column: 10, scope: !2064, inlinedAt: !2071)
!2074 = !DILocation(line: 46, column: 7, scope: !2050)
!2075 = !DILocation(line: 49, column: 11, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !242, line: 49, column: 11)
!2077 = distinct !DILexicalBlock(scope: !2059, file: !242, line: 47, column: 5)
!2078 = !DILocation(line: 49, column: 36, scope: !2076)
!2079 = !DILocation(line: 49, column: 11, scope: !2077)
!2080 = !DILocation(line: 65, column: 16, scope: !2050)
!2081 = !DILocation(line: 71, column: 27, scope: !2050)
!2082 = !DILocation(line: 74, column: 33, scope: !2050)
!2083 = !DILocation(line: 76, column: 1, scope: !2050)
!2084 = !DILocation(line: 0, scope: !247)
!2085 = !DILocation(line: 40, column: 29, scope: !247)
!2086 = !DILocation(line: 41, column: 19, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !247, file: !248, line: 41, column: 7)
!2088 = !DILocation(line: 41, column: 7, scope: !247)
!2089 = !DILocation(line: 47, column: 3, scope: !247)
!2090 = !DILocation(line: 48, column: 3, scope: !247)
!2091 = !DILocation(line: 48, column: 13, scope: !247)
!2092 = !DILocalVariable(name: "ps", arg: 1, scope: !2093, file: !2094, line: 1135, type: !2097)
!2093 = distinct !DISubprogram(name: "mbszero", scope: !2094, file: !2094, line: 1135, type: !2095, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !2098)
!2094 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !2097}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!2098 = !{!2092}
!2099 = !DILocation(line: 0, scope: !2093, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 48, column: 18, scope: !247)
!2101 = !DILocalVariable(name: "__dest", arg: 1, scope: !2102, file: !874, line: 57, type: !57)
!2102 = distinct !DISubprogram(name: "memset", scope: !874, file: !874, line: 57, type: !2103, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!57, !57, !58, !60}
!2105 = !{!2101, !2106, !2107}
!2106 = !DILocalVariable(name: "__ch", arg: 2, scope: !2102, file: !874, line: 57, type: !58)
!2107 = !DILocalVariable(name: "__len", arg: 3, scope: !2102, file: !874, line: 57, type: !60)
!2108 = !DILocation(line: 0, scope: !2102, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 1137, column: 3, scope: !2093, inlinedAt: !2100)
!2110 = !DILocation(line: 59, column: 10, scope: !2102, inlinedAt: !2109)
!2111 = !DILocation(line: 49, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !247, file: !248, line: 49, column: 7)
!2113 = !DILocation(line: 49, column: 39, scope: !2112)
!2114 = !DILocation(line: 49, column: 44, scope: !2112)
!2115 = !DILocation(line: 54, column: 1, scope: !247)
!2116 = distinct !DISubprogram(name: "clone_quoting_options", scope: !284, file: !284, line: 113, type: !2117, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2120)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!2119, !2119}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!2120 = !{!2121, !2122, !2123}
!2121 = !DILocalVariable(name: "o", arg: 1, scope: !2116, file: !284, line: 113, type: !2119)
!2122 = !DILocalVariable(name: "saved_errno", scope: !2116, file: !284, line: 115, type: !58)
!2123 = !DILocalVariable(name: "p", scope: !2116, file: !284, line: 116, type: !2119)
!2124 = !DILocation(line: 0, scope: !2116)
!2125 = !DILocation(line: 115, column: 21, scope: !2116)
!2126 = !DILocation(line: 116, column: 40, scope: !2116)
!2127 = !DILocation(line: 116, column: 31, scope: !2116)
!2128 = !DILocation(line: 118, column: 9, scope: !2116)
!2129 = !DILocation(line: 119, column: 3, scope: !2116)
!2130 = distinct !DISubprogram(name: "get_quoting_style", scope: !284, file: !284, line: 124, type: !2131, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2135)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!5, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "o", arg: 1, scope: !2130, file: !284, line: 124, type: !2133)
!2137 = !DILocation(line: 0, scope: !2130)
!2138 = !DILocation(line: 126, column: 11, scope: !2130)
!2139 = !DILocation(line: 126, column: 46, scope: !2130)
!2140 = !{!2141, !476, i64 0}
!2141 = !{!"quoting_options", !476, i64 0, !570, i64 4, !476, i64 8, !475, i64 40, !475, i64 48}
!2142 = !DILocation(line: 126, column: 3, scope: !2130)
!2143 = distinct !DISubprogram(name: "set_quoting_style", scope: !284, file: !284, line: 132, type: !2144, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2119, !5}
!2146 = !{!2147, !2148}
!2147 = !DILocalVariable(name: "o", arg: 1, scope: !2143, file: !284, line: 132, type: !2119)
!2148 = !DILocalVariable(name: "s", arg: 2, scope: !2143, file: !284, line: 132, type: !5)
!2149 = !DILocation(line: 0, scope: !2143)
!2150 = !DILocation(line: 134, column: 4, scope: !2143)
!2151 = !DILocation(line: 134, column: 39, scope: !2143)
!2152 = !DILocation(line: 134, column: 45, scope: !2143)
!2153 = !DILocation(line: 135, column: 1, scope: !2143)
!2154 = distinct !DISubprogram(name: "set_char_quoting", scope: !284, file: !284, line: 143, type: !2155, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!58, !2119, !56, !58}
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2164, !2165}
!2158 = !DILocalVariable(name: "o", arg: 1, scope: !2154, file: !284, line: 143, type: !2119)
!2159 = !DILocalVariable(name: "c", arg: 2, scope: !2154, file: !284, line: 143, type: !56)
!2160 = !DILocalVariable(name: "i", arg: 3, scope: !2154, file: !284, line: 143, type: !58)
!2161 = !DILocalVariable(name: "uc", scope: !2154, file: !284, line: 145, type: !65)
!2162 = !DILocalVariable(name: "p", scope: !2154, file: !284, line: 146, type: !2163)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2164 = !DILocalVariable(name: "shift", scope: !2154, file: !284, line: 148, type: !58)
!2165 = !DILocalVariable(name: "r", scope: !2154, file: !284, line: 149, type: !7)
!2166 = !DILocation(line: 0, scope: !2154)
!2167 = !DILocation(line: 147, column: 6, scope: !2154)
!2168 = !DILocation(line: 147, column: 62, scope: !2154)
!2169 = !DILocation(line: 147, column: 57, scope: !2154)
!2170 = !DILocation(line: 148, column: 15, scope: !2154)
!2171 = !DILocation(line: 149, column: 21, scope: !2154)
!2172 = !DILocation(line: 149, column: 24, scope: !2154)
!2173 = !DILocation(line: 149, column: 34, scope: !2154)
!2174 = !DILocation(line: 150, column: 13, scope: !2154)
!2175 = !DILocation(line: 150, column: 19, scope: !2154)
!2176 = !DILocation(line: 150, column: 24, scope: !2154)
!2177 = !DILocation(line: 150, column: 6, scope: !2154)
!2178 = !DILocation(line: 151, column: 3, scope: !2154)
!2179 = distinct !DISubprogram(name: "set_quoting_flags", scope: !284, file: !284, line: 159, type: !2180, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!58, !2119, !58}
!2182 = !{!2183, !2184, !2185}
!2183 = !DILocalVariable(name: "o", arg: 1, scope: !2179, file: !284, line: 159, type: !2119)
!2184 = !DILocalVariable(name: "i", arg: 2, scope: !2179, file: !284, line: 159, type: !58)
!2185 = !DILocalVariable(name: "r", scope: !2179, file: !284, line: 163, type: !58)
!2186 = !DILocation(line: 0, scope: !2179)
!2187 = !DILocation(line: 161, column: 8, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2179, file: !284, line: 161, column: 7)
!2189 = !DILocation(line: 161, column: 7, scope: !2179)
!2190 = !DILocation(line: 163, column: 14, scope: !2179)
!2191 = !{!2141, !570, i64 4}
!2192 = !DILocation(line: 164, column: 12, scope: !2179)
!2193 = !DILocation(line: 165, column: 3, scope: !2179)
!2194 = distinct !DISubprogram(name: "set_custom_quoting", scope: !284, file: !284, line: 169, type: !2195, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !2119, !63, !63}
!2197 = !{!2198, !2199, !2200}
!2198 = !DILocalVariable(name: "o", arg: 1, scope: !2194, file: !284, line: 169, type: !2119)
!2199 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2194, file: !284, line: 170, type: !63)
!2200 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2194, file: !284, line: 170, type: !63)
!2201 = !DILocation(line: 0, scope: !2194)
!2202 = !DILocation(line: 172, column: 8, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2194, file: !284, line: 172, column: 7)
!2204 = !DILocation(line: 172, column: 7, scope: !2194)
!2205 = !DILocation(line: 174, column: 6, scope: !2194)
!2206 = !DILocation(line: 174, column: 12, scope: !2194)
!2207 = !DILocation(line: 175, column: 8, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2194, file: !284, line: 175, column: 7)
!2209 = !DILocation(line: 175, column: 19, scope: !2208)
!2210 = !DILocation(line: 176, column: 5, scope: !2208)
!2211 = !DILocation(line: 177, column: 6, scope: !2194)
!2212 = !DILocation(line: 177, column: 17, scope: !2194)
!2213 = !{!2141, !475, i64 40}
!2214 = !DILocation(line: 178, column: 6, scope: !2194)
!2215 = !DILocation(line: 178, column: 18, scope: !2194)
!2216 = !{!2141, !475, i64 48}
!2217 = !DILocation(line: 179, column: 1, scope: !2194)
!2218 = distinct !DISubprogram(name: "quotearg_buffer", scope: !284, file: !284, line: 774, type: !2219, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!60, !55, !60, !63, !60, !2133}
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229}
!2222 = !DILocalVariable(name: "buffer", arg: 1, scope: !2218, file: !284, line: 774, type: !55)
!2223 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2218, file: !284, line: 774, type: !60)
!2224 = !DILocalVariable(name: "arg", arg: 3, scope: !2218, file: !284, line: 775, type: !63)
!2225 = !DILocalVariable(name: "argsize", arg: 4, scope: !2218, file: !284, line: 775, type: !60)
!2226 = !DILocalVariable(name: "o", arg: 5, scope: !2218, file: !284, line: 776, type: !2133)
!2227 = !DILocalVariable(name: "p", scope: !2218, file: !284, line: 778, type: !2133)
!2228 = !DILocalVariable(name: "saved_errno", scope: !2218, file: !284, line: 779, type: !58)
!2229 = !DILocalVariable(name: "r", scope: !2218, file: !284, line: 780, type: !60)
!2230 = !DILocation(line: 0, scope: !2218)
!2231 = !DILocation(line: 778, column: 37, scope: !2218)
!2232 = !DILocation(line: 779, column: 21, scope: !2218)
!2233 = !DILocation(line: 781, column: 43, scope: !2218)
!2234 = !DILocation(line: 781, column: 53, scope: !2218)
!2235 = !DILocation(line: 781, column: 60, scope: !2218)
!2236 = !DILocation(line: 782, column: 43, scope: !2218)
!2237 = !DILocation(line: 782, column: 58, scope: !2218)
!2238 = !DILocation(line: 780, column: 14, scope: !2218)
!2239 = !DILocation(line: 783, column: 9, scope: !2218)
!2240 = !DILocation(line: 784, column: 3, scope: !2218)
!2241 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !284, file: !284, line: 251, type: !2242, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2246)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!60, !55, !60, !63, !60, !5, !58, !2244, !63, !63}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2271, !2273, !2276, !2277, !2278, !2279, !2282, !2283, !2286, !2290, !2291, !2299, !2302, !2303, !2305, !2306, !2307, !2308}
!2247 = !DILocalVariable(name: "buffer", arg: 1, scope: !2241, file: !284, line: 251, type: !55)
!2248 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2241, file: !284, line: 251, type: !60)
!2249 = !DILocalVariable(name: "arg", arg: 3, scope: !2241, file: !284, line: 252, type: !63)
!2250 = !DILocalVariable(name: "argsize", arg: 4, scope: !2241, file: !284, line: 252, type: !60)
!2251 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2241, file: !284, line: 253, type: !5)
!2252 = !DILocalVariable(name: "flags", arg: 6, scope: !2241, file: !284, line: 253, type: !58)
!2253 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2241, file: !284, line: 254, type: !2244)
!2254 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2241, file: !284, line: 255, type: !63)
!2255 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2241, file: !284, line: 256, type: !63)
!2256 = !DILocalVariable(name: "unibyte_locale", scope: !2241, file: !284, line: 258, type: !70)
!2257 = !DILocalVariable(name: "len", scope: !2241, file: !284, line: 260, type: !60)
!2258 = !DILocalVariable(name: "orig_buffersize", scope: !2241, file: !284, line: 261, type: !60)
!2259 = !DILocalVariable(name: "quote_string", scope: !2241, file: !284, line: 262, type: !63)
!2260 = !DILocalVariable(name: "quote_string_len", scope: !2241, file: !284, line: 263, type: !60)
!2261 = !DILocalVariable(name: "backslash_escapes", scope: !2241, file: !284, line: 264, type: !70)
!2262 = !DILocalVariable(name: "elide_outer_quotes", scope: !2241, file: !284, line: 265, type: !70)
!2263 = !DILocalVariable(name: "encountered_single_quote", scope: !2241, file: !284, line: 266, type: !70)
!2264 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2241, file: !284, line: 267, type: !70)
!2265 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2241, file: !284, line: 309, type: !70)
!2266 = !DILocalVariable(name: "lq", scope: !2267, file: !284, line: 361, type: !63)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !284, line: 361, column: 11)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !284, line: 360, column: 13)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !284, line: 333, column: 7)
!2270 = distinct !DILexicalBlock(scope: !2241, file: !284, line: 312, column: 5)
!2271 = !DILocalVariable(name: "i", scope: !2272, file: !284, line: 395, type: !60)
!2272 = distinct !DILexicalBlock(scope: !2241, file: !284, line: 395, column: 3)
!2273 = !DILocalVariable(name: "is_right_quote", scope: !2274, file: !284, line: 397, type: !70)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !284, line: 396, column: 5)
!2275 = distinct !DILexicalBlock(scope: !2272, file: !284, line: 395, column: 3)
!2276 = !DILocalVariable(name: "escaping", scope: !2274, file: !284, line: 398, type: !70)
!2277 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2274, file: !284, line: 399, type: !70)
!2278 = !DILocalVariable(name: "c", scope: !2274, file: !284, line: 417, type: !65)
!2279 = !DILocalVariable(name: "m", scope: !2280, file: !284, line: 598, type: !60)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !284, line: 596, column: 11)
!2281 = distinct !DILexicalBlock(scope: !2274, file: !284, line: 419, column: 9)
!2282 = !DILocalVariable(name: "printable", scope: !2280, file: !284, line: 600, type: !70)
!2283 = !DILocalVariable(name: "mbs", scope: !2284, file: !284, line: 609, type: !329)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !284, line: 608, column: 15)
!2285 = distinct !DILexicalBlock(scope: !2280, file: !284, line: 602, column: 17)
!2286 = !DILocalVariable(name: "w", scope: !2287, file: !284, line: 618, type: !258)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !284, line: 617, column: 19)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !284, line: 616, column: 17)
!2289 = distinct !DILexicalBlock(scope: !2284, file: !284, line: 616, column: 17)
!2290 = !DILocalVariable(name: "bytes", scope: !2287, file: !284, line: 619, type: !60)
!2291 = !DILocalVariable(name: "j", scope: !2292, file: !284, line: 648, type: !60)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !284, line: 648, column: 29)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !284, line: 647, column: 27)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !284, line: 645, column: 29)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !284, line: 636, column: 23)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !284, line: 628, column: 30)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !284, line: 623, column: 30)
!2298 = distinct !DILexicalBlock(scope: !2287, file: !284, line: 621, column: 25)
!2299 = !DILocalVariable(name: "ilim", scope: !2300, file: !284, line: 674, type: !60)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !284, line: 671, column: 15)
!2301 = distinct !DILexicalBlock(scope: !2280, file: !284, line: 670, column: 17)
!2302 = !DILabel(scope: !2241, name: "process_input", file: !284, line: 308)
!2303 = !DILabel(scope: !2304, name: "c_and_shell_escape", file: !284, line: 502)
!2304 = distinct !DILexicalBlock(scope: !2281, file: !284, line: 478, column: 9)
!2305 = !DILabel(scope: !2304, name: "c_escape", file: !284, line: 507)
!2306 = !DILabel(scope: !2274, name: "store_escape", file: !284, line: 709)
!2307 = !DILabel(scope: !2274, name: "store_c", file: !284, line: 712)
!2308 = !DILabel(scope: !2241, name: "force_outer_quoting_style", file: !284, line: 753)
!2309 = !DILocation(line: 0, scope: !2241)
!2310 = !DILocation(line: 258, column: 25, scope: !2241)
!2311 = !DILocation(line: 258, column: 36, scope: !2241)
!2312 = !DILocation(line: 267, column: 3, scope: !2241)
!2313 = !DILocation(line: 261, column: 10, scope: !2241)
!2314 = !DILocation(line: 262, column: 15, scope: !2241)
!2315 = !DILocation(line: 263, column: 10, scope: !2241)
!2316 = !DILocation(line: 308, column: 2, scope: !2241)
!2317 = !DILocation(line: 311, column: 3, scope: !2241)
!2318 = !DILocation(line: 318, column: 11, scope: !2270)
!2319 = !DILocation(line: 319, column: 9, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !284, line: 319, column: 9)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !284, line: 319, column: 9)
!2322 = distinct !DILexicalBlock(scope: !2270, file: !284, line: 318, column: 11)
!2323 = !DILocation(line: 319, column: 9, scope: !2321)
!2324 = !DILocation(line: 0, scope: !320, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 357, column: 26, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !284, line: 335, column: 11)
!2327 = distinct !DILexicalBlock(scope: !2269, file: !284, line: 334, column: 13)
!2328 = !DILocation(line: 199, column: 29, scope: !320, inlinedAt: !2325)
!2329 = !DILocation(line: 201, column: 19, scope: !2330, inlinedAt: !2325)
!2330 = distinct !DILexicalBlock(scope: !320, file: !284, line: 201, column: 7)
!2331 = !DILocation(line: 201, column: 7, scope: !320, inlinedAt: !2325)
!2332 = !DILocation(line: 229, column: 3, scope: !320, inlinedAt: !2325)
!2333 = !DILocation(line: 230, column: 3, scope: !320, inlinedAt: !2325)
!2334 = !DILocation(line: 230, column: 13, scope: !320, inlinedAt: !2325)
!2335 = !DILocalVariable(name: "ps", arg: 1, scope: !2336, file: !2094, line: 1135, type: !2339)
!2336 = distinct !DISubprogram(name: "mbszero", scope: !2094, file: !2094, line: 1135, type: !2337, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2340)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2340 = !{!2335}
!2341 = !DILocation(line: 0, scope: !2336, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 230, column: 18, scope: !320, inlinedAt: !2325)
!2343 = !DILocalVariable(name: "__dest", arg: 1, scope: !2344, file: !874, line: 57, type: !57)
!2344 = distinct !DISubprogram(name: "memset", scope: !874, file: !874, line: 57, type: !2103, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2345)
!2345 = !{!2343, !2346, !2347}
!2346 = !DILocalVariable(name: "__ch", arg: 2, scope: !2344, file: !874, line: 57, type: !58)
!2347 = !DILocalVariable(name: "__len", arg: 3, scope: !2344, file: !874, line: 57, type: !60)
!2348 = !DILocation(line: 0, scope: !2344, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 1137, column: 3, scope: !2336, inlinedAt: !2342)
!2350 = !DILocation(line: 59, column: 10, scope: !2344, inlinedAt: !2349)
!2351 = !DILocation(line: 231, column: 7, scope: !2352, inlinedAt: !2325)
!2352 = distinct !DILexicalBlock(scope: !320, file: !284, line: 231, column: 7)
!2353 = !DILocation(line: 231, column: 40, scope: !2352, inlinedAt: !2325)
!2354 = !DILocation(line: 231, column: 45, scope: !2352, inlinedAt: !2325)
!2355 = !DILocation(line: 235, column: 1, scope: !320, inlinedAt: !2325)
!2356 = !DILocation(line: 0, scope: !320, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 358, column: 27, scope: !2326)
!2358 = !DILocation(line: 199, column: 29, scope: !320, inlinedAt: !2357)
!2359 = !DILocation(line: 201, column: 19, scope: !2330, inlinedAt: !2357)
!2360 = !DILocation(line: 201, column: 7, scope: !320, inlinedAt: !2357)
!2361 = !DILocation(line: 229, column: 3, scope: !320, inlinedAt: !2357)
!2362 = !DILocation(line: 230, column: 3, scope: !320, inlinedAt: !2357)
!2363 = !DILocation(line: 230, column: 13, scope: !320, inlinedAt: !2357)
!2364 = !DILocation(line: 0, scope: !2336, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 230, column: 18, scope: !320, inlinedAt: !2357)
!2366 = !DILocation(line: 0, scope: !2344, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 1137, column: 3, scope: !2336, inlinedAt: !2365)
!2368 = !DILocation(line: 59, column: 10, scope: !2344, inlinedAt: !2367)
!2369 = !DILocation(line: 231, column: 7, scope: !2352, inlinedAt: !2357)
!2370 = !DILocation(line: 231, column: 40, scope: !2352, inlinedAt: !2357)
!2371 = !DILocation(line: 231, column: 45, scope: !2352, inlinedAt: !2357)
!2372 = !DILocation(line: 235, column: 1, scope: !320, inlinedAt: !2357)
!2373 = !DILocation(line: 360, column: 13, scope: !2269)
!2374 = !DILocation(line: 0, scope: !2267)
!2375 = !DILocation(line: 361, column: 45, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2267, file: !284, line: 361, column: 11)
!2377 = !DILocation(line: 361, column: 11, scope: !2267)
!2378 = !DILocation(line: 362, column: 13, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !284, line: 362, column: 13)
!2380 = distinct !DILexicalBlock(scope: !2376, file: !284, line: 362, column: 13)
!2381 = !DILocation(line: 362, column: 13, scope: !2380)
!2382 = !DILocation(line: 361, column: 52, scope: !2376)
!2383 = distinct !{!2383, !2377, !2384, !536}
!2384 = !DILocation(line: 362, column: 13, scope: !2267)
!2385 = !DILocation(line: 260, column: 10, scope: !2241)
!2386 = !DILocation(line: 365, column: 28, scope: !2269)
!2387 = !DILocation(line: 367, column: 7, scope: !2270)
!2388 = !DILocation(line: 370, column: 7, scope: !2270)
!2389 = !DILocation(line: 376, column: 11, scope: !2270)
!2390 = !DILocation(line: 381, column: 11, scope: !2270)
!2391 = !DILocation(line: 382, column: 9, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !284, line: 382, column: 9)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !284, line: 382, column: 9)
!2394 = distinct !DILexicalBlock(scope: !2270, file: !284, line: 381, column: 11)
!2395 = !DILocation(line: 382, column: 9, scope: !2393)
!2396 = !DILocation(line: 389, column: 7, scope: !2270)
!2397 = !DILocation(line: 392, column: 7, scope: !2270)
!2398 = !DILocation(line: 0, scope: !2272)
!2399 = !DILocation(line: 395, column: 8, scope: !2272)
!2400 = !DILocation(line: 395, column: 34, scope: !2275)
!2401 = !DILocation(line: 395, column: 26, scope: !2275)
!2402 = !DILocation(line: 395, column: 48, scope: !2275)
!2403 = !DILocation(line: 395, column: 55, scope: !2275)
!2404 = !DILocation(line: 395, column: 3, scope: !2272)
!2405 = !DILocation(line: 395, column: 67, scope: !2275)
!2406 = !DILocation(line: 0, scope: !2274)
!2407 = !DILocation(line: 402, column: 11, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2274, file: !284, line: 401, column: 11)
!2409 = !DILocation(line: 404, column: 17, scope: !2408)
!2410 = !DILocation(line: 405, column: 39, scope: !2408)
!2411 = !DILocation(line: 409, column: 32, scope: !2408)
!2412 = !DILocation(line: 405, column: 19, scope: !2408)
!2413 = !DILocation(line: 405, column: 15, scope: !2408)
!2414 = !DILocation(line: 410, column: 11, scope: !2408)
!2415 = !DILocation(line: 410, column: 25, scope: !2408)
!2416 = !DILocalVariable(name: "__s1", arg: 1, scope: !2417, file: !520, line: 974, type: !687)
!2417 = distinct !DISubprogram(name: "memeq", scope: !520, file: !520, line: 974, type: !2065, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2418)
!2418 = !{!2416, !2419, !2420}
!2419 = !DILocalVariable(name: "__s2", arg: 2, scope: !2417, file: !520, line: 974, type: !687)
!2420 = !DILocalVariable(name: "__n", arg: 3, scope: !2417, file: !520, line: 974, type: !60)
!2421 = !DILocation(line: 0, scope: !2417, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 410, column: 14, scope: !2408)
!2423 = !DILocation(line: 976, column: 11, scope: !2417, inlinedAt: !2422)
!2424 = !DILocation(line: 976, column: 10, scope: !2417, inlinedAt: !2422)
!2425 = !DILocation(line: 401, column: 11, scope: !2274)
!2426 = !DILocation(line: 417, column: 25, scope: !2274)
!2427 = !DILocation(line: 418, column: 7, scope: !2274)
!2428 = !DILocation(line: 421, column: 15, scope: !2281)
!2429 = !DILocation(line: 423, column: 15, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !284, line: 423, column: 15)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !284, line: 422, column: 13)
!2432 = distinct !DILexicalBlock(scope: !2281, file: !284, line: 421, column: 15)
!2433 = !DILocation(line: 423, column: 15, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2430, file: !284, line: 423, column: 15)
!2435 = !DILocation(line: 423, column: 15, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !284, line: 423, column: 15)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !284, line: 423, column: 15)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !284, line: 423, column: 15)
!2439 = !DILocation(line: 423, column: 15, scope: !2437)
!2440 = !DILocation(line: 423, column: 15, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !284, line: 423, column: 15)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !284, line: 423, column: 15)
!2443 = !DILocation(line: 423, column: 15, scope: !2442)
!2444 = !DILocation(line: 423, column: 15, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !284, line: 423, column: 15)
!2446 = distinct !DILexicalBlock(scope: !2438, file: !284, line: 423, column: 15)
!2447 = !DILocation(line: 423, column: 15, scope: !2446)
!2448 = !DILocation(line: 423, column: 15, scope: !2438)
!2449 = !DILocation(line: 423, column: 15, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !284, line: 423, column: 15)
!2451 = distinct !DILexicalBlock(scope: !2430, file: !284, line: 423, column: 15)
!2452 = !DILocation(line: 423, column: 15, scope: !2451)
!2453 = !DILocation(line: 431, column: 19, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2431, file: !284, line: 430, column: 19)
!2455 = !DILocation(line: 431, column: 24, scope: !2454)
!2456 = !DILocation(line: 431, column: 28, scope: !2454)
!2457 = !DILocation(line: 431, column: 38, scope: !2454)
!2458 = !DILocation(line: 431, column: 48, scope: !2454)
!2459 = !DILocation(line: 431, column: 59, scope: !2454)
!2460 = !DILocation(line: 433, column: 19, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !284, line: 433, column: 19)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !284, line: 433, column: 19)
!2463 = distinct !DILexicalBlock(scope: !2454, file: !284, line: 432, column: 17)
!2464 = !DILocation(line: 433, column: 19, scope: !2462)
!2465 = !DILocation(line: 434, column: 19, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !284, line: 434, column: 19)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !284, line: 434, column: 19)
!2468 = !DILocation(line: 434, column: 19, scope: !2467)
!2469 = !DILocation(line: 435, column: 17, scope: !2463)
!2470 = !DILocation(line: 442, column: 20, scope: !2432)
!2471 = !DILocation(line: 447, column: 11, scope: !2281)
!2472 = !DILocation(line: 450, column: 19, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2281, file: !284, line: 448, column: 13)
!2474 = !DILocation(line: 456, column: 19, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2473, file: !284, line: 455, column: 19)
!2476 = !DILocation(line: 456, column: 24, scope: !2475)
!2477 = !DILocation(line: 456, column: 28, scope: !2475)
!2478 = !DILocation(line: 456, column: 38, scope: !2475)
!2479 = !DILocation(line: 456, column: 47, scope: !2475)
!2480 = !DILocation(line: 456, column: 41, scope: !2475)
!2481 = !DILocation(line: 456, column: 52, scope: !2475)
!2482 = !DILocation(line: 455, column: 19, scope: !2473)
!2483 = !DILocation(line: 457, column: 25, scope: !2475)
!2484 = !DILocation(line: 457, column: 17, scope: !2475)
!2485 = !DILocation(line: 464, column: 25, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2475, file: !284, line: 458, column: 19)
!2487 = !DILocation(line: 468, column: 21, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !284, line: 468, column: 21)
!2489 = distinct !DILexicalBlock(scope: !2486, file: !284, line: 468, column: 21)
!2490 = !DILocation(line: 468, column: 21, scope: !2489)
!2491 = !DILocation(line: 469, column: 21, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !284, line: 469, column: 21)
!2493 = distinct !DILexicalBlock(scope: !2486, file: !284, line: 469, column: 21)
!2494 = !DILocation(line: 469, column: 21, scope: !2493)
!2495 = !DILocation(line: 470, column: 21, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !284, line: 470, column: 21)
!2497 = distinct !DILexicalBlock(scope: !2486, file: !284, line: 470, column: 21)
!2498 = !DILocation(line: 470, column: 21, scope: !2497)
!2499 = !DILocation(line: 471, column: 21, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !284, line: 471, column: 21)
!2501 = distinct !DILexicalBlock(scope: !2486, file: !284, line: 471, column: 21)
!2502 = !DILocation(line: 471, column: 21, scope: !2501)
!2503 = !DILocation(line: 472, column: 21, scope: !2486)
!2504 = !DILocation(line: 482, column: 33, scope: !2304)
!2505 = !DILocation(line: 483, column: 33, scope: !2304)
!2506 = !DILocation(line: 485, column: 33, scope: !2304)
!2507 = !DILocation(line: 486, column: 33, scope: !2304)
!2508 = !DILocation(line: 487, column: 33, scope: !2304)
!2509 = !DILocation(line: 490, column: 17, scope: !2304)
!2510 = !DILocation(line: 492, column: 21, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !284, line: 491, column: 15)
!2512 = distinct !DILexicalBlock(scope: !2304, file: !284, line: 490, column: 17)
!2513 = !DILocation(line: 499, column: 35, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2304, file: !284, line: 499, column: 17)
!2515 = !DILocation(line: 499, column: 57, scope: !2514)
!2516 = !DILocation(line: 0, scope: !2304)
!2517 = !DILocation(line: 502, column: 11, scope: !2304)
!2518 = !DILocation(line: 504, column: 17, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2304, file: !284, line: 503, column: 17)
!2520 = !DILocation(line: 507, column: 11, scope: !2304)
!2521 = !DILocation(line: 508, column: 17, scope: !2304)
!2522 = !DILocation(line: 517, column: 15, scope: !2281)
!2523 = !DILocation(line: 517, column: 40, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2281, file: !284, line: 517, column: 15)
!2525 = !DILocation(line: 517, column: 47, scope: !2524)
!2526 = !DILocation(line: 517, column: 18, scope: !2524)
!2527 = !DILocation(line: 521, column: 17, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2281, file: !284, line: 521, column: 15)
!2529 = !DILocation(line: 521, column: 15, scope: !2281)
!2530 = !DILocation(line: 525, column: 11, scope: !2281)
!2531 = !DILocation(line: 537, column: 15, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2281, file: !284, line: 536, column: 15)
!2533 = !DILocation(line: 536, column: 15, scope: !2281)
!2534 = !DILocation(line: 544, column: 15, scope: !2281)
!2535 = !DILocation(line: 546, column: 19, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !284, line: 545, column: 13)
!2537 = distinct !DILexicalBlock(scope: !2281, file: !284, line: 544, column: 15)
!2538 = !DILocation(line: 549, column: 19, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2536, file: !284, line: 549, column: 19)
!2540 = !DILocation(line: 549, column: 30, scope: !2539)
!2541 = !DILocation(line: 558, column: 15, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !284, line: 558, column: 15)
!2543 = distinct !DILexicalBlock(scope: !2536, file: !284, line: 558, column: 15)
!2544 = !DILocation(line: 558, column: 15, scope: !2543)
!2545 = !DILocation(line: 559, column: 15, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !284, line: 559, column: 15)
!2547 = distinct !DILexicalBlock(scope: !2536, file: !284, line: 559, column: 15)
!2548 = !DILocation(line: 559, column: 15, scope: !2547)
!2549 = !DILocation(line: 560, column: 15, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !284, line: 560, column: 15)
!2551 = distinct !DILexicalBlock(scope: !2536, file: !284, line: 560, column: 15)
!2552 = !DILocation(line: 560, column: 15, scope: !2551)
!2553 = !DILocation(line: 562, column: 13, scope: !2536)
!2554 = !DILocation(line: 602, column: 17, scope: !2280)
!2555 = !DILocation(line: 0, scope: !2280)
!2556 = !DILocation(line: 605, column: 29, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2285, file: !284, line: 603, column: 15)
!2558 = !DILocation(line: 605, column: 41, scope: !2557)
!2559 = !DILocation(line: 670, column: 23, scope: !2301)
!2560 = !DILocation(line: 609, column: 17, scope: !2284)
!2561 = !DILocation(line: 609, column: 27, scope: !2284)
!2562 = !DILocation(line: 0, scope: !2336, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 609, column: 32, scope: !2284)
!2564 = !DILocation(line: 0, scope: !2344, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 1137, column: 3, scope: !2336, inlinedAt: !2563)
!2566 = !DILocation(line: 59, column: 10, scope: !2344, inlinedAt: !2565)
!2567 = !DILocation(line: 613, column: 29, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2284, file: !284, line: 613, column: 21)
!2569 = !DILocation(line: 613, column: 21, scope: !2284)
!2570 = !DILocation(line: 614, column: 29, scope: !2568)
!2571 = !DILocation(line: 614, column: 19, scope: !2568)
!2572 = !DILocation(line: 618, column: 21, scope: !2287)
!2573 = !DILocation(line: 620, column: 54, scope: !2287)
!2574 = !DILocation(line: 0, scope: !2287)
!2575 = !DILocation(line: 619, column: 36, scope: !2287)
!2576 = !DILocation(line: 621, column: 25, scope: !2287)
!2577 = !DILocation(line: 631, column: 38, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2296, file: !284, line: 629, column: 23)
!2579 = !DILocation(line: 631, column: 48, scope: !2578)
!2580 = !DILocation(line: 665, column: 19, scope: !2288)
!2581 = !DILocation(line: 666, column: 15, scope: !2285)
!2582 = !DILocation(line: 626, column: 25, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2297, file: !284, line: 624, column: 23)
!2584 = !DILocation(line: 631, column: 51, scope: !2578)
!2585 = !DILocation(line: 631, column: 25, scope: !2578)
!2586 = !DILocation(line: 632, column: 28, scope: !2578)
!2587 = !DILocation(line: 631, column: 34, scope: !2578)
!2588 = distinct !{!2588, !2585, !2586, !536}
!2589 = !DILocation(line: 646, column: 29, scope: !2294)
!2590 = !DILocation(line: 0, scope: !2292)
!2591 = !DILocation(line: 649, column: 49, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2292, file: !284, line: 648, column: 29)
!2593 = !DILocation(line: 649, column: 39, scope: !2592)
!2594 = !DILocation(line: 649, column: 31, scope: !2592)
!2595 = !DILocation(line: 648, column: 60, scope: !2592)
!2596 = !DILocation(line: 648, column: 50, scope: !2592)
!2597 = !DILocation(line: 648, column: 29, scope: !2292)
!2598 = distinct !{!2598, !2597, !2599, !536}
!2599 = !DILocation(line: 654, column: 33, scope: !2292)
!2600 = !DILocation(line: 657, column: 43, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2295, file: !284, line: 657, column: 29)
!2602 = !DILocalVariable(name: "wc", arg: 1, scope: !2603, file: !2604, line: 865, type: !2607)
!2603 = distinct !DISubprogram(name: "c32isprint", scope: !2604, file: !2604, line: 865, type: !2605, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2609)
!2604 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!58, !2607}
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2608, line: 20, baseType: !7)
!2608 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2609 = !{!2602}
!2610 = !DILocation(line: 0, scope: !2603, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 657, column: 31, scope: !2601)
!2612 = !DILocation(line: 871, column: 10, scope: !2603, inlinedAt: !2611)
!2613 = !DILocation(line: 657, column: 31, scope: !2601)
!2614 = !DILocation(line: 664, column: 23, scope: !2287)
!2615 = !DILocation(line: 753, column: 2, scope: !2241)
!2616 = !DILocation(line: 756, column: 51, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2241, file: !284, line: 756, column: 7)
!2618 = !DILocation(line: 670, column: 19, scope: !2301)
!2619 = !DILocation(line: 670, column: 45, scope: !2301)
!2620 = !DILocation(line: 674, column: 33, scope: !2300)
!2621 = !DILocation(line: 0, scope: !2300)
!2622 = !DILocation(line: 676, column: 17, scope: !2300)
!2623 = !DILocation(line: 398, column: 12, scope: !2274)
!2624 = !DILocation(line: 678, column: 43, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !284, line: 678, column: 25)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !284, line: 677, column: 19)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !284, line: 676, column: 17)
!2628 = distinct !DILexicalBlock(scope: !2300, file: !284, line: 676, column: 17)
!2629 = !DILocation(line: 680, column: 25, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !284, line: 680, column: 25)
!2631 = distinct !DILexicalBlock(scope: !2625, file: !284, line: 679, column: 23)
!2632 = !DILocation(line: 680, column: 25, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2630, file: !284, line: 680, column: 25)
!2634 = !DILocation(line: 680, column: 25, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !284, line: 680, column: 25)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !284, line: 680, column: 25)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !284, line: 680, column: 25)
!2638 = !DILocation(line: 680, column: 25, scope: !2636)
!2639 = !DILocation(line: 680, column: 25, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !284, line: 680, column: 25)
!2641 = distinct !DILexicalBlock(scope: !2637, file: !284, line: 680, column: 25)
!2642 = !DILocation(line: 680, column: 25, scope: !2641)
!2643 = !DILocation(line: 680, column: 25, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !284, line: 680, column: 25)
!2645 = distinct !DILexicalBlock(scope: !2637, file: !284, line: 680, column: 25)
!2646 = !DILocation(line: 680, column: 25, scope: !2645)
!2647 = !DILocation(line: 680, column: 25, scope: !2637)
!2648 = !DILocation(line: 680, column: 25, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !284, line: 680, column: 25)
!2650 = distinct !DILexicalBlock(scope: !2630, file: !284, line: 680, column: 25)
!2651 = !DILocation(line: 680, column: 25, scope: !2650)
!2652 = !DILocation(line: 681, column: 25, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !284, line: 681, column: 25)
!2654 = distinct !DILexicalBlock(scope: !2631, file: !284, line: 681, column: 25)
!2655 = !DILocation(line: 681, column: 25, scope: !2654)
!2656 = !DILocation(line: 682, column: 25, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !284, line: 682, column: 25)
!2658 = distinct !DILexicalBlock(scope: !2631, file: !284, line: 682, column: 25)
!2659 = !DILocation(line: 682, column: 25, scope: !2658)
!2660 = !DILocation(line: 683, column: 38, scope: !2631)
!2661 = !DILocation(line: 683, column: 33, scope: !2631)
!2662 = !DILocation(line: 684, column: 23, scope: !2631)
!2663 = !DILocation(line: 685, column: 30, scope: !2625)
!2664 = !DILocation(line: 687, column: 25, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !284, line: 687, column: 25)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !284, line: 687, column: 25)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !284, line: 686, column: 23)
!2668 = distinct !DILexicalBlock(scope: !2625, file: !284, line: 685, column: 30)
!2669 = !DILocation(line: 687, column: 25, scope: !2666)
!2670 = !DILocation(line: 689, column: 23, scope: !2667)
!2671 = !DILocation(line: 690, column: 35, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2626, file: !284, line: 690, column: 25)
!2673 = !DILocation(line: 690, column: 30, scope: !2672)
!2674 = !DILocation(line: 690, column: 25, scope: !2626)
!2675 = !DILocation(line: 692, column: 21, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !284, line: 692, column: 21)
!2677 = distinct !DILexicalBlock(scope: !2626, file: !284, line: 692, column: 21)
!2678 = !DILocation(line: 692, column: 21, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !284, line: 692, column: 21)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !284, line: 692, column: 21)
!2681 = distinct !DILexicalBlock(scope: !2676, file: !284, line: 692, column: 21)
!2682 = !DILocation(line: 692, column: 21, scope: !2680)
!2683 = !DILocation(line: 692, column: 21, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !284, line: 692, column: 21)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !284, line: 692, column: 21)
!2686 = !DILocation(line: 692, column: 21, scope: !2685)
!2687 = !DILocation(line: 692, column: 21, scope: !2681)
!2688 = !DILocation(line: 0, scope: !2626)
!2689 = !DILocation(line: 693, column: 21, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !284, line: 693, column: 21)
!2691 = distinct !DILexicalBlock(scope: !2626, file: !284, line: 693, column: 21)
!2692 = !DILocation(line: 693, column: 21, scope: !2691)
!2693 = !DILocation(line: 694, column: 25, scope: !2626)
!2694 = !DILocation(line: 676, column: 17, scope: !2627)
!2695 = distinct !{!2695, !2696, !2697}
!2696 = !DILocation(line: 676, column: 17, scope: !2628)
!2697 = !DILocation(line: 695, column: 19, scope: !2628)
!2698 = !DILocation(line: 409, column: 30, scope: !2408)
!2699 = !DILocation(line: 702, column: 34, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2274, file: !284, line: 702, column: 11)
!2701 = !DILocation(line: 704, column: 14, scope: !2700)
!2702 = !DILocation(line: 705, column: 14, scope: !2700)
!2703 = !DILocation(line: 705, column: 35, scope: !2700)
!2704 = !DILocation(line: 705, column: 17, scope: !2700)
!2705 = !DILocation(line: 705, column: 47, scope: !2700)
!2706 = !DILocation(line: 705, column: 65, scope: !2700)
!2707 = !DILocation(line: 706, column: 11, scope: !2700)
!2708 = !DILocation(line: 702, column: 11, scope: !2274)
!2709 = !DILocation(line: 395, column: 15, scope: !2272)
!2710 = !DILocation(line: 709, column: 5, scope: !2274)
!2711 = !DILocation(line: 710, column: 7, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2274, file: !284, line: 710, column: 7)
!2713 = !DILocation(line: 710, column: 7, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2712, file: !284, line: 710, column: 7)
!2715 = !DILocation(line: 710, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !284, line: 710, column: 7)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !284, line: 710, column: 7)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !284, line: 710, column: 7)
!2719 = !DILocation(line: 710, column: 7, scope: !2717)
!2720 = !DILocation(line: 710, column: 7, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !284, line: 710, column: 7)
!2722 = distinct !DILexicalBlock(scope: !2718, file: !284, line: 710, column: 7)
!2723 = !DILocation(line: 710, column: 7, scope: !2722)
!2724 = !DILocation(line: 710, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !284, line: 710, column: 7)
!2726 = distinct !DILexicalBlock(scope: !2718, file: !284, line: 710, column: 7)
!2727 = !DILocation(line: 710, column: 7, scope: !2726)
!2728 = !DILocation(line: 710, column: 7, scope: !2718)
!2729 = !DILocation(line: 710, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !284, line: 710, column: 7)
!2731 = distinct !DILexicalBlock(scope: !2712, file: !284, line: 710, column: 7)
!2732 = !DILocation(line: 710, column: 7, scope: !2731)
!2733 = !DILocation(line: 712, column: 5, scope: !2274)
!2734 = !DILocation(line: 713, column: 7, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !284, line: 713, column: 7)
!2736 = distinct !DILexicalBlock(scope: !2274, file: !284, line: 713, column: 7)
!2737 = !DILocation(line: 417, column: 21, scope: !2274)
!2738 = !DILocation(line: 713, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !284, line: 713, column: 7)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !284, line: 713, column: 7)
!2741 = distinct !DILexicalBlock(scope: !2735, file: !284, line: 713, column: 7)
!2742 = !DILocation(line: 713, column: 7, scope: !2740)
!2743 = !DILocation(line: 713, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !284, line: 713, column: 7)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !284, line: 713, column: 7)
!2746 = !DILocation(line: 713, column: 7, scope: !2745)
!2747 = !DILocation(line: 713, column: 7, scope: !2741)
!2748 = !DILocation(line: 714, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !284, line: 714, column: 7)
!2750 = distinct !DILexicalBlock(scope: !2274, file: !284, line: 714, column: 7)
!2751 = !DILocation(line: 714, column: 7, scope: !2750)
!2752 = !DILocation(line: 716, column: 11, scope: !2274)
!2753 = !DILocation(line: 718, column: 5, scope: !2275)
!2754 = !DILocation(line: 395, column: 82, scope: !2275)
!2755 = !DILocation(line: 395, column: 3, scope: !2275)
!2756 = distinct !{!2756, !2404, !2757, !536}
!2757 = !DILocation(line: 718, column: 5, scope: !2272)
!2758 = !DILocation(line: 720, column: 11, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2241, file: !284, line: 720, column: 7)
!2760 = !DILocation(line: 720, column: 16, scope: !2759)
!2761 = !DILocation(line: 728, column: 51, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2241, file: !284, line: 728, column: 7)
!2763 = !DILocation(line: 731, column: 11, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2762, file: !284, line: 730, column: 5)
!2765 = !DILocation(line: 732, column: 16, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2764, file: !284, line: 731, column: 11)
!2767 = !DILocation(line: 732, column: 9, scope: !2766)
!2768 = !DILocation(line: 736, column: 18, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !284, line: 736, column: 16)
!2770 = !DILocation(line: 736, column: 29, scope: !2769)
!2771 = !DILocation(line: 745, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2241, file: !284, line: 745, column: 7)
!2773 = !DILocation(line: 745, column: 20, scope: !2772)
!2774 = !DILocation(line: 746, column: 12, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !284, line: 746, column: 5)
!2776 = distinct !DILexicalBlock(scope: !2772, file: !284, line: 746, column: 5)
!2777 = !DILocation(line: 746, column: 5, scope: !2776)
!2778 = !DILocation(line: 747, column: 7, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !284, line: 747, column: 7)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !284, line: 747, column: 7)
!2781 = !DILocation(line: 747, column: 7, scope: !2780)
!2782 = !DILocation(line: 746, column: 39, scope: !2775)
!2783 = distinct !{!2783, !2777, !2784, !536}
!2784 = !DILocation(line: 747, column: 7, scope: !2776)
!2785 = !DILocation(line: 749, column: 11, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2241, file: !284, line: 749, column: 7)
!2787 = !DILocation(line: 749, column: 7, scope: !2241)
!2788 = !DILocation(line: 750, column: 5, scope: !2786)
!2789 = !DILocation(line: 750, column: 17, scope: !2786)
!2790 = !DILocation(line: 756, column: 21, scope: !2617)
!2791 = !DILocation(line: 760, column: 42, scope: !2241)
!2792 = !DILocation(line: 758, column: 10, scope: !2241)
!2793 = !DILocation(line: 758, column: 3, scope: !2241)
!2794 = !DILocation(line: 762, column: 1, scope: !2241)
!2795 = !DISubprogram(name: "iswprint", scope: !2796, file: !2796, line: 120, type: !2605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!2796 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2797 = distinct !DISubprogram(name: "quotearg_alloc", scope: !284, file: !284, line: 788, type: !2798, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!55, !63, !60, !2133}
!2800 = !{!2801, !2802, !2803}
!2801 = !DILocalVariable(name: "arg", arg: 1, scope: !2797, file: !284, line: 788, type: !63)
!2802 = !DILocalVariable(name: "argsize", arg: 2, scope: !2797, file: !284, line: 788, type: !60)
!2803 = !DILocalVariable(name: "o", arg: 3, scope: !2797, file: !284, line: 789, type: !2133)
!2804 = !DILocation(line: 0, scope: !2797)
!2805 = !DILocalVariable(name: "arg", arg: 1, scope: !2806, file: !284, line: 801, type: !63)
!2806 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !284, file: !284, line: 801, type: !2807, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!55, !63, !60, !77, !2133}
!2809 = !{!2805, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2810 = !DILocalVariable(name: "argsize", arg: 2, scope: !2806, file: !284, line: 801, type: !60)
!2811 = !DILocalVariable(name: "size", arg: 3, scope: !2806, file: !284, line: 801, type: !77)
!2812 = !DILocalVariable(name: "o", arg: 4, scope: !2806, file: !284, line: 802, type: !2133)
!2813 = !DILocalVariable(name: "p", scope: !2806, file: !284, line: 804, type: !2133)
!2814 = !DILocalVariable(name: "saved_errno", scope: !2806, file: !284, line: 805, type: !58)
!2815 = !DILocalVariable(name: "flags", scope: !2806, file: !284, line: 807, type: !58)
!2816 = !DILocalVariable(name: "bufsize", scope: !2806, file: !284, line: 808, type: !60)
!2817 = !DILocalVariable(name: "buf", scope: !2806, file: !284, line: 812, type: !55)
!2818 = !DILocation(line: 0, scope: !2806, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 791, column: 10, scope: !2797)
!2820 = !DILocation(line: 804, column: 37, scope: !2806, inlinedAt: !2819)
!2821 = !DILocation(line: 805, column: 21, scope: !2806, inlinedAt: !2819)
!2822 = !DILocation(line: 807, column: 18, scope: !2806, inlinedAt: !2819)
!2823 = !DILocation(line: 807, column: 24, scope: !2806, inlinedAt: !2819)
!2824 = !DILocation(line: 808, column: 72, scope: !2806, inlinedAt: !2819)
!2825 = !DILocation(line: 809, column: 53, scope: !2806, inlinedAt: !2819)
!2826 = !DILocation(line: 810, column: 49, scope: !2806, inlinedAt: !2819)
!2827 = !DILocation(line: 811, column: 49, scope: !2806, inlinedAt: !2819)
!2828 = !DILocation(line: 808, column: 20, scope: !2806, inlinedAt: !2819)
!2829 = !DILocation(line: 811, column: 62, scope: !2806, inlinedAt: !2819)
!2830 = !DILocation(line: 812, column: 15, scope: !2806, inlinedAt: !2819)
!2831 = !DILocation(line: 813, column: 60, scope: !2806, inlinedAt: !2819)
!2832 = !DILocation(line: 815, column: 32, scope: !2806, inlinedAt: !2819)
!2833 = !DILocation(line: 815, column: 47, scope: !2806, inlinedAt: !2819)
!2834 = !DILocation(line: 813, column: 3, scope: !2806, inlinedAt: !2819)
!2835 = !DILocation(line: 816, column: 9, scope: !2806, inlinedAt: !2819)
!2836 = !DILocation(line: 791, column: 3, scope: !2797)
!2837 = !DILocation(line: 0, scope: !2806)
!2838 = !DILocation(line: 804, column: 37, scope: !2806)
!2839 = !DILocation(line: 805, column: 21, scope: !2806)
!2840 = !DILocation(line: 807, column: 18, scope: !2806)
!2841 = !DILocation(line: 807, column: 27, scope: !2806)
!2842 = !DILocation(line: 807, column: 24, scope: !2806)
!2843 = !DILocation(line: 808, column: 72, scope: !2806)
!2844 = !DILocation(line: 809, column: 53, scope: !2806)
!2845 = !DILocation(line: 810, column: 49, scope: !2806)
!2846 = !DILocation(line: 811, column: 49, scope: !2806)
!2847 = !DILocation(line: 808, column: 20, scope: !2806)
!2848 = !DILocation(line: 811, column: 62, scope: !2806)
!2849 = !DILocation(line: 812, column: 15, scope: !2806)
!2850 = !DILocation(line: 813, column: 60, scope: !2806)
!2851 = !DILocation(line: 815, column: 32, scope: !2806)
!2852 = !DILocation(line: 815, column: 47, scope: !2806)
!2853 = !DILocation(line: 813, column: 3, scope: !2806)
!2854 = !DILocation(line: 816, column: 9, scope: !2806)
!2855 = !DILocation(line: 817, column: 7, scope: !2806)
!2856 = !DILocation(line: 818, column: 11, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2806, file: !284, line: 817, column: 7)
!2858 = !DILocation(line: 818, column: 5, scope: !2857)
!2859 = !DILocation(line: 819, column: 3, scope: !2806)
!2860 = distinct !DISubprogram(name: "quotearg_free", scope: !284, file: !284, line: 837, type: !237, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2861)
!2861 = !{!2862, !2863}
!2862 = !DILocalVariable(name: "sv", scope: !2860, file: !284, line: 839, type: !343)
!2863 = !DILocalVariable(name: "i", scope: !2864, file: !284, line: 840, type: !58)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !284, line: 840, column: 3)
!2865 = !DILocation(line: 839, column: 24, scope: !2860)
!2866 = !DILocation(line: 0, scope: !2860)
!2867 = !DILocation(line: 0, scope: !2864)
!2868 = !DILocation(line: 840, column: 21, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2864, file: !284, line: 840, column: 3)
!2870 = !DILocation(line: 840, column: 3, scope: !2864)
!2871 = !DILocation(line: 842, column: 13, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2860, file: !284, line: 842, column: 7)
!2873 = !{!2874, !475, i64 8}
!2874 = !{!"slotvec", !765, i64 0, !475, i64 8}
!2875 = !DILocation(line: 842, column: 17, scope: !2872)
!2876 = !DILocation(line: 842, column: 7, scope: !2860)
!2877 = !DILocation(line: 841, column: 17, scope: !2869)
!2878 = !DILocation(line: 841, column: 5, scope: !2869)
!2879 = !DILocation(line: 840, column: 32, scope: !2869)
!2880 = distinct !{!2880, !2870, !2881, !536}
!2881 = !DILocation(line: 841, column: 20, scope: !2864)
!2882 = !DILocation(line: 844, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2872, file: !284, line: 843, column: 5)
!2884 = !DILocation(line: 845, column: 21, scope: !2883)
!2885 = !{!2874, !765, i64 0}
!2886 = !DILocation(line: 846, column: 20, scope: !2883)
!2887 = !DILocation(line: 847, column: 5, scope: !2883)
!2888 = !DILocation(line: 848, column: 10, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2860, file: !284, line: 848, column: 7)
!2890 = !DILocation(line: 848, column: 7, scope: !2860)
!2891 = !DILocation(line: 850, column: 13, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !284, line: 849, column: 5)
!2893 = !DILocation(line: 850, column: 7, scope: !2892)
!2894 = !DILocation(line: 851, column: 15, scope: !2892)
!2895 = !DILocation(line: 852, column: 5, scope: !2892)
!2896 = !DILocation(line: 853, column: 10, scope: !2860)
!2897 = !DILocation(line: 854, column: 1, scope: !2860)
!2898 = distinct !DISubprogram(name: "quotearg_n", scope: !284, file: !284, line: 919, type: !677, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2899)
!2899 = !{!2900, !2901}
!2900 = !DILocalVariable(name: "n", arg: 1, scope: !2898, file: !284, line: 919, type: !58)
!2901 = !DILocalVariable(name: "arg", arg: 2, scope: !2898, file: !284, line: 919, type: !63)
!2902 = !DILocation(line: 0, scope: !2898)
!2903 = !DILocation(line: 921, column: 10, scope: !2898)
!2904 = !DILocation(line: 921, column: 3, scope: !2898)
!2905 = distinct !DISubprogram(name: "quotearg_n_options", scope: !284, file: !284, line: 866, type: !2906, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!55, !58, !63, !60, !2133}
!2908 = !{!2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2919, !2920, !2922, !2923, !2924}
!2909 = !DILocalVariable(name: "n", arg: 1, scope: !2905, file: !284, line: 866, type: !58)
!2910 = !DILocalVariable(name: "arg", arg: 2, scope: !2905, file: !284, line: 866, type: !63)
!2911 = !DILocalVariable(name: "argsize", arg: 3, scope: !2905, file: !284, line: 866, type: !60)
!2912 = !DILocalVariable(name: "options", arg: 4, scope: !2905, file: !284, line: 867, type: !2133)
!2913 = !DILocalVariable(name: "saved_errno", scope: !2905, file: !284, line: 869, type: !58)
!2914 = !DILocalVariable(name: "sv", scope: !2905, file: !284, line: 871, type: !343)
!2915 = !DILocalVariable(name: "nslots_max", scope: !2905, file: !284, line: 873, type: !58)
!2916 = !DILocalVariable(name: "preallocated", scope: !2917, file: !284, line: 879, type: !70)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !284, line: 878, column: 5)
!2918 = distinct !DILexicalBlock(scope: !2905, file: !284, line: 877, column: 7)
!2919 = !DILocalVariable(name: "new_nslots", scope: !2917, file: !284, line: 880, type: !168)
!2920 = !DILocalVariable(name: "size", scope: !2921, file: !284, line: 891, type: !60)
!2921 = distinct !DILexicalBlock(scope: !2905, file: !284, line: 890, column: 3)
!2922 = !DILocalVariable(name: "val", scope: !2921, file: !284, line: 892, type: !55)
!2923 = !DILocalVariable(name: "flags", scope: !2921, file: !284, line: 894, type: !58)
!2924 = !DILocalVariable(name: "qsize", scope: !2921, file: !284, line: 895, type: !60)
!2925 = !DILocation(line: 0, scope: !2905)
!2926 = !DILocation(line: 869, column: 21, scope: !2905)
!2927 = !DILocation(line: 871, column: 24, scope: !2905)
!2928 = !DILocation(line: 874, column: 17, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2905, file: !284, line: 874, column: 7)
!2930 = !DILocation(line: 875, column: 5, scope: !2929)
!2931 = !DILocation(line: 877, column: 7, scope: !2918)
!2932 = !DILocation(line: 877, column: 14, scope: !2918)
!2933 = !DILocation(line: 877, column: 7, scope: !2905)
!2934 = !DILocation(line: 879, column: 31, scope: !2917)
!2935 = !DILocation(line: 0, scope: !2917)
!2936 = !DILocation(line: 880, column: 7, scope: !2917)
!2937 = !DILocation(line: 880, column: 26, scope: !2917)
!2938 = !DILocation(line: 880, column: 13, scope: !2917)
!2939 = !DILocation(line: 882, column: 31, scope: !2917)
!2940 = !DILocation(line: 883, column: 33, scope: !2917)
!2941 = !DILocation(line: 883, column: 42, scope: !2917)
!2942 = !DILocation(line: 883, column: 31, scope: !2917)
!2943 = !DILocation(line: 882, column: 22, scope: !2917)
!2944 = !DILocation(line: 882, column: 15, scope: !2917)
!2945 = !DILocation(line: 884, column: 11, scope: !2917)
!2946 = !DILocation(line: 885, column: 15, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2917, file: !284, line: 884, column: 11)
!2948 = !{i64 0, i64 8, !764, i64 8, i64 8, !474}
!2949 = !DILocation(line: 885, column: 9, scope: !2947)
!2950 = !DILocation(line: 886, column: 20, scope: !2917)
!2951 = !DILocation(line: 886, column: 18, scope: !2917)
!2952 = !DILocation(line: 886, column: 15, scope: !2917)
!2953 = !DILocation(line: 886, column: 32, scope: !2917)
!2954 = !DILocation(line: 886, column: 43, scope: !2917)
!2955 = !DILocation(line: 886, column: 53, scope: !2917)
!2956 = !DILocation(line: 0, scope: !2344, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 886, column: 7, scope: !2917)
!2958 = !DILocation(line: 59, column: 10, scope: !2344, inlinedAt: !2957)
!2959 = !DILocation(line: 887, column: 16, scope: !2917)
!2960 = !DILocation(line: 887, column: 14, scope: !2917)
!2961 = !DILocation(line: 888, column: 5, scope: !2918)
!2962 = !DILocation(line: 888, column: 5, scope: !2917)
!2963 = !DILocation(line: 891, column: 19, scope: !2921)
!2964 = !DILocation(line: 891, column: 25, scope: !2921)
!2965 = !DILocation(line: 0, scope: !2921)
!2966 = !DILocation(line: 892, column: 23, scope: !2921)
!2967 = !DILocation(line: 894, column: 26, scope: !2921)
!2968 = !DILocation(line: 894, column: 32, scope: !2921)
!2969 = !DILocation(line: 896, column: 55, scope: !2921)
!2970 = !DILocation(line: 897, column: 46, scope: !2921)
!2971 = !DILocation(line: 898, column: 55, scope: !2921)
!2972 = !DILocation(line: 899, column: 55, scope: !2921)
!2973 = !DILocation(line: 895, column: 20, scope: !2921)
!2974 = !DILocation(line: 901, column: 14, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2921, file: !284, line: 901, column: 9)
!2976 = !DILocation(line: 901, column: 9, scope: !2921)
!2977 = !DILocation(line: 903, column: 35, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !284, line: 902, column: 7)
!2979 = !DILocation(line: 903, column: 20, scope: !2978)
!2980 = !DILocation(line: 904, column: 17, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2978, file: !284, line: 904, column: 13)
!2982 = !DILocation(line: 904, column: 13, scope: !2978)
!2983 = !DILocation(line: 905, column: 11, scope: !2981)
!2984 = !DILocation(line: 906, column: 27, scope: !2978)
!2985 = !DILocation(line: 906, column: 19, scope: !2978)
!2986 = !DILocation(line: 907, column: 69, scope: !2978)
!2987 = !DILocation(line: 909, column: 44, scope: !2978)
!2988 = !DILocation(line: 910, column: 44, scope: !2978)
!2989 = !DILocation(line: 907, column: 9, scope: !2978)
!2990 = !DILocation(line: 911, column: 7, scope: !2978)
!2991 = !DILocation(line: 913, column: 11, scope: !2921)
!2992 = !DILocation(line: 914, column: 5, scope: !2921)
!2993 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !284, file: !284, line: 925, type: !2994, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!55, !58, !63, !60}
!2996 = !{!2997, !2998, !2999}
!2997 = !DILocalVariable(name: "n", arg: 1, scope: !2993, file: !284, line: 925, type: !58)
!2998 = !DILocalVariable(name: "arg", arg: 2, scope: !2993, file: !284, line: 925, type: !63)
!2999 = !DILocalVariable(name: "argsize", arg: 3, scope: !2993, file: !284, line: 925, type: !60)
!3000 = !DILocation(line: 0, scope: !2993)
!3001 = !DILocation(line: 927, column: 10, scope: !2993)
!3002 = !DILocation(line: 927, column: 3, scope: !2993)
!3003 = distinct !DISubprogram(name: "quotearg", scope: !284, file: !284, line: 931, type: !681, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3004)
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "arg", arg: 1, scope: !3003, file: !284, line: 931, type: !63)
!3006 = !DILocation(line: 0, scope: !3003)
!3007 = !DILocation(line: 0, scope: !2898, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 933, column: 10, scope: !3003)
!3009 = !DILocation(line: 921, column: 10, scope: !2898, inlinedAt: !3008)
!3010 = !DILocation(line: 933, column: 3, scope: !3003)
!3011 = distinct !DISubprogram(name: "quotearg_mem", scope: !284, file: !284, line: 937, type: !3012, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!55, !63, !60}
!3014 = !{!3015, !3016}
!3015 = !DILocalVariable(name: "arg", arg: 1, scope: !3011, file: !284, line: 937, type: !63)
!3016 = !DILocalVariable(name: "argsize", arg: 2, scope: !3011, file: !284, line: 937, type: !60)
!3017 = !DILocation(line: 0, scope: !3011)
!3018 = !DILocation(line: 0, scope: !2993, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 939, column: 10, scope: !3011)
!3020 = !DILocation(line: 927, column: 10, scope: !2993, inlinedAt: !3019)
!3021 = !DILocation(line: 939, column: 3, scope: !3011)
!3022 = distinct !DISubprogram(name: "quotearg_n_style", scope: !284, file: !284, line: 943, type: !3023, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!55, !58, !5, !63}
!3025 = !{!3026, !3027, !3028, !3029}
!3026 = !DILocalVariable(name: "n", arg: 1, scope: !3022, file: !284, line: 943, type: !58)
!3027 = !DILocalVariable(name: "s", arg: 2, scope: !3022, file: !284, line: 943, type: !5)
!3028 = !DILocalVariable(name: "arg", arg: 3, scope: !3022, file: !284, line: 943, type: !63)
!3029 = !DILocalVariable(name: "o", scope: !3022, file: !284, line: 945, type: !2134)
!3030 = !DILocation(line: 0, scope: !3022)
!3031 = !DILocation(line: 945, column: 3, scope: !3022)
!3032 = !DILocation(line: 945, column: 32, scope: !3022)
!3033 = !{!3034}
!3034 = distinct !{!3034, !3035, !"quoting_options_from_style: argument 0"}
!3035 = distinct !{!3035, !"quoting_options_from_style"}
!3036 = !DILocation(line: 945, column: 36, scope: !3022)
!3037 = !DILocalVariable(name: "style", arg: 1, scope: !3038, file: !284, line: 183, type: !5)
!3038 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !284, file: !284, line: 183, type: !3039, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!301, !5}
!3041 = !{!3037, !3042}
!3042 = !DILocalVariable(name: "o", scope: !3038, file: !284, line: 185, type: !301)
!3043 = !DILocation(line: 0, scope: !3038, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 945, column: 36, scope: !3022)
!3045 = !DILocation(line: 185, column: 26, scope: !3038, inlinedAt: !3044)
!3046 = !DILocation(line: 186, column: 13, scope: !3047, inlinedAt: !3044)
!3047 = distinct !DILexicalBlock(scope: !3038, file: !284, line: 186, column: 7)
!3048 = !DILocation(line: 186, column: 7, scope: !3038, inlinedAt: !3044)
!3049 = !DILocation(line: 187, column: 5, scope: !3047, inlinedAt: !3044)
!3050 = !DILocation(line: 188, column: 5, scope: !3038, inlinedAt: !3044)
!3051 = !DILocation(line: 188, column: 11, scope: !3038, inlinedAt: !3044)
!3052 = !DILocation(line: 946, column: 10, scope: !3022)
!3053 = !DILocation(line: 947, column: 1, scope: !3022)
!3054 = !DILocation(line: 946, column: 3, scope: !3022)
!3055 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !284, file: !284, line: 950, type: !3056, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!55, !58, !5, !63, !60}
!3058 = !{!3059, !3060, !3061, !3062, !3063}
!3059 = !DILocalVariable(name: "n", arg: 1, scope: !3055, file: !284, line: 950, type: !58)
!3060 = !DILocalVariable(name: "s", arg: 2, scope: !3055, file: !284, line: 950, type: !5)
!3061 = !DILocalVariable(name: "arg", arg: 3, scope: !3055, file: !284, line: 951, type: !63)
!3062 = !DILocalVariable(name: "argsize", arg: 4, scope: !3055, file: !284, line: 951, type: !60)
!3063 = !DILocalVariable(name: "o", scope: !3055, file: !284, line: 953, type: !2134)
!3064 = !DILocation(line: 0, scope: !3055)
!3065 = !DILocation(line: 953, column: 3, scope: !3055)
!3066 = !DILocation(line: 953, column: 32, scope: !3055)
!3067 = !{!3068}
!3068 = distinct !{!3068, !3069, !"quoting_options_from_style: argument 0"}
!3069 = distinct !{!3069, !"quoting_options_from_style"}
!3070 = !DILocation(line: 953, column: 36, scope: !3055)
!3071 = !DILocation(line: 0, scope: !3038, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 953, column: 36, scope: !3055)
!3073 = !DILocation(line: 185, column: 26, scope: !3038, inlinedAt: !3072)
!3074 = !DILocation(line: 186, column: 13, scope: !3047, inlinedAt: !3072)
!3075 = !DILocation(line: 186, column: 7, scope: !3038, inlinedAt: !3072)
!3076 = !DILocation(line: 187, column: 5, scope: !3047, inlinedAt: !3072)
!3077 = !DILocation(line: 188, column: 5, scope: !3038, inlinedAt: !3072)
!3078 = !DILocation(line: 188, column: 11, scope: !3038, inlinedAt: !3072)
!3079 = !DILocation(line: 954, column: 10, scope: !3055)
!3080 = !DILocation(line: 955, column: 1, scope: !3055)
!3081 = !DILocation(line: 954, column: 3, scope: !3055)
!3082 = distinct !DISubprogram(name: "quotearg_style", scope: !284, file: !284, line: 958, type: !3083, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!55, !5, !63}
!3085 = !{!3086, !3087}
!3086 = !DILocalVariable(name: "s", arg: 1, scope: !3082, file: !284, line: 958, type: !5)
!3087 = !DILocalVariable(name: "arg", arg: 2, scope: !3082, file: !284, line: 958, type: !63)
!3088 = !DILocation(line: 0, scope: !3082)
!3089 = !DILocation(line: 0, scope: !3022, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 960, column: 10, scope: !3082)
!3091 = !DILocation(line: 945, column: 3, scope: !3022, inlinedAt: !3090)
!3092 = !DILocation(line: 945, column: 32, scope: !3022, inlinedAt: !3090)
!3093 = !{!3094}
!3094 = distinct !{!3094, !3095, !"quoting_options_from_style: argument 0"}
!3095 = distinct !{!3095, !"quoting_options_from_style"}
!3096 = !DILocation(line: 945, column: 36, scope: !3022, inlinedAt: !3090)
!3097 = !DILocation(line: 0, scope: !3038, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 945, column: 36, scope: !3022, inlinedAt: !3090)
!3099 = !DILocation(line: 185, column: 26, scope: !3038, inlinedAt: !3098)
!3100 = !DILocation(line: 186, column: 13, scope: !3047, inlinedAt: !3098)
!3101 = !DILocation(line: 186, column: 7, scope: !3038, inlinedAt: !3098)
!3102 = !DILocation(line: 187, column: 5, scope: !3047, inlinedAt: !3098)
!3103 = !DILocation(line: 188, column: 5, scope: !3038, inlinedAt: !3098)
!3104 = !DILocation(line: 188, column: 11, scope: !3038, inlinedAt: !3098)
!3105 = !DILocation(line: 946, column: 10, scope: !3022, inlinedAt: !3090)
!3106 = !DILocation(line: 947, column: 1, scope: !3022, inlinedAt: !3090)
!3107 = !DILocation(line: 960, column: 3, scope: !3082)
!3108 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !284, file: !284, line: 964, type: !3109, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!55, !5, !63, !60}
!3111 = !{!3112, !3113, !3114}
!3112 = !DILocalVariable(name: "s", arg: 1, scope: !3108, file: !284, line: 964, type: !5)
!3113 = !DILocalVariable(name: "arg", arg: 2, scope: !3108, file: !284, line: 964, type: !63)
!3114 = !DILocalVariable(name: "argsize", arg: 3, scope: !3108, file: !284, line: 964, type: !60)
!3115 = !DILocation(line: 0, scope: !3108)
!3116 = !DILocation(line: 0, scope: !3055, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 966, column: 10, scope: !3108)
!3118 = !DILocation(line: 953, column: 3, scope: !3055, inlinedAt: !3117)
!3119 = !DILocation(line: 953, column: 32, scope: !3055, inlinedAt: !3117)
!3120 = !{!3121}
!3121 = distinct !{!3121, !3122, !"quoting_options_from_style: argument 0"}
!3122 = distinct !{!3122, !"quoting_options_from_style"}
!3123 = !DILocation(line: 953, column: 36, scope: !3055, inlinedAt: !3117)
!3124 = !DILocation(line: 0, scope: !3038, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 953, column: 36, scope: !3055, inlinedAt: !3117)
!3126 = !DILocation(line: 185, column: 26, scope: !3038, inlinedAt: !3125)
!3127 = !DILocation(line: 186, column: 13, scope: !3047, inlinedAt: !3125)
!3128 = !DILocation(line: 186, column: 7, scope: !3038, inlinedAt: !3125)
!3129 = !DILocation(line: 187, column: 5, scope: !3047, inlinedAt: !3125)
!3130 = !DILocation(line: 188, column: 5, scope: !3038, inlinedAt: !3125)
!3131 = !DILocation(line: 188, column: 11, scope: !3038, inlinedAt: !3125)
!3132 = !DILocation(line: 954, column: 10, scope: !3055, inlinedAt: !3117)
!3133 = !DILocation(line: 955, column: 1, scope: !3055, inlinedAt: !3117)
!3134 = !DILocation(line: 966, column: 3, scope: !3108)
!3135 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !284, file: !284, line: 970, type: !3136, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!55, !63, !60, !56}
!3138 = !{!3139, !3140, !3141, !3142}
!3139 = !DILocalVariable(name: "arg", arg: 1, scope: !3135, file: !284, line: 970, type: !63)
!3140 = !DILocalVariable(name: "argsize", arg: 2, scope: !3135, file: !284, line: 970, type: !60)
!3141 = !DILocalVariable(name: "ch", arg: 3, scope: !3135, file: !284, line: 970, type: !56)
!3142 = !DILocalVariable(name: "options", scope: !3135, file: !284, line: 972, type: !301)
!3143 = !DILocation(line: 0, scope: !3135)
!3144 = !DILocation(line: 972, column: 3, scope: !3135)
!3145 = !DILocation(line: 972, column: 26, scope: !3135)
!3146 = !DILocation(line: 973, column: 13, scope: !3135)
!3147 = !{i64 0, i64 4, !578, i64 4, i64 4, !569, i64 8, i64 32, !578, i64 40, i64 8, !474, i64 48, i64 8, !474}
!3148 = !DILocation(line: 0, scope: !2154, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 974, column: 3, scope: !3135)
!3150 = !DILocation(line: 147, column: 62, scope: !2154, inlinedAt: !3149)
!3151 = !DILocation(line: 147, column: 57, scope: !2154, inlinedAt: !3149)
!3152 = !DILocation(line: 148, column: 15, scope: !2154, inlinedAt: !3149)
!3153 = !DILocation(line: 149, column: 21, scope: !2154, inlinedAt: !3149)
!3154 = !DILocation(line: 149, column: 24, scope: !2154, inlinedAt: !3149)
!3155 = !DILocation(line: 149, column: 34, scope: !2154, inlinedAt: !3149)
!3156 = !DILocation(line: 150, column: 19, scope: !2154, inlinedAt: !3149)
!3157 = !DILocation(line: 150, column: 24, scope: !2154, inlinedAt: !3149)
!3158 = !DILocation(line: 150, column: 6, scope: !2154, inlinedAt: !3149)
!3159 = !DILocation(line: 975, column: 10, scope: !3135)
!3160 = !DILocation(line: 976, column: 1, scope: !3135)
!3161 = !DILocation(line: 975, column: 3, scope: !3135)
!3162 = distinct !DISubprogram(name: "quotearg_char", scope: !284, file: !284, line: 979, type: !3163, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!55, !63, !56}
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "arg", arg: 1, scope: !3162, file: !284, line: 979, type: !63)
!3167 = !DILocalVariable(name: "ch", arg: 2, scope: !3162, file: !284, line: 979, type: !56)
!3168 = !DILocation(line: 0, scope: !3162)
!3169 = !DILocation(line: 0, scope: !3135, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 981, column: 10, scope: !3162)
!3171 = !DILocation(line: 972, column: 3, scope: !3135, inlinedAt: !3170)
!3172 = !DILocation(line: 972, column: 26, scope: !3135, inlinedAt: !3170)
!3173 = !DILocation(line: 973, column: 13, scope: !3135, inlinedAt: !3170)
!3174 = !DILocation(line: 0, scope: !2154, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 974, column: 3, scope: !3135, inlinedAt: !3170)
!3176 = !DILocation(line: 147, column: 62, scope: !2154, inlinedAt: !3175)
!3177 = !DILocation(line: 147, column: 57, scope: !2154, inlinedAt: !3175)
!3178 = !DILocation(line: 148, column: 15, scope: !2154, inlinedAt: !3175)
!3179 = !DILocation(line: 149, column: 21, scope: !2154, inlinedAt: !3175)
!3180 = !DILocation(line: 149, column: 24, scope: !2154, inlinedAt: !3175)
!3181 = !DILocation(line: 149, column: 34, scope: !2154, inlinedAt: !3175)
!3182 = !DILocation(line: 150, column: 19, scope: !2154, inlinedAt: !3175)
!3183 = !DILocation(line: 150, column: 24, scope: !2154, inlinedAt: !3175)
!3184 = !DILocation(line: 150, column: 6, scope: !2154, inlinedAt: !3175)
!3185 = !DILocation(line: 975, column: 10, scope: !3135, inlinedAt: !3170)
!3186 = !DILocation(line: 976, column: 1, scope: !3135, inlinedAt: !3170)
!3187 = !DILocation(line: 981, column: 3, scope: !3162)
!3188 = distinct !DISubprogram(name: "quotearg_colon", scope: !284, file: !284, line: 985, type: !681, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3189)
!3189 = !{!3190}
!3190 = !DILocalVariable(name: "arg", arg: 1, scope: !3188, file: !284, line: 985, type: !63)
!3191 = !DILocation(line: 0, scope: !3188)
!3192 = !DILocation(line: 0, scope: !3162, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 987, column: 10, scope: !3188)
!3194 = !DILocation(line: 0, scope: !3135, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 981, column: 10, scope: !3162, inlinedAt: !3193)
!3196 = !DILocation(line: 972, column: 3, scope: !3135, inlinedAt: !3195)
!3197 = !DILocation(line: 972, column: 26, scope: !3135, inlinedAt: !3195)
!3198 = !DILocation(line: 973, column: 13, scope: !3135, inlinedAt: !3195)
!3199 = !DILocation(line: 0, scope: !2154, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 974, column: 3, scope: !3135, inlinedAt: !3195)
!3201 = !DILocation(line: 147, column: 57, scope: !2154, inlinedAt: !3200)
!3202 = !DILocation(line: 149, column: 21, scope: !2154, inlinedAt: !3200)
!3203 = !DILocation(line: 150, column: 6, scope: !2154, inlinedAt: !3200)
!3204 = !DILocation(line: 975, column: 10, scope: !3135, inlinedAt: !3195)
!3205 = !DILocation(line: 976, column: 1, scope: !3135, inlinedAt: !3195)
!3206 = !DILocation(line: 987, column: 3, scope: !3188)
!3207 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !284, file: !284, line: 991, type: !3012, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3208)
!3208 = !{!3209, !3210}
!3209 = !DILocalVariable(name: "arg", arg: 1, scope: !3207, file: !284, line: 991, type: !63)
!3210 = !DILocalVariable(name: "argsize", arg: 2, scope: !3207, file: !284, line: 991, type: !60)
!3211 = !DILocation(line: 0, scope: !3207)
!3212 = !DILocation(line: 0, scope: !3135, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 993, column: 10, scope: !3207)
!3214 = !DILocation(line: 972, column: 3, scope: !3135, inlinedAt: !3213)
!3215 = !DILocation(line: 972, column: 26, scope: !3135, inlinedAt: !3213)
!3216 = !DILocation(line: 973, column: 13, scope: !3135, inlinedAt: !3213)
!3217 = !DILocation(line: 0, scope: !2154, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 974, column: 3, scope: !3135, inlinedAt: !3213)
!3219 = !DILocation(line: 147, column: 57, scope: !2154, inlinedAt: !3218)
!3220 = !DILocation(line: 149, column: 21, scope: !2154, inlinedAt: !3218)
!3221 = !DILocation(line: 150, column: 6, scope: !2154, inlinedAt: !3218)
!3222 = !DILocation(line: 975, column: 10, scope: !3135, inlinedAt: !3213)
!3223 = !DILocation(line: 976, column: 1, scope: !3135, inlinedAt: !3213)
!3224 = !DILocation(line: 993, column: 3, scope: !3207)
!3225 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !284, file: !284, line: 997, type: !3023, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3226)
!3226 = !{!3227, !3228, !3229, !3230}
!3227 = !DILocalVariable(name: "n", arg: 1, scope: !3225, file: !284, line: 997, type: !58)
!3228 = !DILocalVariable(name: "s", arg: 2, scope: !3225, file: !284, line: 997, type: !5)
!3229 = !DILocalVariable(name: "arg", arg: 3, scope: !3225, file: !284, line: 997, type: !63)
!3230 = !DILocalVariable(name: "options", scope: !3225, file: !284, line: 999, type: !301)
!3231 = !DILocation(line: 0, scope: !3225)
!3232 = !DILocation(line: 999, column: 3, scope: !3225)
!3233 = !DILocation(line: 999, column: 26, scope: !3225)
!3234 = !DILocation(line: 0, scope: !3038, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 1000, column: 13, scope: !3225)
!3236 = !DILocation(line: 186, column: 13, scope: !3047, inlinedAt: !3235)
!3237 = !DILocation(line: 186, column: 7, scope: !3038, inlinedAt: !3235)
!3238 = !DILocation(line: 187, column: 5, scope: !3047, inlinedAt: !3235)
!3239 = !{!3240}
!3240 = distinct !{!3240, !3241, !"quoting_options_from_style: argument 0"}
!3241 = distinct !{!3241, !"quoting_options_from_style"}
!3242 = !DILocation(line: 1000, column: 13, scope: !3225)
!3243 = !DILocation(line: 0, scope: !2154, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 1001, column: 3, scope: !3225)
!3245 = !DILocation(line: 147, column: 57, scope: !2154, inlinedAt: !3244)
!3246 = !DILocation(line: 149, column: 21, scope: !2154, inlinedAt: !3244)
!3247 = !DILocation(line: 150, column: 6, scope: !2154, inlinedAt: !3244)
!3248 = !DILocation(line: 1002, column: 10, scope: !3225)
!3249 = !DILocation(line: 1003, column: 1, scope: !3225)
!3250 = !DILocation(line: 1002, column: 3, scope: !3225)
!3251 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !284, file: !284, line: 1006, type: !3252, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!55, !58, !63, !63, !63}
!3254 = !{!3255, !3256, !3257, !3258}
!3255 = !DILocalVariable(name: "n", arg: 1, scope: !3251, file: !284, line: 1006, type: !58)
!3256 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3251, file: !284, line: 1006, type: !63)
!3257 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3251, file: !284, line: 1007, type: !63)
!3258 = !DILocalVariable(name: "arg", arg: 4, scope: !3251, file: !284, line: 1007, type: !63)
!3259 = !DILocation(line: 0, scope: !3251)
!3260 = !DILocalVariable(name: "n", arg: 1, scope: !3261, file: !284, line: 1014, type: !58)
!3261 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !284, file: !284, line: 1014, type: !3262, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!55, !58, !63, !63, !63, !60}
!3264 = !{!3260, !3265, !3266, !3267, !3268, !3269}
!3265 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3261, file: !284, line: 1014, type: !63)
!3266 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3261, file: !284, line: 1015, type: !63)
!3267 = !DILocalVariable(name: "arg", arg: 4, scope: !3261, file: !284, line: 1016, type: !63)
!3268 = !DILocalVariable(name: "argsize", arg: 5, scope: !3261, file: !284, line: 1016, type: !60)
!3269 = !DILocalVariable(name: "o", scope: !3261, file: !284, line: 1018, type: !301)
!3270 = !DILocation(line: 0, scope: !3261, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 1009, column: 10, scope: !3251)
!3272 = !DILocation(line: 1018, column: 3, scope: !3261, inlinedAt: !3271)
!3273 = !DILocation(line: 1018, column: 26, scope: !3261, inlinedAt: !3271)
!3274 = !DILocation(line: 1018, column: 30, scope: !3261, inlinedAt: !3271)
!3275 = !DILocation(line: 0, scope: !2194, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 1019, column: 3, scope: !3261, inlinedAt: !3271)
!3277 = !DILocation(line: 174, column: 6, scope: !2194, inlinedAt: !3276)
!3278 = !DILocation(line: 174, column: 12, scope: !2194, inlinedAt: !3276)
!3279 = !DILocation(line: 175, column: 8, scope: !2208, inlinedAt: !3276)
!3280 = !DILocation(line: 175, column: 19, scope: !2208, inlinedAt: !3276)
!3281 = !DILocation(line: 176, column: 5, scope: !2208, inlinedAt: !3276)
!3282 = !DILocation(line: 177, column: 6, scope: !2194, inlinedAt: !3276)
!3283 = !DILocation(line: 177, column: 17, scope: !2194, inlinedAt: !3276)
!3284 = !DILocation(line: 178, column: 6, scope: !2194, inlinedAt: !3276)
!3285 = !DILocation(line: 178, column: 18, scope: !2194, inlinedAt: !3276)
!3286 = !DILocation(line: 1020, column: 10, scope: !3261, inlinedAt: !3271)
!3287 = !DILocation(line: 1021, column: 1, scope: !3261, inlinedAt: !3271)
!3288 = !DILocation(line: 1009, column: 3, scope: !3251)
!3289 = !DILocation(line: 0, scope: !3261)
!3290 = !DILocation(line: 1018, column: 3, scope: !3261)
!3291 = !DILocation(line: 1018, column: 26, scope: !3261)
!3292 = !DILocation(line: 1018, column: 30, scope: !3261)
!3293 = !DILocation(line: 0, scope: !2194, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 1019, column: 3, scope: !3261)
!3295 = !DILocation(line: 174, column: 6, scope: !2194, inlinedAt: !3294)
!3296 = !DILocation(line: 174, column: 12, scope: !2194, inlinedAt: !3294)
!3297 = !DILocation(line: 175, column: 8, scope: !2208, inlinedAt: !3294)
!3298 = !DILocation(line: 175, column: 19, scope: !2208, inlinedAt: !3294)
!3299 = !DILocation(line: 176, column: 5, scope: !2208, inlinedAt: !3294)
!3300 = !DILocation(line: 177, column: 6, scope: !2194, inlinedAt: !3294)
!3301 = !DILocation(line: 177, column: 17, scope: !2194, inlinedAt: !3294)
!3302 = !DILocation(line: 178, column: 6, scope: !2194, inlinedAt: !3294)
!3303 = !DILocation(line: 178, column: 18, scope: !2194, inlinedAt: !3294)
!3304 = !DILocation(line: 1020, column: 10, scope: !3261)
!3305 = !DILocation(line: 1021, column: 1, scope: !3261)
!3306 = !DILocation(line: 1020, column: 3, scope: !3261)
!3307 = distinct !DISubprogram(name: "quotearg_custom", scope: !284, file: !284, line: 1024, type: !3308, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!55, !63, !63, !63}
!3310 = !{!3311, !3312, !3313}
!3311 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3307, file: !284, line: 1024, type: !63)
!3312 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3307, file: !284, line: 1024, type: !63)
!3313 = !DILocalVariable(name: "arg", arg: 3, scope: !3307, file: !284, line: 1025, type: !63)
!3314 = !DILocation(line: 0, scope: !3307)
!3315 = !DILocation(line: 0, scope: !3251, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 1027, column: 10, scope: !3307)
!3317 = !DILocation(line: 0, scope: !3261, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 1009, column: 10, scope: !3251, inlinedAt: !3316)
!3319 = !DILocation(line: 1018, column: 3, scope: !3261, inlinedAt: !3318)
!3320 = !DILocation(line: 1018, column: 26, scope: !3261, inlinedAt: !3318)
!3321 = !DILocation(line: 1018, column: 30, scope: !3261, inlinedAt: !3318)
!3322 = !DILocation(line: 0, scope: !2194, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1019, column: 3, scope: !3261, inlinedAt: !3318)
!3324 = !DILocation(line: 174, column: 6, scope: !2194, inlinedAt: !3323)
!3325 = !DILocation(line: 174, column: 12, scope: !2194, inlinedAt: !3323)
!3326 = !DILocation(line: 175, column: 8, scope: !2208, inlinedAt: !3323)
!3327 = !DILocation(line: 175, column: 19, scope: !2208, inlinedAt: !3323)
!3328 = !DILocation(line: 176, column: 5, scope: !2208, inlinedAt: !3323)
!3329 = !DILocation(line: 177, column: 6, scope: !2194, inlinedAt: !3323)
!3330 = !DILocation(line: 177, column: 17, scope: !2194, inlinedAt: !3323)
!3331 = !DILocation(line: 178, column: 6, scope: !2194, inlinedAt: !3323)
!3332 = !DILocation(line: 178, column: 18, scope: !2194, inlinedAt: !3323)
!3333 = !DILocation(line: 1020, column: 10, scope: !3261, inlinedAt: !3318)
!3334 = !DILocation(line: 1021, column: 1, scope: !3261, inlinedAt: !3318)
!3335 = !DILocation(line: 1027, column: 3, scope: !3307)
!3336 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !284, file: !284, line: 1031, type: !3337, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!55, !63, !63, !63, !60}
!3339 = !{!3340, !3341, !3342, !3343}
!3340 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3336, file: !284, line: 1031, type: !63)
!3341 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3336, file: !284, line: 1031, type: !63)
!3342 = !DILocalVariable(name: "arg", arg: 3, scope: !3336, file: !284, line: 1032, type: !63)
!3343 = !DILocalVariable(name: "argsize", arg: 4, scope: !3336, file: !284, line: 1032, type: !60)
!3344 = !DILocation(line: 0, scope: !3336)
!3345 = !DILocation(line: 0, scope: !3261, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 1034, column: 10, scope: !3336)
!3347 = !DILocation(line: 1018, column: 3, scope: !3261, inlinedAt: !3346)
!3348 = !DILocation(line: 1018, column: 26, scope: !3261, inlinedAt: !3346)
!3349 = !DILocation(line: 1018, column: 30, scope: !3261, inlinedAt: !3346)
!3350 = !DILocation(line: 0, scope: !2194, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 1019, column: 3, scope: !3261, inlinedAt: !3346)
!3352 = !DILocation(line: 174, column: 6, scope: !2194, inlinedAt: !3351)
!3353 = !DILocation(line: 174, column: 12, scope: !2194, inlinedAt: !3351)
!3354 = !DILocation(line: 175, column: 8, scope: !2208, inlinedAt: !3351)
!3355 = !DILocation(line: 175, column: 19, scope: !2208, inlinedAt: !3351)
!3356 = !DILocation(line: 176, column: 5, scope: !2208, inlinedAt: !3351)
!3357 = !DILocation(line: 177, column: 6, scope: !2194, inlinedAt: !3351)
!3358 = !DILocation(line: 177, column: 17, scope: !2194, inlinedAt: !3351)
!3359 = !DILocation(line: 178, column: 6, scope: !2194, inlinedAt: !3351)
!3360 = !DILocation(line: 178, column: 18, scope: !2194, inlinedAt: !3351)
!3361 = !DILocation(line: 1020, column: 10, scope: !3261, inlinedAt: !3346)
!3362 = !DILocation(line: 1021, column: 1, scope: !3261, inlinedAt: !3346)
!3363 = !DILocation(line: 1034, column: 3, scope: !3336)
!3364 = distinct !DISubprogram(name: "quote_n_mem", scope: !284, file: !284, line: 1049, type: !3365, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!63, !58, !63, !60}
!3367 = !{!3368, !3369, !3370}
!3368 = !DILocalVariable(name: "n", arg: 1, scope: !3364, file: !284, line: 1049, type: !58)
!3369 = !DILocalVariable(name: "arg", arg: 2, scope: !3364, file: !284, line: 1049, type: !63)
!3370 = !DILocalVariable(name: "argsize", arg: 3, scope: !3364, file: !284, line: 1049, type: !60)
!3371 = !DILocation(line: 0, scope: !3364)
!3372 = !DILocation(line: 1051, column: 10, scope: !3364)
!3373 = !DILocation(line: 1051, column: 3, scope: !3364)
!3374 = distinct !DISubprogram(name: "quote_mem", scope: !284, file: !284, line: 1055, type: !3375, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!63, !63, !60}
!3377 = !{!3378, !3379}
!3378 = !DILocalVariable(name: "arg", arg: 1, scope: !3374, file: !284, line: 1055, type: !63)
!3379 = !DILocalVariable(name: "argsize", arg: 2, scope: !3374, file: !284, line: 1055, type: !60)
!3380 = !DILocation(line: 0, scope: !3374)
!3381 = !DILocation(line: 0, scope: !3364, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 1057, column: 10, scope: !3374)
!3383 = !DILocation(line: 1051, column: 10, scope: !3364, inlinedAt: !3382)
!3384 = !DILocation(line: 1057, column: 3, scope: !3374)
!3385 = distinct !DISubprogram(name: "quote_n", scope: !284, file: !284, line: 1061, type: !3386, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!63, !58, !63}
!3388 = !{!3389, !3390}
!3389 = !DILocalVariable(name: "n", arg: 1, scope: !3385, file: !284, line: 1061, type: !58)
!3390 = !DILocalVariable(name: "arg", arg: 2, scope: !3385, file: !284, line: 1061, type: !63)
!3391 = !DILocation(line: 0, scope: !3385)
!3392 = !DILocation(line: 0, scope: !3364, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 1063, column: 10, scope: !3385)
!3394 = !DILocation(line: 1051, column: 10, scope: !3364, inlinedAt: !3393)
!3395 = !DILocation(line: 1063, column: 3, scope: !3385)
!3396 = distinct !DISubprogram(name: "quote", scope: !284, file: !284, line: 1067, type: !3397, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!63, !63}
!3399 = !{!3400}
!3400 = !DILocalVariable(name: "arg", arg: 1, scope: !3396, file: !284, line: 1067, type: !63)
!3401 = !DILocation(line: 0, scope: !3396)
!3402 = !DILocation(line: 0, scope: !3385, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 1069, column: 10, scope: !3396)
!3404 = !DILocation(line: 0, scope: !3364, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 1063, column: 10, scope: !3385, inlinedAt: !3403)
!3406 = !DILocation(line: 1051, column: 10, scope: !3364, inlinedAt: !3405)
!3407 = !DILocation(line: 1069, column: 3, scope: !3396)
!3408 = distinct !DISubprogram(name: "version_etc_arn", scope: !401, file: !401, line: 61, type: !3409, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3446)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !3411, !63, !63, !63, !3445, !60}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !3413)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3413, file: !107, line: 51, baseType: !58, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3413, file: !107, line: 54, baseType: !55, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3413, file: !107, line: 55, baseType: !55, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3413, file: !107, line: 56, baseType: !55, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3413, file: !107, line: 57, baseType: !55, size: 64, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3413, file: !107, line: 58, baseType: !55, size: 64, offset: 320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3413, file: !107, line: 59, baseType: !55, size: 64, offset: 384)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3413, file: !107, line: 60, baseType: !55, size: 64, offset: 448)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3413, file: !107, line: 61, baseType: !55, size: 64, offset: 512)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3413, file: !107, line: 64, baseType: !55, size: 64, offset: 576)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3413, file: !107, line: 65, baseType: !55, size: 64, offset: 640)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3413, file: !107, line: 66, baseType: !55, size: 64, offset: 704)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3413, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3413, file: !107, line: 70, baseType: !3429, size: 64, offset: 832)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3413, file: !107, line: 72, baseType: !58, size: 32, offset: 896)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3413, file: !107, line: 73, baseType: !58, size: 32, offset: 928)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3413, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3413, file: !107, line: 77, baseType: !59, size: 16, offset: 1024)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3413, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3413, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3413, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3413, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3413, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3413, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3413, file: !107, line: 93, baseType: !3429, size: 64, offset: 1344)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3413, file: !107, line: 94, baseType: !57, size: 64, offset: 1408)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3413, file: !107, line: 95, baseType: !60, size: 64, offset: 1472)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3413, file: !107, line: 96, baseType: !58, size: 32, offset: 1536)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3413, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452}
!3447 = !DILocalVariable(name: "stream", arg: 1, scope: !3408, file: !401, line: 61, type: !3411)
!3448 = !DILocalVariable(name: "command_name", arg: 2, scope: !3408, file: !401, line: 62, type: !63)
!3449 = !DILocalVariable(name: "package", arg: 3, scope: !3408, file: !401, line: 62, type: !63)
!3450 = !DILocalVariable(name: "version", arg: 4, scope: !3408, file: !401, line: 63, type: !63)
!3451 = !DILocalVariable(name: "authors", arg: 5, scope: !3408, file: !401, line: 64, type: !3445)
!3452 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3408, file: !401, line: 64, type: !60)
!3453 = !DILocation(line: 0, scope: !3408)
!3454 = !DILocation(line: 66, column: 7, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3408, file: !401, line: 66, column: 7)
!3456 = !DILocation(line: 66, column: 7, scope: !3408)
!3457 = !DILocation(line: 67, column: 5, scope: !3455)
!3458 = !DILocation(line: 69, column: 5, scope: !3455)
!3459 = !DILocation(line: 83, column: 3, scope: !3408)
!3460 = !DILocation(line: 85, column: 3, scope: !3408)
!3461 = !DILocation(line: 88, column: 3, scope: !3408)
!3462 = !DILocation(line: 95, column: 3, scope: !3408)
!3463 = !DILocation(line: 97, column: 3, scope: !3408)
!3464 = !DILocation(line: 105, column: 7, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3408, file: !401, line: 98, column: 5)
!3466 = !DILocation(line: 106, column: 7, scope: !3465)
!3467 = !DILocation(line: 109, column: 7, scope: !3465)
!3468 = !DILocation(line: 110, column: 7, scope: !3465)
!3469 = !DILocation(line: 113, column: 7, scope: !3465)
!3470 = !DILocation(line: 115, column: 7, scope: !3465)
!3471 = !DILocation(line: 120, column: 7, scope: !3465)
!3472 = !DILocation(line: 122, column: 7, scope: !3465)
!3473 = !DILocation(line: 127, column: 7, scope: !3465)
!3474 = !DILocation(line: 129, column: 7, scope: !3465)
!3475 = !DILocation(line: 134, column: 7, scope: !3465)
!3476 = !DILocation(line: 137, column: 7, scope: !3465)
!3477 = !DILocation(line: 142, column: 7, scope: !3465)
!3478 = !DILocation(line: 145, column: 7, scope: !3465)
!3479 = !DILocation(line: 150, column: 7, scope: !3465)
!3480 = !DILocation(line: 154, column: 7, scope: !3465)
!3481 = !DILocation(line: 159, column: 7, scope: !3465)
!3482 = !DILocation(line: 163, column: 7, scope: !3465)
!3483 = !DILocation(line: 170, column: 7, scope: !3465)
!3484 = !DILocation(line: 174, column: 7, scope: !3465)
!3485 = !DILocation(line: 176, column: 1, scope: !3408)
!3486 = distinct !DISubprogram(name: "version_etc_ar", scope: !401, file: !401, line: 183, type: !3487, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !3411, !63, !63, !63, !3445}
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495}
!3490 = !DILocalVariable(name: "stream", arg: 1, scope: !3486, file: !401, line: 183, type: !3411)
!3491 = !DILocalVariable(name: "command_name", arg: 2, scope: !3486, file: !401, line: 184, type: !63)
!3492 = !DILocalVariable(name: "package", arg: 3, scope: !3486, file: !401, line: 184, type: !63)
!3493 = !DILocalVariable(name: "version", arg: 4, scope: !3486, file: !401, line: 185, type: !63)
!3494 = !DILocalVariable(name: "authors", arg: 5, scope: !3486, file: !401, line: 185, type: !3445)
!3495 = !DILocalVariable(name: "n_authors", scope: !3486, file: !401, line: 187, type: !60)
!3496 = !DILocation(line: 0, scope: !3486)
!3497 = !DILocation(line: 189, column: 8, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3486, file: !401, line: 189, column: 3)
!3499 = !DILocation(line: 0, scope: !3498)
!3500 = !DILocation(line: 189, column: 23, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3498, file: !401, line: 189, column: 3)
!3502 = !DILocation(line: 189, column: 3, scope: !3498)
!3503 = !DILocation(line: 189, column: 52, scope: !3501)
!3504 = distinct !{!3504, !3502, !3505, !536}
!3505 = !DILocation(line: 190, column: 5, scope: !3498)
!3506 = !DILocation(line: 191, column: 3, scope: !3486)
!3507 = !DILocation(line: 192, column: 1, scope: !3486)
!3508 = distinct !DISubprogram(name: "version_etc_va", scope: !401, file: !401, line: 199, type: !3509, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3522)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !3411, !63, !63, !63, !3511}
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !210, line: 52, baseType: !3512)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !212, line: 32, baseType: !3513)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3514, baseType: !3515)
!3514 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !216, size: 256, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3515, file: !3514, line: 192, baseType: !57, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3515, file: !3514, line: 192, baseType: !57, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3515, file: !3514, line: 192, baseType: !57, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3515, file: !3514, line: 192, baseType: !58, size: 32, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3515, file: !3514, line: 192, baseType: !58, size: 32, offset: 224)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528, !3529}
!3523 = !DILocalVariable(name: "stream", arg: 1, scope: !3508, file: !401, line: 199, type: !3411)
!3524 = !DILocalVariable(name: "command_name", arg: 2, scope: !3508, file: !401, line: 200, type: !63)
!3525 = !DILocalVariable(name: "package", arg: 3, scope: !3508, file: !401, line: 200, type: !63)
!3526 = !DILocalVariable(name: "version", arg: 4, scope: !3508, file: !401, line: 201, type: !63)
!3527 = !DILocalVariable(name: "authors", arg: 5, scope: !3508, file: !401, line: 201, type: !3511)
!3528 = !DILocalVariable(name: "n_authors", scope: !3508, file: !401, line: 203, type: !60)
!3529 = !DILocalVariable(name: "authtab", scope: !3508, file: !401, line: 204, type: !3530)
!3530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 640, elements: !297)
!3531 = !DILocation(line: 0, scope: !3508)
!3532 = !DILocation(line: 201, column: 46, scope: !3508)
!3533 = !DILocation(line: 204, column: 3, scope: !3508)
!3534 = !DILocation(line: 204, column: 15, scope: !3508)
!3535 = !DILocation(line: 208, column: 35, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !401, line: 206, column: 3)
!3537 = distinct !DILexicalBlock(scope: !3508, file: !401, line: 206, column: 3)
!3538 = !DILocation(line: 208, column: 14, scope: !3536)
!3539 = !DILocation(line: 208, column: 33, scope: !3536)
!3540 = !DILocation(line: 208, column: 67, scope: !3536)
!3541 = !DILocation(line: 206, column: 3, scope: !3537)
!3542 = !DILocation(line: 0, scope: !3537)
!3543 = !DILocation(line: 211, column: 3, scope: !3508)
!3544 = !DILocation(line: 213, column: 1, scope: !3508)
!3545 = distinct !DISubprogram(name: "version_etc", scope: !401, file: !401, line: 230, type: !3546, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{null, !3411, !63, !63, !63, null}
!3548 = !{!3549, !3550, !3551, !3552, !3553}
!3549 = !DILocalVariable(name: "stream", arg: 1, scope: !3545, file: !401, line: 230, type: !3411)
!3550 = !DILocalVariable(name: "command_name", arg: 2, scope: !3545, file: !401, line: 231, type: !63)
!3551 = !DILocalVariable(name: "package", arg: 3, scope: !3545, file: !401, line: 231, type: !63)
!3552 = !DILocalVariable(name: "version", arg: 4, scope: !3545, file: !401, line: 232, type: !63)
!3553 = !DILocalVariable(name: "authors", scope: !3545, file: !401, line: 234, type: !3511)
!3554 = !DILocation(line: 0, scope: !3545)
!3555 = !DILocation(line: 234, column: 3, scope: !3545)
!3556 = !DILocation(line: 234, column: 11, scope: !3545)
!3557 = !DILocation(line: 235, column: 3, scope: !3545)
!3558 = !DILocation(line: 236, column: 3, scope: !3545)
!3559 = !DILocation(line: 237, column: 3, scope: !3545)
!3560 = !DILocation(line: 238, column: 1, scope: !3545)
!3561 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !401, file: !401, line: 241, type: !237, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !483)
!3562 = !DILocation(line: 243, column: 3, scope: !3561)
!3563 = !DILocation(line: 248, column: 3, scope: !3561)
!3564 = !DILocation(line: 254, column: 3, scope: !3561)
!3565 = !DILocation(line: 259, column: 3, scope: !3561)
!3566 = !DILocation(line: 261, column: 1, scope: !3561)
!3567 = distinct !DISubprogram(name: "xnrealloc", scope: !3568, file: !3568, line: 147, type: !3569, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3571)
!3568 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!57, !57, !60, !60}
!3571 = !{!3572, !3573, !3574}
!3572 = !DILocalVariable(name: "p", arg: 1, scope: !3567, file: !3568, line: 147, type: !57)
!3573 = !DILocalVariable(name: "n", arg: 2, scope: !3567, file: !3568, line: 147, type: !60)
!3574 = !DILocalVariable(name: "s", arg: 3, scope: !3567, file: !3568, line: 147, type: !60)
!3575 = !DILocation(line: 0, scope: !3567)
!3576 = !DILocalVariable(name: "p", arg: 1, scope: !3577, file: !407, line: 83, type: !57)
!3577 = distinct !DISubprogram(name: "xreallocarray", scope: !407, file: !407, line: 83, type: !3569, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3578)
!3578 = !{!3576, !3579, !3580}
!3579 = !DILocalVariable(name: "n", arg: 2, scope: !3577, file: !407, line: 83, type: !60)
!3580 = !DILocalVariable(name: "s", arg: 3, scope: !3577, file: !407, line: 83, type: !60)
!3581 = !DILocation(line: 0, scope: !3577, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 149, column: 10, scope: !3567)
!3583 = !DILocation(line: 85, column: 25, scope: !3577, inlinedAt: !3582)
!3584 = !DILocalVariable(name: "p", arg: 1, scope: !3585, file: !407, line: 37, type: !57)
!3585 = distinct !DISubprogram(name: "check_nonnull", scope: !407, file: !407, line: 37, type: !3586, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!57, !57}
!3588 = !{!3584}
!3589 = !DILocation(line: 0, scope: !3585, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 85, column: 10, scope: !3577, inlinedAt: !3582)
!3591 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3590)
!3592 = distinct !DILexicalBlock(scope: !3585, file: !407, line: 39, column: 7)
!3593 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3590)
!3594 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3590)
!3595 = !DILocation(line: 149, column: 3, scope: !3567)
!3596 = !DILocation(line: 0, scope: !3577)
!3597 = !DILocation(line: 85, column: 25, scope: !3577)
!3598 = !DILocation(line: 0, scope: !3585, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 85, column: 10, scope: !3577)
!3600 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3599)
!3601 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3599)
!3602 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3599)
!3603 = !DILocation(line: 85, column: 3, scope: !3577)
!3604 = distinct !DISubprogram(name: "xmalloc", scope: !407, file: !407, line: 47, type: !3605, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!57, !60}
!3607 = !{!3608}
!3608 = !DILocalVariable(name: "s", arg: 1, scope: !3604, file: !407, line: 47, type: !60)
!3609 = !DILocation(line: 0, scope: !3604)
!3610 = !DILocation(line: 49, column: 25, scope: !3604)
!3611 = !DILocation(line: 0, scope: !3585, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 49, column: 10, scope: !3604)
!3613 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3612)
!3614 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3612)
!3615 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3612)
!3616 = !DILocation(line: 49, column: 3, scope: !3604)
!3617 = distinct !DISubprogram(name: "ximalloc", scope: !407, file: !407, line: 53, type: !3618, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!57, !168}
!3620 = !{!3621}
!3621 = !DILocalVariable(name: "s", arg: 1, scope: !3617, file: !407, line: 53, type: !168)
!3622 = !DILocation(line: 0, scope: !3617)
!3623 = !DILocalVariable(name: "s", arg: 1, scope: !3624, file: !3625, line: 55, type: !168)
!3624 = distinct !DISubprogram(name: "imalloc", scope: !3625, file: !3625, line: 55, type: !3618, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3626)
!3625 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3626 = !{!3623}
!3627 = !DILocation(line: 0, scope: !3624, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 55, column: 25, scope: !3617)
!3629 = !DILocation(line: 57, column: 26, scope: !3624, inlinedAt: !3628)
!3630 = !DILocation(line: 0, scope: !3585, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 55, column: 10, scope: !3617)
!3632 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3631)
!3633 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3631)
!3634 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3631)
!3635 = !DILocation(line: 55, column: 3, scope: !3617)
!3636 = distinct !DISubprogram(name: "xcharalloc", scope: !407, file: !407, line: 59, type: !3637, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3639)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!55, !60}
!3639 = !{!3640}
!3640 = !DILocalVariable(name: "n", arg: 1, scope: !3636, file: !407, line: 59, type: !60)
!3641 = !DILocation(line: 0, scope: !3636)
!3642 = !DILocation(line: 0, scope: !3604, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 61, column: 10, scope: !3636)
!3644 = !DILocation(line: 49, column: 25, scope: !3604, inlinedAt: !3643)
!3645 = !DILocation(line: 0, scope: !3585, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 49, column: 10, scope: !3604, inlinedAt: !3643)
!3647 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3646)
!3648 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3646)
!3649 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3646)
!3650 = !DILocation(line: 61, column: 3, scope: !3636)
!3651 = distinct !DISubprogram(name: "xrealloc", scope: !407, file: !407, line: 68, type: !3652, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!57, !57, !60}
!3654 = !{!3655, !3656}
!3655 = !DILocalVariable(name: "p", arg: 1, scope: !3651, file: !407, line: 68, type: !57)
!3656 = !DILocalVariable(name: "s", arg: 2, scope: !3651, file: !407, line: 68, type: !60)
!3657 = !DILocation(line: 0, scope: !3651)
!3658 = !DILocalVariable(name: "ptr", arg: 1, scope: !3659, file: !3660, line: 2057, type: !57)
!3659 = distinct !DISubprogram(name: "rpl_realloc", scope: !3660, file: !3660, line: 2057, type: !3652, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3661)
!3660 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3661 = !{!3658, !3662}
!3662 = !DILocalVariable(name: "size", arg: 2, scope: !3659, file: !3660, line: 2057, type: !60)
!3663 = !DILocation(line: 0, scope: !3659, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 70, column: 25, scope: !3651)
!3665 = !DILocation(line: 2059, column: 24, scope: !3659, inlinedAt: !3664)
!3666 = !DILocation(line: 2059, column: 10, scope: !3659, inlinedAt: !3664)
!3667 = !DILocation(line: 0, scope: !3585, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 70, column: 10, scope: !3651)
!3669 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3668)
!3670 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3668)
!3671 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3668)
!3672 = !DILocation(line: 70, column: 3, scope: !3651)
!3673 = distinct !DISubprogram(name: "xirealloc", scope: !407, file: !407, line: 74, type: !3674, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!57, !57, !168}
!3676 = !{!3677, !3678}
!3677 = !DILocalVariable(name: "p", arg: 1, scope: !3673, file: !407, line: 74, type: !57)
!3678 = !DILocalVariable(name: "s", arg: 2, scope: !3673, file: !407, line: 74, type: !168)
!3679 = !DILocation(line: 0, scope: !3673)
!3680 = !DILocalVariable(name: "p", arg: 1, scope: !3681, file: !3625, line: 66, type: !57)
!3681 = distinct !DISubprogram(name: "irealloc", scope: !3625, file: !3625, line: 66, type: !3674, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3682)
!3682 = !{!3680, !3683}
!3683 = !DILocalVariable(name: "s", arg: 2, scope: !3681, file: !3625, line: 66, type: !168)
!3684 = !DILocation(line: 0, scope: !3681, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 76, column: 25, scope: !3673)
!3686 = !DILocation(line: 0, scope: !3659, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 68, column: 26, scope: !3681, inlinedAt: !3685)
!3688 = !DILocation(line: 2059, column: 24, scope: !3659, inlinedAt: !3687)
!3689 = !DILocation(line: 2059, column: 10, scope: !3659, inlinedAt: !3687)
!3690 = !DILocation(line: 0, scope: !3585, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 76, column: 10, scope: !3673)
!3692 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3691)
!3693 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3691)
!3694 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3691)
!3695 = !DILocation(line: 76, column: 3, scope: !3673)
!3696 = distinct !DISubprogram(name: "xireallocarray", scope: !407, file: !407, line: 89, type: !3697, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!57, !57, !168, !168}
!3699 = !{!3700, !3701, !3702}
!3700 = !DILocalVariable(name: "p", arg: 1, scope: !3696, file: !407, line: 89, type: !57)
!3701 = !DILocalVariable(name: "n", arg: 2, scope: !3696, file: !407, line: 89, type: !168)
!3702 = !DILocalVariable(name: "s", arg: 3, scope: !3696, file: !407, line: 89, type: !168)
!3703 = !DILocation(line: 0, scope: !3696)
!3704 = !DILocalVariable(name: "p", arg: 1, scope: !3705, file: !3625, line: 98, type: !57)
!3705 = distinct !DISubprogram(name: "ireallocarray", scope: !3625, file: !3625, line: 98, type: !3697, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3706)
!3706 = !{!3704, !3707, !3708}
!3707 = !DILocalVariable(name: "n", arg: 2, scope: !3705, file: !3625, line: 98, type: !168)
!3708 = !DILocalVariable(name: "s", arg: 3, scope: !3705, file: !3625, line: 98, type: !168)
!3709 = !DILocation(line: 0, scope: !3705, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 91, column: 25, scope: !3696)
!3711 = !DILocation(line: 101, column: 13, scope: !3705, inlinedAt: !3710)
!3712 = !DILocation(line: 0, scope: !3585, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 91, column: 10, scope: !3696)
!3714 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3713)
!3715 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3713)
!3716 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3713)
!3717 = !DILocation(line: 91, column: 3, scope: !3696)
!3718 = distinct !DISubprogram(name: "xnmalloc", scope: !407, file: !407, line: 98, type: !3719, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3721)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!57, !60, !60}
!3721 = !{!3722, !3723}
!3722 = !DILocalVariable(name: "n", arg: 1, scope: !3718, file: !407, line: 98, type: !60)
!3723 = !DILocalVariable(name: "s", arg: 2, scope: !3718, file: !407, line: 98, type: !60)
!3724 = !DILocation(line: 0, scope: !3718)
!3725 = !DILocation(line: 0, scope: !3577, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 100, column: 10, scope: !3718)
!3727 = !DILocation(line: 85, column: 25, scope: !3577, inlinedAt: !3726)
!3728 = !DILocation(line: 0, scope: !3585, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 85, column: 10, scope: !3577, inlinedAt: !3726)
!3730 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3729)
!3731 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3729)
!3732 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3729)
!3733 = !DILocation(line: 100, column: 3, scope: !3718)
!3734 = distinct !DISubprogram(name: "xinmalloc", scope: !407, file: !407, line: 104, type: !3735, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3737)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!57, !168, !168}
!3737 = !{!3738, !3739}
!3738 = !DILocalVariable(name: "n", arg: 1, scope: !3734, file: !407, line: 104, type: !168)
!3739 = !DILocalVariable(name: "s", arg: 2, scope: !3734, file: !407, line: 104, type: !168)
!3740 = !DILocation(line: 0, scope: !3734)
!3741 = !DILocation(line: 0, scope: !3696, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 106, column: 10, scope: !3734)
!3743 = !DILocation(line: 0, scope: !3705, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 91, column: 25, scope: !3696, inlinedAt: !3742)
!3745 = !DILocation(line: 101, column: 13, scope: !3705, inlinedAt: !3744)
!3746 = !DILocation(line: 0, scope: !3585, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 91, column: 10, scope: !3696, inlinedAt: !3742)
!3748 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3747)
!3749 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3747)
!3750 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3747)
!3751 = !DILocation(line: 106, column: 3, scope: !3734)
!3752 = distinct !DISubprogram(name: "x2realloc", scope: !407, file: !407, line: 116, type: !3753, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3755)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!57, !57, !77}
!3755 = !{!3756, !3757}
!3756 = !DILocalVariable(name: "p", arg: 1, scope: !3752, file: !407, line: 116, type: !57)
!3757 = !DILocalVariable(name: "ps", arg: 2, scope: !3752, file: !407, line: 116, type: !77)
!3758 = !DILocation(line: 0, scope: !3752)
!3759 = !DILocation(line: 0, scope: !410, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 118, column: 10, scope: !3752)
!3761 = !DILocation(line: 178, column: 14, scope: !410, inlinedAt: !3760)
!3762 = !DILocation(line: 180, column: 9, scope: !3763, inlinedAt: !3760)
!3763 = distinct !DILexicalBlock(scope: !410, file: !407, line: 180, column: 7)
!3764 = !DILocation(line: 180, column: 7, scope: !410, inlinedAt: !3760)
!3765 = !DILocation(line: 182, column: 13, scope: !3766, inlinedAt: !3760)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !407, line: 182, column: 11)
!3767 = distinct !DILexicalBlock(scope: !3763, file: !407, line: 181, column: 5)
!3768 = !DILocation(line: 182, column: 11, scope: !3767, inlinedAt: !3760)
!3769 = !DILocation(line: 197, column: 11, scope: !3770, inlinedAt: !3760)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !407, line: 197, column: 11)
!3771 = distinct !DILexicalBlock(scope: !3763, file: !407, line: 195, column: 5)
!3772 = !DILocation(line: 197, column: 11, scope: !3771, inlinedAt: !3760)
!3773 = !DILocation(line: 198, column: 9, scope: !3770, inlinedAt: !3760)
!3774 = !DILocation(line: 0, scope: !3577, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 201, column: 7, scope: !410, inlinedAt: !3760)
!3776 = !DILocation(line: 85, column: 25, scope: !3577, inlinedAt: !3775)
!3777 = !DILocation(line: 0, scope: !3585, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 85, column: 10, scope: !3577, inlinedAt: !3775)
!3779 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3778)
!3780 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3778)
!3781 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3778)
!3782 = !DILocation(line: 202, column: 7, scope: !410, inlinedAt: !3760)
!3783 = !DILocation(line: 118, column: 3, scope: !3752)
!3784 = !DILocation(line: 0, scope: !410)
!3785 = !DILocation(line: 178, column: 14, scope: !410)
!3786 = !DILocation(line: 180, column: 9, scope: !3763)
!3787 = !DILocation(line: 180, column: 7, scope: !410)
!3788 = !DILocation(line: 182, column: 13, scope: !3766)
!3789 = !DILocation(line: 182, column: 11, scope: !3767)
!3790 = !DILocation(line: 190, column: 30, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3766, file: !407, line: 183, column: 9)
!3792 = !DILocation(line: 191, column: 16, scope: !3791)
!3793 = !DILocation(line: 191, column: 13, scope: !3791)
!3794 = !DILocation(line: 192, column: 9, scope: !3791)
!3795 = !DILocation(line: 197, column: 11, scope: !3770)
!3796 = !DILocation(line: 197, column: 11, scope: !3771)
!3797 = !DILocation(line: 198, column: 9, scope: !3770)
!3798 = !DILocation(line: 0, scope: !3577, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 201, column: 7, scope: !410)
!3800 = !DILocation(line: 85, column: 25, scope: !3577, inlinedAt: !3799)
!3801 = !DILocation(line: 0, scope: !3585, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 85, column: 10, scope: !3577, inlinedAt: !3799)
!3803 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3802)
!3804 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3802)
!3805 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3802)
!3806 = !DILocation(line: 202, column: 7, scope: !410)
!3807 = !DILocation(line: 203, column: 3, scope: !410)
!3808 = !DILocation(line: 0, scope: !421)
!3809 = !DILocation(line: 230, column: 14, scope: !421)
!3810 = !DILocation(line: 238, column: 7, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !421, file: !407, line: 238, column: 7)
!3812 = !DILocation(line: 238, column: 7, scope: !421)
!3813 = !DILocation(line: 240, column: 9, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !421, file: !407, line: 240, column: 7)
!3815 = !DILocation(line: 240, column: 18, scope: !3814)
!3816 = !DILocation(line: 253, column: 8, scope: !421)
!3817 = !DILocation(line: 258, column: 27, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !407, line: 257, column: 5)
!3819 = distinct !DILexicalBlock(scope: !421, file: !407, line: 256, column: 7)
!3820 = !DILocation(line: 259, column: 32, scope: !3818)
!3821 = !DILocation(line: 260, column: 5, scope: !3818)
!3822 = !DILocation(line: 262, column: 9, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !421, file: !407, line: 262, column: 7)
!3824 = !DILocation(line: 262, column: 7, scope: !421)
!3825 = !DILocation(line: 263, column: 9, scope: !3823)
!3826 = !DILocation(line: 263, column: 5, scope: !3823)
!3827 = !DILocation(line: 264, column: 9, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !421, file: !407, line: 264, column: 7)
!3829 = !DILocation(line: 264, column: 14, scope: !3828)
!3830 = !DILocation(line: 265, column: 7, scope: !3828)
!3831 = !DILocation(line: 265, column: 11, scope: !3828)
!3832 = !DILocation(line: 266, column: 11, scope: !3828)
!3833 = !DILocation(line: 266, column: 26, scope: !3828)
!3834 = !DILocation(line: 267, column: 14, scope: !3828)
!3835 = !DILocation(line: 264, column: 7, scope: !421)
!3836 = !DILocation(line: 268, column: 5, scope: !3828)
!3837 = !DILocation(line: 0, scope: !3651, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 269, column: 8, scope: !421)
!3839 = !DILocation(line: 0, scope: !3659, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 70, column: 25, scope: !3651, inlinedAt: !3838)
!3841 = !DILocation(line: 2059, column: 24, scope: !3659, inlinedAt: !3840)
!3842 = !DILocation(line: 2059, column: 10, scope: !3659, inlinedAt: !3840)
!3843 = !DILocation(line: 0, scope: !3585, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 70, column: 10, scope: !3651, inlinedAt: !3838)
!3845 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3844)
!3846 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3844)
!3847 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3844)
!3848 = !DILocation(line: 270, column: 7, scope: !421)
!3849 = !DILocation(line: 271, column: 3, scope: !421)
!3850 = distinct !DISubprogram(name: "xzalloc", scope: !407, file: !407, line: 279, type: !3605, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3851)
!3851 = !{!3852}
!3852 = !DILocalVariable(name: "s", arg: 1, scope: !3850, file: !407, line: 279, type: !60)
!3853 = !DILocation(line: 0, scope: !3850)
!3854 = !DILocalVariable(name: "n", arg: 1, scope: !3855, file: !407, line: 294, type: !60)
!3855 = distinct !DISubprogram(name: "xcalloc", scope: !407, file: !407, line: 294, type: !3719, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3856)
!3856 = !{!3854, !3857}
!3857 = !DILocalVariable(name: "s", arg: 2, scope: !3855, file: !407, line: 294, type: !60)
!3858 = !DILocation(line: 0, scope: !3855, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 281, column: 10, scope: !3850)
!3860 = !DILocation(line: 296, column: 25, scope: !3855, inlinedAt: !3859)
!3861 = !DILocation(line: 0, scope: !3585, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 296, column: 10, scope: !3855, inlinedAt: !3859)
!3863 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3862)
!3864 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3862)
!3865 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3862)
!3866 = !DILocation(line: 281, column: 3, scope: !3850)
!3867 = !DILocation(line: 0, scope: !3855)
!3868 = !DILocation(line: 296, column: 25, scope: !3855)
!3869 = !DILocation(line: 0, scope: !3585, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 296, column: 10, scope: !3855)
!3871 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3870)
!3872 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3870)
!3873 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3870)
!3874 = !DILocation(line: 296, column: 3, scope: !3855)
!3875 = distinct !DISubprogram(name: "xizalloc", scope: !407, file: !407, line: 285, type: !3618, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3876)
!3876 = !{!3877}
!3877 = !DILocalVariable(name: "s", arg: 1, scope: !3875, file: !407, line: 285, type: !168)
!3878 = !DILocation(line: 0, scope: !3875)
!3879 = !DILocalVariable(name: "n", arg: 1, scope: !3880, file: !407, line: 300, type: !168)
!3880 = distinct !DISubprogram(name: "xicalloc", scope: !407, file: !407, line: 300, type: !3735, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3881)
!3881 = !{!3879, !3882}
!3882 = !DILocalVariable(name: "s", arg: 2, scope: !3880, file: !407, line: 300, type: !168)
!3883 = !DILocation(line: 0, scope: !3880, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 287, column: 10, scope: !3875)
!3885 = !DILocalVariable(name: "n", arg: 1, scope: !3886, file: !3625, line: 77, type: !168)
!3886 = distinct !DISubprogram(name: "icalloc", scope: !3625, file: !3625, line: 77, type: !3735, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3887)
!3887 = !{!3885, !3888}
!3888 = !DILocalVariable(name: "s", arg: 2, scope: !3886, file: !3625, line: 77, type: !168)
!3889 = !DILocation(line: 0, scope: !3886, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 302, column: 25, scope: !3880, inlinedAt: !3884)
!3891 = !DILocation(line: 91, column: 10, scope: !3886, inlinedAt: !3890)
!3892 = !DILocation(line: 0, scope: !3585, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 302, column: 10, scope: !3880, inlinedAt: !3884)
!3894 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3893)
!3895 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3893)
!3896 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3893)
!3897 = !DILocation(line: 287, column: 3, scope: !3875)
!3898 = !DILocation(line: 0, scope: !3880)
!3899 = !DILocation(line: 0, scope: !3886, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 302, column: 25, scope: !3880)
!3901 = !DILocation(line: 91, column: 10, scope: !3886, inlinedAt: !3900)
!3902 = !DILocation(line: 0, scope: !3585, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 302, column: 10, scope: !3880)
!3904 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3903)
!3905 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3903)
!3906 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3903)
!3907 = !DILocation(line: 302, column: 3, scope: !3880)
!3908 = distinct !DISubprogram(name: "xmemdup", scope: !407, file: !407, line: 310, type: !3909, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3911)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!57, !687, !60}
!3911 = !{!3912, !3913}
!3912 = !DILocalVariable(name: "p", arg: 1, scope: !3908, file: !407, line: 310, type: !687)
!3913 = !DILocalVariable(name: "s", arg: 2, scope: !3908, file: !407, line: 310, type: !60)
!3914 = !DILocation(line: 0, scope: !3908)
!3915 = !DILocation(line: 0, scope: !3604, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 312, column: 18, scope: !3908)
!3917 = !DILocation(line: 49, column: 25, scope: !3604, inlinedAt: !3916)
!3918 = !DILocation(line: 0, scope: !3585, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 49, column: 10, scope: !3604, inlinedAt: !3916)
!3920 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3919)
!3921 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3919)
!3922 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3919)
!3923 = !DILocalVariable(name: "__dest", arg: 1, scope: !3924, file: !874, line: 26, type: !877)
!3924 = distinct !DISubprogram(name: "memcpy", scope: !874, file: !874, line: 26, type: !875, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3925)
!3925 = !{!3923, !3926, !3927}
!3926 = !DILocalVariable(name: "__src", arg: 2, scope: !3924, file: !874, line: 26, type: !686)
!3927 = !DILocalVariable(name: "__len", arg: 3, scope: !3924, file: !874, line: 26, type: !60)
!3928 = !DILocation(line: 0, scope: !3924, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 312, column: 10, scope: !3908)
!3930 = !DILocation(line: 29, column: 10, scope: !3924, inlinedAt: !3929)
!3931 = !DILocation(line: 312, column: 3, scope: !3908)
!3932 = distinct !DISubprogram(name: "ximemdup", scope: !407, file: !407, line: 316, type: !3933, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!57, !687, !168}
!3935 = !{!3936, !3937}
!3936 = !DILocalVariable(name: "p", arg: 1, scope: !3932, file: !407, line: 316, type: !687)
!3937 = !DILocalVariable(name: "s", arg: 2, scope: !3932, file: !407, line: 316, type: !168)
!3938 = !DILocation(line: 0, scope: !3932)
!3939 = !DILocation(line: 0, scope: !3617, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 318, column: 18, scope: !3932)
!3941 = !DILocation(line: 0, scope: !3624, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 55, column: 25, scope: !3617, inlinedAt: !3940)
!3943 = !DILocation(line: 57, column: 26, scope: !3624, inlinedAt: !3942)
!3944 = !DILocation(line: 0, scope: !3585, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 55, column: 10, scope: !3617, inlinedAt: !3940)
!3946 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3945)
!3947 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3945)
!3948 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3945)
!3949 = !DILocation(line: 0, scope: !3924, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 318, column: 10, scope: !3932)
!3951 = !DILocation(line: 29, column: 10, scope: !3924, inlinedAt: !3950)
!3952 = !DILocation(line: 318, column: 3, scope: !3932)
!3953 = distinct !DISubprogram(name: "ximemdup0", scope: !407, file: !407, line: 325, type: !3954, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3956)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!55, !687, !168}
!3956 = !{!3957, !3958, !3959}
!3957 = !DILocalVariable(name: "p", arg: 1, scope: !3953, file: !407, line: 325, type: !687)
!3958 = !DILocalVariable(name: "s", arg: 2, scope: !3953, file: !407, line: 325, type: !168)
!3959 = !DILocalVariable(name: "result", scope: !3953, file: !407, line: 327, type: !55)
!3960 = !DILocation(line: 0, scope: !3953)
!3961 = !DILocation(line: 327, column: 30, scope: !3953)
!3962 = !DILocation(line: 0, scope: !3617, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 327, column: 18, scope: !3953)
!3964 = !DILocation(line: 0, scope: !3624, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 55, column: 25, scope: !3617, inlinedAt: !3963)
!3966 = !DILocation(line: 57, column: 26, scope: !3624, inlinedAt: !3965)
!3967 = !DILocation(line: 0, scope: !3585, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 55, column: 10, scope: !3617, inlinedAt: !3963)
!3969 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3968)
!3970 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3968)
!3971 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3968)
!3972 = !DILocation(line: 328, column: 3, scope: !3953)
!3973 = !DILocation(line: 328, column: 13, scope: !3953)
!3974 = !DILocation(line: 0, scope: !3924, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 329, column: 10, scope: !3953)
!3976 = !DILocation(line: 29, column: 10, scope: !3924, inlinedAt: !3975)
!3977 = !DILocation(line: 329, column: 3, scope: !3953)
!3978 = distinct !DISubprogram(name: "xstrdup", scope: !407, file: !407, line: 335, type: !681, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3979)
!3979 = !{!3980}
!3980 = !DILocalVariable(name: "string", arg: 1, scope: !3978, file: !407, line: 335, type: !63)
!3981 = !DILocation(line: 0, scope: !3978)
!3982 = !DILocation(line: 337, column: 27, scope: !3978)
!3983 = !DILocation(line: 337, column: 43, scope: !3978)
!3984 = !DILocation(line: 0, scope: !3908, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 337, column: 10, scope: !3978)
!3986 = !DILocation(line: 0, scope: !3604, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 312, column: 18, scope: !3908, inlinedAt: !3985)
!3988 = !DILocation(line: 49, column: 25, scope: !3604, inlinedAt: !3987)
!3989 = !DILocation(line: 0, scope: !3585, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 49, column: 10, scope: !3604, inlinedAt: !3987)
!3991 = !DILocation(line: 39, column: 8, scope: !3592, inlinedAt: !3990)
!3992 = !DILocation(line: 39, column: 7, scope: !3585, inlinedAt: !3990)
!3993 = !DILocation(line: 40, column: 5, scope: !3592, inlinedAt: !3990)
!3994 = !DILocation(line: 0, scope: !3924, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 312, column: 10, scope: !3908, inlinedAt: !3985)
!3996 = !DILocation(line: 29, column: 10, scope: !3924, inlinedAt: !3995)
!3997 = !DILocation(line: 337, column: 3, scope: !3978)
!3998 = distinct !DISubprogram(name: "xalloc_die", scope: !437, file: !437, line: 32, type: !237, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !3999)
!3999 = !{!4000}
!4000 = !DILocalVariable(name: "__errstatus", scope: !4001, file: !437, line: 34, type: !4002)
!4001 = distinct !DILexicalBlock(scope: !3998, file: !437, line: 34, column: 3)
!4002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!4003 = !DILocation(line: 34, column: 3, scope: !4001)
!4004 = !DILocation(line: 0, scope: !4001)
!4005 = !DILocation(line: 40, column: 3, scope: !3998)
!4006 = distinct !DISubprogram(name: "rpl_fopen", scope: !439, file: !439, line: 46, type: !4007, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !4043)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!4009, !63, !63}
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !4011)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4011, file: !107, line: 51, baseType: !58, size: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4011, file: !107, line: 54, baseType: !55, size: 64, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4011, file: !107, line: 55, baseType: !55, size: 64, offset: 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4011, file: !107, line: 56, baseType: !55, size: 64, offset: 192)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4011, file: !107, line: 57, baseType: !55, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4011, file: !107, line: 58, baseType: !55, size: 64, offset: 320)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4011, file: !107, line: 59, baseType: !55, size: 64, offset: 384)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4011, file: !107, line: 60, baseType: !55, size: 64, offset: 448)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4011, file: !107, line: 61, baseType: !55, size: 64, offset: 512)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4011, file: !107, line: 64, baseType: !55, size: 64, offset: 576)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4011, file: !107, line: 65, baseType: !55, size: 64, offset: 640)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4011, file: !107, line: 66, baseType: !55, size: 64, offset: 704)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4011, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4011, file: !107, line: 70, baseType: !4027, size: 64, offset: 832)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4011, file: !107, line: 72, baseType: !58, size: 32, offset: 896)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4011, file: !107, line: 73, baseType: !58, size: 32, offset: 928)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4011, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4011, file: !107, line: 77, baseType: !59, size: 16, offset: 1024)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4011, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4011, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4011, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4011, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4011, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4011, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4011, file: !107, line: 93, baseType: !4027, size: 64, offset: 1344)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4011, file: !107, line: 94, baseType: !57, size: 64, offset: 1408)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4011, file: !107, line: 95, baseType: !60, size: 64, offset: 1472)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4011, file: !107, line: 96, baseType: !58, size: 32, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4011, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049, !4053, !4055, !4056, !4061, !4064, !4065}
!4044 = !DILocalVariable(name: "filename", arg: 1, scope: !4006, file: !439, line: 46, type: !63)
!4045 = !DILocalVariable(name: "mode", arg: 2, scope: !4006, file: !439, line: 46, type: !63)
!4046 = !DILocalVariable(name: "open_direction", scope: !4006, file: !439, line: 54, type: !58)
!4047 = !DILocalVariable(name: "open_flags", scope: !4006, file: !439, line: 55, type: !58)
!4048 = !DILocalVariable(name: "open_flags_gnu", scope: !4006, file: !439, line: 57, type: !70)
!4049 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4006, file: !439, line: 59, type: !4050)
!4050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 648, elements: !4051)
!4051 = !{!4052}
!4052 = !DISubrange(count: 81)
!4053 = !DILocalVariable(name: "p", scope: !4054, file: !439, line: 62, type: !63)
!4054 = distinct !DILexicalBlock(scope: !4006, file: !439, line: 61, column: 3)
!4055 = !DILocalVariable(name: "q", scope: !4054, file: !439, line: 64, type: !55)
!4056 = !DILocalVariable(name: "len", scope: !4057, file: !439, line: 128, type: !60)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !439, line: 127, column: 9)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !439, line: 68, column: 7)
!4059 = distinct !DILexicalBlock(scope: !4060, file: !439, line: 67, column: 5)
!4060 = distinct !DILexicalBlock(scope: !4054, file: !439, line: 67, column: 5)
!4061 = !DILocalVariable(name: "fd", scope: !4062, file: !439, line: 199, type: !58)
!4062 = distinct !DILexicalBlock(scope: !4063, file: !439, line: 198, column: 5)
!4063 = distinct !DILexicalBlock(scope: !4006, file: !439, line: 197, column: 7)
!4064 = !DILocalVariable(name: "fp", scope: !4062, file: !439, line: 204, type: !4009)
!4065 = !DILocalVariable(name: "saved_errno", scope: !4066, file: !439, line: 207, type: !58)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !439, line: 206, column: 9)
!4067 = distinct !DILexicalBlock(scope: !4062, file: !439, line: 205, column: 11)
!4068 = !DILocation(line: 0, scope: !4006)
!4069 = !DILocation(line: 59, column: 3, scope: !4006)
!4070 = !DILocation(line: 59, column: 8, scope: !4006)
!4071 = !DILocation(line: 0, scope: !4054)
!4072 = !DILocation(line: 67, column: 5, scope: !4054)
!4073 = !DILocation(line: 64, column: 11, scope: !4054)
!4074 = !DILocation(line: 54, column: 7, scope: !4006)
!4075 = !DILocation(line: 67, column: 12, scope: !4059)
!4076 = !DILocation(line: 67, column: 5, scope: !4060)
!4077 = !DILocation(line: 74, column: 19, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4079, file: !439, line: 74, column: 17)
!4079 = distinct !DILexicalBlock(scope: !4058, file: !439, line: 70, column: 11)
!4080 = !DILocation(line: 74, column: 17, scope: !4079)
!4081 = !DILocation(line: 75, column: 17, scope: !4078)
!4082 = !DILocation(line: 75, column: 20, scope: !4078)
!4083 = !DILocation(line: 75, column: 15, scope: !4078)
!4084 = !DILocation(line: 80, column: 24, scope: !4079)
!4085 = !DILocation(line: 82, column: 19, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4079, file: !439, line: 82, column: 17)
!4087 = !DILocation(line: 82, column: 17, scope: !4079)
!4088 = !DILocation(line: 83, column: 17, scope: !4086)
!4089 = !DILocation(line: 83, column: 20, scope: !4086)
!4090 = !DILocation(line: 83, column: 15, scope: !4086)
!4091 = !DILocation(line: 88, column: 24, scope: !4079)
!4092 = !DILocation(line: 90, column: 19, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4079, file: !439, line: 90, column: 17)
!4094 = !DILocation(line: 90, column: 17, scope: !4079)
!4095 = !DILocation(line: 91, column: 17, scope: !4093)
!4096 = !DILocation(line: 91, column: 20, scope: !4093)
!4097 = !DILocation(line: 91, column: 15, scope: !4093)
!4098 = !DILocation(line: 100, column: 19, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4079, file: !439, line: 100, column: 17)
!4100 = !DILocation(line: 100, column: 17, scope: !4079)
!4101 = !DILocation(line: 101, column: 17, scope: !4099)
!4102 = !DILocation(line: 101, column: 20, scope: !4099)
!4103 = !DILocation(line: 101, column: 15, scope: !4099)
!4104 = !DILocation(line: 107, column: 19, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4079, file: !439, line: 107, column: 17)
!4106 = !DILocation(line: 107, column: 17, scope: !4079)
!4107 = !DILocation(line: 108, column: 17, scope: !4105)
!4108 = !DILocation(line: 108, column: 20, scope: !4105)
!4109 = !DILocation(line: 108, column: 15, scope: !4105)
!4110 = !DILocation(line: 113, column: 24, scope: !4079)
!4111 = !DILocation(line: 115, column: 13, scope: !4079)
!4112 = !DILocation(line: 117, column: 24, scope: !4079)
!4113 = !DILocation(line: 119, column: 13, scope: !4079)
!4114 = !DILocation(line: 128, column: 24, scope: !4057)
!4115 = !DILocation(line: 0, scope: !4057)
!4116 = !DILocation(line: 129, column: 48, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4057, file: !439, line: 129, column: 15)
!4118 = !DILocation(line: 129, column: 19, scope: !4117)
!4119 = !DILocation(line: 129, column: 15, scope: !4057)
!4120 = !DILocalVariable(name: "__dest", arg: 1, scope: !4121, file: !874, line: 26, type: !877)
!4121 = distinct !DISubprogram(name: "memcpy", scope: !874, file: !874, line: 26, type: !875, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !4122)
!4122 = !{!4120, !4123, !4124}
!4123 = !DILocalVariable(name: "__src", arg: 2, scope: !4121, file: !874, line: 26, type: !686)
!4124 = !DILocalVariable(name: "__len", arg: 3, scope: !4121, file: !874, line: 26, type: !60)
!4125 = !DILocation(line: 0, scope: !4121, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 131, column: 11, scope: !4057)
!4127 = !DILocation(line: 29, column: 10, scope: !4121, inlinedAt: !4126)
!4128 = !DILocation(line: 132, column: 13, scope: !4057)
!4129 = !DILocation(line: 135, column: 9, scope: !4058)
!4130 = !DILocation(line: 67, column: 25, scope: !4059)
!4131 = !DILocation(line: 67, column: 5, scope: !4059)
!4132 = distinct !{!4132, !4076, !4133, !536}
!4133 = !DILocation(line: 136, column: 7, scope: !4060)
!4134 = !DILocation(line: 138, column: 8, scope: !4054)
!4135 = !DILocation(line: 197, column: 7, scope: !4006)
!4136 = !DILocation(line: 199, column: 47, scope: !4062)
!4137 = !DILocation(line: 199, column: 16, scope: !4062)
!4138 = !DILocation(line: 0, scope: !4062)
!4139 = !DILocation(line: 201, column: 14, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4062, file: !439, line: 201, column: 11)
!4141 = !DILocation(line: 201, column: 11, scope: !4062)
!4142 = !DILocation(line: 204, column: 18, scope: !4062)
!4143 = !DILocation(line: 205, column: 14, scope: !4067)
!4144 = !DILocation(line: 205, column: 11, scope: !4062)
!4145 = !DILocation(line: 207, column: 29, scope: !4066)
!4146 = !DILocation(line: 0, scope: !4066)
!4147 = !DILocation(line: 208, column: 11, scope: !4066)
!4148 = !DILocation(line: 209, column: 17, scope: !4066)
!4149 = !DILocation(line: 210, column: 9, scope: !4066)
!4150 = !DILocalVariable(name: "filename", arg: 1, scope: !4151, file: !439, line: 30, type: !63)
!4151 = distinct !DISubprogram(name: "orig_fopen", scope: !439, file: !439, line: 30, type: !4007, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !4152)
!4152 = !{!4150, !4153}
!4153 = !DILocalVariable(name: "mode", arg: 2, scope: !4151, file: !439, line: 30, type: !63)
!4154 = !DILocation(line: 0, scope: !4151, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 219, column: 10, scope: !4006)
!4156 = !DILocation(line: 32, column: 10, scope: !4151, inlinedAt: !4155)
!4157 = !DILocation(line: 219, column: 3, scope: !4006)
!4158 = !DILocation(line: 220, column: 1, scope: !4006)
!4159 = !DISubprogram(name: "open", scope: !1657, file: !1657, line: 181, type: !4160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!58, !63, !58, null}
!4162 = !DISubprogram(name: "fdopen", scope: !210, file: !210, line: 293, type: !4163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!4009, !58, !63}
!4165 = !DISubprogram(name: "close", scope: !1861, file: !1861, line: 358, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!4166 = distinct !DISubprogram(name: "close_stream", scope: !441, file: !441, line: 55, type: !4167, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4203)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!58, !4169}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !4171)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4171, file: !107, line: 51, baseType: !58, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4171, file: !107, line: 54, baseType: !55, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4171, file: !107, line: 55, baseType: !55, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4171, file: !107, line: 56, baseType: !55, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4171, file: !107, line: 57, baseType: !55, size: 64, offset: 256)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4171, file: !107, line: 58, baseType: !55, size: 64, offset: 320)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4171, file: !107, line: 59, baseType: !55, size: 64, offset: 384)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4171, file: !107, line: 60, baseType: !55, size: 64, offset: 448)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4171, file: !107, line: 61, baseType: !55, size: 64, offset: 512)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4171, file: !107, line: 64, baseType: !55, size: 64, offset: 576)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4171, file: !107, line: 65, baseType: !55, size: 64, offset: 640)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4171, file: !107, line: 66, baseType: !55, size: 64, offset: 704)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4171, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4171, file: !107, line: 70, baseType: !4187, size: 64, offset: 832)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4171, file: !107, line: 72, baseType: !58, size: 32, offset: 896)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4171, file: !107, line: 73, baseType: !58, size: 32, offset: 928)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4171, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4171, file: !107, line: 77, baseType: !59, size: 16, offset: 1024)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4171, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4171, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4171, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4171, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4171, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4171, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4171, file: !107, line: 93, baseType: !4187, size: 64, offset: 1344)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4171, file: !107, line: 94, baseType: !57, size: 64, offset: 1408)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4171, file: !107, line: 95, baseType: !60, size: 64, offset: 1472)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4171, file: !107, line: 96, baseType: !58, size: 32, offset: 1536)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4171, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!4203 = !{!4204, !4205, !4207, !4208}
!4204 = !DILocalVariable(name: "stream", arg: 1, scope: !4166, file: !441, line: 55, type: !4169)
!4205 = !DILocalVariable(name: "some_pending", scope: !4166, file: !441, line: 57, type: !4206)
!4206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!4207 = !DILocalVariable(name: "prev_fail", scope: !4166, file: !441, line: 58, type: !4206)
!4208 = !DILocalVariable(name: "fclose_fail", scope: !4166, file: !441, line: 59, type: !4206)
!4209 = !DILocation(line: 0, scope: !4166)
!4210 = !DILocation(line: 57, column: 30, scope: !4166)
!4211 = !DILocalVariable(name: "__stream", arg: 1, scope: !4212, file: !975, line: 135, type: !4169)
!4212 = distinct !DISubprogram(name: "ferror_unlocked", scope: !975, file: !975, line: 135, type: !4167, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4213)
!4213 = !{!4211}
!4214 = !DILocation(line: 0, scope: !4212, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 58, column: 27, scope: !4166)
!4216 = !DILocation(line: 137, column: 10, scope: !4212, inlinedAt: !4215)
!4217 = !DILocation(line: 58, column: 43, scope: !4166)
!4218 = !DILocation(line: 59, column: 29, scope: !4166)
!4219 = !DILocation(line: 59, column: 45, scope: !4166)
!4220 = !DILocation(line: 69, column: 17, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4166, file: !441, line: 69, column: 7)
!4222 = !DILocation(line: 57, column: 50, scope: !4166)
!4223 = !DILocation(line: 69, column: 33, scope: !4221)
!4224 = !DILocation(line: 69, column: 53, scope: !4221)
!4225 = !DILocation(line: 69, column: 59, scope: !4221)
!4226 = !DILocation(line: 69, column: 7, scope: !4166)
!4227 = !DILocation(line: 71, column: 11, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4221, file: !441, line: 70, column: 5)
!4229 = !DILocation(line: 72, column: 9, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4228, file: !441, line: 71, column: 11)
!4231 = !DILocation(line: 72, column: 15, scope: !4230)
!4232 = !DILocation(line: 77, column: 1, scope: !4166)
!4233 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !373, file: !373, line: 100, type: !4234, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !4237)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!60, !929, !63, !60, !4236}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!4237 = !{!4238, !4239, !4240, !4241, !4242}
!4238 = !DILocalVariable(name: "pwc", arg: 1, scope: !4233, file: !373, line: 100, type: !929)
!4239 = !DILocalVariable(name: "s", arg: 2, scope: !4233, file: !373, line: 100, type: !63)
!4240 = !DILocalVariable(name: "n", arg: 3, scope: !4233, file: !373, line: 100, type: !60)
!4241 = !DILocalVariable(name: "ps", arg: 4, scope: !4233, file: !373, line: 100, type: !4236)
!4242 = !DILocalVariable(name: "ret", scope: !4233, file: !373, line: 130, type: !60)
!4243 = !DILocation(line: 0, scope: !4233)
!4244 = !DILocation(line: 105, column: 9, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4233, file: !373, line: 105, column: 7)
!4246 = !DILocation(line: 105, column: 7, scope: !4233)
!4247 = !DILocation(line: 117, column: 10, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4233, file: !373, line: 117, column: 7)
!4249 = !DILocation(line: 117, column: 7, scope: !4233)
!4250 = !DILocation(line: 130, column: 16, scope: !4233)
!4251 = !DILocation(line: 135, column: 11, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4233, file: !373, line: 135, column: 7)
!4253 = !DILocation(line: 135, column: 25, scope: !4252)
!4254 = !DILocation(line: 135, column: 30, scope: !4252)
!4255 = !DILocation(line: 135, column: 7, scope: !4233)
!4256 = !DILocalVariable(name: "ps", arg: 1, scope: !4257, file: !2094, line: 1135, type: !4236)
!4257 = distinct !DISubprogram(name: "mbszero", scope: !2094, file: !2094, line: 1135, type: !4258, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !4236}
!4260 = !{!4256}
!4261 = !DILocation(line: 0, scope: !4257, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 137, column: 5, scope: !4252)
!4263 = !DILocalVariable(name: "__dest", arg: 1, scope: !4264, file: !874, line: 57, type: !57)
!4264 = distinct !DISubprogram(name: "memset", scope: !874, file: !874, line: 57, type: !2103, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !4265)
!4265 = !{!4263, !4266, !4267}
!4266 = !DILocalVariable(name: "__ch", arg: 2, scope: !4264, file: !874, line: 57, type: !58)
!4267 = !DILocalVariable(name: "__len", arg: 3, scope: !4264, file: !874, line: 57, type: !60)
!4268 = !DILocation(line: 0, scope: !4264, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 1137, column: 3, scope: !4257, inlinedAt: !4262)
!4270 = !DILocation(line: 59, column: 10, scope: !4264, inlinedAt: !4269)
!4271 = !DILocation(line: 137, column: 5, scope: !4252)
!4272 = !DILocation(line: 138, column: 11, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4233, file: !373, line: 138, column: 7)
!4274 = !DILocation(line: 138, column: 7, scope: !4233)
!4275 = !DILocation(line: 139, column: 5, scope: !4273)
!4276 = !DILocation(line: 143, column: 26, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4233, file: !373, line: 143, column: 7)
!4278 = !DILocation(line: 143, column: 41, scope: !4277)
!4279 = !DILocation(line: 143, column: 7, scope: !4233)
!4280 = !DILocation(line: 145, column: 15, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !373, line: 145, column: 11)
!4282 = distinct !DILexicalBlock(scope: !4277, file: !373, line: 144, column: 5)
!4283 = !DILocation(line: 145, column: 11, scope: !4282)
!4284 = !DILocation(line: 146, column: 32, scope: !4281)
!4285 = !DILocation(line: 146, column: 16, scope: !4281)
!4286 = !DILocation(line: 146, column: 14, scope: !4281)
!4287 = !DILocation(line: 146, column: 9, scope: !4281)
!4288 = !DILocation(line: 286, column: 1, scope: !4233)
!4289 = !DISubprogram(name: "mbsinit", scope: !4290, file: !4290, line: 293, type: !4291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !483)
!4290 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!58, !4293}
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!4295 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !443, file: !443, line: 27, type: !3569, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4296)
!4296 = !{!4297, !4298, !4299, !4300}
!4297 = !DILocalVariable(name: "ptr", arg: 1, scope: !4295, file: !443, line: 27, type: !57)
!4298 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4295, file: !443, line: 27, type: !60)
!4299 = !DILocalVariable(name: "size", arg: 3, scope: !4295, file: !443, line: 27, type: !60)
!4300 = !DILocalVariable(name: "nbytes", scope: !4295, file: !443, line: 29, type: !60)
!4301 = !DILocation(line: 0, scope: !4295)
!4302 = !DILocation(line: 30, column: 7, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4295, file: !443, line: 30, column: 7)
!4304 = !DILocalVariable(name: "ptr", arg: 1, scope: !4305, file: !3660, line: 2057, type: !57)
!4305 = distinct !DISubprogram(name: "rpl_realloc", scope: !3660, file: !3660, line: 2057, type: !3652, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4306)
!4306 = !{!4304, !4307}
!4307 = !DILocalVariable(name: "size", arg: 2, scope: !4305, file: !3660, line: 2057, type: !60)
!4308 = !DILocation(line: 0, scope: !4305, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 37, column: 10, scope: !4295)
!4310 = !DILocation(line: 2059, column: 24, scope: !4305, inlinedAt: !4309)
!4311 = !DILocation(line: 2059, column: 10, scope: !4305, inlinedAt: !4309)
!4312 = !DILocation(line: 37, column: 3, scope: !4295)
!4313 = !DILocation(line: 32, column: 7, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4303, file: !443, line: 31, column: 5)
!4315 = !DILocation(line: 32, column: 13, scope: !4314)
!4316 = !DILocation(line: 33, column: 7, scope: !4314)
!4317 = !DILocation(line: 38, column: 1, scope: !4295)
!4318 = distinct !DISubprogram(name: "hard_locale", scope: !446, file: !446, line: 28, type: !4319, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !4321)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!70, !58}
!4321 = !{!4322, !4323}
!4322 = !DILocalVariable(name: "category", arg: 1, scope: !4318, file: !446, line: 28, type: !58)
!4323 = !DILocalVariable(name: "locale", scope: !4318, file: !446, line: 30, type: !4324)
!4324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 2056, elements: !4325)
!4325 = !{!4326}
!4326 = !DISubrange(count: 257)
!4327 = !DILocation(line: 0, scope: !4318)
!4328 = !DILocation(line: 30, column: 3, scope: !4318)
!4329 = !DILocation(line: 30, column: 8, scope: !4318)
!4330 = !DILocation(line: 32, column: 7, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4318, file: !446, line: 32, column: 7)
!4332 = !DILocation(line: 32, column: 7, scope: !4318)
!4333 = !DILocalVariable(name: "__s1", arg: 1, scope: !4334, file: !520, line: 1359, type: !63)
!4334 = distinct !DISubprogram(name: "streq", scope: !520, file: !520, line: 1359, type: !521, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !4335)
!4335 = !{!4333, !4336}
!4336 = !DILocalVariable(name: "__s2", arg: 2, scope: !4334, file: !520, line: 1359, type: !63)
!4337 = !DILocation(line: 0, scope: !4334, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 35, column: 9, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4318, file: !446, line: 35, column: 7)
!4340 = !DILocation(line: 1361, column: 11, scope: !4334, inlinedAt: !4338)
!4341 = !DILocation(line: 1361, column: 10, scope: !4334, inlinedAt: !4338)
!4342 = !DILocation(line: 35, column: 29, scope: !4339)
!4343 = !DILocation(line: 0, scope: !4334, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 35, column: 32, scope: !4339)
!4345 = !DILocation(line: 1361, column: 11, scope: !4334, inlinedAt: !4344)
!4346 = !DILocation(line: 1361, column: 10, scope: !4334, inlinedAt: !4344)
!4347 = !DILocation(line: 35, column: 7, scope: !4318)
!4348 = !DILocation(line: 46, column: 3, scope: !4318)
!4349 = !DILocation(line: 47, column: 1, scope: !4318)
!4350 = distinct !DISubprogram(name: "setlocale_null_r", scope: !448, file: !448, line: 154, type: !4351, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!58, !58, !55, !60}
!4353 = !{!4354, !4355, !4356}
!4354 = !DILocalVariable(name: "category", arg: 1, scope: !4350, file: !448, line: 154, type: !58)
!4355 = !DILocalVariable(name: "buf", arg: 2, scope: !4350, file: !448, line: 154, type: !55)
!4356 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4350, file: !448, line: 154, type: !60)
!4357 = !DILocation(line: 0, scope: !4350)
!4358 = !DILocation(line: 159, column: 10, scope: !4350)
!4359 = !DILocation(line: 159, column: 3, scope: !4350)
!4360 = distinct !DISubprogram(name: "setlocale_null", scope: !448, file: !448, line: 186, type: !4361, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !4363)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!63, !58}
!4363 = !{!4364}
!4364 = !DILocalVariable(name: "category", arg: 1, scope: !4360, file: !448, line: 186, type: !58)
!4365 = !DILocation(line: 0, scope: !4360)
!4366 = !DILocation(line: 189, column: 10, scope: !4360)
!4367 = !DILocation(line: 189, column: 3, scope: !4360)
!4368 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !450, file: !450, line: 35, type: !4361, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4369)
!4369 = !{!4370, !4371}
!4370 = !DILocalVariable(name: "category", arg: 1, scope: !4368, file: !450, line: 35, type: !58)
!4371 = !DILocalVariable(name: "result", scope: !4368, file: !450, line: 37, type: !63)
!4372 = !DILocation(line: 0, scope: !4368)
!4373 = !DILocation(line: 37, column: 24, scope: !4368)
!4374 = !DILocation(line: 62, column: 3, scope: !4368)
!4375 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !450, file: !450, line: 66, type: !4351, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4376)
!4376 = !{!4377, !4378, !4379, !4380, !4381}
!4377 = !DILocalVariable(name: "category", arg: 1, scope: !4375, file: !450, line: 66, type: !58)
!4378 = !DILocalVariable(name: "buf", arg: 2, scope: !4375, file: !450, line: 66, type: !55)
!4379 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4375, file: !450, line: 66, type: !60)
!4380 = !DILocalVariable(name: "result", scope: !4375, file: !450, line: 111, type: !63)
!4381 = !DILocalVariable(name: "length", scope: !4382, file: !450, line: 125, type: !60)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !450, line: 124, column: 5)
!4383 = distinct !DILexicalBlock(scope: !4375, file: !450, line: 113, column: 7)
!4384 = !DILocation(line: 0, scope: !4375)
!4385 = !DILocation(line: 0, scope: !4368, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 111, column: 24, scope: !4375)
!4387 = !DILocation(line: 37, column: 24, scope: !4368, inlinedAt: !4386)
!4388 = !DILocation(line: 113, column: 14, scope: !4383)
!4389 = !DILocation(line: 113, column: 7, scope: !4375)
!4390 = !DILocation(line: 116, column: 19, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !450, line: 116, column: 11)
!4392 = distinct !DILexicalBlock(scope: !4383, file: !450, line: 114, column: 5)
!4393 = !DILocation(line: 116, column: 11, scope: !4392)
!4394 = !DILocation(line: 120, column: 16, scope: !4391)
!4395 = !DILocation(line: 120, column: 9, scope: !4391)
!4396 = !DILocation(line: 125, column: 23, scope: !4382)
!4397 = !DILocation(line: 0, scope: !4382)
!4398 = !DILocation(line: 126, column: 18, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4382, file: !450, line: 126, column: 11)
!4400 = !DILocation(line: 126, column: 11, scope: !4382)
!4401 = !DILocation(line: 128, column: 39, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4399, file: !450, line: 127, column: 9)
!4403 = !DILocalVariable(name: "__dest", arg: 1, scope: !4404, file: !874, line: 26, type: !877)
!4404 = distinct !DISubprogram(name: "memcpy", scope: !874, file: !874, line: 26, type: !875, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4405)
!4405 = !{!4403, !4406, !4407}
!4406 = !DILocalVariable(name: "__src", arg: 2, scope: !4404, file: !874, line: 26, type: !686)
!4407 = !DILocalVariable(name: "__len", arg: 3, scope: !4404, file: !874, line: 26, type: !60)
!4408 = !DILocation(line: 0, scope: !4404, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 128, column: 11, scope: !4402)
!4410 = !DILocation(line: 29, column: 10, scope: !4404, inlinedAt: !4409)
!4411 = !DILocation(line: 129, column: 11, scope: !4402)
!4412 = !DILocation(line: 133, column: 23, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !450, line: 133, column: 15)
!4414 = distinct !DILexicalBlock(scope: !4399, file: !450, line: 132, column: 9)
!4415 = !DILocation(line: 133, column: 15, scope: !4414)
!4416 = !DILocation(line: 138, column: 44, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4413, file: !450, line: 134, column: 13)
!4418 = !DILocation(line: 0, scope: !4404, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 138, column: 15, scope: !4417)
!4420 = !DILocation(line: 29, column: 10, scope: !4404, inlinedAt: !4419)
!4421 = !DILocation(line: 139, column: 15, scope: !4417)
!4422 = !DILocation(line: 139, column: 32, scope: !4417)
!4423 = !DILocation(line: 140, column: 13, scope: !4417)
!4424 = !DILocation(line: 0, scope: !4383)
!4425 = !DILocation(line: 145, column: 1, scope: !4375)
