; ModuleID = 'src/nproc.bc'
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
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.cpu_set_t = type { [16 x i64] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [285 x i8] c"Print the number of processing units available to the current process,\0Awhich may be less than the number of online processors.\0AIf the 'OMP_NUM_THREADS' or 'OMP_THREAD_LIMIT' environment variables are set,\0Athen they will determine the minimum and maximum returned value respectively.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nproc\00", align 1
@.str.4 = private unnamed_addr constant [135 x i8] c"      --all\0A         print the number of installed processors,\0A         disregarding any OpenMP environment variables, or CPU quotas.\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"      --ignore=N\0A         if possible, exclude N processing units.\0A         The result is guaranteed to be at least 1.\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 1, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !47
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !146
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !151
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !156
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !158
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !194
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !164
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !190
@.str.1.34 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.36 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.35 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !192
@.str.4.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.30 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.31 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@.str.1.56 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1
@.str.2.57 = private unnamed_addr constant [18 x i8] c"/proc/self/cgroup\00", align 1
@.str.3.58 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4.59 = private unnamed_addr constant [5 x i8] c"0::/\00", align 1
@.str.5.64 = private unnamed_addr constant [13 x i8] c"%s%s/cpu.max\00", align 1
@.str.6.65 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.7.66 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.8.60 = private unnamed_addr constant [34 x i8] c"/sys/fs/cgroup/cgroup.controllers\00", align 1
@.str.9.61 = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1
@.str.10.62 = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1
@.str.11.63 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !199
@.str.71 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.72 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !205
@.str.75 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.76 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.77 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.78 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.79 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.80 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.81 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.82 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.83 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.84 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.78, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.84, i32 0, i32 0), i8* null], align 8, !dbg !241
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !267
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !285
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !315
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !322
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !287
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !324
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !273
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !292
@.str.93 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.94 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.95 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.96 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.97 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.98 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.99 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.100 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.101 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.102 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.103 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.104 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.105 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.106 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.107 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.108 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.109 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.114 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.115 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.116 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.117 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.118 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !330
@exit_failure = dso_local global i32 1, align 4, !dbg !338
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.130 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.149 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !344
@.str.154 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.155 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !679 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !683, metadata !DIExpression()), !dbg !684
  %3 = icmp eq i32 %0, 0, !dbg !685
  br i1 %3, label %9, label %4, !dbg !687

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !688, !tbaa !690
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !688
  %7 = load i8*, i8** @program_name, align 8, !dbg !688, !tbaa !690
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !688
  br label %54, !dbg !688

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !694
  %11 = load i8*, i8** @program_name, align 8, !dbg !694, !tbaa !690
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !694
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([285 x i8], [285 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !696
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !696, !tbaa !690
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !696
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !697
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !697
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !698
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !698
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !699
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !699
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !700
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !700
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !701, metadata !DIExpression()) #35, !dbg !720
  %20 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !722
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %20) #35, !dbg !722
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !706, metadata !DIExpression()) #35, !dbg !723
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %20, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !723
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !715, metadata !DIExpression()) #35, !dbg !720
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !716, metadata !DIExpression()) #35, !dbg !720
  %21 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !724
  call void @llvm.dbg.value(metadata %struct.infomap* %21, metadata !716, metadata !DIExpression()) #35, !dbg !720
  br label %22, !dbg !725

22:                                               ; preds = %27, %9
  %23 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %9 ]
  %24 = phi %struct.infomap* [ %28, %27 ], [ %21, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %24, metadata !716, metadata !DIExpression()) #35, !dbg !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !733
  call void @llvm.dbg.value(metadata i8* %23, metadata !732, metadata !DIExpression()) #35, !dbg !733
  %25 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %23) #36, !dbg !735
  %26 = icmp eq i32 %25, 0, !dbg !736
  br i1 %26, label %32, label %27, !dbg !725

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.infomap, %struct.infomap* %24, i64 1, !dbg !737
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !716, metadata !DIExpression()) #35, !dbg !720
  %29 = getelementptr inbounds %struct.infomap, %struct.infomap* %28, i64 0, i32 0, !dbg !738
  %30 = load i8*, i8** %29, align 8, !dbg !738, !tbaa !739
  %31 = icmp eq i8* %30, null, !dbg !741
  br i1 %31, label %32, label %22, !dbg !742, !llvm.loop !743

32:                                               ; preds = %27, %22
  %33 = phi %struct.infomap* [ %24, %22 ], [ %28, %27 ]
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 1, !dbg !745
  %35 = load i8*, i8** %34, align 8, !dbg !745, !tbaa !747
  %36 = icmp eq i8* %35, null, !dbg !748
  %37 = select i1 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %35, !dbg !749
  call void @llvm.dbg.value(metadata i8* %37, metadata !715, metadata !DIExpression()) #35, !dbg !720
  tail call void @emit_bug_reporting_address() #35, !dbg !750
  %38 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !751
  call void @llvm.dbg.value(metadata i8* %38, metadata !718, metadata !DIExpression()) #35, !dbg !720
  %39 = icmp eq i8* %38, null, !dbg !752
  br i1 %39, label %47, label %40, !dbg !754

40:                                               ; preds = %32
  %41 = tail call i32 @strncmp(i8* noundef nonnull %38, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i64 noundef 3) #36, !dbg !755
  %42 = icmp eq i32 %41, 0, !dbg !755
  br i1 %42, label %47, label %43, !dbg !756

43:                                               ; preds = %40
  %44 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.47, i64 0, i64 0), i32 noundef 5) #35, !dbg !757
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !757, !tbaa !690
  %46 = tail call i32 @fputs_unlocked(i8* noundef %44, %struct._IO_FILE* noundef %45) #35, !dbg !757
  br label %47, !dbg !759

47:                                               ; preds = %32, %40, %43
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !760
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !732, metadata !DIExpression()) #35, !dbg !760
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !719, metadata !DIExpression()) #35, !dbg !720
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #35, !dbg !762
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %48, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !762
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #35, !dbg !763
  %51 = icmp eq i8* %37, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), !dbg !763
  %52 = select i1 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !763
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %50, i8* noundef %37, i8* noundef %52) #35, !dbg !763
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %20) #35, !dbg !764
  br label %54

54:                                               ; preds = %47, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !765
  unreachable, !dbg !765
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !766 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !771 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !49 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !54, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i8* %0, metadata !55, metadata !DIExpression()), !dbg !776
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !777, !tbaa !778
  %3 = icmp eq i32 %2, -1, !dbg !780
  br i1 %3, label %4, label %16, !dbg !781

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !782
  call void @llvm.dbg.value(metadata i8* %5, metadata !56, metadata !DIExpression()), !dbg !783
  %6 = icmp eq i8* %5, null, !dbg !784
  br i1 %6, label %14, label %7, !dbg !785

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !786, !tbaa !787
  %9 = icmp eq i8 %8, 0, !dbg !786
  br i1 %9, label %14, label %10, !dbg !788

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !726, metadata !DIExpression()) #35, !dbg !789
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), metadata !732, metadata !DIExpression()) #35, !dbg !789
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #36, !dbg !791
  %12 = icmp eq i32 %11, 0, !dbg !792
  %13 = zext i1 %12 to i32, !dbg !788
  br label %14, !dbg !788

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !793, !tbaa !778
  br label %16, !dbg !794

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !795
  %18 = icmp eq i32 %17, 0, !dbg !795
  br i1 %18, label %22, label %19, !dbg !797

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !798, !tbaa !690
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !798
  br label %121, !dbg !800

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !59, metadata !DIExpression()), !dbg !776
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #36, !dbg !801
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !802
  call void @llvm.dbg.value(metadata i8* %24, metadata !61, metadata !DIExpression()), !dbg !776
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !803
  call void @llvm.dbg.value(metadata i8* %25, metadata !62, metadata !DIExpression()), !dbg !776
  %26 = icmp eq i8* %25, null, !dbg !804
  br i1 %26, label %53, label %27, !dbg !805

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !806
  br i1 %28, label %53, label %29, !dbg !807

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !63, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 0, metadata !67, metadata !DIExpression()), !dbg !808
  %30 = icmp ult i8* %24, %25, !dbg !809
  br i1 %30, label %31, label %53, !dbg !810

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !776
  %33 = load i16*, i16** %32, align 8, !tbaa !690
  br label %34, !dbg !810

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !63, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 %36, metadata !67, metadata !DIExpression()), !dbg !808
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !811
  call void @llvm.dbg.value(metadata i8* %37, metadata !63, metadata !DIExpression()), !dbg !808
  %38 = load i8, i8* %35, align 1, !dbg !811, !tbaa !787
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !811
  %41 = load i16, i16* %40, align 2, !dbg !811, !tbaa !812
  %42 = lshr i16 %41, 13, !dbg !814
  %43 = and i16 %42, 1, !dbg !814
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !815
  call void @llvm.dbg.value(metadata i64 %45, metadata !67, metadata !DIExpression()), !dbg !808
  %46 = icmp ult i8* %37, %25, !dbg !809
  %47 = icmp ult i64 %45, 2, !dbg !816
  %48 = select i1 %46, i1 %47, i1 false, !dbg !816
  br i1 %48, label %34, label %49, !dbg !810, !llvm.loop !817

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !818
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !820
  %52 = xor i1 %50, true, !dbg !820
  br label %53, !dbg !820

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !776
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !59, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i8* %54, metadata !62, metadata !DIExpression()), !dbg !776
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #36, !dbg !821
  call void @llvm.dbg.value(metadata i64 %56, metadata !68, metadata !DIExpression()), !dbg !776
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !822
  call void @llvm.dbg.value(metadata i8* %57, metadata !69, metadata !DIExpression()), !dbg !776
  br label %58, !dbg !823

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !776
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !59, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i8* %59, metadata !69, metadata !DIExpression()), !dbg !776
  %61 = load i8, i8* %59, align 1, !dbg !824, !tbaa !787
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !825

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !826
  %64 = load i8, i8* %63, align 1, !dbg !829, !tbaa !787
  %65 = icmp ne i8 %64, 45, !dbg !830
  %66 = select i1 %65, i1 %60, i1 false, !dbg !831
  br label %67, !dbg !831

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !59, metadata !DIExpression()), !dbg !776
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !832
  %70 = load i16*, i16** %69, align 8, !dbg !832, !tbaa !690
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !832
  %73 = load i16, i16* %72, align 2, !dbg !832, !tbaa !812
  %74 = and i16 %73, 8192, !dbg !832
  %75 = icmp eq i16 %74, 0, !dbg !832
  br i1 %75, label %89, label %76, !dbg !834

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !835
  br i1 %77, label %91, label %78, !dbg !838

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !839
  %80 = load i8, i8* %79, align 1, !dbg !839, !tbaa !787
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !839
  %83 = load i16, i16* %82, align 2, !dbg !839, !tbaa !812
  %84 = and i16 %83, 8192, !dbg !839
  %85 = icmp eq i16 %84, 0, !dbg !839
  br i1 %85, label %86, label %91, !dbg !840

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !841
  br i1 %88, label %89, label %91, !dbg !841

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !843
  call void @llvm.dbg.value(metadata i8* %90, metadata !69, metadata !DIExpression()), !dbg !776
  br label %58, !dbg !823, !llvm.loop !844

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !846
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !846, !tbaa !690
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !846
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !847
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !732, metadata !DIExpression()) #35, !dbg !847
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !849
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !851
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !853
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !855
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !857
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !859
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !861
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !863
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !726, metadata !DIExpression()) #35, !dbg !865
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !129, metadata !DIExpression()), !dbg !776
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i64 noundef 6) #36, !dbg !867
  %96 = icmp eq i32 %95, 0, !dbg !867
  br i1 %96, label %100, label %97, !dbg !869

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i64 noundef 9) #36, !dbg !870
  %99 = icmp eq i32 %98, 0, !dbg !870
  br i1 %99, label %100, label %103, !dbg !871

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !872
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !872
  br label %106, !dbg !874

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !875
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !875
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !877, !tbaa !690
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !877
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !878, !tbaa !690
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !878
  %111 = ptrtoint i8* %59 to i64, !dbg !879
  %112 = sub i64 %111, %92, !dbg !879
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !879, !tbaa !690
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !879
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !880, !tbaa !690
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !880
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !881, !tbaa !690
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !881
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !882, !tbaa !690
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !882
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !883
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
declare !dbg !884 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !888 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !892 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !898 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !903, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i8** %1, metadata !904, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i64 0, metadata !905, metadata !DIExpression()), !dbg !910
  %3 = load i8*, i8** %1, align 8, !dbg !911, !tbaa !690
  tail call void @set_program_name(i8* noundef %3) #35, !dbg !912
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #35, !dbg !913
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #35, !dbg !914
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #35, !dbg !915
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !916
  call void @llvm.dbg.value(metadata i32 2, metadata !906, metadata !DIExpression()), !dbg !910
  br label %8, !dbg !917

8:                                                ; preds = %19, %2
  %9 = phi i64 [ %22, %19 ], [ 0, %2 ]
  %10 = phi i32 [ %12, %19 ], [ 2, %2 ]
  br label %11, !dbg !918

11:                                               ; preds = %8, %11
  %12 = phi i32 [ 0, %11 ], [ %10, %8 ], !dbg !919
  call void @llvm.dbg.value(metadata i32 %12, metadata !906, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i64 %9, metadata !905, metadata !DIExpression()), !dbg !910
  %13 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #35, !dbg !920
  call void @llvm.dbg.value(metadata i32 %13, metadata !907, metadata !DIExpression()), !dbg !921
  switch i32 %13, label %23 [
    i32 -1, label %24
    i32 -2, label %14
    i32 -3, label %15
    i32 256, label %11
    i32 257, label %19
  ], !dbg !918

14:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #39, !dbg !922
  unreachable, !dbg !922

15:                                               ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !924, !tbaa !690
  %17 = load i8*, i8** @Version, align 8, !dbg !924, !tbaa !690
  %18 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #35, !dbg !924
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef null) #35, !dbg !924
  tail call void @exit(i32 noundef 0) #37, !dbg !924
  unreachable, !dbg !924

19:                                               ; preds = %11
  %20 = load i8*, i8** @optarg, align 8, !dbg !925, !tbaa !690
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #35, !dbg !926
  %22 = tail call i64 @xnumtoumax(i8* noundef %20, i32 noundef 10, i64 noundef 0, i64 noundef -1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* noundef %21, i32 noundef 0, i32 noundef 2) #35, !dbg !927
  call void @llvm.dbg.value(metadata i64 %22, metadata !905, metadata !DIExpression()), !dbg !910
  br label %8, !dbg !928

23:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #39, !dbg !929
  unreachable, !dbg !929

24:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 undef, metadata !906, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i64 undef, metadata !905, metadata !DIExpression()), !dbg !910
  %25 = load i32, i32* @optind, align 4, !dbg !930, !tbaa !778
  %26 = icmp eq i32 %25, %0, !dbg !932
  br i1 %26, label %34, label %27, !dbg !933

27:                                               ; preds = %24
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #35, !dbg !934
  %29 = load i32, i32* @optind, align 4, !dbg !934, !tbaa !778
  %30 = sext i32 %29 to i64, !dbg !934
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !934
  %32 = load i8*, i8** %31, align 8, !dbg !934, !tbaa !690
  %33 = tail call i8* @quote(i8* noundef %32) #35, !dbg !934
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %28, i8* noundef %33) #35, !dbg !934
  tail call void @usage(i32 noundef 1) #39, !dbg !936
  unreachable, !dbg !936

34:                                               ; preds = %24
  %35 = tail call i64 @num_processors(i32 noundef %12) #35, !dbg !937
  call void @llvm.dbg.value(metadata i64 %35, metadata !909, metadata !DIExpression()), !dbg !910
  %36 = icmp ugt i64 %35, %9, !dbg !938
  %37 = sub i64 %35, %9, !dbg !940
  %38 = select i1 %36, i64 %37, i64 1, !dbg !940
  call void @llvm.dbg.value(metadata i64 %38, metadata !909, metadata !DIExpression()), !dbg !910
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 noundef %38) #35, !dbg !941
  ret i32 0, !dbg !942
}

; Function Attrs: nounwind
declare !dbg !943 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !946 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !947 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !950 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !956 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !958, metadata !DIExpression()), !dbg !959
  store i8* %0, i8** @file_name, align 8, !dbg !960, !tbaa !690
  ret void, !dbg !961
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !962 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !966, metadata !DIExpression()), !dbg !967
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !968, !tbaa !969
  ret void, !dbg !971
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !972 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !977, !tbaa !690
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !978
  %3 = icmp eq i32 %2, 0, !dbg !979
  br i1 %3, label %22, label %4, !dbg !980

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !981, !tbaa !969, !range !982
  %6 = icmp eq i8 %5, 0, !dbg !981
  br i1 %6, label %11, label %7, !dbg !983

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !984
  %9 = load i32, i32* %8, align 4, !dbg !984, !tbaa !778
  %10 = icmp eq i32 %9, 32, !dbg !985
  br i1 %10, label %22, label %11, !dbg !986

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.25, i64 0, i64 0), i32 noundef 5) #35, !dbg !987
  call void @llvm.dbg.value(metadata i8* %12, metadata !974, metadata !DIExpression()), !dbg !988
  %13 = load i8*, i8** @file_name, align 8, !dbg !989, !tbaa !690
  %14 = icmp eq i8* %13, null, !dbg !989
  %15 = tail call i32* @__errno_location() #38, !dbg !991
  %16 = load i32, i32* %15, align 4, !dbg !991, !tbaa !778
  br i1 %14, label %19, label %17, !dbg !992

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !993
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.26, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !993
  br label %20, !dbg !993

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.27, i64 0, i64 0), i8* noundef %12) #35, !dbg !994
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !995, !tbaa !778
  tail call void @_exit(i32 noundef %21) #37, !dbg !996
  unreachable, !dbg !996

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !997, !tbaa !690
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !999
  %25 = icmp eq i32 %24, 0, !dbg !1000
  br i1 %25, label %28, label %26, !dbg !1001

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1002, !tbaa !778
  tail call void @_exit(i32 noundef %27) #37, !dbg !1003
  unreachable, !dbg !1003

28:                                               ; preds = %22
  ret void, !dbg !1004
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1005 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1009, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %1, metadata !1010, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i8* %2, metadata !1011, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1012, metadata !DIExpression()), !dbg !1014
  tail call fastcc void @flush_stdout(), !dbg !1015
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1016, !tbaa !690
  %7 = icmp eq void ()* %6, null, !dbg !1016
  br i1 %7, label %9, label %8, !dbg !1018

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1019
  br label %13, !dbg !1019

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1020, !tbaa !690
  %11 = tail call i8* @getprogname() #36, !dbg !1020
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* noundef %11) #35, !dbg !1020
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1022
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1022
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1022
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1022, !tbaa.struct !1023
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1022
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1022
  ret void, !dbg !1024
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1025 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1027, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 1, metadata !1029, metadata !DIExpression()) #35, !dbg !1034
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1037
  %2 = icmp slt i32 %1, 0, !dbg !1038
  br i1 %2, label %6, label %3, !dbg !1039

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1040, !tbaa !690
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1040
  br label %6, !dbg !1040

6:                                                ; preds = %3, %0
  ret void, !dbg !1041
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1042 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1044, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %1, metadata !1045, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %2, metadata !1046, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1047, metadata !DIExpression()), !dbg !1049
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1050, !tbaa !690
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1051
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1052, metadata !DIExpression()) #35, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %2, metadata !1093, metadata !DIExpression()) #35, !dbg !1095
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1097
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1097, !noalias !1098
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1097
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1097
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1097, !noalias !1098
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1102, !tbaa !778
  %12 = add i32 %11, 1, !dbg !1102
  store i32 %12, i32* @error_message_count, align 4, !dbg !1102, !tbaa !778
  %13 = icmp eq i32 %1, 0, !dbg !1103
  br i1 %13, label %24, label %14, !dbg !1105

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1106, metadata !DIExpression()) #35, !dbg !1114
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1116
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1116
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1110, metadata !DIExpression()) #35, !dbg !1117
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1118
  call void @llvm.dbg.value(metadata i8* %16, metadata !1109, metadata !DIExpression()) #35, !dbg !1114
  %17 = icmp eq i8* %16, null, !dbg !1119
  br i1 %17, label %18, label %20, !dbg !1121

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.30, i64 0, i64 0), i32 noundef 5) #35, !dbg !1122
  call void @llvm.dbg.value(metadata i8* %19, metadata !1109, metadata !DIExpression()) #35, !dbg !1114
  br label %20, !dbg !1123

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1114
  call void @llvm.dbg.value(metadata i8* %21, metadata !1109, metadata !DIExpression()) #35, !dbg !1114
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1124, !tbaa !690
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.31, i64 0, i64 0), i8* noundef %21) #35, !dbg !1124
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1125
  br label %24, !dbg !1126

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1127, !tbaa !690
  call void @llvm.dbg.value(metadata i32 10, metadata !1128, metadata !DIExpression()) #35, !dbg !1135
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1134, metadata !DIExpression()) #35, !dbg !1135
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1137
  %27 = load i8*, i8** %26, align 8, !dbg !1137, !tbaa !1138
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1137
  %29 = load i8*, i8** %28, align 8, !dbg !1137, !tbaa !1141
  %30 = icmp ult i8* %27, %29, !dbg !1137
  br i1 %30, label %33, label %31, !dbg !1137, !prof !1142

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1137
  br label %35, !dbg !1137

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1137
  store i8* %34, i8** %26, align 8, !dbg !1137, !tbaa !1138
  store i8 10, i8* %27, align 1, !dbg !1137, !tbaa !787
  br label %35, !dbg !1137

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1143, !tbaa !690
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1143
  %38 = icmp eq i32 %0, 0, !dbg !1144
  br i1 %38, label %40, label %39, !dbg !1146

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1147
  unreachable, !dbg !1147

40:                                               ; preds = %35
  ret void, !dbg !1148
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1149 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1153 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1156 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1160 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1164, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %1, metadata !1165, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %2, metadata !1166, metadata !DIExpression()), !dbg !1168
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1169
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1169
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.va_start(i8* nonnull %6), !dbg !1171
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1172
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1172, !tbaa.struct !1023
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1172
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1172
  call void @llvm.va_end(i8* nonnull %6), !dbg !1173
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1174
  ret void, !dbg !1174
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !166 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !184, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 %1, metadata !185, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %2, metadata !186, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 %3, metadata !187, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %4, metadata !188, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !189, metadata !DIExpression()), !dbg !1176
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1177, !tbaa !778
  %9 = icmp eq i32 %8, 0, !dbg !1177
  br i1 %9, label %24, label %10, !dbg !1179

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1180, !tbaa !778
  %12 = icmp eq i32 %11, %3, !dbg !1183
  br i1 %12, label %13, label %23, !dbg !1184

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1185, !tbaa !690
  %15 = icmp eq i8* %14, %2, !dbg !1186
  br i1 %15, label %39, label %16, !dbg !1187

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1188
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1189
  br i1 %19, label %20, label %23, !dbg !1189

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1190
  %22 = icmp eq i32 %21, 0, !dbg !1191
  br i1 %22, label %39, label %23, !dbg !1192

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1193, !tbaa !690
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1194, !tbaa !778
  br label %24, !dbg !1195

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1196
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1197, !tbaa !690
  %26 = icmp eq void ()* %25, null, !dbg !1197
  br i1 %26, label %28, label %27, !dbg !1199

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1200
  br label %32, !dbg !1200

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1201, !tbaa !690
  %30 = tail call i8* @getprogname() #36, !dbg !1201
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.34, i64 0, i64 0), i8* noundef %30) #35, !dbg !1201
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1203, !tbaa !690
  %34 = icmp eq i8* %2, null, !dbg !1203
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.35, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.36, i64 0, i64 0), !dbg !1203
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1203
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1204
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1204
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1204, !tbaa.struct !1023
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1204
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1204
  br label %39, !dbg !1205

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1205
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1206 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1210, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i32 %1, metadata !1211, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i8* %2, metadata !1212, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i32 %3, metadata !1213, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i8* %4, metadata !1214, metadata !DIExpression()), !dbg !1216
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1217
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1217
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1215, metadata !DIExpression()), !dbg !1218
  call void @llvm.va_start(i8* nonnull %8), !dbg !1219
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1220
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1220, !tbaa.struct !1023
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1220
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1220
  call void @llvm.va_end(i8* nonnull %8), !dbg !1221
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1222
  ret void, !dbg !1222
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !1223 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1226, !tbaa !690
  ret i8* %1, !dbg !1227
}

; Function Attrs: nounwind uwtable
define dso_local i64 @num_processors(i32 noundef %0) local_unnamed_addr #12 !dbg !1228 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4096 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1232, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 -1, metadata !1233, metadata !DIExpression()), !dbg !1244
  %11 = icmp eq i32 %0, 2, !dbg !1245
  br i1 %11, label %12, label %71, !dbg !1246

12:                                               ; preds = %1
  %13 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0)) #35, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %13, metadata !1248, metadata !DIExpression()) #35, !dbg !1257
  %14 = icmp eq i8* %13, null, !dbg !1259
  br i1 %14, label %37, label %15, !dbg !1261

15:                                               ; preds = %12, %18
  %16 = phi i8* [ %19, %18 ], [ %13, %12 ]
  call void @llvm.dbg.value(metadata i8* %16, metadata !1248, metadata !DIExpression()) #35, !dbg !1257
  %17 = load i8, i8* %16, align 1, !dbg !1262, !tbaa !787
  switch i8 %17, label %20 [
    i8 0, label %36
    i8 32, label %18
    i8 9, label %18
    i8 10, label %18
    i8 11, label %18
    i8 12, label %18
    i8 13, label %18
  ], !dbg !1263

18:                                               ; preds = %15, %15, %15, %15, %15, %15
  %19 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1264
  call void @llvm.dbg.value(metadata i8* %19, metadata !1248, metadata !DIExpression()) #35, !dbg !1257
  br label %15, !dbg !1265, !llvm.loop !1266

20:                                               ; preds = %15
  %21 = zext i8 %17 to i32, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %21, metadata !1268, metadata !DIExpression()) #35, !dbg !1274
  %22 = add nsw i32 %21, -48, !dbg !1276
  %23 = icmp ult i32 %22, 10, !dbg !1276
  br i1 %23, label %24, label %36, !dbg !1277

24:                                               ; preds = %20
  %25 = bitcast i8** %10 to i8*, !dbg !1278
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #35, !dbg !1278
  call void @llvm.dbg.value(metadata i8** %10, metadata !1253, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1279
  %26 = call i64 @strtoul(i8* noundef nonnull %16, i8** noundef nonnull %10, i32 noundef 10) #35, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %26, metadata !1256, metadata !DIExpression()) #35, !dbg !1279
  %27 = load i8*, i8** %10, align 8, !tbaa !690
  br label %28, !dbg !1281

28:                                               ; preds = %32, %24
  %29 = phi i8* [ %33, %32 ], [ %27, %24 ]
  call void @llvm.dbg.value(metadata i8* %29, metadata !1253, metadata !DIExpression()) #35, !dbg !1279
  %30 = load i8, i8* %29, align 1, !dbg !1282, !tbaa !787
  switch i8 %30, label %34 [
    i8 0, label %31
    i8 32, label %32
    i8 9, label %32
    i8 10, label %32
    i8 11, label %32
    i8 12, label %32
    i8 13, label %32
  ], !dbg !1283

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8* %29, metadata !1253, metadata !DIExpression()) #35, !dbg !1279
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #35, !dbg !1284
  br label %37

32:                                               ; preds = %28, %28, %28, %28, %28, %28
  call void @llvm.dbg.value(metadata i8* %29, metadata !1253, metadata !DIExpression()) #35, !dbg !1279
  %33 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %33, metadata !1253, metadata !DIExpression()) #35, !dbg !1279
  br label %28, !dbg !1281, !llvm.loop !1286

34:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8* %29, metadata !1253, metadata !DIExpression()) #35, !dbg !1279
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #35, !dbg !1284
  %35 = icmp eq i8 %30, 44
  br i1 %35, label %37, label %36

36:                                               ; preds = %15, %34, %20
  br label %37, !dbg !1287

37:                                               ; preds = %12, %31, %34, %36
  %38 = phi i64 [ 0, %36 ], [ 0, %12 ], [ %26, %31 ], [ %26, %34 ], !dbg !1257
  call void @llvm.dbg.value(metadata i64 %38, metadata !1234, metadata !DIExpression()), !dbg !1288
  %39 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.56, i64 0, i64 0)) #35, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %39, metadata !1248, metadata !DIExpression()) #35, !dbg !1290
  %40 = icmp eq i8* %39, null, !dbg !1292
  br i1 %40, label %65, label %41, !dbg !1293

41:                                               ; preds = %37, %44
  %42 = phi i8* [ %45, %44 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata i8* %42, metadata !1248, metadata !DIExpression()) #35, !dbg !1290
  %43 = load i8, i8* %42, align 1, !dbg !1294, !tbaa !787
  switch i8 %43, label %46 [
    i8 0, label %65
    i8 32, label %44
    i8 9, label %44
    i8 10, label %44
    i8 11, label %44
    i8 12, label %44
    i8 13, label %44
  ], !dbg !1295

44:                                               ; preds = %41, %41, %41, %41, %41, %41
  %45 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1296
  call void @llvm.dbg.value(metadata i8* %45, metadata !1248, metadata !DIExpression()) #35, !dbg !1290
  br label %41, !dbg !1297, !llvm.loop !1298

46:                                               ; preds = %41
  %47 = zext i8 %43 to i32, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %47, metadata !1268, metadata !DIExpression()) #35, !dbg !1300
  %48 = add nsw i32 %47, -48, !dbg !1302
  %49 = icmp ult i32 %48, 10, !dbg !1302
  br i1 %49, label %50, label %65, !dbg !1303

50:                                               ; preds = %46
  %51 = bitcast i8** %9 to i8*, !dbg !1304
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #35, !dbg !1304
  call void @llvm.dbg.value(metadata i8** %9, metadata !1253, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1305
  %52 = call i64 @strtoul(i8* noundef nonnull %42, i8** noundef nonnull %9, i32 noundef 10) #35, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %52, metadata !1256, metadata !DIExpression()) #35, !dbg !1305
  %53 = load i8*, i8** %9, align 8, !tbaa !690
  br label %54, !dbg !1307

54:                                               ; preds = %59, %50
  %55 = phi i8* [ %60, %59 ], [ %53, %50 ]
  call void @llvm.dbg.value(metadata i8* %55, metadata !1253, metadata !DIExpression()) #35, !dbg !1305
  %56 = load i8, i8* %55, align 1, !dbg !1308, !tbaa !787
  switch i8 %56, label %61 [
    i8 0, label %57
    i8 32, label %59
    i8 9, label %59
    i8 10, label %59
    i8 11, label %59
    i8 12, label %59
    i8 13, label %59
  ], !dbg !1309

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i8* %55, metadata !1253, metadata !DIExpression()) #35, !dbg !1305
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #35, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %52, metadata !1237, metadata !DIExpression()), !dbg !1288
  %58 = icmp eq i64 %52, 0, !dbg !1311
  br i1 %58, label %65, label %66, !dbg !1313

59:                                               ; preds = %54, %54, %54, %54, %54, %54
  call void @llvm.dbg.value(metadata i8* %55, metadata !1253, metadata !DIExpression()) #35, !dbg !1305
  %60 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %60, metadata !1253, metadata !DIExpression()) #35, !dbg !1305
  br label %54, !dbg !1307, !llvm.loop !1315

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i8* %55, metadata !1253, metadata !DIExpression()) #35, !dbg !1305
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #35, !dbg !1310
  %62 = icmp ne i8 %56, 44
  %63 = icmp eq i64 %52, 0
  %64 = select i1 %62, i1 true, i1 %63
  call void @llvm.dbg.value(metadata i64 %52, metadata !1237, metadata !DIExpression()), !dbg !1288
  br i1 %64, label %65, label %66

65:                                               ; preds = %41, %46, %61, %37, %57
  br label %66, !dbg !1313

66:                                               ; preds = %61, %57, %65
  %67 = phi i64 [ -1, %65 ], [ %52, %57 ], [ %52, %61 ]
  call void @llvm.dbg.value(metadata i64 %67, metadata !1237, metadata !DIExpression()), !dbg !1288
  %68 = icmp eq i64 %38, 0, !dbg !1316
  %69 = icmp ult i64 %38, %67, !dbg !1318
  %70 = select i1 %69, i64 %38, i64 %67, !dbg !1318
  call void @llvm.dbg.value(metadata i32 undef, metadata !1232, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 undef, metadata !1233, metadata !DIExpression()), !dbg !1244
  br i1 %68, label %71, label %239

71:                                               ; preds = %66, %1
  %72 = phi i64 [ %67, %66 ], [ -1, %1 ], !dbg !1319
  %73 = phi i32 [ 1, %66 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %73, metadata !1232, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %72, metadata !1233, metadata !DIExpression()), !dbg !1244
  %74 = icmp eq i32 %73, 1, !dbg !1320
  %75 = icmp ugt i64 %72, 1
  %76 = select i1 %74, i1 %75, i1 false, !dbg !1321
  br i1 %76, label %77, label %214, !dbg !1321

77:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i64 -1, metadata !1322, metadata !DIExpression()) #35, !dbg !1327
  %78 = tail call i32 @sched_getscheduler(i32 noundef 0) #35, !dbg !1329
  %79 = add i32 %78, 1, !dbg !1330
  %80 = icmp ult i32 %79, 8, !dbg !1330
  br i1 %80, label %205, label %81, !dbg !1330

81:                                               ; preds = %205, %77
  call void @llvm.dbg.value(metadata i64 -1, metadata !1331, metadata !DIExpression()) #35, !dbg !1396
  %82 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.58, i64 0, i64 0)) #35, !dbg !1399
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %82, metadata !1334, metadata !DIExpression()) #35, !dbg !1396
  %83 = icmp eq %struct._IO_FILE* %82, null, !dbg !1400
  br i1 %83, label %210, label %84, !dbg !1402

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i8* null, metadata !1369, metadata !DIExpression()) #35, !dbg !1396
  %85 = bitcast i8** %2 to i8*, !dbg !1403
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #35, !dbg !1403
  call void @llvm.dbg.value(metadata i8* null, metadata !1370, metadata !DIExpression()) #35, !dbg !1396
  store i8* null, i8** %2, align 8, !dbg !1404, !tbaa !690
  %86 = bitcast i64* %3 to i8*, !dbg !1405
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %86) #35, !dbg !1405
  call void @llvm.dbg.value(metadata i64 0, metadata !1371, metadata !DIExpression()) #35, !dbg !1396
  store i64 0, i64* %3, align 8, !dbg !1406, !tbaa !1407
  br label %87, !dbg !1408

87:                                               ; preds = %92, %84
  call void @llvm.dbg.value(metadata i8** %2, metadata !1370, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1396
  call void @llvm.dbg.value(metadata i64* %3, metadata !1371, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1396
  call void @llvm.dbg.value(metadata i8** %2, metadata !1409, metadata !DIExpression()) #35, !dbg !1416
  call void @llvm.dbg.value(metadata i64* %3, metadata !1414, metadata !DIExpression()) #35, !dbg !1416
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %82, metadata !1415, metadata !DIExpression()) #35, !dbg !1416
  %88 = call i64 @__getdelim(i8** noundef nonnull %2, i64* noundef nonnull %3, i32 noundef 10, %struct._IO_FILE* noundef nonnull %82) #35, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %88, metadata !1372, metadata !DIExpression()) #35, !dbg !1396
  %89 = icmp eq i64 %88, -1, !dbg !1419
  br i1 %89, label %90, label %92, !dbg !1408

90:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i8* %105, metadata !1369, metadata !DIExpression()) #35, !dbg !1396
  %91 = call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %82) #35, !dbg !1420
  call void @llvm.dbg.value(metadata i8* null, metadata !1380, metadata !DIExpression()) #35, !dbg !1396
  br label %132, !dbg !1421

92:                                               ; preds = %87
  %93 = load i8*, i8** %2, align 8, !dbg !1423, !tbaa !690
  call void @llvm.dbg.value(metadata i8* %93, metadata !1370, metadata !DIExpression()) #35, !dbg !1396
  %94 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %93, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.59, i64 0, i64 0), i64 noundef 4) #36, !dbg !1424
  %95 = icmp eq i32 %94, 0, !dbg !1425
  br i1 %95, label %96, label %87, !dbg !1426, !llvm.loop !1427

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, i8* %93, i64 %88, !dbg !1429
  %98 = getelementptr inbounds i8, i8* %97, i64 -1, !dbg !1430
  call void @llvm.dbg.value(metadata i8* %98, metadata !1376, metadata !DIExpression()) #35, !dbg !1431
  %99 = load i8, i8* %98, align 1, !dbg !1432, !tbaa !787
  %100 = icmp eq i8 %99, 10, !dbg !1434
  br i1 %100, label %101, label %103, !dbg !1435

101:                                              ; preds = %96
  store i8 0, i8* %98, align 1, !dbg !1436, !tbaa !787
  %102 = load i8*, i8** %2, align 8, !dbg !1437, !tbaa !690
  br label %103, !dbg !1438

103:                                              ; preds = %101, %96
  %104 = phi i8* [ %102, %101 ], [ %93, %96 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8* %104, metadata !1370, metadata !DIExpression()) #35, !dbg !1396
  %105 = getelementptr inbounds i8, i8* %104, i64 3, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %105, metadata !1369, metadata !DIExpression()) #35, !dbg !1396
  %106 = call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %82) #35, !dbg !1420
  call void @llvm.dbg.value(metadata i8* null, metadata !1380, metadata !DIExpression()) #35, !dbg !1396
  %107 = call i32 @access(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8.60, i64 0, i64 0), i32 noundef 0) #35, !dbg !1440
  %108 = icmp eq i32 %107, 0, !dbg !1459
  br i1 %108, label %109, label %111, !dbg !1460

109:                                              ; preds = %103
  %110 = call noalias dereferenceable_or_null(15) i8* @strdup(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9.61, i64 0, i64 0)) #35, !dbg !1461
  br label %129, !dbg !1462

111:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i8* null, metadata !1445, metadata !DIExpression()) #35, !dbg !1463
  %112 = call %struct._IO_FILE* @setmntent(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.58, i64 0, i64 0)) #35, !dbg !1464
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %112, metadata !1446, metadata !DIExpression()) #35, !dbg !1463
  %113 = icmp eq %struct._IO_FILE* %112, null, !dbg !1465
  br i1 %113, label %132, label %114, !dbg !1467

114:                                              ; preds = %111, %117
  %115 = call %struct.mntent* @getmntent(%struct._IO_FILE* noundef nonnull %112) #35, !dbg !1468
  call void @llvm.dbg.value(metadata %struct.mntent* %115, metadata !1447, metadata !DIExpression()) #35, !dbg !1463
  %116 = icmp eq %struct.mntent* %115, null, !dbg !1469
  br i1 %116, label %126, label %117, !dbg !1470

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.mntent, %struct.mntent* %115, i64 0, i32 2, !dbg !1471
  %119 = load i8*, i8** %118, align 8, !dbg !1471, !tbaa !1474
  call void @llvm.dbg.value(metadata i8* %119, metadata !1476, metadata !DIExpression()) #35, !dbg !1480
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.63, i64 0, i64 0), metadata !1479, metadata !DIExpression()) #35, !dbg !1480
  %120 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %119, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.63, i64 0, i64 0)) #36, !dbg !1482
  %121 = icmp eq i32 %120, 0, !dbg !1483
  br i1 %121, label %122, label %114, !dbg !1484, !llvm.loop !1485

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.mntent, %struct.mntent* %115, i64 0, i32 1, !dbg !1487
  %124 = load i8*, i8** %123, align 8, !dbg !1487, !tbaa !1489
  %125 = call noalias i8* @strdup(i8* noundef %124) #35, !dbg !1490
  call void @llvm.dbg.value(metadata i8* %125, metadata !1445, metadata !DIExpression()) #35, !dbg !1463
  br label %126, !dbg !1491

126:                                              ; preds = %114, %122
  %127 = phi i8* [ %125, %122 ], [ null, %114 ], !dbg !1463
  call void @llvm.dbg.value(metadata i8* %127, metadata !1445, metadata !DIExpression()) #35, !dbg !1463
  %128 = call i32 @endmntent(%struct._IO_FILE* noundef nonnull %112) #35, !dbg !1492
  br label %129

129:                                              ; preds = %126, %109
  %130 = phi i8* [ %110, %109 ], [ %127, %126 ], !dbg !1463
  call void @llvm.dbg.value(metadata i8* %130, metadata !1380, metadata !DIExpression()) #35, !dbg !1396
  %131 = icmp eq i8* %130, null, !dbg !1493
  br i1 %131, label %132, label %135, !dbg !1494

132:                                              ; preds = %129, %111, %90
  call void @llvm.dbg.value(metadata i8* %130, metadata !1380, metadata !DIExpression()) #35, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %105, metadata !1369, metadata !DIExpression()) #35, !dbg !1396
  %133 = bitcast i8** %4 to i8*, !dbg !1495
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %133) #35, !dbg !1495
  call void @llvm.dbg.value(metadata i8* null, metadata !1381, metadata !DIExpression()) #35, !dbg !1396
  store i8* null, i8** %4, align 8, !dbg !1496, !tbaa !690
  %134 = bitcast i64* %5 to i8*, !dbg !1497
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %134) #35, !dbg !1497
  call void @llvm.dbg.value(metadata i64 0, metadata !1382, metadata !DIExpression()) #35, !dbg !1396
  store i64 0, i64* %5, align 8, !dbg !1498, !tbaa !1407
  call void @llvm.dbg.value(metadata i64 -1, metadata !1331, metadata !DIExpression()) #35, !dbg !1396
  br label %198, !dbg !1499

135:                                              ; preds = %129
  call void @llvm.dbg.value(metadata i8* %130, metadata !1380, metadata !DIExpression()) #35, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %105, metadata !1369, metadata !DIExpression()) #35, !dbg !1396
  %136 = bitcast i8** %4 to i8*, !dbg !1495
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %136) #35, !dbg !1495
  call void @llvm.dbg.value(metadata i8* null, metadata !1381, metadata !DIExpression()) #35, !dbg !1396
  store i8* null, i8** %4, align 8, !dbg !1496, !tbaa !690
  %137 = bitcast i64* %5 to i8*, !dbg !1497
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %137) #35, !dbg !1497
  call void @llvm.dbg.value(metadata i64 0, metadata !1382, metadata !DIExpression()) #35, !dbg !1396
  store i64 0, i64* %5, align 8, !dbg !1498, !tbaa !1407
  call void @llvm.dbg.value(metadata i64 -1, metadata !1331, metadata !DIExpression()) #35, !dbg !1396
  %138 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %139 = bitcast i64* %7 to i8*
  %140 = bitcast i64* %8 to i8*
  %141 = getelementptr inbounds i8, i8* %104, i64 4
  %142 = load i8, i8* %105, align 1, !dbg !1500, !tbaa !787
  %143 = icmp eq i8 %142, 0, !dbg !1499
  br i1 %143, label %198, label %144, !dbg !1501

144:                                              ; preds = %135, %194
  %145 = phi i64 [ %184, %194 ], [ -1, %135 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1331, metadata !DIExpression()) #35, !dbg !1396
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %138) #35, !dbg !1502
  call void @llvm.dbg.declare(metadata [4096 x i8]* %6, metadata !1383, metadata !DIExpression()) #35, !dbg !1503
  %146 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* noundef nonnull %138, i64 noundef 4096, i32 noundef 1, i64 noundef 4096, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5.64, i64 0, i64 0), i8* noundef nonnull %130, i8* noundef nonnull %105) #35, !dbg !1504
  %147 = call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef nonnull %138, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.58, i64 0, i64 0)) #35, !dbg !1505
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %147, metadata !1334, metadata !DIExpression()) #35, !dbg !1396
  %148 = icmp eq %struct._IO_FILE* %147, null, !dbg !1506
  br i1 %148, label %183, label %149, !dbg !1507

149:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i8** %4, metadata !1381, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1396
  call void @llvm.dbg.value(metadata i64* %5, metadata !1382, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1396
  call void @llvm.dbg.value(metadata i8** %4, metadata !1409, metadata !DIExpression()) #35, !dbg !1508
  call void @llvm.dbg.value(metadata i64* %5, metadata !1414, metadata !DIExpression()) #35, !dbg !1508
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %147, metadata !1415, metadata !DIExpression()) #35, !dbg !1508
  %150 = call i64 @__getdelim(i8** noundef nonnull %4, i64* noundef nonnull %5, i32 noundef 10, %struct._IO_FILE* noundef nonnull %147) #35, !dbg !1510
  %151 = icmp eq i64 %150, -1, !dbg !1511
  br i1 %151, label %180, label %152, !dbg !1512

152:                                              ; preds = %149
  %153 = load i8*, i8** %4, align 8, !dbg !1513, !tbaa !690
  call void @llvm.dbg.value(metadata i8* %153, metadata !1381, metadata !DIExpression()) #35, !dbg !1396
  %154 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %153, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.65, i64 0, i64 0), i64 noundef 3) #36, !dbg !1514
  %155 = icmp eq i32 %154, 0, !dbg !1515
  br i1 %155, label %180, label %156, !dbg !1516

156:                                              ; preds = %152
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %139) #35, !dbg !1517
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %140) #35, !dbg !1517
  call void @llvm.dbg.value(metadata i8* %153, metadata !1381, metadata !DIExpression()) #35, !dbg !1396
  call void @llvm.dbg.value(metadata i64* %7, metadata !1388, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1518
  call void @llvm.dbg.value(metadata i64* %8, metadata !1391, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1518
  %157 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %153, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.66, i64 0, i64 0), i64* noundef nonnull %7, i64* noundef nonnull %8) #35, !dbg !1519
  %158 = icmp eq i32 %157, 2, !dbg !1520
  %159 = load i64, i64* %8, align 8
  call void @llvm.dbg.value(metadata i64 %159, metadata !1391, metadata !DIExpression()) #35, !dbg !1518
  %160 = icmp ne i64 %159, 0
  %161 = select i1 %158, i1 %160, i1 false, !dbg !1521
  br i1 %161, label %162, label %178, !dbg !1521

162:                                              ; preds = %156
  %163 = load i64, i64* %7, align 8, !dbg !1522, !tbaa !1407
  call void @llvm.dbg.value(metadata i64 %163, metadata !1388, metadata !DIExpression()) #35, !dbg !1518
  %164 = sitofp i64 %163 to double, !dbg !1523
  %165 = sitofp i64 %159 to double, !dbg !1524
  %166 = fdiv double %164, %165, !dbg !1525
  call void @llvm.dbg.value(metadata double %166, metadata !1392, metadata !DIExpression()) #35, !dbg !1526
  %167 = icmp eq i64 %145, -1, !dbg !1527
  %168 = uitofp i64 %145 to double
  %169 = fcmp olt double %166, %168
  %170 = select i1 %167, i1 true, i1 %169, !dbg !1529
  br i1 %170, label %171, label %178, !dbg !1529

171:                                              ; preds = %162
  %172 = fadd double %166, 5.000000e-01, !dbg !1530
  %173 = fptosi double %172 to i64, !dbg !1530
  %174 = icmp sgt i64 %173, 1, !dbg !1530
  %175 = select i1 %174, i64 %173, i64 1, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %175, metadata !1331, metadata !DIExpression()) #35, !dbg !1396
  %176 = icmp slt i64 %173, 2, !dbg !1532
  br i1 %176, label %177, label %178, !dbg !1534

177:                                              ; preds = %171
  store i8 0, i8* %105, align 1, !dbg !1535, !tbaa !787
  br label %178, !dbg !1536

178:                                              ; preds = %177, %171, %162, %156
  %179 = phi i64 [ %145, %156 ], [ 1, %177 ], [ %175, %171 ], [ %145, %162 ], !dbg !1396
  call void @llvm.dbg.value(metadata i64 %179, metadata !1331, metadata !DIExpression()) #35, !dbg !1396
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %140) #35, !dbg !1537
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %139) #35, !dbg !1537
  br label %180, !dbg !1538

180:                                              ; preds = %178, %152, %149
  %181 = phi i64 [ %145, %149 ], [ %145, %152 ], [ %179, %178 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1331, metadata !DIExpression()) #35, !dbg !1396
  %182 = call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %147) #35, !dbg !1539
  br label %183, !dbg !1539

183:                                              ; preds = %180, %144
  %184 = phi i64 [ %181, %180 ], [ %145, %144 ]
  %185 = call i8* @strrchr(i8* noundef nonnull %105, i32 noundef 47) #36, !dbg !1541
  call void @llvm.dbg.value(metadata i8* %185, metadata !1395, metadata !DIExpression()) #35, !dbg !1542
  %186 = icmp eq i8* %185, null, !dbg !1543
  br i1 %186, label %187, label %188, !dbg !1545

187:                                              ; preds = %183
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %138) #35, !dbg !1546
  br label %198

188:                                              ; preds = %183
  %189 = icmp eq i8* %185, %105, !dbg !1547
  br i1 %189, label %190, label %193, !dbg !1549

190:                                              ; preds = %188
  %191 = load i8, i8* %141, align 1, !dbg !1550, !tbaa !787
  %192 = icmp eq i8 %191, 0, !dbg !1550
  br i1 %192, label %193, label %194, !dbg !1551

193:                                              ; preds = %190, %188
  br label %194

194:                                              ; preds = %193, %190
  %195 = phi i8* [ %185, %193 ], [ %141, %190 ]
  store i8 0, i8* %195, align 1, !dbg !1552, !tbaa !787
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %138) #35, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %184, metadata !1331, metadata !DIExpression()) #35, !dbg !1396
  %196 = load i8, i8* %105, align 1, !dbg !1500, !tbaa !787
  %197 = icmp eq i8 %196, 0, !dbg !1499
  br i1 %197, label %198, label %144, !dbg !1501

198:                                              ; preds = %194, %187, %135, %132
  %199 = phi i8* [ %130, %187 ], [ null, %132 ], [ %130, %135 ], [ %130, %194 ]
  %200 = phi i64 [ %184, %187 ], [ -1, %132 ], [ -1, %135 ], [ %184, %194 ], !dbg !1396
  %201 = bitcast i8** %4 to i8*
  %202 = bitcast i64* %5 to i8*
  call void @llvm.dbg.value(metadata i64 %200, metadata !1331, metadata !DIExpression()) #35, !dbg !1396
  %203 = load i8*, i8** %4, align 8, !dbg !1553, !tbaa !690
  call void @llvm.dbg.value(metadata i8* %203, metadata !1381, metadata !DIExpression()) #35, !dbg !1396
  call void @free(i8* noundef %203) #35, !dbg !1554
  call void @free(i8* noundef %199) #35, !dbg !1555
  %204 = load i8*, i8** %2, align 8, !dbg !1556, !tbaa !690
  call void @llvm.dbg.value(metadata i8* %204, metadata !1370, metadata !DIExpression()) #35, !dbg !1396
  call void @free(i8* noundef %204) #35, !dbg !1557
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %202) #35, !dbg !1558
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %201) #35, !dbg !1558
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86) #35, !dbg !1558
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #35, !dbg !1558
  br label %210

205:                                              ; preds = %77
  %206 = trunc i32 %79 to i8, !dbg !1330
  %207 = lshr i8 -115, %206, !dbg !1330
  %208 = and i8 %207, 1, !dbg !1330
  %209 = icmp eq i8 %208, 0, !dbg !1330
  br i1 %209, label %81, label %210, !dbg !1330

210:                                              ; preds = %205, %81, %198
  %211 = phi i64 [ %200, %198 ], [ -1, %81 ], [ -1, %205 ], !dbg !1559
  call void @llvm.dbg.value(metadata i64 %211, metadata !1322, metadata !DIExpression()) #35, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %211, metadata !1238, metadata !DIExpression()), !dbg !1560
  %212 = icmp ult i64 %211, %72, !dbg !1561
  %213 = select i1 %212, i64 %211, i64 %72, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %213, metadata !1233, metadata !DIExpression()), !dbg !1244
  br label %214, !dbg !1562

214:                                              ; preds = %210, %71
  %215 = phi i64 [ %213, %210 ], [ %72, %71 ], !dbg !1244
  call void @llvm.dbg.value(metadata i64 %215, metadata !1233, metadata !DIExpression()), !dbg !1244
  %216 = icmp ugt i64 %215, 1, !dbg !1563
  br i1 %216, label %217, label %239, !dbg !1564

217:                                              ; preds = %214
  call void @llvm.dbg.value(metadata i32 %73, metadata !1565, metadata !DIExpression()) #35, !dbg !1580
  br i1 %74, label %218, label %224, !dbg !1582

218:                                              ; preds = %217
  %219 = call fastcc i64 @num_processors_via_affinity_mask() #35, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %219, metadata !1568, metadata !DIExpression()) #35, !dbg !1584
  %220 = icmp eq i64 %219, 0, !dbg !1585
  br i1 %220, label %221, label %235

221:                                              ; preds = %218
  %222 = call i64 @sysconf(i32 noundef 84) #35, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %222, metadata !1572, metadata !DIExpression()) #35, !dbg !1588
  %223 = icmp slt i64 %222, 1, !dbg !1589
  br i1 %223, label %234, label %235

224:                                              ; preds = %217
  %225 = call i64 @sysconf(i32 noundef 83) #35, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %225, metadata !1574, metadata !DIExpression()) #35, !dbg !1592
  %226 = add i64 %225, -1, !dbg !1593
  %227 = icmp ult i64 %226, 2, !dbg !1593
  br i1 %227, label %228, label %231, !dbg !1593

228:                                              ; preds = %224
  %229 = call fastcc i64 @num_processors_via_affinity_mask() #35, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %229, metadata !1577, metadata !DIExpression()) #35, !dbg !1595
  %230 = icmp ugt i64 %229, %225, !dbg !1596
  call void @llvm.dbg.value(metadata i64 undef, metadata !1574, metadata !DIExpression()) #35, !dbg !1592
  br i1 %230, label %231, label %235, !dbg !1595

231:                                              ; preds = %228, %224
  %232 = phi i64 [ %225, %224 ], [ %229, %228 ], !dbg !1592
  call void @llvm.dbg.value(metadata i64 %232, metadata !1574, metadata !DIExpression()) #35, !dbg !1592
  %233 = icmp slt i64 %232, 1, !dbg !1598
  br i1 %233, label %234, label %235

234:                                              ; preds = %231, %221
  br label %235, !dbg !1600

235:                                              ; preds = %218, %221, %228, %231, %234
  %236 = phi i64 [ %219, %218 ], [ %222, %221 ], [ 1, %234 ], [ %232, %231 ], [ %225, %228 ], !dbg !1580
  call void @llvm.dbg.value(metadata i64 %236, metadata !1241, metadata !DIExpression()), !dbg !1601
  %237 = icmp ult i64 %236, %215, !dbg !1602
  %238 = select i1 %237, i64 %236, i64 %215, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %238, metadata !1233, metadata !DIExpression()), !dbg !1244
  br label %239, !dbg !1603

239:                                              ; preds = %214, %235, %66
  %240 = phi i64 [ %70, %66 ], [ %238, %235 ], [ %215, %214 ], !dbg !1244
  ret i64 %240, !dbg !1604
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare !dbg !1605 i32 @sched_getscheduler(i32 noundef) local_unnamed_addr #2

declare i64 @__getdelim(i8** noundef, i64* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1610 noundef i32 @access(i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias i8* @strdup(i8* nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nounwind
declare !dbg !1614 %struct._IO_FILE* @setmntent(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1617 %struct.mntent* @getmntent(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1620 i32 @endmntent(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__snprintf_chk(i8* noundef, i64 noundef, i32 noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define internal fastcc i64 @num_processors_via_affinity_mask() unnamed_addr #12 !dbg !1623 {
  %1 = alloca %struct.cpu_set_t, align 8
  call void @llvm.dbg.value(metadata i32 1024, metadata !1625, metadata !DIExpression()), !dbg !1650
  br label %2, !dbg !1651

2:                                                ; preds = %14, %0
  %3 = phi i32 [ 1024, %0 ], [ %18, %14 ], !dbg !1652
  call void @llvm.dbg.value(metadata i32 %3, metadata !1625, metadata !DIExpression()), !dbg !1650
  %4 = zext i32 %3 to i64, !dbg !1653
  %5 = tail call %struct.cpu_set_t* @__sched_cpualloc(i64 noundef %4) #35, !dbg !1653
  call void @llvm.dbg.value(metadata %struct.cpu_set_t* %5, metadata !1627, metadata !DIExpression()), !dbg !1654
  %6 = icmp eq %struct.cpu_set_t* %5, null, !dbg !1655
  br i1 %6, label %21, label %7, !dbg !1657

7:                                                ; preds = %2
  %8 = lshr exact i64 %4, 3, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %8, metadata !1641, metadata !DIExpression()), !dbg !1654
  %9 = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef %8, %struct.cpu_set_t* noundef nonnull %5) #35, !dbg !1659
  %10 = icmp eq i32 %9, 0, !dbg !1660
  br i1 %10, label %11, label %14, !dbg !1661

11:                                               ; preds = %7
  %12 = tail call i32 @__sched_cpucount(i64 noundef %8, %struct.cpu_set_t* noundef nonnull %5) #35, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %12, metadata !1642, metadata !DIExpression()), !dbg !1663
  tail call void @__sched_cpufree(%struct.cpu_set_t* noundef nonnull %5) #35, !dbg !1664
  %13 = zext i32 %12 to i64, !dbg !1665
  br label %31

14:                                               ; preds = %7
  %15 = tail call i32* @__errno_location() #38, !dbg !1666
  %16 = load i32, i32* %15, align 4, !dbg !1666, !tbaa !778
  %17 = icmp ne i32 %16, 22, !dbg !1668
  tail call void @__sched_cpufree(%struct.cpu_set_t* noundef nonnull %5) #35, !dbg !1654
  %18 = shl i32 %3, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %18, metadata !1625, metadata !DIExpression()), !dbg !1650
  br i1 %20, label %31, label %2, !dbg !1669

21:                                               ; preds = %2
  %22 = bitcast %struct.cpu_set_t* %1 to i8*, !dbg !1670
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %22) #35, !dbg !1670
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t* %1, metadata !1645, metadata !DIExpression()), !dbg !1671
  %23 = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, %struct.cpu_set_t* noundef nonnull %1) #35, !dbg !1672
  %24 = icmp eq i32 %23, 0, !dbg !1673
  br i1 %24, label %25, label %30, !dbg !1674

25:                                               ; preds = %21
  %26 = call i32 @__sched_cpucount(i64 noundef 128, %struct.cpu_set_t* noundef nonnull %1) #35, !dbg !1675
  call void @llvm.dbg.value(metadata i32 %26, metadata !1647, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1676
  %27 = icmp eq i32 %26, 0, !dbg !1677
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = sext i32 %26 to i64, !dbg !1679
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22) #35, !dbg !1680
  br label %31

30:                                               ; preds = %21, %25
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22) #35, !dbg !1680
  br label %31

31:                                               ; preds = %14, %30, %28, %11
  %32 = phi i64 [ %13, %11 ], [ 0, %30 ], [ %29, %28 ], [ 0, %14 ]
  ret i64 %32, !dbg !1681
}

; Function Attrs: nounwind
declare !dbg !1682 i64 @sysconf(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct.cpu_set_t* @__sched_cpualloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1685 i32 @sched_getaffinity(i32 noundef, i64 noundef, %struct.cpu_set_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64 noundef, %struct.cpu_set_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__sched_cpufree(%struct.cpu_set_t* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #22 !dbg !1688 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1690, metadata !DIExpression()), !dbg !1693
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !1694
  call void @llvm.dbg.value(metadata i8* %2, metadata !1691, metadata !DIExpression()), !dbg !1693
  %3 = icmp eq i8* %2, null, !dbg !1695
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1695
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1695
  call void @llvm.dbg.value(metadata i8* %5, metadata !1692, metadata !DIExpression()), !dbg !1693
  %6 = ptrtoint i8* %5 to i64, !dbg !1696
  %7 = ptrtoint i8* %0 to i64, !dbg !1696
  %8 = sub i64 %6, %7, !dbg !1696
  %9 = icmp sgt i64 %8, 6, !dbg !1698
  br i1 %9, label %10, label %19, !dbg !1699

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1700
  call void @llvm.dbg.value(metadata i8* %11, metadata !1701, metadata !DIExpression()) #35, !dbg !1708
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), metadata !1706, metadata !DIExpression()) #35, !dbg !1708
  call void @llvm.dbg.value(metadata i64 7, metadata !1707, metadata !DIExpression()) #35, !dbg !1708
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), i64 7) #35, !dbg !1710
  %13 = icmp eq i32 %12, 0, !dbg !1711
  br i1 %13, label %14, label %19, !dbg !1712

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1690, metadata !DIExpression()), !dbg !1693
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.72, i64 0, i64 0), i64 noundef 3) #36, !dbg !1713
  %16 = icmp eq i32 %15, 0, !dbg !1716
  %17 = select i1 %16, i64 3, i64 0, !dbg !1717
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1717
  br label %19, !dbg !1717

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1693
  call void @llvm.dbg.value(metadata i8* %21, metadata !1692, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8* %20, metadata !1690, metadata !DIExpression()), !dbg !1693
  store i8* %20, i8** @program_name, align 8, !dbg !1718, !tbaa !690
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1719, !tbaa !690
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1720, !tbaa !690
  ret void, !dbg !1721
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !207 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !214, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i8* %1, metadata !215, metadata !DIExpression()), !dbg !1722
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !1723
  call void @llvm.dbg.value(metadata i8* %5, metadata !216, metadata !DIExpression()), !dbg !1722
  %6 = icmp eq i8* %5, %0, !dbg !1724
  br i1 %6, label %7, label %17, !dbg !1726

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1727
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1727
  %10 = bitcast i64* %4 to i8*, !dbg !1728
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1728
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !222, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1730, metadata !DIExpression()) #35, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %10, metadata !1739, metadata !DIExpression()) #35, !dbg !1747
  call void @llvm.dbg.value(metadata i32 0, metadata !1745, metadata !DIExpression()) #35, !dbg !1747
  call void @llvm.dbg.value(metadata i64 8, metadata !1746, metadata !DIExpression()) #35, !dbg !1747
  store i64 0, i64* %4, align 8, !dbg !1749
  call void @llvm.dbg.value(metadata i32* %3, metadata !217, metadata !DIExpression(DW_OP_deref)), !dbg !1722
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !1750
  %12 = icmp eq i64 %11, 2, !dbg !1752
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !217, metadata !DIExpression()), !dbg !1722
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1753
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1722
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1754
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1754
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1722
  ret i8* %18, !dbg !1754
}

; Function Attrs: nounwind
declare !dbg !1755 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1761 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1766, metadata !DIExpression()), !dbg !1769
  %2 = tail call i32* @__errno_location() #38, !dbg !1770
  %3 = load i32, i32* %2, align 4, !dbg !1770, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %3, metadata !1767, metadata !DIExpression()), !dbg !1769
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1771
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1771
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1771
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !1772
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1768, metadata !DIExpression()), !dbg !1769
  store i32 %3, i32* %2, align 4, !dbg !1773, !tbaa !778
  ret %struct.quoting_options* %8, !dbg !1774
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1775 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1781, metadata !DIExpression()), !dbg !1782
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1783
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1783
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1784
  %5 = load i32, i32* %4, align 8, !dbg !1784, !tbaa !1785
  ret i32 %5, !dbg !1787
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1788 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1792, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i32 %1, metadata !1793, metadata !DIExpression()), !dbg !1794
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1795
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1795
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1796
  store i32 %1, i32* %5, align 8, !dbg !1797, !tbaa !1785
  ret void, !dbg !1798
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1799 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1803, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %1, metadata !1804, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i32 %2, metadata !1805, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 %1, metadata !1806, metadata !DIExpression()), !dbg !1811
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1812
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1812
  %6 = lshr i8 %1, 5, !dbg !1813
  %7 = zext i8 %6 to i64, !dbg !1813
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1814
  call void @llvm.dbg.value(metadata i32* %8, metadata !1807, metadata !DIExpression()), !dbg !1811
  %9 = and i8 %1, 31, !dbg !1815
  %10 = zext i8 %9 to i32, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %10, metadata !1809, metadata !DIExpression()), !dbg !1811
  %11 = load i32, i32* %8, align 4, !dbg !1816, !tbaa !778
  %12 = lshr i32 %11, %10, !dbg !1817
  %13 = and i32 %12, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i32 %13, metadata !1810, metadata !DIExpression()), !dbg !1811
  %14 = and i32 %2, 1, !dbg !1819
  %15 = xor i32 %13, %14, !dbg !1820
  %16 = shl i32 %15, %10, !dbg !1821
  %17 = xor i32 %16, %11, !dbg !1822
  store i32 %17, i32* %8, align 4, !dbg !1822, !tbaa !778
  ret i32 %13, !dbg !1823
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1824 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1828, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i32 %1, metadata !1829, metadata !DIExpression()), !dbg !1831
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1832
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1834
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1828, metadata !DIExpression()), !dbg !1831
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1835
  %6 = load i32, i32* %5, align 4, !dbg !1835, !tbaa !1836
  call void @llvm.dbg.value(metadata i32 %6, metadata !1830, metadata !DIExpression()), !dbg !1831
  store i32 %1, i32* %5, align 4, !dbg !1837, !tbaa !1836
  ret i32 %6, !dbg !1838
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1839 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1843, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %1, metadata !1844, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %2, metadata !1845, metadata !DIExpression()), !dbg !1846
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1847
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1843, metadata !DIExpression()), !dbg !1846
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1850
  store i32 10, i32* %6, align 8, !dbg !1851, !tbaa !1785
  %7 = icmp ne i8* %1, null, !dbg !1852
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1854
  br i1 %9, label %11, label %10, !dbg !1854

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !1855
  unreachable, !dbg !1855

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1856
  store i8* %1, i8** %12, align 8, !dbg !1857, !tbaa !1858
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1859
  store i8* %2, i8** %13, align 8, !dbg !1860, !tbaa !1861
  ret void, !dbg !1862
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1863 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1867, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %1, metadata !1868, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8* %2, metadata !1869, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %3, metadata !1870, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1871, metadata !DIExpression()), !dbg !1875
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1876
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1876
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1872, metadata !DIExpression()), !dbg !1875
  %8 = tail call i32* @__errno_location() #38, !dbg !1877
  %9 = load i32, i32* %8, align 4, !dbg !1877, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %9, metadata !1873, metadata !DIExpression()), !dbg !1875
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1878
  %11 = load i32, i32* %10, align 8, !dbg !1878, !tbaa !1785
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1879
  %13 = load i32, i32* %12, align 4, !dbg !1879, !tbaa !1836
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1880
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1881
  %16 = load i8*, i8** %15, align 8, !dbg !1881, !tbaa !1858
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1882
  %18 = load i8*, i8** %17, align 8, !dbg !1882, !tbaa !1861
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1883
  call void @llvm.dbg.value(metadata i64 %19, metadata !1874, metadata !DIExpression()), !dbg !1875
  store i32 %9, i32* %8, align 4, !dbg !1884, !tbaa !778
  ret i64 %19, !dbg !1885
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1886 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1892, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %1, metadata !1893, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %2, metadata !1894, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %3, metadata !1895, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 %4, metadata !1896, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 %5, metadata !1897, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32* %6, metadata !1898, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %7, metadata !1899, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %8, metadata !1900, metadata !DIExpression()), !dbg !1954
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !1955
  %18 = icmp eq i64 %17, 1, !dbg !1956
  call void @llvm.dbg.value(metadata i1 %18, metadata !1901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !1903, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* null, metadata !1904, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !1905, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1906, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 %5, metadata !1907, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1908, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 1, metadata !1909, metadata !DIExpression()), !dbg !1954
  %19 = and i32 %5, 2, !dbg !1957
  %20 = icmp ne i32 %19, 0, !dbg !1957
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
  br label %36, !dbg !1957

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1958
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1959
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1960
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1893, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1909, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1908, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1907, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1906, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %43, metadata !1905, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %42, metadata !1904, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %41, metadata !1903, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %40, metadata !1895, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %39, metadata !1900, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %38, metadata !1899, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 %37, metadata !1896, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.label(metadata !1947), !dbg !1961
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1954
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
  ], !dbg !1962

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1907, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 5, metadata !1896, metadata !DIExpression()), !dbg !1954
  br label %111, !dbg !1963

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1907, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 5, metadata !1896, metadata !DIExpression()), !dbg !1954
  br i1 %45, label %111, label %51, !dbg !1963

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1964
  br i1 %52, label %111, label %53, !dbg !1968

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1964, !tbaa !787
  br label %111, !dbg !1964

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), metadata !298, metadata !DIExpression()) #35, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %37, metadata !299, metadata !DIExpression()) #35, !dbg !1969
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), i32 noundef 5) #35, !dbg !1973
  call void @llvm.dbg.value(metadata i8* %55, metadata !300, metadata !DIExpression()) #35, !dbg !1969
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), !dbg !1974
  br i1 %56, label %57, label %66, !dbg !1976

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !1977
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !1978
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !302, metadata !DIExpression()) #35, !dbg !1979
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1980, metadata !DIExpression()) #35, !dbg !1986
  call void @llvm.dbg.value(metadata i8* %23, metadata !1988, metadata !DIExpression()) #35, !dbg !1993
  call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()) #35, !dbg !1993
  call void @llvm.dbg.value(metadata i64 8, metadata !1992, metadata !DIExpression()) #35, !dbg !1993
  store i64 0, i64* %13, align 8, !dbg !1995
  call void @llvm.dbg.value(metadata i32* %12, metadata !301, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1969
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !1996
  %59 = icmp eq i64 %58, 3, !dbg !1998
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !301, metadata !DIExpression()) #35, !dbg !1969
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1999
  %63 = icmp eq i32 %37, 9, !dbg !1999
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !1999
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1999
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2000
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2000
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1969
  call void @llvm.dbg.value(metadata i8* %67, metadata !1899, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), metadata !298, metadata !DIExpression()) #35, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %37, metadata !299, metadata !DIExpression()) #35, !dbg !2001
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), i32 noundef 5) #35, !dbg !2003
  call void @llvm.dbg.value(metadata i8* %68, metadata !300, metadata !DIExpression()) #35, !dbg !2001
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !2004
  br i1 %69, label %70, label %79, !dbg !2005

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2006
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2007
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !302, metadata !DIExpression()) #35, !dbg !2008
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1980, metadata !DIExpression()) #35, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %26, metadata !1988, metadata !DIExpression()) #35, !dbg !2011
  call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()) #35, !dbg !2011
  call void @llvm.dbg.value(metadata i64 8, metadata !1992, metadata !DIExpression()) #35, !dbg !2011
  store i64 0, i64* %11, align 8, !dbg !2013
  call void @llvm.dbg.value(metadata i32* %10, metadata !301, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2001
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !2014
  %72 = icmp eq i64 %71, 3, !dbg !2015
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !301, metadata !DIExpression()) #35, !dbg !2001
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2016
  %76 = icmp eq i32 %37, 9, !dbg !2016
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !2016
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2016
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2017
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2017
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1900, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %80, metadata !1899, metadata !DIExpression()), !dbg !1954
  br i1 %45, label %97, label %82, !dbg !2018

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1911, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 0, metadata !1902, metadata !DIExpression()), !dbg !1954
  %83 = load i8, i8* %80, align 1, !dbg !2020, !tbaa !787
  %84 = icmp eq i8 %83, 0, !dbg !2022
  br i1 %84, label %97, label %85, !dbg !2022

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1911, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i64 %88, metadata !1902, metadata !DIExpression()), !dbg !1954
  %89 = icmp ult i64 %88, %48, !dbg !2023
  br i1 %89, label %90, label %92, !dbg !2026

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2023
  store i8 %86, i8* %91, align 1, !dbg !2023, !tbaa !787
  br label %92, !dbg !2023

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %93, metadata !1902, metadata !DIExpression()), !dbg !1954
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2027
  call void @llvm.dbg.value(metadata i8* %94, metadata !1911, metadata !DIExpression()), !dbg !2019
  %95 = load i8, i8* %94, align 1, !dbg !2020, !tbaa !787
  %96 = icmp eq i8 %95, 0, !dbg !2022
  br i1 %96, label %97, label %85, !dbg !2022, !llvm.loop !2028

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2030
  call void @llvm.dbg.value(metadata i64 %98, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 1, metadata !1906, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %81, metadata !1904, metadata !DIExpression()), !dbg !1954
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %99, metadata !1905, metadata !DIExpression()), !dbg !1954
  br label %111, !dbg !2032

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1906, metadata !DIExpression()), !dbg !1954
  br label %102, !dbg !2033

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1907, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1906, metadata !DIExpression()), !dbg !1954
  br i1 %45, label %102, label %105, !dbg !2034

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1907, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1906, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 2, metadata !1896, metadata !DIExpression()), !dbg !1954
  br label %111, !dbg !2035

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1907, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1906, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 2, metadata !1896, metadata !DIExpression()), !dbg !1954
  br i1 %45, label %111, label %105, !dbg !2035

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2036
  br i1 %107, label %111, label %108, !dbg !2040

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2036, !tbaa !787
  br label %111, !dbg !2036

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1907, metadata !DIExpression()), !dbg !1954
  br label %111, !dbg !2041

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2042
  unreachable, !dbg !2042

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2030
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %102 ], !dbg !1954
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1954
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1907, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1906, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %117, metadata !1905, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %116, metadata !1904, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %115, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %114, metadata !1900, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %113, metadata !1899, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 %112, metadata !1896, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !2043
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
  br label %132, !dbg !2044

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2030
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1958
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2043
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1893, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %139, metadata !1916, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1909, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1908, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %135, metadata !1903, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %134, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %133, metadata !1895, metadata !DIExpression()), !dbg !1954
  %141 = icmp eq i64 %133, -1, !dbg !2045
  br i1 %141, label %142, label %146, !dbg !2046

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2047
  %144 = load i8, i8* %143, align 1, !dbg !2047, !tbaa !787
  %145 = icmp eq i8 %144, 0, !dbg !2048
  br i1 %145, label %596, label %148, !dbg !2049

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2050
  br i1 %147, label %596, label %148, !dbg !2049

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1918, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 0, metadata !1921, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 0, metadata !1922, metadata !DIExpression()), !dbg !2051
  br i1 %123, label %149, label %163, !dbg !2052

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2054
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2055
  br i1 %151, label %152, label %154, !dbg !2055

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %153, metadata !1895, metadata !DIExpression()), !dbg !1954
  br label %154, !dbg !2057

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2057
  call void @llvm.dbg.value(metadata i64 %155, metadata !1895, metadata !DIExpression()), !dbg !1954
  %156 = icmp ugt i64 %150, %155, !dbg !2058
  br i1 %156, label %163, label %157, !dbg !2059

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2060
  call void @llvm.dbg.value(metadata i8* %158, metadata !2061, metadata !DIExpression()) #35, !dbg !2066
  call void @llvm.dbg.value(metadata i8* %116, metadata !2064, metadata !DIExpression()) #35, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %117, metadata !2065, metadata !DIExpression()) #35, !dbg !2066
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2068
  %160 = icmp ne i32 %159, 0, !dbg !2069
  %161 = or i1 %160, %125, !dbg !2070
  %162 = xor i1 %160, true, !dbg !2070
  br i1 %161, label %163, label %647, !dbg !2070

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1918, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %164, metadata !1895, metadata !DIExpression()), !dbg !1954
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2071
  %167 = load i8, i8* %166, align 1, !dbg !2071, !tbaa !787
  call void @llvm.dbg.value(metadata i8 %167, metadata !1923, metadata !DIExpression()), !dbg !2051
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
  ], !dbg !2072

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2073

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2074

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1921, metadata !DIExpression()), !dbg !2051
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2078
  br i1 %171, label %188, label %172, !dbg !2078

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2080
  br i1 %173, label %174, label %176, !dbg !2084

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2080
  store i8 39, i8* %175, align 1, !dbg !2080, !tbaa !787
  br label %176, !dbg !2080

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %177, metadata !1902, metadata !DIExpression()), !dbg !1954
  %178 = icmp ult i64 %177, %140, !dbg !2085
  br i1 %178, label %179, label %181, !dbg !2088

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2085
  store i8 36, i8* %180, align 1, !dbg !2085, !tbaa !787
  br label %181, !dbg !2085

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %182, metadata !1902, metadata !DIExpression()), !dbg !1954
  %183 = icmp ult i64 %182, %140, !dbg !2089
  br i1 %183, label %184, label %186, !dbg !2092

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2089
  store i8 39, i8* %185, align 1, !dbg !2089, !tbaa !787
  br label %186, !dbg !2089

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %187, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 1, metadata !1910, metadata !DIExpression()), !dbg !1954
  br label %188, !dbg !2093

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1954
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %189, metadata !1902, metadata !DIExpression()), !dbg !1954
  %191 = icmp ult i64 %189, %140, !dbg !2094
  br i1 %191, label %192, label %194, !dbg !2097

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2094
  store i8 92, i8* %193, align 1, !dbg !2094, !tbaa !787
  br label %194, !dbg !2094

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %195, metadata !1902, metadata !DIExpression()), !dbg !1954
  br i1 %120, label %196, label %499, !dbg !2098

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2100
  %198 = icmp ult i64 %197, %164, !dbg !2101
  br i1 %198, label %199, label %456, !dbg !2102

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2103
  %201 = load i8, i8* %200, align 1, !dbg !2103, !tbaa !787
  %202 = add i8 %201, -48, !dbg !2104
  %203 = icmp ult i8 %202, 10, !dbg !2104
  br i1 %203, label %204, label %456, !dbg !2104

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2105
  br i1 %205, label %206, label %208, !dbg !2109

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2105
  store i8 48, i8* %207, align 1, !dbg !2105, !tbaa !787
  br label %208, !dbg !2105

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %209, metadata !1902, metadata !DIExpression()), !dbg !1954
  %210 = icmp ult i64 %209, %140, !dbg !2110
  br i1 %210, label %211, label %213, !dbg !2113

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2110
  store i8 48, i8* %212, align 1, !dbg !2110, !tbaa !787
  br label %213, !dbg !2110

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %214, metadata !1902, metadata !DIExpression()), !dbg !1954
  br label %456, !dbg !2114

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2115

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2116

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2117

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2119

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2121
  %221 = icmp ult i64 %220, %164, !dbg !2122
  br i1 %221, label %222, label %456, !dbg !2123

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2124
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2125
  %225 = load i8, i8* %224, align 1, !dbg !2125, !tbaa !787
  %226 = icmp eq i8 %225, 63, !dbg !2126
  br i1 %226, label %227, label %456, !dbg !2127

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2128
  %229 = load i8, i8* %228, align 1, !dbg !2128, !tbaa !787
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
  ], !dbg !2129

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2130

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1923, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %220, metadata !1916, metadata !DIExpression()), !dbg !2043
  %232 = icmp ult i64 %134, %140, !dbg !2132
  br i1 %232, label %233, label %235, !dbg !2135

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2132
  store i8 63, i8* %234, align 1, !dbg !2132, !tbaa !787
  br label %235, !dbg !2132

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %236, metadata !1902, metadata !DIExpression()), !dbg !1954
  %237 = icmp ult i64 %236, %140, !dbg !2136
  br i1 %237, label %238, label %240, !dbg !2139

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2136
  store i8 34, i8* %239, align 1, !dbg !2136, !tbaa !787
  br label %240, !dbg !2136

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %241, metadata !1902, metadata !DIExpression()), !dbg !1954
  %242 = icmp ult i64 %241, %140, !dbg !2140
  br i1 %242, label %243, label %245, !dbg !2143

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2140
  store i8 34, i8* %244, align 1, !dbg !2140, !tbaa !787
  br label %245, !dbg !2140

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %246, metadata !1902, metadata !DIExpression()), !dbg !1954
  %247 = icmp ult i64 %246, %140, !dbg !2144
  br i1 %247, label %248, label %250, !dbg !2147

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2144
  store i8 63, i8* %249, align 1, !dbg !2144, !tbaa !787
  br label %250, !dbg !2144

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %251, metadata !1902, metadata !DIExpression()), !dbg !1954
  br label %456, !dbg !2148

252:                                              ; preds = %163
  br label %263, !dbg !2149

253:                                              ; preds = %163
  br label %263, !dbg !2150

254:                                              ; preds = %163
  br label %261, !dbg !2151

255:                                              ; preds = %163
  br label %261, !dbg !2152

256:                                              ; preds = %163
  br label %263, !dbg !2153

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2154

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2155

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2158

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2160

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2161
  call void @llvm.dbg.label(metadata !1948), !dbg !2162
  br i1 %128, label %263, label %638, !dbg !2163

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2161
  call void @llvm.dbg.label(metadata !1950), !dbg !2165
  br i1 %118, label %510, label %467, !dbg !2166

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2167

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2168, !tbaa !787
  %268 = icmp eq i8 %267, 0, !dbg !2170
  br i1 %268, label %269, label %456, !dbg !2171

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2172
  br i1 %270, label %271, label %456, !dbg !2174

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1922, metadata !DIExpression()), !dbg !2051
  br label %272, !dbg !2175

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1922, metadata !DIExpression()), !dbg !2051
  br i1 %126, label %274, label %456, !dbg !2176

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2178

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1908, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 1, metadata !1922, metadata !DIExpression()), !dbg !2051
  br i1 %126, label %276, label %456, !dbg !2179

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2180

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2183
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2185
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2185
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %282, metadata !1893, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %281, metadata !1903, metadata !DIExpression()), !dbg !1954
  %283 = icmp ult i64 %134, %282, !dbg !2186
  br i1 %283, label %284, label %286, !dbg !2189

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2186
  store i8 39, i8* %285, align 1, !dbg !2186, !tbaa !787
  br label %286, !dbg !2186

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %287, metadata !1902, metadata !DIExpression()), !dbg !1954
  %288 = icmp ult i64 %287, %282, !dbg !2190
  br i1 %288, label %289, label %291, !dbg !2193

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2190
  store i8 92, i8* %290, align 1, !dbg !2190, !tbaa !787
  br label %291, !dbg !2190

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %292, metadata !1902, metadata !DIExpression()), !dbg !1954
  %293 = icmp ult i64 %292, %282, !dbg !2194
  br i1 %293, label %294, label %296, !dbg !2197

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2194
  store i8 39, i8* %295, align 1, !dbg !2194, !tbaa !787
  br label %296, !dbg !2194

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %297, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1954
  br label %456, !dbg !2198

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2199

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1924, metadata !DIExpression()), !dbg !2200
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2201
  %301 = load i16*, i16** %300, align 8, !dbg !2201, !tbaa !690
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2201
  %304 = load i16, i16* %303, align 2, !dbg !2201, !tbaa !812
  %305 = and i16 %304, 16384, !dbg !2201
  %306 = icmp ne i16 %305, 0, !dbg !2203
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %349, metadata !1924, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %312, metadata !1895, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i1 %350, metadata !1922, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2051
  br label %352, !dbg !2204

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2205
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1928, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1980, metadata !DIExpression()) #35, !dbg !2207
  call void @llvm.dbg.value(metadata i8* %32, metadata !1988, metadata !DIExpression()) #35, !dbg !2209
  call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()) #35, !dbg !2209
  call void @llvm.dbg.value(metadata i64 8, metadata !1992, metadata !DIExpression()) #35, !dbg !2209
  store i64 0, i64* %14, align 8, !dbg !2211
  call void @llvm.dbg.value(metadata i64 0, metadata !1924, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 1, metadata !1927, metadata !DIExpression()), !dbg !2200
  %308 = icmp eq i64 %164, -1, !dbg !2212
  br i1 %308, label %309, label %311, !dbg !2214

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %310, metadata !1895, metadata !DIExpression()), !dbg !1954
  br label %311, !dbg !2216

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2051
  call void @llvm.dbg.value(metadata i64 %312, metadata !1895, metadata !DIExpression()), !dbg !1954
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2217
  %313 = sub i64 %312, %139, !dbg !2218
  call void @llvm.dbg.value(metadata i32* %16, metadata !1931, metadata !DIExpression(DW_OP_deref)), !dbg !2219
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %314, metadata !1935, metadata !DIExpression()), !dbg !2219
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2221

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1924, metadata !DIExpression()), !dbg !2200
  %316 = icmp ugt i64 %312, %139, !dbg !2222
  br i1 %316, label %319, label %317, !dbg !2224

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 0, metadata !1924, metadata !DIExpression()), !dbg !2200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %349, metadata !1924, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %312, metadata !1895, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i1 %350, metadata !1922, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2051
  br label %352, !dbg !2204

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1927, metadata !DIExpression()), !dbg !2200
  br label %346, !dbg !2227

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1924, metadata !DIExpression()), !dbg !2200
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2229
  %323 = load i8, i8* %322, align 1, !dbg !2229, !tbaa !787
  %324 = icmp eq i8 %323, 0, !dbg !2224
  br i1 %324, label %348, label %325, !dbg !2230

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %326, metadata !1924, metadata !DIExpression()), !dbg !2200
  %327 = add i64 %326, %139, !dbg !2232
  %328 = icmp eq i64 %326, %313, !dbg !2222
  br i1 %328, label %348, label %319, !dbg !2224, !llvm.loop !2233

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2234
  call void @llvm.dbg.value(metadata i64 1, metadata !1936, metadata !DIExpression()), !dbg !2235
  br i1 %331, label %332, label %340, !dbg !2234

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1936, metadata !DIExpression()), !dbg !2235
  %334 = add i64 %333, %139, !dbg !2236
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2238
  %336 = load i8, i8* %335, align 1, !dbg !2238, !tbaa !787
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2239

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %338, metadata !1936, metadata !DIExpression()), !dbg !2235
  %339 = icmp eq i64 %338, %314, !dbg !2241
  br i1 %339, label %340, label %332, !dbg !2242, !llvm.loop !2243

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2245, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %341, metadata !1931, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i32 %341, metadata !2247, metadata !DIExpression()) #35, !dbg !2255
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2257
  %343 = icmp ne i32 %342, 0, !dbg !2258
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %314, metadata !1924, metadata !DIExpression()), !dbg !2200
  br label %348, !dbg !2259

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 0, metadata !1924, metadata !DIExpression()), !dbg !2200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2226
  call void @llvm.dbg.label(metadata !1953), !dbg !2260
  %345 = select i1 %118, i32 4, i32 2, !dbg !2261
  br label %643, !dbg !2261

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 0, metadata !1924, metadata !DIExpression()), !dbg !2200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %349, metadata !1924, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %312, metadata !1895, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i1 %350, metadata !1922, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2051
  br label %352, !dbg !2204

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 0, metadata !1924, metadata !DIExpression()), !dbg !2200
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %349, metadata !1924, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %312, metadata !1895, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i1 %350, metadata !1922, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2051
  %351 = icmp ugt i64 %349, 1, !dbg !2263
  br i1 %351, label %357, label %352, !dbg !2204

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2264
  br i1 %356, label %456, label %357, !dbg !2264

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %361, metadata !1944, metadata !DIExpression()), !dbg !2266
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2267

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1954
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2043
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2268
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2051
  call void @llvm.dbg.value(metadata i8 %369, metadata !1923, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 %368, metadata !1921, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1918, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %366, metadata !1916, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %364, metadata !1902, metadata !DIExpression()), !dbg !1954
  br i1 %362, label %414, label %370, !dbg !2269

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2274

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1921, metadata !DIExpression()), !dbg !2051
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2277
  br i1 %372, label %389, label %373, !dbg !2277

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2279
  br i1 %374, label %375, label %377, !dbg !2283

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2279
  store i8 39, i8* %376, align 1, !dbg !2279, !tbaa !787
  br label %377, !dbg !2279

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %378, metadata !1902, metadata !DIExpression()), !dbg !1954
  %379 = icmp ult i64 %378, %140, !dbg !2284
  br i1 %379, label %380, label %382, !dbg !2287

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2284
  store i8 36, i8* %381, align 1, !dbg !2284, !tbaa !787
  br label %382, !dbg !2284

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %383, metadata !1902, metadata !DIExpression()), !dbg !1954
  %384 = icmp ult i64 %383, %140, !dbg !2288
  br i1 %384, label %385, label %387, !dbg !2291

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2288
  store i8 39, i8* %386, align 1, !dbg !2288, !tbaa !787
  br label %387, !dbg !2288

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %388, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 1, metadata !1910, metadata !DIExpression()), !dbg !1954
  br label %389, !dbg !2292

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1954
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %390, metadata !1902, metadata !DIExpression()), !dbg !1954
  %392 = icmp ult i64 %390, %140, !dbg !2293
  br i1 %392, label %393, label %395, !dbg !2296

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2293
  store i8 92, i8* %394, align 1, !dbg !2293, !tbaa !787
  br label %395, !dbg !2293

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %396, metadata !1902, metadata !DIExpression()), !dbg !1954
  %397 = icmp ult i64 %396, %140, !dbg !2297
  br i1 %397, label %398, label %402, !dbg !2300

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2297
  %400 = or i8 %399, 48, !dbg !2297
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2297
  store i8 %400, i8* %401, align 1, !dbg !2297, !tbaa !787
  br label %402, !dbg !2297

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %403, metadata !1902, metadata !DIExpression()), !dbg !1954
  %404 = icmp ult i64 %403, %140, !dbg !2301
  br i1 %404, label %405, label %410, !dbg !2304

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2301
  %407 = and i8 %406, 7, !dbg !2301
  %408 = or i8 %407, 48, !dbg !2301
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2301
  store i8 %408, i8* %409, align 1, !dbg !2301, !tbaa !787
  br label %410, !dbg !2301

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %411, metadata !1902, metadata !DIExpression()), !dbg !1954
  %412 = and i8 %369, 7, !dbg !2305
  %413 = or i8 %412, 48, !dbg !2306
  call void @llvm.dbg.value(metadata i8 %413, metadata !1923, metadata !DIExpression()), !dbg !2051
  br label %421, !dbg !2307

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2308

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2309
  br i1 %416, label %417, label %419, !dbg !2314

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2309
  store i8 92, i8* %418, align 1, !dbg !2309, !tbaa !787
  br label %419, !dbg !2309

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %420, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1918, metadata !DIExpression()), !dbg !2051
  br label %421, !dbg !2315

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1954
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2051
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2051
  call void @llvm.dbg.value(metadata i8 %426, metadata !1923, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 %425, metadata !1921, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1918, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %422, metadata !1902, metadata !DIExpression()), !dbg !1954
  %427 = add i64 %366, 1, !dbg !2316
  %428 = icmp ugt i64 %361, %427, !dbg !2318
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2319

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2320
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2320
  br i1 %432, label %433, label %444, !dbg !2320

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2323
  br i1 %434, label %435, label %437, !dbg !2327

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2323
  store i8 39, i8* %436, align 1, !dbg !2323, !tbaa !787
  br label %437, !dbg !2323

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %438, metadata !1902, metadata !DIExpression()), !dbg !1954
  %439 = icmp ult i64 %438, %140, !dbg !2328
  br i1 %439, label %440, label %442, !dbg !2331

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2328
  store i8 39, i8* %441, align 1, !dbg !2328, !tbaa !787
  br label %442, !dbg !2328

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %443, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1954
  br label %444, !dbg !2332

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2333
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %445, metadata !1902, metadata !DIExpression()), !dbg !1954
  %447 = icmp ult i64 %445, %140, !dbg !2334
  br i1 %447, label %448, label %450, !dbg !2337

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2334
  store i8 %426, i8* %449, align 1, !dbg !2334, !tbaa !787
  br label %450, !dbg !2334

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %451, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %427, metadata !1916, metadata !DIExpression()), !dbg !2043
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2338
  %453 = load i8, i8* %452, align 1, !dbg !2338, !tbaa !787
  call void @llvm.dbg.value(metadata i8 %453, metadata !1923, metadata !DIExpression()), !dbg !2051
  br label %363, !dbg !2339, !llvm.loop !2340

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1923, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i1 %358, metadata !1922, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2051
  call void @llvm.dbg.value(metadata i8 %425, metadata !1921, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1918, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %366, metadata !1916, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %422, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %360, metadata !1895, metadata !DIExpression()), !dbg !1954
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2343
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1954
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1958
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2043
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2051
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1893, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %465, metadata !1923, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1922, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1921, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1918, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %462, metadata !1916, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1908, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %459, metadata !1903, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %458, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %457, metadata !1895, metadata !DIExpression()), !dbg !1954
  br i1 %121, label %478, label %467, !dbg !2344

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
  br i1 %131, label %479, label %499, !dbg !2346

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2347

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
  %490 = lshr i8 %481, 5, !dbg !2348
  %491 = zext i8 %490 to i64, !dbg !2348
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2349
  %493 = load i32, i32* %492, align 4, !dbg !2349, !tbaa !778
  %494 = and i8 %481, 31, !dbg !2350
  %495 = zext i8 %494 to i32, !dbg !2350
  %496 = shl nuw i32 1, %495, !dbg !2351
  %497 = and i32 %493, %496, !dbg !2351
  %498 = icmp eq i32 %497, 0, !dbg !2351
  br i1 %498, label %499, label %510, !dbg !2352

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
  br i1 %165, label %510, label %546, !dbg !2353

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2343
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1954
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1958
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2354
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2051
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1893, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %518, metadata !1923, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1922, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %516, metadata !1916, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1908, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %513, metadata !1903, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %512, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %511, metadata !1895, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.label(metadata !1951), !dbg !2355
  br i1 %119, label %638, label %520, !dbg !2356

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1921, metadata !DIExpression()), !dbg !2051
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2358
  br i1 %521, label %538, label %522, !dbg !2358

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2360
  br i1 %523, label %524, label %526, !dbg !2364

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2360
  store i8 39, i8* %525, align 1, !dbg !2360, !tbaa !787
  br label %526, !dbg !2360

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %527, metadata !1902, metadata !DIExpression()), !dbg !1954
  %528 = icmp ult i64 %527, %519, !dbg !2365
  br i1 %528, label %529, label %531, !dbg !2368

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2365
  store i8 36, i8* %530, align 1, !dbg !2365, !tbaa !787
  br label %531, !dbg !2365

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %532, metadata !1902, metadata !DIExpression()), !dbg !1954
  %533 = icmp ult i64 %532, %519, !dbg !2369
  br i1 %533, label %534, label %536, !dbg !2372

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2369
  store i8 39, i8* %535, align 1, !dbg !2369, !tbaa !787
  br label %536, !dbg !2369

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %537, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 1, metadata !1910, metadata !DIExpression()), !dbg !1954
  br label %538, !dbg !2373

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2051
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %539, metadata !1902, metadata !DIExpression()), !dbg !1954
  %541 = icmp ult i64 %539, %519, !dbg !2374
  br i1 %541, label %542, label %544, !dbg !2377

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2374
  store i8 92, i8* %543, align 1, !dbg !2374, !tbaa !787
  br label %544, !dbg !2374

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %556, metadata !1893, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %555, metadata !1923, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1922, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1921, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %552, metadata !1916, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1908, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %549, metadata !1903, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %548, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %547, metadata !1895, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.label(metadata !1952), !dbg !2378
  br label %570, !dbg !2379

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2343
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1954
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1958
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2354
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2382
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1893, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %555, metadata !1923, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1922, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 poison, metadata !1921, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %552, metadata !1916, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1908, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %549, metadata !1903, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %548, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %547, metadata !1895, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.label(metadata !1952), !dbg !2378
  %557 = xor i1 %551, true, !dbg !2379
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2379
  br i1 %558, label %570, label %559, !dbg !2379

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2383
  br i1 %560, label %561, label %563, !dbg !2387

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2383
  store i8 39, i8* %562, align 1, !dbg !2383, !tbaa !787
  br label %563, !dbg !2383

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %564, metadata !1902, metadata !DIExpression()), !dbg !1954
  %565 = icmp ult i64 %564, %556, !dbg !2388
  br i1 %565, label %566, label %568, !dbg !2391

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2388
  store i8 39, i8* %567, align 1, !dbg !2388, !tbaa !787
  br label %568, !dbg !2388

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %569, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1954
  br label %570, !dbg !2392

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2051
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %578, metadata !1902, metadata !DIExpression()), !dbg !1954
  %580 = icmp ult i64 %578, %571, !dbg !2393
  br i1 %580, label %581, label %583, !dbg !2396

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2393
  store i8 %572, i8* %582, align 1, !dbg !2393, !tbaa !787
  br label %583, !dbg !2393

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %584, metadata !1902, metadata !DIExpression()), !dbg !1954
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2397
  call void @llvm.dbg.value(metadata i8 poison, metadata !1909, metadata !DIExpression()), !dbg !1954
  br label %586, !dbg !2398

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2343
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1954
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1958
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2354
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1893, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %593, metadata !1916, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 poison, metadata !1910, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1909, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1908, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %589, metadata !1903, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %588, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %587, metadata !1895, metadata !DIExpression()), !dbg !1954
  %595 = add i64 %593, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %595, metadata !1916, metadata !DIExpression()), !dbg !2043
  br label %132, !dbg !2400, !llvm.loop !2401

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1893, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1909, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 poison, metadata !1908, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 undef, metadata !1903, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 undef, metadata !1902, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 undef, metadata !1895, metadata !DIExpression()), !dbg !1954
  %597 = icmp eq i64 %134, 0, !dbg !2403
  %598 = and i1 %126, %597, !dbg !2405
  %599 = and i1 %598, %119, !dbg !2405
  br i1 %599, label %638, label %600, !dbg !2405

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2406
  %602 = or i1 %119, %601, !dbg !2406
  %603 = xor i1 %136, true, !dbg !2406
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2406
  br i1 %604, label %612, label %605, !dbg !2406

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2408

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2410
  br label %653, !dbg !2412

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2413
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2415
  br i1 %611, label %36, label %612, !dbg !2415

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2416
  %615 = or i1 %614, %613, !dbg !2418
  br i1 %615, label %631, label %616, !dbg !2418

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1904, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %134, metadata !1902, metadata !DIExpression()), !dbg !1954
  %617 = load i8, i8* %116, align 1, !dbg !2419, !tbaa !787
  %618 = icmp eq i8 %617, 0, !dbg !2422
  br i1 %618, label %631, label %619, !dbg !2422

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1904, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %622, metadata !1902, metadata !DIExpression()), !dbg !1954
  %623 = icmp ult i64 %622, %140, !dbg !2423
  br i1 %623, label %624, label %626, !dbg !2426

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2423
  store i8 %620, i8* %625, align 1, !dbg !2423, !tbaa !787
  br label %626, !dbg !2423

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %627, metadata !1902, metadata !DIExpression()), !dbg !1954
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2427
  call void @llvm.dbg.value(metadata i8* %628, metadata !1904, metadata !DIExpression()), !dbg !1954
  %629 = load i8, i8* %628, align 1, !dbg !2419, !tbaa !787
  %630 = icmp eq i8 %629, 0, !dbg !2422
  br i1 %630, label %631, label %619, !dbg !2422, !llvm.loop !2428

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2030
  call void @llvm.dbg.value(metadata i64 %632, metadata !1902, metadata !DIExpression()), !dbg !1954
  %633 = icmp ult i64 %632, %140, !dbg !2430
  br i1 %633, label %634, label %653, !dbg !2432

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2433
  store i8 0, i8* %635, align 1, !dbg !2434, !tbaa !787
  br label %653, !dbg !2433

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1953), !dbg !2260
  %637 = icmp eq i32 %112, 2, !dbg !2435
  br i1 %637, label %643, label %647, !dbg !2261

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1953), !dbg !2260
  %641 = icmp eq i32 %112, 2, !dbg !2435
  %642 = select i1 %118, i32 4, i32 2, !dbg !2261
  br i1 %641, label %643, label %647, !dbg !2261

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2261

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1896, metadata !DIExpression()), !dbg !1954
  %651 = and i32 %5, -3, !dbg !2436
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2437
  br label %653, !dbg !2438

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2439
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2440 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2442 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2446, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i64 %1, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2448, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %0, metadata !2450, metadata !DIExpression()) #35, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %1, metadata !2455, metadata !DIExpression()) #35, !dbg !2463
  call void @llvm.dbg.value(metadata i64* null, metadata !2456, metadata !DIExpression()) #35, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2457, metadata !DIExpression()) #35, !dbg !2463
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2465
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2465
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2458, metadata !DIExpression()) #35, !dbg !2463
  %6 = tail call i32* @__errno_location() #38, !dbg !2466
  %7 = load i32, i32* %6, align 4, !dbg !2466, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %7, metadata !2459, metadata !DIExpression()) #35, !dbg !2463
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2467
  %9 = load i32, i32* %8, align 4, !dbg !2467, !tbaa !1836
  %10 = or i32 %9, 1, !dbg !2468
  call void @llvm.dbg.value(metadata i32 %10, metadata !2460, metadata !DIExpression()) #35, !dbg !2463
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2469
  %12 = load i32, i32* %11, align 8, !dbg !2469, !tbaa !1785
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2470
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2471
  %15 = load i8*, i8** %14, align 8, !dbg !2471, !tbaa !1858
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2472
  %17 = load i8*, i8** %16, align 8, !dbg !2472, !tbaa !1861
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2473
  %19 = add i64 %18, 1, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %19, metadata !2461, metadata !DIExpression()) #35, !dbg !2463
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #42, !dbg !2475
  call void @llvm.dbg.value(metadata i8* %20, metadata !2462, metadata !DIExpression()) #35, !dbg !2463
  %21 = load i32, i32* %11, align 8, !dbg !2476, !tbaa !1785
  %22 = load i8*, i8** %14, align 8, !dbg !2477, !tbaa !1858
  %23 = load i8*, i8** %16, align 8, !dbg !2478, !tbaa !1861
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2479
  store i32 %7, i32* %6, align 4, !dbg !2480, !tbaa !778
  ret i8* %20, !dbg !2481
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2451 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2450, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i64 %1, metadata !2455, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i64* %2, metadata !2456, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2457, metadata !DIExpression()), !dbg !2482
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2483
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2458, metadata !DIExpression()), !dbg !2482
  %7 = tail call i32* @__errno_location() #38, !dbg !2484
  %8 = load i32, i32* %7, align 4, !dbg !2484, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %8, metadata !2459, metadata !DIExpression()), !dbg !2482
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2485
  %10 = load i32, i32* %9, align 4, !dbg !2485, !tbaa !1836
  %11 = icmp eq i64* %2, null, !dbg !2486
  %12 = zext i1 %11 to i32, !dbg !2486
  %13 = or i32 %10, %12, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %13, metadata !2460, metadata !DIExpression()), !dbg !2482
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2488
  %15 = load i32, i32* %14, align 8, !dbg !2488, !tbaa !1785
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2489
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2490
  %18 = load i8*, i8** %17, align 8, !dbg !2490, !tbaa !1858
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2491
  %20 = load i8*, i8** %19, align 8, !dbg !2491, !tbaa !1861
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2492
  %22 = add i64 %21, 1, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %22, metadata !2461, metadata !DIExpression()), !dbg !2482
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #42, !dbg !2494
  call void @llvm.dbg.value(metadata i8* %23, metadata !2462, metadata !DIExpression()), !dbg !2482
  %24 = load i32, i32* %14, align 8, !dbg !2495, !tbaa !1785
  %25 = load i8*, i8** %17, align 8, !dbg !2496, !tbaa !1858
  %26 = load i8*, i8** %19, align 8, !dbg !2497, !tbaa !1861
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2498
  store i32 %8, i32* %7, align 4, !dbg !2499, !tbaa !778
  br i1 %11, label %29, label %28, !dbg !2500

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2501, !tbaa !1407
  br label %29, !dbg !2503

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2504
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2505 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2510, !tbaa !690
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2507, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 1, metadata !2508, metadata !DIExpression()), !dbg !2512
  %2 = load i32, i32* @nslots, align 4, !tbaa !778
  call void @llvm.dbg.value(metadata i32 1, metadata !2508, metadata !DIExpression()), !dbg !2512
  %3 = icmp sgt i32 %2, 1, !dbg !2513
  br i1 %3, label %4, label %6, !dbg !2515

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2513
  br label %10, !dbg !2515

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2516
  %8 = load i8*, i8** %7, align 8, !dbg !2516, !tbaa !2518
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2520
  br i1 %9, label %17, label %16, !dbg !2521

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2508, metadata !DIExpression()), !dbg !2512
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2522
  %13 = load i8*, i8** %12, align 8, !dbg !2522, !tbaa !2518
  tail call void @free(i8* noundef %13) #35, !dbg !2523
  %14 = add nuw nsw i64 %11, 1, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %14, metadata !2508, metadata !DIExpression()), !dbg !2512
  %15 = icmp eq i64 %14, %5, !dbg !2513
  br i1 %15, label %6, label %10, !dbg !2515, !llvm.loop !2525

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2527
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2529, !tbaa !2530
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2531, !tbaa !2518
  br label %17, !dbg !2532

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2533
  br i1 %18, label %21, label %19, !dbg !2535

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2536
  tail call void @free(i8* noundef %20) #35, !dbg !2538
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2539, !tbaa !690
  br label %21, !dbg !2540

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2541, !tbaa !778
  ret void, !dbg !2542
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %1, metadata !2546, metadata !DIExpression()), !dbg !2547
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2548
  ret i8* %3, !dbg !2549
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2550 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %1, metadata !2555, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %2, metadata !2556, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2557, metadata !DIExpression()), !dbg !2570
  %6 = tail call i32* @__errno_location() #38, !dbg !2571
  %7 = load i32, i32* %6, align 4, !dbg !2571, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %7, metadata !2558, metadata !DIExpression()), !dbg !2570
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2572, !tbaa !690
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2559, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2560, metadata !DIExpression()), !dbg !2570
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2573
  br i1 %9, label %10, label %11, !dbg !2573

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2575
  unreachable, !dbg !2575

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2576, !tbaa !778
  %13 = icmp sgt i32 %12, %0, !dbg !2577
  br i1 %13, label %36, label %14, !dbg !2578

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2579
  call void @llvm.dbg.value(metadata i1 %15, metadata !2561, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2580
  %16 = bitcast i64* %5 to i8*, !dbg !2581
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2581
  %17 = sext i32 %12 to i64, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %17, metadata !2564, metadata !DIExpression()), !dbg !2580
  store i64 %17, i64* %5, align 8, !dbg !2583, !tbaa !1407
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2584
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2584
  %20 = add nuw nsw i32 %0, 1, !dbg !2585
  %21 = sub i32 %20, %12, !dbg !2586
  %22 = sext i32 %21 to i64, !dbg !2587
  call void @llvm.dbg.value(metadata i64* %5, metadata !2564, metadata !DIExpression(DW_OP_deref)), !dbg !2580
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !2588
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2588
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2559, metadata !DIExpression()), !dbg !2570
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2589, !tbaa !690
  br i1 %15, label %25, label %26, !dbg !2590

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2591, !tbaa.struct !2593
  br label %26, !dbg !2594

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2595, !tbaa !778
  %28 = sext i32 %27 to i64, !dbg !2596
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2596
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2597
  %31 = load i64, i64* %5, align 8, !dbg !2598, !tbaa !1407
  call void @llvm.dbg.value(metadata i64 %31, metadata !2564, metadata !DIExpression()), !dbg !2580
  %32 = sub nsw i64 %31, %28, !dbg !2599
  %33 = shl i64 %32, 4, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %30, metadata !1988, metadata !DIExpression()) #35, !dbg !2601
  call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()) #35, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %33, metadata !1992, metadata !DIExpression()) #35, !dbg !2601
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !2603
  %34 = load i64, i64* %5, align 8, !dbg !2604, !tbaa !1407
  call void @llvm.dbg.value(metadata i64 %34, metadata !2564, metadata !DIExpression()), !dbg !2580
  %35 = trunc i64 %34 to i32, !dbg !2604
  store i32 %35, i32* @nslots, align 4, !dbg !2605, !tbaa !778
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2606
  br label %36, !dbg !2607

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2570
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2559, metadata !DIExpression()), !dbg !2570
  %38 = zext i32 %0 to i64, !dbg !2608
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2609
  %40 = load i64, i64* %39, align 8, !dbg !2609, !tbaa !2530
  call void @llvm.dbg.value(metadata i64 %40, metadata !2565, metadata !DIExpression()), !dbg !2610
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2611
  %42 = load i8*, i8** %41, align 8, !dbg !2611, !tbaa !2518
  call void @llvm.dbg.value(metadata i8* %42, metadata !2567, metadata !DIExpression()), !dbg !2610
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2612
  %44 = load i32, i32* %43, align 4, !dbg !2612, !tbaa !1836
  %45 = or i32 %44, 1, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %45, metadata !2568, metadata !DIExpression()), !dbg !2610
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2614
  %47 = load i32, i32* %46, align 8, !dbg !2614, !tbaa !1785
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2615
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2616
  %50 = load i8*, i8** %49, align 8, !dbg !2616, !tbaa !1858
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2617
  %52 = load i8*, i8** %51, align 8, !dbg !2617, !tbaa !1861
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %53, metadata !2569, metadata !DIExpression()), !dbg !2610
  %54 = icmp ugt i64 %40, %53, !dbg !2619
  br i1 %54, label %65, label %55, !dbg !2621

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %56, metadata !2565, metadata !DIExpression()), !dbg !2610
  store i64 %56, i64* %39, align 8, !dbg !2624, !tbaa !2530
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2625
  br i1 %57, label %59, label %58, !dbg !2627

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !2628
  br label %59, !dbg !2628

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #42, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %60, metadata !2567, metadata !DIExpression()), !dbg !2610
  store i8* %60, i8** %41, align 8, !dbg !2630, !tbaa !2518
  %61 = load i32, i32* %46, align 8, !dbg !2631, !tbaa !1785
  %62 = load i8*, i8** %49, align 8, !dbg !2632, !tbaa !1858
  %63 = load i8*, i8** %51, align 8, !dbg !2633, !tbaa !1861
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2634
  br label %65, !dbg !2635

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2610
  call void @llvm.dbg.value(metadata i8* %66, metadata !2567, metadata !DIExpression()), !dbg !2610
  store i32 %7, i32* %6, align 4, !dbg !2636, !tbaa !778
  ret i8* %66, !dbg !2637
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2638 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8* %1, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %2, metadata !2644, metadata !DIExpression()), !dbg !2645
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2646
  ret i8* %4, !dbg !2647
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2648 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2650, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32 0, metadata !2545, metadata !DIExpression()) #35, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %0, metadata !2546, metadata !DIExpression()) #35, !dbg !2652
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2654
  ret i8* %2, !dbg !2655
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2656 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2660, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 %1, metadata !2661, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 0, metadata !2642, metadata !DIExpression()) #35, !dbg !2663
  call void @llvm.dbg.value(metadata i8* %0, metadata !2643, metadata !DIExpression()) #35, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %1, metadata !2644, metadata !DIExpression()) #35, !dbg !2663
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2665
  ret i8* %3, !dbg !2666
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2667 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2671, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %1, metadata !2672, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %2, metadata !2673, metadata !DIExpression()), !dbg !2675
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2676
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2676
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2674, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2678), !dbg !2681
  call void @llvm.dbg.value(metadata i32 %1, metadata !2682, metadata !DIExpression()) #35, !dbg !2688
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2687, metadata !DIExpression()) #35, !dbg !2690
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2690, !alias.scope !2678
  %6 = icmp eq i32 %1, 10, !dbg !2691
  br i1 %6, label %7, label %8, !dbg !2693

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2694, !noalias !2678
  unreachable, !dbg !2694

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2695
  store i32 %1, i32* %9, align 8, !dbg !2696, !tbaa !1785, !alias.scope !2678
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2697
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2698
  ret i8* %10, !dbg !2699
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2700 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2704, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 %1, metadata !2705, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8* %2, metadata !2706, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %3, metadata !2707, metadata !DIExpression()), !dbg !2709
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2710
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2710
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2708, metadata !DIExpression()), !dbg !2711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2712), !dbg !2715
  call void @llvm.dbg.value(metadata i32 %1, metadata !2682, metadata !DIExpression()) #35, !dbg !2716
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2687, metadata !DIExpression()) #35, !dbg !2718
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !2718, !alias.scope !2712
  %7 = icmp eq i32 %1, 10, !dbg !2719
  br i1 %7, label %8, label %9, !dbg !2720

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2721, !noalias !2712
  unreachable, !dbg !2721

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2722
  store i32 %1, i32* %10, align 8, !dbg !2723, !tbaa !1785, !alias.scope !2712
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2724
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2725
  ret i8* %11, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2727 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %1, metadata !2732, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 0, metadata !2671, metadata !DIExpression()) #35, !dbg !2734
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()) #35, !dbg !2734
  call void @llvm.dbg.value(metadata i8* %1, metadata !2673, metadata !DIExpression()) #35, !dbg !2734
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2736
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2674, metadata !DIExpression()) #35, !dbg !2737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2738) #35, !dbg !2741
  call void @llvm.dbg.value(metadata i32 %0, metadata !2682, metadata !DIExpression()) #35, !dbg !2742
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2687, metadata !DIExpression()) #35, !dbg !2744
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !2744, !alias.scope !2738
  %5 = icmp eq i32 %0, 10, !dbg !2745
  br i1 %5, label %6, label %7, !dbg !2746

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2747, !noalias !2738
  unreachable, !dbg !2747

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2748
  store i32 %0, i32* %8, align 8, !dbg !2749, !tbaa !1785, !alias.scope !2738
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2750
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2751
  ret i8* %9, !dbg !2752
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2753 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2757, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %1, metadata !2758, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %2, metadata !2759, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 0, metadata !2704, metadata !DIExpression()) #35, !dbg !2761
  call void @llvm.dbg.value(metadata i32 %0, metadata !2705, metadata !DIExpression()) #35, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %1, metadata !2706, metadata !DIExpression()) #35, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %2, metadata !2707, metadata !DIExpression()) #35, !dbg !2761
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2763
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2763
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2708, metadata !DIExpression()) #35, !dbg !2764
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2765) #35, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %0, metadata !2682, metadata !DIExpression()) #35, !dbg !2769
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2687, metadata !DIExpression()) #35, !dbg !2771
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2771, !alias.scope !2765
  %6 = icmp eq i32 %0, 10, !dbg !2772
  br i1 %6, label %7, label %8, !dbg !2773

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2774, !noalias !2765
  unreachable, !dbg !2774

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2775
  store i32 %0, i32* %9, align 8, !dbg !2776, !tbaa !1785, !alias.scope !2765
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !2777
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2778
  ret i8* %10, !dbg !2779
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2780 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %1, metadata !2785, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %2, metadata !2786, metadata !DIExpression()), !dbg !2788
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2789
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2791, !tbaa.struct !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1803, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %2, metadata !1804, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 1, metadata !1805, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %2, metadata !1806, metadata !DIExpression()), !dbg !2793
  %6 = lshr i8 %2, 5, !dbg !2795
  %7 = zext i8 %6 to i64, !dbg !2795
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2796
  call void @llvm.dbg.value(metadata i32* %8, metadata !1807, metadata !DIExpression()), !dbg !2793
  %9 = and i8 %2, 31, !dbg !2797
  %10 = zext i8 %9 to i32, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %10, metadata !1809, metadata !DIExpression()), !dbg !2793
  %11 = load i32, i32* %8, align 4, !dbg !2798, !tbaa !778
  %12 = lshr i32 %11, %10, !dbg !2799
  %13 = and i32 %12, 1, !dbg !2800
  call void @llvm.dbg.value(metadata i32 %13, metadata !1810, metadata !DIExpression()), !dbg !2793
  %14 = xor i32 %13, 1, !dbg !2801
  %15 = shl i32 %14, %10, !dbg !2802
  %16 = xor i32 %15, %11, !dbg !2803
  store i32 %16, i32* %8, align 4, !dbg !2803, !tbaa !778
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2804
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2805
  ret i8* %17, !dbg !2806
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2807 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2811, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 %1, metadata !2812, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()) #35, !dbg !2814
  call void @llvm.dbg.value(metadata i64 -1, metadata !2785, metadata !DIExpression()) #35, !dbg !2814
  call void @llvm.dbg.value(metadata i8 %1, metadata !2786, metadata !DIExpression()) #35, !dbg !2814
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2816
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2816
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2787, metadata !DIExpression()) #35, !dbg !2817
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2818, !tbaa.struct !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1803, metadata !DIExpression()) #35, !dbg !2819
  call void @llvm.dbg.value(metadata i8 %1, metadata !1804, metadata !DIExpression()) #35, !dbg !2819
  call void @llvm.dbg.value(metadata i32 1, metadata !1805, metadata !DIExpression()) #35, !dbg !2819
  call void @llvm.dbg.value(metadata i8 %1, metadata !1806, metadata !DIExpression()) #35, !dbg !2819
  %5 = lshr i8 %1, 5, !dbg !2821
  %6 = zext i8 %5 to i64, !dbg !2821
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2822
  call void @llvm.dbg.value(metadata i32* %7, metadata !1807, metadata !DIExpression()) #35, !dbg !2819
  %8 = and i8 %1, 31, !dbg !2823
  %9 = zext i8 %8 to i32, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %9, metadata !1809, metadata !DIExpression()) #35, !dbg !2819
  %10 = load i32, i32* %7, align 4, !dbg !2824, !tbaa !778
  %11 = lshr i32 %10, %9, !dbg !2825
  %12 = and i32 %11, 1, !dbg !2826
  call void @llvm.dbg.value(metadata i32 %12, metadata !1810, metadata !DIExpression()) #35, !dbg !2819
  %13 = xor i32 %12, 1, !dbg !2827
  %14 = shl i32 %13, %9, !dbg !2828
  %15 = xor i32 %14, %10, !dbg !2829
  store i32 %15, i32* %7, align 4, !dbg !2829, !tbaa !778
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2830
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2831
  ret i8* %16, !dbg !2832
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2833 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %0, metadata !2811, metadata !DIExpression()) #35, !dbg !2837
  call void @llvm.dbg.value(metadata i8 58, metadata !2812, metadata !DIExpression()) #35, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()) #35, !dbg !2839
  call void @llvm.dbg.value(metadata i64 -1, metadata !2785, metadata !DIExpression()) #35, !dbg !2839
  call void @llvm.dbg.value(metadata i8 58, metadata !2786, metadata !DIExpression()) #35, !dbg !2839
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2841
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !2841
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2787, metadata !DIExpression()) #35, !dbg !2842
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2843, !tbaa.struct !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1803, metadata !DIExpression()) #35, !dbg !2844
  call void @llvm.dbg.value(metadata i8 58, metadata !1804, metadata !DIExpression()) #35, !dbg !2844
  call void @llvm.dbg.value(metadata i32 1, metadata !1805, metadata !DIExpression()) #35, !dbg !2844
  call void @llvm.dbg.value(metadata i8 58, metadata !1806, metadata !DIExpression()) #35, !dbg !2844
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2846
  call void @llvm.dbg.value(metadata i32* %4, metadata !1807, metadata !DIExpression()) #35, !dbg !2844
  call void @llvm.dbg.value(metadata i32 26, metadata !1809, metadata !DIExpression()) #35, !dbg !2844
  %5 = load i32, i32* %4, align 4, !dbg !2847, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %5, metadata !1810, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !2844
  %6 = or i32 %5, 67108864, !dbg !2848
  store i32 %6, i32* %4, align 4, !dbg !2848, !tbaa !778
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !2849
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !2850
  ret i8* %7, !dbg !2851
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2852 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %1, metadata !2855, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()) #35, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %1, metadata !2785, metadata !DIExpression()) #35, !dbg !2857
  call void @llvm.dbg.value(metadata i8 58, metadata !2786, metadata !DIExpression()) #35, !dbg !2857
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2859
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2859
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2787, metadata !DIExpression()) #35, !dbg !2860
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2861, !tbaa.struct !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1803, metadata !DIExpression()) #35, !dbg !2862
  call void @llvm.dbg.value(metadata i8 58, metadata !1804, metadata !DIExpression()) #35, !dbg !2862
  call void @llvm.dbg.value(metadata i32 1, metadata !1805, metadata !DIExpression()) #35, !dbg !2862
  call void @llvm.dbg.value(metadata i8 58, metadata !1806, metadata !DIExpression()) #35, !dbg !2862
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2864
  call void @llvm.dbg.value(metadata i32* %5, metadata !1807, metadata !DIExpression()) #35, !dbg !2862
  call void @llvm.dbg.value(metadata i32 26, metadata !1809, metadata !DIExpression()) #35, !dbg !2862
  %6 = load i32, i32* %5, align 4, !dbg !2865, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %6, metadata !1810, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !2862
  %7 = or i32 %6, 67108864, !dbg !2866
  store i32 %7, i32* %5, align 4, !dbg !2866, !tbaa !778
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2867
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2868
  ret i8* %8, !dbg !2869
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2870 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2872, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %1, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %2, metadata !2874, metadata !DIExpression()), !dbg !2876
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2877
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2877
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i32 %1, metadata !2682, metadata !DIExpression()) #35, !dbg !2879
  call void @llvm.dbg.value(metadata i32 0, metadata !2687, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2879
  %6 = icmp eq i32 %1, 10, !dbg !2881
  br i1 %6, label %7, label %8, !dbg !2882

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2883, !noalias !2884
  unreachable, !dbg !2883

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2687, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2879
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2887
  store i32 %1, i32* %9, align 8, !dbg !2887, !tbaa.struct !2792
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2887
  %11 = bitcast i32* %10 to i8*, !dbg !2887
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2887
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1803, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 58, metadata !1804, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 1, metadata !1805, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 58, metadata !1806, metadata !DIExpression()), !dbg !2888
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2890
  call void @llvm.dbg.value(metadata i32* %12, metadata !1807, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 26, metadata !1809, metadata !DIExpression()), !dbg !2888
  %13 = load i32, i32* %12, align 4, !dbg !2891, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %13, metadata !1810, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2888
  %14 = or i32 %13, 67108864, !dbg !2892
  store i32 %14, i32* %12, align 4, !dbg !2892, !tbaa !778
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2893
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2894
  ret i8* %15, !dbg !2895
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2896 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2900, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8* %1, metadata !2901, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8* %2, metadata !2902, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8* %3, metadata !2903, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()) #35, !dbg !2915
  call void @llvm.dbg.value(metadata i8* %1, metadata !2910, metadata !DIExpression()) #35, !dbg !2915
  call void @llvm.dbg.value(metadata i8* %2, metadata !2911, metadata !DIExpression()) #35, !dbg !2915
  call void @llvm.dbg.value(metadata i8* %3, metadata !2912, metadata !DIExpression()) #35, !dbg !2915
  call void @llvm.dbg.value(metadata i64 -1, metadata !2913, metadata !DIExpression()) #35, !dbg !2915
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2917
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2917
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2914, metadata !DIExpression()) #35, !dbg !2918
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2919, !tbaa.struct !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1843, metadata !DIExpression()) #35, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %1, metadata !1844, metadata !DIExpression()) #35, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %2, metadata !1845, metadata !DIExpression()) #35, !dbg !2920
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1843, metadata !DIExpression()) #35, !dbg !2920
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2922
  store i32 10, i32* %7, align 8, !dbg !2923, !tbaa !1785
  %8 = icmp ne i8* %1, null, !dbg !2924
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2925
  br i1 %10, label %12, label %11, !dbg !2925

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2926
  unreachable, !dbg !2926

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2927
  store i8* %1, i8** %13, align 8, !dbg !2928, !tbaa !1858
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2929
  store i8* %2, i8** %14, align 8, !dbg !2930, !tbaa !1861
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !2931
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2932
  ret i8* %15, !dbg !2933
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2906 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8* %1, metadata !2910, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8* %2, metadata !2911, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8* %3, metadata !2912, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %4, metadata !2913, metadata !DIExpression()), !dbg !2934
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2935
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !2935
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2914, metadata !DIExpression()), !dbg !2936
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2937, !tbaa.struct !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1843, metadata !DIExpression()) #35, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %1, metadata !1844, metadata !DIExpression()) #35, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %2, metadata !1845, metadata !DIExpression()) #35, !dbg !2938
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1843, metadata !DIExpression()) #35, !dbg !2938
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2940
  store i32 10, i32* %8, align 8, !dbg !2941, !tbaa !1785
  %9 = icmp ne i8* %1, null, !dbg !2942
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2943
  br i1 %11, label %13, label %12, !dbg !2943

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !2944
  unreachable, !dbg !2944

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2945
  store i8* %1, i8** %14, align 8, !dbg !2946, !tbaa !1858
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2947
  store i8* %2, i8** %15, align 8, !dbg !2948, !tbaa !1861
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2949
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !2950
  ret i8* %16, !dbg !2951
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2952 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2956, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8* %1, metadata !2957, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8* %2, metadata !2958, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 0, metadata !2900, metadata !DIExpression()) #35, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %0, metadata !2901, metadata !DIExpression()) #35, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %1, metadata !2902, metadata !DIExpression()) #35, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %2, metadata !2903, metadata !DIExpression()) #35, !dbg !2960
  call void @llvm.dbg.value(metadata i32 0, metadata !2905, metadata !DIExpression()) #35, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %0, metadata !2910, metadata !DIExpression()) #35, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %1, metadata !2911, metadata !DIExpression()) #35, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %2, metadata !2912, metadata !DIExpression()) #35, !dbg !2962
  call void @llvm.dbg.value(metadata i64 -1, metadata !2913, metadata !DIExpression()) #35, !dbg !2962
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2964
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2964
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2914, metadata !DIExpression()) #35, !dbg !2965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2966, !tbaa.struct !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1843, metadata !DIExpression()) #35, !dbg !2967
  call void @llvm.dbg.value(metadata i8* %0, metadata !1844, metadata !DIExpression()) #35, !dbg !2967
  call void @llvm.dbg.value(metadata i8* %1, metadata !1845, metadata !DIExpression()) #35, !dbg !2967
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1843, metadata !DIExpression()) #35, !dbg !2967
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2969
  store i32 10, i32* %6, align 8, !dbg !2970, !tbaa !1785
  %7 = icmp ne i8* %0, null, !dbg !2971
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2972
  br i1 %9, label %11, label %10, !dbg !2972

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2973
  unreachable, !dbg !2973

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2974
  store i8* %0, i8** %12, align 8, !dbg !2975, !tbaa !1858
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2976
  store i8* %1, i8** %13, align 8, !dbg !2977, !tbaa !1861
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !2978
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2979
  ret i8* %14, !dbg !2980
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2981 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2985, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8* %1, metadata !2986, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8* %2, metadata !2987, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 %3, metadata !2988, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i32 0, metadata !2905, metadata !DIExpression()) #35, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %0, metadata !2910, metadata !DIExpression()) #35, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %1, metadata !2911, metadata !DIExpression()) #35, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %2, metadata !2912, metadata !DIExpression()) #35, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %3, metadata !2913, metadata !DIExpression()) #35, !dbg !2990
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2992
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2992
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2914, metadata !DIExpression()) #35, !dbg !2993
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2994, !tbaa.struct !2792
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1843, metadata !DIExpression()) #35, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %0, metadata !1844, metadata !DIExpression()) #35, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %1, metadata !1845, metadata !DIExpression()) #35, !dbg !2995
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1843, metadata !DIExpression()) #35, !dbg !2995
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2997
  store i32 10, i32* %7, align 8, !dbg !2998, !tbaa !1785
  %8 = icmp ne i8* %0, null, !dbg !2999
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3000
  br i1 %10, label %12, label %11, !dbg !3000

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3001
  unreachable, !dbg !3001

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3002
  store i8* %0, i8** %13, align 8, !dbg !3003, !tbaa !1858
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3004
  store i8* %1, i8** %14, align 8, !dbg !3005, !tbaa !1861
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3007
  ret i8* %15, !dbg !3008
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %2, metadata !3015, metadata !DIExpression()), !dbg !3016
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3017
  ret i8* %4, !dbg !3018
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3019 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3023, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()) #35, !dbg !3026
  call void @llvm.dbg.value(metadata i8* %0, metadata !3014, metadata !DIExpression()) #35, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %1, metadata !3015, metadata !DIExpression()) #35, !dbg !3026
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3028
  ret i8* %3, !dbg !3029
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3034, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8* %1, metadata !3035, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()) #35, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()) #35, !dbg !3037
  call void @llvm.dbg.value(metadata i64 -1, metadata !3015, metadata !DIExpression()) #35, !dbg !3037
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3039
  ret i8* %3, !dbg !3040
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 0, metadata !3034, metadata !DIExpression()) #35, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()) #35, !dbg !3047
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()) #35, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %0, metadata !3014, metadata !DIExpression()) #35, !dbg !3049
  call void @llvm.dbg.value(metadata i64 -1, metadata !3015, metadata !DIExpression()) #35, !dbg !3049
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3051
  ret i8* %2, !dbg !3052
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3053 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3092, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %1, metadata !3093, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %2, metadata !3094, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %3, metadata !3095, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8** %4, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %5, metadata !3097, metadata !DIExpression()), !dbg !3098
  %7 = icmp eq i8* %1, null, !dbg !3099
  br i1 %7, label %10, label %8, !dbg !3101

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3102
  br label %12, !dbg !3102

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.94, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3103
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.96, i64 0, i64 0), i32 noundef 5) #35, !dbg !3104
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3104
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.97, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3105
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.98, i64 0, i64 0), i32 noundef 5) #35, !dbg !3106
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.99, i64 0, i64 0)) #35, !dbg !3106
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.97, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3107
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
  ], !dbg !3108

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.100, i64 0, i64 0), i32 noundef 5) #35, !dbg !3109
  %21 = load i8*, i8** %4, align 8, !dbg !3109, !tbaa !690
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3109
  br label %147, !dbg !3111

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.101, i64 0, i64 0), i32 noundef 5) #35, !dbg !3112
  %25 = load i8*, i8** %4, align 8, !dbg !3112, !tbaa !690
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3112
  %27 = load i8*, i8** %26, align 8, !dbg !3112, !tbaa !690
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3112
  br label %147, !dbg !3113

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.102, i64 0, i64 0), i32 noundef 5) #35, !dbg !3114
  %31 = load i8*, i8** %4, align 8, !dbg !3114, !tbaa !690
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3114
  %33 = load i8*, i8** %32, align 8, !dbg !3114, !tbaa !690
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3114
  %35 = load i8*, i8** %34, align 8, !dbg !3114, !tbaa !690
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3114
  br label %147, !dbg !3115

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.103, i64 0, i64 0), i32 noundef 5) #35, !dbg !3116
  %39 = load i8*, i8** %4, align 8, !dbg !3116, !tbaa !690
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3116
  %41 = load i8*, i8** %40, align 8, !dbg !3116, !tbaa !690
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3116
  %43 = load i8*, i8** %42, align 8, !dbg !3116, !tbaa !690
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3116
  %45 = load i8*, i8** %44, align 8, !dbg !3116, !tbaa !690
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3116
  br label %147, !dbg !3117

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.104, i64 0, i64 0), i32 noundef 5) #35, !dbg !3118
  %49 = load i8*, i8** %4, align 8, !dbg !3118, !tbaa !690
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3118
  %51 = load i8*, i8** %50, align 8, !dbg !3118, !tbaa !690
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3118
  %53 = load i8*, i8** %52, align 8, !dbg !3118, !tbaa !690
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3118
  %55 = load i8*, i8** %54, align 8, !dbg !3118, !tbaa !690
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3118
  %57 = load i8*, i8** %56, align 8, !dbg !3118, !tbaa !690
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3118
  br label %147, !dbg !3119

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.105, i64 0, i64 0), i32 noundef 5) #35, !dbg !3120
  %61 = load i8*, i8** %4, align 8, !dbg !3120, !tbaa !690
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3120
  %63 = load i8*, i8** %62, align 8, !dbg !3120, !tbaa !690
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3120
  %65 = load i8*, i8** %64, align 8, !dbg !3120, !tbaa !690
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3120
  %67 = load i8*, i8** %66, align 8, !dbg !3120, !tbaa !690
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3120
  %69 = load i8*, i8** %68, align 8, !dbg !3120, !tbaa !690
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3120
  %71 = load i8*, i8** %70, align 8, !dbg !3120, !tbaa !690
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3120
  br label %147, !dbg !3121

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.106, i64 0, i64 0), i32 noundef 5) #35, !dbg !3122
  %75 = load i8*, i8** %4, align 8, !dbg !3122, !tbaa !690
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3122
  %77 = load i8*, i8** %76, align 8, !dbg !3122, !tbaa !690
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3122
  %79 = load i8*, i8** %78, align 8, !dbg !3122, !tbaa !690
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3122
  %81 = load i8*, i8** %80, align 8, !dbg !3122, !tbaa !690
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3122
  %83 = load i8*, i8** %82, align 8, !dbg !3122, !tbaa !690
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3122
  %85 = load i8*, i8** %84, align 8, !dbg !3122, !tbaa !690
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3122
  %87 = load i8*, i8** %86, align 8, !dbg !3122, !tbaa !690
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3122
  br label %147, !dbg !3123

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.107, i64 0, i64 0), i32 noundef 5) #35, !dbg !3124
  %91 = load i8*, i8** %4, align 8, !dbg !3124, !tbaa !690
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3124
  %93 = load i8*, i8** %92, align 8, !dbg !3124, !tbaa !690
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3124
  %95 = load i8*, i8** %94, align 8, !dbg !3124, !tbaa !690
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3124
  %97 = load i8*, i8** %96, align 8, !dbg !3124, !tbaa !690
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3124
  %99 = load i8*, i8** %98, align 8, !dbg !3124, !tbaa !690
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3124
  %101 = load i8*, i8** %100, align 8, !dbg !3124, !tbaa !690
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3124
  %103 = load i8*, i8** %102, align 8, !dbg !3124, !tbaa !690
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3124
  %105 = load i8*, i8** %104, align 8, !dbg !3124, !tbaa !690
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3124
  br label %147, !dbg !3125

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.108, i64 0, i64 0), i32 noundef 5) #35, !dbg !3126
  %109 = load i8*, i8** %4, align 8, !dbg !3126, !tbaa !690
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3126
  %111 = load i8*, i8** %110, align 8, !dbg !3126, !tbaa !690
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3126
  %113 = load i8*, i8** %112, align 8, !dbg !3126, !tbaa !690
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3126
  %115 = load i8*, i8** %114, align 8, !dbg !3126, !tbaa !690
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3126
  %117 = load i8*, i8** %116, align 8, !dbg !3126, !tbaa !690
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3126
  %119 = load i8*, i8** %118, align 8, !dbg !3126, !tbaa !690
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3126
  %121 = load i8*, i8** %120, align 8, !dbg !3126, !tbaa !690
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3126
  %123 = load i8*, i8** %122, align 8, !dbg !3126, !tbaa !690
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3126
  %125 = load i8*, i8** %124, align 8, !dbg !3126, !tbaa !690
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3126
  br label %147, !dbg !3127

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.109, i64 0, i64 0), i32 noundef 5) #35, !dbg !3128
  %129 = load i8*, i8** %4, align 8, !dbg !3128, !tbaa !690
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3128
  %131 = load i8*, i8** %130, align 8, !dbg !3128, !tbaa !690
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3128
  %133 = load i8*, i8** %132, align 8, !dbg !3128, !tbaa !690
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3128
  %135 = load i8*, i8** %134, align 8, !dbg !3128, !tbaa !690
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3128
  %137 = load i8*, i8** %136, align 8, !dbg !3128, !tbaa !690
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3128
  %139 = load i8*, i8** %138, align 8, !dbg !3128, !tbaa !690
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3128
  %141 = load i8*, i8** %140, align 8, !dbg !3128, !tbaa !690
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3128
  %143 = load i8*, i8** %142, align 8, !dbg !3128, !tbaa !690
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3128
  %145 = load i8*, i8** %144, align 8, !dbg !3128, !tbaa !690
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3128
  br label %147, !dbg !3129

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3130
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3131 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3135, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %1, metadata !3136, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %2, metadata !3137, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %3, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8** %4, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 0, metadata !3140, metadata !DIExpression()), !dbg !3141
  br label %6, !dbg !3142

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3144
  call void @llvm.dbg.value(metadata i64 %7, metadata !3140, metadata !DIExpression()), !dbg !3141
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3145
  %9 = load i8*, i8** %8, align 8, !dbg !3145, !tbaa !690
  %10 = icmp eq i8* %9, null, !dbg !3147
  %11 = add i64 %7, 1, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %11, metadata !3140, metadata !DIExpression()), !dbg !3141
  br i1 %10, label %12, label %6, !dbg !3147, !llvm.loop !3149

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3151
  ret void, !dbg !3152
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3153 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3168, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %1, metadata !3169, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %2, metadata !3170, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %3, metadata !3171, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3172, metadata !DIExpression()), !dbg !3177
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3178
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3178
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3174, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 0, metadata !3173, metadata !DIExpression()), !dbg !3176
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3173, metadata !DIExpression()), !dbg !3176
  %11 = load i32, i32* %8, align 8, !dbg !3180
  %12 = icmp sgt i32 %11, -1, !dbg !3180
  br i1 %12, label %20, label %13, !dbg !3180

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3180
  store i32 %14, i32* %8, align 8, !dbg !3180
  %15 = icmp ult i32 %11, -7, !dbg !3180
  br i1 %15, label %16, label %20, !dbg !3180

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3180
  %18 = sext i32 %11 to i64, !dbg !3180
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3180
  br label %24, !dbg !3180

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3180
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3180
  store i8* %23, i8** %10, align 8, !dbg !3180
  br label %24, !dbg !3180

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3180
  %28 = load i8*, i8** %27, align 8, !dbg !3180
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3183
  store i8* %28, i8** %29, align 8, !dbg !3184, !tbaa !690
  %30 = icmp eq i8* %28, null, !dbg !3185
  br i1 %30, label %210, label %31, !dbg !3186

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 1, metadata !3173, metadata !DIExpression()), !dbg !3176
  %32 = icmp sgt i32 %25, -1, !dbg !3180
  br i1 %32, label %40, label %33, !dbg !3180

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3180
  store i32 %34, i32* %8, align 8, !dbg !3180
  %35 = icmp ult i32 %25, -7, !dbg !3180
  br i1 %35, label %36, label %40, !dbg !3180

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3180
  %38 = sext i32 %25 to i64, !dbg !3180
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3180
  br label %44, !dbg !3180

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3180
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3180
  store i8* %43, i8** %10, align 8, !dbg !3180
  br label %44, !dbg !3180

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3180
  %48 = load i8*, i8** %47, align 8, !dbg !3180
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3183
  store i8* %48, i8** %49, align 8, !dbg !3184, !tbaa !690
  %50 = icmp eq i8* %48, null, !dbg !3185
  br i1 %50, label %210, label %51, !dbg !3186

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 2, metadata !3173, metadata !DIExpression()), !dbg !3176
  %52 = icmp sgt i32 %45, -1, !dbg !3180
  br i1 %52, label %60, label %53, !dbg !3180

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3180
  store i32 %54, i32* %8, align 8, !dbg !3180
  %55 = icmp ult i32 %45, -7, !dbg !3180
  br i1 %55, label %56, label %60, !dbg !3180

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3180
  %58 = sext i32 %45 to i64, !dbg !3180
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3180
  br label %64, !dbg !3180

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3180
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3180
  store i8* %63, i8** %10, align 8, !dbg !3180
  br label %64, !dbg !3180

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3180
  %68 = load i8*, i8** %67, align 8, !dbg !3180
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3183
  store i8* %68, i8** %69, align 8, !dbg !3184, !tbaa !690
  %70 = icmp eq i8* %68, null, !dbg !3185
  br i1 %70, label %210, label %71, !dbg !3186

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 3, metadata !3173, metadata !DIExpression()), !dbg !3176
  %72 = icmp sgt i32 %65, -1, !dbg !3180
  br i1 %72, label %80, label %73, !dbg !3180

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3180
  store i32 %74, i32* %8, align 8, !dbg !3180
  %75 = icmp ult i32 %65, -7, !dbg !3180
  br i1 %75, label %76, label %80, !dbg !3180

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3180
  %78 = sext i32 %65 to i64, !dbg !3180
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3180
  br label %84, !dbg !3180

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3180
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3180
  store i8* %83, i8** %10, align 8, !dbg !3180
  br label %84, !dbg !3180

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3180
  %88 = load i8*, i8** %87, align 8, !dbg !3180
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3183
  store i8* %88, i8** %89, align 8, !dbg !3184, !tbaa !690
  %90 = icmp eq i8* %88, null, !dbg !3185
  br i1 %90, label %210, label %91, !dbg !3186

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 4, metadata !3173, metadata !DIExpression()), !dbg !3176
  %92 = icmp sgt i32 %85, -1, !dbg !3180
  br i1 %92, label %100, label %93, !dbg !3180

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3180
  store i32 %94, i32* %8, align 8, !dbg !3180
  %95 = icmp ult i32 %85, -7, !dbg !3180
  br i1 %95, label %96, label %100, !dbg !3180

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3180
  %98 = sext i32 %85 to i64, !dbg !3180
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3180
  br label %104, !dbg !3180

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3180
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3180
  store i8* %103, i8** %10, align 8, !dbg !3180
  br label %104, !dbg !3180

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3180
  %108 = load i8*, i8** %107, align 8, !dbg !3180
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3183
  store i8* %108, i8** %109, align 8, !dbg !3184, !tbaa !690
  %110 = icmp eq i8* %108, null, !dbg !3185
  br i1 %110, label %210, label %111, !dbg !3186

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 5, metadata !3173, metadata !DIExpression()), !dbg !3176
  %112 = icmp sgt i32 %105, -1, !dbg !3180
  br i1 %112, label %120, label %113, !dbg !3180

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3180
  store i32 %114, i32* %8, align 8, !dbg !3180
  %115 = icmp ult i32 %105, -7, !dbg !3180
  br i1 %115, label %116, label %120, !dbg !3180

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3180
  %118 = sext i32 %105 to i64, !dbg !3180
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3180
  br label %124, !dbg !3180

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3180
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3180
  store i8* %123, i8** %10, align 8, !dbg !3180
  br label %124, !dbg !3180

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3180
  %128 = load i8*, i8** %127, align 8, !dbg !3180
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3183
  store i8* %128, i8** %129, align 8, !dbg !3184, !tbaa !690
  %130 = icmp eq i8* %128, null, !dbg !3185
  br i1 %130, label %210, label %131, !dbg !3186

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 6, metadata !3173, metadata !DIExpression()), !dbg !3176
  %132 = icmp sgt i32 %125, -1, !dbg !3180
  br i1 %132, label %140, label %133, !dbg !3180

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3180
  store i32 %134, i32* %8, align 8, !dbg !3180
  %135 = icmp ult i32 %125, -7, !dbg !3180
  br i1 %135, label %136, label %140, !dbg !3180

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3180
  %138 = sext i32 %125 to i64, !dbg !3180
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3180
  br label %144, !dbg !3180

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3180
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3180
  store i8* %143, i8** %10, align 8, !dbg !3180
  br label %144, !dbg !3180

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3180
  %148 = load i8*, i8** %147, align 8, !dbg !3180
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3183
  store i8* %148, i8** %149, align 8, !dbg !3184, !tbaa !690
  %150 = icmp eq i8* %148, null, !dbg !3185
  br i1 %150, label %210, label %151, !dbg !3186

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 7, metadata !3173, metadata !DIExpression()), !dbg !3176
  %152 = icmp sgt i32 %145, -1, !dbg !3180
  br i1 %152, label %160, label %153, !dbg !3180

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3180
  store i32 %154, i32* %8, align 8, !dbg !3180
  %155 = icmp ult i32 %145, -7, !dbg !3180
  br i1 %155, label %156, label %160, !dbg !3180

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3180
  %158 = sext i32 %145 to i64, !dbg !3180
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3180
  br label %164, !dbg !3180

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3180
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3180
  store i8* %163, i8** %10, align 8, !dbg !3180
  br label %164, !dbg !3180

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3180
  %168 = load i8*, i8** %167, align 8, !dbg !3180
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3183
  store i8* %168, i8** %169, align 8, !dbg !3184, !tbaa !690
  %170 = icmp eq i8* %168, null, !dbg !3185
  br i1 %170, label %210, label %171, !dbg !3186

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 8, metadata !3173, metadata !DIExpression()), !dbg !3176
  %172 = icmp sgt i32 %165, -1, !dbg !3180
  br i1 %172, label %180, label %173, !dbg !3180

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3180
  store i32 %174, i32* %8, align 8, !dbg !3180
  %175 = icmp ult i32 %165, -7, !dbg !3180
  br i1 %175, label %176, label %180, !dbg !3180

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3180
  %178 = sext i32 %165 to i64, !dbg !3180
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3180
  br label %184, !dbg !3180

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3180
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3180
  store i8* %183, i8** %10, align 8, !dbg !3180
  br label %184, !dbg !3180

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3180
  %188 = load i8*, i8** %187, align 8, !dbg !3180
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3183
  store i8* %188, i8** %189, align 8, !dbg !3184, !tbaa !690
  %190 = icmp eq i8* %188, null, !dbg !3185
  br i1 %190, label %210, label %191, !dbg !3186

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 9, metadata !3173, metadata !DIExpression()), !dbg !3176
  %192 = icmp sgt i32 %185, -1, !dbg !3180
  br i1 %192, label %200, label %193, !dbg !3180

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3180
  store i32 %194, i32* %8, align 8, !dbg !3180
  %195 = icmp ult i32 %185, -7, !dbg !3180
  br i1 %195, label %196, label %200, !dbg !3180

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3180
  %198 = sext i32 %185 to i64, !dbg !3180
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3180
  br label %203, !dbg !3180

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3180
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3180
  store i8* %202, i8** %10, align 8, !dbg !3180
  br label %203, !dbg !3180

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3180
  %206 = load i8*, i8** %205, align 8, !dbg !3180
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3183
  store i8* %206, i8** %207, align 8, !dbg !3184, !tbaa !690
  %208 = icmp eq i8* %206, null, !dbg !3185
  %209 = select i1 %208, i64 9, i64 10, !dbg !3186
  br label %210, !dbg !3186

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3187
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3189
  ret void, !dbg !3189
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3190 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3194, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %2, metadata !3196, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %3, metadata !3197, metadata !DIExpression()), !dbg !3199
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3200
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3200
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3198, metadata !DIExpression()), !dbg !3201
  call void @llvm.va_start(i8* nonnull %7), !dbg !3202
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3203
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3203, !tbaa.struct !1023
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3203
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3203
  call void @llvm.va_end(i8* nonnull %7), !dbg !3204
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3205
  ret void, !dbg !3205
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3206 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3207, !tbaa !690
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.97, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3207
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.114, i64 0, i64 0), i32 noundef 5) #35, !dbg !3208
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.115, i64 0, i64 0)) #35, !dbg !3208
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.116, i64 0, i64 0), i32 noundef 5) #35, !dbg !3209
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.118, i64 0, i64 0)) #35, !dbg !3209
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #35, !dbg !3210
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #35, !dbg !3210
  ret void, !dbg !3211
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3212 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3217, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %2, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8* %0, metadata !3221, metadata !DIExpression()) #35, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()) #35, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %2, metadata !3225, metadata !DIExpression()) #35, !dbg !3226
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3228
  call void @llvm.dbg.value(metadata i8* %4, metadata !3229, metadata !DIExpression()) #35, !dbg !3234
  %5 = icmp eq i8* %4, null, !dbg !3236
  br i1 %5, label %6, label %7, !dbg !3238

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3239
  unreachable, !dbg !3239

7:                                                ; preds = %3
  ret i8* %4, !dbg !3240
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3222 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3221, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %2, metadata !3225, metadata !DIExpression()), !dbg !3241
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %4, metadata !3229, metadata !DIExpression()) #35, !dbg !3243
  %5 = icmp eq i8* %4, null, !dbg !3245
  br i1 %5, label %6, label %7, !dbg !3246

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3247
  unreachable, !dbg !3247

7:                                                ; preds = %3
  ret i8* %4, !dbg !3248
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3249 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3253, metadata !DIExpression()), !dbg !3254
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3255
  call void @llvm.dbg.value(metadata i8* %2, metadata !3229, metadata !DIExpression()) #35, !dbg !3256
  %3 = icmp eq i8* %2, null, !dbg !3258
  br i1 %3, label %4, label %5, !dbg !3259

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3260
  unreachable, !dbg !3260

5:                                                ; preds = %1
  ret i8* %2, !dbg !3261
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3262 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3266, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %0, metadata !3268, metadata !DIExpression()) #35, !dbg !3272
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3274
  call void @llvm.dbg.value(metadata i8* %2, metadata !3229, metadata !DIExpression()) #35, !dbg !3275
  %3 = icmp eq i8* %2, null, !dbg !3277
  br i1 %3, label %4, label %5, !dbg !3278

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3279
  unreachable, !dbg !3279

5:                                                ; preds = %1
  ret i8* %2, !dbg !3280
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3281 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3285, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %0, metadata !3253, metadata !DIExpression()) #35, !dbg !3287
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3289
  call void @llvm.dbg.value(metadata i8* %2, metadata !3229, metadata !DIExpression()) #35, !dbg !3290
  %3 = icmp eq i8* %2, null, !dbg !3292
  br i1 %3, label %4, label %5, !dbg !3293

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3294
  unreachable, !dbg !3294

5:                                                ; preds = %1
  ret i8* %2, !dbg !3295
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3296 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3300, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8* %0, metadata !3303, metadata !DIExpression()) #35, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()) #35, !dbg !3308
  %3 = icmp eq i64 %1, 0, !dbg !3310
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3310
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %5, metadata !3229, metadata !DIExpression()) #35, !dbg !3312
  %6 = icmp eq i8* %5, null, !dbg !3314
  br i1 %6, label %7, label %8, !dbg !3315

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3316
  unreachable, !dbg !3316

8:                                                ; preds = %2
  ret i8* %5, !dbg !3317
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3318 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3322, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %1, metadata !3323, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i8* %0, metadata !3325, metadata !DIExpression()) #35, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %1, metadata !3328, metadata !DIExpression()) #35, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %0, metadata !3303, metadata !DIExpression()) #35, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()) #35, !dbg !3331
  %3 = icmp eq i64 %1, 0, !dbg !3333
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3333
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %5, metadata !3229, metadata !DIExpression()) #35, !dbg !3335
  %6 = icmp eq i8* %5, null, !dbg !3337
  br i1 %6, label %7, label %8, !dbg !3338

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3339
  unreachable, !dbg !3339

8:                                                ; preds = %2
  ret i8* %5, !dbg !3340
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3341 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3345, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 %1, metadata !3346, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 %2, metadata !3347, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()) #35, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3352, metadata !DIExpression()) #35, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %2, metadata !3353, metadata !DIExpression()) #35, !dbg !3354
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3356
  call void @llvm.dbg.value(metadata i8* %4, metadata !3229, metadata !DIExpression()) #35, !dbg !3357
  %5 = icmp eq i8* %4, null, !dbg !3359
  br i1 %5, label %6, label %7, !dbg !3360

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3361
  unreachable, !dbg !3361

7:                                                ; preds = %3
  ret i8* %4, !dbg !3362
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3363 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3367, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8* null, metadata !3221, metadata !DIExpression()) #35, !dbg !3370
  call void @llvm.dbg.value(metadata i64 %0, metadata !3224, metadata !DIExpression()) #35, !dbg !3370
  call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()) #35, !dbg !3370
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %3, metadata !3229, metadata !DIExpression()) #35, !dbg !3373
  %4 = icmp eq i8* %3, null, !dbg !3375
  br i1 %4, label %5, label %6, !dbg !3376

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3377
  unreachable, !dbg !3377

6:                                                ; preds = %2
  ret i8* %3, !dbg !3378
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3379 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3383, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %1, metadata !3384, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8* null, metadata !3345, metadata !DIExpression()) #35, !dbg !3386
  call void @llvm.dbg.value(metadata i64 %0, metadata !3346, metadata !DIExpression()) #35, !dbg !3386
  call void @llvm.dbg.value(metadata i64 %1, metadata !3347, metadata !DIExpression()) #35, !dbg !3386
  call void @llvm.dbg.value(metadata i8* null, metadata !3349, metadata !DIExpression()) #35, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %0, metadata !3352, metadata !DIExpression()) #35, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()) #35, !dbg !3388
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3390
  call void @llvm.dbg.value(metadata i8* %3, metadata !3229, metadata !DIExpression()) #35, !dbg !3391
  %4 = icmp eq i8* %3, null, !dbg !3393
  br i1 %4, label %5, label %6, !dbg !3394

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3395
  unreachable, !dbg !3395

6:                                                ; preds = %2
  ret i8* %3, !dbg !3396
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3397 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3401, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64* %1, metadata !3402, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i8* %0, metadata !603, metadata !DIExpression()) #35, !dbg !3404
  call void @llvm.dbg.value(metadata i64* %1, metadata !604, metadata !DIExpression()) #35, !dbg !3404
  call void @llvm.dbg.value(metadata i64 1, metadata !605, metadata !DIExpression()) #35, !dbg !3404
  %3 = load i64, i64* %1, align 8, !dbg !3406, !tbaa !1407
  call void @llvm.dbg.value(metadata i64 %3, metadata !606, metadata !DIExpression()) #35, !dbg !3404
  %4 = icmp eq i8* %0, null, !dbg !3407
  br i1 %4, label %5, label %8, !dbg !3409

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3410
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3413
  br label %15, !dbg !3413

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3414
  %10 = add nuw i64 %9, 1, !dbg !3414
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !3414
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3414
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3414
  call void @llvm.dbg.value(metadata i64 %13, metadata !606, metadata !DIExpression()) #35, !dbg !3404
  br i1 %12, label %14, label %15, !dbg !3417

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3418
  unreachable, !dbg !3418

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3404
  call void @llvm.dbg.value(metadata i64 %16, metadata !606, metadata !DIExpression()) #35, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %0, metadata !3221, metadata !DIExpression()) #35, !dbg !3419
  call void @llvm.dbg.value(metadata i64 %16, metadata !3224, metadata !DIExpression()) #35, !dbg !3419
  call void @llvm.dbg.value(metadata i64 1, metadata !3225, metadata !DIExpression()) #35, !dbg !3419
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %17, metadata !3229, metadata !DIExpression()) #35, !dbg !3422
  %18 = icmp eq i8* %17, null, !dbg !3424
  br i1 %18, label %19, label %20, !dbg !3425

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3426
  unreachable, !dbg !3426

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !603, metadata !DIExpression()) #35, !dbg !3404
  store i64 %16, i64* %1, align 8, !dbg !3427, !tbaa !1407
  ret i8* %17, !dbg !3428
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !598 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !603, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64* %1, metadata !604, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 %2, metadata !605, metadata !DIExpression()), !dbg !3429
  %4 = load i64, i64* %1, align 8, !dbg !3430, !tbaa !1407
  call void @llvm.dbg.value(metadata i64 %4, metadata !606, metadata !DIExpression()), !dbg !3429
  %5 = icmp eq i8* %0, null, !dbg !3431
  br i1 %5, label %6, label %13, !dbg !3432

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3433
  br i1 %7, label %8, label %20, !dbg !3434

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %9, metadata !606, metadata !DIExpression()), !dbg !3429
  %10 = icmp ugt i64 %2, 128, !dbg !3437
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %12, metadata !606, metadata !DIExpression()), !dbg !3429
  br label %20, !dbg !3439

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3440
  %15 = add nuw i64 %14, 1, !dbg !3440
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3440
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3440
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %18, metadata !606, metadata !DIExpression()), !dbg !3429
  br i1 %17, label %19, label %20, !dbg !3441

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3442
  unreachable, !dbg !3442

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3429
  call void @llvm.dbg.value(metadata i64 %21, metadata !606, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i8* %0, metadata !3221, metadata !DIExpression()) #35, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %21, metadata !3224, metadata !DIExpression()) #35, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %2, metadata !3225, metadata !DIExpression()) #35, !dbg !3443
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %22, metadata !3229, metadata !DIExpression()) #35, !dbg !3446
  %23 = icmp eq i8* %22, null, !dbg !3448
  br i1 %23, label %24, label %25, !dbg !3449

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3450
  unreachable, !dbg !3450

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !603, metadata !DIExpression()), !dbg !3429
  store i64 %21, i64* %1, align 8, !dbg !3451, !tbaa !1407
  ret i8* %22, !dbg !3452
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !610 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !618, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64* %1, metadata !619, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 %2, metadata !620, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 %3, metadata !621, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 %4, metadata !622, metadata !DIExpression()), !dbg !3453
  %6 = load i64, i64* %1, align 8, !dbg !3454, !tbaa !1407
  call void @llvm.dbg.value(metadata i64 %6, metadata !623, metadata !DIExpression()), !dbg !3453
  %7 = ashr i64 %6, 1, !dbg !3455
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3455
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3455
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %10, metadata !624, metadata !DIExpression()), !dbg !3453
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %11, metadata !624, metadata !DIExpression()), !dbg !3453
  %12 = icmp sgt i64 %3, -1, !dbg !3458
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3460
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %15, metadata !624, metadata !DIExpression()), !dbg !3453
  %16 = icmp slt i64 %4, 0, !dbg !3461
  br i1 %16, label %17, label %30, !dbg !3461

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3461
  br i1 %18, label %19, label %24, !dbg !3461

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3461
  %21 = udiv i64 9223372036854775807, %20, !dbg !3461
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3461
  br i1 %23, label %46, label %43, !dbg !3461

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3461
  br i1 %25, label %43, label %26, !dbg !3461

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3461
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3461
  %29 = icmp ult i64 %28, %15, !dbg !3461
  br i1 %29, label %46, label %43, !dbg !3461

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3461
  br i1 %31, label %43, label %32, !dbg !3461

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3461
  br i1 %33, label %34, label %40, !dbg !3461

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3461
  br i1 %35, label %43, label %36, !dbg !3461

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3461
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3461
  %39 = icmp ult i64 %38, %4, !dbg !3461
  br i1 %39, label %46, label %43, !dbg !3461

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3461
  %42 = icmp ult i64 %41, %15, !dbg !3461
  br i1 %42, label %46, label %43, !dbg !3461

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !625, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3453
  %44 = mul i64 %15, %4, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %44, metadata !625, metadata !DIExpression()), !dbg !3453
  %45 = icmp slt i64 %44, 128, !dbg !3461
  br i1 %45, label %46, label %52, !dbg !3461

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !626, metadata !DIExpression()), !dbg !3453
  %48 = sdiv i64 %47, %4, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %48, metadata !624, metadata !DIExpression()), !dbg !3453
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3465
  call void @llvm.dbg.value(metadata i64 %51, metadata !625, metadata !DIExpression()), !dbg !3453
  br label %52, !dbg !3466

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3453
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3453
  call void @llvm.dbg.value(metadata i64 %54, metadata !625, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 %53, metadata !624, metadata !DIExpression()), !dbg !3453
  %55 = icmp eq i8* %0, null, !dbg !3467
  br i1 %55, label %56, label %57, !dbg !3469

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3470, !tbaa !1407
  br label %57, !dbg !3471

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3472
  %59 = icmp slt i64 %58, %2, !dbg !3474
  br i1 %59, label %60, label %97, !dbg !3475

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3476
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3476
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %63, metadata !624, metadata !DIExpression()), !dbg !3453
  br i1 %62, label %96, label %64, !dbg !3477

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3478
  br i1 %66, label %96, label %67, !dbg !3478

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3479

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3479
  br i1 %69, label %70, label %75, !dbg !3479

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3479
  %72 = udiv i64 9223372036854775807, %71, !dbg !3479
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3479
  br i1 %74, label %96, label %94, !dbg !3479

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3479
  br i1 %76, label %94, label %77, !dbg !3479

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3479
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3479
  %80 = icmp ult i64 %79, %63, !dbg !3479
  br i1 %80, label %96, label %94, !dbg !3479

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3479
  br i1 %82, label %94, label %83, !dbg !3479

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3479
  br i1 %84, label %85, label %91, !dbg !3479

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3479
  br i1 %86, label %94, label %87, !dbg !3479

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3479
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3479
  %90 = icmp ult i64 %89, %4, !dbg !3479
  br i1 %90, label %96, label %94, !dbg !3479

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3479
  %93 = icmp ult i64 %92, %63, !dbg !3479
  br i1 %93, label %96, label %94, !dbg !3479

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !625, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3453
  %95 = mul i64 %63, %4, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %95, metadata !625, metadata !DIExpression()), !dbg !3453
  br label %97, !dbg !3480

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !3481
  unreachable, !dbg !3481

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3453
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3453
  call void @llvm.dbg.value(metadata i64 %99, metadata !625, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 %98, metadata !624, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8* %0, metadata !3300, metadata !DIExpression()) #35, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %99, metadata !3301, metadata !DIExpression()) #35, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %0, metadata !3303, metadata !DIExpression()) #35, !dbg !3484
  call void @llvm.dbg.value(metadata i64 %99, metadata !3307, metadata !DIExpression()) #35, !dbg !3484
  %100 = icmp eq i64 %99, 0, !dbg !3486
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3486
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !3487
  call void @llvm.dbg.value(metadata i8* %102, metadata !3229, metadata !DIExpression()) #35, !dbg !3488
  %103 = icmp eq i8* %102, null, !dbg !3490
  br i1 %103, label %104, label %105, !dbg !3491

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3492
  unreachable, !dbg !3492

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !618, metadata !DIExpression()), !dbg !3453
  store i64 %98, i64* %1, align 8, !dbg !3493, !tbaa !1407
  ret i8* %102, !dbg !3494
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3495 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3497, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i64 %0, metadata !3499, metadata !DIExpression()) #35, !dbg !3503
  call void @llvm.dbg.value(metadata i64 1, metadata !3502, metadata !DIExpression()) #35, !dbg !3503
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %2, metadata !3229, metadata !DIExpression()) #35, !dbg !3506
  %3 = icmp eq i8* %2, null, !dbg !3508
  br i1 %3, label %4, label %5, !dbg !3509

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3510
  unreachable, !dbg !3510

5:                                                ; preds = %1
  ret i8* %2, !dbg !3511
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3500 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3499, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 %1, metadata !3502, metadata !DIExpression()), !dbg !3512
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3513
  call void @llvm.dbg.value(metadata i8* %3, metadata !3229, metadata !DIExpression()) #35, !dbg !3514
  %4 = icmp eq i8* %3, null, !dbg !3516
  br i1 %4, label %5, label %6, !dbg !3517

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3518
  unreachable, !dbg !3518

6:                                                ; preds = %2
  ret i8* %3, !dbg !3519
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3520 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3522, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %0, metadata !3524, metadata !DIExpression()) #35, !dbg !3528
  call void @llvm.dbg.value(metadata i64 1, metadata !3527, metadata !DIExpression()) #35, !dbg !3528
  call void @llvm.dbg.value(metadata i64 %0, metadata !3530, metadata !DIExpression()) #35, !dbg !3534
  call void @llvm.dbg.value(metadata i64 1, metadata !3533, metadata !DIExpression()) #35, !dbg !3534
  call void @llvm.dbg.value(metadata i64 %0, metadata !3530, metadata !DIExpression()) #35, !dbg !3534
  call void @llvm.dbg.value(metadata i64 1, metadata !3533, metadata !DIExpression()) #35, !dbg !3534
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %2, metadata !3229, metadata !DIExpression()) #35, !dbg !3537
  %3 = icmp eq i8* %2, null, !dbg !3539
  br i1 %3, label %4, label %5, !dbg !3540

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3541
  unreachable, !dbg !3541

5:                                                ; preds = %1
  ret i8* %2, !dbg !3542
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3525 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3524, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 %1, metadata !3527, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 %0, metadata !3530, metadata !DIExpression()) #35, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3533, metadata !DIExpression()) #35, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %0, metadata !3530, metadata !DIExpression()) #35, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3533, metadata !DIExpression()) #35, !dbg !3544
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3546
  call void @llvm.dbg.value(metadata i8* %3, metadata !3229, metadata !DIExpression()) #35, !dbg !3547
  %4 = icmp eq i8* %3, null, !dbg !3549
  br i1 %4, label %5, label %6, !dbg !3550

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3551
  unreachable, !dbg !3551

6:                                                ; preds = %2
  ret i8* %3, !dbg !3552
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3553 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3557, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %1, metadata !3558, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %1, metadata !3253, metadata !DIExpression()) #35, !dbg !3560
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3562
  call void @llvm.dbg.value(metadata i8* %3, metadata !3229, metadata !DIExpression()) #35, !dbg !3563
  %4 = icmp eq i8* %3, null, !dbg !3565
  br i1 %4, label %5, label %6, !dbg !3566

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3567
  unreachable, !dbg !3567

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3568, metadata !DIExpression()) #35, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %0, metadata !3574, metadata !DIExpression()) #35, !dbg !3576
  call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()) #35, !dbg !3576
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3578
  ret i8* %3, !dbg !3579
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3580 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3584, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %1, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %1, metadata !3266, metadata !DIExpression()) #35, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %1, metadata !3268, metadata !DIExpression()) #35, !dbg !3589
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3591
  call void @llvm.dbg.value(metadata i8* %3, metadata !3229, metadata !DIExpression()) #35, !dbg !3592
  %4 = icmp eq i8* %3, null, !dbg !3594
  br i1 %4, label %5, label %6, !dbg !3595

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3596
  unreachable, !dbg !3596

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3568, metadata !DIExpression()) #35, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %0, metadata !3574, metadata !DIExpression()) #35, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()) #35, !dbg !3597
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3599
  ret i8* %3, !dbg !3600
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3601 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3605, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %1, metadata !3606, metadata !DIExpression()), !dbg !3608
  %3 = add nsw i64 %1, 1, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %3, metadata !3266, metadata !DIExpression()) #35, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %3, metadata !3268, metadata !DIExpression()) #35, !dbg !3612
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3614
  call void @llvm.dbg.value(metadata i8* %4, metadata !3229, metadata !DIExpression()) #35, !dbg !3615
  %5 = icmp eq i8* %4, null, !dbg !3617
  br i1 %5, label %6, label %7, !dbg !3618

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3619
  unreachable, !dbg !3619

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3607, metadata !DIExpression()), !dbg !3608
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3620
  store i8 0, i8* %8, align 1, !dbg !3621, !tbaa !787
  call void @llvm.dbg.value(metadata i8* %4, metadata !3568, metadata !DIExpression()) #35, !dbg !3622
  call void @llvm.dbg.value(metadata i8* %0, metadata !3574, metadata !DIExpression()) #35, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()) #35, !dbg !3622
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3624
  ret i8* %4, !dbg !3625
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3626 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3628, metadata !DIExpression()), !dbg !3629
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !3630
  %3 = add i64 %2, 1, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %0, metadata !3557, metadata !DIExpression()) #35, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %3, metadata !3558, metadata !DIExpression()) #35, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %3, metadata !3253, metadata !DIExpression()) #35, !dbg !3634
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3636
  call void @llvm.dbg.value(metadata i8* %4, metadata !3229, metadata !DIExpression()) #35, !dbg !3637
  %5 = icmp eq i8* %4, null, !dbg !3639
  br i1 %5, label %6, label %7, !dbg !3640

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3641
  unreachable, !dbg !3641

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3568, metadata !DIExpression()) #35, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %0, metadata !3574, metadata !DIExpression()) #35, !dbg !3642
  call void @llvm.dbg.value(metadata i64 %3, metadata !3575, metadata !DIExpression()) #35, !dbg !3642
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !3644
  ret i8* %4, !dbg !3645
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3646 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3651, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %1, metadata !3648, metadata !DIExpression()), !dbg !3652
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.130, i64 0, i64 0), i32 noundef 5) #35, !dbg !3651
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i64 0, i64 0), i8* noundef %2) #35, !dbg !3651
  %3 = icmp eq i32 %1, 0, !dbg !3651
  tail call void @llvm.assume(i1 %3), !dbg !3651
  tail call void @abort() #37, !dbg !3653
  unreachable, !dbg !3653
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #12 !dbg !3654 {
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3659, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 %1, metadata !3660, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %2, metadata !3661, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %3, metadata !3662, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i8* %4, metadata !3663, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i8* %5, metadata !3664, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 %6, metadata !3665, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 %7, metadata !3666, metadata !DIExpression()), !dbg !3676
  %10 = bitcast i64* %9 to i8*, !dbg !3677
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !3677
  call void @llvm.dbg.value(metadata i64* %9, metadata !3667, metadata !DIExpression(DW_OP_deref)), !dbg !3676
  %11 = call i32 @xstrtoumax(i8* noundef nonnull %0, i8** noundef null, i32 noundef %1, i64* noundef nonnull %9, i8* noundef %4) #35, !dbg !3678
  call void @llvm.dbg.value(metadata i32 %11, metadata !3669, metadata !DIExpression()), !dbg !3676
  %12 = icmp eq i32 %11, 4, !dbg !3679
  br i1 %12, label %41, label %13, !dbg !3681

13:                                               ; preds = %8
  %14 = load i64, i64* %9, align 8, !dbg !3682, !tbaa !1407
  call void @llvm.dbg.value(metadata i64 %14, metadata !3667, metadata !DIExpression()), !dbg !3676
  %15 = icmp ult i64 %14, %2, !dbg !3685
  br i1 %15, label %16, label %21, !dbg !3686

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %2, metadata !3668, metadata !DIExpression()), !dbg !3676
  %17 = and i32 %7, 4, !dbg !3687
  %18 = icmp eq i32 %17, 0, !dbg !3689
  %19 = select i1 %18, i32 75, i32 34, !dbg !3689
  call void @llvm.dbg.value(metadata i32 %19, metadata !3671, metadata !DIExpression()), !dbg !3676
  %20 = icmp eq i32 %11, 0, !dbg !3690
  call void @llvm.dbg.value(metadata i32 undef, metadata !3669, metadata !DIExpression()), !dbg !3676
  br i1 %20, label %34, label %28, !dbg !3692

21:                                               ; preds = %13
  %22 = icmp ugt i64 %14, %3, !dbg !3693
  br i1 %22, label %23, label %28, !dbg !3695

23:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %3, metadata !3668, metadata !DIExpression()), !dbg !3676
  %24 = and i32 %7, 8, !dbg !3696
  %25 = icmp eq i32 %24, 0, !dbg !3698
  %26 = select i1 %25, i32 75, i32 34, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %26, metadata !3671, metadata !DIExpression()), !dbg !3676
  %27 = icmp eq i32 %11, 0, !dbg !3699
  call void @llvm.dbg.value(metadata i32 undef, metadata !3669, metadata !DIExpression()), !dbg !3676
  br i1 %27, label %34, label %28, !dbg !3701

28:                                               ; preds = %23, %16, %21
  %29 = phi i32 [ %19, %16 ], [ %26, %23 ], [ 75, %21 ]
  %30 = phi i64 [ %2, %16 ], [ %3, %23 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !3668, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 %11, metadata !3669, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 %29, metadata !3671, metadata !DIExpression()), !dbg !3676
  %31 = icmp eq i32 %11, 1, !dbg !3702
  %32 = select i1 %31, i32 %29, i32 0, !dbg !3703
  call void @llvm.dbg.value(metadata i32 %32, metadata !3672, metadata !DIExpression()), !dbg !3676
  %33 = icmp eq i32 %11, 0, !dbg !3704
  br i1 %33, label %46, label %34, !dbg !3705

34:                                               ; preds = %16, %23, %28
  %35 = phi i32 [ %32, %28 ], [ %26, %23 ], [ %19, %16 ]
  %36 = phi i1 [ %31, %28 ], [ true, %23 ], [ true, %16 ]
  %37 = phi i64 [ %30, %28 ], [ %3, %23 ], [ %2, %16 ]
  %38 = and i32 %7, 2
  %39 = icmp ne i32 %38, 0
  %40 = and i1 %39, %36, !dbg !3706
  call void @llvm.dbg.value(metadata i64 undef, metadata !3667, metadata !DIExpression()), !dbg !3676
  br i1 %40, label %46, label %41, !dbg !3706

41:                                               ; preds = %8, %34
  %42 = phi i32 [ %35, %34 ], [ 0, %8 ]
  %43 = icmp eq i32 %6, 0, !dbg !3707
  %44 = select i1 %43, i32 1, i32 %6, !dbg !3707
  %45 = call i8* @quote(i8* noundef nonnull %0) #35, !dbg !3708
  call void (i32, i32, i8*, ...) @error(i32 noundef %44, i32 noundef %42, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i64 0, i64 0), i8* noundef nonnull %5, i8* noundef %45) #35, !dbg !3708
  unreachable, !dbg !3708

46:                                               ; preds = %34, %28
  %47 = phi i32 [ %35, %34 ], [ %32, %28 ]
  %48 = phi i64 [ %37, %34 ], [ %30, %28 ]
  %49 = tail call i32* @__errno_location() #38, !dbg !3709
  store i32 %47, i32* %49, align 4, !dbg !3710, !tbaa !778
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !3711
  ret i64 %48, !dbg !3712
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(i8* noundef nonnull %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef nonnull %4, i32 noundef %5) local_unnamed_addr #12 !dbg !3713 {
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3717, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i64 %1, metadata !3718, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i64 %2, metadata !3719, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i8* %3, metadata !3720, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i8* %4, metadata !3721, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %5, metadata !3722, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i8* %0, metadata !3659, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i32 10, metadata !3660, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %1, metadata !3661, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %2, metadata !3662, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %3, metadata !3663, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %4, metadata !3664, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %5, metadata !3665, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i32 0, metadata !3666, metadata !DIExpression()) #35, !dbg !3724
  %8 = bitcast i64* %7 to i8*, !dbg !3726
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #35, !dbg !3726
  call void @llvm.dbg.value(metadata i64* %7, metadata !3667, metadata !DIExpression(DW_OP_deref)) #35, !dbg !3724
  %9 = call i32 @xstrtoumax(i8* noundef nonnull %0, i8** noundef null, i32 noundef 10, i64* noundef nonnull %7, i8* noundef %3) #35, !dbg !3727
  call void @llvm.dbg.value(metadata i32 %9, metadata !3669, metadata !DIExpression()) #35, !dbg !3724
  %10 = icmp eq i32 %9, 4, !dbg !3728
  br i1 %10, label %25, label %11, !dbg !3729

11:                                               ; preds = %6
  %12 = load i64, i64* %7, align 8, !dbg !3730, !tbaa !1407
  call void @llvm.dbg.value(metadata i64 %12, metadata !3667, metadata !DIExpression()) #35, !dbg !3724
  %13 = icmp ult i64 %12, %1, !dbg !3731
  br i1 %13, label %14, label %16, !dbg !3732

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 %1, metadata !3668, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i32 75, metadata !3671, metadata !DIExpression()) #35, !dbg !3724
  %15 = icmp eq i32 %9, 0, !dbg !3733
  call void @llvm.dbg.value(metadata i32 undef, metadata !3669, metadata !DIExpression()) #35, !dbg !3724
  br i1 %15, label %25, label %20, !dbg !3734

16:                                               ; preds = %11
  %17 = icmp ugt i64 %12, %2, !dbg !3735
  br i1 %17, label %18, label %20, !dbg !3736

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 %2, metadata !3668, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i32 75, metadata !3671, metadata !DIExpression()) #35, !dbg !3724
  %19 = icmp eq i32 %9, 0, !dbg !3737
  call void @llvm.dbg.value(metadata i32 undef, metadata !3669, metadata !DIExpression()) #35, !dbg !3724
  br i1 %19, label %25, label %20, !dbg !3738

20:                                               ; preds = %18, %16, %14
  %21 = phi i64 [ %1, %14 ], [ %2, %18 ], [ %12, %16 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !3668, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %9, metadata !3669, metadata !DIExpression()) #35, !dbg !3724
  call void @llvm.dbg.value(metadata i32 75, metadata !3671, metadata !DIExpression()) #35, !dbg !3724
  %22 = icmp eq i32 %9, 1, !dbg !3739
  %23 = select i1 %22, i32 75, i32 0, !dbg !3740
  call void @llvm.dbg.value(metadata i32 %23, metadata !3672, metadata !DIExpression()) #35, !dbg !3724
  %24 = icmp eq i32 %9, 0, !dbg !3741
  br i1 %24, label %30, label %25, !dbg !3742

25:                                               ; preds = %14, %18, %20, %6
  %26 = phi i32 [ 0, %6 ], [ %23, %20 ], [ 75, %18 ], [ 75, %14 ]
  %27 = icmp eq i32 %5, 0, !dbg !3743
  %28 = select i1 %27, i32 1, i32 %5, !dbg !3743
  %29 = call i8* @quote(i8* noundef nonnull %0) #35, !dbg !3744
  call void (i32, i32, i8*, ...) @error(i32 noundef %28, i32 noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i64 0, i64 0), i8* noundef nonnull %4, i8* noundef %29) #35, !dbg !3744
  unreachable, !dbg !3744

30:                                               ; preds = %20
  %31 = tail call i32* @__errno_location() #38, !dbg !3745
  store i32 %23, i32* %31, align 4, !dbg !3746, !tbaa !778
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #35, !dbg !3747
  ret i64 %21, !dbg !3748
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #12 !dbg !3749 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3755, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i8** %1, metadata !3756, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i32 %2, metadata !3757, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i64* %3, metadata !3758, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i8* %4, metadata !3759, metadata !DIExpression()), !dbg !3773
  %7 = bitcast i8** %6 to i8*, !dbg !3774
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #35, !dbg !3774
  %8 = icmp eq i8** %1, null, !dbg !3775
  call void @llvm.dbg.value(metadata i8** %21, metadata !3761, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i8* %0, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 undef, metadata !3765, metadata !DIExpression()), !dbg !3776
  %9 = tail call i16** @__ctype_b_loc() #38, !dbg !3773
  %10 = load i16*, i16** %9, align 8, !tbaa !690
  br label %11, !dbg !3777

11:                                               ; preds = %11, %5
  %12 = phi i8* [ %0, %5 ], [ %19, %11 ], !dbg !3776
  %13 = load i8, i8* %12, align 1, !dbg !3776, !tbaa !787
  call void @llvm.dbg.value(metadata i8 %13, metadata !3765, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %12, metadata !3762, metadata !DIExpression()), !dbg !3776
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i16, i16* %10, i64 %14, !dbg !3778
  %16 = load i16, i16* %15, align 2, !dbg !3778, !tbaa !812
  %17 = and i16 %16, 8192, !dbg !3778
  %18 = icmp eq i16 %17, 0, !dbg !3777
  %19 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !3779
  call void @llvm.dbg.value(metadata i8* %19, metadata !3762, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 undef, metadata !3765, metadata !DIExpression()), !dbg !3776
  br i1 %18, label %20, label %11, !dbg !3777, !llvm.loop !3780

20:                                               ; preds = %11
  %21 = select i1 %8, i8** %6, i8** %1, !dbg !3775
  %22 = icmp eq i8 %13, 45, !dbg !3782
  br i1 %22, label %23, label %24, !dbg !3784

23:                                               ; preds = %20
  store i8* %0, i8** %21, align 8, !dbg !3785, !tbaa !690
  br label %387

24:                                               ; preds = %20
  %25 = tail call i32* @__errno_location() #38, !dbg !3787
  store i32 0, i32* %25, align 4, !dbg !3788, !tbaa !778
  %26 = call i64 @strtoumax(i8* noundef %0, i8** noundef %21, i32 noundef %2) #35, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %26, metadata !3766, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i32 0, metadata !3767, metadata !DIExpression()), !dbg !3773
  %27 = load i8*, i8** %21, align 8, !dbg !3790, !tbaa !690
  %28 = icmp eq i8* %27, %0, !dbg !3792
  br i1 %28, label %29, label %38, !dbg !3793

29:                                               ; preds = %24
  %30 = icmp eq i8* %4, null, !dbg !3794
  br i1 %30, label %387, label %31, !dbg !3797

31:                                               ; preds = %29
  %32 = load i8, i8* %0, align 1, !dbg !3798, !tbaa !787
  %33 = icmp eq i8 %32, 0, !dbg !3798
  br i1 %33, label %387, label %34, !dbg !3799

34:                                               ; preds = %31
  %35 = zext i8 %32 to i32, !dbg !3798
  %36 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %35) #36, !dbg !3800
  %37 = icmp eq i8* %36, null, !dbg !3800
  br i1 %37, label %387, label %45, !dbg !3801

38:                                               ; preds = %24
  %39 = load i32, i32* %25, align 4, !dbg !3802, !tbaa !778
  switch i32 %39, label %387 [
    i32 0, label %41
    i32 34, label %40
  ], !dbg !3804

40:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 1, metadata !3767, metadata !DIExpression()), !dbg !3773
  br label %41, !dbg !3805

41:                                               ; preds = %38, %40
  %42 = phi i32 [ 1, %40 ], [ %39, %38 ], !dbg !3773
  call void @llvm.dbg.value(metadata i32 %42, metadata !3767, metadata !DIExpression()), !dbg !3773
  %43 = icmp eq i8* %4, null, !dbg !3807
  br i1 %43, label %44, label %45, !dbg !3809

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 %26, metadata !3766, metadata !DIExpression()), !dbg !3773
  store i64 %26, i64* %3, align 8, !dbg !3810, !tbaa !1407
  br label %387, !dbg !3812

45:                                               ; preds = %34, %41
  %46 = phi i32 [ %42, %41 ], [ 0, %34 ]
  %47 = phi i64 [ %26, %41 ], [ 1, %34 ]
  %48 = load i8, i8* %27, align 1, !dbg !3813, !tbaa !787
  %49 = icmp eq i8 %48, 0, !dbg !3814
  br i1 %49, label %384, label %50, !dbg !3815

50:                                               ; preds = %45
  %51 = zext i8 %48 to i32, !dbg !3813
  %52 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %51) #36, !dbg !3816
  %53 = icmp eq i8* %52, null, !dbg !3816
  br i1 %53, label %54, label %56, !dbg !3818

54:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %26, metadata !3766, metadata !DIExpression()), !dbg !3773
  store i64 %47, i64* %3, align 8, !dbg !3819, !tbaa !1407
  %55 = or i32 %46, 2, !dbg !3821
  br label %387, !dbg !3822

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !3768, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 1, metadata !3771, metadata !DIExpression()), !dbg !3823
  switch i8 %48, label %69 [
    i8 69, label %57
    i8 71, label %57
    i8 103, label %57
    i8 107, label %57
    i8 75, label %57
    i8 77, label %57
    i8 109, label %57
    i8 80, label %57
    i8 81, label %57
    i8 82, label %57
    i8 84, label %57
    i8 116, label %57
    i8 89, label %57
    i8 90, label %57
  ], !dbg !3824

57:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56
  %58 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #36, !dbg !3825
  %59 = icmp eq i8* %58, null, !dbg !3825
  br i1 %59, label %69, label %60, !dbg !3828

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !3829
  %62 = load i8, i8* %61, align 1, !dbg !3829, !tbaa !787
  switch i8 %62, label %69 [
    i8 105, label %63
    i8 66, label %68
    i8 68, label %68
  ], !dbg !3830

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !3831
  %65 = load i8, i8* %64, align 1, !dbg !3831, !tbaa !787
  %66 = icmp eq i8 %65, 66, !dbg !3834
  %67 = select i1 %66, i64 3, i64 1, !dbg !3835
  br label %69, !dbg !3835

68:                                               ; preds = %60, %60
  call void @llvm.dbg.value(metadata i32 1000, metadata !3768, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 2, metadata !3771, metadata !DIExpression()), !dbg !3823
  br label %69, !dbg !3836

69:                                               ; preds = %63, %57, %60, %68, %56
  %70 = phi i64 [ 1024, %56 ], [ 1024, %60 ], [ 1000, %68 ], [ 1024, %57 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %56 ], [ 1, %60 ], [ 2, %68 ], [ 1, %57 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3771, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3768, metadata !DIExpression()), !dbg !3823
  switch i8 %48, label %382 [
    i8 98, label %303
    i8 66, label %308
    i8 99, label %373
    i8 69, label %272
    i8 71, label %313
    i8 103, label %313
    i8 107, label %329
    i8 75, label %329
    i8 77, label %335
    i8 109, label %335
    i8 80, label %246
    i8 81, label %195
    i8 82, label %149
    i8 84, label %346
    i8 116, label %346
    i8 119, label %367
    i8 89, label %108
    i8 90, label %72
  ], !dbg !3837

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 7, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3856
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3856
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3858
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !3858
  %75 = mul i64 %47, %70, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %75, metadata !3855, metadata !DIExpression()) #35, !dbg !3856
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !3856
  call void @llvm.dbg.value(metadata i1 %74, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i1 %74, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3856
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3856
  %77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76) #35, !dbg !3858
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !3858
  %79 = mul i64 %76, %70, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %79, metadata !3855, metadata !DIExpression()) #35, !dbg !3856
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !3856
  %81 = or i1 %74, %78, !dbg !3860
  call void @llvm.dbg.value(metadata i1 %81, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i1 %81, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3856
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3856
  %82 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80) #35, !dbg !3858
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !3858
  %84 = mul i64 %80, %70, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %84, metadata !3855, metadata !DIExpression()) #35, !dbg !3856
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !3856
  %86 = or i1 %81, %83, !dbg !3860
  call void @llvm.dbg.value(metadata i1 %86, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i1 %86, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3856
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3856
  %87 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85) #35, !dbg !3858
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !3858
  %89 = mul i64 %85, %70, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %89, metadata !3855, metadata !DIExpression()) #35, !dbg !3856
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !3856
  %91 = or i1 %86, %88, !dbg !3860
  call void @llvm.dbg.value(metadata i1 %91, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i1 %91, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3856
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3856
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90) #35, !dbg !3858
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !3858
  %94 = mul i64 %90, %70, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %94, metadata !3855, metadata !DIExpression()) #35, !dbg !3856
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !3856
  %96 = or i1 %91, %93, !dbg !3860
  call void @llvm.dbg.value(metadata i1 %96, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i1 %96, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3856
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3856
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95) #35, !dbg !3858
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !3858
  %99 = mul i64 %95, %70, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %99, metadata !3855, metadata !DIExpression()) #35, !dbg !3856
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3856
  %101 = or i1 %96, %98, !dbg !3860
  call void @llvm.dbg.value(metadata i1 %101, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i1 %101, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3856
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3856
  %102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100) #35, !dbg !3858
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !3858
  %104 = mul i64 %100, %70, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %104, metadata !3855, metadata !DIExpression()) #35, !dbg !3856
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !3856
  %106 = or i1 %101, %103, !dbg !3860
  %107 = zext i1 %106 to i32, !dbg !3860
  call void @llvm.dbg.value(metadata i32 %107, metadata !3838, metadata !DIExpression()) #35, !dbg !3846
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3846
  br label %373, !dbg !3861

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 8, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 7, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3864
  %109 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3866
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !3866
  %111 = mul i64 %47, %70, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %111, metadata !3855, metadata !DIExpression()) #35, !dbg !3864
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !3864
  call void @llvm.dbg.value(metadata i1 %110, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 7, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i1 %110, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 7, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3864
  %113 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112) #35, !dbg !3866
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !3866
  %115 = mul i64 %112, %70, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %115, metadata !3855, metadata !DIExpression()) #35, !dbg !3864
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !3864
  %117 = or i1 %110, %114, !dbg !3867
  call void @llvm.dbg.value(metadata i1 %117, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i1 %117, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3864
  %118 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116) #35, !dbg !3866
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !3866
  %120 = mul i64 %116, %70, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %120, metadata !3855, metadata !DIExpression()) #35, !dbg !3864
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !3864
  %122 = or i1 %117, %119, !dbg !3867
  call void @llvm.dbg.value(metadata i1 %122, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i1 %122, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3864
  %123 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121) #35, !dbg !3866
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !3866
  %125 = mul i64 %121, %70, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %125, metadata !3855, metadata !DIExpression()) #35, !dbg !3864
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !3864
  %127 = or i1 %122, %124, !dbg !3867
  call void @llvm.dbg.value(metadata i1 %127, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i1 %127, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3864
  %128 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126) #35, !dbg !3866
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !3866
  %130 = mul i64 %126, %70, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %130, metadata !3855, metadata !DIExpression()) #35, !dbg !3864
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !3864
  %132 = or i1 %127, %129, !dbg !3867
  call void @llvm.dbg.value(metadata i1 %132, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i1 %132, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3864
  %133 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131) #35, !dbg !3866
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !3866
  %135 = mul i64 %131, %70, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %135, metadata !3855, metadata !DIExpression()) #35, !dbg !3864
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !3864
  %137 = or i1 %132, %134, !dbg !3867
  call void @llvm.dbg.value(metadata i1 %137, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i1 %137, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3864
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136) #35, !dbg !3866
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !3866
  %140 = mul i64 %136, %70, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %140, metadata !3855, metadata !DIExpression()) #35, !dbg !3864
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !3864
  %142 = or i1 %137, %139, !dbg !3867
  call void @llvm.dbg.value(metadata i1 %142, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i1 %142, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3864
  %143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141) #35, !dbg !3866
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !3866
  %145 = mul i64 %141, %70, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %145, metadata !3855, metadata !DIExpression()) #35, !dbg !3864
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !3864
  %147 = or i1 %142, %144, !dbg !3867
  %148 = zext i1 %147 to i32, !dbg !3867
  call void @llvm.dbg.value(metadata i32 %148, metadata !3838, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3862
  br label %373, !dbg !3861

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 9, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 8, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3870
  %150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3872
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !3872
  %152 = mul i64 %47, %70, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %152, metadata !3855, metadata !DIExpression()) #35, !dbg !3870
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !3870
  call void @llvm.dbg.value(metadata i1 %151, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 8, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i1 %151, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 8, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 7, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3870
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153) #35, !dbg !3872
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !3872
  %156 = mul i64 %153, %70, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %156, metadata !3855, metadata !DIExpression()) #35, !dbg !3870
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !3870
  %158 = or i1 %151, %155, !dbg !3873
  call void @llvm.dbg.value(metadata i1 %158, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 7, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i1 %158, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 7, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3870
  %159 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157) #35, !dbg !3872
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !3872
  %161 = mul i64 %157, %70, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %161, metadata !3855, metadata !DIExpression()) #35, !dbg !3870
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !3870
  %163 = or i1 %158, %160, !dbg !3873
  call void @llvm.dbg.value(metadata i1 %163, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i1 %163, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3870
  %164 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162) #35, !dbg !3872
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !3872
  %166 = mul i64 %162, %70, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %166, metadata !3855, metadata !DIExpression()) #35, !dbg !3870
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3870
  %168 = or i1 %163, %165, !dbg !3873
  call void @llvm.dbg.value(metadata i1 %168, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i1 %168, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3870
  %169 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167) #35, !dbg !3872
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !3872
  %171 = mul i64 %167, %70, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %171, metadata !3855, metadata !DIExpression()) #35, !dbg !3870
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !3870
  %173 = or i1 %168, %170, !dbg !3873
  call void @llvm.dbg.value(metadata i1 %173, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i1 %173, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3870
  %174 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172) #35, !dbg !3872
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !3872
  %176 = mul i64 %172, %70, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %176, metadata !3855, metadata !DIExpression()) #35, !dbg !3870
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !3870
  %178 = or i1 %173, %175, !dbg !3873
  call void @llvm.dbg.value(metadata i1 %178, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i1 %178, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3870
  %179 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177) #35, !dbg !3872
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !3872
  %181 = mul i64 %177, %70, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %181, metadata !3855, metadata !DIExpression()) #35, !dbg !3870
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !3870
  %183 = or i1 %178, %180, !dbg !3873
  call void @llvm.dbg.value(metadata i1 %183, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i1 %183, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3870
  %184 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182) #35, !dbg !3872
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !3872
  %186 = mul i64 %182, %70, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %186, metadata !3855, metadata !DIExpression()) #35, !dbg !3870
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !3870
  %188 = or i1 %183, %185, !dbg !3873
  call void @llvm.dbg.value(metadata i1 %188, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i1 %188, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3870
  %189 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187) #35, !dbg !3872
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !3872
  %191 = mul i64 %187, %70, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %191, metadata !3855, metadata !DIExpression()) #35, !dbg !3870
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !3870
  %193 = or i1 %188, %190, !dbg !3873
  %194 = zext i1 %193 to i32, !dbg !3873
  call void @llvm.dbg.value(metadata i32 %194, metadata !3838, metadata !DIExpression()) #35, !dbg !3868
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3868
  br label %373, !dbg !3861

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 10, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 9, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3876
  %196 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3878
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !3878
  %198 = mul i64 %47, %70, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %198, metadata !3855, metadata !DIExpression()) #35, !dbg !3876
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !3876
  call void @llvm.dbg.value(metadata i1 %197, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 9, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %197, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 9, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 8, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3876
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199) #35, !dbg !3878
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3878
  %202 = mul i64 %199, %70, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %202, metadata !3855, metadata !DIExpression()) #35, !dbg !3876
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3876
  %204 = or i1 %197, %201, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %204, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 8, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %204, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 8, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 7, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3876
  %205 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203) #35, !dbg !3878
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !3878
  %207 = mul i64 %203, %70, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %207, metadata !3855, metadata !DIExpression()) #35, !dbg !3876
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !3876
  %209 = or i1 %204, %206, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %209, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 7, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %209, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 7, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3876
  %210 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208) #35, !dbg !3878
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !3878
  %212 = mul i64 %208, %70, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %212, metadata !3855, metadata !DIExpression()) #35, !dbg !3876
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !3876
  %214 = or i1 %209, %211, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %214, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %214, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3876
  %215 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213) #35, !dbg !3878
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !3878
  %217 = mul i64 %213, %70, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %217, metadata !3855, metadata !DIExpression()) #35, !dbg !3876
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3876
  %219 = or i1 %214, %216, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %219, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %219, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3876
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218) #35, !dbg !3878
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3878
  %222 = mul i64 %218, %70, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %222, metadata !3855, metadata !DIExpression()) #35, !dbg !3876
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3876
  %224 = or i1 %219, %221, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %224, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %224, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3876
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223) #35, !dbg !3878
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3878
  %227 = mul i64 %223, %70, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %227, metadata !3855, metadata !DIExpression()) #35, !dbg !3876
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3876
  %229 = or i1 %224, %226, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %229, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %229, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3876
  %230 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228) #35, !dbg !3878
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !3878
  %232 = mul i64 %228, %70, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %232, metadata !3855, metadata !DIExpression()) #35, !dbg !3876
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !3876
  %234 = or i1 %229, %231, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %234, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %234, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3876
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233) #35, !dbg !3878
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3878
  %237 = mul i64 %233, %70, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %237, metadata !3855, metadata !DIExpression()) #35, !dbg !3876
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3876
  %239 = or i1 %234, %236, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %239, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i1 %239, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3876
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3876
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238) #35, !dbg !3878
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !3878
  %242 = mul i64 %238, %70, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %242, metadata !3855, metadata !DIExpression()) #35, !dbg !3876
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !3876
  %244 = or i1 %239, %241, !dbg !3879
  %245 = zext i1 %244 to i32, !dbg !3879
  call void @llvm.dbg.value(metadata i32 %245, metadata !3838, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3874
  br label %373, !dbg !3861

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3882
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3882
  %247 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3884
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !3884
  %249 = mul i64 %47, %70, !dbg !3884
  call void @llvm.dbg.value(metadata i64 %249, metadata !3855, metadata !DIExpression()) #35, !dbg !3882
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !3882
  call void @llvm.dbg.value(metadata i1 %248, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i1 %248, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3882
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3882
  %251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250) #35, !dbg !3884
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !3884
  %253 = mul i64 %250, %70, !dbg !3884
  call void @llvm.dbg.value(metadata i64 %253, metadata !3855, metadata !DIExpression()) #35, !dbg !3882
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !3882
  %255 = or i1 %248, %252, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %255, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i1 %255, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3882
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3882
  %256 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254) #35, !dbg !3884
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !3884
  %258 = mul i64 %254, %70, !dbg !3884
  call void @llvm.dbg.value(metadata i64 %258, metadata !3855, metadata !DIExpression()) #35, !dbg !3882
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !3882
  %260 = or i1 %255, %257, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %260, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i1 %260, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3882
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3882
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259) #35, !dbg !3884
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3884
  %263 = mul i64 %259, %70, !dbg !3884
  call void @llvm.dbg.value(metadata i64 %263, metadata !3855, metadata !DIExpression()) #35, !dbg !3882
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3882
  %265 = or i1 %260, %262, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %265, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i1 %265, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3882
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3882
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264) #35, !dbg !3884
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !3884
  %268 = mul i64 %264, %70, !dbg !3884
  call void @llvm.dbg.value(metadata i64 %268, metadata !3855, metadata !DIExpression()) #35, !dbg !3882
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !3882
  %270 = or i1 %265, %267, !dbg !3885
  %271 = zext i1 %270 to i32, !dbg !3885
  call void @llvm.dbg.value(metadata i32 %271, metadata !3838, metadata !DIExpression()) #35, !dbg !3880
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3880
  br label %373, !dbg !3861

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 6, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3888
  %273 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3890
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !3890
  %275 = mul i64 %47, %70, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %275, metadata !3855, metadata !DIExpression()) #35, !dbg !3888
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !3888
  call void @llvm.dbg.value(metadata i1 %274, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i1 %274, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 5, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3888
  %277 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276) #35, !dbg !3890
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !3890
  %279 = mul i64 %276, %70, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %279, metadata !3855, metadata !DIExpression()) #35, !dbg !3888
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !3888
  %281 = or i1 %274, %278, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %281, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i1 %281, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3888
  %282 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280) #35, !dbg !3890
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !3890
  %284 = mul i64 %280, %70, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %284, metadata !3855, metadata !DIExpression()) #35, !dbg !3888
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !3888
  %286 = or i1 %281, %283, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %286, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i1 %286, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3888
  %287 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285) #35, !dbg !3890
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !3890
  %289 = mul i64 %285, %70, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %289, metadata !3855, metadata !DIExpression()) #35, !dbg !3888
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !3888
  %291 = or i1 %286, %288, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %291, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i1 %291, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3888
  %292 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290) #35, !dbg !3890
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !3890
  %294 = mul i64 %290, %70, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %294, metadata !3855, metadata !DIExpression()) #35, !dbg !3888
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !3888
  %296 = or i1 %291, %293, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %296, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i1 %296, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3888
  %297 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295) #35, !dbg !3890
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !3890
  %299 = mul i64 %295, %70, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %299, metadata !3855, metadata !DIExpression()) #35, !dbg !3888
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !3888
  %301 = or i1 %296, %298, !dbg !3891
  %302 = zext i1 %301 to i32, !dbg !3891
  call void @llvm.dbg.value(metadata i32 %302, metadata !3838, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3886
  br label %373, !dbg !3861

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3892
  call void @llvm.dbg.value(metadata i32 512, metadata !3854, metadata !DIExpression()) #35, !dbg !3892
  %304 = icmp ugt i64 %47, 36028797018963967, !dbg !3894
  %305 = shl i64 %47, 9, !dbg !3894
  call void @llvm.dbg.value(metadata i64 %305, metadata !3855, metadata !DIExpression()) #35, !dbg !3892
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !3892
  %307 = zext i1 %304 to i32, !dbg !3892
  call void @llvm.dbg.value(metadata i32 %307, metadata !3772, metadata !DIExpression()), !dbg !3823
  br label %373, !dbg !3895

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3896
  call void @llvm.dbg.value(metadata i32 1024, metadata !3854, metadata !DIExpression()) #35, !dbg !3896
  %309 = icmp ugt i64 %47, 18014398509481983, !dbg !3898
  %310 = shl i64 %47, 10, !dbg !3898
  call void @llvm.dbg.value(metadata i64 %310, metadata !3855, metadata !DIExpression()) #35, !dbg !3896
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !3896
  %312 = zext i1 %309 to i32, !dbg !3896
  call void @llvm.dbg.value(metadata i32 %312, metadata !3772, metadata !DIExpression()), !dbg !3823
  br label %373, !dbg !3899

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3843, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 undef, metadata !3844, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3902
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3902
  %314 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3904
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !3904
  %316 = mul i64 %47, %70, !dbg !3904
  call void @llvm.dbg.value(metadata i64 %316, metadata !3855, metadata !DIExpression()) #35, !dbg !3902
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !3902
  call void @llvm.dbg.value(metadata i1 %315, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i1 %315, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3902
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3902
  %318 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317) #35, !dbg !3904
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !3904
  %320 = mul i64 %317, %70, !dbg !3904
  call void @llvm.dbg.value(metadata i64 %320, metadata !3855, metadata !DIExpression()) #35, !dbg !3902
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !3902
  %322 = or i1 %315, %319, !dbg !3905
  call void @llvm.dbg.value(metadata i1 %322, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i1 %322, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3902
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3902
  %323 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321) #35, !dbg !3904
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !3904
  %325 = mul i64 %321, %70, !dbg !3904
  call void @llvm.dbg.value(metadata i64 %325, metadata !3855, metadata !DIExpression()) #35, !dbg !3902
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !3902
  %327 = or i1 %322, %324, !dbg !3905
  %328 = zext i1 %327 to i32, !dbg !3905
  call void @llvm.dbg.value(metadata i32 %328, metadata !3838, metadata !DIExpression()) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3900
  br label %373, !dbg !3861

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3843, metadata !DIExpression()) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i32 undef, metadata !3844, metadata !DIExpression()) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i32 undef, metadata !3845, metadata !DIExpression()) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i32 undef, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3908
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3908
  %330 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3910
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !3910
  %332 = mul i64 %47, %70, !dbg !3910
  call void @llvm.dbg.value(metadata i64 %332, metadata !3855, metadata !DIExpression()) #35, !dbg !3908
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !3908
  %334 = zext i1 %331 to i32, !dbg !3908
  call void @llvm.dbg.value(metadata i32 %334, metadata !3838, metadata !DIExpression()) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i32 undef, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3906
  br label %373, !dbg !3861

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3843, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 undef, metadata !3844, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3913
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3913
  %336 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3915
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !3915
  %338 = mul i64 %47, %70, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %338, metadata !3855, metadata !DIExpression()) #35, !dbg !3913
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !3913
  call void @llvm.dbg.value(metadata i1 %337, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i1 %337, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3913
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3913
  %340 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339) #35, !dbg !3915
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !3915
  %342 = mul i64 %339, %70, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %342, metadata !3855, metadata !DIExpression()) #35, !dbg !3913
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !3913
  %344 = or i1 %337, %341, !dbg !3916
  %345 = zext i1 %344 to i32, !dbg !3916
  call void @llvm.dbg.value(metadata i32 %345, metadata !3838, metadata !DIExpression()) #35, !dbg !3911
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3911
  br label %373, !dbg !3861

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3843, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 undef, metadata !3844, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 4, metadata !3845, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3919
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3919
  %347 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3921
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !3921
  %349 = mul i64 %47, %70, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %349, metadata !3855, metadata !DIExpression()) #35, !dbg !3919
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !3919
  call void @llvm.dbg.value(metadata i1 %348, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i1 %348, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 3, metadata !3845, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3919
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3919
  %351 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350) #35, !dbg !3921
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !3921
  %353 = mul i64 %350, %70, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %353, metadata !3855, metadata !DIExpression()) #35, !dbg !3919
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !3919
  %355 = or i1 %348, %352, !dbg !3922
  call void @llvm.dbg.value(metadata i1 %355, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i1 %355, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 2, metadata !3845, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3919
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3919
  %356 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354) #35, !dbg !3921
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !3921
  %358 = mul i64 %354, %70, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %358, metadata !3855, metadata !DIExpression()) #35, !dbg !3919
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !3919
  %360 = or i1 %355, %357, !dbg !3922
  call void @llvm.dbg.value(metadata i1 %360, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i1 %360, metadata !3838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 1, metadata !3845, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3919
  call void @llvm.dbg.value(metadata i32 undef, metadata !3854, metadata !DIExpression()) #35, !dbg !3919
  %361 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359) #35, !dbg !3921
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !3921
  %363 = mul i64 %359, %70, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %363, metadata !3855, metadata !DIExpression()) #35, !dbg !3919
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !3919
  %365 = or i1 %360, %362, !dbg !3922
  %366 = zext i1 %365 to i32, !dbg !3922
  call void @llvm.dbg.value(metadata i32 %366, metadata !3838, metadata !DIExpression()) #35, !dbg !3917
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3917
  br label %373, !dbg !3861

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3849, metadata !DIExpression()) #35, !dbg !3923
  call void @llvm.dbg.value(metadata i32 2, metadata !3854, metadata !DIExpression()) #35, !dbg !3923
  %368 = shl i64 %47, 1, !dbg !3925
  call void @llvm.dbg.value(metadata i64 %368, metadata !3855, metadata !DIExpression()) #35, !dbg !3923
  %369 = icmp sgt i64 %47, -1, !dbg !3923
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !3923
  %371 = lshr i64 %47, 63, !dbg !3923
  %372 = trunc i64 %371 to i32, !dbg !3923
  call void @llvm.dbg.value(metadata i32 %372, metadata !3772, metadata !DIExpression()), !dbg !3823
  br label %373, !dbg !3926

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %47, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !3773
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !3927
  call void @llvm.dbg.value(metadata i32 %375, metadata !3772, metadata !DIExpression()), !dbg !3823
  %376 = or i32 %375, %46, !dbg !3861
  call void @llvm.dbg.value(metadata i32 %376, metadata !3767, metadata !DIExpression()), !dbg !3773
  %377 = getelementptr inbounds i8, i8* %27, i64 %71, !dbg !3928
  store i8* %377, i8** %21, align 8, !dbg !3928, !tbaa !690
  %378 = load i8, i8* %377, align 1, !dbg !3929, !tbaa !787
  %379 = icmp eq i8 %378, 0, !dbg !3929
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !3931
  call void @llvm.dbg.value(metadata i32 %46, metadata !3767, metadata !DIExpression()), !dbg !3773
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %26, metadata !3766, metadata !DIExpression()), !dbg !3773
  store i64 %47, i64* %3, align 8, !dbg !3932, !tbaa !1407
  %383 = or i32 %46, 2, !dbg !3933
  call void @llvm.dbg.value(metadata i32 %46, metadata !3767, metadata !DIExpression()), !dbg !3773
  br label %387

384:                                              ; preds = %373, %45
  %385 = phi i64 [ %47, %45 ], [ %374, %373 ], !dbg !3934
  %386 = phi i32 [ %46, %45 ], [ %381, %373 ], !dbg !3935
  call void @llvm.dbg.value(metadata i32 %386, metadata !3767, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i64 %385, metadata !3766, metadata !DIExpression()), !dbg !3773
  store i64 %385, i64* %3, align 8, !dbg !3936, !tbaa !1407
  br label %387, !dbg !3937

387:                                              ; preds = %44, %54, %384, %34, %31, %29, %38, %382, %23
  %388 = phi i32 [ 4, %23 ], [ %386, %384 ], [ %383, %382 ], [ %55, %54 ], [ %42, %44 ], [ 4, %34 ], [ 4, %31 ], [ 4, %29 ], [ 4, %38 ], !dbg !3773
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #35, !dbg !3938
  ret i32 %388, !dbg !3938
}

; Function Attrs: nounwind
declare !dbg !3939 i64 @strtoumax(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !3944 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !3982, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8* %1, metadata !3983, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 0, metadata !3985, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8 0, metadata !3986, metadata !DIExpression()), !dbg !4006
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4007
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #35, !dbg !4007
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !3987, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i8* %1, metadata !3991, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i8* %4, metadata !3993, metadata !DIExpression()), !dbg !4009
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4010

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4009
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4011
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4006
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4012
  call void @llvm.dbg.value(metadata i32 %11, metadata !3984, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 %10, metadata !3985, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8* %9, metadata !3993, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i8* %8, metadata !3991, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i8 poison, metadata !3986, metadata !DIExpression()), !dbg !4006
  %12 = load i8, i8* %8, align 1, !dbg !4013, !tbaa !787
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4014

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()), !dbg !4006
  %14 = icmp ult i8* %9, %5, !dbg !4015
  br i1 %14, label %15, label %47, !dbg !4018

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4019
  call void @llvm.dbg.value(metadata i8* %16, metadata !3993, metadata !DIExpression()), !dbg !4009
  store i8 114, i8* %9, align 1, !dbg !4020, !tbaa !787
  br label %47, !dbg !4021

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()), !dbg !4006
  %18 = or i32 %10, 576, !dbg !4022
  call void @llvm.dbg.value(metadata i32 %18, metadata !3985, metadata !DIExpression()), !dbg !4006
  %19 = icmp ult i8* %9, %5, !dbg !4023
  br i1 %19, label %20, label %47, !dbg !4025

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4026
  call void @llvm.dbg.value(metadata i8* %21, metadata !3993, metadata !DIExpression()), !dbg !4009
  store i8 119, i8* %9, align 1, !dbg !4027, !tbaa !787
  br label %47, !dbg !4028

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()), !dbg !4006
  %23 = or i32 %10, 1088, !dbg !4029
  call void @llvm.dbg.value(metadata i32 %23, metadata !3985, metadata !DIExpression()), !dbg !4006
  %24 = icmp ult i8* %9, %5, !dbg !4030
  br i1 %24, label %25, label %47, !dbg !4032

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4033
  call void @llvm.dbg.value(metadata i8* %26, metadata !3993, metadata !DIExpression()), !dbg !4009
  store i8 97, i8* %9, align 1, !dbg !4034, !tbaa !787
  br label %47, !dbg !4035

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !3985, metadata !DIExpression()), !dbg !4006
  %28 = icmp ult i8* %9, %5, !dbg !4036
  br i1 %28, label %29, label %47, !dbg !4038

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4039
  call void @llvm.dbg.value(metadata i8* %30, metadata !3993, metadata !DIExpression()), !dbg !4009
  store i8 98, i8* %9, align 1, !dbg !4040, !tbaa !787
  br label %47, !dbg !4041

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()), !dbg !4006
  %32 = icmp ult i8* %9, %5, !dbg !4042
  br i1 %32, label %33, label %47, !dbg !4044

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4045
  call void @llvm.dbg.value(metadata i8* %34, metadata !3993, metadata !DIExpression()), !dbg !4009
  store i8 43, i8* %9, align 1, !dbg !4046, !tbaa !787
  br label %47, !dbg !4047

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4048
  call void @llvm.dbg.value(metadata i32 %36, metadata !3985, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8 1, metadata !3986, metadata !DIExpression()), !dbg !4006
  br label %47, !dbg !4049

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4050
  call void @llvm.dbg.value(metadata i32 %38, metadata !3985, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8 1, metadata !3986, metadata !DIExpression()), !dbg !4006
  br label %47, !dbg !4051

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #36, !dbg !4052
  call void @llvm.dbg.value(metadata i64 %40, metadata !3994, metadata !DIExpression()), !dbg !4053
  %41 = ptrtoint i8* %5 to i64, !dbg !4054
  %42 = ptrtoint i8* %9 to i64, !dbg !4054
  %43 = sub i64 %41, %42, !dbg !4054
  %44 = icmp ugt i64 %40, %43, !dbg !4056
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4057
  call void @llvm.dbg.value(metadata i64 %45, metadata !3994, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i8* %9, metadata !4058, metadata !DIExpression()) #35, !dbg !4063
  call void @llvm.dbg.value(metadata i8* %8, metadata !4061, metadata !DIExpression()) #35, !dbg !4063
  call void @llvm.dbg.value(metadata i64 %45, metadata !4062, metadata !DIExpression()) #35, !dbg !4063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #35, !dbg !4065
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4066
  call void @llvm.dbg.value(metadata i8* %46, metadata !3993, metadata !DIExpression()), !dbg !4009
  br label %53, !dbg !4067

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4009
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4006
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4006
  call void @llvm.dbg.value(metadata i32 %51, metadata !3984, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 %50, metadata !3985, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8* %49, metadata !3993, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i8 poison, metadata !3986, metadata !DIExpression()), !dbg !4006
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4068
  call void @llvm.dbg.value(metadata i8* %52, metadata !3991, metadata !DIExpression()), !dbg !4009
  br label %6, !dbg !4069, !llvm.loop !4070

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4009
  call void @llvm.dbg.value(metadata i8* %54, metadata !3993, metadata !DIExpression()), !dbg !4009
  store i8 0, i8* %54, align 1, !dbg !4072, !tbaa !787
  br i1 %7, label %55, label %66, !dbg !4073

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4074
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #35, !dbg !4075
  call void @llvm.dbg.value(metadata i32 %57, metadata !3999, metadata !DIExpression()), !dbg !4076
  %58 = icmp slt i32 %57, 0, !dbg !4077
  br i1 %58, label %68, label %59, !dbg !4079

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #35, !dbg !4080
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4002, metadata !DIExpression()), !dbg !4076
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4081
  br i1 %61, label %62, label %68, !dbg !4082

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #38, !dbg !4083
  %64 = load i32, i32* %63, align 4, !dbg !4083, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %64, metadata !4003, metadata !DIExpression()), !dbg !4084
  %65 = call i32 @close(i32 noundef %57) #35, !dbg !4085
  store i32 %64, i32* %63, align 4, !dbg !4086, !tbaa !778
  br label %68, !dbg !4087

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4088, metadata !DIExpression()) #35, !dbg !4092
  call void @llvm.dbg.value(metadata i8* %1, metadata !4091, metadata !DIExpression()) #35, !dbg !4092
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #35, !dbg !4094
  br label %68, !dbg !4095

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4006
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #35, !dbg !4096
  ret %struct._IO_FILE* %69, !dbg !4096
}

; Function Attrs: nofree
declare !dbg !4097 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare !dbg !4100 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4103 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4104 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4142, metadata !DIExpression()), !dbg !4147
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !4148
  call void @llvm.dbg.value(metadata i1 undef, metadata !4143, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4147
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4149, metadata !DIExpression()), !dbg !4152
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4154
  %4 = load i32, i32* %3, align 8, !dbg !4154, !tbaa !4155
  %5 = and i32 %4, 32, !dbg !4156
  %6 = icmp eq i32 %5, 0, !dbg !4156
  call void @llvm.dbg.value(metadata i1 %6, metadata !4145, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4147
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !4157
  %8 = icmp eq i32 %7, 0, !dbg !4158
  call void @llvm.dbg.value(metadata i1 %8, metadata !4146, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4147
  br i1 %6, label %9, label %19, !dbg !4159

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4161
  call void @llvm.dbg.value(metadata i1 %10, metadata !4143, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4147
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4162
  %12 = xor i1 %8, true, !dbg !4162
  %13 = sext i1 %12 to i32, !dbg !4162
  br i1 %11, label %22, label %14, !dbg !4162

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !4163
  %16 = load i32, i32* %15, align 4, !dbg !4163, !tbaa !778
  %17 = icmp ne i32 %16, 9, !dbg !4164
  %18 = sext i1 %17 to i32, !dbg !4165
  br label %22, !dbg !4165

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4166

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !4168
  store i32 0, i32* %21, align 4, !dbg !4170, !tbaa !778
  br label %22, !dbg !4168

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4147
  ret i32 %23, !dbg !4171
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !4172 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4210, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i32 0, metadata !4211, metadata !DIExpression()), !dbg !4214
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4215
  call void @llvm.dbg.value(metadata i32 %2, metadata !4212, metadata !DIExpression()), !dbg !4214
  %3 = icmp slt i32 %2, 0, !dbg !4216
  br i1 %3, label %4, label %6, !dbg !4218

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4219
  br label %24, !dbg !4220

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4221
  %8 = icmp eq i32 %7, 0, !dbg !4221
  br i1 %8, label %13, label %9, !dbg !4223

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4224
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !4225
  %12 = icmp eq i64 %11, -1, !dbg !4226
  br i1 %12, label %16, label %13, !dbg !4227

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4228
  %15 = icmp eq i32 %14, 0, !dbg !4228
  br i1 %15, label %16, label %18, !dbg !4229

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4211, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i32 0, metadata !4213, metadata !DIExpression()), !dbg !4214
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4230
  call void @llvm.dbg.value(metadata i32 %21, metadata !4213, metadata !DIExpression()), !dbg !4214
  br label %24, !dbg !4231

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !4232
  %20 = load i32, i32* %19, align 4, !dbg !4232, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %20, metadata !4211, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i32 0, metadata !4213, metadata !DIExpression()), !dbg !4214
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4230
  call void @llvm.dbg.value(metadata i32 %21, metadata !4213, metadata !DIExpression()), !dbg !4214
  %22 = icmp eq i32 %20, 0, !dbg !4233
  br i1 %22, label %24, label %23, !dbg !4231

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4235, !tbaa !778
  call void @llvm.dbg.value(metadata i32 -1, metadata !4213, metadata !DIExpression()), !dbg !4214
  br label %24, !dbg !4237

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4214
  ret i32 %25, !dbg !4238
}

; Function Attrs: nofree nounwind
declare !dbg !4239 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4240 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4241 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4244 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4282, metadata !DIExpression()), !dbg !4283
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4284
  br i1 %2, label %6, label %3, !dbg !4286

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4287
  %5 = icmp eq i32 %4, 0, !dbg !4287
  br i1 %5, label %6, label %8, !dbg !4288

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4289
  br label %17, !dbg !4290

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4291, metadata !DIExpression()) #35, !dbg !4296
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4298
  %10 = load i32, i32* %9, align 8, !dbg !4298, !tbaa !4155
  %11 = and i32 %10, 256, !dbg !4300
  %12 = icmp eq i32 %11, 0, !dbg !4300
  br i1 %12, label %15, label %13, !dbg !4301

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !4302
  br label %15, !dbg !4302

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4303
  br label %17, !dbg !4304

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4283
  ret i32 %18, !dbg !4305
}

; Function Attrs: nofree nounwind
declare !dbg !4306 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4307 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4346, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i64 %1, metadata !4347, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i32 %2, metadata !4348, metadata !DIExpression()), !dbg !4352
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4353
  %5 = load i8*, i8** %4, align 8, !dbg !4353, !tbaa !4354
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4355
  %7 = load i8*, i8** %6, align 8, !dbg !4355, !tbaa !4356
  %8 = icmp eq i8* %5, %7, !dbg !4357
  br i1 %8, label %9, label %28, !dbg !4358

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4359
  %11 = load i8*, i8** %10, align 8, !dbg !4359, !tbaa !1138
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4360
  %13 = load i8*, i8** %12, align 8, !dbg !4360, !tbaa !4361
  %14 = icmp eq i8* %11, %13, !dbg !4362
  br i1 %14, label %15, label %28, !dbg !4363

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4364
  %17 = load i8*, i8** %16, align 8, !dbg !4364, !tbaa !4365
  %18 = icmp eq i8* %17, null, !dbg !4366
  br i1 %18, label %19, label %28, !dbg !4367

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4368
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !4369
  call void @llvm.dbg.value(metadata i64 %21, metadata !4349, metadata !DIExpression()), !dbg !4370
  %22 = icmp eq i64 %21, -1, !dbg !4371
  br i1 %22, label %30, label %23, !dbg !4373

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4374
  %25 = load i32, i32* %24, align 8, !dbg !4375, !tbaa !4155
  %26 = and i32 %25, -17, !dbg !4375
  store i32 %26, i32* %24, align 8, !dbg !4375, !tbaa !4155
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4376
  store i64 %21, i64* %27, align 8, !dbg !4377, !tbaa !4378
  br label %30, !dbg !4379

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4380
  br label %30, !dbg !4381

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4352
  ret i32 %31, !dbg !4382
}

; Function Attrs: nofree nounwind
declare !dbg !4383 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4386 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4391, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i8* %1, metadata !4392, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 %2, metadata !4393, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4394, metadata !DIExpression()), !dbg !4396
  %5 = icmp eq i8* %1, null, !dbg !4397
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4399
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.149, i64 0, i64 0), i8* %1, !dbg !4399
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4399
  call void @llvm.dbg.value(metadata i64 %8, metadata !4393, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i8* %7, metadata !4392, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i32* %6, metadata !4391, metadata !DIExpression()), !dbg !4396
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4400
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4402
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4394, metadata !DIExpression()), !dbg !4396
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !4403
  call void @llvm.dbg.value(metadata i64 %11, metadata !4395, metadata !DIExpression()), !dbg !4396
  %12 = icmp ult i64 %11, -3, !dbg !4404
  br i1 %12, label %13, label %18, !dbg !4406

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !4407
  %15 = icmp eq i32 %14, 0, !dbg !4407
  br i1 %15, label %16, label %30, !dbg !4408

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4409, metadata !DIExpression()) #35, !dbg !4414
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4416, metadata !DIExpression()) #35, !dbg !4421
  call void @llvm.dbg.value(metadata i32 0, metadata !4419, metadata !DIExpression()) #35, !dbg !4421
  call void @llvm.dbg.value(metadata i64 8, metadata !4420, metadata !DIExpression()) #35, !dbg !4421
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4423
  store i64 0, i64* %17, align 1, !dbg !4423
  br label %30, !dbg !4424

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4425
  br i1 %19, label %20, label %21, !dbg !4427

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4428
  unreachable, !dbg !4428

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4429

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4431
  br i1 %24, label %30, label %25, !dbg !4432

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4433
  br i1 %26, label %30, label %27, !dbg !4436

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4437, !tbaa !787
  %29 = zext i8 %28 to i32, !dbg !4438
  store i32 %29, i32* %6, align 4, !dbg !4439, !tbaa !778
  br label %30, !dbg !4440

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4396
  ret i64 %31, !dbg !4441
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4442 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4448 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4450, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4451, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %2, metadata !4452, metadata !DIExpression()), !dbg !4454
  %4 = icmp eq i64 %2, 0, !dbg !4455
  br i1 %4, label %8, label %5, !dbg !4455

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4455
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4455
  br i1 %7, label %13, label %8, !dbg !4455

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4453, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4454
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4453, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4454
  %9 = mul i64 %2, %1, !dbg !4455
  call void @llvm.dbg.value(metadata i64 %9, metadata !4453, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i8* %0, metadata !4457, metadata !DIExpression()) #35, !dbg !4461
  call void @llvm.dbg.value(metadata i64 %9, metadata !4460, metadata !DIExpression()) #35, !dbg !4461
  %10 = icmp eq i64 %9, 0, !dbg !4463
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4463
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4464
  br label %15, !dbg !4465

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4453, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4454
  %14 = tail call i32* @__errno_location() #38, !dbg !4466
  store i32 12, i32* %14, align 4, !dbg !4468, !tbaa !778
  br label %15, !dbg !4469

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4454
  ret i8* %16, !dbg !4470
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4471 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4473, metadata !DIExpression()), !dbg !4478
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4479
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4479
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4474, metadata !DIExpression()), !dbg !4480
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !4481
  %5 = icmp eq i32 %4, 0, !dbg !4481
  br i1 %5, label %6, label %13, !dbg !4483

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4484, metadata !DIExpression()) #35, !dbg !4488
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i64 0, i64 0), metadata !4487, metadata !DIExpression()) #35, !dbg !4488
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.154, i64 0, i64 0), i64 2), !dbg !4491
  %8 = icmp eq i32 %7, 0, !dbg !4492
  br i1 %8, label %12, label %9, !dbg !4493

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4484, metadata !DIExpression()) #35, !dbg !4494
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), metadata !4487, metadata !DIExpression()) #35, !dbg !4494
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i64 6), !dbg !4496
  %11 = icmp eq i32 %10, 0, !dbg !4497
  br i1 %11, label %12, label %13, !dbg !4498

12:                                               ; preds = %9, %6
  br label %13, !dbg !4499

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4478
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4500
  ret i1 %14, !dbg !4500
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4501 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4505, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i8* %1, metadata !4506, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i64 %2, metadata !4507, metadata !DIExpression()), !dbg !4508
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4509
  ret i32 %4, !dbg !4510
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4515, metadata !DIExpression()), !dbg !4516
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4517
  ret i8* %2, !dbg !4518
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4519 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4521, metadata !DIExpression()), !dbg !4523
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4524
  call void @llvm.dbg.value(metadata i8* %2, metadata !4522, metadata !DIExpression()), !dbg !4523
  ret i8* %2, !dbg !4525
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4526 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4528, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i8* %1, metadata !4529, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %2, metadata !4530, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i32 %0, metadata !4521, metadata !DIExpression()) #35, !dbg !4536
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4538
  call void @llvm.dbg.value(metadata i8* %4, metadata !4522, metadata !DIExpression()) #35, !dbg !4536
  call void @llvm.dbg.value(metadata i8* %4, metadata !4531, metadata !DIExpression()), !dbg !4535
  %5 = icmp eq i8* %4, null, !dbg !4539
  br i1 %5, label %6, label %9, !dbg !4540

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4541
  br i1 %7, label %19, label %8, !dbg !4544

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4545, !tbaa !787
  br label %19, !dbg !4546

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4547
  call void @llvm.dbg.value(metadata i64 %10, metadata !4532, metadata !DIExpression()), !dbg !4548
  %11 = icmp ult i64 %10, %2, !dbg !4549
  br i1 %11, label %12, label %14, !dbg !4551

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i8* %1, metadata !4554, metadata !DIExpression()) #35, !dbg !4559
  call void @llvm.dbg.value(metadata i8* %4, metadata !4557, metadata !DIExpression()) #35, !dbg !4559
  call void @llvm.dbg.value(metadata i64 %13, metadata !4558, metadata !DIExpression()) #35, !dbg !4559
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4561
  br label %19, !dbg !4562

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4563
  br i1 %15, label %19, label %16, !dbg !4566

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4567
  call void @llvm.dbg.value(metadata i8* %1, metadata !4554, metadata !DIExpression()) #35, !dbg !4569
  call void @llvm.dbg.value(metadata i8* %4, metadata !4557, metadata !DIExpression()) #35, !dbg !4569
  call void @llvm.dbg.value(metadata i64 %17, metadata !4558, metadata !DIExpression()) #35, !dbg !4569
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4571
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4572
  store i8 0, i8* %18, align 1, !dbg !4573, !tbaa !787
  br label %19, !dbg !4574

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4575
  ret i32 %20, !dbg !4576
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
attributes #13 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { argmemonly nofree nounwind willreturn writeonly }
attributes #26 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !148, !153, !160, !340, !360, !362, !201, !211, !243, !587, !332, !594, !628, !630, !641, !648, !650, !652, !654, !656, !346, !658, !661, !663, !665}
!llvm.ident = !{!667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667, !667}
!llvm.module.flags = !{!668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 40, type: !134, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !46, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/nproc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9be389db91a894f809edad2807c32835")
!4 = !{!5, !12, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/nproc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "dd1b9803a99598e46cd95fdfb7d0bf6e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "NPROC_ALL", value: 0)
!10 = !DIEnumerator(name: "NPROC_CURRENT", value: 1)
!11 = !DIEnumerator(name: "NPROC_CURRENT_OVERRIDABLE", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 24, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!16 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!17 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!18 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 46, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DIEnumerator(name: "_ISupper", value: 256)
!23 = !DIEnumerator(name: "_ISlower", value: 512)
!24 = !DIEnumerator(name: "_ISalpha", value: 1024)
!25 = !DIEnumerator(name: "_ISdigit", value: 2048)
!26 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!27 = !DIEnumerator(name: "_ISspace", value: 8192)
!28 = !DIEnumerator(name: "_ISprint", value: 16384)
!29 = !DIEnumerator(name: "_ISgraph", value: 32768)
!30 = !DIEnumerator(name: "_ISblank", value: 1)
!31 = !DIEnumerator(name: "_IScntrl", value: 2)
!32 = !DIEnumerator(name: "_ISpunct", value: 4)
!33 = !DIEnumerator(name: "_ISalnum", value: 8)
!34 = !{!35, !37, !38, !39, !40, !43, !45}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 46, baseType: !42)
!41 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!47, !0}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !49, file: !50, line: 575, type: !38, isLocal: true, isDefinition: true)
!49 = distinct !DISubprogram(name: "oputs_", scope: !50, file: !50, line: 573, type: !51, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !53)
!50 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!51 = !DISubroutineType(types: !52)
!52 = !{null, !43, !43}
!53 = !{!54, !55, !56, !59, !61, !62, !63, !67, !68, !69, !70, !72, !128, !129, !130, !132, !133}
!54 = !DILocalVariable(name: "program", arg: 1, scope: !49, file: !50, line: 573, type: !43)
!55 = !DILocalVariable(name: "option", arg: 2, scope: !49, file: !50, line: 573, type: !43)
!56 = !DILocalVariable(name: "term", scope: !57, file: !50, line: 585, type: !43)
!57 = distinct !DILexicalBlock(scope: !58, file: !50, line: 582, column: 5)
!58 = distinct !DILexicalBlock(scope: !49, file: !50, line: 581, column: 7)
!59 = !DILocalVariable(name: "double_space", scope: !49, file: !50, line: 594, type: !60)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DILocalVariable(name: "first_word", scope: !49, file: !50, line: 595, type: !43)
!62 = !DILocalVariable(name: "option_text", scope: !49, file: !50, line: 596, type: !43)
!63 = !DILocalVariable(name: "s", scope: !64, file: !50, line: 608, type: !43)
!64 = distinct !DILexicalBlock(scope: !65, file: !50, line: 605, column: 5)
!65 = distinct !DILexicalBlock(scope: !66, file: !50, line: 604, column: 12)
!66 = distinct !DILexicalBlock(scope: !49, file: !50, line: 597, column: 7)
!67 = !DILocalVariable(name: "spaces", scope: !64, file: !50, line: 609, type: !40)
!68 = !DILocalVariable(name: "anchor_len", scope: !49, file: !50, line: 620, type: !40)
!69 = !DILocalVariable(name: "desc_text", scope: !49, file: !50, line: 625, type: !43)
!70 = !DILocalVariable(name: "__ptr", scope: !71, file: !50, line: 644, type: !43)
!71 = distinct !DILexicalBlock(scope: !49, file: !50, line: 644, column: 3)
!72 = !DILocalVariable(name: "__stream", scope: !71, file: !50, line: 644, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !76)
!75 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !78)
!77 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !94, !96, !97, !98, !102, !103, !105, !109, !112, !114, !117, !120, !121, !122, !123, !124}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !76, file: !77, line: 51, baseType: !38, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !76, file: !77, line: 54, baseType: !35, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !76, file: !77, line: 55, baseType: !35, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !76, file: !77, line: 56, baseType: !35, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !76, file: !77, line: 57, baseType: !35, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !76, file: !77, line: 58, baseType: !35, size: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !76, file: !77, line: 59, baseType: !35, size: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !76, file: !77, line: 60, baseType: !35, size: 64, offset: 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !76, file: !77, line: 61, baseType: !35, size: 64, offset: 512)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !76, file: !77, line: 64, baseType: !35, size: 64, offset: 576)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !76, file: !77, line: 65, baseType: !35, size: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !76, file: !77, line: 66, baseType: !35, size: 64, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !76, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !77, line: 36, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !76, file: !77, line: 70, baseType: !95, size: 64, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !76, file: !77, line: 72, baseType: !38, size: 32, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !76, file: !77, line: 73, baseType: !38, size: 32, offset: 928)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !76, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !100, line: 152, baseType: !101)
!100 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!101 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !76, file: !77, line: 77, baseType: !39, size: 16, offset: 1024)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !76, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!104 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !76, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 1)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !76, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !77, line: 43, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !76, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !100, line: 153, baseType: !101)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !76, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !77, line: 37, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !76, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !77, line: 38, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !76, file: !77, line: 93, baseType: !95, size: 64, offset: 1344)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !76, file: !77, line: 94, baseType: !37, size: 64, offset: 1408)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !76, file: !77, line: 95, baseType: !40, size: 64, offset: 1472)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !76, file: !77, line: 96, baseType: !38, size: 32, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !76, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 20)
!128 = !DILocalVariable(name: "__cnt", scope: !71, file: !50, line: 644, type: !40)
!129 = !DILocalVariable(name: "url_program", scope: !49, file: !50, line: 648, type: !43)
!130 = !DILocalVariable(name: "__ptr", scope: !131, file: !50, line: 686, type: !43)
!131 = distinct !DILexicalBlock(scope: !49, file: !50, line: 686, column: 3)
!132 = !DILocalVariable(name: "__stream", scope: !131, file: !50, line: 686, type: !73)
!133 = !DILocalVariable(name: "__cnt", scope: !131, file: !50, line: 686, type: !40)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 1280, elements: !144)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !137, line: 50, size: 256, elements: !138)
!137 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!138 = !{!139, !140, !141, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !136, file: !137, line: 52, baseType: !43, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !136, file: !137, line: 55, baseType: !38, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !136, file: !137, line: 56, baseType: !142, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !136, file: !137, line: 57, baseType: !38, size: 32, offset: 192)
!144 = !{!145}
!145 = !DISubrange(count: 5)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "Version", scope: !148, file: !149, line: 3, type: !43, isLocal: false, isDefinition: true)
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !150, splitDebugInlining: false, nameTableKind: None)
!149 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!150 = !{!146}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "file_name", scope: !153, file: !154, line: 45, type: !43, isLocal: true, isDefinition: true)
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !155, splitDebugInlining: false, nameTableKind: None)
!154 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!155 = !{!151, !156}
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !153, file: !154, line: 55, type: !60, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !160, file: !161, line: 66, type: !196, isLocal: false, isDefinition: true)
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !162, globals: !163, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!162 = !{!37, !45}
!163 = !{!164, !190, !158, !192, !194}
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "old_file_name", scope: !166, file: !161, line: 304, type: !43, isLocal: true, isDefinition: true)
!166 = distinct !DISubprogram(name: "verror_at_line", scope: !161, file: !161, line: 298, type: !167, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !183)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !38, !38, !43, !7, !43, !169}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !170, line: 52, baseType: !171)
!170 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !172, line: 32, baseType: !173)
!172 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !174, baseType: !175)
!174 = !DIFile(filename: "lib/error.c", directory: "/src")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !176, size: 256, elements: !177)
!176 = !DINamespace(name: "std", scope: null)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !175, file: !174, baseType: !37, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !175, file: !174, baseType: !37, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !175, file: !174, baseType: !37, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !175, file: !174, baseType: !38, size: 32, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !175, file: !174, baseType: !38, size: 32, offset: 224)
!183 = !{!184, !185, !186, !187, !188, !189}
!184 = !DILocalVariable(name: "status", arg: 1, scope: !166, file: !161, line: 298, type: !38)
!185 = !DILocalVariable(name: "errnum", arg: 2, scope: !166, file: !161, line: 298, type: !38)
!186 = !DILocalVariable(name: "file_name", arg: 3, scope: !166, file: !161, line: 298, type: !43)
!187 = !DILocalVariable(name: "line_number", arg: 4, scope: !166, file: !161, line: 298, type: !7)
!188 = !DILocalVariable(name: "message", arg: 5, scope: !166, file: !161, line: 298, type: !43)
!189 = !DILocalVariable(name: "args", arg: 6, scope: !166, file: !161, line: 298, type: !169)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "old_line_number", scope: !166, file: !161, line: 305, type: !7, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "error_message_count", scope: !160, file: !161, line: 69, type: !7, isLocal: false, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !160, file: !161, line: 295, type: !38, isLocal: false, isDefinition: true)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null}
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "program_name", scope: !201, file: !202, line: 31, type: !43, isLocal: false, isDefinition: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !203, globals: !204, splitDebugInlining: false, nameTableKind: None)
!202 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!203 = !{!35}
!204 = !{!199}
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "utf07FF", scope: !207, file: !208, line: 46, type: !238, isLocal: true, isDefinition: true)
!207 = distinct !DISubprogram(name: "proper_name_lite", scope: !208, file: !208, line: 38, type: !209, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !213)
!208 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!209 = !DISubroutineType(types: !210)
!210 = !{!43, !43, !43}
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !212, splitDebugInlining: false, nameTableKind: None)
!212 = !{!205}
!213 = !{!214, !215, !216, !217, !222}
!214 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !207, file: !208, line: 38, type: !43)
!215 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !207, file: !208, line: 38, type: !43)
!216 = !DILocalVariable(name: "translation", scope: !207, file: !208, line: 40, type: !43)
!217 = !DILocalVariable(name: "w", scope: !207, file: !208, line: 47, type: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !219, line: 37, baseType: !220)
!219 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !100, line: 57, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100, line: 42, baseType: !7)
!222 = !DILocalVariable(name: "mbs", scope: !207, file: !208, line: 48, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !224, line: 6, baseType: !225)
!224 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !226, line: 21, baseType: !227)
!226 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 13, size: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !227, file: !226, line: 15, baseType: !38, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !227, file: !226, line: 20, baseType: !231, size: 32, offset: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !226, line: 16, size: 32, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !231, file: !226, line: 18, baseType: !7, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !231, file: !226, line: 19, baseType: !235, size: 32)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 4)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 16, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 2)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !243, file: !244, line: 76, type: !326, isLocal: false, isDefinition: true)
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !245, retainedTypes: !265, globals: !266, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!245 = !{!246, !260, !19}
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !247, line: 42, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!249 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!250 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!251 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!252 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!253 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!254 = !DIEnumerator(name: "c_quoting_style", value: 5)
!255 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!256 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!257 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!258 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!259 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !247, line: 254, baseType: !7, size: 32, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!263 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!264 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!265 = !{!38, !39, !40}
!266 = !{!241, !267, !273, !285, !287, !292, !315, !322, !324}
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !243, file: !244, line: 92, type: !269, isLocal: false, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 320, elements: !271)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!271 = !{!272}
!272 = !DISubrange(count: 10)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !243, file: !244, line: 1040, type: !275, isLocal: false, isDefinition: true)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !244, line: 56, size: 448, elements: !276)
!276 = !{!277, !278, !279, !283, !284}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !275, file: !244, line: 59, baseType: !246, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !244, line: 62, baseType: !38, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !275, file: !244, line: 66, baseType: !280, size: 256, offset: 64)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !275, file: !244, line: 69, baseType: !43, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !275, file: !244, line: 72, baseType: !43, size: 64, offset: 384)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !243, file: !244, line: 107, type: !275, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "slot0", scope: !243, file: !244, line: 831, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 256)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "quote", scope: !294, file: !244, line: 228, type: !313, isLocal: true, isDefinition: true)
!294 = distinct !DISubprogram(name: "gettext_quote", scope: !244, file: !244, line: 197, type: !295, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{!43, !43, !246}
!297 = !{!298, !299, !300, !301, !302}
!298 = !DILocalVariable(name: "msgid", arg: 1, scope: !294, file: !244, line: 197, type: !43)
!299 = !DILocalVariable(name: "s", arg: 2, scope: !294, file: !244, line: 197, type: !246)
!300 = !DILocalVariable(name: "translation", scope: !294, file: !244, line: 199, type: !43)
!301 = !DILocalVariable(name: "w", scope: !294, file: !244, line: 229, type: !218)
!302 = !DILocalVariable(name: "mbs", scope: !294, file: !244, line: 230, type: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !224, line: 6, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !226, line: 21, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 13, size: 64, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !305, file: !226, line: 15, baseType: !38, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !305, file: !226, line: 20, baseType: !309, size: 32, offset: 32)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !226, line: 16, size: 32, elements: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !309, file: !226, line: 18, baseType: !7, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !309, file: !226, line: 19, baseType: !235, size: 32)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !314)
!314 = !{!240, !237}
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "slotvec", scope: !243, file: !244, line: 834, type: !317, isLocal: true, isDefinition: true)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !244, line: 823, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !318, file: !244, line: 825, baseType: !40, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !318, file: !244, line: 826, baseType: !35, size: 64, offset: 64)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "nslots", scope: !243, file: !244, line: 832, type: !38, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "slotvec0", scope: !243, file: !244, line: 833, type: !318, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 704, elements: !328)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!328 = !{!329}
!329 = !DISubrange(count: 11)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !332, file: !333, line: 26, type: !335, isLocal: false, isDefinition: true)
!332 = distinct !DICompileUnit(language: DW_LANG_C99, file: !333, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !334, splitDebugInlining: false, nameTableKind: None)
!333 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!334 = !{!330}
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 376, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 47)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "exit_failure", scope: !340, file: !341, line: 24, type: !343, isLocal: false, isDefinition: true)
!340 = distinct !DICompileUnit(language: DW_LANG_C99, file: !341, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !342, splitDebugInlining: false, nameTableKind: None)
!341 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!342 = !{!338}
!343 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "internal_state", scope: !346, file: !347, line: 97, type: !350, isLocal: true, isDefinition: true)
!346 = distinct !DICompileUnit(language: DW_LANG_C99, file: !347, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !348, globals: !349, splitDebugInlining: false, nameTableKind: None)
!347 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!348 = !{!37, !40, !45}
!349 = !{!344}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !224, line: 6, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !226, line: 21, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 13, size: 64, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !352, file: !226, line: 15, baseType: !38, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !352, file: !226, line: 20, baseType: !356, size: 32, offset: 32)
!356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !226, line: 16, size: 32, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !356, file: !226, line: 18, baseType: !7, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !356, file: !226, line: 19, baseType: !235, size: 32)
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !364, retainedTypes: !585, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/nproc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8ed3d3246f48dd170075371c80925eac")
!364 = !{!5, !365}
!365 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !366, line: 71, baseType: !7, size: 32, elements: !367)
!366 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!368 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!369 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!370 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!371 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!372 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!373 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!374 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!375 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!376 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!377 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!378 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!379 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!380 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!381 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!382 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!383 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!384 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!385 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!386 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!387 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!388 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!389 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!390 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!391 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!392 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!393 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!394 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!395 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!396 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!397 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!398 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!399 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!400 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!401 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!402 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!403 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!404 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!405 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!406 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!407 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!408 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!409 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!410 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!411 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!412 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!413 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!414 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!415 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!416 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!417 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!418 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!419 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!420 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!421 = !DIEnumerator(name: "_SC_PII", value: 53)
!422 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!423 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!424 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!425 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!426 = !DIEnumerator(name: "_SC_POLL", value: 58)
!427 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!428 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!429 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!430 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!431 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!432 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!433 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!434 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!435 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!436 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!437 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!438 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!439 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!440 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!441 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!442 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!443 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!444 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!445 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!446 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!447 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!448 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!449 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!450 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!451 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!452 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!453 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!454 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!455 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!456 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!457 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!458 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!459 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!460 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!461 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!462 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!463 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!464 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!465 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!466 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!467 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!468 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!469 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!470 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!471 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!472 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!473 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!474 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!475 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!476 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!477 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!478 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!479 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!480 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!481 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!482 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!483 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!484 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!485 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!486 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!487 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!488 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!489 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!490 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!491 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!492 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!493 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!494 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!495 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!496 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!497 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!498 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!499 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!500 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!501 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!502 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!503 = !DIEnumerator(name: "_SC_BASE", value: 134)
!504 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!505 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!506 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!507 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!508 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!509 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!510 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!511 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!512 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!513 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!514 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!515 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!516 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!517 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!518 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!519 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!520 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!521 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!522 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!523 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!524 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!525 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!526 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!527 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!528 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!529 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!530 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!531 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!532 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!533 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!534 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!535 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!536 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!537 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!538 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!539 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!540 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!541 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!542 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!543 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!544 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!545 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!546 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!547 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!548 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!549 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!550 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!551 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!552 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!553 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!554 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!555 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!556 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!557 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!558 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!559 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!560 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!561 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!562 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!563 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!564 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!565 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!566 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!567 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!568 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!569 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!570 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!571 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!572 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!573 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!574 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!575 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!576 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!577 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!578 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!579 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!580 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!581 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!582 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!583 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!584 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!585 = !{!37, !586, !101}
!586 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !589, retainedTypes: !593, splitDebugInlining: false, nameTableKind: None)
!588 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!589 = !{!590}
!590 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !588, line: 40, baseType: !7, size: 32, elements: !591)
!591 = !{!592}
!592 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!593 = !{!37}
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !596, retainedTypes: !627, splitDebugInlining: false, nameTableKind: None)
!595 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!596 = !{!597, !609}
!597 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !598, file: !595, line: 188, baseType: !7, size: 32, elements: !607)
!598 = distinct !DISubprogram(name: "x2nrealloc", scope: !595, file: !595, line: 176, type: !599, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !602)
!599 = !DISubroutineType(types: !600)
!600 = !{!37, !37, !601, !40}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!602 = !{!603, !604, !605, !606}
!603 = !DILocalVariable(name: "p", arg: 1, scope: !598, file: !595, line: 176, type: !37)
!604 = !DILocalVariable(name: "pn", arg: 2, scope: !598, file: !595, line: 176, type: !601)
!605 = !DILocalVariable(name: "s", arg: 3, scope: !598, file: !595, line: 176, type: !40)
!606 = !DILocalVariable(name: "n", scope: !598, file: !595, line: 178, type: !40)
!607 = !{!608}
!608 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!609 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !610, file: !595, line: 228, baseType: !7, size: 32, elements: !607)
!610 = distinct !DISubprogram(name: "xpalloc", scope: !595, file: !595, line: 223, type: !611, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !617)
!611 = !DISubroutineType(types: !612)
!612 = !{!37, !37, !613, !614, !616, !614}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !615, line: 130, baseType: !616)
!615 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !41, line: 35, baseType: !101)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626}
!618 = !DILocalVariable(name: "pa", arg: 1, scope: !610, file: !595, line: 223, type: !37)
!619 = !DILocalVariable(name: "pn", arg: 2, scope: !610, file: !595, line: 223, type: !613)
!620 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !610, file: !595, line: 223, type: !614)
!621 = !DILocalVariable(name: "n_max", arg: 4, scope: !610, file: !595, line: 223, type: !616)
!622 = !DILocalVariable(name: "s", arg: 5, scope: !610, file: !595, line: 223, type: !614)
!623 = !DILocalVariable(name: "n0", scope: !610, file: !595, line: 230, type: !614)
!624 = !DILocalVariable(name: "n", scope: !610, file: !595, line: 237, type: !614)
!625 = !DILocalVariable(name: "nbytes", scope: !610, file: !595, line: 248, type: !614)
!626 = !DILocalVariable(name: "adjusted_nbytes", scope: !610, file: !595, line: 252, type: !614)
!627 = !{!35, !37, !60, !101, !42}
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!629 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !632, splitDebugInlining: false, nameTableKind: None)
!631 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!632 = !{!633, !12}
!633 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !634, line: 30, baseType: !7, size: 32, elements: !635)
!634 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!635 = !{!636, !637, !638, !639, !640}
!636 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!637 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!638 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!639 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!640 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!641 = distinct !DICompileUnit(language: DW_LANG_C99, file: !642, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !643, retainedTypes: !644, splitDebugInlining: false, nameTableKind: None)
!642 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!643 = !{!633, !19}
!644 = !{!38, !39, !35, !60, !42, !645}
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !646, line: 102, baseType: !647)
!646 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !100, line: 73, baseType: !42)
!648 = distinct !DICompileUnit(language: DW_LANG_C99, file: !649, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !593, splitDebugInlining: false, nameTableKind: None)
!649 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!651 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!653 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !593, splitDebugInlining: false, nameTableKind: None)
!655 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !593, splitDebugInlining: false, nameTableKind: None)
!657 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!658 = distinct !DICompileUnit(language: DW_LANG_C99, file: !659, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !660, splitDebugInlining: false, nameTableKind: None)
!659 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!660 = !{!60, !42, !37}
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!664 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!665 = distinct !DICompileUnit(language: DW_LANG_C99, file: !666, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !593, splitDebugInlining: false, nameTableKind: None)
!666 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!667 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!668 = !{i32 7, !"Dwarf Version", i32 5}
!669 = !{i32 2, !"Debug Info Version", i32 3}
!670 = !{i32 1, !"wchar_size", i32 4}
!671 = !{i32 1, !"branch-target-enforcement", i32 0}
!672 = !{i32 1, !"sign-return-address", i32 0}
!673 = !{i32 1, !"sign-return-address-all", i32 0}
!674 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!675 = !{i32 7, !"PIC Level", i32 2}
!676 = !{i32 7, !"PIE Level", i32 2}
!677 = !{i32 7, !"uwtable", i32 1}
!678 = !{i32 7, !"frame-pointer", i32 1}
!679 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 50, type: !680, scopeLine: 51, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !38}
!682 = !{!683}
!683 = !DILocalVariable(name: "status", arg: 1, scope: !679, file: !3, line: 50, type: !38)
!684 = !DILocation(line: 0, scope: !679)
!685 = !DILocation(line: 52, column: 14, scope: !686)
!686 = distinct !DILexicalBlock(scope: !679, file: !3, line: 52, column: 7)
!687 = !DILocation(line: 52, column: 7, scope: !679)
!688 = !DILocation(line: 53, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !3, line: 53, column: 5)
!690 = !{!691, !691, i64 0}
!691 = !{!"any pointer", !692, i64 0}
!692 = !{!"omnipotent char", !693, i64 0}
!693 = !{!"Simple C/C++ TBAA"}
!694 = !DILocation(line: 56, column: 7, scope: !695)
!695 = distinct !DILexicalBlock(scope: !686, file: !3, line: 55, column: 5)
!696 = !DILocation(line: 57, column: 7, scope: !695)
!697 = !DILocation(line: 64, column: 7, scope: !695)
!698 = !DILocation(line: 69, column: 7, scope: !695)
!699 = !DILocation(line: 75, column: 7, scope: !695)
!700 = !DILocation(line: 76, column: 7, scope: !695)
!701 = !DILocalVariable(name: "program", arg: 1, scope: !702, file: !50, line: 836, type: !43)
!702 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !50, file: !50, line: 836, type: !703, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !43}
!705 = !{!701, !706, !715, !716, !718, !719}
!706 = !DILocalVariable(name: "infomap", scope: !702, file: !50, line: 838, type: !707)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 896, elements: !713)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !702, file: !50, line: 838, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !709, file: !50, line: 838, baseType: !43, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !50, line: 838, baseType: !43, size: 64, offset: 64)
!713 = !{!714}
!714 = !DISubrange(count: 7)
!715 = !DILocalVariable(name: "node", scope: !702, file: !50, line: 848, type: !43)
!716 = !DILocalVariable(name: "map_prog", scope: !702, file: !50, line: 849, type: !717)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!718 = !DILocalVariable(name: "lc_messages", scope: !702, file: !50, line: 861, type: !43)
!719 = !DILocalVariable(name: "url_program", scope: !702, file: !50, line: 874, type: !43)
!720 = !DILocation(line: 0, scope: !702, inlinedAt: !721)
!721 = distinct !DILocation(line: 77, column: 7, scope: !695)
!722 = !DILocation(line: 838, column: 3, scope: !702, inlinedAt: !721)
!723 = !DILocation(line: 838, column: 67, scope: !702, inlinedAt: !721)
!724 = !DILocation(line: 849, column: 36, scope: !702, inlinedAt: !721)
!725 = !DILocation(line: 851, column: 3, scope: !702, inlinedAt: !721)
!726 = !DILocalVariable(name: "__s1", arg: 1, scope: !727, file: !728, line: 1359, type: !43)
!727 = distinct !DISubprogram(name: "streq", scope: !728, file: !728, line: 1359, type: !729, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !731)
!728 = !DIFile(filename: "./lib/string.h", directory: "/src")
!729 = !DISubroutineType(types: !730)
!730 = !{!60, !43, !43}
!731 = !{!726, !732}
!732 = !DILocalVariable(name: "__s2", arg: 2, scope: !727, file: !728, line: 1359, type: !43)
!733 = !DILocation(line: 0, scope: !727, inlinedAt: !734)
!734 = distinct !DILocation(line: 851, column: 33, scope: !702, inlinedAt: !721)
!735 = !DILocation(line: 1361, column: 11, scope: !727, inlinedAt: !734)
!736 = !DILocation(line: 1361, column: 10, scope: !727, inlinedAt: !734)
!737 = !DILocation(line: 852, column: 13, scope: !702, inlinedAt: !721)
!738 = !DILocation(line: 851, column: 20, scope: !702, inlinedAt: !721)
!739 = !{!740, !691, i64 0}
!740 = !{!"infomap", !691, i64 0, !691, i64 8}
!741 = !DILocation(line: 851, column: 10, scope: !702, inlinedAt: !721)
!742 = !DILocation(line: 851, column: 28, scope: !702, inlinedAt: !721)
!743 = distinct !{!743, !725, !737, !744}
!744 = !{!"llvm.loop.mustprogress"}
!745 = !DILocation(line: 854, column: 17, scope: !746, inlinedAt: !721)
!746 = distinct !DILexicalBlock(scope: !702, file: !50, line: 854, column: 7)
!747 = !{!740, !691, i64 8}
!748 = !DILocation(line: 854, column: 7, scope: !746, inlinedAt: !721)
!749 = !DILocation(line: 854, column: 7, scope: !702, inlinedAt: !721)
!750 = !DILocation(line: 857, column: 3, scope: !702, inlinedAt: !721)
!751 = !DILocation(line: 861, column: 29, scope: !702, inlinedAt: !721)
!752 = !DILocation(line: 862, column: 7, scope: !753, inlinedAt: !721)
!753 = distinct !DILexicalBlock(scope: !702, file: !50, line: 862, column: 7)
!754 = !DILocation(line: 862, column: 19, scope: !753, inlinedAt: !721)
!755 = !DILocation(line: 862, column: 22, scope: !753, inlinedAt: !721)
!756 = !DILocation(line: 862, column: 7, scope: !702, inlinedAt: !721)
!757 = !DILocation(line: 868, column: 7, scope: !758, inlinedAt: !721)
!758 = distinct !DILexicalBlock(scope: !753, file: !50, line: 863, column: 5)
!759 = !DILocation(line: 870, column: 5, scope: !758, inlinedAt: !721)
!760 = !DILocation(line: 0, scope: !727, inlinedAt: !761)
!761 = distinct !DILocation(line: 874, column: 29, scope: !702, inlinedAt: !721)
!762 = !DILocation(line: 875, column: 3, scope: !702, inlinedAt: !721)
!763 = !DILocation(line: 877, column: 3, scope: !702, inlinedAt: !721)
!764 = !DILocation(line: 879, column: 1, scope: !702, inlinedAt: !721)
!765 = !DILocation(line: 79, column: 3, scope: !679)
!766 = !DISubprogram(name: "dcgettext", scope: !767, file: !767, line: 51, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!767 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!768 = !DISubroutineType(types: !769)
!769 = !{!35, !43, !43, !38}
!770 = !{}
!771 = !DISubprogram(name: "fputs_unlocked", scope: !170, file: !170, line: 691, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!772 = !DISubroutineType(types: !773)
!773 = !{!38, !774, !775}
!774 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!775 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!776 = !DILocation(line: 0, scope: !49)
!777 = !DILocation(line: 581, column: 7, scope: !58)
!778 = !{!779, !779, i64 0}
!779 = !{!"int", !692, i64 0}
!780 = !DILocation(line: 581, column: 19, scope: !58)
!781 = !DILocation(line: 581, column: 7, scope: !49)
!782 = !DILocation(line: 585, column: 26, scope: !57)
!783 = !DILocation(line: 0, scope: !57)
!784 = !DILocation(line: 586, column: 23, scope: !57)
!785 = !DILocation(line: 586, column: 28, scope: !57)
!786 = !DILocation(line: 586, column: 32, scope: !57)
!787 = !{!692, !692, i64 0}
!788 = !DILocation(line: 586, column: 38, scope: !57)
!789 = !DILocation(line: 0, scope: !727, inlinedAt: !790)
!790 = distinct !DILocation(line: 586, column: 41, scope: !57)
!791 = !DILocation(line: 1361, column: 11, scope: !727, inlinedAt: !790)
!792 = !DILocation(line: 1361, column: 10, scope: !727, inlinedAt: !790)
!793 = !DILocation(line: 586, column: 19, scope: !57)
!794 = !DILocation(line: 587, column: 5, scope: !57)
!795 = !DILocation(line: 588, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !49, file: !50, line: 588, column: 7)
!797 = !DILocation(line: 588, column: 7, scope: !49)
!798 = !DILocation(line: 590, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !50, line: 589, column: 5)
!800 = !DILocation(line: 591, column: 7, scope: !799)
!801 = !DILocation(line: 595, column: 37, scope: !49)
!802 = !DILocation(line: 595, column: 35, scope: !49)
!803 = !DILocation(line: 596, column: 29, scope: !49)
!804 = !DILocation(line: 597, column: 8, scope: !66)
!805 = !DILocation(line: 597, column: 7, scope: !49)
!806 = !DILocation(line: 604, column: 24, scope: !65)
!807 = !DILocation(line: 604, column: 12, scope: !66)
!808 = !DILocation(line: 0, scope: !64)
!809 = !DILocation(line: 610, column: 16, scope: !64)
!810 = !DILocation(line: 610, column: 7, scope: !64)
!811 = !DILocation(line: 611, column: 21, scope: !64)
!812 = !{!813, !813, i64 0}
!813 = !{!"short", !692, i64 0}
!814 = !DILocation(line: 611, column: 19, scope: !64)
!815 = !DILocation(line: 611, column: 16, scope: !64)
!816 = !DILocation(line: 610, column: 30, scope: !64)
!817 = distinct !{!817, !810, !811, !744}
!818 = !DILocation(line: 612, column: 18, scope: !819)
!819 = distinct !DILexicalBlock(scope: !64, file: !50, line: 612, column: 11)
!820 = !DILocation(line: 612, column: 11, scope: !64)
!821 = !DILocation(line: 620, column: 23, scope: !49)
!822 = !DILocation(line: 625, column: 39, scope: !49)
!823 = !DILocation(line: 626, column: 3, scope: !49)
!824 = !DILocation(line: 626, column: 10, scope: !49)
!825 = !DILocation(line: 626, column: 21, scope: !49)
!826 = !DILocation(line: 628, column: 44, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !50, line: 628, column: 11)
!828 = distinct !DILexicalBlock(scope: !49, file: !50, line: 627, column: 5)
!829 = !DILocation(line: 628, column: 32, scope: !827)
!830 = !DILocation(line: 628, column: 49, scope: !827)
!831 = !DILocation(line: 628, column: 11, scope: !828)
!832 = !DILocation(line: 630, column: 11, scope: !833)
!833 = distinct !DILexicalBlock(scope: !828, file: !50, line: 630, column: 11)
!834 = !DILocation(line: 630, column: 11, scope: !828)
!835 = !DILocation(line: 632, column: 26, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !50, line: 632, column: 15)
!837 = distinct !DILexicalBlock(scope: !833, file: !50, line: 631, column: 9)
!838 = !DILocation(line: 632, column: 34, scope: !836)
!839 = !DILocation(line: 632, column: 37, scope: !836)
!840 = !DILocation(line: 632, column: 15, scope: !837)
!841 = !DILocation(line: 636, column: 29, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !50, line: 636, column: 15)
!843 = !DILocation(line: 640, column: 16, scope: !828)
!844 = distinct !{!844, !823, !845, !744}
!845 = !DILocation(line: 641, column: 5, scope: !49)
!846 = !DILocation(line: 644, column: 3, scope: !49)
!847 = !DILocation(line: 0, scope: !727, inlinedAt: !848)
!848 = distinct !DILocation(line: 648, column: 31, scope: !49)
!849 = !DILocation(line: 0, scope: !727, inlinedAt: !850)
!850 = distinct !DILocation(line: 649, column: 31, scope: !49)
!851 = !DILocation(line: 0, scope: !727, inlinedAt: !852)
!852 = distinct !DILocation(line: 650, column: 31, scope: !49)
!853 = !DILocation(line: 0, scope: !727, inlinedAt: !854)
!854 = distinct !DILocation(line: 651, column: 31, scope: !49)
!855 = !DILocation(line: 0, scope: !727, inlinedAt: !856)
!856 = distinct !DILocation(line: 652, column: 31, scope: !49)
!857 = !DILocation(line: 0, scope: !727, inlinedAt: !858)
!858 = distinct !DILocation(line: 653, column: 31, scope: !49)
!859 = !DILocation(line: 0, scope: !727, inlinedAt: !860)
!860 = distinct !DILocation(line: 654, column: 31, scope: !49)
!861 = !DILocation(line: 0, scope: !727, inlinedAt: !862)
!862 = distinct !DILocation(line: 655, column: 31, scope: !49)
!863 = !DILocation(line: 0, scope: !727, inlinedAt: !864)
!864 = distinct !DILocation(line: 656, column: 31, scope: !49)
!865 = !DILocation(line: 0, scope: !727, inlinedAt: !866)
!866 = distinct !DILocation(line: 657, column: 31, scope: !49)
!867 = !DILocation(line: 663, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !49, file: !50, line: 663, column: 7)
!869 = !DILocation(line: 664, column: 7, scope: !868)
!870 = !DILocation(line: 664, column: 10, scope: !868)
!871 = !DILocation(line: 663, column: 7, scope: !49)
!872 = !DILocation(line: 669, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !50, line: 665, column: 5)
!874 = !DILocation(line: 671, column: 5, scope: !873)
!875 = !DILocation(line: 676, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !868, file: !50, line: 673, column: 5)
!877 = !DILocation(line: 679, column: 3, scope: !49)
!878 = !DILocation(line: 683, column: 3, scope: !49)
!879 = !DILocation(line: 686, column: 3, scope: !49)
!880 = !DILocation(line: 688, column: 3, scope: !49)
!881 = !DILocation(line: 691, column: 3, scope: !49)
!882 = !DILocation(line: 695, column: 3, scope: !49)
!883 = !DILocation(line: 696, column: 1, scope: !49)
!884 = !DISubprogram(name: "setlocale", scope: !885, file: !885, line: 122, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!885 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!886 = !DISubroutineType(types: !887)
!887 = !{!35, !38, !43}
!888 = !DISubprogram(name: "getenv", scope: !889, file: !889, line: 641, type: !890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!889 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!890 = !DISubroutineType(types: !891)
!891 = !{!35, !43}
!892 = !DISubprogram(name: "fwrite_unlocked", scope: !170, file: !170, line: 704, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!893 = !DISubroutineType(types: !894)
!894 = !{!40, !895, !40, !40, !775}
!895 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!898 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 83, type: !899, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !902)
!899 = !DISubroutineType(types: !900)
!900 = !{!38, !38, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!902 = !{!903, !904, !905, !906, !907, !909}
!903 = !DILocalVariable(name: "argc", arg: 1, scope: !898, file: !3, line: 83, type: !38)
!904 = !DILocalVariable(name: "argv", arg: 2, scope: !898, file: !3, line: 83, type: !901)
!905 = !DILocalVariable(name: "ignore", scope: !898, file: !3, line: 85, type: !42)
!906 = !DILocalVariable(name: "mode", scope: !898, file: !3, line: 94, type: !5)
!907 = !DILocalVariable(name: "c", scope: !908, file: !3, line: 98, type: !38)
!908 = distinct !DILexicalBlock(scope: !898, file: !3, line: 97, column: 5)
!909 = !DILocalVariable(name: "nproc", scope: !898, file: !3, line: 127, type: !42)
!910 = !DILocation(line: 0, scope: !898)
!911 = !DILocation(line: 87, column: 21, scope: !898)
!912 = !DILocation(line: 87, column: 3, scope: !898)
!913 = !DILocation(line: 88, column: 3, scope: !898)
!914 = !DILocation(line: 89, column: 3, scope: !898)
!915 = !DILocation(line: 90, column: 3, scope: !898)
!916 = !DILocation(line: 92, column: 3, scope: !898)
!917 = !DILocation(line: 96, column: 3, scope: !898)
!918 = !DILocation(line: 99, column: 11, scope: !908)
!919 = !DILocation(line: 94, column: 20, scope: !898)
!920 = !DILocation(line: 98, column: 15, scope: !908)
!921 = !DILocation(line: 0, scope: !908)
!922 = !DILocation(line: 103, column: 9, scope: !923)
!923 = distinct !DILexicalBlock(scope: !908, file: !3, line: 102, column: 9)
!924 = !DILocation(line: 105, column: 9, scope: !923)
!925 = !DILocation(line: 112, column: 32, scope: !923)
!926 = !DILocation(line: 113, column: 32, scope: !923)
!927 = !DILocation(line: 112, column: 20, scope: !923)
!928 = !DILocation(line: 114, column: 11, scope: !923)
!929 = !DILocation(line: 117, column: 11, scope: !923)
!930 = !DILocation(line: 121, column: 15, scope: !931)
!931 = distinct !DILexicalBlock(scope: !898, file: !3, line: 121, column: 7)
!932 = !DILocation(line: 121, column: 12, scope: !931)
!933 = !DILocation(line: 121, column: 7, scope: !898)
!934 = !DILocation(line: 123, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !3, line: 122, column: 5)
!936 = !DILocation(line: 124, column: 7, scope: !935)
!937 = !DILocation(line: 127, column: 25, scope: !898)
!938 = !DILocation(line: 129, column: 14, scope: !939)
!939 = distinct !DILexicalBlock(scope: !898, file: !3, line: 129, column: 7)
!940 = !DILocation(line: 129, column: 7, scope: !898)
!941 = !DILocation(line: 134, column: 3, scope: !898)
!942 = !DILocation(line: 137, column: 1, scope: !898)
!943 = !DISubprogram(name: "bindtextdomain", scope: !767, file: !767, line: 86, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!944 = !DISubroutineType(types: !945)
!945 = !{!35, !43, !43}
!946 = !DISubprogram(name: "textdomain", scope: !767, file: !767, line: 82, type: !890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!947 = !DISubprogram(name: "atexit", scope: !889, file: !889, line: 602, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!948 = !DISubroutineType(types: !949)
!949 = !{!38, !196}
!950 = !DISubprogram(name: "getopt_long", scope: !137, file: !137, line: 66, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!951 = !DISubroutineType(types: !952)
!952 = !{!38, !38, !953, !43, !955, !142}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!956 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !154, file: !154, line: 50, type: !703, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !957)
!957 = !{!958}
!958 = !DILocalVariable(name: "file", arg: 1, scope: !956, file: !154, line: 50, type: !43)
!959 = !DILocation(line: 0, scope: !956)
!960 = !DILocation(line: 52, column: 13, scope: !956)
!961 = !DILocation(line: 53, column: 1, scope: !956)
!962 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !154, file: !154, line: 87, type: !963, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !965)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !60}
!965 = !{!966}
!966 = !DILocalVariable(name: "ignore", arg: 1, scope: !962, file: !154, line: 87, type: !60)
!967 = !DILocation(line: 0, scope: !962)
!968 = !DILocation(line: 89, column: 16, scope: !962)
!969 = !{!970, !970, i64 0}
!970 = !{!"_Bool", !692, i64 0}
!971 = !DILocation(line: 90, column: 1, scope: !962)
!972 = distinct !DISubprogram(name: "close_stdout", scope: !154, file: !154, line: 116, type: !197, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !973)
!973 = !{!974}
!974 = !DILocalVariable(name: "write_error", scope: !975, file: !154, line: 121, type: !43)
!975 = distinct !DILexicalBlock(scope: !976, file: !154, line: 120, column: 5)
!976 = distinct !DILexicalBlock(scope: !972, file: !154, line: 118, column: 7)
!977 = !DILocation(line: 118, column: 21, scope: !976)
!978 = !DILocation(line: 118, column: 7, scope: !976)
!979 = !DILocation(line: 118, column: 29, scope: !976)
!980 = !DILocation(line: 119, column: 7, scope: !976)
!981 = !DILocation(line: 119, column: 12, scope: !976)
!982 = !{i8 0, i8 2}
!983 = !DILocation(line: 119, column: 25, scope: !976)
!984 = !DILocation(line: 119, column: 28, scope: !976)
!985 = !DILocation(line: 119, column: 34, scope: !976)
!986 = !DILocation(line: 118, column: 7, scope: !972)
!987 = !DILocation(line: 121, column: 33, scope: !975)
!988 = !DILocation(line: 0, scope: !975)
!989 = !DILocation(line: 122, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !975, file: !154, line: 122, column: 11)
!991 = !DILocation(line: 0, scope: !990)
!992 = !DILocation(line: 122, column: 11, scope: !975)
!993 = !DILocation(line: 123, column: 9, scope: !990)
!994 = !DILocation(line: 126, column: 9, scope: !990)
!995 = !DILocation(line: 128, column: 14, scope: !975)
!996 = !DILocation(line: 128, column: 7, scope: !975)
!997 = !DILocation(line: 133, column: 42, scope: !998)
!998 = distinct !DILexicalBlock(scope: !972, file: !154, line: 133, column: 7)
!999 = !DILocation(line: 133, column: 28, scope: !998)
!1000 = !DILocation(line: 133, column: 50, scope: !998)
!1001 = !DILocation(line: 133, column: 7, scope: !972)
!1002 = !DILocation(line: 134, column: 12, scope: !998)
!1003 = !DILocation(line: 134, column: 5, scope: !998)
!1004 = !DILocation(line: 135, column: 1, scope: !972)
!1005 = distinct !DISubprogram(name: "verror", scope: !161, file: !161, line: 251, type: !1006, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1008)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !38, !38, !43, !169}
!1008 = !{!1009, !1010, !1011, !1012}
!1009 = !DILocalVariable(name: "status", arg: 1, scope: !1005, file: !161, line: 251, type: !38)
!1010 = !DILocalVariable(name: "errnum", arg: 2, scope: !1005, file: !161, line: 251, type: !38)
!1011 = !DILocalVariable(name: "message", arg: 3, scope: !1005, file: !161, line: 251, type: !43)
!1012 = !DILocalVariable(name: "args", arg: 4, scope: !1005, file: !161, line: 251, type: !169)
!1013 = !DILocation(line: 0, scope: !1005)
!1014 = !DILocation(line: 251, column: 1, scope: !1005)
!1015 = !DILocation(line: 261, column: 3, scope: !1005)
!1016 = !DILocation(line: 265, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1005, file: !161, line: 265, column: 7)
!1018 = !DILocation(line: 265, column: 7, scope: !1005)
!1019 = !DILocation(line: 266, column: 5, scope: !1017)
!1020 = !DILocation(line: 272, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !161, line: 268, column: 5)
!1022 = !DILocation(line: 276, column: 3, scope: !1005)
!1023 = !{i64 0, i64 8, !690, i64 8, i64 8, !690, i64 16, i64 8, !690, i64 24, i64 4, !778, i64 28, i64 4, !778}
!1024 = !DILocation(line: 282, column: 1, scope: !1005)
!1025 = distinct !DISubprogram(name: "flush_stdout", scope: !161, file: !161, line: 163, type: !197, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1026)
!1026 = !{!1027}
!1027 = !DILocalVariable(name: "stdout_fd", scope: !1025, file: !161, line: 166, type: !38)
!1028 = !DILocation(line: 0, scope: !1025)
!1029 = !DILocalVariable(name: "fd", arg: 1, scope: !1030, file: !161, line: 145, type: !38)
!1030 = distinct !DISubprogram(name: "is_open", scope: !161, file: !161, line: 145, type: !1031, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!38, !38}
!1033 = !{!1029}
!1034 = !DILocation(line: 0, scope: !1030, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 182, column: 25, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1025, file: !161, line: 182, column: 7)
!1037 = !DILocation(line: 157, column: 15, scope: !1030, inlinedAt: !1035)
!1038 = !DILocation(line: 182, column: 25, scope: !1036)
!1039 = !DILocation(line: 182, column: 7, scope: !1025)
!1040 = !DILocation(line: 184, column: 5, scope: !1036)
!1041 = !DILocation(line: 185, column: 1, scope: !1025)
!1042 = distinct !DISubprogram(name: "error_tail", scope: !161, file: !161, line: 219, type: !1006, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1043)
!1043 = !{!1044, !1045, !1046, !1047}
!1044 = !DILocalVariable(name: "status", arg: 1, scope: !1042, file: !161, line: 219, type: !38)
!1045 = !DILocalVariable(name: "errnum", arg: 2, scope: !1042, file: !161, line: 219, type: !38)
!1046 = !DILocalVariable(name: "message", arg: 3, scope: !1042, file: !161, line: 219, type: !43)
!1047 = !DILocalVariable(name: "args", arg: 4, scope: !1042, file: !161, line: 219, type: !169)
!1048 = !DILocation(line: 0, scope: !1042)
!1049 = !DILocation(line: 219, column: 1, scope: !1042)
!1050 = !DILocation(line: 229, column: 13, scope: !1042)
!1051 = !DILocation(line: 229, column: 3, scope: !1042)
!1052 = !DILocalVariable(name: "__stream", arg: 1, scope: !1053, file: !1054, line: 132, type: !1057)
!1053 = distinct !DISubprogram(name: "vfprintf", scope: !1054, file: !1054, line: 132, type: !1055, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1092)
!1054 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!38, !1057, !774, !171}
!1057 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1060, file: !77, line: 51, baseType: !38, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1060, file: !77, line: 54, baseType: !35, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1060, file: !77, line: 55, baseType: !35, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1060, file: !77, line: 56, baseType: !35, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1060, file: !77, line: 57, baseType: !35, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1060, file: !77, line: 58, baseType: !35, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1060, file: !77, line: 59, baseType: !35, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1060, file: !77, line: 60, baseType: !35, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1060, file: !77, line: 61, baseType: !35, size: 64, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1060, file: !77, line: 64, baseType: !35, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1060, file: !77, line: 65, baseType: !35, size: 64, offset: 640)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1060, file: !77, line: 66, baseType: !35, size: 64, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1060, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1060, file: !77, line: 70, baseType: !1076, size: 64, offset: 832)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1060, file: !77, line: 72, baseType: !38, size: 32, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1060, file: !77, line: 73, baseType: !38, size: 32, offset: 928)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1060, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1060, file: !77, line: 77, baseType: !39, size: 16, offset: 1024)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1060, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1060, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1060, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1060, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1060, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1060, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1060, file: !77, line: 93, baseType: !1076, size: 64, offset: 1344)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1060, file: !77, line: 94, baseType: !37, size: 64, offset: 1408)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1060, file: !77, line: 95, baseType: !40, size: 64, offset: 1472)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1060, file: !77, line: 96, baseType: !38, size: 32, offset: 1536)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1060, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!1092 = !{!1052, !1093, !1094}
!1093 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1053, file: !1054, line: 133, type: !774)
!1094 = !DILocalVariable(name: "__ap", arg: 3, scope: !1053, file: !1054, line: 133, type: !171)
!1095 = !DILocation(line: 0, scope: !1053, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 229, column: 3, scope: !1042)
!1097 = !DILocation(line: 135, column: 10, scope: !1053, inlinedAt: !1096)
!1098 = !{!1099, !1101}
!1099 = distinct !{!1099, !1100, !"vfprintf.inline: argument 0"}
!1100 = distinct !{!1100, !"vfprintf.inline"}
!1101 = distinct !{!1101, !1100, !"vfprintf.inline: argument 1"}
!1102 = !DILocation(line: 232, column: 3, scope: !1042)
!1103 = !DILocation(line: 233, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1042, file: !161, line: 233, column: 7)
!1105 = !DILocation(line: 233, column: 7, scope: !1042)
!1106 = !DILocalVariable(name: "errnum", arg: 1, scope: !1107, file: !161, line: 188, type: !38)
!1107 = distinct !DISubprogram(name: "print_errno_message", scope: !161, file: !161, line: 188, type: !680, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1108)
!1108 = !{!1106, !1109, !1110}
!1109 = !DILocalVariable(name: "s", scope: !1107, file: !161, line: 190, type: !43)
!1110 = !DILocalVariable(name: "errbuf", scope: !1107, file: !161, line: 193, type: !1111)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8192, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 1024)
!1114 = !DILocation(line: 0, scope: !1107, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 234, column: 5, scope: !1104)
!1116 = !DILocation(line: 193, column: 3, scope: !1107, inlinedAt: !1115)
!1117 = !DILocation(line: 193, column: 8, scope: !1107, inlinedAt: !1115)
!1118 = !DILocation(line: 195, column: 7, scope: !1107, inlinedAt: !1115)
!1119 = !DILocation(line: 207, column: 9, scope: !1120, inlinedAt: !1115)
!1120 = distinct !DILexicalBlock(scope: !1107, file: !161, line: 207, column: 7)
!1121 = !DILocation(line: 207, column: 7, scope: !1107, inlinedAt: !1115)
!1122 = !DILocation(line: 208, column: 9, scope: !1120, inlinedAt: !1115)
!1123 = !DILocation(line: 208, column: 5, scope: !1120, inlinedAt: !1115)
!1124 = !DILocation(line: 214, column: 3, scope: !1107, inlinedAt: !1115)
!1125 = !DILocation(line: 216, column: 1, scope: !1107, inlinedAt: !1115)
!1126 = !DILocation(line: 234, column: 5, scope: !1104)
!1127 = !DILocation(line: 238, column: 3, scope: !1042)
!1128 = !DILocalVariable(name: "__c", arg: 1, scope: !1129, file: !1130, line: 101, type: !38)
!1129 = distinct !DISubprogram(name: "putc_unlocked", scope: !1130, file: !1130, line: 101, type: !1131, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1133)
!1130 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!38, !38, !1058}
!1133 = !{!1128, !1134}
!1134 = !DILocalVariable(name: "__stream", arg: 2, scope: !1129, file: !1130, line: 101, type: !1058)
!1135 = !DILocation(line: 0, scope: !1129, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 238, column: 3, scope: !1042)
!1137 = !DILocation(line: 103, column: 10, scope: !1129, inlinedAt: !1136)
!1138 = !{!1139, !691, i64 40}
!1139 = !{!"_IO_FILE", !779, i64 0, !691, i64 8, !691, i64 16, !691, i64 24, !691, i64 32, !691, i64 40, !691, i64 48, !691, i64 56, !691, i64 64, !691, i64 72, !691, i64 80, !691, i64 88, !691, i64 96, !691, i64 104, !779, i64 112, !779, i64 116, !1140, i64 120, !813, i64 128, !692, i64 130, !692, i64 131, !691, i64 136, !1140, i64 144, !691, i64 152, !691, i64 160, !691, i64 168, !691, i64 176, !1140, i64 184, !779, i64 192, !692, i64 196}
!1140 = !{!"long", !692, i64 0}
!1141 = !{!1139, !691, i64 48}
!1142 = !{!"branch_weights", i32 2000, i32 1}
!1143 = !DILocation(line: 240, column: 3, scope: !1042)
!1144 = !DILocation(line: 241, column: 7, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1042, file: !161, line: 241, column: 7)
!1146 = !DILocation(line: 241, column: 7, scope: !1042)
!1147 = !DILocation(line: 242, column: 5, scope: !1145)
!1148 = !DILocation(line: 243, column: 1, scope: !1042)
!1149 = !DISubprogram(name: "strerror_r", scope: !1150, file: !1150, line: 444, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1150 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!35, !38, !35, !40}
!1153 = !DISubprogram(name: "fflush_unlocked", scope: !170, file: !170, line: 239, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!38, !1058}
!1156 = !DISubprogram(name: "fcntl", scope: !1157, file: !1157, line: 149, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1157 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!38, !38, !38, null}
!1160 = distinct !DISubprogram(name: "error", scope: !161, file: !161, line: 285, type: !1161, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !38, !38, !43, null}
!1163 = !{!1164, !1165, !1166, !1167}
!1164 = !DILocalVariable(name: "status", arg: 1, scope: !1160, file: !161, line: 285, type: !38)
!1165 = !DILocalVariable(name: "errnum", arg: 2, scope: !1160, file: !161, line: 285, type: !38)
!1166 = !DILocalVariable(name: "message", arg: 3, scope: !1160, file: !161, line: 285, type: !43)
!1167 = !DILocalVariable(name: "ap", scope: !1160, file: !161, line: 287, type: !169)
!1168 = !DILocation(line: 0, scope: !1160)
!1169 = !DILocation(line: 287, column: 3, scope: !1160)
!1170 = !DILocation(line: 287, column: 11, scope: !1160)
!1171 = !DILocation(line: 288, column: 3, scope: !1160)
!1172 = !DILocation(line: 289, column: 3, scope: !1160)
!1173 = !DILocation(line: 290, column: 3, scope: !1160)
!1174 = !DILocation(line: 291, column: 1, scope: !1160)
!1175 = !DILocation(line: 0, scope: !166)
!1176 = !DILocation(line: 298, column: 1, scope: !166)
!1177 = !DILocation(line: 302, column: 7, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !166, file: !161, line: 302, column: 7)
!1179 = !DILocation(line: 302, column: 7, scope: !166)
!1180 = !DILocation(line: 307, column: 11, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !161, line: 307, column: 11)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !161, line: 303, column: 5)
!1183 = !DILocation(line: 307, column: 27, scope: !1181)
!1184 = !DILocation(line: 308, column: 11, scope: !1181)
!1185 = !DILocation(line: 308, column: 28, scope: !1181)
!1186 = !DILocation(line: 308, column: 25, scope: !1181)
!1187 = !DILocation(line: 309, column: 15, scope: !1181)
!1188 = !DILocation(line: 309, column: 33, scope: !1181)
!1189 = !DILocation(line: 310, column: 19, scope: !1181)
!1190 = !DILocation(line: 311, column: 22, scope: !1181)
!1191 = !DILocation(line: 311, column: 56, scope: !1181)
!1192 = !DILocation(line: 307, column: 11, scope: !1182)
!1193 = !DILocation(line: 316, column: 21, scope: !1182)
!1194 = !DILocation(line: 317, column: 23, scope: !1182)
!1195 = !DILocation(line: 318, column: 5, scope: !1182)
!1196 = !DILocation(line: 327, column: 3, scope: !166)
!1197 = !DILocation(line: 331, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !166, file: !161, line: 331, column: 7)
!1199 = !DILocation(line: 331, column: 7, scope: !166)
!1200 = !DILocation(line: 332, column: 5, scope: !1198)
!1201 = !DILocation(line: 338, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !161, line: 334, column: 5)
!1203 = !DILocation(line: 346, column: 3, scope: !166)
!1204 = !DILocation(line: 350, column: 3, scope: !166)
!1205 = !DILocation(line: 356, column: 1, scope: !166)
!1206 = distinct !DISubprogram(name: "error_at_line", scope: !161, file: !161, line: 359, type: !1207, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1209)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !38, !38, !43, !7, !43, null}
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215}
!1210 = !DILocalVariable(name: "status", arg: 1, scope: !1206, file: !161, line: 359, type: !38)
!1211 = !DILocalVariable(name: "errnum", arg: 2, scope: !1206, file: !161, line: 359, type: !38)
!1212 = !DILocalVariable(name: "file_name", arg: 3, scope: !1206, file: !161, line: 359, type: !43)
!1213 = !DILocalVariable(name: "line_number", arg: 4, scope: !1206, file: !161, line: 360, type: !7)
!1214 = !DILocalVariable(name: "message", arg: 5, scope: !1206, file: !161, line: 360, type: !43)
!1215 = !DILocalVariable(name: "ap", scope: !1206, file: !161, line: 362, type: !169)
!1216 = !DILocation(line: 0, scope: !1206)
!1217 = !DILocation(line: 362, column: 3, scope: !1206)
!1218 = !DILocation(line: 362, column: 11, scope: !1206)
!1219 = !DILocation(line: 363, column: 3, scope: !1206)
!1220 = !DILocation(line: 364, column: 3, scope: !1206)
!1221 = !DILocation(line: 366, column: 3, scope: !1206)
!1222 = !DILocation(line: 367, column: 1, scope: !1206)
!1223 = distinct !DISubprogram(name: "getprogname", scope: !361, file: !361, line: 54, type: !1224, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !770)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!43}
!1226 = !DILocation(line: 58, column: 10, scope: !1223)
!1227 = !DILocation(line: 58, column: 3, scope: !1223)
!1228 = distinct !DISubprogram(name: "num_processors", scope: !363, file: !363, line: 544, type: !1229, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1231)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!42, !5}
!1231 = !{!1232, !1233, !1234, !1237, !1238, !1241}
!1232 = !DILocalVariable(name: "query", arg: 1, scope: !1228, file: !363, line: 544, type: !5)
!1233 = !DILocalVariable(name: "nproc_limit", scope: !1228, file: !363, line: 546, type: !42)
!1234 = !DILocalVariable(name: "omp_env_threads", scope: !1235, file: !363, line: 552, type: !42)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !363, line: 551, column: 5)
!1236 = distinct !DILexicalBlock(scope: !1228, file: !363, line: 550, column: 7)
!1237 = !DILocalVariable(name: "omp_env_limit", scope: !1235, file: !363, line: 555, type: !42)
!1238 = !DILocalVariable(name: "quota", scope: !1239, file: !363, line: 570, type: !42)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !363, line: 569, column: 5)
!1240 = distinct !DILexicalBlock(scope: !1228, file: !363, line: 568, column: 7)
!1241 = !DILocalVariable(name: "nprocs", scope: !1242, file: !363, line: 576, type: !42)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !363, line: 575, column: 5)
!1243 = distinct !DILexicalBlock(scope: !1228, file: !363, line: 574, column: 7)
!1244 = !DILocation(line: 0, scope: !1228)
!1245 = !DILocation(line: 550, column: 13, scope: !1236)
!1246 = !DILocation(line: 550, column: 7, scope: !1228)
!1247 = !DILocation(line: 553, column: 28, scope: !1235)
!1248 = !DILocalVariable(name: "threads", arg: 1, scope: !1249, file: !363, line: 515, type: !43)
!1249 = distinct !DISubprogram(name: "parse_omp_threads", scope: !363, file: !363, line: 515, type: !1250, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!42, !43}
!1252 = !{!1248, !1253, !1256}
!1253 = !DILocalVariable(name: "endptr", scope: !1254, file: !363, line: 528, type: !35)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !363, line: 527, column: 5)
!1255 = distinct !DILexicalBlock(scope: !1249, file: !363, line: 526, column: 7)
!1256 = !DILocalVariable(name: "value", scope: !1254, file: !363, line: 529, type: !42)
!1257 = !DILocation(line: 0, scope: !1249, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 553, column: 9, scope: !1235)
!1259 = !DILocation(line: 517, column: 15, scope: !1260, inlinedAt: !1258)
!1260 = distinct !DILexicalBlock(scope: !1249, file: !363, line: 517, column: 7)
!1261 = !DILocation(line: 517, column: 7, scope: !1249, inlinedAt: !1258)
!1262 = !DILocation(line: 522, column: 10, scope: !1249, inlinedAt: !1258)
!1263 = !DILocation(line: 522, column: 27, scope: !1249, inlinedAt: !1258)
!1264 = !DILocation(line: 523, column: 12, scope: !1249, inlinedAt: !1258)
!1265 = !DILocation(line: 522, column: 3, scope: !1249, inlinedAt: !1258)
!1266 = distinct !{!1266, !1265, !1264, !744}
!1267 = !DILocation(line: 526, column: 18, scope: !1255, inlinedAt: !1258)
!1268 = !DILocalVariable(name: "c", arg: 1, scope: !1269, file: !1270, line: 233, type: !38)
!1269 = distinct !DISubprogram(name: "c_isdigit", scope: !1270, file: !1270, line: 233, type: !1271, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1273)
!1270 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!60, !38}
!1273 = !{!1268}
!1274 = !DILocation(line: 0, scope: !1269, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 526, column: 7, scope: !1255, inlinedAt: !1258)
!1276 = !DILocation(line: 235, column: 3, scope: !1269, inlinedAt: !1275)
!1277 = !DILocation(line: 526, column: 7, scope: !1249, inlinedAt: !1258)
!1278 = !DILocation(line: 528, column: 7, scope: !1254, inlinedAt: !1258)
!1279 = !DILocation(line: 0, scope: !1254, inlinedAt: !1258)
!1280 = !DILocation(line: 529, column: 33, scope: !1254, inlinedAt: !1258)
!1281 = !DILocation(line: 530, column: 7, scope: !1254, inlinedAt: !1258)
!1282 = !DILocation(line: 530, column: 14, scope: !1254, inlinedAt: !1258)
!1283 = !DILocation(line: 530, column: 30, scope: !1254, inlinedAt: !1258)
!1284 = !DILocation(line: 538, column: 5, scope: !1255, inlinedAt: !1258)
!1285 = !DILocation(line: 531, column: 15, scope: !1254, inlinedAt: !1258)
!1286 = distinct !{!1286, !1281, !1285, !744}
!1287 = !DILocation(line: 540, column: 3, scope: !1249, inlinedAt: !1258)
!1288 = !DILocation(line: 0, scope: !1235)
!1289 = !DILocation(line: 556, column: 28, scope: !1235)
!1290 = !DILocation(line: 0, scope: !1249, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 556, column: 9, scope: !1235)
!1292 = !DILocation(line: 517, column: 15, scope: !1260, inlinedAt: !1291)
!1293 = !DILocation(line: 517, column: 7, scope: !1249, inlinedAt: !1291)
!1294 = !DILocation(line: 522, column: 10, scope: !1249, inlinedAt: !1291)
!1295 = !DILocation(line: 522, column: 27, scope: !1249, inlinedAt: !1291)
!1296 = !DILocation(line: 523, column: 12, scope: !1249, inlinedAt: !1291)
!1297 = !DILocation(line: 522, column: 3, scope: !1249, inlinedAt: !1291)
!1298 = distinct !{!1298, !1297, !1296, !744}
!1299 = !DILocation(line: 526, column: 18, scope: !1255, inlinedAt: !1291)
!1300 = !DILocation(line: 0, scope: !1269, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 526, column: 7, scope: !1255, inlinedAt: !1291)
!1302 = !DILocation(line: 235, column: 3, scope: !1269, inlinedAt: !1301)
!1303 = !DILocation(line: 526, column: 7, scope: !1249, inlinedAt: !1291)
!1304 = !DILocation(line: 528, column: 7, scope: !1254, inlinedAt: !1291)
!1305 = !DILocation(line: 0, scope: !1254, inlinedAt: !1291)
!1306 = !DILocation(line: 529, column: 33, scope: !1254, inlinedAt: !1291)
!1307 = !DILocation(line: 530, column: 7, scope: !1254, inlinedAt: !1291)
!1308 = !DILocation(line: 530, column: 14, scope: !1254, inlinedAt: !1291)
!1309 = !DILocation(line: 530, column: 30, scope: !1254, inlinedAt: !1291)
!1310 = !DILocation(line: 538, column: 5, scope: !1255, inlinedAt: !1291)
!1311 = !DILocation(line: 557, column: 13, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1235, file: !363, line: 557, column: 11)
!1313 = !DILocation(line: 557, column: 11, scope: !1235)
!1314 = !DILocation(line: 531, column: 15, scope: !1254, inlinedAt: !1291)
!1315 = distinct !{!1315, !1307, !1314, !744}
!1316 = !DILocation(line: 560, column: 11, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1235, file: !363, line: 560, column: 11)
!1318 = !DILocation(line: 560, column: 11, scope: !1235)
!1319 = !DILocation(line: 546, column: 21, scope: !1228)
!1320 = !DILocation(line: 568, column: 13, scope: !1240)
!1321 = !DILocation(line: 568, column: 30, scope: !1240)
!1322 = !DILocalVariable(name: "quota", scope: !1323, file: !363, line: 489, type: !42)
!1323 = distinct !DISubprogram(name: "cpu_quota", scope: !363, file: !363, line: 487, type: !1324, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!42}
!1326 = !{!1322}
!1327 = !DILocation(line: 0, scope: !1323, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 570, column: 33, scope: !1239)
!1329 = !DILocation(line: 494, column: 11, scope: !1323, inlinedAt: !1328)
!1330 = !DILocation(line: 494, column: 3, scope: !1323, inlinedAt: !1328)
!1331 = !DILocalVariable(name: "cpu_quota", scope: !1332, file: !363, line: 402, type: !42)
!1332 = distinct !DISubprogram(name: "get_cgroup2_cpu_quota", scope: !363, file: !363, line: 400, type: !1324, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1333)
!1333 = !{!1331, !1334, !1369, !1370, !1371, !1372, !1376, !1380, !1381, !1382, !1383, !1388, !1391, !1392, !1395}
!1334 = !DILocalVariable(name: "fp", scope: !1332, file: !363, line: 404, type: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1337, file: !77, line: 51, baseType: !38, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1337, file: !77, line: 54, baseType: !35, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1337, file: !77, line: 55, baseType: !35, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1337, file: !77, line: 56, baseType: !35, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1337, file: !77, line: 57, baseType: !35, size: 64, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1337, file: !77, line: 58, baseType: !35, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1337, file: !77, line: 59, baseType: !35, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1337, file: !77, line: 60, baseType: !35, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1337, file: !77, line: 61, baseType: !35, size: 64, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1337, file: !77, line: 64, baseType: !35, size: 64, offset: 576)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1337, file: !77, line: 65, baseType: !35, size: 64, offset: 640)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1337, file: !77, line: 66, baseType: !35, size: 64, offset: 704)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1337, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1337, file: !77, line: 70, baseType: !1353, size: 64, offset: 832)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1337, file: !77, line: 72, baseType: !38, size: 32, offset: 896)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1337, file: !77, line: 73, baseType: !38, size: 32, offset: 928)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1337, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1337, file: !77, line: 77, baseType: !39, size: 16, offset: 1024)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1337, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1337, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1337, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1337, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1337, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1337, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1337, file: !77, line: 93, baseType: !1353, size: 64, offset: 1344)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1337, file: !77, line: 94, baseType: !37, size: 64, offset: 1408)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1337, file: !77, line: 95, baseType: !40, size: 64, offset: 1472)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1337, file: !77, line: 96, baseType: !38, size: 32, offset: 1536)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1337, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!1369 = !DILocalVariable(name: "cgroup", scope: !1332, file: !363, line: 409, type: !35)
!1370 = !DILocalVariable(name: "cgroup_str", scope: !1332, file: !363, line: 410, type: !35)
!1371 = !DILocalVariable(name: "cgroup_size", scope: !1332, file: !363, line: 411, type: !40)
!1372 = !DILocalVariable(name: "read", scope: !1332, file: !363, line: 412, type: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1374, line: 108, baseType: !1375)
!1374 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !100, line: 194, baseType: !101)
!1376 = !DILocalVariable(name: "end", scope: !1377, file: !363, line: 417, type: !35)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !363, line: 416, column: 9)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !363, line: 415, column: 11)
!1379 = distinct !DILexicalBlock(scope: !1332, file: !363, line: 414, column: 5)
!1380 = !DILocalVariable(name: "mount", scope: !1332, file: !363, line: 426, type: !35)
!1381 = !DILocalVariable(name: "quota_str", scope: !1332, file: !363, line: 431, type: !35)
!1382 = !DILocalVariable(name: "quota_size", scope: !1332, file: !363, line: 432, type: !40)
!1383 = !DILocalVariable(name: "cpu_max_file", scope: !1384, file: !363, line: 440, type: !1385)
!1384 = distinct !DILexicalBlock(scope: !1332, file: !363, line: 434, column: 5)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32768, elements: !1386)
!1386 = !{!1387}
!1387 = !DISubrange(count: 4096)
!1388 = !DILocalVariable(name: "quota", scope: !1389, file: !363, line: 448, type: !101)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !363, line: 447, column: 9)
!1390 = distinct !DILexicalBlock(scope: !1384, file: !363, line: 444, column: 11)
!1391 = !DILocalVariable(name: "period", scope: !1389, file: !363, line: 448, type: !101)
!1392 = !DILocalVariable(name: "ncpus", scope: !1393, file: !363, line: 451, type: !586)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !363, line: 450, column: 13)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !363, line: 449, column: 15)
!1395 = !DILocalVariable(name: "last_sep", scope: !1384, file: !363, line: 465, type: !35)
!1396 = !DILocation(line: 0, scope: !1332, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 503, column: 17, scope: !1398, inlinedAt: !1328)
!1398 = distinct !DILexicalBlock(scope: !1323, file: !363, line: 495, column: 5)
!1399 = !DILocation(line: 404, column: 14, scope: !1332, inlinedAt: !1397)
!1400 = !DILocation(line: 405, column: 9, scope: !1401, inlinedAt: !1397)
!1401 = distinct !DILexicalBlock(scope: !1332, file: !363, line: 405, column: 7)
!1402 = !DILocation(line: 405, column: 7, scope: !1332, inlinedAt: !1397)
!1403 = !DILocation(line: 410, column: 3, scope: !1332, inlinedAt: !1397)
!1404 = !DILocation(line: 410, column: 9, scope: !1332, inlinedAt: !1397)
!1405 = !DILocation(line: 411, column: 3, scope: !1332, inlinedAt: !1397)
!1406 = !DILocation(line: 411, column: 10, scope: !1332, inlinedAt: !1397)
!1407 = !{!1140, !1140, i64 0}
!1408 = !DILocation(line: 413, column: 3, scope: !1332, inlinedAt: !1397)
!1409 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1410, file: !1130, line: 118, type: !901)
!1410 = distinct !DISubprogram(name: "getline", scope: !1130, file: !1130, line: 118, type: !1411, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1413)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1375, !901, !601, !1335}
!1413 = !{!1409, !1414, !1415}
!1414 = !DILocalVariable(name: "__n", arg: 2, scope: !1410, file: !1130, line: 118, type: !601)
!1415 = !DILocalVariable(name: "__stream", arg: 3, scope: !1410, file: !1130, line: 118, type: !1335)
!1416 = !DILocation(line: 0, scope: !1410, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 413, column: 18, scope: !1332, inlinedAt: !1397)
!1418 = !DILocation(line: 120, column: 10, scope: !1410, inlinedAt: !1417)
!1419 = !DILocation(line: 413, column: 59, scope: !1332, inlinedAt: !1397)
!1420 = !DILocation(line: 424, column: 3, scope: !1332, inlinedAt: !1397)
!1421 = !DILocation(line: 427, column: 14, scope: !1422, inlinedAt: !1397)
!1422 = distinct !DILexicalBlock(scope: !1332, file: !363, line: 427, column: 7)
!1423 = !DILocation(line: 415, column: 20, scope: !1378, inlinedAt: !1397)
!1424 = !DILocation(line: 415, column: 11, scope: !1378, inlinedAt: !1397)
!1425 = !DILocation(line: 415, column: 43, scope: !1378, inlinedAt: !1397)
!1426 = !DILocation(line: 415, column: 11, scope: !1379, inlinedAt: !1397)
!1427 = distinct !{!1427, !1408, !1428, !744}
!1428 = !DILocation(line: 423, column: 5, scope: !1332, inlinedAt: !1397)
!1429 = !DILocation(line: 417, column: 34, scope: !1377, inlinedAt: !1397)
!1430 = !DILocation(line: 417, column: 41, scope: !1377, inlinedAt: !1397)
!1431 = !DILocation(line: 0, scope: !1377, inlinedAt: !1397)
!1432 = !DILocation(line: 418, column: 15, scope: !1433, inlinedAt: !1397)
!1433 = distinct !DILexicalBlock(scope: !1377, file: !363, line: 418, column: 15)
!1434 = !DILocation(line: 418, column: 20, scope: !1433, inlinedAt: !1397)
!1435 = !DILocation(line: 418, column: 15, scope: !1377, inlinedAt: !1397)
!1436 = !DILocation(line: 419, column: 18, scope: !1433, inlinedAt: !1397)
!1437 = !DILocation(line: 420, column: 20, scope: !1377, inlinedAt: !1397)
!1438 = !DILocation(line: 419, column: 13, scope: !1433, inlinedAt: !1397)
!1439 = !DILocation(line: 420, column: 31, scope: !1377, inlinedAt: !1397)
!1440 = !DILocation(line: 371, column: 7, scope: !1441, inlinedAt: !1458)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !363, line: 371, column: 7)
!1442 = distinct !DISubprogram(name: "cgroup2_mount", scope: !363, file: !363, line: 367, type: !1443, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1444)
!1443 = !DISubroutineType(types: !203)
!1444 = !{!1445, !1446, !1447}
!1445 = !DILocalVariable(name: "ret", scope: !1442, file: !363, line: 374, type: !35)
!1446 = !DILocalVariable(name: "fp", scope: !1442, file: !363, line: 378, type: !1335)
!1447 = !DILocalVariable(name: "mnt", scope: !1442, file: !363, line: 381, type: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !1450, line: 51, size: 320, elements: !1451)
!1450 = !DIFile(filename: "/usr/include/mntent.h", directory: "", checksumkind: CSK_MD5, checksum: "0070e4c80f74d781196301da01c9ab34")
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !1449, file: !1450, line: 53, baseType: !35, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !1449, file: !1450, line: 54, baseType: !35, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !1449, file: !1450, line: 55, baseType: !35, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !1449, file: !1450, line: 56, baseType: !35, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !1449, file: !1450, line: 57, baseType: !38, size: 32, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !1449, file: !1450, line: 58, baseType: !38, size: 32, offset: 288)
!1458 = distinct !DILocation(line: 427, column: 28, scope: !1422, inlinedAt: !1397)
!1459 = !DILocation(line: 371, column: 58, scope: !1441, inlinedAt: !1458)
!1460 = !DILocation(line: 371, column: 7, scope: !1442, inlinedAt: !1458)
!1461 = !DILocation(line: 372, column: 12, scope: !1441, inlinedAt: !1458)
!1462 = !DILocation(line: 372, column: 5, scope: !1441, inlinedAt: !1458)
!1463 = !DILocation(line: 0, scope: !1442, inlinedAt: !1458)
!1464 = !DILocation(line: 378, column: 14, scope: !1442, inlinedAt: !1458)
!1465 = !DILocation(line: 379, column: 9, scope: !1466, inlinedAt: !1458)
!1466 = distinct !DILexicalBlock(scope: !1442, file: !363, line: 379, column: 7)
!1467 = !DILocation(line: 379, column: 7, scope: !1442, inlinedAt: !1458)
!1468 = !DILocation(line: 382, column: 17, scope: !1442, inlinedAt: !1458)
!1469 = !DILocation(line: 382, column: 33, scope: !1442, inlinedAt: !1458)
!1470 = !DILocation(line: 382, column: 3, scope: !1442, inlinedAt: !1458)
!1471 = !DILocation(line: 384, column: 23, scope: !1472, inlinedAt: !1458)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !363, line: 384, column: 11)
!1473 = distinct !DILexicalBlock(scope: !1442, file: !363, line: 383, column: 5)
!1474 = !{!1475, !691, i64 16}
!1475 = !{!"mntent", !691, i64 0, !691, i64 8, !691, i64 16, !691, i64 24, !779, i64 32, !779, i64 36}
!1476 = !DILocalVariable(name: "__s1", arg: 1, scope: !1477, file: !728, line: 1359, type: !43)
!1477 = distinct !DISubprogram(name: "streq", scope: !728, file: !728, line: 1359, type: !729, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1478)
!1478 = !{!1476, !1479}
!1479 = !DILocalVariable(name: "__s2", arg: 2, scope: !1477, file: !728, line: 1359, type: !43)
!1480 = !DILocation(line: 0, scope: !1477, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 384, column: 11, scope: !1472, inlinedAt: !1458)
!1482 = !DILocation(line: 1361, column: 11, scope: !1477, inlinedAt: !1481)
!1483 = !DILocation(line: 1361, column: 10, scope: !1477, inlinedAt: !1481)
!1484 = !DILocation(line: 384, column: 11, scope: !1473, inlinedAt: !1458)
!1485 = distinct !{!1485, !1470, !1486, !744}
!1486 = !DILocation(line: 389, column: 5, scope: !1442, inlinedAt: !1458)
!1487 = !DILocation(line: 386, column: 30, scope: !1488, inlinedAt: !1458)
!1488 = distinct !DILexicalBlock(scope: !1472, file: !363, line: 385, column: 9)
!1489 = !{!1475, !691, i64 8}
!1490 = !DILocation(line: 386, column: 17, scope: !1488, inlinedAt: !1458)
!1491 = !DILocation(line: 387, column: 11, scope: !1488, inlinedAt: !1458)
!1492 = !DILocation(line: 390, column: 3, scope: !1442, inlinedAt: !1458)
!1493 = !DILocation(line: 427, column: 26, scope: !1422, inlinedAt: !1397)
!1494 = !DILocation(line: 427, column: 7, scope: !1332, inlinedAt: !1397)
!1495 = !DILocation(line: 431, column: 3, scope: !1332, inlinedAt: !1397)
!1496 = !DILocation(line: 431, column: 9, scope: !1332, inlinedAt: !1397)
!1497 = !DILocation(line: 432, column: 3, scope: !1332, inlinedAt: !1397)
!1498 = !DILocation(line: 432, column: 10, scope: !1332, inlinedAt: !1397)
!1499 = !DILocation(line: 433, column: 17, scope: !1332, inlinedAt: !1397)
!1500 = !DILocation(line: 433, column: 20, scope: !1332, inlinedAt: !1397)
!1501 = !DILocation(line: 433, column: 3, scope: !1332, inlinedAt: !1397)
!1502 = !DILocation(line: 440, column: 7, scope: !1384, inlinedAt: !1397)
!1503 = !DILocation(line: 440, column: 12, scope: !1384, inlinedAt: !1397)
!1504 = !DILocation(line: 441, column: 7, scope: !1384, inlinedAt: !1397)
!1505 = !DILocation(line: 444, column: 17, scope: !1390, inlinedAt: !1397)
!1506 = !DILocation(line: 444, column: 15, scope: !1390, inlinedAt: !1397)
!1507 = !DILocation(line: 445, column: 11, scope: !1390, inlinedAt: !1397)
!1508 = !DILocation(line: 0, scope: !1410, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 445, column: 14, scope: !1390, inlinedAt: !1397)
!1510 = !DILocation(line: 120, column: 10, scope: !1410, inlinedAt: !1509)
!1511 = !DILocation(line: 445, column: 52, scope: !1390, inlinedAt: !1397)
!1512 = !DILocation(line: 446, column: 11, scope: !1390, inlinedAt: !1397)
!1513 = !DILocation(line: 446, column: 23, scope: !1390, inlinedAt: !1397)
!1514 = !DILocation(line: 446, column: 14, scope: !1390, inlinedAt: !1397)
!1515 = !DILocation(line: 446, column: 44, scope: !1390, inlinedAt: !1397)
!1516 = !DILocation(line: 444, column: 11, scope: !1384, inlinedAt: !1397)
!1517 = !DILocation(line: 448, column: 11, scope: !1389, inlinedAt: !1397)
!1518 = !DILocation(line: 0, scope: !1389, inlinedAt: !1397)
!1519 = !DILocation(line: 449, column: 15, scope: !1394, inlinedAt: !1397)
!1520 = !DILocation(line: 449, column: 62, scope: !1394, inlinedAt: !1397)
!1521 = !DILocation(line: 449, column: 67, scope: !1394, inlinedAt: !1397)
!1522 = !DILocation(line: 451, column: 38, scope: !1393, inlinedAt: !1397)
!1523 = !DILocation(line: 451, column: 30, scope: !1393, inlinedAt: !1397)
!1524 = !DILocation(line: 451, column: 46, scope: !1393, inlinedAt: !1397)
!1525 = !DILocation(line: 451, column: 44, scope: !1393, inlinedAt: !1397)
!1526 = !DILocation(line: 0, scope: !1393, inlinedAt: !1397)
!1527 = !DILocation(line: 452, column: 29, scope: !1528, inlinedAt: !1397)
!1528 = distinct !DILexicalBlock(scope: !1393, file: !363, line: 452, column: 19)
!1529 = !DILocation(line: 452, column: 42, scope: !1528, inlinedAt: !1397)
!1530 = !DILocation(line: 454, column: 31, scope: !1531, inlinedAt: !1397)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !363, line: 453, column: 17)
!1532 = !DILocation(line: 456, column: 33, scope: !1533, inlinedAt: !1397)
!1533 = distinct !DILexicalBlock(scope: !1531, file: !363, line: 456, column: 23)
!1534 = !DILocation(line: 456, column: 23, scope: !1531, inlinedAt: !1397)
!1535 = !DILocation(line: 457, column: 29, scope: !1533, inlinedAt: !1397)
!1536 = !DILocation(line: 457, column: 21, scope: !1533, inlinedAt: !1397)
!1537 = !DILocation(line: 460, column: 9, scope: !1390, inlinedAt: !1397)
!1538 = !DILocation(line: 460, column: 9, scope: !1389, inlinedAt: !1397)
!1539 = !DILocation(line: 463, column: 9, scope: !1540, inlinedAt: !1397)
!1540 = distinct !DILexicalBlock(scope: !1384, file: !363, line: 462, column: 11)
!1541 = !DILocation(line: 465, column: 24, scope: !1384, inlinedAt: !1397)
!1542 = !DILocation(line: 0, scope: !1384, inlinedAt: !1397)
!1543 = !DILocation(line: 466, column: 13, scope: !1544, inlinedAt: !1397)
!1544 = distinct !DILexicalBlock(scope: !1384, file: !363, line: 466, column: 11)
!1545 = !DILocation(line: 466, column: 11, scope: !1384, inlinedAt: !1397)
!1546 = !DILocation(line: 472, column: 5, scope: !1332, inlinedAt: !1397)
!1547 = !DILocation(line: 468, column: 20, scope: !1548, inlinedAt: !1397)
!1548 = distinct !DILexicalBlock(scope: !1384, file: !363, line: 468, column: 11)
!1549 = !DILocation(line: 468, column: 30, scope: !1548, inlinedAt: !1397)
!1550 = !DILocation(line: 468, column: 33, scope: !1548, inlinedAt: !1397)
!1551 = !DILocation(line: 468, column: 11, scope: !1384, inlinedAt: !1397)
!1552 = !DILocation(line: 0, scope: !1548, inlinedAt: !1397)
!1553 = !DILocation(line: 474, column: 9, scope: !1332, inlinedAt: !1397)
!1554 = !DILocation(line: 474, column: 3, scope: !1332, inlinedAt: !1397)
!1555 = !DILocation(line: 475, column: 3, scope: !1332, inlinedAt: !1397)
!1556 = !DILocation(line: 476, column: 9, scope: !1332, inlinedAt: !1397)
!1557 = !DILocation(line: 476, column: 3, scope: !1332, inlinedAt: !1397)
!1558 = !DILocation(line: 479, column: 1, scope: !1332, inlinedAt: !1397)
!1559 = !DILocation(line: 0, scope: !1398, inlinedAt: !1328)
!1560 = !DILocation(line: 0, scope: !1239)
!1561 = !DILocation(line: 571, column: 21, scope: !1239)
!1562 = !DILocation(line: 572, column: 5, scope: !1239)
!1563 = !DILocation(line: 574, column: 19, scope: !1243)
!1564 = !DILocation(line: 574, column: 7, scope: !1228)
!1565 = !DILocalVariable(name: "query", arg: 1, scope: !1566, file: !363, line: 238, type: !5)
!1566 = distinct !DISubprogram(name: "num_processors_available", scope: !363, file: !363, line: 238, type: !1229, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1567)
!1567 = !{!1565, !1568, !1572, !1574, !1577}
!1568 = !DILocalVariable(name: "nprocs", scope: !1569, file: !363, line: 259, type: !42)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !363, line: 258, column: 7)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !363, line: 256, column: 5)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !363, line: 255, column: 7)
!1572 = !DILocalVariable(name: "nprocs", scope: !1573, file: !363, line: 268, type: !101)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !363, line: 266, column: 7)
!1574 = !DILocalVariable(name: "nprocs", scope: !1575, file: !363, line: 279, type: !101)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !363, line: 277, column: 7)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !363, line: 275, column: 5)
!1577 = !DILocalVariable(name: "nprocs_current", scope: !1578, file: !363, line: 289, type: !42)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !363, line: 288, column: 11)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !363, line: 287, column: 13)
!1580 = !DILocation(line: 0, scope: !1566, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 576, column: 30, scope: !1242)
!1582 = !DILocation(line: 255, column: 7, scope: !1566, inlinedAt: !1581)
!1583 = !DILocation(line: 259, column: 32, scope: !1569, inlinedAt: !1581)
!1584 = !DILocation(line: 0, scope: !1569, inlinedAt: !1581)
!1585 = !DILocation(line: 261, column: 20, scope: !1586, inlinedAt: !1581)
!1586 = distinct !DILexicalBlock(scope: !1569, file: !363, line: 261, column: 13)
!1587 = !DILocation(line: 268, column: 27, scope: !1573, inlinedAt: !1581)
!1588 = !DILocation(line: 0, scope: !1573, inlinedAt: !1581)
!1589 = !DILocation(line: 269, column: 20, scope: !1590, inlinedAt: !1581)
!1590 = distinct !DILexicalBlock(scope: !1573, file: !363, line: 269, column: 13)
!1591 = !DILocation(line: 279, column: 27, scope: !1575, inlinedAt: !1581)
!1592 = !DILocation(line: 0, scope: !1575, inlinedAt: !1581)
!1593 = !DILocation(line: 287, column: 25, scope: !1579, inlinedAt: !1581)
!1594 = !DILocation(line: 289, column: 44, scope: !1578, inlinedAt: !1581)
!1595 = !DILocation(line: 0, scope: !1578, inlinedAt: !1581)
!1596 = !DILocation(line: 291, column: 60, scope: !1597, inlinedAt: !1581)
!1597 = distinct !DILexicalBlock(scope: !1578, file: !363, line: 291, column: 45)
!1598 = !DILocation(line: 296, column: 20, scope: !1599, inlinedAt: !1581)
!1599 = distinct !DILexicalBlock(scope: !1575, file: !363, line: 296, column: 13)
!1600 = !DILocation(line: 357, column: 3, scope: !1566, inlinedAt: !1581)
!1601 = !DILocation(line: 0, scope: !1242)
!1602 = !DILocation(line: 577, column: 21, scope: !1242)
!1603 = !DILocation(line: 578, column: 5, scope: !1242)
!1604 = !DILocation(line: 581, column: 1, scope: !1228)
!1605 = !DISubprogram(name: "sched_getscheduler", scope: !1606, file: !1606, line: 65, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1606 = !DIFile(filename: "/usr/include/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "52ea601aba54a9937a50019367077a72")
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!38, !1609}
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !100, line: 154, baseType: !38)
!1610 = !DISubprogram(name: "access", scope: !1611, file: !1611, line: 287, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1611 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!38, !43, !38}
!1614 = !DISubprogram(name: "setmntent", scope: !1450, file: !1450, line: 64, type: !1615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1335, !43, !43}
!1617 = !DISubprogram(name: "getmntent", scope: !1450, file: !1450, line: 69, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1448, !1335}
!1620 = !DISubprogram(name: "endmntent", scope: !1450, file: !1450, line: 85, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!38, !1335}
!1623 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !363, file: !363, line: 73, type: !1324, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1624)
!1624 = !{!1625, !1627, !1641, !1642, !1645, !1647}
!1625 = !DILocalVariable(name: "alloc_count", scope: !1626, file: !363, line: 137, type: !7)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !363, line: 136, column: 3)
!1627 = !DILocalVariable(name: "set", scope: !1628, file: !363, line: 140, type: !1631)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !363, line: 139, column: 7)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !363, line: 138, column: 5)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !363, line: 138, column: 5)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !1633, line: 42, baseType: !1634)
!1633 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/cpu-set.h", directory: "", checksumkind: CSK_MD5, checksum: "9b78eb5e247ecb71c5de90bcf65db505")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1633, line: 39, size: 1024, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !1634, file: !1633, line: 41, baseType: !1637, size: 1024)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1638, size: 1024, elements: !1639)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !1633, line: 32, baseType: !42)
!1639 = !{!1640}
!1640 = !DISubrange(count: 16)
!1641 = !DILocalVariable(name: "size", scope: !1628, file: !363, line: 144, type: !7)
!1642 = !DILocalVariable(name: "count", scope: !1643, file: !363, line: 147, type: !7)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !363, line: 146, column: 11)
!1644 = distinct !DILexicalBlock(scope: !1628, file: !363, line: 145, column: 13)
!1645 = !DILocalVariable(name: "set", scope: !1646, file: !363, line: 167, type: !1632)
!1646 = distinct !DILexicalBlock(scope: !1623, file: !363, line: 166, column: 3)
!1647 = !DILocalVariable(name: "count", scope: !1648, file: !363, line: 171, type: !42)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !363, line: 170, column: 7)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !363, line: 169, column: 9)
!1650 = !DILocation(line: 0, scope: !1626)
!1651 = !DILocation(line: 138, column: 5, scope: !1626)
!1652 = !DILocation(line: 137, column: 18, scope: !1626)
!1653 = !DILocation(line: 140, column: 26, scope: !1628)
!1654 = !DILocation(line: 0, scope: !1628)
!1655 = !DILocation(line: 141, column: 17, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1628, file: !363, line: 141, column: 13)
!1657 = !DILocation(line: 141, column: 13, scope: !1628)
!1658 = !DILocation(line: 144, column: 29, scope: !1628)
!1659 = !DILocation(line: 145, column: 13, scope: !1644)
!1660 = !DILocation(line: 145, column: 46, scope: !1644)
!1661 = !DILocation(line: 145, column: 13, scope: !1628)
!1662 = !DILocation(line: 147, column: 34, scope: !1643)
!1663 = !DILocation(line: 0, scope: !1643)
!1664 = !DILocation(line: 148, column: 13, scope: !1643)
!1665 = !DILocation(line: 149, column: 20, scope: !1643)
!1666 = !DILocation(line: 151, column: 13, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1628, file: !363, line: 151, column: 13)
!1668 = !DILocation(line: 151, column: 19, scope: !1667)
!1669 = !DILocation(line: 151, column: 13, scope: !1628)
!1670 = !DILocation(line: 167, column: 5, scope: !1646)
!1671 = !DILocation(line: 167, column: 15, scope: !1646)
!1672 = !DILocation(line: 169, column: 9, scope: !1649)
!1673 = !DILocation(line: 169, column: 51, scope: !1649)
!1674 = !DILocation(line: 169, column: 9, scope: !1646)
!1675 = !DILocation(line: 175, column: 17, scope: !1648)
!1676 = !DILocation(line: 0, scope: !1648)
!1677 = !DILocation(line: 182, column: 19, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1648, file: !363, line: 182, column: 13)
!1679 = !DILocation(line: 182, column: 13, scope: !1648)
!1680 = !DILocation(line: 185, column: 3, scope: !1623)
!1681 = !DILocation(line: 232, column: 1, scope: !1623)
!1682 = !DISubprogram(name: "sysconf", scope: !1611, file: !1611, line: 640, type: !1683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!101, !38}
!1685 = !DISubprogram(name: "sched_getaffinity", scope: !1606, file: !1606, line: 134, type: !1686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!38, !1609, !40, !1631}
!1688 = distinct !DISubprogram(name: "set_program_name", scope: !202, file: !202, line: 37, type: !703, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1689)
!1689 = !{!1690, !1691, !1692}
!1690 = !DILocalVariable(name: "argv0", arg: 1, scope: !1688, file: !202, line: 37, type: !43)
!1691 = !DILocalVariable(name: "slash", scope: !1688, file: !202, line: 44, type: !43)
!1692 = !DILocalVariable(name: "base", scope: !1688, file: !202, line: 45, type: !43)
!1693 = !DILocation(line: 0, scope: !1688)
!1694 = !DILocation(line: 44, column: 23, scope: !1688)
!1695 = !DILocation(line: 45, column: 22, scope: !1688)
!1696 = !DILocation(line: 46, column: 17, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1688, file: !202, line: 46, column: 7)
!1698 = !DILocation(line: 46, column: 9, scope: !1697)
!1699 = !DILocation(line: 46, column: 25, scope: !1697)
!1700 = !DILocation(line: 46, column: 40, scope: !1697)
!1701 = !DILocalVariable(name: "__s1", arg: 1, scope: !1702, file: !728, line: 974, type: !896)
!1702 = distinct !DISubprogram(name: "memeq", scope: !728, file: !728, line: 974, type: !1703, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!60, !896, !896, !40}
!1705 = !{!1701, !1706, !1707}
!1706 = !DILocalVariable(name: "__s2", arg: 2, scope: !1702, file: !728, line: 974, type: !896)
!1707 = !DILocalVariable(name: "__n", arg: 3, scope: !1702, file: !728, line: 974, type: !40)
!1708 = !DILocation(line: 0, scope: !1702, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 46, column: 28, scope: !1697)
!1710 = !DILocation(line: 976, column: 11, scope: !1702, inlinedAt: !1709)
!1711 = !DILocation(line: 976, column: 10, scope: !1702, inlinedAt: !1709)
!1712 = !DILocation(line: 46, column: 7, scope: !1688)
!1713 = !DILocation(line: 49, column: 11, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !202, line: 49, column: 11)
!1715 = distinct !DILexicalBlock(scope: !1697, file: !202, line: 47, column: 5)
!1716 = !DILocation(line: 49, column: 36, scope: !1714)
!1717 = !DILocation(line: 49, column: 11, scope: !1715)
!1718 = !DILocation(line: 65, column: 16, scope: !1688)
!1719 = !DILocation(line: 71, column: 27, scope: !1688)
!1720 = !DILocation(line: 74, column: 33, scope: !1688)
!1721 = !DILocation(line: 76, column: 1, scope: !1688)
!1722 = !DILocation(line: 0, scope: !207)
!1723 = !DILocation(line: 40, column: 29, scope: !207)
!1724 = !DILocation(line: 41, column: 19, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !207, file: !208, line: 41, column: 7)
!1726 = !DILocation(line: 41, column: 7, scope: !207)
!1727 = !DILocation(line: 47, column: 3, scope: !207)
!1728 = !DILocation(line: 48, column: 3, scope: !207)
!1729 = !DILocation(line: 48, column: 13, scope: !207)
!1730 = !DILocalVariable(name: "ps", arg: 1, scope: !1731, file: !1732, line: 1135, type: !1735)
!1731 = distinct !DISubprogram(name: "mbszero", scope: !1732, file: !1732, line: 1135, type: !1733, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1736)
!1732 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1735}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!1736 = !{!1730}
!1737 = !DILocation(line: 0, scope: !1731, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 48, column: 18, scope: !207)
!1739 = !DILocalVariable(name: "__dest", arg: 1, scope: !1740, file: !1741, line: 57, type: !37)
!1740 = distinct !DISubprogram(name: "memset", scope: !1741, file: !1741, line: 57, type: !1742, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1744)
!1741 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!37, !37, !38, !40}
!1744 = !{!1739, !1745, !1746}
!1745 = !DILocalVariable(name: "__ch", arg: 2, scope: !1740, file: !1741, line: 57, type: !38)
!1746 = !DILocalVariable(name: "__len", arg: 3, scope: !1740, file: !1741, line: 57, type: !40)
!1747 = !DILocation(line: 0, scope: !1740, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 1137, column: 3, scope: !1731, inlinedAt: !1738)
!1749 = !DILocation(line: 59, column: 10, scope: !1740, inlinedAt: !1748)
!1750 = !DILocation(line: 49, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !207, file: !208, line: 49, column: 7)
!1752 = !DILocation(line: 49, column: 39, scope: !1751)
!1753 = !DILocation(line: 49, column: 44, scope: !1751)
!1754 = !DILocation(line: 54, column: 1, scope: !207)
!1755 = !DISubprogram(name: "mbrtoc32", scope: !219, file: !219, line: 57, type: !1756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!40, !1758, !774, !40, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1759)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1735)
!1761 = distinct !DISubprogram(name: "clone_quoting_options", scope: !244, file: !244, line: 113, type: !1762, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1765)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1764, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!1765 = !{!1766, !1767, !1768}
!1766 = !DILocalVariable(name: "o", arg: 1, scope: !1761, file: !244, line: 113, type: !1764)
!1767 = !DILocalVariable(name: "saved_errno", scope: !1761, file: !244, line: 115, type: !38)
!1768 = !DILocalVariable(name: "p", scope: !1761, file: !244, line: 116, type: !1764)
!1769 = !DILocation(line: 0, scope: !1761)
!1770 = !DILocation(line: 115, column: 21, scope: !1761)
!1771 = !DILocation(line: 116, column: 40, scope: !1761)
!1772 = !DILocation(line: 116, column: 31, scope: !1761)
!1773 = !DILocation(line: 118, column: 9, scope: !1761)
!1774 = !DILocation(line: 119, column: 3, scope: !1761)
!1775 = distinct !DISubprogram(name: "get_quoting_style", scope: !244, file: !244, line: 124, type: !1776, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1780)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!246, !1778}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!1780 = !{!1781}
!1781 = !DILocalVariable(name: "o", arg: 1, scope: !1775, file: !244, line: 124, type: !1778)
!1782 = !DILocation(line: 0, scope: !1775)
!1783 = !DILocation(line: 126, column: 11, scope: !1775)
!1784 = !DILocation(line: 126, column: 46, scope: !1775)
!1785 = !{!1786, !692, i64 0}
!1786 = !{!"quoting_options", !692, i64 0, !779, i64 4, !692, i64 8, !691, i64 40, !691, i64 48}
!1787 = !DILocation(line: 126, column: 3, scope: !1775)
!1788 = distinct !DISubprogram(name: "set_quoting_style", scope: !244, file: !244, line: 132, type: !1789, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1791)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{null, !1764, !246}
!1791 = !{!1792, !1793}
!1792 = !DILocalVariable(name: "o", arg: 1, scope: !1788, file: !244, line: 132, type: !1764)
!1793 = !DILocalVariable(name: "s", arg: 2, scope: !1788, file: !244, line: 132, type: !246)
!1794 = !DILocation(line: 0, scope: !1788)
!1795 = !DILocation(line: 134, column: 4, scope: !1788)
!1796 = !DILocation(line: 134, column: 39, scope: !1788)
!1797 = !DILocation(line: 134, column: 45, scope: !1788)
!1798 = !DILocation(line: 135, column: 1, scope: !1788)
!1799 = distinct !DISubprogram(name: "set_char_quoting", scope: !244, file: !244, line: 143, type: !1800, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1802)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!38, !1764, !36, !38}
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1809, !1810}
!1803 = !DILocalVariable(name: "o", arg: 1, scope: !1799, file: !244, line: 143, type: !1764)
!1804 = !DILocalVariable(name: "c", arg: 2, scope: !1799, file: !244, line: 143, type: !36)
!1805 = !DILocalVariable(name: "i", arg: 3, scope: !1799, file: !244, line: 143, type: !38)
!1806 = !DILocalVariable(name: "uc", scope: !1799, file: !244, line: 145, type: !45)
!1807 = !DILocalVariable(name: "p", scope: !1799, file: !244, line: 146, type: !1808)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1809 = !DILocalVariable(name: "shift", scope: !1799, file: !244, line: 148, type: !38)
!1810 = !DILocalVariable(name: "r", scope: !1799, file: !244, line: 149, type: !7)
!1811 = !DILocation(line: 0, scope: !1799)
!1812 = !DILocation(line: 147, column: 6, scope: !1799)
!1813 = !DILocation(line: 147, column: 62, scope: !1799)
!1814 = !DILocation(line: 147, column: 57, scope: !1799)
!1815 = !DILocation(line: 148, column: 15, scope: !1799)
!1816 = !DILocation(line: 149, column: 21, scope: !1799)
!1817 = !DILocation(line: 149, column: 24, scope: !1799)
!1818 = !DILocation(line: 149, column: 34, scope: !1799)
!1819 = !DILocation(line: 150, column: 13, scope: !1799)
!1820 = !DILocation(line: 150, column: 19, scope: !1799)
!1821 = !DILocation(line: 150, column: 24, scope: !1799)
!1822 = !DILocation(line: 150, column: 6, scope: !1799)
!1823 = !DILocation(line: 151, column: 3, scope: !1799)
!1824 = distinct !DISubprogram(name: "set_quoting_flags", scope: !244, file: !244, line: 159, type: !1825, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1827)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!38, !1764, !38}
!1827 = !{!1828, !1829, !1830}
!1828 = !DILocalVariable(name: "o", arg: 1, scope: !1824, file: !244, line: 159, type: !1764)
!1829 = !DILocalVariable(name: "i", arg: 2, scope: !1824, file: !244, line: 159, type: !38)
!1830 = !DILocalVariable(name: "r", scope: !1824, file: !244, line: 163, type: !38)
!1831 = !DILocation(line: 0, scope: !1824)
!1832 = !DILocation(line: 161, column: 8, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1824, file: !244, line: 161, column: 7)
!1834 = !DILocation(line: 161, column: 7, scope: !1824)
!1835 = !DILocation(line: 163, column: 14, scope: !1824)
!1836 = !{!1786, !779, i64 4}
!1837 = !DILocation(line: 164, column: 12, scope: !1824)
!1838 = !DILocation(line: 165, column: 3, scope: !1824)
!1839 = distinct !DISubprogram(name: "set_custom_quoting", scope: !244, file: !244, line: 169, type: !1840, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1842)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1764, !43, !43}
!1842 = !{!1843, !1844, !1845}
!1843 = !DILocalVariable(name: "o", arg: 1, scope: !1839, file: !244, line: 169, type: !1764)
!1844 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1839, file: !244, line: 170, type: !43)
!1845 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1839, file: !244, line: 170, type: !43)
!1846 = !DILocation(line: 0, scope: !1839)
!1847 = !DILocation(line: 172, column: 8, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1839, file: !244, line: 172, column: 7)
!1849 = !DILocation(line: 172, column: 7, scope: !1839)
!1850 = !DILocation(line: 174, column: 6, scope: !1839)
!1851 = !DILocation(line: 174, column: 12, scope: !1839)
!1852 = !DILocation(line: 175, column: 8, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1839, file: !244, line: 175, column: 7)
!1854 = !DILocation(line: 175, column: 19, scope: !1853)
!1855 = !DILocation(line: 176, column: 5, scope: !1853)
!1856 = !DILocation(line: 177, column: 6, scope: !1839)
!1857 = !DILocation(line: 177, column: 17, scope: !1839)
!1858 = !{!1786, !691, i64 40}
!1859 = !DILocation(line: 178, column: 6, scope: !1839)
!1860 = !DILocation(line: 178, column: 18, scope: !1839)
!1861 = !{!1786, !691, i64 48}
!1862 = !DILocation(line: 179, column: 1, scope: !1839)
!1863 = distinct !DISubprogram(name: "quotearg_buffer", scope: !244, file: !244, line: 774, type: !1864, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1866)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!40, !35, !40, !43, !40, !1778}
!1866 = !{!1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874}
!1867 = !DILocalVariable(name: "buffer", arg: 1, scope: !1863, file: !244, line: 774, type: !35)
!1868 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1863, file: !244, line: 774, type: !40)
!1869 = !DILocalVariable(name: "arg", arg: 3, scope: !1863, file: !244, line: 775, type: !43)
!1870 = !DILocalVariable(name: "argsize", arg: 4, scope: !1863, file: !244, line: 775, type: !40)
!1871 = !DILocalVariable(name: "o", arg: 5, scope: !1863, file: !244, line: 776, type: !1778)
!1872 = !DILocalVariable(name: "p", scope: !1863, file: !244, line: 778, type: !1778)
!1873 = !DILocalVariable(name: "saved_errno", scope: !1863, file: !244, line: 779, type: !38)
!1874 = !DILocalVariable(name: "r", scope: !1863, file: !244, line: 780, type: !40)
!1875 = !DILocation(line: 0, scope: !1863)
!1876 = !DILocation(line: 778, column: 37, scope: !1863)
!1877 = !DILocation(line: 779, column: 21, scope: !1863)
!1878 = !DILocation(line: 781, column: 43, scope: !1863)
!1879 = !DILocation(line: 781, column: 53, scope: !1863)
!1880 = !DILocation(line: 781, column: 60, scope: !1863)
!1881 = !DILocation(line: 782, column: 43, scope: !1863)
!1882 = !DILocation(line: 782, column: 58, scope: !1863)
!1883 = !DILocation(line: 780, column: 14, scope: !1863)
!1884 = !DILocation(line: 783, column: 9, scope: !1863)
!1885 = !DILocation(line: 784, column: 3, scope: !1863)
!1886 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !244, file: !244, line: 251, type: !1887, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1891)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!40, !35, !40, !43, !40, !246, !38, !1889, !43, !43}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1916, !1918, !1921, !1922, !1923, !1924, !1927, !1928, !1931, !1935, !1936, !1944, !1947, !1948, !1950, !1951, !1952, !1953}
!1892 = !DILocalVariable(name: "buffer", arg: 1, scope: !1886, file: !244, line: 251, type: !35)
!1893 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1886, file: !244, line: 251, type: !40)
!1894 = !DILocalVariable(name: "arg", arg: 3, scope: !1886, file: !244, line: 252, type: !43)
!1895 = !DILocalVariable(name: "argsize", arg: 4, scope: !1886, file: !244, line: 252, type: !40)
!1896 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1886, file: !244, line: 253, type: !246)
!1897 = !DILocalVariable(name: "flags", arg: 6, scope: !1886, file: !244, line: 253, type: !38)
!1898 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1886, file: !244, line: 254, type: !1889)
!1899 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1886, file: !244, line: 255, type: !43)
!1900 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1886, file: !244, line: 256, type: !43)
!1901 = !DILocalVariable(name: "unibyte_locale", scope: !1886, file: !244, line: 258, type: !60)
!1902 = !DILocalVariable(name: "len", scope: !1886, file: !244, line: 260, type: !40)
!1903 = !DILocalVariable(name: "orig_buffersize", scope: !1886, file: !244, line: 261, type: !40)
!1904 = !DILocalVariable(name: "quote_string", scope: !1886, file: !244, line: 262, type: !43)
!1905 = !DILocalVariable(name: "quote_string_len", scope: !1886, file: !244, line: 263, type: !40)
!1906 = !DILocalVariable(name: "backslash_escapes", scope: !1886, file: !244, line: 264, type: !60)
!1907 = !DILocalVariable(name: "elide_outer_quotes", scope: !1886, file: !244, line: 265, type: !60)
!1908 = !DILocalVariable(name: "encountered_single_quote", scope: !1886, file: !244, line: 266, type: !60)
!1909 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1886, file: !244, line: 267, type: !60)
!1910 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1886, file: !244, line: 309, type: !60)
!1911 = !DILocalVariable(name: "lq", scope: !1912, file: !244, line: 361, type: !43)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !244, line: 361, column: 11)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !244, line: 360, column: 13)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !244, line: 333, column: 7)
!1915 = distinct !DILexicalBlock(scope: !1886, file: !244, line: 312, column: 5)
!1916 = !DILocalVariable(name: "i", scope: !1917, file: !244, line: 395, type: !40)
!1917 = distinct !DILexicalBlock(scope: !1886, file: !244, line: 395, column: 3)
!1918 = !DILocalVariable(name: "is_right_quote", scope: !1919, file: !244, line: 397, type: !60)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !244, line: 396, column: 5)
!1920 = distinct !DILexicalBlock(scope: !1917, file: !244, line: 395, column: 3)
!1921 = !DILocalVariable(name: "escaping", scope: !1919, file: !244, line: 398, type: !60)
!1922 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1919, file: !244, line: 399, type: !60)
!1923 = !DILocalVariable(name: "c", scope: !1919, file: !244, line: 417, type: !45)
!1924 = !DILocalVariable(name: "m", scope: !1925, file: !244, line: 598, type: !40)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !244, line: 596, column: 11)
!1926 = distinct !DILexicalBlock(scope: !1919, file: !244, line: 419, column: 9)
!1927 = !DILocalVariable(name: "printable", scope: !1925, file: !244, line: 600, type: !60)
!1928 = !DILocalVariable(name: "mbs", scope: !1929, file: !244, line: 609, type: !303)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !244, line: 608, column: 15)
!1930 = distinct !DILexicalBlock(scope: !1925, file: !244, line: 602, column: 17)
!1931 = !DILocalVariable(name: "w", scope: !1932, file: !244, line: 618, type: !218)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !244, line: 617, column: 19)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !244, line: 616, column: 17)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !244, line: 616, column: 17)
!1935 = !DILocalVariable(name: "bytes", scope: !1932, file: !244, line: 619, type: !40)
!1936 = !DILocalVariable(name: "j", scope: !1937, file: !244, line: 648, type: !40)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !244, line: 648, column: 29)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !244, line: 647, column: 27)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !244, line: 645, column: 29)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !244, line: 636, column: 23)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !244, line: 628, column: 30)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !244, line: 623, column: 30)
!1943 = distinct !DILexicalBlock(scope: !1932, file: !244, line: 621, column: 25)
!1944 = !DILocalVariable(name: "ilim", scope: !1945, file: !244, line: 674, type: !40)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !244, line: 671, column: 15)
!1946 = distinct !DILexicalBlock(scope: !1925, file: !244, line: 670, column: 17)
!1947 = !DILabel(scope: !1886, name: "process_input", file: !244, line: 308)
!1948 = !DILabel(scope: !1949, name: "c_and_shell_escape", file: !244, line: 502)
!1949 = distinct !DILexicalBlock(scope: !1926, file: !244, line: 478, column: 9)
!1950 = !DILabel(scope: !1949, name: "c_escape", file: !244, line: 507)
!1951 = !DILabel(scope: !1919, name: "store_escape", file: !244, line: 709)
!1952 = !DILabel(scope: !1919, name: "store_c", file: !244, line: 712)
!1953 = !DILabel(scope: !1886, name: "force_outer_quoting_style", file: !244, line: 753)
!1954 = !DILocation(line: 0, scope: !1886)
!1955 = !DILocation(line: 258, column: 25, scope: !1886)
!1956 = !DILocation(line: 258, column: 36, scope: !1886)
!1957 = !DILocation(line: 267, column: 3, scope: !1886)
!1958 = !DILocation(line: 261, column: 10, scope: !1886)
!1959 = !DILocation(line: 262, column: 15, scope: !1886)
!1960 = !DILocation(line: 263, column: 10, scope: !1886)
!1961 = !DILocation(line: 308, column: 2, scope: !1886)
!1962 = !DILocation(line: 311, column: 3, scope: !1886)
!1963 = !DILocation(line: 318, column: 11, scope: !1915)
!1964 = !DILocation(line: 319, column: 9, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !244, line: 319, column: 9)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !244, line: 319, column: 9)
!1967 = distinct !DILexicalBlock(scope: !1915, file: !244, line: 318, column: 11)
!1968 = !DILocation(line: 319, column: 9, scope: !1966)
!1969 = !DILocation(line: 0, scope: !294, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 357, column: 26, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !244, line: 335, column: 11)
!1972 = distinct !DILexicalBlock(scope: !1914, file: !244, line: 334, column: 13)
!1973 = !DILocation(line: 199, column: 29, scope: !294, inlinedAt: !1970)
!1974 = !DILocation(line: 201, column: 19, scope: !1975, inlinedAt: !1970)
!1975 = distinct !DILexicalBlock(scope: !294, file: !244, line: 201, column: 7)
!1976 = !DILocation(line: 201, column: 7, scope: !294, inlinedAt: !1970)
!1977 = !DILocation(line: 229, column: 3, scope: !294, inlinedAt: !1970)
!1978 = !DILocation(line: 230, column: 3, scope: !294, inlinedAt: !1970)
!1979 = !DILocation(line: 230, column: 13, scope: !294, inlinedAt: !1970)
!1980 = !DILocalVariable(name: "ps", arg: 1, scope: !1981, file: !1732, line: 1135, type: !1984)
!1981 = distinct !DISubprogram(name: "mbszero", scope: !1732, file: !1732, line: 1135, type: !1982, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1985)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1984}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!1985 = !{!1980}
!1986 = !DILocation(line: 0, scope: !1981, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 230, column: 18, scope: !294, inlinedAt: !1970)
!1988 = !DILocalVariable(name: "__dest", arg: 1, scope: !1989, file: !1741, line: 57, type: !37)
!1989 = distinct !DISubprogram(name: "memset", scope: !1741, file: !1741, line: 57, type: !1742, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !1990)
!1990 = !{!1988, !1991, !1992}
!1991 = !DILocalVariable(name: "__ch", arg: 2, scope: !1989, file: !1741, line: 57, type: !38)
!1992 = !DILocalVariable(name: "__len", arg: 3, scope: !1989, file: !1741, line: 57, type: !40)
!1993 = !DILocation(line: 0, scope: !1989, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 1137, column: 3, scope: !1981, inlinedAt: !1987)
!1995 = !DILocation(line: 59, column: 10, scope: !1989, inlinedAt: !1994)
!1996 = !DILocation(line: 231, column: 7, scope: !1997, inlinedAt: !1970)
!1997 = distinct !DILexicalBlock(scope: !294, file: !244, line: 231, column: 7)
!1998 = !DILocation(line: 231, column: 40, scope: !1997, inlinedAt: !1970)
!1999 = !DILocation(line: 231, column: 45, scope: !1997, inlinedAt: !1970)
!2000 = !DILocation(line: 235, column: 1, scope: !294, inlinedAt: !1970)
!2001 = !DILocation(line: 0, scope: !294, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 358, column: 27, scope: !1971)
!2003 = !DILocation(line: 199, column: 29, scope: !294, inlinedAt: !2002)
!2004 = !DILocation(line: 201, column: 19, scope: !1975, inlinedAt: !2002)
!2005 = !DILocation(line: 201, column: 7, scope: !294, inlinedAt: !2002)
!2006 = !DILocation(line: 229, column: 3, scope: !294, inlinedAt: !2002)
!2007 = !DILocation(line: 230, column: 3, scope: !294, inlinedAt: !2002)
!2008 = !DILocation(line: 230, column: 13, scope: !294, inlinedAt: !2002)
!2009 = !DILocation(line: 0, scope: !1981, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 230, column: 18, scope: !294, inlinedAt: !2002)
!2011 = !DILocation(line: 0, scope: !1989, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 1137, column: 3, scope: !1981, inlinedAt: !2010)
!2013 = !DILocation(line: 59, column: 10, scope: !1989, inlinedAt: !2012)
!2014 = !DILocation(line: 231, column: 7, scope: !1997, inlinedAt: !2002)
!2015 = !DILocation(line: 231, column: 40, scope: !1997, inlinedAt: !2002)
!2016 = !DILocation(line: 231, column: 45, scope: !1997, inlinedAt: !2002)
!2017 = !DILocation(line: 235, column: 1, scope: !294, inlinedAt: !2002)
!2018 = !DILocation(line: 360, column: 13, scope: !1914)
!2019 = !DILocation(line: 0, scope: !1912)
!2020 = !DILocation(line: 361, column: 45, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1912, file: !244, line: 361, column: 11)
!2022 = !DILocation(line: 361, column: 11, scope: !1912)
!2023 = !DILocation(line: 362, column: 13, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !244, line: 362, column: 13)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !244, line: 362, column: 13)
!2026 = !DILocation(line: 362, column: 13, scope: !2025)
!2027 = !DILocation(line: 361, column: 52, scope: !2021)
!2028 = distinct !{!2028, !2022, !2029, !744}
!2029 = !DILocation(line: 362, column: 13, scope: !1912)
!2030 = !DILocation(line: 260, column: 10, scope: !1886)
!2031 = !DILocation(line: 365, column: 28, scope: !1914)
!2032 = !DILocation(line: 367, column: 7, scope: !1915)
!2033 = !DILocation(line: 370, column: 7, scope: !1915)
!2034 = !DILocation(line: 376, column: 11, scope: !1915)
!2035 = !DILocation(line: 381, column: 11, scope: !1915)
!2036 = !DILocation(line: 382, column: 9, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !244, line: 382, column: 9)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !244, line: 382, column: 9)
!2039 = distinct !DILexicalBlock(scope: !1915, file: !244, line: 381, column: 11)
!2040 = !DILocation(line: 382, column: 9, scope: !2038)
!2041 = !DILocation(line: 389, column: 7, scope: !1915)
!2042 = !DILocation(line: 392, column: 7, scope: !1915)
!2043 = !DILocation(line: 0, scope: !1917)
!2044 = !DILocation(line: 395, column: 8, scope: !1917)
!2045 = !DILocation(line: 395, column: 34, scope: !1920)
!2046 = !DILocation(line: 395, column: 26, scope: !1920)
!2047 = !DILocation(line: 395, column: 48, scope: !1920)
!2048 = !DILocation(line: 395, column: 55, scope: !1920)
!2049 = !DILocation(line: 395, column: 3, scope: !1917)
!2050 = !DILocation(line: 395, column: 67, scope: !1920)
!2051 = !DILocation(line: 0, scope: !1919)
!2052 = !DILocation(line: 402, column: 11, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1919, file: !244, line: 401, column: 11)
!2054 = !DILocation(line: 404, column: 17, scope: !2053)
!2055 = !DILocation(line: 405, column: 39, scope: !2053)
!2056 = !DILocation(line: 409, column: 32, scope: !2053)
!2057 = !DILocation(line: 405, column: 19, scope: !2053)
!2058 = !DILocation(line: 405, column: 15, scope: !2053)
!2059 = !DILocation(line: 410, column: 11, scope: !2053)
!2060 = !DILocation(line: 410, column: 25, scope: !2053)
!2061 = !DILocalVariable(name: "__s1", arg: 1, scope: !2062, file: !728, line: 974, type: !896)
!2062 = distinct !DISubprogram(name: "memeq", scope: !728, file: !728, line: 974, type: !1703, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2063)
!2063 = !{!2061, !2064, !2065}
!2064 = !DILocalVariable(name: "__s2", arg: 2, scope: !2062, file: !728, line: 974, type: !896)
!2065 = !DILocalVariable(name: "__n", arg: 3, scope: !2062, file: !728, line: 974, type: !40)
!2066 = !DILocation(line: 0, scope: !2062, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 410, column: 14, scope: !2053)
!2068 = !DILocation(line: 976, column: 11, scope: !2062, inlinedAt: !2067)
!2069 = !DILocation(line: 976, column: 10, scope: !2062, inlinedAt: !2067)
!2070 = !DILocation(line: 401, column: 11, scope: !1919)
!2071 = !DILocation(line: 417, column: 25, scope: !1919)
!2072 = !DILocation(line: 418, column: 7, scope: !1919)
!2073 = !DILocation(line: 421, column: 15, scope: !1926)
!2074 = !DILocation(line: 423, column: 15, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !244, line: 423, column: 15)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !244, line: 422, column: 13)
!2077 = distinct !DILexicalBlock(scope: !1926, file: !244, line: 421, column: 15)
!2078 = !DILocation(line: 423, column: 15, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !244, line: 423, column: 15)
!2080 = !DILocation(line: 423, column: 15, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !244, line: 423, column: 15)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !244, line: 423, column: 15)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !244, line: 423, column: 15)
!2084 = !DILocation(line: 423, column: 15, scope: !2082)
!2085 = !DILocation(line: 423, column: 15, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !244, line: 423, column: 15)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !244, line: 423, column: 15)
!2088 = !DILocation(line: 423, column: 15, scope: !2087)
!2089 = !DILocation(line: 423, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !244, line: 423, column: 15)
!2091 = distinct !DILexicalBlock(scope: !2083, file: !244, line: 423, column: 15)
!2092 = !DILocation(line: 423, column: 15, scope: !2091)
!2093 = !DILocation(line: 423, column: 15, scope: !2083)
!2094 = !DILocation(line: 423, column: 15, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !244, line: 423, column: 15)
!2096 = distinct !DILexicalBlock(scope: !2075, file: !244, line: 423, column: 15)
!2097 = !DILocation(line: 423, column: 15, scope: !2096)
!2098 = !DILocation(line: 431, column: 19, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2076, file: !244, line: 430, column: 19)
!2100 = !DILocation(line: 431, column: 24, scope: !2099)
!2101 = !DILocation(line: 431, column: 28, scope: !2099)
!2102 = !DILocation(line: 431, column: 38, scope: !2099)
!2103 = !DILocation(line: 431, column: 48, scope: !2099)
!2104 = !DILocation(line: 431, column: 59, scope: !2099)
!2105 = !DILocation(line: 433, column: 19, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !244, line: 433, column: 19)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !244, line: 433, column: 19)
!2108 = distinct !DILexicalBlock(scope: !2099, file: !244, line: 432, column: 17)
!2109 = !DILocation(line: 433, column: 19, scope: !2107)
!2110 = !DILocation(line: 434, column: 19, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !244, line: 434, column: 19)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !244, line: 434, column: 19)
!2113 = !DILocation(line: 434, column: 19, scope: !2112)
!2114 = !DILocation(line: 435, column: 17, scope: !2108)
!2115 = !DILocation(line: 442, column: 20, scope: !2077)
!2116 = !DILocation(line: 447, column: 11, scope: !1926)
!2117 = !DILocation(line: 450, column: 19, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1926, file: !244, line: 448, column: 13)
!2119 = !DILocation(line: 456, column: 19, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2118, file: !244, line: 455, column: 19)
!2121 = !DILocation(line: 456, column: 24, scope: !2120)
!2122 = !DILocation(line: 456, column: 28, scope: !2120)
!2123 = !DILocation(line: 456, column: 38, scope: !2120)
!2124 = !DILocation(line: 456, column: 47, scope: !2120)
!2125 = !DILocation(line: 456, column: 41, scope: !2120)
!2126 = !DILocation(line: 456, column: 52, scope: !2120)
!2127 = !DILocation(line: 455, column: 19, scope: !2118)
!2128 = !DILocation(line: 457, column: 25, scope: !2120)
!2129 = !DILocation(line: 457, column: 17, scope: !2120)
!2130 = !DILocation(line: 464, column: 25, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2120, file: !244, line: 458, column: 19)
!2132 = !DILocation(line: 468, column: 21, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !244, line: 468, column: 21)
!2134 = distinct !DILexicalBlock(scope: !2131, file: !244, line: 468, column: 21)
!2135 = !DILocation(line: 468, column: 21, scope: !2134)
!2136 = !DILocation(line: 469, column: 21, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !244, line: 469, column: 21)
!2138 = distinct !DILexicalBlock(scope: !2131, file: !244, line: 469, column: 21)
!2139 = !DILocation(line: 469, column: 21, scope: !2138)
!2140 = !DILocation(line: 470, column: 21, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !244, line: 470, column: 21)
!2142 = distinct !DILexicalBlock(scope: !2131, file: !244, line: 470, column: 21)
!2143 = !DILocation(line: 470, column: 21, scope: !2142)
!2144 = !DILocation(line: 471, column: 21, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !244, line: 471, column: 21)
!2146 = distinct !DILexicalBlock(scope: !2131, file: !244, line: 471, column: 21)
!2147 = !DILocation(line: 471, column: 21, scope: !2146)
!2148 = !DILocation(line: 472, column: 21, scope: !2131)
!2149 = !DILocation(line: 482, column: 33, scope: !1949)
!2150 = !DILocation(line: 483, column: 33, scope: !1949)
!2151 = !DILocation(line: 485, column: 33, scope: !1949)
!2152 = !DILocation(line: 486, column: 33, scope: !1949)
!2153 = !DILocation(line: 487, column: 33, scope: !1949)
!2154 = !DILocation(line: 490, column: 17, scope: !1949)
!2155 = !DILocation(line: 492, column: 21, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !244, line: 491, column: 15)
!2157 = distinct !DILexicalBlock(scope: !1949, file: !244, line: 490, column: 17)
!2158 = !DILocation(line: 499, column: 35, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1949, file: !244, line: 499, column: 17)
!2160 = !DILocation(line: 499, column: 57, scope: !2159)
!2161 = !DILocation(line: 0, scope: !1949)
!2162 = !DILocation(line: 502, column: 11, scope: !1949)
!2163 = !DILocation(line: 504, column: 17, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1949, file: !244, line: 503, column: 17)
!2165 = !DILocation(line: 507, column: 11, scope: !1949)
!2166 = !DILocation(line: 508, column: 17, scope: !1949)
!2167 = !DILocation(line: 517, column: 15, scope: !1926)
!2168 = !DILocation(line: 517, column: 40, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !1926, file: !244, line: 517, column: 15)
!2170 = !DILocation(line: 517, column: 47, scope: !2169)
!2171 = !DILocation(line: 517, column: 18, scope: !2169)
!2172 = !DILocation(line: 521, column: 17, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !1926, file: !244, line: 521, column: 15)
!2174 = !DILocation(line: 521, column: 15, scope: !1926)
!2175 = !DILocation(line: 525, column: 11, scope: !1926)
!2176 = !DILocation(line: 537, column: 15, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !1926, file: !244, line: 536, column: 15)
!2178 = !DILocation(line: 536, column: 15, scope: !1926)
!2179 = !DILocation(line: 544, column: 15, scope: !1926)
!2180 = !DILocation(line: 546, column: 19, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !244, line: 545, column: 13)
!2182 = distinct !DILexicalBlock(scope: !1926, file: !244, line: 544, column: 15)
!2183 = !DILocation(line: 549, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2181, file: !244, line: 549, column: 19)
!2185 = !DILocation(line: 549, column: 30, scope: !2184)
!2186 = !DILocation(line: 558, column: 15, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !244, line: 558, column: 15)
!2188 = distinct !DILexicalBlock(scope: !2181, file: !244, line: 558, column: 15)
!2189 = !DILocation(line: 558, column: 15, scope: !2188)
!2190 = !DILocation(line: 559, column: 15, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !244, line: 559, column: 15)
!2192 = distinct !DILexicalBlock(scope: !2181, file: !244, line: 559, column: 15)
!2193 = !DILocation(line: 559, column: 15, scope: !2192)
!2194 = !DILocation(line: 560, column: 15, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !244, line: 560, column: 15)
!2196 = distinct !DILexicalBlock(scope: !2181, file: !244, line: 560, column: 15)
!2197 = !DILocation(line: 560, column: 15, scope: !2196)
!2198 = !DILocation(line: 562, column: 13, scope: !2181)
!2199 = !DILocation(line: 602, column: 17, scope: !1925)
!2200 = !DILocation(line: 0, scope: !1925)
!2201 = !DILocation(line: 605, column: 29, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !1930, file: !244, line: 603, column: 15)
!2203 = !DILocation(line: 605, column: 41, scope: !2202)
!2204 = !DILocation(line: 670, column: 23, scope: !1946)
!2205 = !DILocation(line: 609, column: 17, scope: !1929)
!2206 = !DILocation(line: 609, column: 27, scope: !1929)
!2207 = !DILocation(line: 0, scope: !1981, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 609, column: 32, scope: !1929)
!2209 = !DILocation(line: 0, scope: !1989, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 1137, column: 3, scope: !1981, inlinedAt: !2208)
!2211 = !DILocation(line: 59, column: 10, scope: !1989, inlinedAt: !2210)
!2212 = !DILocation(line: 613, column: 29, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1929, file: !244, line: 613, column: 21)
!2214 = !DILocation(line: 613, column: 21, scope: !1929)
!2215 = !DILocation(line: 614, column: 29, scope: !2213)
!2216 = !DILocation(line: 614, column: 19, scope: !2213)
!2217 = !DILocation(line: 618, column: 21, scope: !1932)
!2218 = !DILocation(line: 620, column: 54, scope: !1932)
!2219 = !DILocation(line: 0, scope: !1932)
!2220 = !DILocation(line: 619, column: 36, scope: !1932)
!2221 = !DILocation(line: 621, column: 25, scope: !1932)
!2222 = !DILocation(line: 631, column: 38, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !1941, file: !244, line: 629, column: 23)
!2224 = !DILocation(line: 631, column: 48, scope: !2223)
!2225 = !DILocation(line: 665, column: 19, scope: !1933)
!2226 = !DILocation(line: 666, column: 15, scope: !1930)
!2227 = !DILocation(line: 626, column: 25, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1942, file: !244, line: 624, column: 23)
!2229 = !DILocation(line: 631, column: 51, scope: !2223)
!2230 = !DILocation(line: 631, column: 25, scope: !2223)
!2231 = !DILocation(line: 632, column: 28, scope: !2223)
!2232 = !DILocation(line: 631, column: 34, scope: !2223)
!2233 = distinct !{!2233, !2230, !2231, !744}
!2234 = !DILocation(line: 646, column: 29, scope: !1939)
!2235 = !DILocation(line: 0, scope: !1937)
!2236 = !DILocation(line: 649, column: 49, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !1937, file: !244, line: 648, column: 29)
!2238 = !DILocation(line: 649, column: 39, scope: !2237)
!2239 = !DILocation(line: 649, column: 31, scope: !2237)
!2240 = !DILocation(line: 648, column: 60, scope: !2237)
!2241 = !DILocation(line: 648, column: 50, scope: !2237)
!2242 = !DILocation(line: 648, column: 29, scope: !1937)
!2243 = distinct !{!2243, !2242, !2244, !744}
!2244 = !DILocation(line: 654, column: 33, scope: !1937)
!2245 = !DILocation(line: 657, column: 43, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !1940, file: !244, line: 657, column: 29)
!2247 = !DILocalVariable(name: "wc", arg: 1, scope: !2248, file: !2249, line: 865, type: !2252)
!2248 = distinct !DISubprogram(name: "c32isprint", scope: !2249, file: !2249, line: 865, type: !2250, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2254)
!2249 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!38, !2252}
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2253, line: 20, baseType: !7)
!2253 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2254 = !{!2247}
!2255 = !DILocation(line: 0, scope: !2248, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 657, column: 31, scope: !2246)
!2257 = !DILocation(line: 871, column: 10, scope: !2248, inlinedAt: !2256)
!2258 = !DILocation(line: 657, column: 31, scope: !2246)
!2259 = !DILocation(line: 664, column: 23, scope: !1932)
!2260 = !DILocation(line: 753, column: 2, scope: !1886)
!2261 = !DILocation(line: 756, column: 51, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !1886, file: !244, line: 756, column: 7)
!2263 = !DILocation(line: 670, column: 19, scope: !1946)
!2264 = !DILocation(line: 670, column: 45, scope: !1946)
!2265 = !DILocation(line: 674, column: 33, scope: !1945)
!2266 = !DILocation(line: 0, scope: !1945)
!2267 = !DILocation(line: 676, column: 17, scope: !1945)
!2268 = !DILocation(line: 398, column: 12, scope: !1919)
!2269 = !DILocation(line: 678, column: 43, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !244, line: 678, column: 25)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !244, line: 677, column: 19)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !244, line: 676, column: 17)
!2273 = distinct !DILexicalBlock(scope: !1945, file: !244, line: 676, column: 17)
!2274 = !DILocation(line: 680, column: 25, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !244, line: 680, column: 25)
!2276 = distinct !DILexicalBlock(scope: !2270, file: !244, line: 679, column: 23)
!2277 = !DILocation(line: 680, column: 25, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2275, file: !244, line: 680, column: 25)
!2279 = !DILocation(line: 680, column: 25, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !244, line: 680, column: 25)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !244, line: 680, column: 25)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !244, line: 680, column: 25)
!2283 = !DILocation(line: 680, column: 25, scope: !2281)
!2284 = !DILocation(line: 680, column: 25, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !244, line: 680, column: 25)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !244, line: 680, column: 25)
!2287 = !DILocation(line: 680, column: 25, scope: !2286)
!2288 = !DILocation(line: 680, column: 25, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !244, line: 680, column: 25)
!2290 = distinct !DILexicalBlock(scope: !2282, file: !244, line: 680, column: 25)
!2291 = !DILocation(line: 680, column: 25, scope: !2290)
!2292 = !DILocation(line: 680, column: 25, scope: !2282)
!2293 = !DILocation(line: 680, column: 25, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !244, line: 680, column: 25)
!2295 = distinct !DILexicalBlock(scope: !2275, file: !244, line: 680, column: 25)
!2296 = !DILocation(line: 680, column: 25, scope: !2295)
!2297 = !DILocation(line: 681, column: 25, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !244, line: 681, column: 25)
!2299 = distinct !DILexicalBlock(scope: !2276, file: !244, line: 681, column: 25)
!2300 = !DILocation(line: 681, column: 25, scope: !2299)
!2301 = !DILocation(line: 682, column: 25, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !244, line: 682, column: 25)
!2303 = distinct !DILexicalBlock(scope: !2276, file: !244, line: 682, column: 25)
!2304 = !DILocation(line: 682, column: 25, scope: !2303)
!2305 = !DILocation(line: 683, column: 38, scope: !2276)
!2306 = !DILocation(line: 683, column: 33, scope: !2276)
!2307 = !DILocation(line: 684, column: 23, scope: !2276)
!2308 = !DILocation(line: 685, column: 30, scope: !2270)
!2309 = !DILocation(line: 687, column: 25, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !244, line: 687, column: 25)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !244, line: 687, column: 25)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !244, line: 686, column: 23)
!2313 = distinct !DILexicalBlock(scope: !2270, file: !244, line: 685, column: 30)
!2314 = !DILocation(line: 687, column: 25, scope: !2311)
!2315 = !DILocation(line: 689, column: 23, scope: !2312)
!2316 = !DILocation(line: 690, column: 35, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2271, file: !244, line: 690, column: 25)
!2318 = !DILocation(line: 690, column: 30, scope: !2317)
!2319 = !DILocation(line: 690, column: 25, scope: !2271)
!2320 = !DILocation(line: 692, column: 21, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !244, line: 692, column: 21)
!2322 = distinct !DILexicalBlock(scope: !2271, file: !244, line: 692, column: 21)
!2323 = !DILocation(line: 692, column: 21, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !244, line: 692, column: 21)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !244, line: 692, column: 21)
!2326 = distinct !DILexicalBlock(scope: !2321, file: !244, line: 692, column: 21)
!2327 = !DILocation(line: 692, column: 21, scope: !2325)
!2328 = !DILocation(line: 692, column: 21, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !244, line: 692, column: 21)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !244, line: 692, column: 21)
!2331 = !DILocation(line: 692, column: 21, scope: !2330)
!2332 = !DILocation(line: 692, column: 21, scope: !2326)
!2333 = !DILocation(line: 0, scope: !2271)
!2334 = !DILocation(line: 693, column: 21, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !244, line: 693, column: 21)
!2336 = distinct !DILexicalBlock(scope: !2271, file: !244, line: 693, column: 21)
!2337 = !DILocation(line: 693, column: 21, scope: !2336)
!2338 = !DILocation(line: 694, column: 25, scope: !2271)
!2339 = !DILocation(line: 676, column: 17, scope: !2272)
!2340 = distinct !{!2340, !2341, !2342}
!2341 = !DILocation(line: 676, column: 17, scope: !2273)
!2342 = !DILocation(line: 695, column: 19, scope: !2273)
!2343 = !DILocation(line: 409, column: 30, scope: !2053)
!2344 = !DILocation(line: 702, column: 34, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !1919, file: !244, line: 702, column: 11)
!2346 = !DILocation(line: 704, column: 14, scope: !2345)
!2347 = !DILocation(line: 705, column: 14, scope: !2345)
!2348 = !DILocation(line: 705, column: 35, scope: !2345)
!2349 = !DILocation(line: 705, column: 17, scope: !2345)
!2350 = !DILocation(line: 705, column: 47, scope: !2345)
!2351 = !DILocation(line: 705, column: 65, scope: !2345)
!2352 = !DILocation(line: 706, column: 11, scope: !2345)
!2353 = !DILocation(line: 702, column: 11, scope: !1919)
!2354 = !DILocation(line: 395, column: 15, scope: !1917)
!2355 = !DILocation(line: 709, column: 5, scope: !1919)
!2356 = !DILocation(line: 710, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !1919, file: !244, line: 710, column: 7)
!2358 = !DILocation(line: 710, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2357, file: !244, line: 710, column: 7)
!2360 = !DILocation(line: 710, column: 7, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !244, line: 710, column: 7)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !244, line: 710, column: 7)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !244, line: 710, column: 7)
!2364 = !DILocation(line: 710, column: 7, scope: !2362)
!2365 = !DILocation(line: 710, column: 7, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !244, line: 710, column: 7)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !244, line: 710, column: 7)
!2368 = !DILocation(line: 710, column: 7, scope: !2367)
!2369 = !DILocation(line: 710, column: 7, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !244, line: 710, column: 7)
!2371 = distinct !DILexicalBlock(scope: !2363, file: !244, line: 710, column: 7)
!2372 = !DILocation(line: 710, column: 7, scope: !2371)
!2373 = !DILocation(line: 710, column: 7, scope: !2363)
!2374 = !DILocation(line: 710, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !244, line: 710, column: 7)
!2376 = distinct !DILexicalBlock(scope: !2357, file: !244, line: 710, column: 7)
!2377 = !DILocation(line: 710, column: 7, scope: !2376)
!2378 = !DILocation(line: 712, column: 5, scope: !1919)
!2379 = !DILocation(line: 713, column: 7, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !244, line: 713, column: 7)
!2381 = distinct !DILexicalBlock(scope: !1919, file: !244, line: 713, column: 7)
!2382 = !DILocation(line: 417, column: 21, scope: !1919)
!2383 = !DILocation(line: 713, column: 7, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !244, line: 713, column: 7)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !244, line: 713, column: 7)
!2386 = distinct !DILexicalBlock(scope: !2380, file: !244, line: 713, column: 7)
!2387 = !DILocation(line: 713, column: 7, scope: !2385)
!2388 = !DILocation(line: 713, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !244, line: 713, column: 7)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !244, line: 713, column: 7)
!2391 = !DILocation(line: 713, column: 7, scope: !2390)
!2392 = !DILocation(line: 713, column: 7, scope: !2386)
!2393 = !DILocation(line: 714, column: 7, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !244, line: 714, column: 7)
!2395 = distinct !DILexicalBlock(scope: !1919, file: !244, line: 714, column: 7)
!2396 = !DILocation(line: 714, column: 7, scope: !2395)
!2397 = !DILocation(line: 716, column: 11, scope: !1919)
!2398 = !DILocation(line: 718, column: 5, scope: !1920)
!2399 = !DILocation(line: 395, column: 82, scope: !1920)
!2400 = !DILocation(line: 395, column: 3, scope: !1920)
!2401 = distinct !{!2401, !2049, !2402, !744}
!2402 = !DILocation(line: 718, column: 5, scope: !1917)
!2403 = !DILocation(line: 720, column: 11, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !1886, file: !244, line: 720, column: 7)
!2405 = !DILocation(line: 720, column: 16, scope: !2404)
!2406 = !DILocation(line: 728, column: 51, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !1886, file: !244, line: 728, column: 7)
!2408 = !DILocation(line: 731, column: 11, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2407, file: !244, line: 730, column: 5)
!2410 = !DILocation(line: 732, column: 16, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2409, file: !244, line: 731, column: 11)
!2412 = !DILocation(line: 732, column: 9, scope: !2411)
!2413 = !DILocation(line: 736, column: 18, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2411, file: !244, line: 736, column: 16)
!2415 = !DILocation(line: 736, column: 29, scope: !2414)
!2416 = !DILocation(line: 745, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !1886, file: !244, line: 745, column: 7)
!2418 = !DILocation(line: 745, column: 20, scope: !2417)
!2419 = !DILocation(line: 746, column: 12, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !244, line: 746, column: 5)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !244, line: 746, column: 5)
!2422 = !DILocation(line: 746, column: 5, scope: !2421)
!2423 = !DILocation(line: 747, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !244, line: 747, column: 7)
!2425 = distinct !DILexicalBlock(scope: !2420, file: !244, line: 747, column: 7)
!2426 = !DILocation(line: 747, column: 7, scope: !2425)
!2427 = !DILocation(line: 746, column: 39, scope: !2420)
!2428 = distinct !{!2428, !2422, !2429, !744}
!2429 = !DILocation(line: 747, column: 7, scope: !2421)
!2430 = !DILocation(line: 749, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !1886, file: !244, line: 749, column: 7)
!2432 = !DILocation(line: 749, column: 7, scope: !1886)
!2433 = !DILocation(line: 750, column: 5, scope: !2431)
!2434 = !DILocation(line: 750, column: 17, scope: !2431)
!2435 = !DILocation(line: 756, column: 21, scope: !2262)
!2436 = !DILocation(line: 760, column: 42, scope: !1886)
!2437 = !DILocation(line: 758, column: 10, scope: !1886)
!2438 = !DILocation(line: 758, column: 3, scope: !1886)
!2439 = !DILocation(line: 762, column: 1, scope: !1886)
!2440 = !DISubprogram(name: "iswprint", scope: !2441, file: !2441, line: 120, type: !2250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!2441 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2442 = distinct !DISubprogram(name: "quotearg_alloc", scope: !244, file: !244, line: 788, type: !2443, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!35, !43, !40, !1778}
!2445 = !{!2446, !2447, !2448}
!2446 = !DILocalVariable(name: "arg", arg: 1, scope: !2442, file: !244, line: 788, type: !43)
!2447 = !DILocalVariable(name: "argsize", arg: 2, scope: !2442, file: !244, line: 788, type: !40)
!2448 = !DILocalVariable(name: "o", arg: 3, scope: !2442, file: !244, line: 789, type: !1778)
!2449 = !DILocation(line: 0, scope: !2442)
!2450 = !DILocalVariable(name: "arg", arg: 1, scope: !2451, file: !244, line: 801, type: !43)
!2451 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !244, file: !244, line: 801, type: !2452, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!35, !43, !40, !601, !1778}
!2454 = !{!2450, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2455 = !DILocalVariable(name: "argsize", arg: 2, scope: !2451, file: !244, line: 801, type: !40)
!2456 = !DILocalVariable(name: "size", arg: 3, scope: !2451, file: !244, line: 801, type: !601)
!2457 = !DILocalVariable(name: "o", arg: 4, scope: !2451, file: !244, line: 802, type: !1778)
!2458 = !DILocalVariable(name: "p", scope: !2451, file: !244, line: 804, type: !1778)
!2459 = !DILocalVariable(name: "saved_errno", scope: !2451, file: !244, line: 805, type: !38)
!2460 = !DILocalVariable(name: "flags", scope: !2451, file: !244, line: 807, type: !38)
!2461 = !DILocalVariable(name: "bufsize", scope: !2451, file: !244, line: 808, type: !40)
!2462 = !DILocalVariable(name: "buf", scope: !2451, file: !244, line: 812, type: !35)
!2463 = !DILocation(line: 0, scope: !2451, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 791, column: 10, scope: !2442)
!2465 = !DILocation(line: 804, column: 37, scope: !2451, inlinedAt: !2464)
!2466 = !DILocation(line: 805, column: 21, scope: !2451, inlinedAt: !2464)
!2467 = !DILocation(line: 807, column: 18, scope: !2451, inlinedAt: !2464)
!2468 = !DILocation(line: 807, column: 24, scope: !2451, inlinedAt: !2464)
!2469 = !DILocation(line: 808, column: 72, scope: !2451, inlinedAt: !2464)
!2470 = !DILocation(line: 809, column: 53, scope: !2451, inlinedAt: !2464)
!2471 = !DILocation(line: 810, column: 49, scope: !2451, inlinedAt: !2464)
!2472 = !DILocation(line: 811, column: 49, scope: !2451, inlinedAt: !2464)
!2473 = !DILocation(line: 808, column: 20, scope: !2451, inlinedAt: !2464)
!2474 = !DILocation(line: 811, column: 62, scope: !2451, inlinedAt: !2464)
!2475 = !DILocation(line: 812, column: 15, scope: !2451, inlinedAt: !2464)
!2476 = !DILocation(line: 813, column: 60, scope: !2451, inlinedAt: !2464)
!2477 = !DILocation(line: 815, column: 32, scope: !2451, inlinedAt: !2464)
!2478 = !DILocation(line: 815, column: 47, scope: !2451, inlinedAt: !2464)
!2479 = !DILocation(line: 813, column: 3, scope: !2451, inlinedAt: !2464)
!2480 = !DILocation(line: 816, column: 9, scope: !2451, inlinedAt: !2464)
!2481 = !DILocation(line: 791, column: 3, scope: !2442)
!2482 = !DILocation(line: 0, scope: !2451)
!2483 = !DILocation(line: 804, column: 37, scope: !2451)
!2484 = !DILocation(line: 805, column: 21, scope: !2451)
!2485 = !DILocation(line: 807, column: 18, scope: !2451)
!2486 = !DILocation(line: 807, column: 27, scope: !2451)
!2487 = !DILocation(line: 807, column: 24, scope: !2451)
!2488 = !DILocation(line: 808, column: 72, scope: !2451)
!2489 = !DILocation(line: 809, column: 53, scope: !2451)
!2490 = !DILocation(line: 810, column: 49, scope: !2451)
!2491 = !DILocation(line: 811, column: 49, scope: !2451)
!2492 = !DILocation(line: 808, column: 20, scope: !2451)
!2493 = !DILocation(line: 811, column: 62, scope: !2451)
!2494 = !DILocation(line: 812, column: 15, scope: !2451)
!2495 = !DILocation(line: 813, column: 60, scope: !2451)
!2496 = !DILocation(line: 815, column: 32, scope: !2451)
!2497 = !DILocation(line: 815, column: 47, scope: !2451)
!2498 = !DILocation(line: 813, column: 3, scope: !2451)
!2499 = !DILocation(line: 816, column: 9, scope: !2451)
!2500 = !DILocation(line: 817, column: 7, scope: !2451)
!2501 = !DILocation(line: 818, column: 11, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2451, file: !244, line: 817, column: 7)
!2503 = !DILocation(line: 818, column: 5, scope: !2502)
!2504 = !DILocation(line: 819, column: 3, scope: !2451)
!2505 = distinct !DISubprogram(name: "quotearg_free", scope: !244, file: !244, line: 837, type: !197, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2506)
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "sv", scope: !2505, file: !244, line: 839, type: !317)
!2508 = !DILocalVariable(name: "i", scope: !2509, file: !244, line: 840, type: !38)
!2509 = distinct !DILexicalBlock(scope: !2505, file: !244, line: 840, column: 3)
!2510 = !DILocation(line: 839, column: 24, scope: !2505)
!2511 = !DILocation(line: 0, scope: !2505)
!2512 = !DILocation(line: 0, scope: !2509)
!2513 = !DILocation(line: 840, column: 21, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2509, file: !244, line: 840, column: 3)
!2515 = !DILocation(line: 840, column: 3, scope: !2509)
!2516 = !DILocation(line: 842, column: 13, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2505, file: !244, line: 842, column: 7)
!2518 = !{!2519, !691, i64 8}
!2519 = !{!"slotvec", !1140, i64 0, !691, i64 8}
!2520 = !DILocation(line: 842, column: 17, scope: !2517)
!2521 = !DILocation(line: 842, column: 7, scope: !2505)
!2522 = !DILocation(line: 841, column: 17, scope: !2514)
!2523 = !DILocation(line: 841, column: 5, scope: !2514)
!2524 = !DILocation(line: 840, column: 32, scope: !2514)
!2525 = distinct !{!2525, !2515, !2526, !744}
!2526 = !DILocation(line: 841, column: 20, scope: !2509)
!2527 = !DILocation(line: 844, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2517, file: !244, line: 843, column: 5)
!2529 = !DILocation(line: 845, column: 21, scope: !2528)
!2530 = !{!2519, !1140, i64 0}
!2531 = !DILocation(line: 846, column: 20, scope: !2528)
!2532 = !DILocation(line: 847, column: 5, scope: !2528)
!2533 = !DILocation(line: 848, column: 10, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2505, file: !244, line: 848, column: 7)
!2535 = !DILocation(line: 848, column: 7, scope: !2505)
!2536 = !DILocation(line: 850, column: 13, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !244, line: 849, column: 5)
!2538 = !DILocation(line: 850, column: 7, scope: !2537)
!2539 = !DILocation(line: 851, column: 15, scope: !2537)
!2540 = !DILocation(line: 852, column: 5, scope: !2537)
!2541 = !DILocation(line: 853, column: 10, scope: !2505)
!2542 = !DILocation(line: 854, column: 1, scope: !2505)
!2543 = distinct !DISubprogram(name: "quotearg_n", scope: !244, file: !244, line: 919, type: !886, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2544)
!2544 = !{!2545, !2546}
!2545 = !DILocalVariable(name: "n", arg: 1, scope: !2543, file: !244, line: 919, type: !38)
!2546 = !DILocalVariable(name: "arg", arg: 2, scope: !2543, file: !244, line: 919, type: !43)
!2547 = !DILocation(line: 0, scope: !2543)
!2548 = !DILocation(line: 921, column: 10, scope: !2543)
!2549 = !DILocation(line: 921, column: 3, scope: !2543)
!2550 = distinct !DISubprogram(name: "quotearg_n_options", scope: !244, file: !244, line: 866, type: !2551, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!35, !38, !43, !40, !1778}
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2564, !2565, !2567, !2568, !2569}
!2554 = !DILocalVariable(name: "n", arg: 1, scope: !2550, file: !244, line: 866, type: !38)
!2555 = !DILocalVariable(name: "arg", arg: 2, scope: !2550, file: !244, line: 866, type: !43)
!2556 = !DILocalVariable(name: "argsize", arg: 3, scope: !2550, file: !244, line: 866, type: !40)
!2557 = !DILocalVariable(name: "options", arg: 4, scope: !2550, file: !244, line: 867, type: !1778)
!2558 = !DILocalVariable(name: "saved_errno", scope: !2550, file: !244, line: 869, type: !38)
!2559 = !DILocalVariable(name: "sv", scope: !2550, file: !244, line: 871, type: !317)
!2560 = !DILocalVariable(name: "nslots_max", scope: !2550, file: !244, line: 873, type: !38)
!2561 = !DILocalVariable(name: "preallocated", scope: !2562, file: !244, line: 879, type: !60)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !244, line: 878, column: 5)
!2563 = distinct !DILexicalBlock(scope: !2550, file: !244, line: 877, column: 7)
!2564 = !DILocalVariable(name: "new_nslots", scope: !2562, file: !244, line: 880, type: !614)
!2565 = !DILocalVariable(name: "size", scope: !2566, file: !244, line: 891, type: !40)
!2566 = distinct !DILexicalBlock(scope: !2550, file: !244, line: 890, column: 3)
!2567 = !DILocalVariable(name: "val", scope: !2566, file: !244, line: 892, type: !35)
!2568 = !DILocalVariable(name: "flags", scope: !2566, file: !244, line: 894, type: !38)
!2569 = !DILocalVariable(name: "qsize", scope: !2566, file: !244, line: 895, type: !40)
!2570 = !DILocation(line: 0, scope: !2550)
!2571 = !DILocation(line: 869, column: 21, scope: !2550)
!2572 = !DILocation(line: 871, column: 24, scope: !2550)
!2573 = !DILocation(line: 874, column: 17, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2550, file: !244, line: 874, column: 7)
!2575 = !DILocation(line: 875, column: 5, scope: !2574)
!2576 = !DILocation(line: 877, column: 7, scope: !2563)
!2577 = !DILocation(line: 877, column: 14, scope: !2563)
!2578 = !DILocation(line: 877, column: 7, scope: !2550)
!2579 = !DILocation(line: 879, column: 31, scope: !2562)
!2580 = !DILocation(line: 0, scope: !2562)
!2581 = !DILocation(line: 880, column: 7, scope: !2562)
!2582 = !DILocation(line: 880, column: 26, scope: !2562)
!2583 = !DILocation(line: 880, column: 13, scope: !2562)
!2584 = !DILocation(line: 882, column: 31, scope: !2562)
!2585 = !DILocation(line: 883, column: 33, scope: !2562)
!2586 = !DILocation(line: 883, column: 42, scope: !2562)
!2587 = !DILocation(line: 883, column: 31, scope: !2562)
!2588 = !DILocation(line: 882, column: 22, scope: !2562)
!2589 = !DILocation(line: 882, column: 15, scope: !2562)
!2590 = !DILocation(line: 884, column: 11, scope: !2562)
!2591 = !DILocation(line: 885, column: 15, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2562, file: !244, line: 884, column: 11)
!2593 = !{i64 0, i64 8, !1407, i64 8, i64 8, !690}
!2594 = !DILocation(line: 885, column: 9, scope: !2592)
!2595 = !DILocation(line: 886, column: 20, scope: !2562)
!2596 = !DILocation(line: 886, column: 18, scope: !2562)
!2597 = !DILocation(line: 886, column: 15, scope: !2562)
!2598 = !DILocation(line: 886, column: 32, scope: !2562)
!2599 = !DILocation(line: 886, column: 43, scope: !2562)
!2600 = !DILocation(line: 886, column: 53, scope: !2562)
!2601 = !DILocation(line: 0, scope: !1989, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 886, column: 7, scope: !2562)
!2603 = !DILocation(line: 59, column: 10, scope: !1989, inlinedAt: !2602)
!2604 = !DILocation(line: 887, column: 16, scope: !2562)
!2605 = !DILocation(line: 887, column: 14, scope: !2562)
!2606 = !DILocation(line: 888, column: 5, scope: !2563)
!2607 = !DILocation(line: 888, column: 5, scope: !2562)
!2608 = !DILocation(line: 891, column: 19, scope: !2566)
!2609 = !DILocation(line: 891, column: 25, scope: !2566)
!2610 = !DILocation(line: 0, scope: !2566)
!2611 = !DILocation(line: 892, column: 23, scope: !2566)
!2612 = !DILocation(line: 894, column: 26, scope: !2566)
!2613 = !DILocation(line: 894, column: 32, scope: !2566)
!2614 = !DILocation(line: 896, column: 55, scope: !2566)
!2615 = !DILocation(line: 897, column: 46, scope: !2566)
!2616 = !DILocation(line: 898, column: 55, scope: !2566)
!2617 = !DILocation(line: 899, column: 55, scope: !2566)
!2618 = !DILocation(line: 895, column: 20, scope: !2566)
!2619 = !DILocation(line: 901, column: 14, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2566, file: !244, line: 901, column: 9)
!2621 = !DILocation(line: 901, column: 9, scope: !2566)
!2622 = !DILocation(line: 903, column: 35, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2620, file: !244, line: 902, column: 7)
!2624 = !DILocation(line: 903, column: 20, scope: !2623)
!2625 = !DILocation(line: 904, column: 17, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !244, line: 904, column: 13)
!2627 = !DILocation(line: 904, column: 13, scope: !2623)
!2628 = !DILocation(line: 905, column: 11, scope: !2626)
!2629 = !DILocation(line: 906, column: 27, scope: !2623)
!2630 = !DILocation(line: 906, column: 19, scope: !2623)
!2631 = !DILocation(line: 907, column: 69, scope: !2623)
!2632 = !DILocation(line: 909, column: 44, scope: !2623)
!2633 = !DILocation(line: 910, column: 44, scope: !2623)
!2634 = !DILocation(line: 907, column: 9, scope: !2623)
!2635 = !DILocation(line: 911, column: 7, scope: !2623)
!2636 = !DILocation(line: 913, column: 11, scope: !2566)
!2637 = !DILocation(line: 914, column: 5, scope: !2566)
!2638 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !244, file: !244, line: 925, type: !2639, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!35, !38, !43, !40}
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "n", arg: 1, scope: !2638, file: !244, line: 925, type: !38)
!2643 = !DILocalVariable(name: "arg", arg: 2, scope: !2638, file: !244, line: 925, type: !43)
!2644 = !DILocalVariable(name: "argsize", arg: 3, scope: !2638, file: !244, line: 925, type: !40)
!2645 = !DILocation(line: 0, scope: !2638)
!2646 = !DILocation(line: 927, column: 10, scope: !2638)
!2647 = !DILocation(line: 927, column: 3, scope: !2638)
!2648 = distinct !DISubprogram(name: "quotearg", scope: !244, file: !244, line: 931, type: !890, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2649)
!2649 = !{!2650}
!2650 = !DILocalVariable(name: "arg", arg: 1, scope: !2648, file: !244, line: 931, type: !43)
!2651 = !DILocation(line: 0, scope: !2648)
!2652 = !DILocation(line: 0, scope: !2543, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 933, column: 10, scope: !2648)
!2654 = !DILocation(line: 921, column: 10, scope: !2543, inlinedAt: !2653)
!2655 = !DILocation(line: 933, column: 3, scope: !2648)
!2656 = distinct !DISubprogram(name: "quotearg_mem", scope: !244, file: !244, line: 937, type: !2657, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!35, !43, !40}
!2659 = !{!2660, !2661}
!2660 = !DILocalVariable(name: "arg", arg: 1, scope: !2656, file: !244, line: 937, type: !43)
!2661 = !DILocalVariable(name: "argsize", arg: 2, scope: !2656, file: !244, line: 937, type: !40)
!2662 = !DILocation(line: 0, scope: !2656)
!2663 = !DILocation(line: 0, scope: !2638, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 939, column: 10, scope: !2656)
!2665 = !DILocation(line: 927, column: 10, scope: !2638, inlinedAt: !2664)
!2666 = !DILocation(line: 939, column: 3, scope: !2656)
!2667 = distinct !DISubprogram(name: "quotearg_n_style", scope: !244, file: !244, line: 943, type: !2668, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!35, !38, !246, !43}
!2670 = !{!2671, !2672, !2673, !2674}
!2671 = !DILocalVariable(name: "n", arg: 1, scope: !2667, file: !244, line: 943, type: !38)
!2672 = !DILocalVariable(name: "s", arg: 2, scope: !2667, file: !244, line: 943, type: !246)
!2673 = !DILocalVariable(name: "arg", arg: 3, scope: !2667, file: !244, line: 943, type: !43)
!2674 = !DILocalVariable(name: "o", scope: !2667, file: !244, line: 945, type: !1779)
!2675 = !DILocation(line: 0, scope: !2667)
!2676 = !DILocation(line: 945, column: 3, scope: !2667)
!2677 = !DILocation(line: 945, column: 32, scope: !2667)
!2678 = !{!2679}
!2679 = distinct !{!2679, !2680, !"quoting_options_from_style: argument 0"}
!2680 = distinct !{!2680, !"quoting_options_from_style"}
!2681 = !DILocation(line: 945, column: 36, scope: !2667)
!2682 = !DILocalVariable(name: "style", arg: 1, scope: !2683, file: !244, line: 183, type: !246)
!2683 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !244, file: !244, line: 183, type: !2684, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!275, !246}
!2686 = !{!2682, !2687}
!2687 = !DILocalVariable(name: "o", scope: !2683, file: !244, line: 185, type: !275)
!2688 = !DILocation(line: 0, scope: !2683, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 945, column: 36, scope: !2667)
!2690 = !DILocation(line: 185, column: 26, scope: !2683, inlinedAt: !2689)
!2691 = !DILocation(line: 186, column: 13, scope: !2692, inlinedAt: !2689)
!2692 = distinct !DILexicalBlock(scope: !2683, file: !244, line: 186, column: 7)
!2693 = !DILocation(line: 186, column: 7, scope: !2683, inlinedAt: !2689)
!2694 = !DILocation(line: 187, column: 5, scope: !2692, inlinedAt: !2689)
!2695 = !DILocation(line: 188, column: 5, scope: !2683, inlinedAt: !2689)
!2696 = !DILocation(line: 188, column: 11, scope: !2683, inlinedAt: !2689)
!2697 = !DILocation(line: 946, column: 10, scope: !2667)
!2698 = !DILocation(line: 947, column: 1, scope: !2667)
!2699 = !DILocation(line: 946, column: 3, scope: !2667)
!2700 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !244, file: !244, line: 950, type: !2701, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!35, !38, !246, !43, !40}
!2703 = !{!2704, !2705, !2706, !2707, !2708}
!2704 = !DILocalVariable(name: "n", arg: 1, scope: !2700, file: !244, line: 950, type: !38)
!2705 = !DILocalVariable(name: "s", arg: 2, scope: !2700, file: !244, line: 950, type: !246)
!2706 = !DILocalVariable(name: "arg", arg: 3, scope: !2700, file: !244, line: 951, type: !43)
!2707 = !DILocalVariable(name: "argsize", arg: 4, scope: !2700, file: !244, line: 951, type: !40)
!2708 = !DILocalVariable(name: "o", scope: !2700, file: !244, line: 953, type: !1779)
!2709 = !DILocation(line: 0, scope: !2700)
!2710 = !DILocation(line: 953, column: 3, scope: !2700)
!2711 = !DILocation(line: 953, column: 32, scope: !2700)
!2712 = !{!2713}
!2713 = distinct !{!2713, !2714, !"quoting_options_from_style: argument 0"}
!2714 = distinct !{!2714, !"quoting_options_from_style"}
!2715 = !DILocation(line: 953, column: 36, scope: !2700)
!2716 = !DILocation(line: 0, scope: !2683, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 953, column: 36, scope: !2700)
!2718 = !DILocation(line: 185, column: 26, scope: !2683, inlinedAt: !2717)
!2719 = !DILocation(line: 186, column: 13, scope: !2692, inlinedAt: !2717)
!2720 = !DILocation(line: 186, column: 7, scope: !2683, inlinedAt: !2717)
!2721 = !DILocation(line: 187, column: 5, scope: !2692, inlinedAt: !2717)
!2722 = !DILocation(line: 188, column: 5, scope: !2683, inlinedAt: !2717)
!2723 = !DILocation(line: 188, column: 11, scope: !2683, inlinedAt: !2717)
!2724 = !DILocation(line: 954, column: 10, scope: !2700)
!2725 = !DILocation(line: 955, column: 1, scope: !2700)
!2726 = !DILocation(line: 954, column: 3, scope: !2700)
!2727 = distinct !DISubprogram(name: "quotearg_style", scope: !244, file: !244, line: 958, type: !2728, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!35, !246, !43}
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "s", arg: 1, scope: !2727, file: !244, line: 958, type: !246)
!2732 = !DILocalVariable(name: "arg", arg: 2, scope: !2727, file: !244, line: 958, type: !43)
!2733 = !DILocation(line: 0, scope: !2727)
!2734 = !DILocation(line: 0, scope: !2667, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 960, column: 10, scope: !2727)
!2736 = !DILocation(line: 945, column: 3, scope: !2667, inlinedAt: !2735)
!2737 = !DILocation(line: 945, column: 32, scope: !2667, inlinedAt: !2735)
!2738 = !{!2739}
!2739 = distinct !{!2739, !2740, !"quoting_options_from_style: argument 0"}
!2740 = distinct !{!2740, !"quoting_options_from_style"}
!2741 = !DILocation(line: 945, column: 36, scope: !2667, inlinedAt: !2735)
!2742 = !DILocation(line: 0, scope: !2683, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 945, column: 36, scope: !2667, inlinedAt: !2735)
!2744 = !DILocation(line: 185, column: 26, scope: !2683, inlinedAt: !2743)
!2745 = !DILocation(line: 186, column: 13, scope: !2692, inlinedAt: !2743)
!2746 = !DILocation(line: 186, column: 7, scope: !2683, inlinedAt: !2743)
!2747 = !DILocation(line: 187, column: 5, scope: !2692, inlinedAt: !2743)
!2748 = !DILocation(line: 188, column: 5, scope: !2683, inlinedAt: !2743)
!2749 = !DILocation(line: 188, column: 11, scope: !2683, inlinedAt: !2743)
!2750 = !DILocation(line: 946, column: 10, scope: !2667, inlinedAt: !2735)
!2751 = !DILocation(line: 947, column: 1, scope: !2667, inlinedAt: !2735)
!2752 = !DILocation(line: 960, column: 3, scope: !2727)
!2753 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !244, file: !244, line: 964, type: !2754, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!35, !246, !43, !40}
!2756 = !{!2757, !2758, !2759}
!2757 = !DILocalVariable(name: "s", arg: 1, scope: !2753, file: !244, line: 964, type: !246)
!2758 = !DILocalVariable(name: "arg", arg: 2, scope: !2753, file: !244, line: 964, type: !43)
!2759 = !DILocalVariable(name: "argsize", arg: 3, scope: !2753, file: !244, line: 964, type: !40)
!2760 = !DILocation(line: 0, scope: !2753)
!2761 = !DILocation(line: 0, scope: !2700, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 966, column: 10, scope: !2753)
!2763 = !DILocation(line: 953, column: 3, scope: !2700, inlinedAt: !2762)
!2764 = !DILocation(line: 953, column: 32, scope: !2700, inlinedAt: !2762)
!2765 = !{!2766}
!2766 = distinct !{!2766, !2767, !"quoting_options_from_style: argument 0"}
!2767 = distinct !{!2767, !"quoting_options_from_style"}
!2768 = !DILocation(line: 953, column: 36, scope: !2700, inlinedAt: !2762)
!2769 = !DILocation(line: 0, scope: !2683, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 953, column: 36, scope: !2700, inlinedAt: !2762)
!2771 = !DILocation(line: 185, column: 26, scope: !2683, inlinedAt: !2770)
!2772 = !DILocation(line: 186, column: 13, scope: !2692, inlinedAt: !2770)
!2773 = !DILocation(line: 186, column: 7, scope: !2683, inlinedAt: !2770)
!2774 = !DILocation(line: 187, column: 5, scope: !2692, inlinedAt: !2770)
!2775 = !DILocation(line: 188, column: 5, scope: !2683, inlinedAt: !2770)
!2776 = !DILocation(line: 188, column: 11, scope: !2683, inlinedAt: !2770)
!2777 = !DILocation(line: 954, column: 10, scope: !2700, inlinedAt: !2762)
!2778 = !DILocation(line: 955, column: 1, scope: !2700, inlinedAt: !2762)
!2779 = !DILocation(line: 966, column: 3, scope: !2753)
!2780 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !244, file: !244, line: 970, type: !2781, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!35, !43, !40, !36}
!2783 = !{!2784, !2785, !2786, !2787}
!2784 = !DILocalVariable(name: "arg", arg: 1, scope: !2780, file: !244, line: 970, type: !43)
!2785 = !DILocalVariable(name: "argsize", arg: 2, scope: !2780, file: !244, line: 970, type: !40)
!2786 = !DILocalVariable(name: "ch", arg: 3, scope: !2780, file: !244, line: 970, type: !36)
!2787 = !DILocalVariable(name: "options", scope: !2780, file: !244, line: 972, type: !275)
!2788 = !DILocation(line: 0, scope: !2780)
!2789 = !DILocation(line: 972, column: 3, scope: !2780)
!2790 = !DILocation(line: 972, column: 26, scope: !2780)
!2791 = !DILocation(line: 973, column: 13, scope: !2780)
!2792 = !{i64 0, i64 4, !787, i64 4, i64 4, !778, i64 8, i64 32, !787, i64 40, i64 8, !690, i64 48, i64 8, !690}
!2793 = !DILocation(line: 0, scope: !1799, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 974, column: 3, scope: !2780)
!2795 = !DILocation(line: 147, column: 62, scope: !1799, inlinedAt: !2794)
!2796 = !DILocation(line: 147, column: 57, scope: !1799, inlinedAt: !2794)
!2797 = !DILocation(line: 148, column: 15, scope: !1799, inlinedAt: !2794)
!2798 = !DILocation(line: 149, column: 21, scope: !1799, inlinedAt: !2794)
!2799 = !DILocation(line: 149, column: 24, scope: !1799, inlinedAt: !2794)
!2800 = !DILocation(line: 149, column: 34, scope: !1799, inlinedAt: !2794)
!2801 = !DILocation(line: 150, column: 19, scope: !1799, inlinedAt: !2794)
!2802 = !DILocation(line: 150, column: 24, scope: !1799, inlinedAt: !2794)
!2803 = !DILocation(line: 150, column: 6, scope: !1799, inlinedAt: !2794)
!2804 = !DILocation(line: 975, column: 10, scope: !2780)
!2805 = !DILocation(line: 976, column: 1, scope: !2780)
!2806 = !DILocation(line: 975, column: 3, scope: !2780)
!2807 = distinct !DISubprogram(name: "quotearg_char", scope: !244, file: !244, line: 979, type: !2808, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!35, !43, !36}
!2810 = !{!2811, !2812}
!2811 = !DILocalVariable(name: "arg", arg: 1, scope: !2807, file: !244, line: 979, type: !43)
!2812 = !DILocalVariable(name: "ch", arg: 2, scope: !2807, file: !244, line: 979, type: !36)
!2813 = !DILocation(line: 0, scope: !2807)
!2814 = !DILocation(line: 0, scope: !2780, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 981, column: 10, scope: !2807)
!2816 = !DILocation(line: 972, column: 3, scope: !2780, inlinedAt: !2815)
!2817 = !DILocation(line: 972, column: 26, scope: !2780, inlinedAt: !2815)
!2818 = !DILocation(line: 973, column: 13, scope: !2780, inlinedAt: !2815)
!2819 = !DILocation(line: 0, scope: !1799, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 974, column: 3, scope: !2780, inlinedAt: !2815)
!2821 = !DILocation(line: 147, column: 62, scope: !1799, inlinedAt: !2820)
!2822 = !DILocation(line: 147, column: 57, scope: !1799, inlinedAt: !2820)
!2823 = !DILocation(line: 148, column: 15, scope: !1799, inlinedAt: !2820)
!2824 = !DILocation(line: 149, column: 21, scope: !1799, inlinedAt: !2820)
!2825 = !DILocation(line: 149, column: 24, scope: !1799, inlinedAt: !2820)
!2826 = !DILocation(line: 149, column: 34, scope: !1799, inlinedAt: !2820)
!2827 = !DILocation(line: 150, column: 19, scope: !1799, inlinedAt: !2820)
!2828 = !DILocation(line: 150, column: 24, scope: !1799, inlinedAt: !2820)
!2829 = !DILocation(line: 150, column: 6, scope: !1799, inlinedAt: !2820)
!2830 = !DILocation(line: 975, column: 10, scope: !2780, inlinedAt: !2815)
!2831 = !DILocation(line: 976, column: 1, scope: !2780, inlinedAt: !2815)
!2832 = !DILocation(line: 981, column: 3, scope: !2807)
!2833 = distinct !DISubprogram(name: "quotearg_colon", scope: !244, file: !244, line: 985, type: !890, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2834)
!2834 = !{!2835}
!2835 = !DILocalVariable(name: "arg", arg: 1, scope: !2833, file: !244, line: 985, type: !43)
!2836 = !DILocation(line: 0, scope: !2833)
!2837 = !DILocation(line: 0, scope: !2807, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 987, column: 10, scope: !2833)
!2839 = !DILocation(line: 0, scope: !2780, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 981, column: 10, scope: !2807, inlinedAt: !2838)
!2841 = !DILocation(line: 972, column: 3, scope: !2780, inlinedAt: !2840)
!2842 = !DILocation(line: 972, column: 26, scope: !2780, inlinedAt: !2840)
!2843 = !DILocation(line: 973, column: 13, scope: !2780, inlinedAt: !2840)
!2844 = !DILocation(line: 0, scope: !1799, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 974, column: 3, scope: !2780, inlinedAt: !2840)
!2846 = !DILocation(line: 147, column: 57, scope: !1799, inlinedAt: !2845)
!2847 = !DILocation(line: 149, column: 21, scope: !1799, inlinedAt: !2845)
!2848 = !DILocation(line: 150, column: 6, scope: !1799, inlinedAt: !2845)
!2849 = !DILocation(line: 975, column: 10, scope: !2780, inlinedAt: !2840)
!2850 = !DILocation(line: 976, column: 1, scope: !2780, inlinedAt: !2840)
!2851 = !DILocation(line: 987, column: 3, scope: !2833)
!2852 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !244, file: !244, line: 991, type: !2657, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2853)
!2853 = !{!2854, !2855}
!2854 = !DILocalVariable(name: "arg", arg: 1, scope: !2852, file: !244, line: 991, type: !43)
!2855 = !DILocalVariable(name: "argsize", arg: 2, scope: !2852, file: !244, line: 991, type: !40)
!2856 = !DILocation(line: 0, scope: !2852)
!2857 = !DILocation(line: 0, scope: !2780, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 993, column: 10, scope: !2852)
!2859 = !DILocation(line: 972, column: 3, scope: !2780, inlinedAt: !2858)
!2860 = !DILocation(line: 972, column: 26, scope: !2780, inlinedAt: !2858)
!2861 = !DILocation(line: 973, column: 13, scope: !2780, inlinedAt: !2858)
!2862 = !DILocation(line: 0, scope: !1799, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 974, column: 3, scope: !2780, inlinedAt: !2858)
!2864 = !DILocation(line: 147, column: 57, scope: !1799, inlinedAt: !2863)
!2865 = !DILocation(line: 149, column: 21, scope: !1799, inlinedAt: !2863)
!2866 = !DILocation(line: 150, column: 6, scope: !1799, inlinedAt: !2863)
!2867 = !DILocation(line: 975, column: 10, scope: !2780, inlinedAt: !2858)
!2868 = !DILocation(line: 976, column: 1, scope: !2780, inlinedAt: !2858)
!2869 = !DILocation(line: 993, column: 3, scope: !2852)
!2870 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !244, file: !244, line: 997, type: !2668, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2871)
!2871 = !{!2872, !2873, !2874, !2875}
!2872 = !DILocalVariable(name: "n", arg: 1, scope: !2870, file: !244, line: 997, type: !38)
!2873 = !DILocalVariable(name: "s", arg: 2, scope: !2870, file: !244, line: 997, type: !246)
!2874 = !DILocalVariable(name: "arg", arg: 3, scope: !2870, file: !244, line: 997, type: !43)
!2875 = !DILocalVariable(name: "options", scope: !2870, file: !244, line: 999, type: !275)
!2876 = !DILocation(line: 0, scope: !2870)
!2877 = !DILocation(line: 999, column: 3, scope: !2870)
!2878 = !DILocation(line: 999, column: 26, scope: !2870)
!2879 = !DILocation(line: 0, scope: !2683, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 1000, column: 13, scope: !2870)
!2881 = !DILocation(line: 186, column: 13, scope: !2692, inlinedAt: !2880)
!2882 = !DILocation(line: 186, column: 7, scope: !2683, inlinedAt: !2880)
!2883 = !DILocation(line: 187, column: 5, scope: !2692, inlinedAt: !2880)
!2884 = !{!2885}
!2885 = distinct !{!2885, !2886, !"quoting_options_from_style: argument 0"}
!2886 = distinct !{!2886, !"quoting_options_from_style"}
!2887 = !DILocation(line: 1000, column: 13, scope: !2870)
!2888 = !DILocation(line: 0, scope: !1799, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 1001, column: 3, scope: !2870)
!2890 = !DILocation(line: 147, column: 57, scope: !1799, inlinedAt: !2889)
!2891 = !DILocation(line: 149, column: 21, scope: !1799, inlinedAt: !2889)
!2892 = !DILocation(line: 150, column: 6, scope: !1799, inlinedAt: !2889)
!2893 = !DILocation(line: 1002, column: 10, scope: !2870)
!2894 = !DILocation(line: 1003, column: 1, scope: !2870)
!2895 = !DILocation(line: 1002, column: 3, scope: !2870)
!2896 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !244, file: !244, line: 1006, type: !2897, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!35, !38, !43, !43, !43}
!2899 = !{!2900, !2901, !2902, !2903}
!2900 = !DILocalVariable(name: "n", arg: 1, scope: !2896, file: !244, line: 1006, type: !38)
!2901 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2896, file: !244, line: 1006, type: !43)
!2902 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2896, file: !244, line: 1007, type: !43)
!2903 = !DILocalVariable(name: "arg", arg: 4, scope: !2896, file: !244, line: 1007, type: !43)
!2904 = !DILocation(line: 0, scope: !2896)
!2905 = !DILocalVariable(name: "n", arg: 1, scope: !2906, file: !244, line: 1014, type: !38)
!2906 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !244, file: !244, line: 1014, type: !2907, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!35, !38, !43, !43, !43, !40}
!2909 = !{!2905, !2910, !2911, !2912, !2913, !2914}
!2910 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2906, file: !244, line: 1014, type: !43)
!2911 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2906, file: !244, line: 1015, type: !43)
!2912 = !DILocalVariable(name: "arg", arg: 4, scope: !2906, file: !244, line: 1016, type: !43)
!2913 = !DILocalVariable(name: "argsize", arg: 5, scope: !2906, file: !244, line: 1016, type: !40)
!2914 = !DILocalVariable(name: "o", scope: !2906, file: !244, line: 1018, type: !275)
!2915 = !DILocation(line: 0, scope: !2906, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 1009, column: 10, scope: !2896)
!2917 = !DILocation(line: 1018, column: 3, scope: !2906, inlinedAt: !2916)
!2918 = !DILocation(line: 1018, column: 26, scope: !2906, inlinedAt: !2916)
!2919 = !DILocation(line: 1018, column: 30, scope: !2906, inlinedAt: !2916)
!2920 = !DILocation(line: 0, scope: !1839, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 1019, column: 3, scope: !2906, inlinedAt: !2916)
!2922 = !DILocation(line: 174, column: 6, scope: !1839, inlinedAt: !2921)
!2923 = !DILocation(line: 174, column: 12, scope: !1839, inlinedAt: !2921)
!2924 = !DILocation(line: 175, column: 8, scope: !1853, inlinedAt: !2921)
!2925 = !DILocation(line: 175, column: 19, scope: !1853, inlinedAt: !2921)
!2926 = !DILocation(line: 176, column: 5, scope: !1853, inlinedAt: !2921)
!2927 = !DILocation(line: 177, column: 6, scope: !1839, inlinedAt: !2921)
!2928 = !DILocation(line: 177, column: 17, scope: !1839, inlinedAt: !2921)
!2929 = !DILocation(line: 178, column: 6, scope: !1839, inlinedAt: !2921)
!2930 = !DILocation(line: 178, column: 18, scope: !1839, inlinedAt: !2921)
!2931 = !DILocation(line: 1020, column: 10, scope: !2906, inlinedAt: !2916)
!2932 = !DILocation(line: 1021, column: 1, scope: !2906, inlinedAt: !2916)
!2933 = !DILocation(line: 1009, column: 3, scope: !2896)
!2934 = !DILocation(line: 0, scope: !2906)
!2935 = !DILocation(line: 1018, column: 3, scope: !2906)
!2936 = !DILocation(line: 1018, column: 26, scope: !2906)
!2937 = !DILocation(line: 1018, column: 30, scope: !2906)
!2938 = !DILocation(line: 0, scope: !1839, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 1019, column: 3, scope: !2906)
!2940 = !DILocation(line: 174, column: 6, scope: !1839, inlinedAt: !2939)
!2941 = !DILocation(line: 174, column: 12, scope: !1839, inlinedAt: !2939)
!2942 = !DILocation(line: 175, column: 8, scope: !1853, inlinedAt: !2939)
!2943 = !DILocation(line: 175, column: 19, scope: !1853, inlinedAt: !2939)
!2944 = !DILocation(line: 176, column: 5, scope: !1853, inlinedAt: !2939)
!2945 = !DILocation(line: 177, column: 6, scope: !1839, inlinedAt: !2939)
!2946 = !DILocation(line: 177, column: 17, scope: !1839, inlinedAt: !2939)
!2947 = !DILocation(line: 178, column: 6, scope: !1839, inlinedAt: !2939)
!2948 = !DILocation(line: 178, column: 18, scope: !1839, inlinedAt: !2939)
!2949 = !DILocation(line: 1020, column: 10, scope: !2906)
!2950 = !DILocation(line: 1021, column: 1, scope: !2906)
!2951 = !DILocation(line: 1020, column: 3, scope: !2906)
!2952 = distinct !DISubprogram(name: "quotearg_custom", scope: !244, file: !244, line: 1024, type: !2953, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!35, !43, !43, !43}
!2955 = !{!2956, !2957, !2958}
!2956 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2952, file: !244, line: 1024, type: !43)
!2957 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2952, file: !244, line: 1024, type: !43)
!2958 = !DILocalVariable(name: "arg", arg: 3, scope: !2952, file: !244, line: 1025, type: !43)
!2959 = !DILocation(line: 0, scope: !2952)
!2960 = !DILocation(line: 0, scope: !2896, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 1027, column: 10, scope: !2952)
!2962 = !DILocation(line: 0, scope: !2906, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 1009, column: 10, scope: !2896, inlinedAt: !2961)
!2964 = !DILocation(line: 1018, column: 3, scope: !2906, inlinedAt: !2963)
!2965 = !DILocation(line: 1018, column: 26, scope: !2906, inlinedAt: !2963)
!2966 = !DILocation(line: 1018, column: 30, scope: !2906, inlinedAt: !2963)
!2967 = !DILocation(line: 0, scope: !1839, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 1019, column: 3, scope: !2906, inlinedAt: !2963)
!2969 = !DILocation(line: 174, column: 6, scope: !1839, inlinedAt: !2968)
!2970 = !DILocation(line: 174, column: 12, scope: !1839, inlinedAt: !2968)
!2971 = !DILocation(line: 175, column: 8, scope: !1853, inlinedAt: !2968)
!2972 = !DILocation(line: 175, column: 19, scope: !1853, inlinedAt: !2968)
!2973 = !DILocation(line: 176, column: 5, scope: !1853, inlinedAt: !2968)
!2974 = !DILocation(line: 177, column: 6, scope: !1839, inlinedAt: !2968)
!2975 = !DILocation(line: 177, column: 17, scope: !1839, inlinedAt: !2968)
!2976 = !DILocation(line: 178, column: 6, scope: !1839, inlinedAt: !2968)
!2977 = !DILocation(line: 178, column: 18, scope: !1839, inlinedAt: !2968)
!2978 = !DILocation(line: 1020, column: 10, scope: !2906, inlinedAt: !2963)
!2979 = !DILocation(line: 1021, column: 1, scope: !2906, inlinedAt: !2963)
!2980 = !DILocation(line: 1027, column: 3, scope: !2952)
!2981 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !244, file: !244, line: 1031, type: !2982, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!35, !43, !43, !43, !40}
!2984 = !{!2985, !2986, !2987, !2988}
!2985 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2981, file: !244, line: 1031, type: !43)
!2986 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2981, file: !244, line: 1031, type: !43)
!2987 = !DILocalVariable(name: "arg", arg: 3, scope: !2981, file: !244, line: 1032, type: !43)
!2988 = !DILocalVariable(name: "argsize", arg: 4, scope: !2981, file: !244, line: 1032, type: !40)
!2989 = !DILocation(line: 0, scope: !2981)
!2990 = !DILocation(line: 0, scope: !2906, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 1034, column: 10, scope: !2981)
!2992 = !DILocation(line: 1018, column: 3, scope: !2906, inlinedAt: !2991)
!2993 = !DILocation(line: 1018, column: 26, scope: !2906, inlinedAt: !2991)
!2994 = !DILocation(line: 1018, column: 30, scope: !2906, inlinedAt: !2991)
!2995 = !DILocation(line: 0, scope: !1839, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 1019, column: 3, scope: !2906, inlinedAt: !2991)
!2997 = !DILocation(line: 174, column: 6, scope: !1839, inlinedAt: !2996)
!2998 = !DILocation(line: 174, column: 12, scope: !1839, inlinedAt: !2996)
!2999 = !DILocation(line: 175, column: 8, scope: !1853, inlinedAt: !2996)
!3000 = !DILocation(line: 175, column: 19, scope: !1853, inlinedAt: !2996)
!3001 = !DILocation(line: 176, column: 5, scope: !1853, inlinedAt: !2996)
!3002 = !DILocation(line: 177, column: 6, scope: !1839, inlinedAt: !2996)
!3003 = !DILocation(line: 177, column: 17, scope: !1839, inlinedAt: !2996)
!3004 = !DILocation(line: 178, column: 6, scope: !1839, inlinedAt: !2996)
!3005 = !DILocation(line: 178, column: 18, scope: !1839, inlinedAt: !2996)
!3006 = !DILocation(line: 1020, column: 10, scope: !2906, inlinedAt: !2991)
!3007 = !DILocation(line: 1021, column: 1, scope: !2906, inlinedAt: !2991)
!3008 = !DILocation(line: 1034, column: 3, scope: !2981)
!3009 = distinct !DISubprogram(name: "quote_n_mem", scope: !244, file: !244, line: 1049, type: !3010, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!43, !38, !43, !40}
!3012 = !{!3013, !3014, !3015}
!3013 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !244, line: 1049, type: !38)
!3014 = !DILocalVariable(name: "arg", arg: 2, scope: !3009, file: !244, line: 1049, type: !43)
!3015 = !DILocalVariable(name: "argsize", arg: 3, scope: !3009, file: !244, line: 1049, type: !40)
!3016 = !DILocation(line: 0, scope: !3009)
!3017 = !DILocation(line: 1051, column: 10, scope: !3009)
!3018 = !DILocation(line: 1051, column: 3, scope: !3009)
!3019 = distinct !DISubprogram(name: "quote_mem", scope: !244, file: !244, line: 1055, type: !3020, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!43, !43, !40}
!3022 = !{!3023, !3024}
!3023 = !DILocalVariable(name: "arg", arg: 1, scope: !3019, file: !244, line: 1055, type: !43)
!3024 = !DILocalVariable(name: "argsize", arg: 2, scope: !3019, file: !244, line: 1055, type: !40)
!3025 = !DILocation(line: 0, scope: !3019)
!3026 = !DILocation(line: 0, scope: !3009, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 1057, column: 10, scope: !3019)
!3028 = !DILocation(line: 1051, column: 10, scope: !3009, inlinedAt: !3027)
!3029 = !DILocation(line: 1057, column: 3, scope: !3019)
!3030 = distinct !DISubprogram(name: "quote_n", scope: !244, file: !244, line: 1061, type: !3031, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!43, !38, !43}
!3033 = !{!3034, !3035}
!3034 = !DILocalVariable(name: "n", arg: 1, scope: !3030, file: !244, line: 1061, type: !38)
!3035 = !DILocalVariable(name: "arg", arg: 2, scope: !3030, file: !244, line: 1061, type: !43)
!3036 = !DILocation(line: 0, scope: !3030)
!3037 = !DILocation(line: 0, scope: !3009, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 1063, column: 10, scope: !3030)
!3039 = !DILocation(line: 1051, column: 10, scope: !3009, inlinedAt: !3038)
!3040 = !DILocation(line: 1063, column: 3, scope: !3030)
!3041 = distinct !DISubprogram(name: "quote", scope: !244, file: !244, line: 1067, type: !3042, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !243, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!43, !43}
!3044 = !{!3045}
!3045 = !DILocalVariable(name: "arg", arg: 1, scope: !3041, file: !244, line: 1067, type: !43)
!3046 = !DILocation(line: 0, scope: !3041)
!3047 = !DILocation(line: 0, scope: !3030, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 1069, column: 10, scope: !3041)
!3049 = !DILocation(line: 0, scope: !3009, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1063, column: 10, scope: !3030, inlinedAt: !3048)
!3051 = !DILocation(line: 1051, column: 10, scope: !3009, inlinedAt: !3050)
!3052 = !DILocation(line: 1069, column: 3, scope: !3041)
!3053 = distinct !DISubprogram(name: "version_etc_arn", scope: !588, file: !588, line: 61, type: !3054, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !3091)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !3056, !43, !43, !43, !3090, !40}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !3058)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3058, file: !77, line: 51, baseType: !38, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3058, file: !77, line: 54, baseType: !35, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3058, file: !77, line: 55, baseType: !35, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3058, file: !77, line: 56, baseType: !35, size: 64, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3058, file: !77, line: 57, baseType: !35, size: 64, offset: 256)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3058, file: !77, line: 58, baseType: !35, size: 64, offset: 320)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3058, file: !77, line: 59, baseType: !35, size: 64, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3058, file: !77, line: 60, baseType: !35, size: 64, offset: 448)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3058, file: !77, line: 61, baseType: !35, size: 64, offset: 512)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3058, file: !77, line: 64, baseType: !35, size: 64, offset: 576)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3058, file: !77, line: 65, baseType: !35, size: 64, offset: 640)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3058, file: !77, line: 66, baseType: !35, size: 64, offset: 704)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3058, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3058, file: !77, line: 70, baseType: !3074, size: 64, offset: 832)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3058, file: !77, line: 72, baseType: !38, size: 32, offset: 896)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3058, file: !77, line: 73, baseType: !38, size: 32, offset: 928)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3058, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3058, file: !77, line: 77, baseType: !39, size: 16, offset: 1024)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3058, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3058, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3058, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3058, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3058, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3058, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3058, file: !77, line: 93, baseType: !3074, size: 64, offset: 1344)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3058, file: !77, line: 94, baseType: !37, size: 64, offset: 1408)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3058, file: !77, line: 95, baseType: !40, size: 64, offset: 1472)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3058, file: !77, line: 96, baseType: !38, size: 32, offset: 1536)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3058, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097}
!3092 = !DILocalVariable(name: "stream", arg: 1, scope: !3053, file: !588, line: 61, type: !3056)
!3093 = !DILocalVariable(name: "command_name", arg: 2, scope: !3053, file: !588, line: 62, type: !43)
!3094 = !DILocalVariable(name: "package", arg: 3, scope: !3053, file: !588, line: 62, type: !43)
!3095 = !DILocalVariable(name: "version", arg: 4, scope: !3053, file: !588, line: 63, type: !43)
!3096 = !DILocalVariable(name: "authors", arg: 5, scope: !3053, file: !588, line: 64, type: !3090)
!3097 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3053, file: !588, line: 64, type: !40)
!3098 = !DILocation(line: 0, scope: !3053)
!3099 = !DILocation(line: 66, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3053, file: !588, line: 66, column: 7)
!3101 = !DILocation(line: 66, column: 7, scope: !3053)
!3102 = !DILocation(line: 67, column: 5, scope: !3100)
!3103 = !DILocation(line: 69, column: 5, scope: !3100)
!3104 = !DILocation(line: 83, column: 3, scope: !3053)
!3105 = !DILocation(line: 85, column: 3, scope: !3053)
!3106 = !DILocation(line: 88, column: 3, scope: !3053)
!3107 = !DILocation(line: 95, column: 3, scope: !3053)
!3108 = !DILocation(line: 97, column: 3, scope: !3053)
!3109 = !DILocation(line: 105, column: 7, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3053, file: !588, line: 98, column: 5)
!3111 = !DILocation(line: 106, column: 7, scope: !3110)
!3112 = !DILocation(line: 109, column: 7, scope: !3110)
!3113 = !DILocation(line: 110, column: 7, scope: !3110)
!3114 = !DILocation(line: 113, column: 7, scope: !3110)
!3115 = !DILocation(line: 115, column: 7, scope: !3110)
!3116 = !DILocation(line: 120, column: 7, scope: !3110)
!3117 = !DILocation(line: 122, column: 7, scope: !3110)
!3118 = !DILocation(line: 127, column: 7, scope: !3110)
!3119 = !DILocation(line: 129, column: 7, scope: !3110)
!3120 = !DILocation(line: 134, column: 7, scope: !3110)
!3121 = !DILocation(line: 137, column: 7, scope: !3110)
!3122 = !DILocation(line: 142, column: 7, scope: !3110)
!3123 = !DILocation(line: 145, column: 7, scope: !3110)
!3124 = !DILocation(line: 150, column: 7, scope: !3110)
!3125 = !DILocation(line: 154, column: 7, scope: !3110)
!3126 = !DILocation(line: 159, column: 7, scope: !3110)
!3127 = !DILocation(line: 163, column: 7, scope: !3110)
!3128 = !DILocation(line: 170, column: 7, scope: !3110)
!3129 = !DILocation(line: 174, column: 7, scope: !3110)
!3130 = !DILocation(line: 176, column: 1, scope: !3053)
!3131 = distinct !DISubprogram(name: "version_etc_ar", scope: !588, file: !588, line: 183, type: !3132, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !3056, !43, !43, !43, !3090}
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140}
!3135 = !DILocalVariable(name: "stream", arg: 1, scope: !3131, file: !588, line: 183, type: !3056)
!3136 = !DILocalVariable(name: "command_name", arg: 2, scope: !3131, file: !588, line: 184, type: !43)
!3137 = !DILocalVariable(name: "package", arg: 3, scope: !3131, file: !588, line: 184, type: !43)
!3138 = !DILocalVariable(name: "version", arg: 4, scope: !3131, file: !588, line: 185, type: !43)
!3139 = !DILocalVariable(name: "authors", arg: 5, scope: !3131, file: !588, line: 185, type: !3090)
!3140 = !DILocalVariable(name: "n_authors", scope: !3131, file: !588, line: 187, type: !40)
!3141 = !DILocation(line: 0, scope: !3131)
!3142 = !DILocation(line: 189, column: 8, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3131, file: !588, line: 189, column: 3)
!3144 = !DILocation(line: 0, scope: !3143)
!3145 = !DILocation(line: 189, column: 23, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3143, file: !588, line: 189, column: 3)
!3147 = !DILocation(line: 189, column: 3, scope: !3143)
!3148 = !DILocation(line: 189, column: 52, scope: !3146)
!3149 = distinct !{!3149, !3147, !3150, !744}
!3150 = !DILocation(line: 190, column: 5, scope: !3143)
!3151 = !DILocation(line: 191, column: 3, scope: !3131)
!3152 = !DILocation(line: 192, column: 1, scope: !3131)
!3153 = distinct !DISubprogram(name: "version_etc_va", scope: !588, file: !588, line: 199, type: !3154, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !3167)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !3056, !43, !43, !43, !3156}
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !170, line: 52, baseType: !3157)
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !172, line: 32, baseType: !3158)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3159, baseType: !3160)
!3159 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !176, size: 256, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3165, !3166}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3160, file: !3159, line: 192, baseType: !37, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3160, file: !3159, line: 192, baseType: !37, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3160, file: !3159, line: 192, baseType: !37, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3160, file: !3159, line: 192, baseType: !38, size: 32, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3160, file: !3159, line: 192, baseType: !38, size: 32, offset: 224)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174}
!3168 = !DILocalVariable(name: "stream", arg: 1, scope: !3153, file: !588, line: 199, type: !3056)
!3169 = !DILocalVariable(name: "command_name", arg: 2, scope: !3153, file: !588, line: 200, type: !43)
!3170 = !DILocalVariable(name: "package", arg: 3, scope: !3153, file: !588, line: 200, type: !43)
!3171 = !DILocalVariable(name: "version", arg: 4, scope: !3153, file: !588, line: 201, type: !43)
!3172 = !DILocalVariable(name: "authors", arg: 5, scope: !3153, file: !588, line: 201, type: !3156)
!3173 = !DILocalVariable(name: "n_authors", scope: !3153, file: !588, line: 203, type: !40)
!3174 = !DILocalVariable(name: "authtab", scope: !3153, file: !588, line: 204, type: !3175)
!3175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 640, elements: !271)
!3176 = !DILocation(line: 0, scope: !3153)
!3177 = !DILocation(line: 201, column: 46, scope: !3153)
!3178 = !DILocation(line: 204, column: 3, scope: !3153)
!3179 = !DILocation(line: 204, column: 15, scope: !3153)
!3180 = !DILocation(line: 208, column: 35, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !588, line: 206, column: 3)
!3182 = distinct !DILexicalBlock(scope: !3153, file: !588, line: 206, column: 3)
!3183 = !DILocation(line: 208, column: 14, scope: !3181)
!3184 = !DILocation(line: 208, column: 33, scope: !3181)
!3185 = !DILocation(line: 208, column: 67, scope: !3181)
!3186 = !DILocation(line: 206, column: 3, scope: !3182)
!3187 = !DILocation(line: 0, scope: !3182)
!3188 = !DILocation(line: 211, column: 3, scope: !3153)
!3189 = !DILocation(line: 213, column: 1, scope: !3153)
!3190 = distinct !DISubprogram(name: "version_etc", scope: !588, file: !588, line: 230, type: !3191, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{null, !3056, !43, !43, !43, null}
!3193 = !{!3194, !3195, !3196, !3197, !3198}
!3194 = !DILocalVariable(name: "stream", arg: 1, scope: !3190, file: !588, line: 230, type: !3056)
!3195 = !DILocalVariable(name: "command_name", arg: 2, scope: !3190, file: !588, line: 231, type: !43)
!3196 = !DILocalVariable(name: "package", arg: 3, scope: !3190, file: !588, line: 231, type: !43)
!3197 = !DILocalVariable(name: "version", arg: 4, scope: !3190, file: !588, line: 232, type: !43)
!3198 = !DILocalVariable(name: "authors", scope: !3190, file: !588, line: 234, type: !3156)
!3199 = !DILocation(line: 0, scope: !3190)
!3200 = !DILocation(line: 234, column: 3, scope: !3190)
!3201 = !DILocation(line: 234, column: 11, scope: !3190)
!3202 = !DILocation(line: 235, column: 3, scope: !3190)
!3203 = !DILocation(line: 236, column: 3, scope: !3190)
!3204 = !DILocation(line: 237, column: 3, scope: !3190)
!3205 = !DILocation(line: 238, column: 1, scope: !3190)
!3206 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !588, file: !588, line: 241, type: !197, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !770)
!3207 = !DILocation(line: 243, column: 3, scope: !3206)
!3208 = !DILocation(line: 248, column: 3, scope: !3206)
!3209 = !DILocation(line: 254, column: 3, scope: !3206)
!3210 = !DILocation(line: 259, column: 3, scope: !3206)
!3211 = !DILocation(line: 261, column: 1, scope: !3206)
!3212 = distinct !DISubprogram(name: "xnrealloc", scope: !3213, file: !3213, line: 147, type: !3214, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3216)
!3213 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!37, !37, !40, !40}
!3216 = !{!3217, !3218, !3219}
!3217 = !DILocalVariable(name: "p", arg: 1, scope: !3212, file: !3213, line: 147, type: !37)
!3218 = !DILocalVariable(name: "n", arg: 2, scope: !3212, file: !3213, line: 147, type: !40)
!3219 = !DILocalVariable(name: "s", arg: 3, scope: !3212, file: !3213, line: 147, type: !40)
!3220 = !DILocation(line: 0, scope: !3212)
!3221 = !DILocalVariable(name: "p", arg: 1, scope: !3222, file: !595, line: 83, type: !37)
!3222 = distinct !DISubprogram(name: "xreallocarray", scope: !595, file: !595, line: 83, type: !3214, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3223)
!3223 = !{!3221, !3224, !3225}
!3224 = !DILocalVariable(name: "n", arg: 2, scope: !3222, file: !595, line: 83, type: !40)
!3225 = !DILocalVariable(name: "s", arg: 3, scope: !3222, file: !595, line: 83, type: !40)
!3226 = !DILocation(line: 0, scope: !3222, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 149, column: 10, scope: !3212)
!3228 = !DILocation(line: 85, column: 25, scope: !3222, inlinedAt: !3227)
!3229 = !DILocalVariable(name: "p", arg: 1, scope: !3230, file: !595, line: 37, type: !37)
!3230 = distinct !DISubprogram(name: "check_nonnull", scope: !595, file: !595, line: 37, type: !3231, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!37, !37}
!3233 = !{!3229}
!3234 = !DILocation(line: 0, scope: !3230, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 85, column: 10, scope: !3222, inlinedAt: !3227)
!3236 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3235)
!3237 = distinct !DILexicalBlock(scope: !3230, file: !595, line: 39, column: 7)
!3238 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3235)
!3239 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3235)
!3240 = !DILocation(line: 149, column: 3, scope: !3212)
!3241 = !DILocation(line: 0, scope: !3222)
!3242 = !DILocation(line: 85, column: 25, scope: !3222)
!3243 = !DILocation(line: 0, scope: !3230, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 85, column: 10, scope: !3222)
!3245 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3244)
!3246 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3244)
!3247 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3244)
!3248 = !DILocation(line: 85, column: 3, scope: !3222)
!3249 = distinct !DISubprogram(name: "xmalloc", scope: !595, file: !595, line: 47, type: !3250, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!37, !40}
!3252 = !{!3253}
!3253 = !DILocalVariable(name: "s", arg: 1, scope: !3249, file: !595, line: 47, type: !40)
!3254 = !DILocation(line: 0, scope: !3249)
!3255 = !DILocation(line: 49, column: 25, scope: !3249)
!3256 = !DILocation(line: 0, scope: !3230, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 49, column: 10, scope: !3249)
!3258 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3257)
!3259 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3257)
!3260 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3257)
!3261 = !DILocation(line: 49, column: 3, scope: !3249)
!3262 = distinct !DISubprogram(name: "ximalloc", scope: !595, file: !595, line: 53, type: !3263, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!37, !614}
!3265 = !{!3266}
!3266 = !DILocalVariable(name: "s", arg: 1, scope: !3262, file: !595, line: 53, type: !614)
!3267 = !DILocation(line: 0, scope: !3262)
!3268 = !DILocalVariable(name: "s", arg: 1, scope: !3269, file: !3270, line: 55, type: !614)
!3269 = distinct !DISubprogram(name: "imalloc", scope: !3270, file: !3270, line: 55, type: !3263, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3271)
!3270 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3271 = !{!3268}
!3272 = !DILocation(line: 0, scope: !3269, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 55, column: 25, scope: !3262)
!3274 = !DILocation(line: 57, column: 26, scope: !3269, inlinedAt: !3273)
!3275 = !DILocation(line: 0, scope: !3230, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 55, column: 10, scope: !3262)
!3277 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3276)
!3278 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3276)
!3279 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3276)
!3280 = !DILocation(line: 55, column: 3, scope: !3262)
!3281 = distinct !DISubprogram(name: "xcharalloc", scope: !595, file: !595, line: 59, type: !3282, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!35, !40}
!3284 = !{!3285}
!3285 = !DILocalVariable(name: "n", arg: 1, scope: !3281, file: !595, line: 59, type: !40)
!3286 = !DILocation(line: 0, scope: !3281)
!3287 = !DILocation(line: 0, scope: !3249, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 61, column: 10, scope: !3281)
!3289 = !DILocation(line: 49, column: 25, scope: !3249, inlinedAt: !3288)
!3290 = !DILocation(line: 0, scope: !3230, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 49, column: 10, scope: !3249, inlinedAt: !3288)
!3292 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3291)
!3293 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3291)
!3294 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3291)
!3295 = !DILocation(line: 61, column: 3, scope: !3281)
!3296 = distinct !DISubprogram(name: "xrealloc", scope: !595, file: !595, line: 68, type: !3297, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!37, !37, !40}
!3299 = !{!3300, !3301}
!3300 = !DILocalVariable(name: "p", arg: 1, scope: !3296, file: !595, line: 68, type: !37)
!3301 = !DILocalVariable(name: "s", arg: 2, scope: !3296, file: !595, line: 68, type: !40)
!3302 = !DILocation(line: 0, scope: !3296)
!3303 = !DILocalVariable(name: "ptr", arg: 1, scope: !3304, file: !3305, line: 2057, type: !37)
!3304 = distinct !DISubprogram(name: "rpl_realloc", scope: !3305, file: !3305, line: 2057, type: !3297, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3306)
!3305 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3306 = !{!3303, !3307}
!3307 = !DILocalVariable(name: "size", arg: 2, scope: !3304, file: !3305, line: 2057, type: !40)
!3308 = !DILocation(line: 0, scope: !3304, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 70, column: 25, scope: !3296)
!3310 = !DILocation(line: 2059, column: 24, scope: !3304, inlinedAt: !3309)
!3311 = !DILocation(line: 2059, column: 10, scope: !3304, inlinedAt: !3309)
!3312 = !DILocation(line: 0, scope: !3230, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 70, column: 10, scope: !3296)
!3314 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3313)
!3315 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3313)
!3316 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3313)
!3317 = !DILocation(line: 70, column: 3, scope: !3296)
!3318 = distinct !DISubprogram(name: "xirealloc", scope: !595, file: !595, line: 74, type: !3319, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!37, !37, !614}
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "p", arg: 1, scope: !3318, file: !595, line: 74, type: !37)
!3323 = !DILocalVariable(name: "s", arg: 2, scope: !3318, file: !595, line: 74, type: !614)
!3324 = !DILocation(line: 0, scope: !3318)
!3325 = !DILocalVariable(name: "p", arg: 1, scope: !3326, file: !3270, line: 66, type: !37)
!3326 = distinct !DISubprogram(name: "irealloc", scope: !3270, file: !3270, line: 66, type: !3319, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3327)
!3327 = !{!3325, !3328}
!3328 = !DILocalVariable(name: "s", arg: 2, scope: !3326, file: !3270, line: 66, type: !614)
!3329 = !DILocation(line: 0, scope: !3326, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 76, column: 25, scope: !3318)
!3331 = !DILocation(line: 0, scope: !3304, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 68, column: 26, scope: !3326, inlinedAt: !3330)
!3333 = !DILocation(line: 2059, column: 24, scope: !3304, inlinedAt: !3332)
!3334 = !DILocation(line: 2059, column: 10, scope: !3304, inlinedAt: !3332)
!3335 = !DILocation(line: 0, scope: !3230, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 76, column: 10, scope: !3318)
!3337 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3336)
!3338 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3336)
!3339 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3336)
!3340 = !DILocation(line: 76, column: 3, scope: !3318)
!3341 = distinct !DISubprogram(name: "xireallocarray", scope: !595, file: !595, line: 89, type: !3342, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3344)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!37, !37, !614, !614}
!3344 = !{!3345, !3346, !3347}
!3345 = !DILocalVariable(name: "p", arg: 1, scope: !3341, file: !595, line: 89, type: !37)
!3346 = !DILocalVariable(name: "n", arg: 2, scope: !3341, file: !595, line: 89, type: !614)
!3347 = !DILocalVariable(name: "s", arg: 3, scope: !3341, file: !595, line: 89, type: !614)
!3348 = !DILocation(line: 0, scope: !3341)
!3349 = !DILocalVariable(name: "p", arg: 1, scope: !3350, file: !3270, line: 98, type: !37)
!3350 = distinct !DISubprogram(name: "ireallocarray", scope: !3270, file: !3270, line: 98, type: !3342, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3351)
!3351 = !{!3349, !3352, !3353}
!3352 = !DILocalVariable(name: "n", arg: 2, scope: !3350, file: !3270, line: 98, type: !614)
!3353 = !DILocalVariable(name: "s", arg: 3, scope: !3350, file: !3270, line: 98, type: !614)
!3354 = !DILocation(line: 0, scope: !3350, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 91, column: 25, scope: !3341)
!3356 = !DILocation(line: 101, column: 13, scope: !3350, inlinedAt: !3355)
!3357 = !DILocation(line: 0, scope: !3230, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 91, column: 10, scope: !3341)
!3359 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3358)
!3360 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3358)
!3361 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3358)
!3362 = !DILocation(line: 91, column: 3, scope: !3341)
!3363 = distinct !DISubprogram(name: "xnmalloc", scope: !595, file: !595, line: 98, type: !3364, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!37, !40, !40}
!3366 = !{!3367, !3368}
!3367 = !DILocalVariable(name: "n", arg: 1, scope: !3363, file: !595, line: 98, type: !40)
!3368 = !DILocalVariable(name: "s", arg: 2, scope: !3363, file: !595, line: 98, type: !40)
!3369 = !DILocation(line: 0, scope: !3363)
!3370 = !DILocation(line: 0, scope: !3222, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 100, column: 10, scope: !3363)
!3372 = !DILocation(line: 85, column: 25, scope: !3222, inlinedAt: !3371)
!3373 = !DILocation(line: 0, scope: !3230, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 85, column: 10, scope: !3222, inlinedAt: !3371)
!3375 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3374)
!3376 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3374)
!3377 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3374)
!3378 = !DILocation(line: 100, column: 3, scope: !3363)
!3379 = distinct !DISubprogram(name: "xinmalloc", scope: !595, file: !595, line: 104, type: !3380, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!37, !614, !614}
!3382 = !{!3383, !3384}
!3383 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !595, line: 104, type: !614)
!3384 = !DILocalVariable(name: "s", arg: 2, scope: !3379, file: !595, line: 104, type: !614)
!3385 = !DILocation(line: 0, scope: !3379)
!3386 = !DILocation(line: 0, scope: !3341, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 106, column: 10, scope: !3379)
!3388 = !DILocation(line: 0, scope: !3350, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 91, column: 25, scope: !3341, inlinedAt: !3387)
!3390 = !DILocation(line: 101, column: 13, scope: !3350, inlinedAt: !3389)
!3391 = !DILocation(line: 0, scope: !3230, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 91, column: 10, scope: !3341, inlinedAt: !3387)
!3393 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3392)
!3394 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3392)
!3395 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3392)
!3396 = !DILocation(line: 106, column: 3, scope: !3379)
!3397 = distinct !DISubprogram(name: "x2realloc", scope: !595, file: !595, line: 116, type: !3398, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!37, !37, !601}
!3400 = !{!3401, !3402}
!3401 = !DILocalVariable(name: "p", arg: 1, scope: !3397, file: !595, line: 116, type: !37)
!3402 = !DILocalVariable(name: "ps", arg: 2, scope: !3397, file: !595, line: 116, type: !601)
!3403 = !DILocation(line: 0, scope: !3397)
!3404 = !DILocation(line: 0, scope: !598, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 118, column: 10, scope: !3397)
!3406 = !DILocation(line: 178, column: 14, scope: !598, inlinedAt: !3405)
!3407 = !DILocation(line: 180, column: 9, scope: !3408, inlinedAt: !3405)
!3408 = distinct !DILexicalBlock(scope: !598, file: !595, line: 180, column: 7)
!3409 = !DILocation(line: 180, column: 7, scope: !598, inlinedAt: !3405)
!3410 = !DILocation(line: 182, column: 13, scope: !3411, inlinedAt: !3405)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !595, line: 182, column: 11)
!3412 = distinct !DILexicalBlock(scope: !3408, file: !595, line: 181, column: 5)
!3413 = !DILocation(line: 182, column: 11, scope: !3412, inlinedAt: !3405)
!3414 = !DILocation(line: 197, column: 11, scope: !3415, inlinedAt: !3405)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !595, line: 197, column: 11)
!3416 = distinct !DILexicalBlock(scope: !3408, file: !595, line: 195, column: 5)
!3417 = !DILocation(line: 197, column: 11, scope: !3416, inlinedAt: !3405)
!3418 = !DILocation(line: 198, column: 9, scope: !3415, inlinedAt: !3405)
!3419 = !DILocation(line: 0, scope: !3222, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 201, column: 7, scope: !598, inlinedAt: !3405)
!3421 = !DILocation(line: 85, column: 25, scope: !3222, inlinedAt: !3420)
!3422 = !DILocation(line: 0, scope: !3230, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 85, column: 10, scope: !3222, inlinedAt: !3420)
!3424 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3423)
!3425 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3423)
!3426 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3423)
!3427 = !DILocation(line: 202, column: 7, scope: !598, inlinedAt: !3405)
!3428 = !DILocation(line: 118, column: 3, scope: !3397)
!3429 = !DILocation(line: 0, scope: !598)
!3430 = !DILocation(line: 178, column: 14, scope: !598)
!3431 = !DILocation(line: 180, column: 9, scope: !3408)
!3432 = !DILocation(line: 180, column: 7, scope: !598)
!3433 = !DILocation(line: 182, column: 13, scope: !3411)
!3434 = !DILocation(line: 182, column: 11, scope: !3412)
!3435 = !DILocation(line: 190, column: 30, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3411, file: !595, line: 183, column: 9)
!3437 = !DILocation(line: 191, column: 16, scope: !3436)
!3438 = !DILocation(line: 191, column: 13, scope: !3436)
!3439 = !DILocation(line: 192, column: 9, scope: !3436)
!3440 = !DILocation(line: 197, column: 11, scope: !3415)
!3441 = !DILocation(line: 197, column: 11, scope: !3416)
!3442 = !DILocation(line: 198, column: 9, scope: !3415)
!3443 = !DILocation(line: 0, scope: !3222, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 201, column: 7, scope: !598)
!3445 = !DILocation(line: 85, column: 25, scope: !3222, inlinedAt: !3444)
!3446 = !DILocation(line: 0, scope: !3230, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 85, column: 10, scope: !3222, inlinedAt: !3444)
!3448 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3447)
!3449 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3447)
!3450 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3447)
!3451 = !DILocation(line: 202, column: 7, scope: !598)
!3452 = !DILocation(line: 203, column: 3, scope: !598)
!3453 = !DILocation(line: 0, scope: !610)
!3454 = !DILocation(line: 230, column: 14, scope: !610)
!3455 = !DILocation(line: 238, column: 7, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !610, file: !595, line: 238, column: 7)
!3457 = !DILocation(line: 238, column: 7, scope: !610)
!3458 = !DILocation(line: 240, column: 9, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !610, file: !595, line: 240, column: 7)
!3460 = !DILocation(line: 240, column: 18, scope: !3459)
!3461 = !DILocation(line: 253, column: 8, scope: !610)
!3462 = !DILocation(line: 258, column: 27, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !595, line: 257, column: 5)
!3464 = distinct !DILexicalBlock(scope: !610, file: !595, line: 256, column: 7)
!3465 = !DILocation(line: 259, column: 32, scope: !3463)
!3466 = !DILocation(line: 260, column: 5, scope: !3463)
!3467 = !DILocation(line: 262, column: 9, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !610, file: !595, line: 262, column: 7)
!3469 = !DILocation(line: 262, column: 7, scope: !610)
!3470 = !DILocation(line: 263, column: 9, scope: !3468)
!3471 = !DILocation(line: 263, column: 5, scope: !3468)
!3472 = !DILocation(line: 264, column: 9, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !610, file: !595, line: 264, column: 7)
!3474 = !DILocation(line: 264, column: 14, scope: !3473)
!3475 = !DILocation(line: 265, column: 7, scope: !3473)
!3476 = !DILocation(line: 265, column: 11, scope: !3473)
!3477 = !DILocation(line: 266, column: 11, scope: !3473)
!3478 = !DILocation(line: 266, column: 26, scope: !3473)
!3479 = !DILocation(line: 267, column: 14, scope: !3473)
!3480 = !DILocation(line: 264, column: 7, scope: !610)
!3481 = !DILocation(line: 268, column: 5, scope: !3473)
!3482 = !DILocation(line: 0, scope: !3296, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 269, column: 8, scope: !610)
!3484 = !DILocation(line: 0, scope: !3304, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 70, column: 25, scope: !3296, inlinedAt: !3483)
!3486 = !DILocation(line: 2059, column: 24, scope: !3304, inlinedAt: !3485)
!3487 = !DILocation(line: 2059, column: 10, scope: !3304, inlinedAt: !3485)
!3488 = !DILocation(line: 0, scope: !3230, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 70, column: 10, scope: !3296, inlinedAt: !3483)
!3490 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3489)
!3491 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3489)
!3492 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3489)
!3493 = !DILocation(line: 270, column: 7, scope: !610)
!3494 = !DILocation(line: 271, column: 3, scope: !610)
!3495 = distinct !DISubprogram(name: "xzalloc", scope: !595, file: !595, line: 279, type: !3250, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3496)
!3496 = !{!3497}
!3497 = !DILocalVariable(name: "s", arg: 1, scope: !3495, file: !595, line: 279, type: !40)
!3498 = !DILocation(line: 0, scope: !3495)
!3499 = !DILocalVariable(name: "n", arg: 1, scope: !3500, file: !595, line: 294, type: !40)
!3500 = distinct !DISubprogram(name: "xcalloc", scope: !595, file: !595, line: 294, type: !3364, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3501)
!3501 = !{!3499, !3502}
!3502 = !DILocalVariable(name: "s", arg: 2, scope: !3500, file: !595, line: 294, type: !40)
!3503 = !DILocation(line: 0, scope: !3500, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 281, column: 10, scope: !3495)
!3505 = !DILocation(line: 296, column: 25, scope: !3500, inlinedAt: !3504)
!3506 = !DILocation(line: 0, scope: !3230, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 296, column: 10, scope: !3500, inlinedAt: !3504)
!3508 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3507)
!3509 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3507)
!3510 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3507)
!3511 = !DILocation(line: 281, column: 3, scope: !3495)
!3512 = !DILocation(line: 0, scope: !3500)
!3513 = !DILocation(line: 296, column: 25, scope: !3500)
!3514 = !DILocation(line: 0, scope: !3230, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 296, column: 10, scope: !3500)
!3516 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3515)
!3517 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3515)
!3518 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3515)
!3519 = !DILocation(line: 296, column: 3, scope: !3500)
!3520 = distinct !DISubprogram(name: "xizalloc", scope: !595, file: !595, line: 285, type: !3263, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3521)
!3521 = !{!3522}
!3522 = !DILocalVariable(name: "s", arg: 1, scope: !3520, file: !595, line: 285, type: !614)
!3523 = !DILocation(line: 0, scope: !3520)
!3524 = !DILocalVariable(name: "n", arg: 1, scope: !3525, file: !595, line: 300, type: !614)
!3525 = distinct !DISubprogram(name: "xicalloc", scope: !595, file: !595, line: 300, type: !3380, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3526)
!3526 = !{!3524, !3527}
!3527 = !DILocalVariable(name: "s", arg: 2, scope: !3525, file: !595, line: 300, type: !614)
!3528 = !DILocation(line: 0, scope: !3525, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 287, column: 10, scope: !3520)
!3530 = !DILocalVariable(name: "n", arg: 1, scope: !3531, file: !3270, line: 77, type: !614)
!3531 = distinct !DISubprogram(name: "icalloc", scope: !3270, file: !3270, line: 77, type: !3380, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3532)
!3532 = !{!3530, !3533}
!3533 = !DILocalVariable(name: "s", arg: 2, scope: !3531, file: !3270, line: 77, type: !614)
!3534 = !DILocation(line: 0, scope: !3531, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 302, column: 25, scope: !3525, inlinedAt: !3529)
!3536 = !DILocation(line: 91, column: 10, scope: !3531, inlinedAt: !3535)
!3537 = !DILocation(line: 0, scope: !3230, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 302, column: 10, scope: !3525, inlinedAt: !3529)
!3539 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3538)
!3540 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3538)
!3541 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3538)
!3542 = !DILocation(line: 287, column: 3, scope: !3520)
!3543 = !DILocation(line: 0, scope: !3525)
!3544 = !DILocation(line: 0, scope: !3531, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 302, column: 25, scope: !3525)
!3546 = !DILocation(line: 91, column: 10, scope: !3531, inlinedAt: !3545)
!3547 = !DILocation(line: 0, scope: !3230, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 302, column: 10, scope: !3525)
!3549 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3548)
!3550 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3548)
!3551 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3548)
!3552 = !DILocation(line: 302, column: 3, scope: !3525)
!3553 = distinct !DISubprogram(name: "xmemdup", scope: !595, file: !595, line: 310, type: !3554, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!37, !896, !40}
!3556 = !{!3557, !3558}
!3557 = !DILocalVariable(name: "p", arg: 1, scope: !3553, file: !595, line: 310, type: !896)
!3558 = !DILocalVariable(name: "s", arg: 2, scope: !3553, file: !595, line: 310, type: !40)
!3559 = !DILocation(line: 0, scope: !3553)
!3560 = !DILocation(line: 0, scope: !3249, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 312, column: 18, scope: !3553)
!3562 = !DILocation(line: 49, column: 25, scope: !3249, inlinedAt: !3561)
!3563 = !DILocation(line: 0, scope: !3230, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 49, column: 10, scope: !3249, inlinedAt: !3561)
!3565 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3564)
!3566 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3564)
!3567 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3564)
!3568 = !DILocalVariable(name: "__dest", arg: 1, scope: !3569, file: !1741, line: 26, type: !3572)
!3569 = distinct !DISubprogram(name: "memcpy", scope: !1741, file: !1741, line: 26, type: !3570, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3573)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!37, !3572, !895, !40}
!3572 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!3573 = !{!3568, !3574, !3575}
!3574 = !DILocalVariable(name: "__src", arg: 2, scope: !3569, file: !1741, line: 26, type: !895)
!3575 = !DILocalVariable(name: "__len", arg: 3, scope: !3569, file: !1741, line: 26, type: !40)
!3576 = !DILocation(line: 0, scope: !3569, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 312, column: 10, scope: !3553)
!3578 = !DILocation(line: 29, column: 10, scope: !3569, inlinedAt: !3577)
!3579 = !DILocation(line: 312, column: 3, scope: !3553)
!3580 = distinct !DISubprogram(name: "ximemdup", scope: !595, file: !595, line: 316, type: !3581, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!37, !896, !614}
!3583 = !{!3584, !3585}
!3584 = !DILocalVariable(name: "p", arg: 1, scope: !3580, file: !595, line: 316, type: !896)
!3585 = !DILocalVariable(name: "s", arg: 2, scope: !3580, file: !595, line: 316, type: !614)
!3586 = !DILocation(line: 0, scope: !3580)
!3587 = !DILocation(line: 0, scope: !3262, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 318, column: 18, scope: !3580)
!3589 = !DILocation(line: 0, scope: !3269, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 55, column: 25, scope: !3262, inlinedAt: !3588)
!3591 = !DILocation(line: 57, column: 26, scope: !3269, inlinedAt: !3590)
!3592 = !DILocation(line: 0, scope: !3230, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 55, column: 10, scope: !3262, inlinedAt: !3588)
!3594 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3593)
!3595 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3593)
!3596 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3593)
!3597 = !DILocation(line: 0, scope: !3569, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 318, column: 10, scope: !3580)
!3599 = !DILocation(line: 29, column: 10, scope: !3569, inlinedAt: !3598)
!3600 = !DILocation(line: 318, column: 3, scope: !3580)
!3601 = distinct !DISubprogram(name: "ximemdup0", scope: !595, file: !595, line: 325, type: !3602, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!35, !896, !614}
!3604 = !{!3605, !3606, !3607}
!3605 = !DILocalVariable(name: "p", arg: 1, scope: !3601, file: !595, line: 325, type: !896)
!3606 = !DILocalVariable(name: "s", arg: 2, scope: !3601, file: !595, line: 325, type: !614)
!3607 = !DILocalVariable(name: "result", scope: !3601, file: !595, line: 327, type: !35)
!3608 = !DILocation(line: 0, scope: !3601)
!3609 = !DILocation(line: 327, column: 30, scope: !3601)
!3610 = !DILocation(line: 0, scope: !3262, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 327, column: 18, scope: !3601)
!3612 = !DILocation(line: 0, scope: !3269, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 55, column: 25, scope: !3262, inlinedAt: !3611)
!3614 = !DILocation(line: 57, column: 26, scope: !3269, inlinedAt: !3613)
!3615 = !DILocation(line: 0, scope: !3230, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 55, column: 10, scope: !3262, inlinedAt: !3611)
!3617 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3616)
!3618 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3616)
!3619 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3616)
!3620 = !DILocation(line: 328, column: 3, scope: !3601)
!3621 = !DILocation(line: 328, column: 13, scope: !3601)
!3622 = !DILocation(line: 0, scope: !3569, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 329, column: 10, scope: !3601)
!3624 = !DILocation(line: 29, column: 10, scope: !3569, inlinedAt: !3623)
!3625 = !DILocation(line: 329, column: 3, scope: !3601)
!3626 = distinct !DISubprogram(name: "xstrdup", scope: !595, file: !595, line: 335, type: !890, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !594, retainedNodes: !3627)
!3627 = !{!3628}
!3628 = !DILocalVariable(name: "string", arg: 1, scope: !3626, file: !595, line: 335, type: !43)
!3629 = !DILocation(line: 0, scope: !3626)
!3630 = !DILocation(line: 337, column: 27, scope: !3626)
!3631 = !DILocation(line: 337, column: 43, scope: !3626)
!3632 = !DILocation(line: 0, scope: !3553, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 337, column: 10, scope: !3626)
!3634 = !DILocation(line: 0, scope: !3249, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 312, column: 18, scope: !3553, inlinedAt: !3633)
!3636 = !DILocation(line: 49, column: 25, scope: !3249, inlinedAt: !3635)
!3637 = !DILocation(line: 0, scope: !3230, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 49, column: 10, scope: !3249, inlinedAt: !3635)
!3639 = !DILocation(line: 39, column: 8, scope: !3237, inlinedAt: !3638)
!3640 = !DILocation(line: 39, column: 7, scope: !3230, inlinedAt: !3638)
!3641 = !DILocation(line: 40, column: 5, scope: !3237, inlinedAt: !3638)
!3642 = !DILocation(line: 0, scope: !3569, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 312, column: 10, scope: !3553, inlinedAt: !3633)
!3644 = !DILocation(line: 29, column: 10, scope: !3569, inlinedAt: !3643)
!3645 = !DILocation(line: 337, column: 3, scope: !3626)
!3646 = distinct !DISubprogram(name: "xalloc_die", scope: !629, file: !629, line: 32, type: !197, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !3647)
!3647 = !{!3648}
!3648 = !DILocalVariable(name: "__errstatus", scope: !3649, file: !629, line: 34, type: !3650)
!3649 = distinct !DILexicalBlock(scope: !3646, file: !629, line: 34, column: 3)
!3650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3651 = !DILocation(line: 34, column: 3, scope: !3649)
!3652 = !DILocation(line: 0, scope: !3649)
!3653 = !DILocation(line: 40, column: 3, scope: !3646)
!3654 = distinct !DISubprogram(name: "xnumtoumax", scope: !3655, file: !3655, line: 42, type: !3656, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3658)
!3655 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!645, !43, !38, !645, !645, !43, !43, !38, !38}
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3671, !3672, !3673}
!3659 = !DILocalVariable(name: "n_str", arg: 1, scope: !3654, file: !3655, line: 42, type: !43)
!3660 = !DILocalVariable(name: "base", arg: 2, scope: !3654, file: !3655, line: 42, type: !38)
!3661 = !DILocalVariable(name: "min", arg: 3, scope: !3654, file: !3655, line: 42, type: !645)
!3662 = !DILocalVariable(name: "max", arg: 4, scope: !3654, file: !3655, line: 42, type: !645)
!3663 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3654, file: !3655, line: 43, type: !43)
!3664 = !DILocalVariable(name: "err", arg: 6, scope: !3654, file: !3655, line: 43, type: !43)
!3665 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3654, file: !3655, line: 43, type: !38)
!3666 = !DILocalVariable(name: "flags", arg: 8, scope: !3654, file: !3655, line: 44, type: !38)
!3667 = !DILocalVariable(name: "tnum", scope: !3654, file: !3655, line: 46, type: !645)
!3668 = !DILocalVariable(name: "r", scope: !3654, file: !3655, line: 46, type: !645)
!3669 = !DILocalVariable(name: "s_err", scope: !3654, file: !3655, line: 47, type: !3670)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !634, line: 43, baseType: !633)
!3671 = !DILocalVariable(name: "overflow_errno", scope: !3654, file: !3655, line: 50, type: !38)
!3672 = !DILocalVariable(name: "e", scope: !3654, file: !3655, line: 75, type: !38)
!3673 = !DILocalVariable(name: "__errstatus", scope: !3674, file: !3655, line: 80, type: !3650)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !3655, line: 80, column: 5)
!3675 = distinct !DILexicalBlock(scope: !3654, file: !3655, line: 77, column: 7)
!3676 = !DILocation(line: 0, scope: !3654)
!3677 = !DILocation(line: 46, column: 3, scope: !3654)
!3678 = !DILocation(line: 47, column: 24, scope: !3654)
!3679 = !DILocation(line: 52, column: 13, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3654, file: !3655, line: 52, column: 7)
!3681 = !DILocation(line: 52, column: 7, scope: !3654)
!3682 = !DILocation(line: 54, column: 11, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !3655, line: 54, column: 11)
!3684 = distinct !DILexicalBlock(scope: !3680, file: !3655, line: 53, column: 5)
!3685 = !DILocation(line: 54, column: 16, scope: !3683)
!3686 = !DILocation(line: 54, column: 11, scope: !3684)
!3687 = !DILocation(line: 57, column: 34, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3683, file: !3655, line: 55, column: 9)
!3689 = !DILocation(line: 57, column: 28, scope: !3688)
!3690 = !DILocation(line: 58, column: 21, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3688, file: !3655, line: 58, column: 15)
!3692 = !DILocation(line: 0, scope: !3688)
!3693 = !DILocation(line: 61, column: 20, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3683, file: !3655, line: 61, column: 16)
!3695 = !DILocation(line: 61, column: 16, scope: !3683)
!3696 = !DILocation(line: 64, column: 34, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3694, file: !3655, line: 62, column: 9)
!3698 = !DILocation(line: 64, column: 28, scope: !3697)
!3699 = !DILocation(line: 65, column: 21, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3697, file: !3655, line: 65, column: 15)
!3701 = !DILocation(line: 0, scope: !3697)
!3702 = !DILocation(line: 75, column: 17, scope: !3654)
!3703 = !DILocation(line: 75, column: 11, scope: !3654)
!3704 = !DILocation(line: 77, column: 16, scope: !3675)
!3705 = !DILocation(line: 78, column: 10, scope: !3675)
!3706 = !DILocation(line: 79, column: 14, scope: !3675)
!3707 = !DILocation(line: 80, column: 5, scope: !3675)
!3708 = !DILocation(line: 0, scope: !3675)
!3709 = !DILocation(line: 82, column: 3, scope: !3654)
!3710 = !DILocation(line: 82, column: 9, scope: !3654)
!3711 = !DILocation(line: 84, column: 1, scope: !3654)
!3712 = !DILocation(line: 83, column: 3, scope: !3654)
!3713 = distinct !DISubprogram(name: "xdectoumax", scope: !3655, file: !3655, line: 92, type: !3714, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!645, !43, !645, !645, !43, !43, !38}
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722}
!3717 = !DILocalVariable(name: "n_str", arg: 1, scope: !3713, file: !3655, line: 92, type: !43)
!3718 = !DILocalVariable(name: "min", arg: 2, scope: !3713, file: !3655, line: 92, type: !645)
!3719 = !DILocalVariable(name: "max", arg: 3, scope: !3713, file: !3655, line: 92, type: !645)
!3720 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3713, file: !3655, line: 93, type: !43)
!3721 = !DILocalVariable(name: "err", arg: 5, scope: !3713, file: !3655, line: 93, type: !43)
!3722 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3713, file: !3655, line: 93, type: !38)
!3723 = !DILocation(line: 0, scope: !3713)
!3724 = !DILocation(line: 0, scope: !3654, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 95, column: 10, scope: !3713)
!3726 = !DILocation(line: 46, column: 3, scope: !3654, inlinedAt: !3725)
!3727 = !DILocation(line: 47, column: 24, scope: !3654, inlinedAt: !3725)
!3728 = !DILocation(line: 52, column: 13, scope: !3680, inlinedAt: !3725)
!3729 = !DILocation(line: 52, column: 7, scope: !3654, inlinedAt: !3725)
!3730 = !DILocation(line: 54, column: 11, scope: !3683, inlinedAt: !3725)
!3731 = !DILocation(line: 54, column: 16, scope: !3683, inlinedAt: !3725)
!3732 = !DILocation(line: 54, column: 11, scope: !3684, inlinedAt: !3725)
!3733 = !DILocation(line: 58, column: 21, scope: !3691, inlinedAt: !3725)
!3734 = !DILocation(line: 0, scope: !3688, inlinedAt: !3725)
!3735 = !DILocation(line: 61, column: 20, scope: !3694, inlinedAt: !3725)
!3736 = !DILocation(line: 61, column: 16, scope: !3683, inlinedAt: !3725)
!3737 = !DILocation(line: 65, column: 21, scope: !3700, inlinedAt: !3725)
!3738 = !DILocation(line: 0, scope: !3697, inlinedAt: !3725)
!3739 = !DILocation(line: 75, column: 17, scope: !3654, inlinedAt: !3725)
!3740 = !DILocation(line: 75, column: 11, scope: !3654, inlinedAt: !3725)
!3741 = !DILocation(line: 77, column: 16, scope: !3675, inlinedAt: !3725)
!3742 = !DILocation(line: 78, column: 10, scope: !3675, inlinedAt: !3725)
!3743 = !DILocation(line: 80, column: 5, scope: !3675, inlinedAt: !3725)
!3744 = !DILocation(line: 0, scope: !3675, inlinedAt: !3725)
!3745 = !DILocation(line: 82, column: 3, scope: !3654, inlinedAt: !3725)
!3746 = !DILocation(line: 82, column: 9, scope: !3654, inlinedAt: !3725)
!3747 = !DILocation(line: 84, column: 1, scope: !3654, inlinedAt: !3725)
!3748 = !DILocation(line: 95, column: 3, scope: !3713)
!3749 = distinct !DISubprogram(name: "xstrtoumax", scope: !3750, file: !3750, line: 71, type: !3751, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !3754)
!3750 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!3670, !43, !901, !38, !3753, !43}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3765, !3766, !3767, !3768, !3771, !3772}
!3755 = !DILocalVariable(name: "nptr", arg: 1, scope: !3749, file: !3750, line: 71, type: !43)
!3756 = !DILocalVariable(name: "endptr", arg: 2, scope: !3749, file: !3750, line: 71, type: !901)
!3757 = !DILocalVariable(name: "base", arg: 3, scope: !3749, file: !3750, line: 71, type: !38)
!3758 = !DILocalVariable(name: "val", arg: 4, scope: !3749, file: !3750, line: 72, type: !3753)
!3759 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3749, file: !3750, line: 72, type: !43)
!3760 = !DILocalVariable(name: "t_ptr", scope: !3749, file: !3750, line: 74, type: !35)
!3761 = !DILocalVariable(name: "p", scope: !3749, file: !3750, line: 75, type: !901)
!3762 = !DILocalVariable(name: "q", scope: !3763, file: !3750, line: 79, type: !43)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3750, line: 78, column: 5)
!3764 = distinct !DILexicalBlock(scope: !3749, file: !3750, line: 77, column: 7)
!3765 = !DILocalVariable(name: "ch", scope: !3763, file: !3750, line: 80, type: !45)
!3766 = !DILocalVariable(name: "tmp", scope: !3749, file: !3750, line: 91, type: !645)
!3767 = !DILocalVariable(name: "err", scope: !3749, file: !3750, line: 92, type: !3670)
!3768 = !DILocalVariable(name: "xbase", scope: !3769, file: !3750, line: 126, type: !38)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !3750, line: 119, column: 5)
!3770 = distinct !DILexicalBlock(scope: !3749, file: !3750, line: 118, column: 7)
!3771 = !DILocalVariable(name: "suffixes", scope: !3769, file: !3750, line: 127, type: !38)
!3772 = !DILocalVariable(name: "overflow", scope: !3769, file: !3750, line: 156, type: !3670)
!3773 = !DILocation(line: 0, scope: !3749)
!3774 = !DILocation(line: 74, column: 3, scope: !3749)
!3775 = !DILocation(line: 75, column: 14, scope: !3749)
!3776 = !DILocation(line: 0, scope: !3763)
!3777 = !DILocation(line: 81, column: 7, scope: !3763)
!3778 = !DILocation(line: 81, column: 14, scope: !3763)
!3779 = !DILocation(line: 82, column: 15, scope: !3763)
!3780 = distinct !{!3780, !3777, !3781, !744}
!3781 = !DILocation(line: 82, column: 17, scope: !3763)
!3782 = !DILocation(line: 83, column: 14, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3763, file: !3750, line: 83, column: 11)
!3784 = !DILocation(line: 83, column: 11, scope: !3763)
!3785 = !DILocation(line: 85, column: 14, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3783, file: !3750, line: 84, column: 9)
!3787 = !DILocation(line: 90, column: 3, scope: !3749)
!3788 = !DILocation(line: 90, column: 9, scope: !3749)
!3789 = !DILocation(line: 91, column: 20, scope: !3749)
!3790 = !DILocation(line: 94, column: 7, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3749, file: !3750, line: 94, column: 7)
!3792 = !DILocation(line: 94, column: 10, scope: !3791)
!3793 = !DILocation(line: 94, column: 7, scope: !3749)
!3794 = !DILocation(line: 98, column: 14, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !3750, line: 98, column: 11)
!3796 = distinct !DILexicalBlock(scope: !3791, file: !3750, line: 95, column: 5)
!3797 = !DILocation(line: 98, column: 29, scope: !3795)
!3798 = !DILocation(line: 98, column: 32, scope: !3795)
!3799 = !DILocation(line: 98, column: 38, scope: !3795)
!3800 = !DILocation(line: 98, column: 41, scope: !3795)
!3801 = !DILocation(line: 98, column: 11, scope: !3796)
!3802 = !DILocation(line: 102, column: 12, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3791, file: !3750, line: 102, column: 12)
!3804 = !DILocation(line: 102, column: 12, scope: !3791)
!3805 = !DILocation(line: 107, column: 5, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !3750, line: 103, column: 5)
!3807 = !DILocation(line: 112, column: 8, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3749, file: !3750, line: 112, column: 7)
!3809 = !DILocation(line: 112, column: 7, scope: !3749)
!3810 = !DILocation(line: 114, column: 12, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3808, file: !3750, line: 113, column: 5)
!3812 = !DILocation(line: 115, column: 7, scope: !3811)
!3813 = !DILocation(line: 118, column: 7, scope: !3770)
!3814 = !DILocation(line: 118, column: 11, scope: !3770)
!3815 = !DILocation(line: 118, column: 7, scope: !3749)
!3816 = !DILocation(line: 120, column: 12, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3769, file: !3750, line: 120, column: 11)
!3818 = !DILocation(line: 120, column: 11, scope: !3769)
!3819 = !DILocation(line: 122, column: 16, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3817, file: !3750, line: 121, column: 9)
!3821 = !DILocation(line: 123, column: 22, scope: !3820)
!3822 = !DILocation(line: 123, column: 11, scope: !3820)
!3823 = !DILocation(line: 0, scope: !3769)
!3824 = !DILocation(line: 128, column: 7, scope: !3769)
!3825 = !DILocation(line: 140, column: 15, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !3750, line: 140, column: 15)
!3827 = distinct !DILexicalBlock(scope: !3769, file: !3750, line: 129, column: 9)
!3828 = !DILocation(line: 140, column: 15, scope: !3827)
!3829 = !DILocation(line: 141, column: 21, scope: !3826)
!3830 = !DILocation(line: 141, column: 13, scope: !3826)
!3831 = !DILocation(line: 144, column: 21, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !3750, line: 144, column: 21)
!3833 = distinct !DILexicalBlock(scope: !3826, file: !3750, line: 142, column: 15)
!3834 = !DILocation(line: 144, column: 29, scope: !3832)
!3835 = !DILocation(line: 144, column: 21, scope: !3833)
!3836 = !DILocation(line: 152, column: 17, scope: !3833)
!3837 = !DILocation(line: 157, column: 7, scope: !3769)
!3838 = !DILocalVariable(name: "err", scope: !3839, file: !3750, line: 64, type: !3670)
!3839 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3750, file: !3750, line: 62, type: !3840, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!3670, !3753, !38, !38}
!3842 = !{!3843, !3844, !3845, !3838}
!3843 = !DILocalVariable(name: "x", arg: 1, scope: !3839, file: !3750, line: 62, type: !3753)
!3844 = !DILocalVariable(name: "base", arg: 2, scope: !3839, file: !3750, line: 62, type: !38)
!3845 = !DILocalVariable(name: "power", arg: 3, scope: !3839, file: !3750, line: 62, type: !38)
!3846 = !DILocation(line: 0, scope: !3839, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 219, column: 22, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3769, file: !3750, line: 158, column: 9)
!3849 = !DILocalVariable(name: "x", arg: 1, scope: !3850, file: !3750, line: 47, type: !3753)
!3850 = distinct !DISubprogram(name: "bkm_scale", scope: !3750, file: !3750, line: 47, type: !3851, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!3670, !3753, !38}
!3853 = !{!3849, !3854, !3855}
!3854 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3850, file: !3750, line: 47, type: !38)
!3855 = !DILocalVariable(name: "scaled", scope: !3850, file: !3750, line: 49, type: !645)
!3856 = !DILocation(line: 0, scope: !3850, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 66, column: 12, scope: !3839, inlinedAt: !3847)
!3858 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3857)
!3859 = distinct !DILexicalBlock(scope: !3850, file: !3750, line: 50, column: 7)
!3860 = !DILocation(line: 66, column: 9, scope: !3839, inlinedAt: !3847)
!3861 = !DILocation(line: 227, column: 11, scope: !3769)
!3862 = !DILocation(line: 0, scope: !3839, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 215, column: 22, scope: !3848)
!3864 = !DILocation(line: 0, scope: !3850, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 66, column: 12, scope: !3839, inlinedAt: !3863)
!3866 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3865)
!3867 = !DILocation(line: 66, column: 9, scope: !3839, inlinedAt: !3863)
!3868 = !DILocation(line: 0, scope: !3839, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 202, column: 22, scope: !3848)
!3870 = !DILocation(line: 0, scope: !3850, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 66, column: 12, scope: !3839, inlinedAt: !3869)
!3872 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3871)
!3873 = !DILocation(line: 66, column: 9, scope: !3839, inlinedAt: !3869)
!3874 = !DILocation(line: 0, scope: !3839, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 198, column: 22, scope: !3848)
!3876 = !DILocation(line: 0, scope: !3850, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 66, column: 12, scope: !3839, inlinedAt: !3875)
!3878 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3877)
!3879 = !DILocation(line: 66, column: 9, scope: !3839, inlinedAt: !3875)
!3880 = !DILocation(line: 0, scope: !3839, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 194, column: 22, scope: !3848)
!3882 = !DILocation(line: 0, scope: !3850, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 66, column: 12, scope: !3839, inlinedAt: !3881)
!3884 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3883)
!3885 = !DILocation(line: 66, column: 9, scope: !3839, inlinedAt: !3881)
!3886 = !DILocation(line: 0, scope: !3839, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 175, column: 22, scope: !3848)
!3888 = !DILocation(line: 0, scope: !3850, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 66, column: 12, scope: !3839, inlinedAt: !3887)
!3890 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3889)
!3891 = !DILocation(line: 66, column: 9, scope: !3839, inlinedAt: !3887)
!3892 = !DILocation(line: 0, scope: !3850, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 160, column: 22, scope: !3848)
!3894 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3893)
!3895 = !DILocation(line: 161, column: 11, scope: !3848)
!3896 = !DILocation(line: 0, scope: !3850, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 167, column: 22, scope: !3848)
!3898 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3897)
!3899 = !DILocation(line: 168, column: 11, scope: !3848)
!3900 = !DILocation(line: 0, scope: !3839, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 180, column: 22, scope: !3848)
!3902 = !DILocation(line: 0, scope: !3850, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 66, column: 12, scope: !3839, inlinedAt: !3901)
!3904 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3903)
!3905 = !DILocation(line: 66, column: 9, scope: !3839, inlinedAt: !3901)
!3906 = !DILocation(line: 0, scope: !3839, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 185, column: 22, scope: !3848)
!3908 = !DILocation(line: 0, scope: !3850, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 66, column: 12, scope: !3839, inlinedAt: !3907)
!3910 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3909)
!3911 = !DILocation(line: 0, scope: !3839, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 190, column: 22, scope: !3848)
!3913 = !DILocation(line: 0, scope: !3850, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 66, column: 12, scope: !3839, inlinedAt: !3912)
!3915 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3914)
!3916 = !DILocation(line: 66, column: 9, scope: !3839, inlinedAt: !3912)
!3917 = !DILocation(line: 0, scope: !3839, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 207, column: 22, scope: !3848)
!3919 = !DILocation(line: 0, scope: !3850, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 66, column: 12, scope: !3839, inlinedAt: !3918)
!3921 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3920)
!3922 = !DILocation(line: 66, column: 9, scope: !3839, inlinedAt: !3918)
!3923 = !DILocation(line: 0, scope: !3850, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 211, column: 22, scope: !3848)
!3925 = !DILocation(line: 50, column: 7, scope: !3859, inlinedAt: !3924)
!3926 = !DILocation(line: 212, column: 11, scope: !3848)
!3927 = !DILocation(line: 0, scope: !3848)
!3928 = !DILocation(line: 228, column: 10, scope: !3769)
!3929 = !DILocation(line: 229, column: 11, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3769, file: !3750, line: 229, column: 11)
!3931 = !DILocation(line: 229, column: 11, scope: !3769)
!3932 = !DILocation(line: 223, column: 16, scope: !3848)
!3933 = !DILocation(line: 224, column: 22, scope: !3848)
!3934 = !DILocation(line: 100, column: 11, scope: !3796)
!3935 = !DILocation(line: 92, column: 16, scope: !3749)
!3936 = !DILocation(line: 233, column: 8, scope: !3749)
!3937 = !DILocation(line: 234, column: 3, scope: !3749)
!3938 = !DILocation(line: 235, column: 1, scope: !3749)
!3939 = !DISubprogram(name: "strtoumax", scope: !3940, file: !3940, line: 301, type: !3941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!3940 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!645, !774, !3943, !38}
!3943 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !901)
!3944 = distinct !DISubprogram(name: "rpl_fopen", scope: !649, file: !649, line: 46, type: !3945, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !3981)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!3947, !43, !43}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !3949)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3949, file: !77, line: 51, baseType: !38, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3949, file: !77, line: 54, baseType: !35, size: 64, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3949, file: !77, line: 55, baseType: !35, size: 64, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3949, file: !77, line: 56, baseType: !35, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3949, file: !77, line: 57, baseType: !35, size: 64, offset: 256)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3949, file: !77, line: 58, baseType: !35, size: 64, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3949, file: !77, line: 59, baseType: !35, size: 64, offset: 384)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3949, file: !77, line: 60, baseType: !35, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3949, file: !77, line: 61, baseType: !35, size: 64, offset: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3949, file: !77, line: 64, baseType: !35, size: 64, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3949, file: !77, line: 65, baseType: !35, size: 64, offset: 640)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3949, file: !77, line: 66, baseType: !35, size: 64, offset: 704)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3949, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3949, file: !77, line: 70, baseType: !3965, size: 64, offset: 832)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3949, file: !77, line: 72, baseType: !38, size: 32, offset: 896)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3949, file: !77, line: 73, baseType: !38, size: 32, offset: 928)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3949, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3949, file: !77, line: 77, baseType: !39, size: 16, offset: 1024)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3949, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3949, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3949, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3949, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3949, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3949, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3949, file: !77, line: 93, baseType: !3965, size: 64, offset: 1344)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3949, file: !77, line: 94, baseType: !37, size: 64, offset: 1408)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3949, file: !77, line: 95, baseType: !40, size: 64, offset: 1472)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3949, file: !77, line: 96, baseType: !38, size: 32, offset: 1536)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3949, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987, !3991, !3993, !3994, !3999, !4002, !4003}
!3982 = !DILocalVariable(name: "filename", arg: 1, scope: !3944, file: !649, line: 46, type: !43)
!3983 = !DILocalVariable(name: "mode", arg: 2, scope: !3944, file: !649, line: 46, type: !43)
!3984 = !DILocalVariable(name: "open_direction", scope: !3944, file: !649, line: 54, type: !38)
!3985 = !DILocalVariable(name: "open_flags", scope: !3944, file: !649, line: 55, type: !38)
!3986 = !DILocalVariable(name: "open_flags_gnu", scope: !3944, file: !649, line: 57, type: !60)
!3987 = !DILocalVariable(name: "fdopen_mode_buf", scope: !3944, file: !649, line: 59, type: !3988)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 648, elements: !3989)
!3989 = !{!3990}
!3990 = !DISubrange(count: 81)
!3991 = !DILocalVariable(name: "p", scope: !3992, file: !649, line: 62, type: !43)
!3992 = distinct !DILexicalBlock(scope: !3944, file: !649, line: 61, column: 3)
!3993 = !DILocalVariable(name: "q", scope: !3992, file: !649, line: 64, type: !35)
!3994 = !DILocalVariable(name: "len", scope: !3995, file: !649, line: 128, type: !40)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !649, line: 127, column: 9)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !649, line: 68, column: 7)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !649, line: 67, column: 5)
!3998 = distinct !DILexicalBlock(scope: !3992, file: !649, line: 67, column: 5)
!3999 = !DILocalVariable(name: "fd", scope: !4000, file: !649, line: 199, type: !38)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !649, line: 198, column: 5)
!4001 = distinct !DILexicalBlock(scope: !3944, file: !649, line: 197, column: 7)
!4002 = !DILocalVariable(name: "fp", scope: !4000, file: !649, line: 204, type: !3947)
!4003 = !DILocalVariable(name: "saved_errno", scope: !4004, file: !649, line: 207, type: !38)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !649, line: 206, column: 9)
!4005 = distinct !DILexicalBlock(scope: !4000, file: !649, line: 205, column: 11)
!4006 = !DILocation(line: 0, scope: !3944)
!4007 = !DILocation(line: 59, column: 3, scope: !3944)
!4008 = !DILocation(line: 59, column: 8, scope: !3944)
!4009 = !DILocation(line: 0, scope: !3992)
!4010 = !DILocation(line: 67, column: 5, scope: !3992)
!4011 = !DILocation(line: 64, column: 11, scope: !3992)
!4012 = !DILocation(line: 54, column: 7, scope: !3944)
!4013 = !DILocation(line: 67, column: 12, scope: !3997)
!4014 = !DILocation(line: 67, column: 5, scope: !3998)
!4015 = !DILocation(line: 74, column: 19, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !649, line: 74, column: 17)
!4017 = distinct !DILexicalBlock(scope: !3996, file: !649, line: 70, column: 11)
!4018 = !DILocation(line: 74, column: 17, scope: !4017)
!4019 = !DILocation(line: 75, column: 17, scope: !4016)
!4020 = !DILocation(line: 75, column: 20, scope: !4016)
!4021 = !DILocation(line: 75, column: 15, scope: !4016)
!4022 = !DILocation(line: 80, column: 24, scope: !4017)
!4023 = !DILocation(line: 82, column: 19, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4017, file: !649, line: 82, column: 17)
!4025 = !DILocation(line: 82, column: 17, scope: !4017)
!4026 = !DILocation(line: 83, column: 17, scope: !4024)
!4027 = !DILocation(line: 83, column: 20, scope: !4024)
!4028 = !DILocation(line: 83, column: 15, scope: !4024)
!4029 = !DILocation(line: 88, column: 24, scope: !4017)
!4030 = !DILocation(line: 90, column: 19, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4017, file: !649, line: 90, column: 17)
!4032 = !DILocation(line: 90, column: 17, scope: !4017)
!4033 = !DILocation(line: 91, column: 17, scope: !4031)
!4034 = !DILocation(line: 91, column: 20, scope: !4031)
!4035 = !DILocation(line: 91, column: 15, scope: !4031)
!4036 = !DILocation(line: 100, column: 19, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4017, file: !649, line: 100, column: 17)
!4038 = !DILocation(line: 100, column: 17, scope: !4017)
!4039 = !DILocation(line: 101, column: 17, scope: !4037)
!4040 = !DILocation(line: 101, column: 20, scope: !4037)
!4041 = !DILocation(line: 101, column: 15, scope: !4037)
!4042 = !DILocation(line: 107, column: 19, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4017, file: !649, line: 107, column: 17)
!4044 = !DILocation(line: 107, column: 17, scope: !4017)
!4045 = !DILocation(line: 108, column: 17, scope: !4043)
!4046 = !DILocation(line: 108, column: 20, scope: !4043)
!4047 = !DILocation(line: 108, column: 15, scope: !4043)
!4048 = !DILocation(line: 113, column: 24, scope: !4017)
!4049 = !DILocation(line: 115, column: 13, scope: !4017)
!4050 = !DILocation(line: 117, column: 24, scope: !4017)
!4051 = !DILocation(line: 119, column: 13, scope: !4017)
!4052 = !DILocation(line: 128, column: 24, scope: !3995)
!4053 = !DILocation(line: 0, scope: !3995)
!4054 = !DILocation(line: 129, column: 48, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !3995, file: !649, line: 129, column: 15)
!4056 = !DILocation(line: 129, column: 19, scope: !4055)
!4057 = !DILocation(line: 129, column: 15, scope: !3995)
!4058 = !DILocalVariable(name: "__dest", arg: 1, scope: !4059, file: !1741, line: 26, type: !3572)
!4059 = distinct !DISubprogram(name: "memcpy", scope: !1741, file: !1741, line: 26, type: !3570, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4060)
!4060 = !{!4058, !4061, !4062}
!4061 = !DILocalVariable(name: "__src", arg: 2, scope: !4059, file: !1741, line: 26, type: !895)
!4062 = !DILocalVariable(name: "__len", arg: 3, scope: !4059, file: !1741, line: 26, type: !40)
!4063 = !DILocation(line: 0, scope: !4059, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 131, column: 11, scope: !3995)
!4065 = !DILocation(line: 29, column: 10, scope: !4059, inlinedAt: !4064)
!4066 = !DILocation(line: 132, column: 13, scope: !3995)
!4067 = !DILocation(line: 135, column: 9, scope: !3996)
!4068 = !DILocation(line: 67, column: 25, scope: !3997)
!4069 = !DILocation(line: 67, column: 5, scope: !3997)
!4070 = distinct !{!4070, !4014, !4071, !744}
!4071 = !DILocation(line: 136, column: 7, scope: !3998)
!4072 = !DILocation(line: 138, column: 8, scope: !3992)
!4073 = !DILocation(line: 197, column: 7, scope: !3944)
!4074 = !DILocation(line: 199, column: 47, scope: !4000)
!4075 = !DILocation(line: 199, column: 16, scope: !4000)
!4076 = !DILocation(line: 0, scope: !4000)
!4077 = !DILocation(line: 201, column: 14, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4000, file: !649, line: 201, column: 11)
!4079 = !DILocation(line: 201, column: 11, scope: !4000)
!4080 = !DILocation(line: 204, column: 18, scope: !4000)
!4081 = !DILocation(line: 205, column: 14, scope: !4005)
!4082 = !DILocation(line: 205, column: 11, scope: !4000)
!4083 = !DILocation(line: 207, column: 29, scope: !4004)
!4084 = !DILocation(line: 0, scope: !4004)
!4085 = !DILocation(line: 208, column: 11, scope: !4004)
!4086 = !DILocation(line: 209, column: 17, scope: !4004)
!4087 = !DILocation(line: 210, column: 9, scope: !4004)
!4088 = !DILocalVariable(name: "filename", arg: 1, scope: !4089, file: !649, line: 30, type: !43)
!4089 = distinct !DISubprogram(name: "orig_fopen", scope: !649, file: !649, line: 30, type: !3945, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !648, retainedNodes: !4090)
!4090 = !{!4088, !4091}
!4091 = !DILocalVariable(name: "mode", arg: 2, scope: !4089, file: !649, line: 30, type: !43)
!4092 = !DILocation(line: 0, scope: !4089, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 219, column: 10, scope: !3944)
!4094 = !DILocation(line: 32, column: 10, scope: !4089, inlinedAt: !4093)
!4095 = !DILocation(line: 219, column: 3, scope: !3944)
!4096 = !DILocation(line: 220, column: 1, scope: !3944)
!4097 = !DISubprogram(name: "open", scope: !1157, file: !1157, line: 181, type: !4098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!38, !43, !38, null}
!4100 = !DISubprogram(name: "fdopen", scope: !170, file: !170, line: 293, type: !4101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!3947, !38, !43}
!4103 = !DISubprogram(name: "close", scope: !1611, file: !1611, line: 358, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!4104 = distinct !DISubprogram(name: "close_stream", scope: !651, file: !651, line: 55, type: !4105, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !4141)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!38, !4107}
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !4109)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4109, file: !77, line: 51, baseType: !38, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4109, file: !77, line: 54, baseType: !35, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4109, file: !77, line: 55, baseType: !35, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4109, file: !77, line: 56, baseType: !35, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4109, file: !77, line: 57, baseType: !35, size: 64, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4109, file: !77, line: 58, baseType: !35, size: 64, offset: 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4109, file: !77, line: 59, baseType: !35, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4109, file: !77, line: 60, baseType: !35, size: 64, offset: 448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4109, file: !77, line: 61, baseType: !35, size: 64, offset: 512)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4109, file: !77, line: 64, baseType: !35, size: 64, offset: 576)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4109, file: !77, line: 65, baseType: !35, size: 64, offset: 640)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4109, file: !77, line: 66, baseType: !35, size: 64, offset: 704)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4109, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4109, file: !77, line: 70, baseType: !4125, size: 64, offset: 832)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4109, file: !77, line: 72, baseType: !38, size: 32, offset: 896)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4109, file: !77, line: 73, baseType: !38, size: 32, offset: 928)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4109, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4109, file: !77, line: 77, baseType: !39, size: 16, offset: 1024)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4109, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4109, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4109, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4109, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4109, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4109, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4109, file: !77, line: 93, baseType: !4125, size: 64, offset: 1344)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4109, file: !77, line: 94, baseType: !37, size: 64, offset: 1408)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4109, file: !77, line: 95, baseType: !40, size: 64, offset: 1472)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4109, file: !77, line: 96, baseType: !38, size: 32, offset: 1536)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4109, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!4141 = !{!4142, !4143, !4145, !4146}
!4142 = !DILocalVariable(name: "stream", arg: 1, scope: !4104, file: !651, line: 55, type: !4107)
!4143 = !DILocalVariable(name: "some_pending", scope: !4104, file: !651, line: 57, type: !4144)
!4144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!4145 = !DILocalVariable(name: "prev_fail", scope: !4104, file: !651, line: 58, type: !4144)
!4146 = !DILocalVariable(name: "fclose_fail", scope: !4104, file: !651, line: 59, type: !4144)
!4147 = !DILocation(line: 0, scope: !4104)
!4148 = !DILocation(line: 57, column: 30, scope: !4104)
!4149 = !DILocalVariable(name: "__stream", arg: 1, scope: !4150, file: !1130, line: 135, type: !4107)
!4150 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1130, file: !1130, line: 135, type: !4105, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !4151)
!4151 = !{!4149}
!4152 = !DILocation(line: 0, scope: !4150, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 58, column: 27, scope: !4104)
!4154 = !DILocation(line: 137, column: 10, scope: !4150, inlinedAt: !4153)
!4155 = !{!1139, !779, i64 0}
!4156 = !DILocation(line: 58, column: 43, scope: !4104)
!4157 = !DILocation(line: 59, column: 29, scope: !4104)
!4158 = !DILocation(line: 59, column: 45, scope: !4104)
!4159 = !DILocation(line: 69, column: 17, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4104, file: !651, line: 69, column: 7)
!4161 = !DILocation(line: 57, column: 50, scope: !4104)
!4162 = !DILocation(line: 69, column: 33, scope: !4160)
!4163 = !DILocation(line: 69, column: 53, scope: !4160)
!4164 = !DILocation(line: 69, column: 59, scope: !4160)
!4165 = !DILocation(line: 69, column: 7, scope: !4104)
!4166 = !DILocation(line: 71, column: 11, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4160, file: !651, line: 70, column: 5)
!4168 = !DILocation(line: 72, column: 9, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4167, file: !651, line: 71, column: 11)
!4170 = !DILocation(line: 72, column: 15, scope: !4169)
!4171 = !DILocation(line: 77, column: 1, scope: !4104)
!4172 = distinct !DISubprogram(name: "rpl_fclose", scope: !653, file: !653, line: 58, type: !4173, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !4209)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!38, !4175}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !4177)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !4178)
!4178 = !{!4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4177, file: !77, line: 51, baseType: !38, size: 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4177, file: !77, line: 54, baseType: !35, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4177, file: !77, line: 55, baseType: !35, size: 64, offset: 128)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4177, file: !77, line: 56, baseType: !35, size: 64, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4177, file: !77, line: 57, baseType: !35, size: 64, offset: 256)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4177, file: !77, line: 58, baseType: !35, size: 64, offset: 320)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4177, file: !77, line: 59, baseType: !35, size: 64, offset: 384)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4177, file: !77, line: 60, baseType: !35, size: 64, offset: 448)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4177, file: !77, line: 61, baseType: !35, size: 64, offset: 512)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4177, file: !77, line: 64, baseType: !35, size: 64, offset: 576)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4177, file: !77, line: 65, baseType: !35, size: 64, offset: 640)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4177, file: !77, line: 66, baseType: !35, size: 64, offset: 704)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4177, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4177, file: !77, line: 70, baseType: !4193, size: 64, offset: 832)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4177, file: !77, line: 72, baseType: !38, size: 32, offset: 896)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4177, file: !77, line: 73, baseType: !38, size: 32, offset: 928)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4177, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4177, file: !77, line: 77, baseType: !39, size: 16, offset: 1024)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4177, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4177, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4177, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4177, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4177, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4177, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4177, file: !77, line: 93, baseType: !4193, size: 64, offset: 1344)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4177, file: !77, line: 94, baseType: !37, size: 64, offset: 1408)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4177, file: !77, line: 95, baseType: !40, size: 64, offset: 1472)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4177, file: !77, line: 96, baseType: !38, size: 32, offset: 1536)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4177, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!4209 = !{!4210, !4211, !4212, !4213}
!4210 = !DILocalVariable(name: "fp", arg: 1, scope: !4172, file: !653, line: 58, type: !4175)
!4211 = !DILocalVariable(name: "saved_errno", scope: !4172, file: !653, line: 60, type: !38)
!4212 = !DILocalVariable(name: "fd", scope: !4172, file: !653, line: 63, type: !38)
!4213 = !DILocalVariable(name: "result", scope: !4172, file: !653, line: 74, type: !38)
!4214 = !DILocation(line: 0, scope: !4172)
!4215 = !DILocation(line: 63, column: 12, scope: !4172)
!4216 = !DILocation(line: 64, column: 10, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4172, file: !653, line: 64, column: 7)
!4218 = !DILocation(line: 64, column: 7, scope: !4172)
!4219 = !DILocation(line: 65, column: 12, scope: !4217)
!4220 = !DILocation(line: 65, column: 5, scope: !4217)
!4221 = !DILocation(line: 70, column: 9, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4172, file: !653, line: 70, column: 7)
!4223 = !DILocation(line: 70, column: 23, scope: !4222)
!4224 = !DILocation(line: 70, column: 33, scope: !4222)
!4225 = !DILocation(line: 70, column: 26, scope: !4222)
!4226 = !DILocation(line: 70, column: 59, scope: !4222)
!4227 = !DILocation(line: 71, column: 7, scope: !4222)
!4228 = !DILocation(line: 71, column: 10, scope: !4222)
!4229 = !DILocation(line: 70, column: 7, scope: !4172)
!4230 = !DILocation(line: 100, column: 12, scope: !4172)
!4231 = !DILocation(line: 105, column: 7, scope: !4172)
!4232 = !DILocation(line: 72, column: 19, scope: !4222)
!4233 = !DILocation(line: 105, column: 19, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4172, file: !653, line: 105, column: 7)
!4235 = !DILocation(line: 107, column: 13, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4234, file: !653, line: 106, column: 5)
!4237 = !DILocation(line: 109, column: 5, scope: !4236)
!4238 = !DILocation(line: 112, column: 1, scope: !4172)
!4239 = !DISubprogram(name: "fileno", scope: !170, file: !170, line: 809, type: !4173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!4240 = !DISubprogram(name: "fclose", scope: !170, file: !170, line: 178, type: !4173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!4241 = !DISubprogram(name: "lseek", scope: !1611, file: !1611, line: 339, type: !4242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!99, !38, !99, !38}
!4244 = distinct !DISubprogram(name: "rpl_fflush", scope: !655, file: !655, line: 130, type: !4245, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !4281)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!38, !4247}
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !4249)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !4250)
!4250 = !{!4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4249, file: !77, line: 51, baseType: !38, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4249, file: !77, line: 54, baseType: !35, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4249, file: !77, line: 55, baseType: !35, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4249, file: !77, line: 56, baseType: !35, size: 64, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4249, file: !77, line: 57, baseType: !35, size: 64, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4249, file: !77, line: 58, baseType: !35, size: 64, offset: 320)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4249, file: !77, line: 59, baseType: !35, size: 64, offset: 384)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4249, file: !77, line: 60, baseType: !35, size: 64, offset: 448)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4249, file: !77, line: 61, baseType: !35, size: 64, offset: 512)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4249, file: !77, line: 64, baseType: !35, size: 64, offset: 576)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4249, file: !77, line: 65, baseType: !35, size: 64, offset: 640)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4249, file: !77, line: 66, baseType: !35, size: 64, offset: 704)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4249, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4249, file: !77, line: 70, baseType: !4265, size: 64, offset: 832)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4249, file: !77, line: 72, baseType: !38, size: 32, offset: 896)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4249, file: !77, line: 73, baseType: !38, size: 32, offset: 928)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4249, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4249, file: !77, line: 77, baseType: !39, size: 16, offset: 1024)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4249, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4249, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4249, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4249, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4249, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4249, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4249, file: !77, line: 93, baseType: !4265, size: 64, offset: 1344)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4249, file: !77, line: 94, baseType: !37, size: 64, offset: 1408)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4249, file: !77, line: 95, baseType: !40, size: 64, offset: 1472)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4249, file: !77, line: 96, baseType: !38, size: 32, offset: 1536)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4249, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!4281 = !{!4282}
!4282 = !DILocalVariable(name: "stream", arg: 1, scope: !4244, file: !655, line: 130, type: !4247)
!4283 = !DILocation(line: 0, scope: !4244)
!4284 = !DILocation(line: 151, column: 14, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4244, file: !655, line: 151, column: 7)
!4286 = !DILocation(line: 151, column: 22, scope: !4285)
!4287 = !DILocation(line: 151, column: 27, scope: !4285)
!4288 = !DILocation(line: 151, column: 7, scope: !4244)
!4289 = !DILocation(line: 152, column: 12, scope: !4285)
!4290 = !DILocation(line: 152, column: 5, scope: !4285)
!4291 = !DILocalVariable(name: "fp", arg: 1, scope: !4292, file: !655, line: 42, type: !4247)
!4292 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !655, file: !655, line: 42, type: !4293, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !4295)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !4247}
!4295 = !{!4291}
!4296 = !DILocation(line: 0, scope: !4292, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 157, column: 3, scope: !4244)
!4298 = !DILocation(line: 44, column: 12, scope: !4299, inlinedAt: !4297)
!4299 = distinct !DILexicalBlock(scope: !4292, file: !655, line: 44, column: 7)
!4300 = !DILocation(line: 44, column: 19, scope: !4299, inlinedAt: !4297)
!4301 = !DILocation(line: 44, column: 7, scope: !4292, inlinedAt: !4297)
!4302 = !DILocation(line: 46, column: 5, scope: !4299, inlinedAt: !4297)
!4303 = !DILocation(line: 159, column: 10, scope: !4244)
!4304 = !DILocation(line: 159, column: 3, scope: !4244)
!4305 = !DILocation(line: 236, column: 1, scope: !4244)
!4306 = !DISubprogram(name: "fflush", scope: !170, file: !170, line: 230, type: !4245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!4307 = distinct !DISubprogram(name: "rpl_fseeko", scope: !657, file: !657, line: 28, type: !4308, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !4345)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!38, !4310, !4344, !38}
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !4312)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !4313)
!4313 = !{!4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4312, file: !77, line: 51, baseType: !38, size: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4312, file: !77, line: 54, baseType: !35, size: 64, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4312, file: !77, line: 55, baseType: !35, size: 64, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4312, file: !77, line: 56, baseType: !35, size: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4312, file: !77, line: 57, baseType: !35, size: 64, offset: 256)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4312, file: !77, line: 58, baseType: !35, size: 64, offset: 320)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4312, file: !77, line: 59, baseType: !35, size: 64, offset: 384)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4312, file: !77, line: 60, baseType: !35, size: 64, offset: 448)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4312, file: !77, line: 61, baseType: !35, size: 64, offset: 512)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4312, file: !77, line: 64, baseType: !35, size: 64, offset: 576)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4312, file: !77, line: 65, baseType: !35, size: 64, offset: 640)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4312, file: !77, line: 66, baseType: !35, size: 64, offset: 704)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4312, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4312, file: !77, line: 70, baseType: !4328, size: 64, offset: 832)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4312, file: !77, line: 72, baseType: !38, size: 32, offset: 896)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4312, file: !77, line: 73, baseType: !38, size: 32, offset: 928)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4312, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4312, file: !77, line: 77, baseType: !39, size: 16, offset: 1024)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4312, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4312, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4312, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4312, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4312, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4312, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4312, file: !77, line: 93, baseType: !4328, size: 64, offset: 1344)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4312, file: !77, line: 94, baseType: !37, size: 64, offset: 1408)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4312, file: !77, line: 95, baseType: !40, size: 64, offset: 1472)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4312, file: !77, line: 96, baseType: !38, size: 32, offset: 1536)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4312, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!4344 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !170, line: 63, baseType: !99)
!4345 = !{!4346, !4347, !4348, !4349}
!4346 = !DILocalVariable(name: "fp", arg: 1, scope: !4307, file: !657, line: 28, type: !4310)
!4347 = !DILocalVariable(name: "offset", arg: 2, scope: !4307, file: !657, line: 28, type: !4344)
!4348 = !DILocalVariable(name: "whence", arg: 3, scope: !4307, file: !657, line: 28, type: !38)
!4349 = !DILocalVariable(name: "pos", scope: !4350, file: !657, line: 123, type: !4344)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !657, line: 119, column: 5)
!4351 = distinct !DILexicalBlock(scope: !4307, file: !657, line: 55, column: 7)
!4352 = !DILocation(line: 0, scope: !4307)
!4353 = !DILocation(line: 55, column: 12, scope: !4351)
!4354 = !{!1139, !691, i64 16}
!4355 = !DILocation(line: 55, column: 33, scope: !4351)
!4356 = !{!1139, !691, i64 8}
!4357 = !DILocation(line: 55, column: 25, scope: !4351)
!4358 = !DILocation(line: 56, column: 7, scope: !4351)
!4359 = !DILocation(line: 56, column: 15, scope: !4351)
!4360 = !DILocation(line: 56, column: 37, scope: !4351)
!4361 = !{!1139, !691, i64 32}
!4362 = !DILocation(line: 56, column: 29, scope: !4351)
!4363 = !DILocation(line: 57, column: 7, scope: !4351)
!4364 = !DILocation(line: 57, column: 15, scope: !4351)
!4365 = !{!1139, !691, i64 72}
!4366 = !DILocation(line: 57, column: 29, scope: !4351)
!4367 = !DILocation(line: 55, column: 7, scope: !4307)
!4368 = !DILocation(line: 123, column: 26, scope: !4350)
!4369 = !DILocation(line: 123, column: 19, scope: !4350)
!4370 = !DILocation(line: 0, scope: !4350)
!4371 = !DILocation(line: 124, column: 15, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4350, file: !657, line: 124, column: 11)
!4373 = !DILocation(line: 124, column: 11, scope: !4350)
!4374 = !DILocation(line: 135, column: 12, scope: !4350)
!4375 = !DILocation(line: 135, column: 19, scope: !4350)
!4376 = !DILocation(line: 136, column: 12, scope: !4350)
!4377 = !DILocation(line: 136, column: 20, scope: !4350)
!4378 = !{!1139, !1140, i64 144}
!4379 = !DILocation(line: 167, column: 7, scope: !4350)
!4380 = !DILocation(line: 169, column: 10, scope: !4307)
!4381 = !DILocation(line: 169, column: 3, scope: !4307)
!4382 = !DILocation(line: 170, column: 1, scope: !4307)
!4383 = !DISubprogram(name: "fseeko", scope: !170, file: !170, line: 736, type: !4384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!38, !4310, !99, !38}
!4386 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !347, file: !347, line: 100, type: !4387, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !4390)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!40, !1759, !43, !40, !4389}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!4390 = !{!4391, !4392, !4393, !4394, !4395}
!4391 = !DILocalVariable(name: "pwc", arg: 1, scope: !4386, file: !347, line: 100, type: !1759)
!4392 = !DILocalVariable(name: "s", arg: 2, scope: !4386, file: !347, line: 100, type: !43)
!4393 = !DILocalVariable(name: "n", arg: 3, scope: !4386, file: !347, line: 100, type: !40)
!4394 = !DILocalVariable(name: "ps", arg: 4, scope: !4386, file: !347, line: 100, type: !4389)
!4395 = !DILocalVariable(name: "ret", scope: !4386, file: !347, line: 130, type: !40)
!4396 = !DILocation(line: 0, scope: !4386)
!4397 = !DILocation(line: 105, column: 9, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4386, file: !347, line: 105, column: 7)
!4399 = !DILocation(line: 105, column: 7, scope: !4386)
!4400 = !DILocation(line: 117, column: 10, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4386, file: !347, line: 117, column: 7)
!4402 = !DILocation(line: 117, column: 7, scope: !4386)
!4403 = !DILocation(line: 130, column: 16, scope: !4386)
!4404 = !DILocation(line: 135, column: 11, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4386, file: !347, line: 135, column: 7)
!4406 = !DILocation(line: 135, column: 25, scope: !4405)
!4407 = !DILocation(line: 135, column: 30, scope: !4405)
!4408 = !DILocation(line: 135, column: 7, scope: !4386)
!4409 = !DILocalVariable(name: "ps", arg: 1, scope: !4410, file: !1732, line: 1135, type: !4389)
!4410 = distinct !DISubprogram(name: "mbszero", scope: !1732, file: !1732, line: 1135, type: !4411, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !4413)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{null, !4389}
!4413 = !{!4409}
!4414 = !DILocation(line: 0, scope: !4410, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 137, column: 5, scope: !4405)
!4416 = !DILocalVariable(name: "__dest", arg: 1, scope: !4417, file: !1741, line: 57, type: !37)
!4417 = distinct !DISubprogram(name: "memset", scope: !1741, file: !1741, line: 57, type: !1742, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !4418)
!4418 = !{!4416, !4419, !4420}
!4419 = !DILocalVariable(name: "__ch", arg: 2, scope: !4417, file: !1741, line: 57, type: !38)
!4420 = !DILocalVariable(name: "__len", arg: 3, scope: !4417, file: !1741, line: 57, type: !40)
!4421 = !DILocation(line: 0, scope: !4417, inlinedAt: !4422)
!4422 = distinct !DILocation(line: 1137, column: 3, scope: !4410, inlinedAt: !4415)
!4423 = !DILocation(line: 59, column: 10, scope: !4417, inlinedAt: !4422)
!4424 = !DILocation(line: 137, column: 5, scope: !4405)
!4425 = !DILocation(line: 138, column: 11, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4386, file: !347, line: 138, column: 7)
!4427 = !DILocation(line: 138, column: 7, scope: !4386)
!4428 = !DILocation(line: 139, column: 5, scope: !4426)
!4429 = !DILocation(line: 143, column: 26, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4386, file: !347, line: 143, column: 7)
!4431 = !DILocation(line: 143, column: 41, scope: !4430)
!4432 = !DILocation(line: 143, column: 7, scope: !4386)
!4433 = !DILocation(line: 145, column: 15, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4435, file: !347, line: 145, column: 11)
!4435 = distinct !DILexicalBlock(scope: !4430, file: !347, line: 144, column: 5)
!4436 = !DILocation(line: 145, column: 11, scope: !4435)
!4437 = !DILocation(line: 146, column: 32, scope: !4434)
!4438 = !DILocation(line: 146, column: 16, scope: !4434)
!4439 = !DILocation(line: 146, column: 14, scope: !4434)
!4440 = !DILocation(line: 146, column: 9, scope: !4434)
!4441 = !DILocation(line: 286, column: 1, scope: !4386)
!4442 = !DISubprogram(name: "mbsinit", scope: !4443, file: !4443, line: 293, type: !4444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !770)
!4443 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!38, !4446}
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!4448 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !659, file: !659, line: 27, type: !3214, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !658, retainedNodes: !4449)
!4449 = !{!4450, !4451, !4452, !4453}
!4450 = !DILocalVariable(name: "ptr", arg: 1, scope: !4448, file: !659, line: 27, type: !37)
!4451 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4448, file: !659, line: 27, type: !40)
!4452 = !DILocalVariable(name: "size", arg: 3, scope: !4448, file: !659, line: 27, type: !40)
!4453 = !DILocalVariable(name: "nbytes", scope: !4448, file: !659, line: 29, type: !40)
!4454 = !DILocation(line: 0, scope: !4448)
!4455 = !DILocation(line: 30, column: 7, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4448, file: !659, line: 30, column: 7)
!4457 = !DILocalVariable(name: "ptr", arg: 1, scope: !4458, file: !3305, line: 2057, type: !37)
!4458 = distinct !DISubprogram(name: "rpl_realloc", scope: !3305, file: !3305, line: 2057, type: !3297, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !658, retainedNodes: !4459)
!4459 = !{!4457, !4460}
!4460 = !DILocalVariable(name: "size", arg: 2, scope: !4458, file: !3305, line: 2057, type: !40)
!4461 = !DILocation(line: 0, scope: !4458, inlinedAt: !4462)
!4462 = distinct !DILocation(line: 37, column: 10, scope: !4448)
!4463 = !DILocation(line: 2059, column: 24, scope: !4458, inlinedAt: !4462)
!4464 = !DILocation(line: 2059, column: 10, scope: !4458, inlinedAt: !4462)
!4465 = !DILocation(line: 37, column: 3, scope: !4448)
!4466 = !DILocation(line: 32, column: 7, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4456, file: !659, line: 31, column: 5)
!4468 = !DILocation(line: 32, column: 13, scope: !4467)
!4469 = !DILocation(line: 33, column: 7, scope: !4467)
!4470 = !DILocation(line: 38, column: 1, scope: !4448)
!4471 = distinct !DISubprogram(name: "hard_locale", scope: !662, file: !662, line: 28, type: !1271, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !4472)
!4472 = !{!4473, !4474}
!4473 = !DILocalVariable(name: "category", arg: 1, scope: !4471, file: !662, line: 28, type: !38)
!4474 = !DILocalVariable(name: "locale", scope: !4471, file: !662, line: 30, type: !4475)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2056, elements: !4476)
!4476 = !{!4477}
!4477 = !DISubrange(count: 257)
!4478 = !DILocation(line: 0, scope: !4471)
!4479 = !DILocation(line: 30, column: 3, scope: !4471)
!4480 = !DILocation(line: 30, column: 8, scope: !4471)
!4481 = !DILocation(line: 32, column: 7, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4471, file: !662, line: 32, column: 7)
!4483 = !DILocation(line: 32, column: 7, scope: !4471)
!4484 = !DILocalVariable(name: "__s1", arg: 1, scope: !4485, file: !728, line: 1359, type: !43)
!4485 = distinct !DISubprogram(name: "streq", scope: !728, file: !728, line: 1359, type: !729, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !4486)
!4486 = !{!4484, !4487}
!4487 = !DILocalVariable(name: "__s2", arg: 2, scope: !4485, file: !728, line: 1359, type: !43)
!4488 = !DILocation(line: 0, scope: !4485, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 35, column: 9, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4471, file: !662, line: 35, column: 7)
!4491 = !DILocation(line: 1361, column: 11, scope: !4485, inlinedAt: !4489)
!4492 = !DILocation(line: 1361, column: 10, scope: !4485, inlinedAt: !4489)
!4493 = !DILocation(line: 35, column: 29, scope: !4490)
!4494 = !DILocation(line: 0, scope: !4485, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 35, column: 32, scope: !4490)
!4496 = !DILocation(line: 1361, column: 11, scope: !4485, inlinedAt: !4495)
!4497 = !DILocation(line: 1361, column: 10, scope: !4485, inlinedAt: !4495)
!4498 = !DILocation(line: 35, column: 7, scope: !4471)
!4499 = !DILocation(line: 46, column: 3, scope: !4471)
!4500 = !DILocation(line: 47, column: 1, scope: !4471)
!4501 = distinct !DISubprogram(name: "setlocale_null_r", scope: !664, file: !664, line: 154, type: !4502, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !4504)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!38, !38, !35, !40}
!4504 = !{!4505, !4506, !4507}
!4505 = !DILocalVariable(name: "category", arg: 1, scope: !4501, file: !664, line: 154, type: !38)
!4506 = !DILocalVariable(name: "buf", arg: 2, scope: !4501, file: !664, line: 154, type: !35)
!4507 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4501, file: !664, line: 154, type: !40)
!4508 = !DILocation(line: 0, scope: !4501)
!4509 = !DILocation(line: 159, column: 10, scope: !4501)
!4510 = !DILocation(line: 159, column: 3, scope: !4501)
!4511 = distinct !DISubprogram(name: "setlocale_null", scope: !664, file: !664, line: 186, type: !4512, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !4514)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!43, !38}
!4514 = !{!4515}
!4515 = !DILocalVariable(name: "category", arg: 1, scope: !4511, file: !664, line: 186, type: !38)
!4516 = !DILocation(line: 0, scope: !4511)
!4517 = !DILocation(line: 189, column: 10, scope: !4511)
!4518 = !DILocation(line: 189, column: 3, scope: !4511)
!4519 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !666, file: !666, line: 35, type: !4512, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !4520)
!4520 = !{!4521, !4522}
!4521 = !DILocalVariable(name: "category", arg: 1, scope: !4519, file: !666, line: 35, type: !38)
!4522 = !DILocalVariable(name: "result", scope: !4519, file: !666, line: 37, type: !43)
!4523 = !DILocation(line: 0, scope: !4519)
!4524 = !DILocation(line: 37, column: 24, scope: !4519)
!4525 = !DILocation(line: 62, column: 3, scope: !4519)
!4526 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !666, file: !666, line: 66, type: !4502, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !4527)
!4527 = !{!4528, !4529, !4530, !4531, !4532}
!4528 = !DILocalVariable(name: "category", arg: 1, scope: !4526, file: !666, line: 66, type: !38)
!4529 = !DILocalVariable(name: "buf", arg: 2, scope: !4526, file: !666, line: 66, type: !35)
!4530 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4526, file: !666, line: 66, type: !40)
!4531 = !DILocalVariable(name: "result", scope: !4526, file: !666, line: 111, type: !43)
!4532 = !DILocalVariable(name: "length", scope: !4533, file: !666, line: 125, type: !40)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !666, line: 124, column: 5)
!4534 = distinct !DILexicalBlock(scope: !4526, file: !666, line: 113, column: 7)
!4535 = !DILocation(line: 0, scope: !4526)
!4536 = !DILocation(line: 0, scope: !4519, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 111, column: 24, scope: !4526)
!4538 = !DILocation(line: 37, column: 24, scope: !4519, inlinedAt: !4537)
!4539 = !DILocation(line: 113, column: 14, scope: !4534)
!4540 = !DILocation(line: 113, column: 7, scope: !4526)
!4541 = !DILocation(line: 116, column: 19, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !666, line: 116, column: 11)
!4543 = distinct !DILexicalBlock(scope: !4534, file: !666, line: 114, column: 5)
!4544 = !DILocation(line: 116, column: 11, scope: !4543)
!4545 = !DILocation(line: 120, column: 16, scope: !4542)
!4546 = !DILocation(line: 120, column: 9, scope: !4542)
!4547 = !DILocation(line: 125, column: 23, scope: !4533)
!4548 = !DILocation(line: 0, scope: !4533)
!4549 = !DILocation(line: 126, column: 18, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4533, file: !666, line: 126, column: 11)
!4551 = !DILocation(line: 126, column: 11, scope: !4533)
!4552 = !DILocation(line: 128, column: 39, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4550, file: !666, line: 127, column: 9)
!4554 = !DILocalVariable(name: "__dest", arg: 1, scope: !4555, file: !1741, line: 26, type: !3572)
!4555 = distinct !DISubprogram(name: "memcpy", scope: !1741, file: !1741, line: 26, type: !3570, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !4556)
!4556 = !{!4554, !4557, !4558}
!4557 = !DILocalVariable(name: "__src", arg: 2, scope: !4555, file: !1741, line: 26, type: !895)
!4558 = !DILocalVariable(name: "__len", arg: 3, scope: !4555, file: !1741, line: 26, type: !40)
!4559 = !DILocation(line: 0, scope: !4555, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 128, column: 11, scope: !4553)
!4561 = !DILocation(line: 29, column: 10, scope: !4555, inlinedAt: !4560)
!4562 = !DILocation(line: 129, column: 11, scope: !4553)
!4563 = !DILocation(line: 133, column: 23, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !666, line: 133, column: 15)
!4565 = distinct !DILexicalBlock(scope: !4550, file: !666, line: 132, column: 9)
!4566 = !DILocation(line: 133, column: 15, scope: !4565)
!4567 = !DILocation(line: 138, column: 44, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4564, file: !666, line: 134, column: 13)
!4569 = !DILocation(line: 0, scope: !4555, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 138, column: 15, scope: !4568)
!4571 = !DILocation(line: 29, column: 10, scope: !4555, inlinedAt: !4570)
!4572 = !DILocation(line: 139, column: 15, scope: !4568)
!4573 = !DILocation(line: 139, column: 32, scope: !4568)
!4574 = !DILocation(line: 140, column: 13, scope: !4568)
!4575 = !DILocation(line: 0, scope: !4534)
!4576 = !DILocation(line: 145, column: 1, scope: !4526)
