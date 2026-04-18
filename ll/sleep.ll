; ModuleID = 'src/sleep.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [249 x i8] c"Usage: %s NUMBER[SUFFIX]...\0A  or:  %s OPTION\0APause for NUMBER seconds, where NUMBER is an integer or floating-point.\0ASUFFIX may be 's','m','h', or 'd', for seconds, minutes, hours, days.\0AWith multiple arguments, pause for the sum of their values.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot read realtime clock\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !0
@.str.14 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.36 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), align 8, !dbg !119
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !124
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !129
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !131
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.49 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !167
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !137
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !163
@.str.1.55 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.57 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.56 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !165
@.str.4.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.51 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.52 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.62 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.63, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.64, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !172
@optind = external local_unnamed_addr global i32, align 4
@.str.1.67 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.63 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.64 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !189
@.str.72 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.73 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !195
@.str.76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.77 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.78 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.79 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.80 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.81 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.82 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.83 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.84 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.85 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 8, !dbg !231
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !257
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !275
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !305
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !312
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !277
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !314
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !263
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !282
@.str.94 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.95 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.96 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.97 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.98 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.99 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.100 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.101 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.102 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.103 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.104 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.105 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.106 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.107 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.108 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.109 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.110 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.115 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.116 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.117 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !320
@exit_failure = dso_local global i32 1, align 4, !dbg !328
@.str.130 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.128 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.129 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !334
@.str.135 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.148 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !363
@.str.155 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !474 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !478, metadata !DIExpression()), !dbg !479
  %3 = icmp eq i32 %0, 0, !dbg !480
  br i1 %3, label %9, label %4, !dbg !482

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !483, !tbaa !485
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !483
  %7 = load i8*, i8** @program_name, align 8, !dbg !483, !tbaa !485
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !483
  br label %49, !dbg !483

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([249 x i8], [249 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !489
  %11 = load i8*, i8** @program_name, align 8, !dbg !489, !tbaa !485
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11, i8* noundef %11) #34, !dbg !489
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 noundef 5) #34, !dbg !491
  tail call fastcc void @oputs_(i8* noundef %13), !dbg !491
  %14 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !492
  tail call fastcc void @oputs_(i8* noundef %14), !dbg !492
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !493, metadata !DIExpression()) #34, !dbg !512
  %15 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !514
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %15) #34, !dbg !514
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !498, metadata !DIExpression()) #34, !dbg !515
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %15, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !515
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !507, metadata !DIExpression()) #34, !dbg !512
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !508, metadata !DIExpression()) #34, !dbg !512
  %16 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !516
  call void @llvm.dbg.value(metadata %struct.infomap* %16, metadata !508, metadata !DIExpression()) #34, !dbg !512
  br label %17, !dbg !517

17:                                               ; preds = %22, %9
  %18 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %9 ]
  %19 = phi %struct.infomap* [ %23, %22 ], [ %16, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !508, metadata !DIExpression()) #34, !dbg !512
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !525
  call void @llvm.dbg.value(metadata i8* %18, metadata !524, metadata !DIExpression()) #34, !dbg !525
  %20 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %18) #35, !dbg !527
  %21 = icmp eq i32 %20, 0, !dbg !528
  br i1 %21, label %27, label %22, !dbg !517

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.infomap, %struct.infomap* %19, i64 1, !dbg !529
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !508, metadata !DIExpression()) #34, !dbg !512
  %24 = getelementptr inbounds %struct.infomap, %struct.infomap* %23, i64 0, i32 0, !dbg !530
  %25 = load i8*, i8** %24, align 8, !dbg !530, !tbaa !531
  %26 = icmp eq i8* %25, null, !dbg !533
  br i1 %26, label %27, label %17, !dbg !534, !llvm.loop !535

27:                                               ; preds = %22, %17
  %28 = phi %struct.infomap* [ %19, %17 ], [ %23, %22 ]
  %29 = getelementptr inbounds %struct.infomap, %struct.infomap* %28, i64 0, i32 1, !dbg !537
  %30 = load i8*, i8** %29, align 8, !dbg !537, !tbaa !539
  %31 = icmp eq i8* %30, null, !dbg !540
  %32 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %30, !dbg !541
  call void @llvm.dbg.value(metadata i8* %32, metadata !507, metadata !DIExpression()) #34, !dbg !512
  tail call void @emit_bug_reporting_address() #34, !dbg !542
  %33 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !543
  call void @llvm.dbg.value(metadata i8* %33, metadata !510, metadata !DIExpression()) #34, !dbg !512
  %34 = icmp eq i8* %33, null, !dbg !544
  br i1 %34, label %42, label %35, !dbg !546

35:                                               ; preds = %27
  %36 = tail call i32 @strncmp(i8* noundef nonnull %33, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 noundef 3) #35, !dbg !547
  %37 = icmp eq i32 %36, 0, !dbg !547
  br i1 %37, label %42, label %38, !dbg !548

38:                                               ; preds = %35
  %39 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #34, !dbg !549
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !549, !tbaa !485
  %41 = tail call i32 @fputs_unlocked(i8* noundef %39, %struct._IO_FILE* noundef %40) #34, !dbg !549
  br label %42, !dbg !551

42:                                               ; preds = %27, %35, %38
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !552
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), metadata !524, metadata !DIExpression()) #34, !dbg !552
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !511, metadata !DIExpression()) #34, !dbg !512
  %43 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #34, !dbg !554
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %43, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #34, !dbg !554
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 noundef 5) #34, !dbg !555
  %46 = icmp eq i8* %32, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), !dbg !555
  %47 = select i1 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !555
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %45, i8* noundef %32, i8* noundef %47) #34, !dbg !555
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %15) #34, !dbg !556
  br label %49

49:                                               ; preds = %42, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !557
  unreachable, !dbg !557
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !558 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #4 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !38, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i8* %0, metadata !39, metadata !DIExpression()), !dbg !563
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !564, !tbaa !565
  %3 = icmp eq i32 %2, -1, !dbg !567
  br i1 %3, label %4, label %16, !dbg !568

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #34, !dbg !569
  call void @llvm.dbg.value(metadata i8* %5, metadata !40, metadata !DIExpression()), !dbg !570
  %6 = icmp eq i8* %5, null, !dbg !571
  br i1 %6, label %14, label %7, !dbg !572

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !573, !tbaa !574
  %9 = icmp eq i8 %8, 0, !dbg !573
  br i1 %9, label %14, label %10, !dbg !575

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !518, metadata !DIExpression()) #34, !dbg !576
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), metadata !524, metadata !DIExpression()) #34, !dbg !576
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #35, !dbg !578
  %12 = icmp eq i32 %11, 0, !dbg !579
  %13 = zext i1 %12 to i32, !dbg !575
  br label %14, !dbg !575

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !580, !tbaa !565
  br label %16, !dbg !581

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !582
  %18 = icmp eq i32 %17, 0, !dbg !582
  br i1 %18, label %22, label %19, !dbg !584

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !585, !tbaa !485
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !585
  br label %121, !dbg !587

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !43, metadata !DIExpression()), !dbg !563
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !588
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !589
  call void @llvm.dbg.value(metadata i8* %24, metadata !45, metadata !DIExpression()), !dbg !563
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !590
  call void @llvm.dbg.value(metadata i8* %25, metadata !46, metadata !DIExpression()), !dbg !563
  %26 = icmp eq i8* %25, null, !dbg !591
  br i1 %26, label %53, label %27, !dbg !592

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !593
  br i1 %28, label %53, label %29, !dbg !594

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !47, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()), !dbg !595
  %30 = icmp ult i8* %24, %25, !dbg !596
  br i1 %30, label %31, label %53, !dbg !597

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !563
  %33 = load i16*, i16** %32, align 8, !tbaa !485
  br label %34, !dbg !597

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !47, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i64 %36, metadata !51, metadata !DIExpression()), !dbg !595
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !598
  call void @llvm.dbg.value(metadata i8* %37, metadata !47, metadata !DIExpression()), !dbg !595
  %38 = load i8, i8* %35, align 1, !dbg !598, !tbaa !574
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !598
  %41 = load i16, i16* %40, align 2, !dbg !598, !tbaa !599
  %42 = lshr i16 %41, 13, !dbg !601
  %43 = and i16 %42, 1, !dbg !601
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !602
  call void @llvm.dbg.value(metadata i64 %45, metadata !51, metadata !DIExpression()), !dbg !595
  %46 = icmp ult i8* %37, %25, !dbg !596
  %47 = icmp ult i64 %45, 2, !dbg !603
  %48 = select i1 %46, i1 %47, i1 false, !dbg !603
  br i1 %48, label %34, label %49, !dbg !597, !llvm.loop !604

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !605
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !607
  %52 = xor i1 %50, true, !dbg !607
  br label %53, !dbg !607

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !563
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i8* %54, metadata !46, metadata !DIExpression()), !dbg !563
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #35, !dbg !608
  call void @llvm.dbg.value(metadata i64 %56, metadata !52, metadata !DIExpression()), !dbg !563
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !609
  call void @llvm.dbg.value(metadata i8* %57, metadata !53, metadata !DIExpression()), !dbg !563
  br label %58, !dbg !610

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !563
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i8* %59, metadata !53, metadata !DIExpression()), !dbg !563
  %61 = load i8, i8* %59, align 1, !dbg !611, !tbaa !574
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !612

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !613
  %64 = load i8, i8* %63, align 1, !dbg !616, !tbaa !574
  %65 = icmp ne i8 %64, 45, !dbg !617
  %66 = select i1 %65, i1 %60, i1 false, !dbg !618
  br label %67, !dbg !618

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !563
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !619
  %70 = load i16*, i16** %69, align 8, !dbg !619, !tbaa !485
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !619
  %73 = load i16, i16* %72, align 2, !dbg !619, !tbaa !599
  %74 = and i16 %73, 8192, !dbg !619
  %75 = icmp eq i16 %74, 0, !dbg !619
  br i1 %75, label %89, label %76, !dbg !621

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !622
  br i1 %77, label %91, label %78, !dbg !625

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !626
  %80 = load i8, i8* %79, align 1, !dbg !626, !tbaa !574
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !626
  %83 = load i16, i16* %82, align 2, !dbg !626, !tbaa !599
  %84 = and i16 %83, 8192, !dbg !626
  %85 = icmp eq i16 %84, 0, !dbg !626
  br i1 %85, label %86, label %91, !dbg !627

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !628
  br i1 %88, label %89, label %91, !dbg !628

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !630
  call void @llvm.dbg.value(metadata i8* %90, metadata !53, metadata !DIExpression()), !dbg !563
  br label %58, !dbg !610, !llvm.loop !631

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !633
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !633, !tbaa !485
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !633
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !634
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), metadata !524, metadata !DIExpression()) #34, !dbg !634
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !636
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !648
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !650
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !518, metadata !DIExpression()) #34, !dbg !652
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), metadata !114, metadata !DIExpression()), !dbg !563
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i64 noundef 6) #35, !dbg !654
  %96 = icmp eq i32 %95, 0, !dbg !654
  br i1 %96, label %100, label %97, !dbg !656

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i64 noundef 9) #35, !dbg !657
  %99 = icmp eq i32 %98, 0, !dbg !657
  br i1 %99, label %100, label %103, !dbg !658

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !659
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !659
  br label %106, !dbg !661

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !662
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !662
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !485
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !664
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665, !tbaa !485
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !665
  %111 = ptrtoint i8* %59 to i64, !dbg !666
  %112 = sub i64 %111, %92, !dbg !666
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !666, !tbaa !485
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !666
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !667, !tbaa !485
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !667
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !485
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !668
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !485
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !669
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !670
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !671 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !675 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !680 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !684 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !690 {
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !695, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i8** %1, metadata !696, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !697, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i8 1, metadata !699, metadata !DIExpression()), !dbg !707
  %4 = load i8*, i8** %1, align 8, !dbg !708, !tbaa !485
  tail call void @set_program_name(i8* noundef %4) #34, !dbg !709
  %5 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #34, !dbg !710
  %6 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #34, !dbg !711
  %7 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #34, !dbg !712
  %8 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !713
  %9 = load i8*, i8** @Version, align 8, !dbg !714, !tbaa !485
  %10 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #34, !dbg !715
  %11 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #34, !dbg !715
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* noundef %9, i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %10, i8* noundef %11, i8* noundef null) #34, !dbg !716
  %12 = icmp eq i32 %0, 1, !dbg !717
  br i1 %12, label %13, label %15, !dbg !719

13:                                               ; preds = %2
  %14 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #34, !dbg !720
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %14) #34, !dbg !720
  tail call void @usage(i32 noundef 1) #38, !dbg !722
  unreachable, !dbg !722

15:                                               ; preds = %2
  %16 = load i32, i32* @optind, align 4, !dbg !723, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %16, metadata !700, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !697, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i8 poison, metadata !699, metadata !DIExpression()), !dbg !707
  %17 = icmp slt i32 %16, %0, !dbg !725
  br i1 %17, label %18, label %70, !dbg !726

18:                                               ; preds = %15
  %19 = bitcast i8** %3 to i8*
  %20 = tail call i32* @__errno_location() #37, !dbg !707
  %21 = sext i32 %16 to i64, !dbg !726
  br label %23, !dbg !726

22:                                               ; preds = %61
  br i1 %63, label %70, label %69, !dbg !727

23:                                               ; preds = %18, %61
  %24 = phi i64 [ %21, %18 ], [ %66, %61 ]
  %25 = phi double [ 0.000000e+00, %18 ], [ %65, %61 ]
  %26 = phi i1 [ true, %18 ], [ %63, %61 ]
  call void @llvm.dbg.value(metadata double %25, metadata !697, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i64 %24, metadata !700, metadata !DIExpression()), !dbg !724
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #34, !dbg !728
  store i32 0, i32* %20, align 4, !dbg !729, !tbaa !565
  %27 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !730
  %28 = load i8*, i8** %27, align 8, !dbg !730, !tbaa !485
  call void @llvm.dbg.value(metadata i8** %3, metadata !702, metadata !DIExpression(DW_OP_deref)), !dbg !731
  %29 = call double @cl_strtod(i8* noundef %28, i8** noundef nonnull %3) #34, !dbg !732
  call void @llvm.dbg.value(metadata double %29, metadata !705, metadata !DIExpression()), !dbg !731
  %30 = load i32, i32* %20, align 4, !dbg !733, !tbaa !565
  call void @llvm.dbg.value(metadata double %29, metadata !734, metadata !DIExpression()) #34, !dbg !742
  call void @llvm.dbg.value(metadata i32 %30, metadata !740, metadata !DIExpression()) #34, !dbg !742
  %31 = icmp eq i32 %30, 34, !dbg !744
  %32 = fcmp oeq double %29, 0.000000e+00
  %33 = and i1 %32, %31, !dbg !746
  %34 = call double @llvm.copysign.f64(double 4.940660e-324, double %29) #34, !dbg !746
  %35 = call double @llvm.fmuladd.f64(double %29, double 0x3CA0000000000001, double %29) #34, !dbg !746
  %36 = select i1 %33, double %34, double %35, !dbg !746
  call void @llvm.dbg.value(metadata double %36, metadata !706, metadata !DIExpression()), !dbg !731
  %37 = load i8*, i8** %27, align 8, !dbg !747, !tbaa !485
  %38 = load i8*, i8** %3, align 8, !dbg !749, !tbaa !485
  call void @llvm.dbg.value(metadata i8* %38, metadata !702, metadata !DIExpression()), !dbg !731
  %39 = icmp ne i8* %37, %38, !dbg !750
  %40 = fcmp oge double %36, 0.000000e+00
  %41 = select i1 %39, i1 %40, i1 false, !dbg !751
  br i1 %41, label %42, label %57, !dbg !751

42:                                               ; preds = %23
  %43 = load i8, i8* %38, align 1, !dbg !752, !tbaa !574
  %44 = icmp eq i8 %43, 0, !dbg !752
  br i1 %44, label %53, label %45, !dbg !753

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !754
  %47 = load i8, i8* %46, align 1, !dbg !755, !tbaa !574
  %48 = icmp eq i8 %47, 0, !dbg !755
  br i1 %48, label %49, label %57, !dbg !756

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %38, metadata !702, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata double* undef, metadata !757, metadata !DIExpression()) #34, !dbg !765
  call void @llvm.dbg.value(metadata i8 %43, metadata !763, metadata !DIExpression()) #34, !dbg !765
  switch i8 %43, label %57 [
    i8 100, label %52
    i8 115, label %53
    i8 109, label %50
    i8 104, label %51
  ], !dbg !767

50:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 60, metadata !764, metadata !DIExpression()) #34, !dbg !765
  br label %53, !dbg !768

51:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 3600, metadata !764, metadata !DIExpression()) #34, !dbg !765
  br label %53, !dbg !770

52:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 86400, metadata !764, metadata !DIExpression()) #34, !dbg !765
  br label %53, !dbg !771

53:                                               ; preds = %49, %50, %51, %52, %42
  %54 = phi double [ 8.640000e+04, %52 ], [ 3.600000e+03, %51 ], [ 6.000000e+01, %50 ], [ 1.000000e+00, %49 ], [ 1.000000e+00, %42 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !764, metadata !DIExpression()) #34, !dbg !765
  %55 = fmul double %36, %54, !dbg !772
  call void @llvm.dbg.value(metadata double %55, metadata !734, metadata !DIExpression()) #34, !dbg !773
  call void @llvm.dbg.value(metadata i32 0, metadata !740, metadata !DIExpression()) #34, !dbg !773
  %56 = call double @llvm.fmuladd.f64(double %55, double 0x3CA0000000000001, double %55) #34, !dbg !775
  br label %61, !dbg !776

57:                                               ; preds = %49, %45, %23
  %58 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #34, !dbg !777
  %59 = load i8*, i8** %27, align 8, !dbg !777, !tbaa !485
  %60 = call i8* @quote(i8* noundef %59) #34, !dbg !777
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %58, i8* noundef %60) #34, !dbg !777
  call void @llvm.dbg.value(metadata i8 0, metadata !699, metadata !DIExpression()), !dbg !707
  br label %61, !dbg !779

61:                                               ; preds = %53, %57
  %62 = phi double [ %36, %57 ], [ %56, %53 ], !dbg !780
  %63 = phi i1 [ false, %57 ], [ %26, %53 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !699, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata double %62, metadata !706, metadata !DIExpression()), !dbg !731
  %64 = fadd double %25, %62, !dbg !781
  call void @llvm.dbg.value(metadata double %64, metadata !734, metadata !DIExpression()) #34, !dbg !782
  call void @llvm.dbg.value(metadata i32 0, metadata !740, metadata !DIExpression()) #34, !dbg !782
  %65 = call double @llvm.fmuladd.f64(double %64, double 0x3CA0000000000001, double %64) #34, !dbg !784
  call void @llvm.dbg.value(metadata double %65, metadata !697, metadata !DIExpression()), !dbg !707
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #34, !dbg !785
  %66 = add nsw i64 %24, 1, !dbg !786
  call void @llvm.dbg.value(metadata i64 %66, metadata !700, metadata !DIExpression()), !dbg !724
  %67 = trunc i64 %66 to i32, !dbg !725
  %68 = icmp eq i32 %67, %0, !dbg !725
  br i1 %68, label %22, label %23, !dbg !726, !llvm.loop !787

69:                                               ; preds = %22
  call void @usage(i32 noundef 1) #38, !dbg !789
  unreachable, !dbg !789

70:                                               ; preds = %15, %22
  %71 = phi double [ %65, %22 ], [ 0.000000e+00, %15 ]
  %72 = call i32 @xnanosleep(double noundef %71) #34, !dbg !791
  %73 = icmp eq i32 %72, 0, !dbg !791
  br i1 %73, label %78, label %74, !dbg !793

74:                                               ; preds = %70
  %75 = tail call i32* @__errno_location() #37, !dbg !794
  %76 = load i32, i32* %75, align 4, !dbg !794, !tbaa !565
  %77 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #34, !dbg !794
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %76, i8* noundef %77) #34, !dbg !794
  unreachable, !dbg !794

78:                                               ; preds = %70
  ret i32 0, !dbg !795
}

; Function Attrs: nounwind
declare !dbg !796 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !799 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !800 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define dso_local double @cl_strtod(i8* noundef nonnull %0, i8** noalias noundef writeonly %1) local_unnamed_addr #12 !dbg !803 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !808, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i8** %1, metadata !809, metadata !DIExpression()), !dbg !817
  %5 = bitcast i8** %3 to i8*, !dbg !818
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #34, !dbg !818
  call void @llvm.dbg.value(metadata i8** %3, metadata !810, metadata !DIExpression(DW_OP_deref)), !dbg !817
  %6 = call double @strtod(i8* noundef nonnull %0, i8** noundef nonnull %3) #34, !dbg !819
  call void @llvm.dbg.value(metadata double %6, metadata !811, metadata !DIExpression()), !dbg !817
  %7 = load i8*, i8** %3, align 8, !dbg !820, !tbaa !485
  call void @llvm.dbg.value(metadata i8* %7, metadata !810, metadata !DIExpression()), !dbg !817
  %8 = load i8, i8* %7, align 1, !dbg !821, !tbaa !574
  %9 = icmp eq i8 %8, 0, !dbg !821
  br i1 %9, label %21, label %10, !dbg !822

10:                                               ; preds = %2
  %11 = tail call i32* @__errno_location() #37, !dbg !823
  %12 = load i32, i32* %11, align 4, !dbg !823, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %12, metadata !812, metadata !DIExpression()), !dbg !824
  %13 = bitcast i8** %4 to i8*, !dbg !825
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #34, !dbg !825
  call void @llvm.dbg.value(metadata i8** %4, metadata !815, metadata !DIExpression(DW_OP_deref)), !dbg !824
  %14 = call double @c_strtod(i8* noundef nonnull %0, i8** noundef nonnull %4) #34, !dbg !826
  call void @llvm.dbg.value(metadata double %14, metadata !816, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i8* %7, metadata !810, metadata !DIExpression()), !dbg !817
  %15 = load i8*, i8** %4, align 8, !dbg !827, !tbaa !485
  call void @llvm.dbg.value(metadata i8* %15, metadata !815, metadata !DIExpression()), !dbg !824
  %16 = icmp ult i8* %7, %15, !dbg !829
  br i1 %16, label %18, label %17, !dbg !830

17:                                               ; preds = %10
  store i32 %12, i32* %11, align 4, !dbg !831, !tbaa !565
  br label %18

18:                                               ; preds = %10, %17
  %19 = phi i8* [ %7, %17 ], [ %15, %10 ]
  %20 = phi double [ %6, %17 ], [ %14, %10 ], !dbg !817
  call void @llvm.dbg.value(metadata double %20, metadata !811, metadata !DIExpression()), !dbg !817
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #34, !dbg !832
  br label %21, !dbg !833

21:                                               ; preds = %18, %2
  %22 = phi i8* [ %19, %18 ], [ %7, %2 ]
  %23 = phi double [ %20, %18 ], [ %6, %2 ], !dbg !817
  call void @llvm.dbg.value(metadata double %23, metadata !811, metadata !DIExpression()), !dbg !817
  %24 = icmp eq i8** %1, null, !dbg !834
  br i1 %24, label %26, label %25, !dbg !836

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %22, metadata !810, metadata !DIExpression()), !dbg !817
  store i8* %22, i8** %1, align 8, !dbg !837, !tbaa !485
  br label %26, !dbg !838

26:                                               ; preds = %25, %21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #34, !dbg !839
  ret double %23, !dbg !840
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(i8* noundef readonly, i8** nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !841 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !843, metadata !DIExpression()), !dbg !844
  store i8* %0, i8** @file_name, align 8, !dbg !845, !tbaa !485
  ret void, !dbg !846
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !847 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !851, metadata !DIExpression()), !dbg !852
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !853, !tbaa !854
  ret void, !dbg !856
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !857 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !862, !tbaa !485
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !863
  %3 = icmp eq i32 %2, 0, !dbg !864
  br i1 %3, label %22, label %4, !dbg !865

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !866, !tbaa !854, !range !867
  %6 = icmp eq i8 %5, 0, !dbg !866
  br i1 %6, label %11, label %7, !dbg !868

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !869
  %9 = load i32, i32* %8, align 4, !dbg !869, !tbaa !565
  %10 = icmp eq i32 %9, 32, !dbg !870
  br i1 %10, label %22, label %11, !dbg !871

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.25, i64 0, i64 0), i32 noundef 5) #34, !dbg !872
  call void @llvm.dbg.value(metadata i8* %12, metadata !859, metadata !DIExpression()), !dbg !873
  %13 = load i8*, i8** @file_name, align 8, !dbg !874, !tbaa !485
  %14 = icmp eq i8* %13, null, !dbg !874
  %15 = tail call i32* @__errno_location() #37, !dbg !876
  %16 = load i32, i32* %15, align 4, !dbg !876, !tbaa !565
  br i1 %14, label %19, label %17, !dbg !877

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !878
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.26, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !878
  br label %20, !dbg !878

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.27, i64 0, i64 0), i8* noundef %12) #34, !dbg !879
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !880, !tbaa !565
  tail call void @_exit(i32 noundef %21) #36, !dbg !881
  unreachable, !dbg !881

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !882, !tbaa !485
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !884
  %25 = icmp eq i32 %24, 0, !dbg !885
  br i1 %25, label %28, label %26, !dbg !886

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !887, !tbaa !565
  tail call void @_exit(i32 noundef %27) #36, !dbg !888
  unreachable, !dbg !888

28:                                               ; preds = %22
  ret void, !dbg !889
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !890 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !894, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %1, metadata !895, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i8* %2, metadata !896, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !897, metadata !DIExpression()), !dbg !899
  tail call fastcc void @flush_stdout(), !dbg !900
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !901, !tbaa !485
  %7 = icmp eq void ()* %6, null, !dbg !901
  br i1 %7, label %9, label %8, !dbg !903

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !904
  br label %13, !dbg !904

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !905, !tbaa !485
  %11 = tail call i8* @getprogname() #35, !dbg !905
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8* noundef %11) #34, !dbg !905
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !907
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !907
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !907
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !907, !tbaa.struct !908
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !907
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !907
  ret void, !dbg !909
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !910 {
  call void @llvm.dbg.value(metadata i32 1, metadata !912, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i32 1, metadata !914, metadata !DIExpression()) #34, !dbg !919
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !922
  %2 = icmp slt i32 %1, 0, !dbg !923
  br i1 %2, label %6, label %3, !dbg !924

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !925, !tbaa !485
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !925
  br label %6, !dbg !925

6:                                                ; preds = %3, %0
  ret void, !dbg !926
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !927 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !929, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i32 %1, metadata !930, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i8* %2, metadata !931, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !932, metadata !DIExpression()), !dbg !934
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !935, !tbaa !485
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !936
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !937, metadata !DIExpression()) #34, !dbg !980
  call void @llvm.dbg.value(metadata i8* %2, metadata !978, metadata !DIExpression()) #34, !dbg !980
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !982, !noalias !983
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !982
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !982
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !982, !noalias !983
  %11 = load i32, i32* @error_message_count, align 4, !dbg !987, !tbaa !565
  %12 = add i32 %11, 1, !dbg !987
  store i32 %12, i32* @error_message_count, align 4, !dbg !987, !tbaa !565
  %13 = icmp eq i32 %1, 0, !dbg !988
  br i1 %13, label %24, label %14, !dbg !990

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !991, metadata !DIExpression()) #34, !dbg !999
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1001
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1001
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !995, metadata !DIExpression()) #34, !dbg !1002
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !1003
  call void @llvm.dbg.value(metadata i8* %16, metadata !994, metadata !DIExpression()) #34, !dbg !999
  %17 = icmp eq i8* %16, null, !dbg !1004
  br i1 %17, label %18, label %20, !dbg !1006

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.51, i64 0, i64 0), i32 noundef 5) #34, !dbg !1007
  call void @llvm.dbg.value(metadata i8* %19, metadata !994, metadata !DIExpression()) #34, !dbg !999
  br label %20, !dbg !1008

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !999
  call void @llvm.dbg.value(metadata i8* %21, metadata !994, metadata !DIExpression()) #34, !dbg !999
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1009, !tbaa !485
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.52, i64 0, i64 0), i8* noundef %21) #34, !dbg !1009
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1010
  br label %24, !dbg !1011

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1012, !tbaa !485
  call void @llvm.dbg.value(metadata i32 10, metadata !1013, metadata !DIExpression()) #34, !dbg !1020
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1019, metadata !DIExpression()) #34, !dbg !1020
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1022
  %27 = load i8*, i8** %26, align 8, !dbg !1022, !tbaa !1023
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1022
  %29 = load i8*, i8** %28, align 8, !dbg !1022, !tbaa !1026
  %30 = icmp ult i8* %27, %29, !dbg !1022
  br i1 %30, label %33, label %31, !dbg !1022, !prof !1027

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !1022
  br label %35, !dbg !1022

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1022
  store i8* %34, i8** %26, align 8, !dbg !1022, !tbaa !1023
  store i8 10, i8* %27, align 1, !dbg !1022, !tbaa !574
  br label %35, !dbg !1022

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1028, !tbaa !485
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !1028
  %38 = icmp eq i32 %0, 0, !dbg !1029
  br i1 %38, label %40, label %39, !dbg !1031

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !1032
  unreachable, !dbg !1032

40:                                               ; preds = %35
  ret void, !dbg !1033
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1034 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1038 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1041 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1045 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1049, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %1, metadata !1050, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %2, metadata !1051, metadata !DIExpression()), !dbg !1053
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1054
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1054
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1052, metadata !DIExpression()), !dbg !1055
  call void @llvm.va_start(i8* nonnull %6), !dbg !1056
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1057
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1057
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1057, !tbaa.struct !908
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !1057
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1057
  call void @llvm.va_end(i8* nonnull %6), !dbg !1058
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1059
  ret void, !dbg !1059
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !139 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !157, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i32 %1, metadata !158, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8* %2, metadata !159, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i32 %3, metadata !160, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8* %4, metadata !161, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !162, metadata !DIExpression()), !dbg !1061
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1062, !tbaa !565
  %9 = icmp eq i32 %8, 0, !dbg !1062
  br i1 %9, label %24, label %10, !dbg !1064

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1065, !tbaa !565
  %12 = icmp eq i32 %11, %3, !dbg !1068
  br i1 %12, label %13, label %23, !dbg !1069

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1070, !tbaa !485
  %15 = icmp eq i8* %14, %2, !dbg !1071
  br i1 %15, label %39, label %16, !dbg !1072

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1073
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1074
  br i1 %19, label %20, label %23, !dbg !1074

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !1075
  %22 = icmp eq i32 %21, 0, !dbg !1076
  br i1 %22, label %39, label %23, !dbg !1077

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1078, !tbaa !485
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1079, !tbaa !565
  br label %24, !dbg !1080

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1081
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1082, !tbaa !485
  %26 = icmp eq void ()* %25, null, !dbg !1082
  br i1 %26, label %28, label %27, !dbg !1084

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1085
  br label %32, !dbg !1085

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1086, !tbaa !485
  %30 = tail call i8* @getprogname() #35, !dbg !1086
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.55, i64 0, i64 0), i8* noundef %30) #34, !dbg !1086
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1088, !tbaa !485
  %34 = icmp eq i8* %2, null, !dbg !1088
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.56, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.57, i64 0, i64 0), !dbg !1088
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1088
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1089
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1089, !tbaa.struct !908
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1089
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1089
  br label %39, !dbg !1090

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1090
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1091 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1095, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i32 %1, metadata !1096, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %2, metadata !1097, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i32 %3, metadata !1098, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %4, metadata !1099, metadata !DIExpression()), !dbg !1101
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1102
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1102
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1100, metadata !DIExpression()), !dbg !1103
  call void @llvm.va_start(i8* nonnull %8), !dbg !1104
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1105
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1105
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1105, !tbaa.struct !908
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !1105
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1105
  call void @llvm.va_end(i8* nonnull %8), !dbg !1106
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1107
  ret void, !dbg !1107
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1108 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1111, !tbaa !485
  ret i8* %1, !dbg !1112
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #12 !dbg !1113 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1118, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8** %1, metadata !1119, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %2, metadata !1120, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %3, metadata !1121, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %4, metadata !1122, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1123, metadata !DIExpression()), !dbg !1144
  %9 = load i32, i32* @opterr, align 4, !dbg !1145, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %9, metadata !1124, metadata !DIExpression()), !dbg !1144
  store i32 0, i32* @opterr, align 4, !dbg !1146, !tbaa !565
  %10 = icmp eq i32 %0, 2, !dbg !1147
  br i1 %10, label %11, label %18, !dbg !1148

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %12, metadata !1125, metadata !DIExpression()), !dbg !1150
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1151

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #34, !dbg !1152
  br label %18, !dbg !1153

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1154
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #34, !dbg !1154
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1128, metadata !DIExpression()), !dbg !1155
  call void @llvm.va_start(i8* nonnull %15), !dbg !1156
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1157, !tbaa !485
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #34, !dbg !1158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1158, !tbaa.struct !908
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #34, !dbg !1158
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #34, !dbg !1158
  call void @exit(i32 noundef 0) #36, !dbg !1159
  unreachable, !dbg !1159

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !1160, !tbaa !565
  store i32 0, i32* @optind, align 4, !dbg !1161, !tbaa !565
  ret void, !dbg !1162
}

; Function Attrs: nounwind
declare !dbg !1163 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #12 !dbg !1169 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1173, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8** %1, metadata !1174, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8* %2, metadata !1175, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8* %3, metadata !1176, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8* %4, metadata !1177, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i1 %5, metadata !1178, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1188
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1179, metadata !DIExpression()), !dbg !1188
  %10 = load i32, i32* @opterr, align 4, !dbg !1189, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %10, metadata !1180, metadata !DIExpression()), !dbg !1188
  store i32 1, i32* @opterr, align 4, !dbg !1190, !tbaa !565
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), !dbg !1191
  call void @llvm.dbg.value(metadata i8* %11, metadata !1181, metadata !DIExpression()), !dbg !1188
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %12, metadata !1182, metadata !DIExpression()), !dbg !1188
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !1193

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1194
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1194
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !1183, metadata !DIExpression()), !dbg !1195
  call void @llvm.va_start(i8* nonnull %14), !dbg !1196
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1197, !tbaa !485
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !1198
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #34, !dbg !1198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !1198, !tbaa.struct !908
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #34, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #34, !dbg !1198
  call void @exit(i32 noundef 0) #36, !dbg !1199
  unreachable, !dbg !1199

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !1200, !tbaa !565
  br label %19, !dbg !1201

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #34, !dbg !1202
  br label %21, !dbg !1203

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !1203, !tbaa !565
  ret void, !dbg !1204
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1205 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1207, metadata !DIExpression()), !dbg !1210
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !1211
  call void @llvm.dbg.value(metadata i8* %2, metadata !1208, metadata !DIExpression()), !dbg !1210
  %3 = icmp eq i8* %2, null, !dbg !1212
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1212
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1212
  call void @llvm.dbg.value(metadata i8* %5, metadata !1209, metadata !DIExpression()), !dbg !1210
  %6 = ptrtoint i8* %5 to i64, !dbg !1213
  %7 = ptrtoint i8* %0 to i64, !dbg !1213
  %8 = sub i64 %6, %7, !dbg !1213
  %9 = icmp sgt i64 %8, 6, !dbg !1215
  br i1 %9, label %10, label %19, !dbg !1216

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %11, metadata !1218, metadata !DIExpression()) #34, !dbg !1225
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0), metadata !1223, metadata !DIExpression()) #34, !dbg !1225
  call void @llvm.dbg.value(metadata i64 7, metadata !1224, metadata !DIExpression()) #34, !dbg !1225
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0), i64 7) #34, !dbg !1227
  %13 = icmp eq i32 %12, 0, !dbg !1228
  br i1 %13, label %14, label %19, !dbg !1229

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1207, metadata !DIExpression()), !dbg !1210
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.73, i64 0, i64 0), i64 noundef 3) #35, !dbg !1230
  %16 = icmp eq i32 %15, 0, !dbg !1233
  %17 = select i1 %16, i64 3, i64 0, !dbg !1234
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1234
  br label %19, !dbg !1234

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1210
  call void @llvm.dbg.value(metadata i8* %21, metadata !1209, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8* %20, metadata !1207, metadata !DIExpression()), !dbg !1210
  store i8* %20, i8** @program_name, align 8, !dbg !1235, !tbaa !485
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1236, !tbaa !485
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1237, !tbaa !485
  ret void, !dbg !1238
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !197 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !204, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %1, metadata !205, metadata !DIExpression()), !dbg !1239
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !1240
  call void @llvm.dbg.value(metadata i8* %5, metadata !206, metadata !DIExpression()), !dbg !1239
  %6 = icmp eq i8* %5, %0, !dbg !1241
  br i1 %6, label %7, label %17, !dbg !1243

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1244
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1244
  %10 = bitcast i64* %4 to i8*, !dbg !1245
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1245
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !212, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1247, metadata !DIExpression()) #34, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %10, metadata !1256, metadata !DIExpression()) #34, !dbg !1264
  call void @llvm.dbg.value(metadata i32 0, metadata !1262, metadata !DIExpression()) #34, !dbg !1264
  call void @llvm.dbg.value(metadata i64 8, metadata !1263, metadata !DIExpression()) #34, !dbg !1264
  store i64 0, i64* %4, align 8, !dbg !1266
  call void @llvm.dbg.value(metadata i32* %3, metadata !207, metadata !DIExpression(DW_OP_deref)), !dbg !1239
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !1267
  %12 = icmp eq i64 %11, 2, !dbg !1269
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !207, metadata !DIExpression()), !dbg !1239
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1270
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1271
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1271
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1239
  ret i8* %18, !dbg !1271
}

; Function Attrs: nounwind
declare !dbg !1272 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1278 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1283, metadata !DIExpression()), !dbg !1286
  %2 = tail call i32* @__errno_location() #37, !dbg !1287
  %3 = load i32, i32* %2, align 4, !dbg !1287, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %3, metadata !1284, metadata !DIExpression()), !dbg !1286
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1288
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1288
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1288
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !1289
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1285, metadata !DIExpression()), !dbg !1286
  store i32 %3, i32* %2, align 4, !dbg !1290, !tbaa !565
  ret %struct.quoting_options* %8, !dbg !1291
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1292 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1298, metadata !DIExpression()), !dbg !1299
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1300
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1300
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1301
  %5 = load i32, i32* %4, align 8, !dbg !1301, !tbaa !1302
  ret i32 %5, !dbg !1304
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1305 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1309, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %1, metadata !1310, metadata !DIExpression()), !dbg !1311
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1312
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1312
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1313
  store i32 %1, i32* %5, align 8, !dbg !1314, !tbaa !1302
  ret void, !dbg !1315
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1316 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1320, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i8 %1, metadata !1321, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %2, metadata !1322, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i8 %1, metadata !1323, metadata !DIExpression()), !dbg !1328
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1329
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1329
  %6 = lshr i8 %1, 5, !dbg !1330
  %7 = zext i8 %6 to i64, !dbg !1330
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1331
  call void @llvm.dbg.value(metadata i32* %8, metadata !1324, metadata !DIExpression()), !dbg !1328
  %9 = and i8 %1, 31, !dbg !1332
  %10 = zext i8 %9 to i32, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %10, metadata !1326, metadata !DIExpression()), !dbg !1328
  %11 = load i32, i32* %8, align 4, !dbg !1333, !tbaa !565
  %12 = lshr i32 %11, %10, !dbg !1334
  %13 = and i32 %12, 1, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %13, metadata !1327, metadata !DIExpression()), !dbg !1328
  %14 = and i32 %2, 1, !dbg !1336
  %15 = xor i32 %13, %14, !dbg !1337
  %16 = shl i32 %15, %10, !dbg !1338
  %17 = xor i32 %16, %11, !dbg !1339
  store i32 %17, i32* %8, align 4, !dbg !1339, !tbaa !565
  ret i32 %13, !dbg !1340
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1341 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1345, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i32 %1, metadata !1346, metadata !DIExpression()), !dbg !1348
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1349
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1345, metadata !DIExpression()), !dbg !1348
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1352
  %6 = load i32, i32* %5, align 4, !dbg !1352, !tbaa !1353
  call void @llvm.dbg.value(metadata i32 %6, metadata !1347, metadata !DIExpression()), !dbg !1348
  store i32 %1, i32* %5, align 4, !dbg !1354, !tbaa !1353
  ret i32 %6, !dbg !1355
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1356 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1360, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %1, metadata !1361, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %2, metadata !1362, metadata !DIExpression()), !dbg !1363
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1364
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1366
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1360, metadata !DIExpression()), !dbg !1363
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1367
  store i32 10, i32* %6, align 8, !dbg !1368, !tbaa !1302
  %7 = icmp ne i8* %1, null, !dbg !1369
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1371
  br i1 %9, label %11, label %10, !dbg !1371

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !1372
  unreachable, !dbg !1372

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1373
  store i8* %1, i8** %12, align 8, !dbg !1374, !tbaa !1375
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1376
  store i8* %2, i8** %13, align 8, !dbg !1377, !tbaa !1378
  ret void, !dbg !1379
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1384, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %1, metadata !1385, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i8* %2, metadata !1386, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %3, metadata !1387, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1388, metadata !DIExpression()), !dbg !1392
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1393
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1393
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1389, metadata !DIExpression()), !dbg !1392
  %8 = tail call i32* @__errno_location() #37, !dbg !1394
  %9 = load i32, i32* %8, align 4, !dbg !1394, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %9, metadata !1390, metadata !DIExpression()), !dbg !1392
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1395
  %11 = load i32, i32* %10, align 8, !dbg !1395, !tbaa !1302
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1396
  %13 = load i32, i32* %12, align 4, !dbg !1396, !tbaa !1353
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1397
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1398
  %16 = load i8*, i8** %15, align 8, !dbg !1398, !tbaa !1375
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1399
  %18 = load i8*, i8** %17, align 8, !dbg !1399, !tbaa !1378
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %19, metadata !1391, metadata !DIExpression()), !dbg !1392
  store i32 %9, i32* %8, align 4, !dbg !1401, !tbaa !565
  ret i64 %19, !dbg !1402
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1403 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1409, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %1, metadata !1410, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %2, metadata !1411, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %3, metadata !1412, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %4, metadata !1413, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %5, metadata !1414, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32* %6, metadata !1415, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %7, metadata !1416, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %8, metadata !1417, metadata !DIExpression()), !dbg !1471
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !1472
  %18 = icmp eq i64 %17, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i1 %18, metadata !1418, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1471
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 0, metadata !1420, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* null, metadata !1421, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 0, metadata !1423, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %5, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1471
  call void @llvm.dbg.value(metadata i8 0, metadata !1425, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 1, metadata !1426, metadata !DIExpression()), !dbg !1471
  %19 = and i32 %5, 2, !dbg !1474
  %20 = icmp ne i32 %19, 0, !dbg !1474
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
  br label %36, !dbg !1474

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1475
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1476
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1477
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1410, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1426, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1425, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1424, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1423, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %43, metadata !1422, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %42, metadata !1421, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %41, metadata !1420, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %40, metadata !1412, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %39, metadata !1417, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %38, metadata !1416, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %37, metadata !1413, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.label(metadata !1464), !dbg !1478
  call void @llvm.dbg.value(metadata i8 0, metadata !1427, metadata !DIExpression()), !dbg !1471
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
  ], !dbg !1479

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1424, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 5, metadata !1413, metadata !DIExpression()), !dbg !1471
  br label %111, !dbg !1480

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1424, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 5, metadata !1413, metadata !DIExpression()), !dbg !1471
  br i1 %45, label %111, label %51, !dbg !1480

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1481
  br i1 %52, label %111, label %53, !dbg !1485

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1481, !tbaa !574
  br label %111, !dbg !1481

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), metadata !288, metadata !DIExpression()) #34, !dbg !1486
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #34, !dbg !1486
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 noundef 5) #34, !dbg !1490
  call void @llvm.dbg.value(metadata i8* %55, metadata !290, metadata !DIExpression()) #34, !dbg !1486
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), !dbg !1491
  br i1 %56, label %57, label %66, !dbg !1493

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1494
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1495
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !292, metadata !DIExpression()) #34, !dbg !1496
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1497, metadata !DIExpression()) #34, !dbg !1503
  call void @llvm.dbg.value(metadata i8* %23, metadata !1505, metadata !DIExpression()) #34, !dbg !1510
  call void @llvm.dbg.value(metadata i32 0, metadata !1508, metadata !DIExpression()) #34, !dbg !1510
  call void @llvm.dbg.value(metadata i64 8, metadata !1509, metadata !DIExpression()) #34, !dbg !1510
  store i64 0, i64* %13, align 8, !dbg !1512
  call void @llvm.dbg.value(metadata i32* %12, metadata !291, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1486
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !1513
  %59 = icmp eq i64 %58, 3, !dbg !1515
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !291, metadata !DIExpression()) #34, !dbg !1486
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1516
  %63 = icmp eq i32 %37, 9, !dbg !1516
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), !dbg !1516
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1516
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1517
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1517
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1486
  call void @llvm.dbg.value(metadata i8* %67, metadata !1416, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), metadata !288, metadata !DIExpression()) #34, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #34, !dbg !1518
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), i32 noundef 5) #34, !dbg !1520
  call void @llvm.dbg.value(metadata i8* %68, metadata !290, metadata !DIExpression()) #34, !dbg !1518
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), !dbg !1521
  br i1 %69, label %70, label %79, !dbg !1522

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1523
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1524
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !292, metadata !DIExpression()) #34, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1497, metadata !DIExpression()) #34, !dbg !1526
  call void @llvm.dbg.value(metadata i8* %26, metadata !1505, metadata !DIExpression()) #34, !dbg !1528
  call void @llvm.dbg.value(metadata i32 0, metadata !1508, metadata !DIExpression()) #34, !dbg !1528
  call void @llvm.dbg.value(metadata i64 8, metadata !1509, metadata !DIExpression()) #34, !dbg !1528
  store i64 0, i64* %11, align 8, !dbg !1530
  call void @llvm.dbg.value(metadata i32* %10, metadata !291, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1518
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !1531
  %72 = icmp eq i64 %71, 3, !dbg !1532
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !291, metadata !DIExpression()) #34, !dbg !1518
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1533
  %76 = icmp eq i32 %37, 9, !dbg !1533
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), !dbg !1533
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1533
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1534
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1534
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1417, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %80, metadata !1416, metadata !DIExpression()), !dbg !1471
  br i1 %45, label %97, label %82, !dbg !1535

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1428, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression()), !dbg !1471
  %83 = load i8, i8* %80, align 1, !dbg !1537, !tbaa !574
  %84 = icmp eq i8 %83, 0, !dbg !1539
  br i1 %84, label %97, label %85, !dbg !1539

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1428, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %88, metadata !1419, metadata !DIExpression()), !dbg !1471
  %89 = icmp ult i64 %88, %48, !dbg !1540
  br i1 %89, label %90, label %92, !dbg !1543

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1540
  store i8 %86, i8* %91, align 1, !dbg !1540, !tbaa !574
  br label %92, !dbg !1540

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %93, metadata !1419, metadata !DIExpression()), !dbg !1471
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %94, metadata !1428, metadata !DIExpression()), !dbg !1536
  %95 = load i8, i8* %94, align 1, !dbg !1537, !tbaa !574
  %96 = icmp eq i8 %95, 0, !dbg !1539
  br i1 %96, label %97, label %85, !dbg !1539, !llvm.loop !1545

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1547
  call void @llvm.dbg.value(metadata i64 %98, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %81, metadata !1421, metadata !DIExpression()), !dbg !1471
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %99, metadata !1422, metadata !DIExpression()), !dbg !1471
  br label %111, !dbg !1549

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1471
  br label %102, !dbg !1550

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1424, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1423, metadata !DIExpression()), !dbg !1471
  br i1 %45, label %102, label %105, !dbg !1551

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1424, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1423, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 2, metadata !1413, metadata !DIExpression()), !dbg !1471
  br label %111, !dbg !1552

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1424, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1423, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 2, metadata !1413, metadata !DIExpression()), !dbg !1471
  br i1 %45, label %111, label %105, !dbg !1552

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1553
  br i1 %107, label %111, label %108, !dbg !1557

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1553, !tbaa !574
  br label %111, !dbg !1553

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1424, metadata !DIExpression()), !dbg !1471
  br label %111, !dbg !1558

110:                                              ; preds = %36
  call void @abort() #36, !dbg !1559
  unreachable, !dbg !1559

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1547
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.89, i64 0, i64 0), %102 ], !dbg !1471
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1471
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1424, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1423, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %117, metadata !1422, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %116, metadata !1421, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %115, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %114, metadata !1417, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %113, metadata !1416, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %112, metadata !1413, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 0, metadata !1433, metadata !DIExpression()), !dbg !1560
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
  br label %132, !dbg !1561

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1547
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1475
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1560
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1410, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %139, metadata !1433, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1426, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1425, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %135, metadata !1420, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %134, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %133, metadata !1412, metadata !DIExpression()), !dbg !1471
  %141 = icmp eq i64 %133, -1, !dbg !1562
  br i1 %141, label %142, label %146, !dbg !1563

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1564
  %144 = load i8, i8* %143, align 1, !dbg !1564, !tbaa !574
  %145 = icmp eq i8 %144, 0, !dbg !1565
  br i1 %145, label %596, label %148, !dbg !1566

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1567
  br i1 %147, label %596, label %148, !dbg !1566

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1435, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 0, metadata !1438, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 0, metadata !1439, metadata !DIExpression()), !dbg !1568
  br i1 %123, label %149, label %163, !dbg !1569

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1571
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1572
  br i1 %151, label %152, label %154, !dbg !1572

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %153, metadata !1412, metadata !DIExpression()), !dbg !1471
  br label %154, !dbg !1574

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1574
  call void @llvm.dbg.value(metadata i64 %155, metadata !1412, metadata !DIExpression()), !dbg !1471
  %156 = icmp ugt i64 %150, %155, !dbg !1575
  br i1 %156, label %163, label %157, !dbg !1576

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %158, metadata !1578, metadata !DIExpression()) #34, !dbg !1583
  call void @llvm.dbg.value(metadata i8* %116, metadata !1581, metadata !DIExpression()) #34, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %117, metadata !1582, metadata !DIExpression()) #34, !dbg !1583
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !1585
  %160 = icmp ne i32 %159, 0, !dbg !1586
  %161 = or i1 %160, %125, !dbg !1587
  %162 = xor i1 %160, true, !dbg !1587
  br i1 %161, label %163, label %647, !dbg !1587

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1435, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %164, metadata !1412, metadata !DIExpression()), !dbg !1471
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1588
  %167 = load i8, i8* %166, align 1, !dbg !1588, !tbaa !574
  call void @llvm.dbg.value(metadata i8 %167, metadata !1440, metadata !DIExpression()), !dbg !1568
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
  ], !dbg !1589

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1590

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1591

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1438, metadata !DIExpression()), !dbg !1568
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1595
  br i1 %171, label %188, label %172, !dbg !1595

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1597
  br i1 %173, label %174, label %176, !dbg !1601

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1597
  store i8 39, i8* %175, align 1, !dbg !1597, !tbaa !574
  br label %176, !dbg !1597

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %177, metadata !1419, metadata !DIExpression()), !dbg !1471
  %178 = icmp ult i64 %177, %140, !dbg !1602
  br i1 %178, label %179, label %181, !dbg !1605

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1602
  store i8 36, i8* %180, align 1, !dbg !1602, !tbaa !574
  br label %181, !dbg !1602

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %182, metadata !1419, metadata !DIExpression()), !dbg !1471
  %183 = icmp ult i64 %182, %140, !dbg !1606
  br i1 %183, label %184, label %186, !dbg !1609

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1606
  store i8 39, i8* %185, align 1, !dbg !1606, !tbaa !574
  br label %186, !dbg !1606

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %187, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 1, metadata !1427, metadata !DIExpression()), !dbg !1471
  br label %188, !dbg !1610

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1471
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %189, metadata !1419, metadata !DIExpression()), !dbg !1471
  %191 = icmp ult i64 %189, %140, !dbg !1611
  br i1 %191, label %192, label %194, !dbg !1614

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1611
  store i8 92, i8* %193, align 1, !dbg !1611, !tbaa !574
  br label %194, !dbg !1611

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %195, metadata !1419, metadata !DIExpression()), !dbg !1471
  br i1 %120, label %196, label %499, !dbg !1615

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1617
  %198 = icmp ult i64 %197, %164, !dbg !1618
  br i1 %198, label %199, label %456, !dbg !1619

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1620
  %201 = load i8, i8* %200, align 1, !dbg !1620, !tbaa !574
  %202 = add i8 %201, -48, !dbg !1621
  %203 = icmp ult i8 %202, 10, !dbg !1621
  br i1 %203, label %204, label %456, !dbg !1621

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1622
  br i1 %205, label %206, label %208, !dbg !1626

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1622
  store i8 48, i8* %207, align 1, !dbg !1622, !tbaa !574
  br label %208, !dbg !1622

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %209, metadata !1419, metadata !DIExpression()), !dbg !1471
  %210 = icmp ult i64 %209, %140, !dbg !1627
  br i1 %210, label %211, label %213, !dbg !1630

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1627
  store i8 48, i8* %212, align 1, !dbg !1627, !tbaa !574
  br label %213, !dbg !1627

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %214, metadata !1419, metadata !DIExpression()), !dbg !1471
  br label %456, !dbg !1631

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1632

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1633

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1634

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1636

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1638
  %221 = icmp ult i64 %220, %164, !dbg !1639
  br i1 %221, label %222, label %456, !dbg !1640

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1641
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1642
  %225 = load i8, i8* %224, align 1, !dbg !1642, !tbaa !574
  %226 = icmp eq i8 %225, 63, !dbg !1643
  br i1 %226, label %227, label %456, !dbg !1644

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1645
  %229 = load i8, i8* %228, align 1, !dbg !1645, !tbaa !574
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
  ], !dbg !1646

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1647

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1440, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %220, metadata !1433, metadata !DIExpression()), !dbg !1560
  %232 = icmp ult i64 %134, %140, !dbg !1649
  br i1 %232, label %233, label %235, !dbg !1652

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1649
  store i8 63, i8* %234, align 1, !dbg !1649, !tbaa !574
  br label %235, !dbg !1649

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %236, metadata !1419, metadata !DIExpression()), !dbg !1471
  %237 = icmp ult i64 %236, %140, !dbg !1653
  br i1 %237, label %238, label %240, !dbg !1656

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1653
  store i8 34, i8* %239, align 1, !dbg !1653, !tbaa !574
  br label %240, !dbg !1653

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %241, metadata !1419, metadata !DIExpression()), !dbg !1471
  %242 = icmp ult i64 %241, %140, !dbg !1657
  br i1 %242, label %243, label %245, !dbg !1660

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1657
  store i8 34, i8* %244, align 1, !dbg !1657, !tbaa !574
  br label %245, !dbg !1657

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %246, metadata !1419, metadata !DIExpression()), !dbg !1471
  %247 = icmp ult i64 %246, %140, !dbg !1661
  br i1 %247, label %248, label %250, !dbg !1664

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1661
  store i8 63, i8* %249, align 1, !dbg !1661, !tbaa !574
  br label %250, !dbg !1661

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %251, metadata !1419, metadata !DIExpression()), !dbg !1471
  br label %456, !dbg !1665

252:                                              ; preds = %163
  br label %263, !dbg !1666

253:                                              ; preds = %163
  br label %263, !dbg !1667

254:                                              ; preds = %163
  br label %261, !dbg !1668

255:                                              ; preds = %163
  br label %261, !dbg !1669

256:                                              ; preds = %163
  br label %263, !dbg !1670

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1671

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1672

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1675

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1677

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1678
  call void @llvm.dbg.label(metadata !1465), !dbg !1679
  br i1 %128, label %263, label %638, !dbg !1680

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1678
  call void @llvm.dbg.label(metadata !1467), !dbg !1682
  br i1 %118, label %510, label %467, !dbg !1683

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1684

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1685, !tbaa !574
  %268 = icmp eq i8 %267, 0, !dbg !1687
  br i1 %268, label %269, label %456, !dbg !1688

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1689
  br i1 %270, label %271, label %456, !dbg !1691

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1439, metadata !DIExpression()), !dbg !1568
  br label %272, !dbg !1692

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1439, metadata !DIExpression()), !dbg !1568
  br i1 %126, label %274, label %456, !dbg !1693

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1695

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1425, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 1, metadata !1439, metadata !DIExpression()), !dbg !1568
  br i1 %126, label %276, label %456, !dbg !1696

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1697

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1700
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1702
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1702
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %282, metadata !1410, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %281, metadata !1420, metadata !DIExpression()), !dbg !1471
  %283 = icmp ult i64 %134, %282, !dbg !1703
  br i1 %283, label %284, label %286, !dbg !1706

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1703
  store i8 39, i8* %285, align 1, !dbg !1703, !tbaa !574
  br label %286, !dbg !1703

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %287, metadata !1419, metadata !DIExpression()), !dbg !1471
  %288 = icmp ult i64 %287, %282, !dbg !1707
  br i1 %288, label %289, label %291, !dbg !1710

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1707
  store i8 92, i8* %290, align 1, !dbg !1707, !tbaa !574
  br label %291, !dbg !1707

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %292, metadata !1419, metadata !DIExpression()), !dbg !1471
  %293 = icmp ult i64 %292, %282, !dbg !1711
  br i1 %293, label %294, label %296, !dbg !1714

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1711
  store i8 39, i8* %295, align 1, !dbg !1711, !tbaa !574
  br label %296, !dbg !1711

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %297, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 0, metadata !1427, metadata !DIExpression()), !dbg !1471
  br label %456, !dbg !1715

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1716

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1441, metadata !DIExpression()), !dbg !1717
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !1718
  %301 = load i16*, i16** %300, align 8, !dbg !1718, !tbaa !485
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1718
  %304 = load i16, i16* %303, align 2, !dbg !1718, !tbaa !599
  %305 = and i16 %304, 16384, !dbg !1718
  %306 = icmp ne i16 %305, 0, !dbg !1720
  call void @llvm.dbg.value(metadata i8 poison, metadata !1444, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %349, metadata !1441, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %312, metadata !1412, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i1 %350, metadata !1439, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1568
  br label %352, !dbg !1721

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1722
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1445, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1497, metadata !DIExpression()) #34, !dbg !1724
  call void @llvm.dbg.value(metadata i8* %32, metadata !1505, metadata !DIExpression()) #34, !dbg !1726
  call void @llvm.dbg.value(metadata i32 0, metadata !1508, metadata !DIExpression()) #34, !dbg !1726
  call void @llvm.dbg.value(metadata i64 8, metadata !1509, metadata !DIExpression()) #34, !dbg !1726
  store i64 0, i64* %14, align 8, !dbg !1728
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8 1, metadata !1444, metadata !DIExpression()), !dbg !1717
  %308 = icmp eq i64 %164, -1, !dbg !1729
  br i1 %308, label %309, label %311, !dbg !1731

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %310, metadata !1412, metadata !DIExpression()), !dbg !1471
  br label %311, !dbg !1733

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1568
  call void @llvm.dbg.value(metadata i64 %312, metadata !1412, metadata !DIExpression()), !dbg !1471
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1734
  %313 = sub i64 %312, %139, !dbg !1735
  call void @llvm.dbg.value(metadata i32* %16, metadata !1448, metadata !DIExpression(DW_OP_deref)), !dbg !1736
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %314, metadata !1452, metadata !DIExpression()), !dbg !1736
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1738

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1717
  %316 = icmp ugt i64 %312, %139, !dbg !1739
  br i1 %316, label %319, label %317, !dbg !1741

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1444, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1717
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1742
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %349, metadata !1441, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %312, metadata !1412, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i1 %350, metadata !1439, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1568
  br label %352, !dbg !1721

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1444, metadata !DIExpression()), !dbg !1717
  br label %346, !dbg !1744

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1441, metadata !DIExpression()), !dbg !1717
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1746
  %323 = load i8, i8* %322, align 1, !dbg !1746, !tbaa !574
  %324 = icmp eq i8 %323, 0, !dbg !1741
  br i1 %324, label %348, label %325, !dbg !1747

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %326, metadata !1441, metadata !DIExpression()), !dbg !1717
  %327 = add i64 %326, %139, !dbg !1749
  %328 = icmp eq i64 %326, %313, !dbg !1739
  br i1 %328, label %348, label %319, !dbg !1741, !llvm.loop !1750

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1751
  call void @llvm.dbg.value(metadata i64 1, metadata !1453, metadata !DIExpression()), !dbg !1752
  br i1 %331, label %332, label %340, !dbg !1751

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1453, metadata !DIExpression()), !dbg !1752
  %334 = add i64 %333, %139, !dbg !1753
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1755
  %336 = load i8, i8* %335, align 1, !dbg !1755, !tbaa !574
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1756

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %338, metadata !1453, metadata !DIExpression()), !dbg !1752
  %339 = icmp eq i64 %338, %314, !dbg !1758
  br i1 %339, label %340, label %332, !dbg !1759, !llvm.loop !1760

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1762, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %341, metadata !1448, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i32 %341, metadata !1764, metadata !DIExpression()) #34, !dbg !1772
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !1774
  %343 = icmp ne i32 %342, 0, !dbg !1775
  call void @llvm.dbg.value(metadata i8 poison, metadata !1444, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %314, metadata !1441, metadata !DIExpression()), !dbg !1717
  br label %348, !dbg !1776

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1444, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1717
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1742
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1743
  call void @llvm.dbg.label(metadata !1470), !dbg !1777
  %345 = select i1 %118, i32 4, i32 2, !dbg !1778
  br label %643, !dbg !1778

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1444, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1717
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1742
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %349, metadata !1441, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %312, metadata !1412, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i1 %350, metadata !1439, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1568
  br label %352, !dbg !1721

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1444, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1717
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1742
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %349, metadata !1441, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %312, metadata !1412, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i1 %350, metadata !1439, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1568
  %351 = icmp ugt i64 %349, 1, !dbg !1780
  br i1 %351, label %357, label %352, !dbg !1721

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1781
  br i1 %356, label %456, label %357, !dbg !1781

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %361, metadata !1461, metadata !DIExpression()), !dbg !1783
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1784

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1471
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1560
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1785
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1568
  call void @llvm.dbg.value(metadata i8 %369, metadata !1440, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 %368, metadata !1438, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1435, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %366, metadata !1433, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %364, metadata !1419, metadata !DIExpression()), !dbg !1471
  br i1 %362, label %414, label %370, !dbg !1786

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1791

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1438, metadata !DIExpression()), !dbg !1568
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1794
  br i1 %372, label %389, label %373, !dbg !1794

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1796
  br i1 %374, label %375, label %377, !dbg !1800

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1796
  store i8 39, i8* %376, align 1, !dbg !1796, !tbaa !574
  br label %377, !dbg !1796

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %378, metadata !1419, metadata !DIExpression()), !dbg !1471
  %379 = icmp ult i64 %378, %140, !dbg !1801
  br i1 %379, label %380, label %382, !dbg !1804

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1801
  store i8 36, i8* %381, align 1, !dbg !1801, !tbaa !574
  br label %382, !dbg !1801

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %383, metadata !1419, metadata !DIExpression()), !dbg !1471
  %384 = icmp ult i64 %383, %140, !dbg !1805
  br i1 %384, label %385, label %387, !dbg !1808

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1805
  store i8 39, i8* %386, align 1, !dbg !1805, !tbaa !574
  br label %387, !dbg !1805

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %388, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 1, metadata !1427, metadata !DIExpression()), !dbg !1471
  br label %389, !dbg !1809

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1471
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %390, metadata !1419, metadata !DIExpression()), !dbg !1471
  %392 = icmp ult i64 %390, %140, !dbg !1810
  br i1 %392, label %393, label %395, !dbg !1813

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1810
  store i8 92, i8* %394, align 1, !dbg !1810, !tbaa !574
  br label %395, !dbg !1810

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %396, metadata !1419, metadata !DIExpression()), !dbg !1471
  %397 = icmp ult i64 %396, %140, !dbg !1814
  br i1 %397, label %398, label %402, !dbg !1817

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1814
  %400 = or i8 %399, 48, !dbg !1814
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1814
  store i8 %400, i8* %401, align 1, !dbg !1814, !tbaa !574
  br label %402, !dbg !1814

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %403, metadata !1419, metadata !DIExpression()), !dbg !1471
  %404 = icmp ult i64 %403, %140, !dbg !1818
  br i1 %404, label %405, label %410, !dbg !1821

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1818
  %407 = and i8 %406, 7, !dbg !1818
  %408 = or i8 %407, 48, !dbg !1818
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1818
  store i8 %408, i8* %409, align 1, !dbg !1818, !tbaa !574
  br label %410, !dbg !1818

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %411, metadata !1419, metadata !DIExpression()), !dbg !1471
  %412 = and i8 %369, 7, !dbg !1822
  %413 = or i8 %412, 48, !dbg !1823
  call void @llvm.dbg.value(metadata i8 %413, metadata !1440, metadata !DIExpression()), !dbg !1568
  br label %421, !dbg !1824

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1825

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1826
  br i1 %416, label %417, label %419, !dbg !1831

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1826
  store i8 92, i8* %418, align 1, !dbg !1826, !tbaa !574
  br label %419, !dbg !1826

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %420, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 0, metadata !1435, metadata !DIExpression()), !dbg !1568
  br label %421, !dbg !1832

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1471
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1568
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1568
  call void @llvm.dbg.value(metadata i8 %426, metadata !1440, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 %425, metadata !1438, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1435, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %422, metadata !1419, metadata !DIExpression()), !dbg !1471
  %427 = add i64 %366, 1, !dbg !1833
  %428 = icmp ugt i64 %361, %427, !dbg !1835
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1836

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1837
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1837
  br i1 %432, label %433, label %444, !dbg !1837

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1840
  br i1 %434, label %435, label %437, !dbg !1844

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1840
  store i8 39, i8* %436, align 1, !dbg !1840, !tbaa !574
  br label %437, !dbg !1840

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %438, metadata !1419, metadata !DIExpression()), !dbg !1471
  %439 = icmp ult i64 %438, %140, !dbg !1845
  br i1 %439, label %440, label %442, !dbg !1848

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1845
  store i8 39, i8* %441, align 1, !dbg !1845, !tbaa !574
  br label %442, !dbg !1845

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %443, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 0, metadata !1427, metadata !DIExpression()), !dbg !1471
  br label %444, !dbg !1849

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1850
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %445, metadata !1419, metadata !DIExpression()), !dbg !1471
  %447 = icmp ult i64 %445, %140, !dbg !1851
  br i1 %447, label %448, label %450, !dbg !1854

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1851
  store i8 %426, i8* %449, align 1, !dbg !1851, !tbaa !574
  br label %450, !dbg !1851

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %451, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %427, metadata !1433, metadata !DIExpression()), !dbg !1560
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1855
  %453 = load i8, i8* %452, align 1, !dbg !1855, !tbaa !574
  call void @llvm.dbg.value(metadata i8 %453, metadata !1440, metadata !DIExpression()), !dbg !1568
  br label %363, !dbg !1856, !llvm.loop !1857

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1440, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i1 %358, metadata !1439, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1568
  call void @llvm.dbg.value(metadata i8 %425, metadata !1438, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1435, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %366, metadata !1433, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %422, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %360, metadata !1412, metadata !DIExpression()), !dbg !1471
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1860
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1471
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1475
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1560
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1568
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1410, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %465, metadata !1440, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1439, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1438, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1435, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %462, metadata !1433, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1425, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %459, metadata !1420, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %458, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %457, metadata !1412, metadata !DIExpression()), !dbg !1471
  br i1 %121, label %478, label %467, !dbg !1861

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
  br i1 %131, label %479, label %499, !dbg !1863

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1864

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
  %490 = lshr i8 %481, 5, !dbg !1865
  %491 = zext i8 %490 to i64, !dbg !1865
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1866
  %493 = load i32, i32* %492, align 4, !dbg !1866, !tbaa !565
  %494 = and i8 %481, 31, !dbg !1867
  %495 = zext i8 %494 to i32, !dbg !1867
  %496 = shl nuw i32 1, %495, !dbg !1868
  %497 = and i32 %493, %496, !dbg !1868
  %498 = icmp eq i32 %497, 0, !dbg !1868
  br i1 %498, label %499, label %510, !dbg !1869

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
  br i1 %165, label %510, label %546, !dbg !1870

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1860
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1471
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1475
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1871
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1568
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1410, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %518, metadata !1440, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1439, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %516, metadata !1433, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1425, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %513, metadata !1420, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %512, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %511, metadata !1412, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.label(metadata !1468), !dbg !1872
  br i1 %119, label %638, label %520, !dbg !1873

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1438, metadata !DIExpression()), !dbg !1568
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1875
  br i1 %521, label %538, label %522, !dbg !1875

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1877
  br i1 %523, label %524, label %526, !dbg !1881

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1877
  store i8 39, i8* %525, align 1, !dbg !1877, !tbaa !574
  br label %526, !dbg !1877

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %527, metadata !1419, metadata !DIExpression()), !dbg !1471
  %528 = icmp ult i64 %527, %519, !dbg !1882
  br i1 %528, label %529, label %531, !dbg !1885

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1882
  store i8 36, i8* %530, align 1, !dbg !1882, !tbaa !574
  br label %531, !dbg !1882

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %532, metadata !1419, metadata !DIExpression()), !dbg !1471
  %533 = icmp ult i64 %532, %519, !dbg !1886
  br i1 %533, label %534, label %536, !dbg !1889

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1886
  store i8 39, i8* %535, align 1, !dbg !1886, !tbaa !574
  br label %536, !dbg !1886

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %537, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 1, metadata !1427, metadata !DIExpression()), !dbg !1471
  br label %538, !dbg !1890

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1568
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %539, metadata !1419, metadata !DIExpression()), !dbg !1471
  %541 = icmp ult i64 %539, %519, !dbg !1891
  br i1 %541, label %542, label %544, !dbg !1894

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1891
  store i8 92, i8* %543, align 1, !dbg !1891, !tbaa !574
  br label %544, !dbg !1891

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %556, metadata !1410, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %555, metadata !1440, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1439, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1438, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %552, metadata !1433, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1425, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %549, metadata !1420, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %548, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %547, metadata !1412, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.label(metadata !1469), !dbg !1895
  br label %570, !dbg !1896

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1860
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1471
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1475
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1871
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1899
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1410, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %555, metadata !1440, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1439, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8 poison, metadata !1438, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %552, metadata !1433, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1425, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %549, metadata !1420, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %548, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %547, metadata !1412, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.label(metadata !1469), !dbg !1895
  %557 = xor i1 %551, true, !dbg !1896
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1896
  br i1 %558, label %570, label %559, !dbg !1896

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1900
  br i1 %560, label %561, label %563, !dbg !1904

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1900
  store i8 39, i8* %562, align 1, !dbg !1900, !tbaa !574
  br label %563, !dbg !1900

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %564, metadata !1419, metadata !DIExpression()), !dbg !1471
  %565 = icmp ult i64 %564, %556, !dbg !1905
  br i1 %565, label %566, label %568, !dbg !1908

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1905
  store i8 39, i8* %567, align 1, !dbg !1905, !tbaa !574
  br label %568, !dbg !1905

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %569, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 0, metadata !1427, metadata !DIExpression()), !dbg !1471
  br label %570, !dbg !1909

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1568
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %578, metadata !1419, metadata !DIExpression()), !dbg !1471
  %580 = icmp ult i64 %578, %571, !dbg !1910
  br i1 %580, label %581, label %583, !dbg !1913

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1910
  store i8 %572, i8* %582, align 1, !dbg !1910, !tbaa !574
  br label %583, !dbg !1910

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %584, metadata !1419, metadata !DIExpression()), !dbg !1471
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1914
  call void @llvm.dbg.value(metadata i8 poison, metadata !1426, metadata !DIExpression()), !dbg !1471
  br label %586, !dbg !1915

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1860
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1471
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1475
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1871
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1410, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %593, metadata !1433, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8 poison, metadata !1427, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1426, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1425, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %589, metadata !1420, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %588, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %587, metadata !1412, metadata !DIExpression()), !dbg !1471
  %595 = add i64 %593, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %595, metadata !1433, metadata !DIExpression()), !dbg !1560
  br label %132, !dbg !1917, !llvm.loop !1918

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1410, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1426, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 poison, metadata !1425, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 undef, metadata !1420, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 undef, metadata !1419, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 undef, metadata !1412, metadata !DIExpression()), !dbg !1471
  %597 = icmp eq i64 %134, 0, !dbg !1920
  %598 = and i1 %126, %597, !dbg !1922
  %599 = and i1 %598, %119, !dbg !1922
  br i1 %599, label %638, label %600, !dbg !1922

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1923
  %602 = or i1 %119, %601, !dbg !1923
  %603 = xor i1 %136, true, !dbg !1923
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1923
  br i1 %604, label %612, label %605, !dbg !1923

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1925

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1927
  br label %653, !dbg !1929

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1930
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1932
  br i1 %611, label %36, label %612, !dbg !1932

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1933
  %615 = or i1 %614, %613, !dbg !1935
  br i1 %615, label %631, label %616, !dbg !1935

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1421, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %134, metadata !1419, metadata !DIExpression()), !dbg !1471
  %617 = load i8, i8* %116, align 1, !dbg !1936, !tbaa !574
  %618 = icmp eq i8 %617, 0, !dbg !1939
  br i1 %618, label %631, label %619, !dbg !1939

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1421, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %622, metadata !1419, metadata !DIExpression()), !dbg !1471
  %623 = icmp ult i64 %622, %140, !dbg !1940
  br i1 %623, label %624, label %626, !dbg !1943

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1940
  store i8 %620, i8* %625, align 1, !dbg !1940, !tbaa !574
  br label %626, !dbg !1940

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %627, metadata !1419, metadata !DIExpression()), !dbg !1471
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1944
  call void @llvm.dbg.value(metadata i8* %628, metadata !1421, metadata !DIExpression()), !dbg !1471
  %629 = load i8, i8* %628, align 1, !dbg !1936, !tbaa !574
  %630 = icmp eq i8 %629, 0, !dbg !1939
  br i1 %630, label %631, label %619, !dbg !1939, !llvm.loop !1945

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1547
  call void @llvm.dbg.value(metadata i64 %632, metadata !1419, metadata !DIExpression()), !dbg !1471
  %633 = icmp ult i64 %632, %140, !dbg !1947
  br i1 %633, label %634, label %653, !dbg !1949

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1950
  store i8 0, i8* %635, align 1, !dbg !1951, !tbaa !574
  br label %653, !dbg !1950

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1470), !dbg !1777
  %637 = icmp eq i32 %112, 2, !dbg !1952
  br i1 %637, label %643, label %647, !dbg !1778

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1470), !dbg !1777
  %641 = icmp eq i32 %112, 2, !dbg !1952
  %642 = select i1 %118, i32 4, i32 2, !dbg !1778
  br i1 %641, label %643, label %647, !dbg !1778

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1778

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1413, metadata !DIExpression()), !dbg !1471
  %651 = and i32 %5, -3, !dbg !1953
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1954
  br label %653, !dbg !1955

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1956
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1957 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1959 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1963, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %1, metadata !1964, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1965, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8* %0, metadata !1967, metadata !DIExpression()) #34, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %1, metadata !1972, metadata !DIExpression()) #34, !dbg !1980
  call void @llvm.dbg.value(metadata i64* null, metadata !1973, metadata !DIExpression()) #34, !dbg !1980
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1974, metadata !DIExpression()) #34, !dbg !1980
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1982
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1982
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1975, metadata !DIExpression()) #34, !dbg !1980
  %6 = tail call i32* @__errno_location() #37, !dbg !1983
  %7 = load i32, i32* %6, align 4, !dbg !1983, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %7, metadata !1976, metadata !DIExpression()) #34, !dbg !1980
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1984
  %9 = load i32, i32* %8, align 4, !dbg !1984, !tbaa !1353
  %10 = or i32 %9, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %10, metadata !1977, metadata !DIExpression()) #34, !dbg !1980
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1986
  %12 = load i32, i32* %11, align 8, !dbg !1986, !tbaa !1302
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1987
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1988
  %15 = load i8*, i8** %14, align 8, !dbg !1988, !tbaa !1375
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1989
  %17 = load i8*, i8** %16, align 8, !dbg !1989, !tbaa !1378
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !1990
  %19 = add i64 %18, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %19, metadata !1978, metadata !DIExpression()) #34, !dbg !1980
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #41, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %20, metadata !1979, metadata !DIExpression()) #34, !dbg !1980
  %21 = load i32, i32* %11, align 8, !dbg !1993, !tbaa !1302
  %22 = load i8*, i8** %14, align 8, !dbg !1994, !tbaa !1375
  %23 = load i8*, i8** %16, align 8, !dbg !1995, !tbaa !1378
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !1996
  store i32 %7, i32* %6, align 4, !dbg !1997, !tbaa !565
  ret i8* %20, !dbg !1998
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1968 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1967, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %1, metadata !1972, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64* %2, metadata !1973, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1974, metadata !DIExpression()), !dbg !1999
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2000
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1975, metadata !DIExpression()), !dbg !1999
  %7 = tail call i32* @__errno_location() #37, !dbg !2001
  %8 = load i32, i32* %7, align 4, !dbg !2001, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %8, metadata !1976, metadata !DIExpression()), !dbg !1999
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2002
  %10 = load i32, i32* %9, align 4, !dbg !2002, !tbaa !1353
  %11 = icmp eq i64* %2, null, !dbg !2003
  %12 = zext i1 %11 to i32, !dbg !2003
  %13 = or i32 %10, %12, !dbg !2004
  call void @llvm.dbg.value(metadata i32 %13, metadata !1977, metadata !DIExpression()), !dbg !1999
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2005
  %15 = load i32, i32* %14, align 8, !dbg !2005, !tbaa !1302
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2006
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2007
  %18 = load i8*, i8** %17, align 8, !dbg !2007, !tbaa !1375
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2008
  %20 = load i8*, i8** %19, align 8, !dbg !2008, !tbaa !1378
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2009
  %22 = add i64 %21, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %22, metadata !1978, metadata !DIExpression()), !dbg !1999
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #41, !dbg !2011
  call void @llvm.dbg.value(metadata i8* %23, metadata !1979, metadata !DIExpression()), !dbg !1999
  %24 = load i32, i32* %14, align 8, !dbg !2012, !tbaa !1302
  %25 = load i8*, i8** %17, align 8, !dbg !2013, !tbaa !1375
  %26 = load i8*, i8** %19, align 8, !dbg !2014, !tbaa !1378
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2015
  store i32 %8, i32* %7, align 4, !dbg !2016, !tbaa !565
  br i1 %11, label %29, label %28, !dbg !2017

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2018, !tbaa !2020
  br label %29, !dbg !2021

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2022
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2023 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2028, !tbaa !485
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2025, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 1, metadata !2026, metadata !DIExpression()), !dbg !2030
  %2 = load i32, i32* @nslots, align 4, !tbaa !565
  call void @llvm.dbg.value(metadata i32 1, metadata !2026, metadata !DIExpression()), !dbg !2030
  %3 = icmp sgt i32 %2, 1, !dbg !2031
  br i1 %3, label %4, label %6, !dbg !2033

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2031
  br label %10, !dbg !2033

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2034
  %8 = load i8*, i8** %7, align 8, !dbg !2034, !tbaa !2036
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2038
  br i1 %9, label %17, label %16, !dbg !2039

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2026, metadata !DIExpression()), !dbg !2030
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2040
  %13 = load i8*, i8** %12, align 8, !dbg !2040, !tbaa !2036
  tail call void @free(i8* noundef %13) #34, !dbg !2041
  %14 = add nuw nsw i64 %11, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %14, metadata !2026, metadata !DIExpression()), !dbg !2030
  %15 = icmp eq i64 %14, %5, !dbg !2031
  br i1 %15, label %6, label %10, !dbg !2033, !llvm.loop !2043

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !2045
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2047, !tbaa !2048
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2049, !tbaa !2036
  br label %17, !dbg !2050

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2051
  br i1 %18, label %21, label %19, !dbg !2053

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2054
  tail call void @free(i8* noundef %20) #34, !dbg !2056
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2057, !tbaa !485
  br label %21, !dbg !2058

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2059, !tbaa !565
  ret void, !dbg !2060
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %1, metadata !2064, metadata !DIExpression()), !dbg !2065
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2066
  ret i8* %3, !dbg !2067
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2068 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2072, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %1, metadata !2073, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %2, metadata !2074, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2075, metadata !DIExpression()), !dbg !2088
  %6 = tail call i32* @__errno_location() #37, !dbg !2089
  %7 = load i32, i32* %6, align 4, !dbg !2089, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %7, metadata !2076, metadata !DIExpression()), !dbg !2088
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2090, !tbaa !485
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2077, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2078, metadata !DIExpression()), !dbg !2088
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2091
  br i1 %9, label %10, label %11, !dbg !2091

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2093
  unreachable, !dbg !2093

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2094, !tbaa !565
  %13 = icmp sgt i32 %12, %0, !dbg !2095
  br i1 %13, label %36, label %14, !dbg !2096

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2097
  call void @llvm.dbg.value(metadata i1 %15, metadata !2079, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2098
  %16 = bitcast i64* %5 to i8*, !dbg !2099
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2099
  %17 = sext i32 %12 to i64, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %17, metadata !2082, metadata !DIExpression()), !dbg !2098
  store i64 %17, i64* %5, align 8, !dbg !2101, !tbaa !2020
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2102
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2102
  %20 = add nuw nsw i32 %0, 1, !dbg !2103
  %21 = sub i32 %20, %12, !dbg !2104
  %22 = sext i32 %21 to i64, !dbg !2105
  call void @llvm.dbg.value(metadata i64* %5, metadata !2082, metadata !DIExpression(DW_OP_deref)), !dbg !2098
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !2106
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2106
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2077, metadata !DIExpression()), !dbg !2088
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2107, !tbaa !485
  br i1 %15, label %25, label %26, !dbg !2108

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2109, !tbaa.struct !2111
  br label %26, !dbg !2112

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2113, !tbaa !565
  %28 = sext i32 %27 to i64, !dbg !2114
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2114
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2115
  %31 = load i64, i64* %5, align 8, !dbg !2116, !tbaa !2020
  call void @llvm.dbg.value(metadata i64 %31, metadata !2082, metadata !DIExpression()), !dbg !2098
  %32 = sub nsw i64 %31, %28, !dbg !2117
  %33 = shl i64 %32, 4, !dbg !2118
  call void @llvm.dbg.value(metadata i8* %30, metadata !1505, metadata !DIExpression()) #34, !dbg !2119
  call void @llvm.dbg.value(metadata i32 0, metadata !1508, metadata !DIExpression()) #34, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %33, metadata !1509, metadata !DIExpression()) #34, !dbg !2119
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !2121
  %34 = load i64, i64* %5, align 8, !dbg !2122, !tbaa !2020
  call void @llvm.dbg.value(metadata i64 %34, metadata !2082, metadata !DIExpression()), !dbg !2098
  %35 = trunc i64 %34 to i32, !dbg !2122
  store i32 %35, i32* @nslots, align 4, !dbg !2123, !tbaa !565
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2124
  br label %36, !dbg !2125

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2088
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2077, metadata !DIExpression()), !dbg !2088
  %38 = zext i32 %0 to i64, !dbg !2126
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2127
  %40 = load i64, i64* %39, align 8, !dbg !2127, !tbaa !2048
  call void @llvm.dbg.value(metadata i64 %40, metadata !2083, metadata !DIExpression()), !dbg !2128
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2129
  %42 = load i8*, i8** %41, align 8, !dbg !2129, !tbaa !2036
  call void @llvm.dbg.value(metadata i8* %42, metadata !2085, metadata !DIExpression()), !dbg !2128
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2130
  %44 = load i32, i32* %43, align 4, !dbg !2130, !tbaa !1353
  %45 = or i32 %44, 1, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %45, metadata !2086, metadata !DIExpression()), !dbg !2128
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2132
  %47 = load i32, i32* %46, align 8, !dbg !2132, !tbaa !1302
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2133
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2134
  %50 = load i8*, i8** %49, align 8, !dbg !2134, !tbaa !1375
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2135
  %52 = load i8*, i8** %51, align 8, !dbg !2135, !tbaa !1378
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2136
  call void @llvm.dbg.value(metadata i64 %53, metadata !2087, metadata !DIExpression()), !dbg !2128
  %54 = icmp ugt i64 %40, %53, !dbg !2137
  br i1 %54, label %65, label %55, !dbg !2139

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %56, metadata !2083, metadata !DIExpression()), !dbg !2128
  store i64 %56, i64* %39, align 8, !dbg !2142, !tbaa !2048
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2143
  br i1 %57, label %59, label %58, !dbg !2145

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !2146
  br label %59, !dbg !2146

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #41, !dbg !2147
  call void @llvm.dbg.value(metadata i8* %60, metadata !2085, metadata !DIExpression()), !dbg !2128
  store i8* %60, i8** %41, align 8, !dbg !2148, !tbaa !2036
  %61 = load i32, i32* %46, align 8, !dbg !2149, !tbaa !1302
  %62 = load i8*, i8** %49, align 8, !dbg !2150, !tbaa !1375
  %63 = load i8*, i8** %51, align 8, !dbg !2151, !tbaa !1378
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2152
  br label %65, !dbg !2153

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2128
  call void @llvm.dbg.value(metadata i8* %66, metadata !2085, metadata !DIExpression()), !dbg !2128
  store i32 %7, i32* %6, align 4, !dbg !2154, !tbaa !565
  ret i8* %66, !dbg !2155
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2156 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2160, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8* %1, metadata !2161, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i64 %2, metadata !2162, metadata !DIExpression()), !dbg !2163
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2164
  ret i8* %4, !dbg !2165
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2166 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2168, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i32 0, metadata !2063, metadata !DIExpression()) #34, !dbg !2170
  call void @llvm.dbg.value(metadata i8* %0, metadata !2064, metadata !DIExpression()) #34, !dbg !2170
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2172
  ret i8* %2, !dbg !2173
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2174 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %1, metadata !2179, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i32 0, metadata !2160, metadata !DIExpression()) #34, !dbg !2181
  call void @llvm.dbg.value(metadata i8* %0, metadata !2161, metadata !DIExpression()) #34, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %1, metadata !2162, metadata !DIExpression()) #34, !dbg !2181
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2183
  ret i8* %3, !dbg !2184
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2185 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2189, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %1, metadata !2190, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %2, metadata !2191, metadata !DIExpression()), !dbg !2193
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2194
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2194
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2192, metadata !DIExpression()), !dbg !2195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2196), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %1, metadata !2200, metadata !DIExpression()) #34, !dbg !2206
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2205, metadata !DIExpression()) #34, !dbg !2208
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2208, !alias.scope !2196
  %6 = icmp eq i32 %1, 10, !dbg !2209
  br i1 %6, label %7, label %8, !dbg !2211

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2212, !noalias !2196
  unreachable, !dbg !2212

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2213
  store i32 %1, i32* %9, align 8, !dbg !2214, !tbaa !1302, !alias.scope !2196
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2215
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2216
  ret i8* %10, !dbg !2217
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2218 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2222, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i32 %1, metadata !2223, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8* %2, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i64 %3, metadata !2225, metadata !DIExpression()), !dbg !2227
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2228
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2228
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2226, metadata !DIExpression()), !dbg !2229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2230), !dbg !2233
  call void @llvm.dbg.value(metadata i32 %1, metadata !2200, metadata !DIExpression()) #34, !dbg !2234
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2205, metadata !DIExpression()) #34, !dbg !2236
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !2236, !alias.scope !2230
  %7 = icmp eq i32 %1, 10, !dbg !2237
  br i1 %7, label %8, label %9, !dbg !2238

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2239, !noalias !2230
  unreachable, !dbg !2239

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2240
  store i32 %1, i32* %10, align 8, !dbg !2241, !tbaa !1302, !alias.scope !2230
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2242
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2243
  ret i8* %11, !dbg !2244
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2245 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2249, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* %1, metadata !2250, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i32 0, metadata !2189, metadata !DIExpression()) #34, !dbg !2252
  call void @llvm.dbg.value(metadata i32 %0, metadata !2190, metadata !DIExpression()) #34, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %1, metadata !2191, metadata !DIExpression()) #34, !dbg !2252
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2254
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2254
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2192, metadata !DIExpression()) #34, !dbg !2255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256) #34, !dbg !2259
  call void @llvm.dbg.value(metadata i32 %0, metadata !2200, metadata !DIExpression()) #34, !dbg !2260
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2205, metadata !DIExpression()) #34, !dbg !2262
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !2262, !alias.scope !2256
  %5 = icmp eq i32 %0, 10, !dbg !2263
  br i1 %5, label %6, label %7, !dbg !2264

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !2265, !noalias !2256
  unreachable, !dbg !2265

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2266
  store i32 %0, i32* %8, align 8, !dbg !2267, !tbaa !1302, !alias.scope !2256
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2268
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2269
  ret i8* %9, !dbg !2270
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2271 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2275, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8* %1, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %2, metadata !2277, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 0, metadata !2222, metadata !DIExpression()) #34, !dbg !2279
  call void @llvm.dbg.value(metadata i32 %0, metadata !2223, metadata !DIExpression()) #34, !dbg !2279
  call void @llvm.dbg.value(metadata i8* %1, metadata !2224, metadata !DIExpression()) #34, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %2, metadata !2225, metadata !DIExpression()) #34, !dbg !2279
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2281
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2281
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2226, metadata !DIExpression()) #34, !dbg !2282
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283) #34, !dbg !2286
  call void @llvm.dbg.value(metadata i32 %0, metadata !2200, metadata !DIExpression()) #34, !dbg !2287
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2205, metadata !DIExpression()) #34, !dbg !2289
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2289, !alias.scope !2283
  %6 = icmp eq i32 %0, 10, !dbg !2290
  br i1 %6, label %7, label %8, !dbg !2291

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2292, !noalias !2283
  unreachable, !dbg !2292

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2293
  store i32 %0, i32* %9, align 8, !dbg !2294, !tbaa !1302, !alias.scope !2283
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2295
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2296
  ret i8* %10, !dbg !2297
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2298 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2302, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %1, metadata !2303, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 %2, metadata !2304, metadata !DIExpression()), !dbg !2306
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2307
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2305, metadata !DIExpression()), !dbg !2308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2309, !tbaa.struct !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1320, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %2, metadata !1321, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %2, metadata !1323, metadata !DIExpression()), !dbg !2311
  %6 = lshr i8 %2, 5, !dbg !2313
  %7 = zext i8 %6 to i64, !dbg !2313
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2314
  call void @llvm.dbg.value(metadata i32* %8, metadata !1324, metadata !DIExpression()), !dbg !2311
  %9 = and i8 %2, 31, !dbg !2315
  %10 = zext i8 %9 to i32, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %10, metadata !1326, metadata !DIExpression()), !dbg !2311
  %11 = load i32, i32* %8, align 4, !dbg !2316, !tbaa !565
  %12 = lshr i32 %11, %10, !dbg !2317
  %13 = and i32 %12, 1, !dbg !2318
  call void @llvm.dbg.value(metadata i32 %13, metadata !1327, metadata !DIExpression()), !dbg !2311
  %14 = xor i32 %13, 1, !dbg !2319
  %15 = shl i32 %14, %10, !dbg !2320
  %16 = xor i32 %15, %11, !dbg !2321
  store i32 %16, i32* %8, align 4, !dbg !2321, !tbaa !565
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2322
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2323
  ret i8* %17, !dbg !2324
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2325 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2329, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %1, metadata !2330, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %0, metadata !2302, metadata !DIExpression()) #34, !dbg !2332
  call void @llvm.dbg.value(metadata i64 -1, metadata !2303, metadata !DIExpression()) #34, !dbg !2332
  call void @llvm.dbg.value(metadata i8 %1, metadata !2304, metadata !DIExpression()) #34, !dbg !2332
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2334
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2305, metadata !DIExpression()) #34, !dbg !2335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2336, !tbaa.struct !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1320, metadata !DIExpression()) #34, !dbg !2337
  call void @llvm.dbg.value(metadata i8 %1, metadata !1321, metadata !DIExpression()) #34, !dbg !2337
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()) #34, !dbg !2337
  call void @llvm.dbg.value(metadata i8 %1, metadata !1323, metadata !DIExpression()) #34, !dbg !2337
  %5 = lshr i8 %1, 5, !dbg !2339
  %6 = zext i8 %5 to i64, !dbg !2339
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2340
  call void @llvm.dbg.value(metadata i32* %7, metadata !1324, metadata !DIExpression()) #34, !dbg !2337
  %8 = and i8 %1, 31, !dbg !2341
  %9 = zext i8 %8 to i32, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %9, metadata !1326, metadata !DIExpression()) #34, !dbg !2337
  %10 = load i32, i32* %7, align 4, !dbg !2342, !tbaa !565
  %11 = lshr i32 %10, %9, !dbg !2343
  %12 = and i32 %11, 1, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %12, metadata !1327, metadata !DIExpression()) #34, !dbg !2337
  %13 = xor i32 %12, 1, !dbg !2345
  %14 = shl i32 %13, %9, !dbg !2346
  %15 = xor i32 %14, %10, !dbg !2347
  store i32 %15, i32* %7, align 4, !dbg !2347, !tbaa !565
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2348
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2349
  ret i8* %16, !dbg !2350
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2351 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2353, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* %0, metadata !2329, metadata !DIExpression()) #34, !dbg !2355
  call void @llvm.dbg.value(metadata i8 58, metadata !2330, metadata !DIExpression()) #34, !dbg !2355
  call void @llvm.dbg.value(metadata i8* %0, metadata !2302, metadata !DIExpression()) #34, !dbg !2357
  call void @llvm.dbg.value(metadata i64 -1, metadata !2303, metadata !DIExpression()) #34, !dbg !2357
  call void @llvm.dbg.value(metadata i8 58, metadata !2304, metadata !DIExpression()) #34, !dbg !2357
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2359
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2305, metadata !DIExpression()) #34, !dbg !2360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2361, !tbaa.struct !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1320, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i8 58, metadata !1321, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i8 58, metadata !1323, metadata !DIExpression()) #34, !dbg !2362
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2364
  call void @llvm.dbg.value(metadata i32* %4, metadata !1324, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i32 26, metadata !1326, metadata !DIExpression()) #34, !dbg !2362
  %5 = load i32, i32* %4, align 4, !dbg !2365, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %5, metadata !1327, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2362
  %6 = or i32 %5, 67108864, !dbg !2366
  store i32 %6, i32* %4, align 4, !dbg !2366, !tbaa !565
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2368
  ret i8* %7, !dbg !2369
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2370 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2372, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %1, metadata !2373, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8* %0, metadata !2302, metadata !DIExpression()) #34, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %1, metadata !2303, metadata !DIExpression()) #34, !dbg !2375
  call void @llvm.dbg.value(metadata i8 58, metadata !2304, metadata !DIExpression()) #34, !dbg !2375
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2377
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2305, metadata !DIExpression()) #34, !dbg !2378
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2379, !tbaa.struct !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1320, metadata !DIExpression()) #34, !dbg !2380
  call void @llvm.dbg.value(metadata i8 58, metadata !1321, metadata !DIExpression()) #34, !dbg !2380
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()) #34, !dbg !2380
  call void @llvm.dbg.value(metadata i8 58, metadata !1323, metadata !DIExpression()) #34, !dbg !2380
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2382
  call void @llvm.dbg.value(metadata i32* %5, metadata !1324, metadata !DIExpression()) #34, !dbg !2380
  call void @llvm.dbg.value(metadata i32 26, metadata !1326, metadata !DIExpression()) #34, !dbg !2380
  %6 = load i32, i32* %5, align 4, !dbg !2383, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %6, metadata !1327, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2380
  %7 = or i32 %6, 67108864, !dbg !2384
  store i32 %7, i32* %5, align 4, !dbg !2384, !tbaa !565
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2386
  ret i8* %8, !dbg !2387
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2388 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %1, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %2, metadata !2392, metadata !DIExpression()), !dbg !2394
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2395
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2395
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2393, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 %1, metadata !2200, metadata !DIExpression()) #34, !dbg !2397
  call void @llvm.dbg.value(metadata i32 0, metadata !2205, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2397
  %6 = icmp eq i32 %1, 10, !dbg !2399
  br i1 %6, label %7, label %8, !dbg !2400

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2401, !noalias !2402
  unreachable, !dbg !2401

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2397
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2405
  store i32 %1, i32* %9, align 8, !dbg !2405, !tbaa.struct !2310
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2405
  %11 = bitcast i32* %10 to i8*, !dbg !2405
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2405
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1320, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 58, metadata !1321, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 58, metadata !1323, metadata !DIExpression()), !dbg !2406
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2408
  call void @llvm.dbg.value(metadata i32* %12, metadata !1324, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 26, metadata !1326, metadata !DIExpression()), !dbg !2406
  %13 = load i32, i32* %12, align 4, !dbg !2409, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %13, metadata !1327, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2406
  %14 = or i32 %13, 67108864, !dbg !2410
  store i32 %14, i32* %12, align 4, !dbg !2410, !tbaa !565
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2411
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2412
  ret i8* %15, !dbg !2413
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2414 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %1, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %2, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %3, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()) #34, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()) #34, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %2, metadata !2429, metadata !DIExpression()) #34, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %3, metadata !2430, metadata !DIExpression()) #34, !dbg !2433
  call void @llvm.dbg.value(metadata i64 -1, metadata !2431, metadata !DIExpression()) #34, !dbg !2433
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2435
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2435
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2432, metadata !DIExpression()) #34, !dbg !2436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2437, !tbaa.struct !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1360, metadata !DIExpression()) #34, !dbg !2438
  call void @llvm.dbg.value(metadata i8* %1, metadata !1361, metadata !DIExpression()) #34, !dbg !2438
  call void @llvm.dbg.value(metadata i8* %2, metadata !1362, metadata !DIExpression()) #34, !dbg !2438
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1360, metadata !DIExpression()) #34, !dbg !2438
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2440
  store i32 10, i32* %7, align 8, !dbg !2441, !tbaa !1302
  %8 = icmp ne i8* %1, null, !dbg !2442
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2443
  br i1 %10, label %12, label %11, !dbg !2443

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2444
  unreachable, !dbg !2444

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2445
  store i8* %1, i8** %13, align 8, !dbg !2446, !tbaa !1375
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2447
  store i8* %2, i8** %14, align 8, !dbg !2448, !tbaa !1378
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2449
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2450
  ret i8* %15, !dbg !2451
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2424 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %2, metadata !2429, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %3, metadata !2430, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %4, metadata !2431, metadata !DIExpression()), !dbg !2452
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2453
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2453
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2432, metadata !DIExpression()), !dbg !2454
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2455, !tbaa.struct !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1360, metadata !DIExpression()) #34, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %1, metadata !1361, metadata !DIExpression()) #34, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %2, metadata !1362, metadata !DIExpression()) #34, !dbg !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1360, metadata !DIExpression()) #34, !dbg !2456
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2458
  store i32 10, i32* %8, align 8, !dbg !2459, !tbaa !1302
  %9 = icmp ne i8* %1, null, !dbg !2460
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2461
  br i1 %11, label %13, label %12, !dbg !2461

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !2462
  unreachable, !dbg !2462

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2463
  store i8* %1, i8** %14, align 8, !dbg !2464, !tbaa !1375
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2465
  store i8* %2, i8** %15, align 8, !dbg !2466, !tbaa !1378
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2467
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2468
  ret i8* %16, !dbg !2469
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2470 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %1, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %2, metadata !2476, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()) #34, !dbg !2478
  call void @llvm.dbg.value(metadata i8* %0, metadata !2419, metadata !DIExpression()) #34, !dbg !2478
  call void @llvm.dbg.value(metadata i8* %1, metadata !2420, metadata !DIExpression()) #34, !dbg !2478
  call void @llvm.dbg.value(metadata i8* %2, metadata !2421, metadata !DIExpression()) #34, !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()) #34, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %0, metadata !2428, metadata !DIExpression()) #34, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %1, metadata !2429, metadata !DIExpression()) #34, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %2, metadata !2430, metadata !DIExpression()) #34, !dbg !2480
  call void @llvm.dbg.value(metadata i64 -1, metadata !2431, metadata !DIExpression()) #34, !dbg !2480
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2482
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2482
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2432, metadata !DIExpression()) #34, !dbg !2483
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2484, !tbaa.struct !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1360, metadata !DIExpression()) #34, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %0, metadata !1361, metadata !DIExpression()) #34, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %1, metadata !1362, metadata !DIExpression()) #34, !dbg !2485
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1360, metadata !DIExpression()) #34, !dbg !2485
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2487
  store i32 10, i32* %6, align 8, !dbg !2488, !tbaa !1302
  %7 = icmp ne i8* %0, null, !dbg !2489
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2490
  br i1 %9, label %11, label %10, !dbg !2490

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2491
  unreachable, !dbg !2491

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2492
  store i8* %0, i8** %12, align 8, !dbg !2493, !tbaa !1375
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2494
  store i8* %1, i8** %13, align 8, !dbg !2495, !tbaa !1378
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2496
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2497
  ret i8* %14, !dbg !2498
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2499 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %1, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %2, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %3, metadata !2506, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()) #34, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %0, metadata !2428, metadata !DIExpression()) #34, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %1, metadata !2429, metadata !DIExpression()) #34, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %2, metadata !2430, metadata !DIExpression()) #34, !dbg !2508
  call void @llvm.dbg.value(metadata i64 %3, metadata !2431, metadata !DIExpression()) #34, !dbg !2508
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2510
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2432, metadata !DIExpression()) #34, !dbg !2511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2512, !tbaa.struct !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1360, metadata !DIExpression()) #34, !dbg !2513
  call void @llvm.dbg.value(metadata i8* %0, metadata !1361, metadata !DIExpression()) #34, !dbg !2513
  call void @llvm.dbg.value(metadata i8* %1, metadata !1362, metadata !DIExpression()) #34, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1360, metadata !DIExpression()) #34, !dbg !2513
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2515
  store i32 10, i32* %7, align 8, !dbg !2516, !tbaa !1302
  %8 = icmp ne i8* %0, null, !dbg !2517
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2518
  br i1 %10, label %12, label %11, !dbg !2518

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2519
  unreachable, !dbg !2519

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2520
  store i8* %0, i8** %13, align 8, !dbg !2521, !tbaa !1375
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2522
  store i8* %1, i8** %14, align 8, !dbg !2523, !tbaa !1378
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2524
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2525
  ret i8* %15, !dbg !2526
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i64 %2, metadata !2533, metadata !DIExpression()), !dbg !2534
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2535
  ret i8* %4, !dbg !2536
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2537 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2541, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 %1, metadata !2542, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 0, metadata !2531, metadata !DIExpression()) #34, !dbg !2544
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()) #34, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %1, metadata !2533, metadata !DIExpression()) #34, !dbg !2544
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2546
  ret i8* %3, !dbg !2547
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2552, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %1, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()) #34, !dbg !2555
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()) #34, !dbg !2555
  call void @llvm.dbg.value(metadata i64 -1, metadata !2533, metadata !DIExpression()) #34, !dbg !2555
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2557
  ret i8* %3, !dbg !2558
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2559 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2563, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2552, metadata !DIExpression()) #34, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %0, metadata !2553, metadata !DIExpression()) #34, !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2531, metadata !DIExpression()) #34, !dbg !2567
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()) #34, !dbg !2567
  call void @llvm.dbg.value(metadata i64 -1, metadata !2533, metadata !DIExpression()) #34, !dbg !2567
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2569
  ret i8* %2, !dbg !2570
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2571 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2610, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8* %1, metadata !2611, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8* %2, metadata !2612, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8* %3, metadata !2613, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8** %4, metadata !2614, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %5, metadata !2615, metadata !DIExpression()), !dbg !2616
  %7 = icmp eq i8* %1, null, !dbg !2617
  br i1 %7, label %10, label %8, !dbg !2619

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !2620
  br label %12, !dbg !2620

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.95, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !2621
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.97, i64 0, i64 0), i32 noundef 5) #34, !dbg !2622
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !2622
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.98, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2623
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.99, i64 0, i64 0), i32 noundef 5) #34, !dbg !2624
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.100, i64 0, i64 0)) #34, !dbg !2624
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.98, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2625
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
  ], !dbg !2626

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.101, i64 0, i64 0), i32 noundef 5) #34, !dbg !2627
  %21 = load i8*, i8** %4, align 8, !dbg !2627, !tbaa !485
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !2627
  br label %147, !dbg !2629

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.102, i64 0, i64 0), i32 noundef 5) #34, !dbg !2630
  %25 = load i8*, i8** %4, align 8, !dbg !2630, !tbaa !485
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2630
  %27 = load i8*, i8** %26, align 8, !dbg !2630, !tbaa !485
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !2630
  br label %147, !dbg !2631

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.103, i64 0, i64 0), i32 noundef 5) #34, !dbg !2632
  %31 = load i8*, i8** %4, align 8, !dbg !2632, !tbaa !485
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2632
  %33 = load i8*, i8** %32, align 8, !dbg !2632, !tbaa !485
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2632
  %35 = load i8*, i8** %34, align 8, !dbg !2632, !tbaa !485
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !2632
  br label %147, !dbg !2633

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.104, i64 0, i64 0), i32 noundef 5) #34, !dbg !2634
  %39 = load i8*, i8** %4, align 8, !dbg !2634, !tbaa !485
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2634
  %41 = load i8*, i8** %40, align 8, !dbg !2634, !tbaa !485
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2634
  %43 = load i8*, i8** %42, align 8, !dbg !2634, !tbaa !485
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2634
  %45 = load i8*, i8** %44, align 8, !dbg !2634, !tbaa !485
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !2634
  br label %147, !dbg !2635

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.105, i64 0, i64 0), i32 noundef 5) #34, !dbg !2636
  %49 = load i8*, i8** %4, align 8, !dbg !2636, !tbaa !485
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2636
  %51 = load i8*, i8** %50, align 8, !dbg !2636, !tbaa !485
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2636
  %53 = load i8*, i8** %52, align 8, !dbg !2636, !tbaa !485
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2636
  %55 = load i8*, i8** %54, align 8, !dbg !2636, !tbaa !485
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2636
  %57 = load i8*, i8** %56, align 8, !dbg !2636, !tbaa !485
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !2636
  br label %147, !dbg !2637

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.106, i64 0, i64 0), i32 noundef 5) #34, !dbg !2638
  %61 = load i8*, i8** %4, align 8, !dbg !2638, !tbaa !485
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2638
  %63 = load i8*, i8** %62, align 8, !dbg !2638, !tbaa !485
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2638
  %65 = load i8*, i8** %64, align 8, !dbg !2638, !tbaa !485
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2638
  %67 = load i8*, i8** %66, align 8, !dbg !2638, !tbaa !485
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2638
  %69 = load i8*, i8** %68, align 8, !dbg !2638, !tbaa !485
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2638
  %71 = load i8*, i8** %70, align 8, !dbg !2638, !tbaa !485
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !2638
  br label %147, !dbg !2639

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.107, i64 0, i64 0), i32 noundef 5) #34, !dbg !2640
  %75 = load i8*, i8** %4, align 8, !dbg !2640, !tbaa !485
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2640
  %77 = load i8*, i8** %76, align 8, !dbg !2640, !tbaa !485
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2640
  %79 = load i8*, i8** %78, align 8, !dbg !2640, !tbaa !485
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2640
  %81 = load i8*, i8** %80, align 8, !dbg !2640, !tbaa !485
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2640
  %83 = load i8*, i8** %82, align 8, !dbg !2640, !tbaa !485
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2640
  %85 = load i8*, i8** %84, align 8, !dbg !2640, !tbaa !485
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2640
  %87 = load i8*, i8** %86, align 8, !dbg !2640, !tbaa !485
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !2640
  br label %147, !dbg !2641

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.108, i64 0, i64 0), i32 noundef 5) #34, !dbg !2642
  %91 = load i8*, i8** %4, align 8, !dbg !2642, !tbaa !485
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2642
  %93 = load i8*, i8** %92, align 8, !dbg !2642, !tbaa !485
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2642
  %95 = load i8*, i8** %94, align 8, !dbg !2642, !tbaa !485
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2642
  %97 = load i8*, i8** %96, align 8, !dbg !2642, !tbaa !485
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2642
  %99 = load i8*, i8** %98, align 8, !dbg !2642, !tbaa !485
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2642
  %101 = load i8*, i8** %100, align 8, !dbg !2642, !tbaa !485
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2642
  %103 = load i8*, i8** %102, align 8, !dbg !2642, !tbaa !485
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2642
  %105 = load i8*, i8** %104, align 8, !dbg !2642, !tbaa !485
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !2642
  br label %147, !dbg !2643

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.109, i64 0, i64 0), i32 noundef 5) #34, !dbg !2644
  %109 = load i8*, i8** %4, align 8, !dbg !2644, !tbaa !485
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2644
  %111 = load i8*, i8** %110, align 8, !dbg !2644, !tbaa !485
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2644
  %113 = load i8*, i8** %112, align 8, !dbg !2644, !tbaa !485
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2644
  %115 = load i8*, i8** %114, align 8, !dbg !2644, !tbaa !485
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2644
  %117 = load i8*, i8** %116, align 8, !dbg !2644, !tbaa !485
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2644
  %119 = load i8*, i8** %118, align 8, !dbg !2644, !tbaa !485
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2644
  %121 = load i8*, i8** %120, align 8, !dbg !2644, !tbaa !485
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2644
  %123 = load i8*, i8** %122, align 8, !dbg !2644, !tbaa !485
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2644
  %125 = load i8*, i8** %124, align 8, !dbg !2644, !tbaa !485
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !2644
  br label %147, !dbg !2645

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.110, i64 0, i64 0), i32 noundef 5) #34, !dbg !2646
  %129 = load i8*, i8** %4, align 8, !dbg !2646, !tbaa !485
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2646
  %131 = load i8*, i8** %130, align 8, !dbg !2646, !tbaa !485
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2646
  %133 = load i8*, i8** %132, align 8, !dbg !2646, !tbaa !485
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2646
  %135 = load i8*, i8** %134, align 8, !dbg !2646, !tbaa !485
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2646
  %137 = load i8*, i8** %136, align 8, !dbg !2646, !tbaa !485
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2646
  %139 = load i8*, i8** %138, align 8, !dbg !2646, !tbaa !485
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2646
  %141 = load i8*, i8** %140, align 8, !dbg !2646, !tbaa !485
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2646
  %143 = load i8*, i8** %142, align 8, !dbg !2646, !tbaa !485
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2646
  %145 = load i8*, i8** %144, align 8, !dbg !2646, !tbaa !485
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !2646
  br label %147, !dbg !2647

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2648
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2649 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2653, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %1, metadata !2654, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %2, metadata !2655, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %3, metadata !2656, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8** %4, metadata !2657, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2659
  br label %6, !dbg !2660

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2662
  call void @llvm.dbg.value(metadata i64 %7, metadata !2658, metadata !DIExpression()), !dbg !2659
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2663
  %9 = load i8*, i8** %8, align 8, !dbg !2663, !tbaa !485
  %10 = icmp eq i8* %9, null, !dbg !2665
  %11 = add i64 %7, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %11, metadata !2658, metadata !DIExpression()), !dbg !2659
  br i1 %10, label %12, label %6, !dbg !2665, !llvm.loop !2667

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2669
  ret void, !dbg !2670
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2671 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2686, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i8* %1, metadata !2687, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i8* %2, metadata !2688, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i8* %3, metadata !2689, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2690, metadata !DIExpression()), !dbg !2695
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2696
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !2696
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2692, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 0, metadata !2691, metadata !DIExpression()), !dbg !2694
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2691, metadata !DIExpression()), !dbg !2694
  %11 = load i32, i32* %8, align 8, !dbg !2698
  %12 = icmp sgt i32 %11, -1, !dbg !2698
  br i1 %12, label %20, label %13, !dbg !2698

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2698
  store i32 %14, i32* %8, align 8, !dbg !2698
  %15 = icmp ult i32 %11, -7, !dbg !2698
  br i1 %15, label %16, label %20, !dbg !2698

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2698
  %18 = sext i32 %11 to i64, !dbg !2698
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2698
  br label %24, !dbg !2698

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2698
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2698
  store i8* %23, i8** %10, align 8, !dbg !2698
  br label %24, !dbg !2698

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2698
  %28 = load i8*, i8** %27, align 8, !dbg !2698
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2701
  store i8* %28, i8** %29, align 8, !dbg !2702, !tbaa !485
  %30 = icmp eq i8* %28, null, !dbg !2703
  br i1 %30, label %210, label %31, !dbg !2704

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 1, metadata !2691, metadata !DIExpression()), !dbg !2694
  %32 = icmp sgt i32 %25, -1, !dbg !2698
  br i1 %32, label %40, label %33, !dbg !2698

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2698
  store i32 %34, i32* %8, align 8, !dbg !2698
  %35 = icmp ult i32 %25, -7, !dbg !2698
  br i1 %35, label %36, label %40, !dbg !2698

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2698
  %38 = sext i32 %25 to i64, !dbg !2698
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2698
  br label %44, !dbg !2698

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2698
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2698
  store i8* %43, i8** %10, align 8, !dbg !2698
  br label %44, !dbg !2698

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2698
  %48 = load i8*, i8** %47, align 8, !dbg !2698
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2701
  store i8* %48, i8** %49, align 8, !dbg !2702, !tbaa !485
  %50 = icmp eq i8* %48, null, !dbg !2703
  br i1 %50, label %210, label %51, !dbg !2704

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 2, metadata !2691, metadata !DIExpression()), !dbg !2694
  %52 = icmp sgt i32 %45, -1, !dbg !2698
  br i1 %52, label %60, label %53, !dbg !2698

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2698
  store i32 %54, i32* %8, align 8, !dbg !2698
  %55 = icmp ult i32 %45, -7, !dbg !2698
  br i1 %55, label %56, label %60, !dbg !2698

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2698
  %58 = sext i32 %45 to i64, !dbg !2698
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2698
  br label %64, !dbg !2698

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2698
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2698
  store i8* %63, i8** %10, align 8, !dbg !2698
  br label %64, !dbg !2698

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2698
  %68 = load i8*, i8** %67, align 8, !dbg !2698
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2701
  store i8* %68, i8** %69, align 8, !dbg !2702, !tbaa !485
  %70 = icmp eq i8* %68, null, !dbg !2703
  br i1 %70, label %210, label %71, !dbg !2704

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 3, metadata !2691, metadata !DIExpression()), !dbg !2694
  %72 = icmp sgt i32 %65, -1, !dbg !2698
  br i1 %72, label %80, label %73, !dbg !2698

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2698
  store i32 %74, i32* %8, align 8, !dbg !2698
  %75 = icmp ult i32 %65, -7, !dbg !2698
  br i1 %75, label %76, label %80, !dbg !2698

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2698
  %78 = sext i32 %65 to i64, !dbg !2698
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2698
  br label %84, !dbg !2698

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2698
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2698
  store i8* %83, i8** %10, align 8, !dbg !2698
  br label %84, !dbg !2698

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2698
  %88 = load i8*, i8** %87, align 8, !dbg !2698
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2701
  store i8* %88, i8** %89, align 8, !dbg !2702, !tbaa !485
  %90 = icmp eq i8* %88, null, !dbg !2703
  br i1 %90, label %210, label %91, !dbg !2704

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 4, metadata !2691, metadata !DIExpression()), !dbg !2694
  %92 = icmp sgt i32 %85, -1, !dbg !2698
  br i1 %92, label %100, label %93, !dbg !2698

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2698
  store i32 %94, i32* %8, align 8, !dbg !2698
  %95 = icmp ult i32 %85, -7, !dbg !2698
  br i1 %95, label %96, label %100, !dbg !2698

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2698
  %98 = sext i32 %85 to i64, !dbg !2698
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2698
  br label %104, !dbg !2698

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2698
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2698
  store i8* %103, i8** %10, align 8, !dbg !2698
  br label %104, !dbg !2698

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2698
  %108 = load i8*, i8** %107, align 8, !dbg !2698
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2701
  store i8* %108, i8** %109, align 8, !dbg !2702, !tbaa !485
  %110 = icmp eq i8* %108, null, !dbg !2703
  br i1 %110, label %210, label %111, !dbg !2704

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 5, metadata !2691, metadata !DIExpression()), !dbg !2694
  %112 = icmp sgt i32 %105, -1, !dbg !2698
  br i1 %112, label %120, label %113, !dbg !2698

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2698
  store i32 %114, i32* %8, align 8, !dbg !2698
  %115 = icmp ult i32 %105, -7, !dbg !2698
  br i1 %115, label %116, label %120, !dbg !2698

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2698
  %118 = sext i32 %105 to i64, !dbg !2698
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2698
  br label %124, !dbg !2698

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2698
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2698
  store i8* %123, i8** %10, align 8, !dbg !2698
  br label %124, !dbg !2698

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2698
  %128 = load i8*, i8** %127, align 8, !dbg !2698
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2701
  store i8* %128, i8** %129, align 8, !dbg !2702, !tbaa !485
  %130 = icmp eq i8* %128, null, !dbg !2703
  br i1 %130, label %210, label %131, !dbg !2704

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 6, metadata !2691, metadata !DIExpression()), !dbg !2694
  %132 = icmp sgt i32 %125, -1, !dbg !2698
  br i1 %132, label %140, label %133, !dbg !2698

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2698
  store i32 %134, i32* %8, align 8, !dbg !2698
  %135 = icmp ult i32 %125, -7, !dbg !2698
  br i1 %135, label %136, label %140, !dbg !2698

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2698
  %138 = sext i32 %125 to i64, !dbg !2698
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2698
  br label %144, !dbg !2698

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2698
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2698
  store i8* %143, i8** %10, align 8, !dbg !2698
  br label %144, !dbg !2698

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2698
  %148 = load i8*, i8** %147, align 8, !dbg !2698
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2701
  store i8* %148, i8** %149, align 8, !dbg !2702, !tbaa !485
  %150 = icmp eq i8* %148, null, !dbg !2703
  br i1 %150, label %210, label %151, !dbg !2704

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 7, metadata !2691, metadata !DIExpression()), !dbg !2694
  %152 = icmp sgt i32 %145, -1, !dbg !2698
  br i1 %152, label %160, label %153, !dbg !2698

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2698
  store i32 %154, i32* %8, align 8, !dbg !2698
  %155 = icmp ult i32 %145, -7, !dbg !2698
  br i1 %155, label %156, label %160, !dbg !2698

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2698
  %158 = sext i32 %145 to i64, !dbg !2698
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2698
  br label %164, !dbg !2698

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2698
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2698
  store i8* %163, i8** %10, align 8, !dbg !2698
  br label %164, !dbg !2698

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2698
  %168 = load i8*, i8** %167, align 8, !dbg !2698
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2701
  store i8* %168, i8** %169, align 8, !dbg !2702, !tbaa !485
  %170 = icmp eq i8* %168, null, !dbg !2703
  br i1 %170, label %210, label %171, !dbg !2704

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 8, metadata !2691, metadata !DIExpression()), !dbg !2694
  %172 = icmp sgt i32 %165, -1, !dbg !2698
  br i1 %172, label %180, label %173, !dbg !2698

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2698
  store i32 %174, i32* %8, align 8, !dbg !2698
  %175 = icmp ult i32 %165, -7, !dbg !2698
  br i1 %175, label %176, label %180, !dbg !2698

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2698
  %178 = sext i32 %165 to i64, !dbg !2698
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2698
  br label %184, !dbg !2698

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2698
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2698
  store i8* %183, i8** %10, align 8, !dbg !2698
  br label %184, !dbg !2698

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2698
  %188 = load i8*, i8** %187, align 8, !dbg !2698
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2701
  store i8* %188, i8** %189, align 8, !dbg !2702, !tbaa !485
  %190 = icmp eq i8* %188, null, !dbg !2703
  br i1 %190, label %210, label %191, !dbg !2704

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 9, metadata !2691, metadata !DIExpression()), !dbg !2694
  %192 = icmp sgt i32 %185, -1, !dbg !2698
  br i1 %192, label %200, label %193, !dbg !2698

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2698
  store i32 %194, i32* %8, align 8, !dbg !2698
  %195 = icmp ult i32 %185, -7, !dbg !2698
  br i1 %195, label %196, label %200, !dbg !2698

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2698
  %198 = sext i32 %185 to i64, !dbg !2698
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2698
  br label %203, !dbg !2698

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2698
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2698
  store i8* %202, i8** %10, align 8, !dbg !2698
  br label %203, !dbg !2698

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2698
  %206 = load i8*, i8** %205, align 8, !dbg !2698
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2701
  store i8* %206, i8** %207, align 8, !dbg !2702, !tbaa !485
  %208 = icmp eq i8* %206, null, !dbg !2703
  %209 = select i1 %208, i64 9, i64 10, !dbg !2704
  br label %210, !dbg !2704

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2705
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2706
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !2707
  ret void, !dbg !2707
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2708 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2712, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %1, metadata !2713, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %2, metadata !2714, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %3, metadata !2715, metadata !DIExpression()), !dbg !2717
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2718
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !2718
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2716, metadata !DIExpression()), !dbg !2719
  call void @llvm.va_start(i8* nonnull %7), !dbg !2720
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2721
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !2721
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2721, !tbaa.struct !908
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2721
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !2721
  call void @llvm.va_end(i8* nonnull %7), !dbg !2722
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !2723
  ret void, !dbg !2723
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2724 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2725, !tbaa !485
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.98, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2725
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.115, i64 0, i64 0), i32 noundef 5) #34, !dbg !2726
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.116, i64 0, i64 0)) #34, !dbg !2726
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.117, i64 0, i64 0), i32 noundef 5) #34, !dbg !2727
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !2727
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #34, !dbg !2728
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #34, !dbg !2728
  ret void, !dbg !2729
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2730 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2735, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %1, metadata !2736, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %2, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8* %0, metadata !2739, metadata !DIExpression()) #34, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %1, metadata !2742, metadata !DIExpression()) #34, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %2, metadata !2743, metadata !DIExpression()) #34, !dbg !2744
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !2746
  call void @llvm.dbg.value(metadata i8* %4, metadata !2747, metadata !DIExpression()) #34, !dbg !2752
  %5 = icmp eq i8* %4, null, !dbg !2754
  br i1 %5, label %6, label %7, !dbg !2756

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !2757
  unreachable, !dbg !2757

7:                                                ; preds = %3
  ret i8* %4, !dbg !2758
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2740 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2739, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %1, metadata !2742, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %2, metadata !2743, metadata !DIExpression()), !dbg !2759
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %4, metadata !2747, metadata !DIExpression()) #34, !dbg !2761
  %5 = icmp eq i8* %4, null, !dbg !2763
  br i1 %5, label %6, label %7, !dbg !2764

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !2765
  unreachable, !dbg !2765

7:                                                ; preds = %3
  ret i8* %4, !dbg !2766
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !2767 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2771, metadata !DIExpression()), !dbg !2772
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %2, metadata !2747, metadata !DIExpression()) #34, !dbg !2774
  %3 = icmp eq i8* %2, null, !dbg !2776
  br i1 %3, label %4, label %5, !dbg !2777

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2778
  unreachable, !dbg !2778

5:                                                ; preds = %1
  ret i8* %2, !dbg !2779
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !2780 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2784, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i64 %0, metadata !2786, metadata !DIExpression()) #34, !dbg !2790
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %2, metadata !2747, metadata !DIExpression()) #34, !dbg !2793
  %3 = icmp eq i8* %2, null, !dbg !2795
  br i1 %3, label %4, label %5, !dbg !2796

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2797
  unreachable, !dbg !2797

5:                                                ; preds = %1
  ret i8* %2, !dbg !2798
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !2799 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2803, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %0, metadata !2771, metadata !DIExpression()) #34, !dbg !2805
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %2, metadata !2747, metadata !DIExpression()) #34, !dbg !2808
  %3 = icmp eq i8* %2, null, !dbg !2810
  br i1 %3, label %4, label %5, !dbg !2811

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2812
  unreachable, !dbg !2812

5:                                                ; preds = %1
  ret i8* %2, !dbg !2813
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2814 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2818, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64 %1, metadata !2819, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8* %0, metadata !2821, metadata !DIExpression()) #34, !dbg !2826
  call void @llvm.dbg.value(metadata i64 %1, metadata !2825, metadata !DIExpression()) #34, !dbg !2826
  %3 = icmp eq i64 %1, 0, !dbg !2828
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2828
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %5, metadata !2747, metadata !DIExpression()) #34, !dbg !2830
  %6 = icmp eq i8* %5, null, !dbg !2832
  br i1 %6, label %7, label %8, !dbg !2833

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2834
  unreachable, !dbg !2834

8:                                                ; preds = %2
  ret i8* %5, !dbg !2835
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2836 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %1, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %0, metadata !2843, metadata !DIExpression()) #34, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %1, metadata !2846, metadata !DIExpression()) #34, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %0, metadata !2821, metadata !DIExpression()) #34, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %1, metadata !2825, metadata !DIExpression()) #34, !dbg !2849
  %3 = icmp eq i64 %1, 0, !dbg !2851
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2851
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %5, metadata !2747, metadata !DIExpression()) #34, !dbg !2853
  %6 = icmp eq i8* %5, null, !dbg !2855
  br i1 %6, label %7, label %8, !dbg !2856

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2857
  unreachable, !dbg !2857

8:                                                ; preds = %2
  ret i8* %5, !dbg !2858
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2859 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2863, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %1, metadata !2864, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %2, metadata !2865, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %0, metadata !2867, metadata !DIExpression()) #34, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %1, metadata !2870, metadata !DIExpression()) #34, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %2, metadata !2871, metadata !DIExpression()) #34, !dbg !2872
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !2874
  call void @llvm.dbg.value(metadata i8* %4, metadata !2747, metadata !DIExpression()) #34, !dbg !2875
  %5 = icmp eq i8* %4, null, !dbg !2877
  br i1 %5, label %6, label %7, !dbg !2878

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !2879
  unreachable, !dbg !2879

7:                                                ; preds = %3
  ret i8* %4, !dbg !2880
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2881 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %1, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* null, metadata !2739, metadata !DIExpression()) #34, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %0, metadata !2742, metadata !DIExpression()) #34, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()) #34, !dbg !2888
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !2890
  call void @llvm.dbg.value(metadata i8* %3, metadata !2747, metadata !DIExpression()) #34, !dbg !2891
  %4 = icmp eq i8* %3, null, !dbg !2893
  br i1 %4, label %5, label %6, !dbg !2894

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2895
  unreachable, !dbg !2895

6:                                                ; preds = %2
  ret i8* %3, !dbg !2896
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2897 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2901, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i64 %1, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8* null, metadata !2863, metadata !DIExpression()) #34, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %0, metadata !2864, metadata !DIExpression()) #34, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %1, metadata !2865, metadata !DIExpression()) #34, !dbg !2904
  call void @llvm.dbg.value(metadata i8* null, metadata !2867, metadata !DIExpression()) #34, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %0, metadata !2870, metadata !DIExpression()) #34, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2871, metadata !DIExpression()) #34, !dbg !2906
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %3, metadata !2747, metadata !DIExpression()) #34, !dbg !2909
  %4 = icmp eq i8* %3, null, !dbg !2911
  br i1 %4, label %5, label %6, !dbg !2912

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2913
  unreachable, !dbg !2913

6:                                                ; preds = %2
  ret i8* %3, !dbg !2914
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2915 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2919, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64* %1, metadata !2920, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %0, metadata !399, metadata !DIExpression()) #34, !dbg !2922
  call void @llvm.dbg.value(metadata i64* %1, metadata !400, metadata !DIExpression()) #34, !dbg !2922
  call void @llvm.dbg.value(metadata i64 1, metadata !401, metadata !DIExpression()) #34, !dbg !2922
  %3 = load i64, i64* %1, align 8, !dbg !2924, !tbaa !2020
  call void @llvm.dbg.value(metadata i64 %3, metadata !402, metadata !DIExpression()) #34, !dbg !2922
  %4 = icmp eq i8* %0, null, !dbg !2925
  br i1 %4, label %5, label %8, !dbg !2927

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2928
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2931
  br label %15, !dbg !2931

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2932
  %10 = add nuw i64 %9, 1, !dbg !2932
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !2932
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2932
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %13, metadata !402, metadata !DIExpression()) #34, !dbg !2922
  br i1 %12, label %14, label %15, !dbg !2935

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !2936
  unreachable, !dbg !2936

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2922
  call void @llvm.dbg.value(metadata i64 %16, metadata !402, metadata !DIExpression()) #34, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %0, metadata !2739, metadata !DIExpression()) #34, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %16, metadata !2742, metadata !DIExpression()) #34, !dbg !2937
  call void @llvm.dbg.value(metadata i64 1, metadata !2743, metadata !DIExpression()) #34, !dbg !2937
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %17, metadata !2747, metadata !DIExpression()) #34, !dbg !2940
  %18 = icmp eq i8* %17, null, !dbg !2942
  br i1 %18, label %19, label %20, !dbg !2943

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !2944
  unreachable, !dbg !2944

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !399, metadata !DIExpression()) #34, !dbg !2922
  store i64 %16, i64* %1, align 8, !dbg !2945, !tbaa !2020
  ret i8* %17, !dbg !2946
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !394 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !399, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64* %1, metadata !400, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %2, metadata !401, metadata !DIExpression()), !dbg !2947
  %4 = load i64, i64* %1, align 8, !dbg !2948, !tbaa !2020
  call void @llvm.dbg.value(metadata i64 %4, metadata !402, metadata !DIExpression()), !dbg !2947
  %5 = icmp eq i8* %0, null, !dbg !2949
  br i1 %5, label %6, label %13, !dbg !2950

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2951
  br i1 %7, label %8, label %20, !dbg !2952

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %9, metadata !402, metadata !DIExpression()), !dbg !2947
  %10 = icmp ugt i64 %2, 128, !dbg !2955
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %12, metadata !402, metadata !DIExpression()), !dbg !2947
  br label %20, !dbg !2957

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2958
  %15 = add nuw i64 %14, 1, !dbg !2958
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2958
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2958
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %18, metadata !402, metadata !DIExpression()), !dbg !2947
  br i1 %17, label %19, label %20, !dbg !2959

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !2960
  unreachable, !dbg !2960

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2947
  call void @llvm.dbg.value(metadata i64 %21, metadata !402, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %0, metadata !2739, metadata !DIExpression()) #34, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %21, metadata !2742, metadata !DIExpression()) #34, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %2, metadata !2743, metadata !DIExpression()) #34, !dbg !2961
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !2963
  call void @llvm.dbg.value(metadata i8* %22, metadata !2747, metadata !DIExpression()) #34, !dbg !2964
  %23 = icmp eq i8* %22, null, !dbg !2966
  br i1 %23, label %24, label %25, !dbg !2967

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !2968
  unreachable, !dbg !2968

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !399, metadata !DIExpression()), !dbg !2947
  store i64 %21, i64* %1, align 8, !dbg !2969, !tbaa !2020
  ret i8* %22, !dbg !2970
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !406 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !414, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64* %1, metadata !415, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %2, metadata !416, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %3, metadata !417, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %4, metadata !418, metadata !DIExpression()), !dbg !2971
  %6 = load i64, i64* %1, align 8, !dbg !2972, !tbaa !2020
  call void @llvm.dbg.value(metadata i64 %6, metadata !419, metadata !DIExpression()), !dbg !2971
  %7 = ashr i64 %6, 1, !dbg !2973
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2973
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2973
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %10, metadata !420, metadata !DIExpression()), !dbg !2971
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %11, metadata !420, metadata !DIExpression()), !dbg !2971
  %12 = icmp sgt i64 %3, -1, !dbg !2976
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2978
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %15, metadata !420, metadata !DIExpression()), !dbg !2971
  %16 = icmp slt i64 %4, 0, !dbg !2979
  br i1 %16, label %17, label %30, !dbg !2979

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2979
  br i1 %18, label %19, label %24, !dbg !2979

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2979
  %21 = udiv i64 9223372036854775807, %20, !dbg !2979
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2979
  br i1 %23, label %46, label %43, !dbg !2979

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2979
  br i1 %25, label %43, label %26, !dbg !2979

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2979
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2979
  %29 = icmp ult i64 %28, %15, !dbg !2979
  br i1 %29, label %46, label %43, !dbg !2979

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2979
  br i1 %31, label %43, label %32, !dbg !2979

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2979
  br i1 %33, label %34, label %40, !dbg !2979

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2979
  br i1 %35, label %43, label %36, !dbg !2979

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2979
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2979
  %39 = icmp ult i64 %38, %4, !dbg !2979
  br i1 %39, label %46, label %43, !dbg !2979

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2979
  %42 = icmp ult i64 %41, %15, !dbg !2979
  br i1 %42, label %46, label %43, !dbg !2979

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !421, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2971
  %44 = mul i64 %15, %4, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %44, metadata !421, metadata !DIExpression()), !dbg !2971
  %45 = icmp slt i64 %44, 128, !dbg !2979
  br i1 %45, label %46, label %52, !dbg !2979

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !422, metadata !DIExpression()), !dbg !2971
  %48 = sdiv i64 %47, %4, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %48, metadata !420, metadata !DIExpression()), !dbg !2971
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %51, metadata !421, metadata !DIExpression()), !dbg !2971
  br label %52, !dbg !2984

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2971
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2971
  call void @llvm.dbg.value(metadata i64 %54, metadata !421, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %53, metadata !420, metadata !DIExpression()), !dbg !2971
  %55 = icmp eq i8* %0, null, !dbg !2985
  br i1 %55, label %56, label %57, !dbg !2987

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2988, !tbaa !2020
  br label %57, !dbg !2989

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2990
  %59 = icmp slt i64 %58, %2, !dbg !2992
  br i1 %59, label %60, label %97, !dbg !2993

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2994
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2994
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %63, metadata !420, metadata !DIExpression()), !dbg !2971
  br i1 %62, label %96, label %64, !dbg !2995

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2996
  br i1 %66, label %96, label %67, !dbg !2996

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2997

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2997
  br i1 %69, label %70, label %75, !dbg !2997

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2997
  %72 = udiv i64 9223372036854775807, %71, !dbg !2997
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2997
  br i1 %74, label %96, label %94, !dbg !2997

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2997
  br i1 %76, label %94, label %77, !dbg !2997

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2997
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2997
  %80 = icmp ult i64 %79, %63, !dbg !2997
  br i1 %80, label %96, label %94, !dbg !2997

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2997
  br i1 %82, label %94, label %83, !dbg !2997

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2997
  br i1 %84, label %85, label %91, !dbg !2997

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2997
  br i1 %86, label %94, label %87, !dbg !2997

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2997
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2997
  %90 = icmp ult i64 %89, %4, !dbg !2997
  br i1 %90, label %96, label %94, !dbg !2997

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2997
  %93 = icmp ult i64 %92, %63, !dbg !2997
  br i1 %93, label %96, label %94, !dbg !2997

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !421, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2971
  %95 = mul i64 %63, %4, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %95, metadata !421, metadata !DIExpression()), !dbg !2971
  br label %97, !dbg !2998

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !2999
  unreachable, !dbg !2999

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2971
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2971
  call void @llvm.dbg.value(metadata i64 %99, metadata !421, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %98, metadata !420, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* %0, metadata !2818, metadata !DIExpression()) #34, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %99, metadata !2819, metadata !DIExpression()) #34, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %0, metadata !2821, metadata !DIExpression()) #34, !dbg !3002
  call void @llvm.dbg.value(metadata i64 %99, metadata !2825, metadata !DIExpression()) #34, !dbg !3002
  %100 = icmp eq i64 %99, 0, !dbg !3004
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3004
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %102, metadata !2747, metadata !DIExpression()) #34, !dbg !3006
  %103 = icmp eq i8* %102, null, !dbg !3008
  br i1 %103, label %104, label %105, !dbg !3009

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !3010
  unreachable, !dbg !3010

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !414, metadata !DIExpression()), !dbg !2971
  store i64 %98, i64* %1, align 8, !dbg !3011, !tbaa !2020
  ret i8* %102, !dbg !3012
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3013 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3015, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %0, metadata !3017, metadata !DIExpression()) #34, !dbg !3021
  call void @llvm.dbg.value(metadata i64 1, metadata !3020, metadata !DIExpression()) #34, !dbg !3021
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %2, metadata !2747, metadata !DIExpression()) #34, !dbg !3024
  %3 = icmp eq i8* %2, null, !dbg !3026
  br i1 %3, label %4, label %5, !dbg !3027

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3028
  unreachable, !dbg !3028

5:                                                ; preds = %1
  ret i8* %2, !dbg !3029
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3018 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3017, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()), !dbg !3030
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3031
  call void @llvm.dbg.value(metadata i8* %3, metadata !2747, metadata !DIExpression()) #34, !dbg !3032
  %4 = icmp eq i8* %3, null, !dbg !3034
  br i1 %4, label %5, label %6, !dbg !3035

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3036
  unreachable, !dbg !3036

6:                                                ; preds = %2
  ret i8* %3, !dbg !3037
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3038 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %0, metadata !3042, metadata !DIExpression()) #34, !dbg !3046
  call void @llvm.dbg.value(metadata i64 1, metadata !3045, metadata !DIExpression()) #34, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %0, metadata !3048, metadata !DIExpression()) #34, !dbg !3052
  call void @llvm.dbg.value(metadata i64 1, metadata !3051, metadata !DIExpression()) #34, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %0, metadata !3048, metadata !DIExpression()) #34, !dbg !3052
  call void @llvm.dbg.value(metadata i64 1, metadata !3051, metadata !DIExpression()) #34, !dbg !3052
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %2, metadata !2747, metadata !DIExpression()) #34, !dbg !3055
  %3 = icmp eq i8* %2, null, !dbg !3057
  br i1 %3, label %4, label %5, !dbg !3058

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3059
  unreachable, !dbg !3059

5:                                                ; preds = %1
  ret i8* %2, !dbg !3060
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3043 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3042, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3045, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %0, metadata !3048, metadata !DIExpression()) #34, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()) #34, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %0, metadata !3048, metadata !DIExpression()) #34, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()) #34, !dbg !3062
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3064
  call void @llvm.dbg.value(metadata i8* %3, metadata !2747, metadata !DIExpression()) #34, !dbg !3065
  %4 = icmp eq i8* %3, null, !dbg !3067
  br i1 %4, label %5, label %6, !dbg !3068

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3069
  unreachable, !dbg !3069

6:                                                ; preds = %2
  ret i8* %3, !dbg !3070
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3071 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %1, metadata !2771, metadata !DIExpression()) #34, !dbg !3078
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3080
  call void @llvm.dbg.value(metadata i8* %3, metadata !2747, metadata !DIExpression()) #34, !dbg !3081
  %4 = icmp eq i8* %3, null, !dbg !3083
  br i1 %4, label %5, label %6, !dbg !3084

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3085
  unreachable, !dbg !3085

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3086, metadata !DIExpression()) #34, !dbg !3094
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()) #34, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %1, metadata !3093, metadata !DIExpression()) #34, !dbg !3094
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3096
  ret i8* %3, !dbg !3097
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3098 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %1, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %1, metadata !2784, metadata !DIExpression()) #34, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %1, metadata !2786, metadata !DIExpression()) #34, !dbg !3107
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %3, metadata !2747, metadata !DIExpression()) #34, !dbg !3110
  %4 = icmp eq i8* %3, null, !dbg !3112
  br i1 %4, label %5, label %6, !dbg !3113

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3114
  unreachable, !dbg !3114

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3086, metadata !DIExpression()) #34, !dbg !3115
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()) #34, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %1, metadata !3093, metadata !DIExpression()) #34, !dbg !3115
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3117
  ret i8* %3, !dbg !3118
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3123, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %1, metadata !3124, metadata !DIExpression()), !dbg !3126
  %3 = add nsw i64 %1, 1, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %3, metadata !2784, metadata !DIExpression()) #34, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %3, metadata !2786, metadata !DIExpression()) #34, !dbg !3130
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3132
  call void @llvm.dbg.value(metadata i8* %4, metadata !2747, metadata !DIExpression()) #34, !dbg !3133
  %5 = icmp eq i8* %4, null, !dbg !3135
  br i1 %5, label %6, label %7, !dbg !3136

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3137
  unreachable, !dbg !3137

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3125, metadata !DIExpression()), !dbg !3126
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3138
  store i8 0, i8* %8, align 1, !dbg !3139, !tbaa !574
  call void @llvm.dbg.value(metadata i8* %4, metadata !3086, metadata !DIExpression()) #34, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()) #34, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %1, metadata !3093, metadata !DIExpression()) #34, !dbg !3140
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3142
  ret i8* %4, !dbg !3143
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3144 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3146, metadata !DIExpression()), !dbg !3147
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !3148
  %3 = add i64 %2, 1, !dbg !3149
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()) #34, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %3, metadata !3076, metadata !DIExpression()) #34, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %3, metadata !2771, metadata !DIExpression()) #34, !dbg !3152
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %4, metadata !2747, metadata !DIExpression()) #34, !dbg !3155
  %5 = icmp eq i8* %4, null, !dbg !3157
  br i1 %5, label %6, label %7, !dbg !3158

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3159
  unreachable, !dbg !3159

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3086, metadata !DIExpression()) #34, !dbg !3160
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()) #34, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %3, metadata !3093, metadata !DIExpression()) #34, !dbg !3160
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !3162
  ret i8* %4, !dbg !3163
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3164 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3168, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %1, metadata !3166, metadata !DIExpression()), !dbg !3169
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.128, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.129, i64 0, i64 0), i32 noundef 5) #34, !dbg !3168
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i64 0, i64 0), i8* noundef %2) #34, !dbg !3168
  %3 = icmp eq i32 %1, 0, !dbg !3168
  tail call void @llvm.assume(i1 %3), !dbg !3168
  tail call void @abort() #36, !dbg !3170
  unreachable, !dbg !3170
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nounwind uwtable
define dso_local i32 @xnanosleep(double noundef %0) local_unnamed_addr #12 !dbg !3171 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !3175, metadata !DIExpression()), !dbg !3183
  %3 = fcmp ult double %0, 0x43E0000000000000, !dbg !3184
  br i1 %3, label %4, label %6, !dbg !3186

4:                                                ; preds = %1
  %5 = tail call i32* @__errno_location() #37, !dbg !3183
  br label %11, !dbg !3186

6:                                                ; preds = %1, %6
  %7 = tail call i32 @pause() #34, !dbg !3187
  %8 = tail call i32* @__errno_location() #37, !dbg !3189
  %9 = load i32, i32* %8, align 4, !dbg !3189, !tbaa !565
  %10 = icmp eq i32 %9, 4, !dbg !3190
  br i1 %10, label %6, label %11, !dbg !3187, !llvm.loop !3191

11:                                               ; preds = %6, %4
  %12 = phi i32* [ %5, %4 ], [ %8, %6 ], !dbg !3183
  %13 = bitcast %struct.timespec* %2 to i8*, !dbg !3194
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #34, !dbg !3194
  call void @llvm.dbg.declare(metadata %struct.timespec* %2, metadata !3176, metadata !DIExpression()), !dbg !3195
  %14 = tail call [2 x i64] @dtotimespec(double noundef %0) #37, !dbg !3196
  %15 = extractvalue [2 x i64] %14, 0, !dbg !3196
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0, !dbg !3196
  store i64 %15, i64* %16, align 8, !dbg !3196
  %17 = extractvalue [2 x i64] %14, 1, !dbg !3196
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1, !dbg !3196
  store i64 %17, i64* %18, align 8, !dbg !3196
  store i32 0, i32* %12, align 4, !dbg !3197, !tbaa !565
  %19 = call i32 @rpl_nanosleep(%struct.timespec* noundef nonnull %2, %struct.timespec* noundef nonnull %2) #34, !dbg !3201
  %20 = icmp eq i32 %19, 0, !dbg !3203
  br i1 %20, label %26, label %21, !dbg !3204

21:                                               ; preds = %11, %23
  %22 = load i32, i32* %12, align 4, !dbg !3205, !tbaa !565
  switch i32 %22, label %26 [
    i32 4, label %23
    i32 0, label %23
  ], !dbg !3207

23:                                               ; preds = %21, %21
  store i32 0, i32* %12, align 4, !dbg !3197, !tbaa !565
  %24 = call i32 @rpl_nanosleep(%struct.timespec* noundef nonnull %2, %struct.timespec* noundef nonnull %2) #34, !dbg !3201
  %25 = icmp eq i32 %24, 0, !dbg !3203
  br i1 %25, label %26, label %21, !dbg !3204, !llvm.loop !3208

26:                                               ; preds = %21, %23, %11
  %27 = phi i32 [ 0, %11 ], [ 0, %23 ], [ -1, %21 ], !dbg !3183
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #34, !dbg !3211
  ret i32 %27, !dbg !3211
}

declare !dbg !3212 i32 @pause() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @c_strtod(i8* noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !3216 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i8** %1, metadata !3221, metadata !DIExpression()), !dbg !3224
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3225, !tbaa !485
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !3225
  br i1 %4, label %5, label %7, !dbg !3231

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 noundef 8127, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i64 0, i64 0), %struct.__locale_struct* noundef null) #34, !dbg !3232
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3233, !tbaa !485
  br label %7, !dbg !3234

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3235, !tbaa !485
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !3223, metadata !DIExpression()), !dbg !3224
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !3236
  br i1 %9, label %10, label %13, !dbg !3238

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !3239
  br i1 %11, label %15, label %12, !dbg !3242

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !3243, !tbaa !485
  br label %15, !dbg !3244

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(i8* noundef %0, i8** noundef %1, %struct.__locale_struct* noundef nonnull %8) #34, !dbg !3245
  call void @llvm.dbg.value(metadata double %14, metadata !3222, metadata !DIExpression()), !dbg !3224
  br label %15, !dbg !3246

15:                                               ; preds = %10, %12, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ], !dbg !3224
  ret double %16, !dbg !3247
}

; Function Attrs: nounwind
declare !dbg !3248 %struct.__locale_struct* @newlocale(i32 noundef, i8* noundef, %struct.__locale_struct* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3251 double @strtod_l(i8* noundef, i8** noundef, %struct.__locale_struct* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3254 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3292, metadata !DIExpression()), !dbg !3297
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !3298
  call void @llvm.dbg.value(metadata i1 undef, metadata !3293, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3297
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3299, metadata !DIExpression()), !dbg !3302
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3304
  %4 = load i32, i32* %3, align 8, !dbg !3304, !tbaa !3305
  %5 = and i32 %4, 32, !dbg !3306
  %6 = icmp eq i32 %5, 0, !dbg !3306
  call void @llvm.dbg.value(metadata i1 %6, metadata !3295, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3297
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !3307
  %8 = icmp eq i32 %7, 0, !dbg !3308
  call void @llvm.dbg.value(metadata i1 %8, metadata !3296, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3297
  br i1 %6, label %9, label %19, !dbg !3309

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3311
  call void @llvm.dbg.value(metadata i1 %10, metadata !3293, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3297
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3312
  %12 = xor i1 %8, true, !dbg !3312
  %13 = sext i1 %12 to i32, !dbg !3312
  br i1 %11, label %22, label %14, !dbg !3312

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !3313
  %16 = load i32, i32* %15, align 4, !dbg !3313, !tbaa !565
  %17 = icmp ne i32 %16, 9, !dbg !3314
  %18 = sext i1 %17 to i32, !dbg !3315
  br label %22, !dbg !3315

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3316

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !3318
  store i32 0, i32* %21, align 4, !dbg !3320, !tbaa !565
  br label %22, !dbg !3318

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3297
  ret i32 %23, !dbg !3321
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local [2 x i64] @dtotimespec(double noundef %0) local_unnamed_addr #31 !dbg !3322 {
  call void @llvm.dbg.value(metadata double %0, metadata !3330, metadata !DIExpression()), !dbg !3337
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !3338
  br i1 %2, label %3, label %27, !dbg !3339

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !3340
  br i1 %4, label %5, label %27, !dbg !3341

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %6, metadata !3331, metadata !DIExpression()), !dbg !3343
  %7 = sitofp i64 %6 to double, !dbg !3344
  %8 = fsub double %0, %7, !dbg !3345
  %9 = fmul double %8, 1.000000e+09, !dbg !3346
  call void @llvm.dbg.value(metadata double %9, metadata !3335, metadata !DIExpression()), !dbg !3343
  %10 = fptosi double %9 to i64, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %10, metadata !3336, metadata !DIExpression()), !dbg !3343
  %11 = sitofp i64 %10 to double, !dbg !3348
  %12 = fcmp ogt double %9, %11, !dbg !3349
  %13 = zext i1 %12 to i64
  %14 = add nsw i64 %13, %10, !dbg !3350
  call void @llvm.dbg.value(metadata i64 %14, metadata !3336, metadata !DIExpression()), !dbg !3343
  %15 = freeze i64 %14
  %16 = sdiv i64 %15, 1000000000, !dbg !3351
  %17 = add nsw i64 %16, %6, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %17, metadata !3331, metadata !DIExpression()), !dbg !3343
  %18 = mul i64 %16, 1000000000
  %19 = sub i64 %15, %18
  call void @llvm.dbg.value(metadata i64 %19, metadata !3336, metadata !DIExpression()), !dbg !3343
  %20 = icmp slt i64 %19, 0, !dbg !3353
  %21 = add nsw i64 %19, 1000000000, !dbg !3355
  %22 = ashr i64 %19, 63, !dbg !3355
  %23 = add nsw i64 %17, %22, !dbg !3355
  %24 = select i1 %20, i64 %21, i64 %19, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %24, metadata !3336, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %23, metadata !3331, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %23, metadata !3356, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %24, metadata !3361, metadata !DIExpression()), !dbg !3362
  %25 = insertvalue [2 x i64] poison, i64 %23, 0, !dbg !3364
  %26 = insertvalue [2 x i64] %25, i64 %24, 1, !dbg !3364
  br label %27

27:                                               ; preds = %3, %1, %5
  %28 = phi [2 x i64] [ %26, %5 ], [ [i64 -9223372036854775808, i64 0], %1 ], [ [i64 9223372036854775807, i64 999999999], %3 ]
  ret [2 x i64] %28, !dbg !3365
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3366 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3404, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 0, metadata !3405, metadata !DIExpression()), !dbg !3408
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3409
  call void @llvm.dbg.value(metadata i32 %2, metadata !3406, metadata !DIExpression()), !dbg !3408
  %3 = icmp slt i32 %2, 0, !dbg !3410
  br i1 %3, label %4, label %6, !dbg !3412

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3413
  br label %24, !dbg !3414

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3415
  %8 = icmp eq i32 %7, 0, !dbg !3415
  br i1 %8, label %13, label %9, !dbg !3417

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3418
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !3419
  %12 = icmp eq i64 %11, -1, !dbg !3420
  br i1 %12, label %16, label %13, !dbg !3421

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3422
  %15 = icmp eq i32 %14, 0, !dbg !3422
  br i1 %15, label %16, label %18, !dbg !3423

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3405, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 0, metadata !3407, metadata !DIExpression()), !dbg !3408
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3424
  call void @llvm.dbg.value(metadata i32 %21, metadata !3407, metadata !DIExpression()), !dbg !3408
  br label %24, !dbg !3425

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !3426
  %20 = load i32, i32* %19, align 4, !dbg !3426, !tbaa !565
  call void @llvm.dbg.value(metadata i32 %20, metadata !3405, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 0, metadata !3407, metadata !DIExpression()), !dbg !3408
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3424
  call void @llvm.dbg.value(metadata i32 %21, metadata !3407, metadata !DIExpression()), !dbg !3408
  %22 = icmp eq i32 %20, 0, !dbg !3427
  br i1 %22, label %24, label %23, !dbg !3425

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3429, !tbaa !565
  call void @llvm.dbg.value(metadata i32 -1, metadata !3407, metadata !DIExpression()), !dbg !3408
  br label %24, !dbg !3431

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3408
  ret i32 %25, !dbg !3432
}

; Function Attrs: nofree nounwind
declare !dbg !3433 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !3434 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3435 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3438 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3476, metadata !DIExpression()), !dbg !3477
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3478
  br i1 %2, label %6, label %3, !dbg !3480

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3481
  %5 = icmp eq i32 %4, 0, !dbg !3481
  br i1 %5, label %6, label %8, !dbg !3482

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3483
  br label %17, !dbg !3484

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3485, metadata !DIExpression()) #34, !dbg !3490
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3492
  %10 = load i32, i32* %9, align 8, !dbg !3492, !tbaa !3305
  %11 = and i32 %10, 256, !dbg !3494
  %12 = icmp eq i32 %11, 0, !dbg !3494
  br i1 %12, label %15, label %13, !dbg !3495

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !3496
  br label %15, !dbg !3496

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3497
  br label %17, !dbg !3498

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3477
  ret i32 %18, !dbg !3499
}

; Function Attrs: nofree nounwind
declare !dbg !3500 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3501 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3540, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3541, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i32 %2, metadata !3542, metadata !DIExpression()), !dbg !3546
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3547
  %5 = load i8*, i8** %4, align 8, !dbg !3547, !tbaa !3548
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3549
  %7 = load i8*, i8** %6, align 8, !dbg !3549, !tbaa !3550
  %8 = icmp eq i8* %5, %7, !dbg !3551
  br i1 %8, label %9, label %28, !dbg !3552

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3553
  %11 = load i8*, i8** %10, align 8, !dbg !3553, !tbaa !1023
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3554
  %13 = load i8*, i8** %12, align 8, !dbg !3554, !tbaa !3555
  %14 = icmp eq i8* %11, %13, !dbg !3556
  br i1 %14, label %15, label %28, !dbg !3557

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3558
  %17 = load i8*, i8** %16, align 8, !dbg !3558, !tbaa !3559
  %18 = icmp eq i8* %17, null, !dbg !3560
  br i1 %18, label %19, label %28, !dbg !3561

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3562
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %21, metadata !3543, metadata !DIExpression()), !dbg !3564
  %22 = icmp eq i64 %21, -1, !dbg !3565
  br i1 %22, label %30, label %23, !dbg !3567

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3568
  %25 = load i32, i32* %24, align 8, !dbg !3569, !tbaa !3305
  %26 = and i32 %25, -17, !dbg !3569
  store i32 %26, i32* %24, align 8, !dbg !3569, !tbaa !3305
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3570
  store i64 %21, i64* %27, align 8, !dbg !3571, !tbaa !3572
  br label %30, !dbg !3573

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3574
  br label %30, !dbg !3575

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3546
  ret i32 %31, !dbg !3576
}

; Function Attrs: nofree nounwind
declare !dbg !3577 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3580 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3585, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i8* %1, metadata !3586, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i64 %2, metadata !3587, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3588, metadata !DIExpression()), !dbg !3590
  %5 = icmp eq i8* %1, null, !dbg !3591
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3593
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.148, i64 0, i64 0), i8* %1, !dbg !3593
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3593
  call void @llvm.dbg.value(metadata i64 %8, metadata !3587, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i8* %7, metadata !3586, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i32* %6, metadata !3585, metadata !DIExpression()), !dbg !3590
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3594
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3596
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3588, metadata !DIExpression()), !dbg !3590
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %11, metadata !3589, metadata !DIExpression()), !dbg !3590
  %12 = icmp ult i64 %11, -3, !dbg !3598
  br i1 %12, label %13, label %18, !dbg !3600

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !3601
  %15 = icmp eq i32 %14, 0, !dbg !3601
  br i1 %15, label %16, label %30, !dbg !3602

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3603, metadata !DIExpression()) #34, !dbg !3608
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3610, metadata !DIExpression()) #34, !dbg !3615
  call void @llvm.dbg.value(metadata i32 0, metadata !3613, metadata !DIExpression()) #34, !dbg !3615
  call void @llvm.dbg.value(metadata i64 8, metadata !3614, metadata !DIExpression()) #34, !dbg !3615
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3617
  store i64 0, i64* %17, align 1, !dbg !3617
  br label %30, !dbg !3618

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3619
  br i1 %19, label %20, label %21, !dbg !3621

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !3622
  unreachable, !dbg !3622

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3623

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !3625
  br i1 %24, label %30, label %25, !dbg !3626

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3627
  br i1 %26, label %30, label %27, !dbg !3630

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3631, !tbaa !574
  %29 = zext i8 %28 to i32, !dbg !3632
  store i32 %29, i32* %6, align 4, !dbg !3633, !tbaa !565
  br label %30, !dbg !3634

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3590
  ret i64 %31, !dbg !3635
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3636 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_nanosleep(%struct.timespec* nocapture noundef nonnull readonly %0, %struct.timespec* noundef %1) local_unnamed_addr #12 !dbg !3642 {
  %3 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata %struct.timespec* %0, metadata !3653, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata %struct.timespec* %1, metadata !3654, metadata !DIExpression()), !dbg !3662
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1, !dbg !3663
  %5 = load i64, i64* %4, align 8, !dbg !3663, !tbaa !3665
  %6 = icmp ugt i64 %5, 999999999, !dbg !3667
  br i1 %6, label %7, label %9, !dbg !3667

7:                                                ; preds = %2
  %8 = tail call i32* @__errno_location() #37, !dbg !3668
  store i32 22, i32* %8, align 4, !dbg !3670, !tbaa !565
  br label %37, !dbg !3671

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 2073600, metadata !3655, metadata !DIExpression()), !dbg !3672
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0, !dbg !3673
  %11 = load i64, i64* %10, align 8, !dbg !3673, !tbaa !3674
  call void @llvm.dbg.value(metadata i64 %11, metadata !3658, metadata !DIExpression()), !dbg !3672
  %12 = bitcast %struct.timespec* %3 to i8*, !dbg !3675
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #34, !dbg !3675
  call void @llvm.dbg.declare(metadata %struct.timespec* %3, metadata !3659, metadata !DIExpression()), !dbg !3676
  %13 = bitcast %struct.timespec* %0 to i8*, !dbg !3677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %12, i8* noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !dbg !3677, !tbaa.struct !3678
  call void @llvm.dbg.value(metadata i64 %11, metadata !3658, metadata !DIExpression()), !dbg !3672
  %14 = icmp sgt i64 %11, 2073600, !dbg !3679
  br i1 %14, label %15, label %31, !dbg !3680

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 0
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 1
  br label %18, !dbg !3680

18:                                               ; preds = %15, %29
  %19 = phi i64 [ %11, %15 ], [ %21, %29 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !3658, metadata !DIExpression()), !dbg !3672
  store i64 2073600, i64* %16, align 8, !dbg !3681, !tbaa !3674
  %20 = call i32 @nanosleep(%struct.timespec* noundef nonnull %3, %struct.timespec* noundef %1) #34, !dbg !3682
  call void @llvm.dbg.value(metadata i32 %20, metadata !3660, metadata !DIExpression()), !dbg !3683
  %21 = add nsw i64 %19, -2073600, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %21, metadata !3658, metadata !DIExpression()), !dbg !3672
  %22 = icmp eq i32 %20, 0, !dbg !3685
  br i1 %22, label %29, label %23, !dbg !3687

23:                                               ; preds = %18
  %24 = icmp eq %struct.timespec* %1, null, !dbg !3688
  br i1 %24, label %35, label %25, !dbg !3691

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 0, !dbg !3692
  %27 = load i64, i64* %26, align 8, !dbg !3693, !tbaa !3674
  %28 = add nsw i64 %27, %21, !dbg !3693
  store i64 %28, i64* %26, align 8, !dbg !3693, !tbaa !3674
  br label %35, !dbg !3694

29:                                               ; preds = %18
  store i64 0, i64* %17, align 8, !dbg !3695, !tbaa !3665
  call void @llvm.dbg.value(metadata i64 %21, metadata !3658, metadata !DIExpression()), !dbg !3672
  %30 = icmp ugt i64 %19, 4147200, !dbg !3679
  br i1 %30, label %18, label %31, !dbg !3680

31:                                               ; preds = %29, %9
  %32 = phi i64 [ %11, %9 ], [ %21, %29 ], !dbg !3672
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 0, !dbg !3696
  store i64 %32, i64* %33, align 8, !dbg !3697, !tbaa !3674
  %34 = call i32 @nanosleep(%struct.timespec* noundef nonnull %3, %struct.timespec* noundef %1) #34, !dbg !3698
  br label %35, !dbg !3699

35:                                               ; preds = %25, %23, %31
  %36 = phi i32 [ %34, %31 ], [ %20, %23 ], [ %20, %25 ], !dbg !3672
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #34, !dbg !3700
  br label %37

37:                                               ; preds = %35, %7
  %38 = phi i32 [ -1, %7 ], [ %36, %35 ], !dbg !3662
  ret i32 %38, !dbg !3701
}

declare !dbg !3702 i32 @nanosleep(%struct.timespec* noundef, %struct.timespec* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !3704 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3706, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %1, metadata !3707, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %2, metadata !3708, metadata !DIExpression()), !dbg !3710
  %4 = icmp eq i64 %2, 0, !dbg !3711
  br i1 %4, label %8, label %5, !dbg !3711

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3711
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3711
  br i1 %7, label %13, label %8, !dbg !3711

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3709, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3710
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3709, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3710
  %9 = mul i64 %2, %1, !dbg !3711
  call void @llvm.dbg.value(metadata i64 %9, metadata !3709, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i8* %0, metadata !3713, metadata !DIExpression()) #34, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %9, metadata !3716, metadata !DIExpression()) #34, !dbg !3717
  %10 = icmp eq i64 %9, 0, !dbg !3719
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3719
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !3720
  br label %15, !dbg !3721

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3709, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3710
  %14 = tail call i32* @__errno_location() #37, !dbg !3722
  store i32 12, i32* %14, align 4, !dbg !3724, !tbaa !565
  br label %15, !dbg !3725

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3710
  ret i8* %16, !dbg !3726
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3727 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3731, metadata !DIExpression()), !dbg !3736
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3737
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !3737
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3732, metadata !DIExpression()), !dbg !3738
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !3739
  %5 = icmp eq i32 %4, 0, !dbg !3739
  br i1 %5, label %6, label %13, !dbg !3741

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3742, metadata !DIExpression()) #34, !dbg !3746
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0), metadata !3745, metadata !DIExpression()) #34, !dbg !3746
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0), i64 2), !dbg !3749
  %8 = icmp eq i32 %7, 0, !dbg !3750
  br i1 %8, label %12, label %9, !dbg !3751

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3742, metadata !DIExpression()) #34, !dbg !3752
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), metadata !3745, metadata !DIExpression()) #34, !dbg !3752
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), i64 6), !dbg !3754
  %11 = icmp eq i32 %10, 0, !dbg !3755
  br i1 %11, label %12, label %13, !dbg !3756

12:                                               ; preds = %9, %6
  br label %13, !dbg !3757

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3736
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !3758
  ret i1 %14, !dbg !3758
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3759 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3763, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i8* %1, metadata !3764, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %2, metadata !3765, metadata !DIExpression()), !dbg !3766
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !3767
  ret i32 %4, !dbg !3768
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3769 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3773, metadata !DIExpression()), !dbg !3774
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !3775
  ret i8* %2, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3777 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3779, metadata !DIExpression()), !dbg !3781
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !3782
  call void @llvm.dbg.value(metadata i8* %2, metadata !3780, metadata !DIExpression()), !dbg !3781
  ret i8* %2, !dbg !3783
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3784 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3786, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8* %1, metadata !3787, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %2, metadata !3788, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i32 %0, metadata !3779, metadata !DIExpression()) #34, !dbg !3794
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !3796
  call void @llvm.dbg.value(metadata i8* %4, metadata !3780, metadata !DIExpression()) #34, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %4, metadata !3789, metadata !DIExpression()), !dbg !3793
  %5 = icmp eq i8* %4, null, !dbg !3797
  br i1 %5, label %6, label %9, !dbg !3798

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3799
  br i1 %7, label %19, label %8, !dbg !3802

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3803, !tbaa !574
  br label %19, !dbg !3804

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %10, metadata !3790, metadata !DIExpression()), !dbg !3806
  %11 = icmp ult i64 %10, %2, !dbg !3807
  br i1 %11, label %12, label %14, !dbg !3809

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3810
  call void @llvm.dbg.value(metadata i8* %1, metadata !3812, metadata !DIExpression()) #34, !dbg !3817
  call void @llvm.dbg.value(metadata i8* %4, metadata !3815, metadata !DIExpression()) #34, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %13, metadata !3816, metadata !DIExpression()) #34, !dbg !3817
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !3819
  br label %19, !dbg !3820

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3821
  br i1 %15, label %19, label %16, !dbg !3824

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3825
  call void @llvm.dbg.value(metadata i8* %1, metadata !3812, metadata !DIExpression()) #34, !dbg !3827
  call void @llvm.dbg.value(metadata i8* %4, metadata !3815, metadata !DIExpression()) #34, !dbg !3827
  call void @llvm.dbg.value(metadata i64 %17, metadata !3816, metadata !DIExpression()) #34, !dbg !3827
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !3829
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3830
  store i8 0, i8* %18, align 1, !dbg !3831, !tbaa !574
  br label %19, !dbg !3832

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3833
  ret i32 %20, !dbg !3834
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #8 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #25 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind }
attributes #35 = { nounwind readonly willreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind readnone willreturn }
attributes #38 = { noreturn }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }
attributes #41 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!9, !121, !379, !126, !133, !330, !381, !174, !191, !201, !233, !383, !322, !390, !424, !426, !336, !432, !434, !441, !443, !445, !365, !447, !453, !456, !458, !460}
!llvm.ident = !{!462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462}
!llvm.module.flags = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !30, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !37)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !28, globals: !36, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/sleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "382b2cab9ca796c7040797f94b92cf12")
!11 = !{!12}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 46, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!16 = !DIEnumerator(name: "_ISupper", value: 256)
!17 = !DIEnumerator(name: "_ISlower", value: 512)
!18 = !DIEnumerator(name: "_ISalpha", value: 1024)
!19 = !DIEnumerator(name: "_ISdigit", value: 2048)
!20 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!21 = !DIEnumerator(name: "_ISspace", value: 8192)
!22 = !DIEnumerator(name: "_ISprint", value: 16384)
!23 = !DIEnumerator(name: "_ISgraph", value: 32768)
!24 = !DIEnumerator(name: "_ISblank", value: 1)
!25 = !DIEnumerator(name: "_IScntrl", value: 2)
!26 = !DIEnumerator(name: "_ISpunct", value: 4)
!27 = !DIEnumerator(name: "_ISalnum", value: 8)
!28 = !{!6, !29, !30, !31, !32, !35}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!0}
!37 = !{!38, !39, !40, !43, !45, !46, !47, !51, !52, !53, !54, !56, !113, !114, !115, !117, !118}
!38 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!39 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!40 = !DILocalVariable(name: "term", scope: !41, file: !3, line: 585, type: !6)
!41 = distinct !DILexicalBlock(scope: !42, file: !3, line: 582, column: 5)
!42 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!43 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !44)
!44 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!45 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!46 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!47 = !DILocalVariable(name: "s", scope: !48, file: !3, line: 608, type: !6)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 605, column: 5)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 604, column: 12)
!50 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!51 = !DILocalVariable(name: "spaces", scope: !48, file: !3, line: 609, type: !32)
!52 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !32)
!53 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!54 = !DILocalVariable(name: "__ptr", scope: !55, file: !3, line: 644, type: !6)
!55 = distinct !DILexicalBlock(scope: !2, file: !3, line: 644, column: 3)
!56 = !DILocalVariable(name: "__stream", scope: !55, file: !3, line: 644, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !60)
!59 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !62)
!61 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!62 = !{!63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !79, !81, !82, !83, !87, !88, !90, !94, !97, !99, !102, !105, !106, !107, !108, !109}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !60, file: !61, line: 51, baseType: !30, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !60, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !60, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !60, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !60, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !60, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !60, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !60, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !60, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !60, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !60, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !60, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !60, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !61, line: 36, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !60, file: !61, line: 70, baseType: !80, size: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !60, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !60, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !60, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !85, line: 152, baseType: !86)
!85 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!86 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !60, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !60, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!89 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !60, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 1)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !60, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !61, line: 43, baseType: null)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !60, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !85, line: 153, baseType: !86)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !60, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !61, line: 37, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !60, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !61, line: 38, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !60, file: !61, line: 93, baseType: !80, size: 64, offset: 1344)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !60, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !60, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !60, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !60, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 20)
!113 = !DILocalVariable(name: "__cnt", scope: !55, file: !3, line: 644, type: !32)
!114 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!115 = !DILocalVariable(name: "__ptr", scope: !116, file: !3, line: 686, type: !6)
!116 = distinct !DILexicalBlock(scope: !2, file: !3, line: 686, column: 3)
!117 = !DILocalVariable(name: "__stream", scope: !116, file: !3, line: 686, type: !57)
!118 = !DILocalVariable(name: "__cnt", scope: !116, file: !3, line: 686, type: !32)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "Version", scope: !121, file: !122, line: 3, type: !6, isLocal: false, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !123, splitDebugInlining: false, nameTableKind: None)
!122 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!123 = !{!119}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "file_name", scope: !126, file: !127, line: 45, type: !6, isLocal: true, isDefinition: true)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !128, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!128 = !{!124, !129}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !126, file: !127, line: 55, type: !44, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !133, file: !134, line: 66, type: !169, isLocal: false, isDefinition: true)
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !135, globals: !136, splitDebugInlining: false, nameTableKind: None)
!134 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!135 = !{!29, !35}
!136 = !{!137, !163, !131, !165, !167}
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "old_file_name", scope: !139, file: !134, line: 304, type: !6, isLocal: true, isDefinition: true)
!139 = distinct !DISubprogram(name: "verror_at_line", scope: !134, file: !134, line: 298, type: !140, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !156)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !30, !30, !6, !14, !6, !142}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 52, baseType: !144)
!143 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !145, line: 32, baseType: !146)
!145 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !147, baseType: !148)
!147 = !DIFile(filename: "lib/error.c", directory: "/src")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !149, size: 256, elements: !150)
!149 = !DINamespace(name: "std", scope: null)
!150 = !{!151, !152, !153, !154, !155}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !148, file: !147, baseType: !29, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !148, file: !147, baseType: !29, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !148, file: !147, baseType: !29, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !148, file: !147, baseType: !30, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !148, file: !147, baseType: !30, size: 32, offset: 224)
!156 = !{!157, !158, !159, !160, !161, !162}
!157 = !DILocalVariable(name: "status", arg: 1, scope: !139, file: !134, line: 298, type: !30)
!158 = !DILocalVariable(name: "errnum", arg: 2, scope: !139, file: !134, line: 298, type: !30)
!159 = !DILocalVariable(name: "file_name", arg: 3, scope: !139, file: !134, line: 298, type: !6)
!160 = !DILocalVariable(name: "line_number", arg: 4, scope: !139, file: !134, line: 298, type: !14)
!161 = !DILocalVariable(name: "message", arg: 5, scope: !139, file: !134, line: 298, type: !6)
!162 = !DILocalVariable(name: "args", arg: 6, scope: !139, file: !134, line: 298, type: !142)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "old_line_number", scope: !139, file: !134, line: 305, type: !14, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "error_message_count", scope: !133, file: !134, line: 69, type: !14, isLocal: false, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !133, file: !134, line: 295, type: !30, isLocal: false, isDefinition: true)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "long_options", scope: !174, file: !175, line: 34, type: !177, isLocal: true, isDefinition: true)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !176, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!176 = !{!172}
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 768, elements: !187)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !180, line: 50, size: 256, elements: !181)
!180 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!181 = !{!182, !183, !184, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !180, line: 52, baseType: !6, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !179, file: !180, line: 55, baseType: !30, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !179, file: !180, line: 56, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !179, file: !180, line: 57, baseType: !30, size: 32, offset: 192)
!187 = !{!188}
!188 = !DISubrange(count: 3)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "program_name", scope: !191, file: !192, line: 31, type: !6, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !193, globals: !194, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!193 = !{!65}
!194 = !{!189}
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "utf07FF", scope: !197, file: !198, line: 46, type: !228, isLocal: true, isDefinition: true)
!197 = distinct !DISubprogram(name: "proper_name_lite", scope: !198, file: !198, line: 38, type: !199, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !203)
!198 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!199 = !DISubroutineType(types: !200)
!200 = !{!6, !6, !6}
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !202, splitDebugInlining: false, nameTableKind: None)
!202 = !{!195}
!203 = !{!204, !205, !206, !207, !212}
!204 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !197, file: !198, line: 38, type: !6)
!205 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !197, file: !198, line: 38, type: !6)
!206 = !DILocalVariable(name: "translation", scope: !197, file: !198, line: 40, type: !6)
!207 = !DILocalVariable(name: "w", scope: !197, file: !198, line: 47, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !209, line: 37, baseType: !210)
!209 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !85, line: 57, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !85, line: 42, baseType: !14)
!212 = !DILocalVariable(name: "mbs", scope: !197, file: !198, line: 48, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !215)
!214 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !217)
!216 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !217, file: !216, line: 15, baseType: !30, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !217, file: !216, line: 20, baseType: !221, size: 32, offset: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !216, line: 16, size: 32, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !221, file: !216, line: 18, baseType: !14, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !221, file: !216, line: 19, baseType: !225, size: 32)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 4)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 2)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !233, file: !234, line: 76, type: !316, isLocal: false, isDefinition: true)
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !235, retainedTypes: !255, globals: !256, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!235 = !{!236, !250, !12}
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !237, line: 42, baseType: !14, size: 32, elements: !238)
!237 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!239 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!240 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!241 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!242 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!243 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!244 = !DIEnumerator(name: "c_quoting_style", value: 5)
!245 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!246 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!247 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!248 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!249 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !237, line: 254, baseType: !14, size: 32, elements: !251)
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!253 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!254 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!255 = !{!30, !31, !32}
!256 = !{!231, !257, !263, !275, !277, !282, !305, !312, !314}
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !233, file: !234, line: 92, type: !259, isLocal: false, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 320, elements: !261)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!261 = !{!262}
!262 = !DISubrange(count: 10)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !233, file: !234, line: 1040, type: !265, isLocal: false, isDefinition: true)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !234, line: 56, size: 448, elements: !266)
!266 = !{!267, !268, !269, !273, !274}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !265, file: !234, line: 59, baseType: !236, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !234, line: 62, baseType: !30, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !265, file: !234, line: 66, baseType: !270, size: 256, offset: 64)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !265, file: !234, line: 69, baseType: !6, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !265, file: !234, line: 72, baseType: !6, size: 64, offset: 384)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !233, file: !234, line: 107, type: !265, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "slot0", scope: !233, file: !234, line: 831, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 256)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "quote", scope: !284, file: !234, line: 228, type: !303, isLocal: true, isDefinition: true)
!284 = distinct !DISubprogram(name: "gettext_quote", scope: !234, file: !234, line: 197, type: !285, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!6, !6, !236}
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(name: "msgid", arg: 1, scope: !284, file: !234, line: 197, type: !6)
!289 = !DILocalVariable(name: "s", arg: 2, scope: !284, file: !234, line: 197, type: !236)
!290 = !DILocalVariable(name: "translation", scope: !284, file: !234, line: 199, type: !6)
!291 = !DILocalVariable(name: "w", scope: !284, file: !234, line: 229, type: !208)
!292 = !DILocalVariable(name: "mbs", scope: !284, file: !234, line: 230, type: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !295, file: !216, line: 15, baseType: !30, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !295, file: !216, line: 20, baseType: !299, size: 32, offset: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !216, line: 16, size: 32, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !299, file: !216, line: 18, baseType: !14, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !299, file: !216, line: 19, baseType: !225, size: 32)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !304)
!304 = !{!230, !227}
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "slotvec", scope: !233, file: !234, line: 834, type: !307, isLocal: true, isDefinition: true)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !234, line: 823, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !308, file: !234, line: 825, baseType: !32, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !234, line: 826, baseType: !65, size: 64, offset: 64)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "nslots", scope: !233, file: !234, line: 832, type: !30, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "slotvec0", scope: !233, file: !234, line: 833, type: !308, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 704, elements: !318)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!318 = !{!319}
!319 = !DISubrange(count: 11)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !322, file: !323, line: 26, type: !325, isLocal: false, isDefinition: true)
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !324, splitDebugInlining: false, nameTableKind: None)
!323 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!324 = !{!320}
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 47)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "exit_failure", scope: !330, file: !331, line: 24, type: !333, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !332, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!332 = !{!328}
!333 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !336, file: !337, line: 58, type: !362, isLocal: true, isDefinition: true)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !338, globals: !361, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/c-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5149e55c3d66a821d48006aa16ce6f10")
!338 = !{!65, !339}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !340, line: 24, baseType: !341)
!340 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !342, line: 41, baseType: !343)
!342 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !342, line: 27, size: 1856, elements: !345)
!345 = !{!346, !352, !355, !358, !359}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !344, file: !342, line: 30, baseType: !347, size: 832)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 832, elements: !350)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !342, line: 30, flags: DIFlagFwdDecl)
!350 = !{!351}
!351 = !DISubrange(count: 13)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !344, file: !342, line: 33, baseType: !353, size: 64, offset: 832)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !344, file: !342, line: 34, baseType: !356, size: 64, offset: 896)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !344, file: !342, line: 35, baseType: !356, size: 64, offset: 960)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !344, file: !342, line: 38, baseType: !360, size: 832, offset: 1024)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 832, elements: !350)
!361 = !{!334}
!362 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !339)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "internal_state", scope: !365, file: !366, line: 97, type: !369, isLocal: true, isDefinition: true)
!365 = distinct !DICompileUnit(language: DW_LANG_C99, file: !366, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !367, globals: !368, splitDebugInlining: false, nameTableKind: None)
!366 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!367 = !{!29, !32, !35}
!368 = !{!363}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !371, file: !216, line: 15, baseType: !30, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !371, file: !216, line: 20, baseType: !375, size: 32, offset: 32)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !216, line: 16, size: 32, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !375, file: !216, line: 18, baseType: !14, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !375, file: !216, line: 19, baseType: !225, size: 32)
!379 = distinct !DICompileUnit(language: DW_LANG_C99, file: !380, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!380 = !DIFile(filename: "lib/cl-strtod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a67239aa557b1854772fcd1589240f00")
!381 = distinct !DICompileUnit(language: DW_LANG_C99, file: !382, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!382 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!383 = distinct !DICompileUnit(language: DW_LANG_C99, file: !384, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !385, retainedTypes: !389, splitDebugInlining: false, nameTableKind: None)
!384 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!385 = !{!386}
!386 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !384, line: 40, baseType: !14, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!389 = !{!29}
!390 = distinct !DICompileUnit(language: DW_LANG_C99, file: !391, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !392, retainedTypes: !423, splitDebugInlining: false, nameTableKind: None)
!391 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!392 = !{!393, !405}
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !394, file: !391, line: 188, baseType: !14, size: 32, elements: !403)
!394 = distinct !DISubprogram(name: "x2nrealloc", scope: !391, file: !391, line: 176, type: !395, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !398)
!395 = !DISubroutineType(types: !396)
!396 = !{!29, !29, !397, !32}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!398 = !{!399, !400, !401, !402}
!399 = !DILocalVariable(name: "p", arg: 1, scope: !394, file: !391, line: 176, type: !29)
!400 = !DILocalVariable(name: "pn", arg: 2, scope: !394, file: !391, line: 176, type: !397)
!401 = !DILocalVariable(name: "s", arg: 3, scope: !394, file: !391, line: 176, type: !32)
!402 = !DILocalVariable(name: "n", scope: !394, file: !391, line: 178, type: !32)
!403 = !{!404}
!404 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!405 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !406, file: !391, line: 228, baseType: !14, size: 32, elements: !403)
!406 = distinct !DISubprogram(name: "xpalloc", scope: !391, file: !391, line: 223, type: !407, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !413)
!407 = !DISubroutineType(types: !408)
!408 = !{!29, !29, !409, !410, !412, !410}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !411, line: 130, baseType: !412)
!411 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !33, line: 35, baseType: !86)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422}
!414 = !DILocalVariable(name: "pa", arg: 1, scope: !406, file: !391, line: 223, type: !29)
!415 = !DILocalVariable(name: "pn", arg: 2, scope: !406, file: !391, line: 223, type: !409)
!416 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !406, file: !391, line: 223, type: !410)
!417 = !DILocalVariable(name: "n_max", arg: 4, scope: !406, file: !391, line: 223, type: !412)
!418 = !DILocalVariable(name: "s", arg: 5, scope: !406, file: !391, line: 223, type: !410)
!419 = !DILocalVariable(name: "n0", scope: !406, file: !391, line: 230, type: !410)
!420 = !DILocalVariable(name: "n", scope: !406, file: !391, line: 237, type: !410)
!421 = !DILocalVariable(name: "nbytes", scope: !406, file: !391, line: 248, type: !410)
!422 = !DILocalVariable(name: "adjusted_nbytes", scope: !406, file: !391, line: 252, type: !410)
!423 = !{!65, !29, !44, !86, !34}
!424 = distinct !DICompileUnit(language: DW_LANG_C99, file: !425, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!425 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !428, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "lib/xnanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b6a69034949aee1e9f05553e779b94d2")
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !430, line: 10, baseType: !431)
!430 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !85, line: 160, baseType: !86)
!432 = distinct !DICompileUnit(language: DW_LANG_C99, file: !433, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!433 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !436, retainedTypes: !428, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/dtotimespec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "863541a7a9cbed8b745823733251add6")
!436 = !{!437}
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 44, baseType: !14, size: 32, elements: !439)
!438 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!439 = !{!440}
!440 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000)
!441 = distinct !DICompileUnit(language: DW_LANG_C99, file: !442, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!442 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !389, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !389, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !448, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !449, splitDebugInlining: false, nameTableKind: None)
!448 = !DIFile(filename: "lib/nanosleep.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ea6d8d4443a961090653c9a262702e98")
!449 = !{!450}
!450 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !448, line: 37, baseType: !14, size: 32, elements: !451)
!451 = !{!452}
!452 = !DIEnumerator(name: "BILLION", value: 1000000000)
!453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !454, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!454 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!455 = !{!44, !34, !29}
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!460 = distinct !DICompileUnit(language: DW_LANG_C99, file: !461, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !389, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!462 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!463 = !{i32 7, !"Dwarf Version", i32 5}
!464 = !{i32 2, !"Debug Info Version", i32 3}
!465 = !{i32 1, !"wchar_size", i32 4}
!466 = !{i32 1, !"branch-target-enforcement", i32 0}
!467 = !{i32 1, !"sign-return-address", i32 0}
!468 = !{i32 1, !"sign-return-address-all", i32 0}
!469 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!470 = !{i32 7, !"PIC Level", i32 2}
!471 = !{i32 7, !"PIE Level", i32 2}
!472 = !{i32 7, !"uwtable", i32 1}
!473 = !{i32 7, !"frame-pointer", i32 1}
!474 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 36, type: !475, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !30}
!477 = !{!478}
!478 = !DILocalVariable(name: "status", arg: 1, scope: !474, file: !10, line: 36, type: !30)
!479 = !DILocation(line: 0, scope: !474)
!480 = !DILocation(line: 38, column: 14, scope: !481)
!481 = distinct !DILexicalBlock(scope: !474, file: !10, line: 38, column: 7)
!482 = !DILocation(line: 38, column: 7, scope: !474)
!483 = !DILocation(line: 39, column: 5, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !10, line: 39, column: 5)
!485 = !{!486, !486, i64 0}
!486 = !{!"any pointer", !487, i64 0}
!487 = !{!"omnipotent char", !488, i64 0}
!488 = !{!"Simple C/C++ TBAA"}
!489 = !DILocation(line: 42, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !481, file: !10, line: 41, column: 5)
!491 = !DILocation(line: 51, column: 7, scope: !490)
!492 = !DILocation(line: 52, column: 7, scope: !490)
!493 = !DILocalVariable(name: "program", arg: 1, scope: !494, file: !3, line: 836, type: !6)
!494 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !495, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !6}
!497 = !{!493, !498, !507, !508, !510, !511}
!498 = !DILocalVariable(name: "infomap", scope: !494, file: !3, line: 838, type: !499)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 896, elements: !505)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !494, file: !3, line: 838, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !501, file: !3, line: 838, baseType: !6, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !501, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!505 = !{!506}
!506 = !DISubrange(count: 7)
!507 = !DILocalVariable(name: "node", scope: !494, file: !3, line: 848, type: !6)
!508 = !DILocalVariable(name: "map_prog", scope: !494, file: !3, line: 849, type: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!510 = !DILocalVariable(name: "lc_messages", scope: !494, file: !3, line: 861, type: !6)
!511 = !DILocalVariable(name: "url_program", scope: !494, file: !3, line: 874, type: !6)
!512 = !DILocation(line: 0, scope: !494, inlinedAt: !513)
!513 = distinct !DILocation(line: 53, column: 7, scope: !490)
!514 = !DILocation(line: 838, column: 3, scope: !494, inlinedAt: !513)
!515 = !DILocation(line: 838, column: 67, scope: !494, inlinedAt: !513)
!516 = !DILocation(line: 849, column: 36, scope: !494, inlinedAt: !513)
!517 = !DILocation(line: 851, column: 3, scope: !494, inlinedAt: !513)
!518 = !DILocalVariable(name: "__s1", arg: 1, scope: !519, file: !520, line: 1359, type: !6)
!519 = distinct !DISubprogram(name: "streq", scope: !520, file: !520, line: 1359, type: !521, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !523)
!520 = !DIFile(filename: "./lib/string.h", directory: "/src")
!521 = !DISubroutineType(types: !522)
!522 = !{!44, !6, !6}
!523 = !{!518, !524}
!524 = !DILocalVariable(name: "__s2", arg: 2, scope: !519, file: !520, line: 1359, type: !6)
!525 = !DILocation(line: 0, scope: !519, inlinedAt: !526)
!526 = distinct !DILocation(line: 851, column: 33, scope: !494, inlinedAt: !513)
!527 = !DILocation(line: 1361, column: 11, scope: !519, inlinedAt: !526)
!528 = !DILocation(line: 1361, column: 10, scope: !519, inlinedAt: !526)
!529 = !DILocation(line: 852, column: 13, scope: !494, inlinedAt: !513)
!530 = !DILocation(line: 851, column: 20, scope: !494, inlinedAt: !513)
!531 = !{!532, !486, i64 0}
!532 = !{!"infomap", !486, i64 0, !486, i64 8}
!533 = !DILocation(line: 851, column: 10, scope: !494, inlinedAt: !513)
!534 = !DILocation(line: 851, column: 28, scope: !494, inlinedAt: !513)
!535 = distinct !{!535, !517, !529, !536}
!536 = !{!"llvm.loop.mustprogress"}
!537 = !DILocation(line: 854, column: 17, scope: !538, inlinedAt: !513)
!538 = distinct !DILexicalBlock(scope: !494, file: !3, line: 854, column: 7)
!539 = !{!532, !486, i64 8}
!540 = !DILocation(line: 854, column: 7, scope: !538, inlinedAt: !513)
!541 = !DILocation(line: 854, column: 7, scope: !494, inlinedAt: !513)
!542 = !DILocation(line: 857, column: 3, scope: !494, inlinedAt: !513)
!543 = !DILocation(line: 861, column: 29, scope: !494, inlinedAt: !513)
!544 = !DILocation(line: 862, column: 7, scope: !545, inlinedAt: !513)
!545 = distinct !DILexicalBlock(scope: !494, file: !3, line: 862, column: 7)
!546 = !DILocation(line: 862, column: 19, scope: !545, inlinedAt: !513)
!547 = !DILocation(line: 862, column: 22, scope: !545, inlinedAt: !513)
!548 = !DILocation(line: 862, column: 7, scope: !494, inlinedAt: !513)
!549 = !DILocation(line: 868, column: 7, scope: !550, inlinedAt: !513)
!550 = distinct !DILexicalBlock(scope: !545, file: !3, line: 863, column: 5)
!551 = !DILocation(line: 870, column: 5, scope: !550, inlinedAt: !513)
!552 = !DILocation(line: 0, scope: !519, inlinedAt: !553)
!553 = distinct !DILocation(line: 874, column: 29, scope: !494, inlinedAt: !513)
!554 = !DILocation(line: 875, column: 3, scope: !494, inlinedAt: !513)
!555 = !DILocation(line: 877, column: 3, scope: !494, inlinedAt: !513)
!556 = !DILocation(line: 879, column: 1, scope: !494, inlinedAt: !513)
!557 = !DILocation(line: 55, column: 3, scope: !474)
!558 = !DISubprogram(name: "dcgettext", scope: !559, file: !559, line: 51, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!559 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!560 = !DISubroutineType(types: !561)
!561 = !{!65, !6, !6, !30}
!562 = !{}
!563 = !DILocation(line: 0, scope: !2)
!564 = !DILocation(line: 581, column: 7, scope: !42)
!565 = !{!566, !566, i64 0}
!566 = !{!"int", !487, i64 0}
!567 = !DILocation(line: 581, column: 19, scope: !42)
!568 = !DILocation(line: 581, column: 7, scope: !2)
!569 = !DILocation(line: 585, column: 26, scope: !41)
!570 = !DILocation(line: 0, scope: !41)
!571 = !DILocation(line: 586, column: 23, scope: !41)
!572 = !DILocation(line: 586, column: 28, scope: !41)
!573 = !DILocation(line: 586, column: 32, scope: !41)
!574 = !{!487, !487, i64 0}
!575 = !DILocation(line: 586, column: 38, scope: !41)
!576 = !DILocation(line: 0, scope: !519, inlinedAt: !577)
!577 = distinct !DILocation(line: 586, column: 41, scope: !41)
!578 = !DILocation(line: 1361, column: 11, scope: !519, inlinedAt: !577)
!579 = !DILocation(line: 1361, column: 10, scope: !519, inlinedAt: !577)
!580 = !DILocation(line: 586, column: 19, scope: !41)
!581 = !DILocation(line: 587, column: 5, scope: !41)
!582 = !DILocation(line: 588, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!584 = !DILocation(line: 588, column: 7, scope: !2)
!585 = !DILocation(line: 590, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !3, line: 589, column: 5)
!587 = !DILocation(line: 591, column: 7, scope: !586)
!588 = !DILocation(line: 595, column: 37, scope: !2)
!589 = !DILocation(line: 595, column: 35, scope: !2)
!590 = !DILocation(line: 596, column: 29, scope: !2)
!591 = !DILocation(line: 597, column: 8, scope: !50)
!592 = !DILocation(line: 597, column: 7, scope: !2)
!593 = !DILocation(line: 604, column: 24, scope: !49)
!594 = !DILocation(line: 604, column: 12, scope: !50)
!595 = !DILocation(line: 0, scope: !48)
!596 = !DILocation(line: 610, column: 16, scope: !48)
!597 = !DILocation(line: 610, column: 7, scope: !48)
!598 = !DILocation(line: 611, column: 21, scope: !48)
!599 = !{!600, !600, i64 0}
!600 = !{!"short", !487, i64 0}
!601 = !DILocation(line: 611, column: 19, scope: !48)
!602 = !DILocation(line: 611, column: 16, scope: !48)
!603 = !DILocation(line: 610, column: 30, scope: !48)
!604 = distinct !{!604, !597, !598, !536}
!605 = !DILocation(line: 612, column: 18, scope: !606)
!606 = distinct !DILexicalBlock(scope: !48, file: !3, line: 612, column: 11)
!607 = !DILocation(line: 612, column: 11, scope: !48)
!608 = !DILocation(line: 620, column: 23, scope: !2)
!609 = !DILocation(line: 625, column: 39, scope: !2)
!610 = !DILocation(line: 626, column: 3, scope: !2)
!611 = !DILocation(line: 626, column: 10, scope: !2)
!612 = !DILocation(line: 626, column: 21, scope: !2)
!613 = !DILocation(line: 628, column: 44, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 628, column: 11)
!615 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!616 = !DILocation(line: 628, column: 32, scope: !614)
!617 = !DILocation(line: 628, column: 49, scope: !614)
!618 = !DILocation(line: 628, column: 11, scope: !615)
!619 = !DILocation(line: 630, column: 11, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !3, line: 630, column: 11)
!621 = !DILocation(line: 630, column: 11, scope: !615)
!622 = !DILocation(line: 632, column: 26, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 632, column: 15)
!624 = distinct !DILexicalBlock(scope: !620, file: !3, line: 631, column: 9)
!625 = !DILocation(line: 632, column: 34, scope: !623)
!626 = !DILocation(line: 632, column: 37, scope: !623)
!627 = !DILocation(line: 632, column: 15, scope: !624)
!628 = !DILocation(line: 636, column: 29, scope: !629)
!629 = distinct !DILexicalBlock(scope: !624, file: !3, line: 636, column: 15)
!630 = !DILocation(line: 640, column: 16, scope: !615)
!631 = distinct !{!631, !610, !632, !536}
!632 = !DILocation(line: 641, column: 5, scope: !2)
!633 = !DILocation(line: 644, column: 3, scope: !2)
!634 = !DILocation(line: 0, scope: !519, inlinedAt: !635)
!635 = distinct !DILocation(line: 648, column: 31, scope: !2)
!636 = !DILocation(line: 0, scope: !519, inlinedAt: !637)
!637 = distinct !DILocation(line: 649, column: 31, scope: !2)
!638 = !DILocation(line: 0, scope: !519, inlinedAt: !639)
!639 = distinct !DILocation(line: 650, column: 31, scope: !2)
!640 = !DILocation(line: 0, scope: !519, inlinedAt: !641)
!641 = distinct !DILocation(line: 651, column: 31, scope: !2)
!642 = !DILocation(line: 0, scope: !519, inlinedAt: !643)
!643 = distinct !DILocation(line: 652, column: 31, scope: !2)
!644 = !DILocation(line: 0, scope: !519, inlinedAt: !645)
!645 = distinct !DILocation(line: 653, column: 31, scope: !2)
!646 = !DILocation(line: 0, scope: !519, inlinedAt: !647)
!647 = distinct !DILocation(line: 654, column: 31, scope: !2)
!648 = !DILocation(line: 0, scope: !519, inlinedAt: !649)
!649 = distinct !DILocation(line: 655, column: 31, scope: !2)
!650 = !DILocation(line: 0, scope: !519, inlinedAt: !651)
!651 = distinct !DILocation(line: 656, column: 31, scope: !2)
!652 = !DILocation(line: 0, scope: !519, inlinedAt: !653)
!653 = distinct !DILocation(line: 657, column: 31, scope: !2)
!654 = !DILocation(line: 663, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!656 = !DILocation(line: 664, column: 7, scope: !655)
!657 = !DILocation(line: 664, column: 10, scope: !655)
!658 = !DILocation(line: 663, column: 7, scope: !2)
!659 = !DILocation(line: 669, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !655, file: !3, line: 665, column: 5)
!661 = !DILocation(line: 671, column: 5, scope: !660)
!662 = !DILocation(line: 676, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !655, file: !3, line: 673, column: 5)
!664 = !DILocation(line: 679, column: 3, scope: !2)
!665 = !DILocation(line: 683, column: 3, scope: !2)
!666 = !DILocation(line: 686, column: 3, scope: !2)
!667 = !DILocation(line: 688, column: 3, scope: !2)
!668 = !DILocation(line: 691, column: 3, scope: !2)
!669 = !DILocation(line: 695, column: 3, scope: !2)
!670 = !DILocation(line: 696, column: 1, scope: !2)
!671 = !DISubprogram(name: "setlocale", scope: !672, file: !672, line: 122, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!672 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!673 = !DISubroutineType(types: !674)
!674 = !{!65, !30, !6}
!675 = !DISubprogram(name: "fputs_unlocked", scope: !143, file: !143, line: 691, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!676 = !DISubroutineType(types: !677)
!677 = !{!30, !678, !679}
!678 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!679 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!680 = !DISubprogram(name: "getenv", scope: !681, file: !681, line: 641, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!681 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!682 = !DISubroutineType(types: !683)
!683 = !{!65, !6}
!684 = !DISubprogram(name: "fwrite_unlocked", scope: !143, file: !143, line: 704, type: !685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!685 = !DISubroutineType(types: !686)
!686 = !{!32, !687, !32, !32, !679}
!687 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!690 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 94, type: !691, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !694)
!691 = !DISubroutineType(types: !692)
!692 = !{!30, !30, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!694 = !{!695, !696, !697, !699, !700, !702, !705, !706}
!695 = !DILocalVariable(name: "argc", arg: 1, scope: !690, file: !10, line: 94, type: !30)
!696 = !DILocalVariable(name: "argv", arg: 2, scope: !690, file: !10, line: 94, type: !693)
!697 = !DILocalVariable(name: "seconds", scope: !690, file: !10, line: 96, type: !698)
!698 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!699 = !DILocalVariable(name: "ok", scope: !690, file: !10, line: 97, type: !44)
!700 = !DILocalVariable(name: "i", scope: !701, file: !10, line: 117, type: !30)
!701 = distinct !DILexicalBlock(scope: !690, file: !10, line: 117, column: 3)
!702 = !DILocalVariable(name: "p", scope: !703, file: !10, line: 119, type: !65)
!703 = distinct !DILexicalBlock(scope: !704, file: !10, line: 118, column: 5)
!704 = distinct !DILexicalBlock(scope: !701, file: !10, line: 117, column: 3)
!705 = !DILocalVariable(name: "duration", scope: !703, file: !10, line: 121, type: !698)
!706 = !DILocalVariable(name: "s", scope: !703, file: !10, line: 122, type: !698)
!707 = !DILocation(line: 0, scope: !690)
!708 = !DILocation(line: 100, column: 21, scope: !690)
!709 = !DILocation(line: 100, column: 3, scope: !690)
!710 = !DILocation(line: 101, column: 3, scope: !690)
!711 = !DILocation(line: 102, column: 3, scope: !690)
!712 = !DILocation(line: 103, column: 3, scope: !690)
!713 = !DILocation(line: 105, column: 3, scope: !690)
!714 = !DILocation(line: 108, column: 36, scope: !690)
!715 = !DILocation(line: 108, column: 58, scope: !690)
!716 = !DILocation(line: 107, column: 3, scope: !690)
!717 = !DILocation(line: 111, column: 12, scope: !718)
!718 = distinct !DILexicalBlock(scope: !690, file: !10, line: 111, column: 7)
!719 = !DILocation(line: 111, column: 7, scope: !690)
!720 = !DILocation(line: 113, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !10, line: 112, column: 5)
!722 = !DILocation(line: 114, column: 7, scope: !721)
!723 = !DILocation(line: 117, column: 16, scope: !701)
!724 = !DILocation(line: 0, scope: !701)
!725 = !DILocation(line: 117, column: 26, scope: !704)
!726 = !DILocation(line: 117, column: 3, scope: !701)
!727 = !DILocation(line: 138, column: 7, scope: !690)
!728 = !DILocation(line: 119, column: 7, scope: !703)
!729 = !DILocation(line: 120, column: 13, scope: !703)
!730 = !DILocation(line: 121, column: 36, scope: !703)
!731 = !DILocation(line: 0, scope: !703)
!732 = !DILocation(line: 121, column: 25, scope: !703)
!733 = !DILocation(line: 122, column: 45, scope: !703)
!734 = !DILocalVariable(name: "c", arg: 1, scope: !735, file: !736, line: 54, type: !698)
!735 = distinct !DISubprogram(name: "dtimespec_bound", scope: !736, file: !736, line: 54, type: !737, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !739)
!736 = !DIFile(filename: "./lib/dtimespec-bound.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1c1d0447ed5234421679b9baaf454c86")
!737 = !DISubroutineType(types: !738)
!738 = !{!698, !698, !30}
!739 = !{!734, !740, !741}
!740 = !DILocalVariable(name: "err", arg: 2, scope: !735, file: !736, line: 54, type: !30)
!741 = !DILocalVariable(name: "phi", scope: !735, file: !736, line: 70, type: !698)
!742 = !DILocation(line: 0, scope: !735, inlinedAt: !743)
!743 = distinct !DILocation(line: 122, column: 18, scope: !703)
!744 = !DILocation(line: 60, column: 11, scope: !745, inlinedAt: !743)
!745 = distinct !DILexicalBlock(scope: !735, file: !736, line: 60, column: 7)
!746 = !DILocation(line: 60, column: 21, scope: !745, inlinedAt: !743)
!747 = !DILocation(line: 123, column: 11, scope: !748)
!748 = distinct !DILexicalBlock(scope: !703, file: !10, line: 123, column: 11)
!749 = !DILocation(line: 123, column: 22, scope: !748)
!750 = !DILocation(line: 123, column: 19, scope: !748)
!751 = !DILocation(line: 125, column: 11, scope: !748)
!752 = !DILocation(line: 127, column: 15, scope: !748)
!753 = !DILocation(line: 127, column: 18, scope: !748)
!754 = !DILocation(line: 127, column: 25, scope: !748)
!755 = !DILocation(line: 127, column: 21, scope: !748)
!756 = !DILocation(line: 129, column: 11, scope: !748)
!757 = !DILocalVariable(name: "x", arg: 1, scope: !758, file: !10, line: 65, type: !761)
!758 = distinct !DISubprogram(name: "apply_suffix", scope: !10, file: !10, line: 65, type: !759, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !762)
!759 = !DISubroutineType(types: !760)
!760 = !{!44, !761, !8}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!762 = !{!757, !763, !764}
!763 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !758, file: !10, line: 65, type: !8)
!764 = !DILocalVariable(name: "multiplier", scope: !758, file: !10, line: 67, type: !30)
!765 = !DILocation(line: 0, scope: !758, inlinedAt: !766)
!766 = distinct !DILocation(line: 129, column: 16, scope: !748)
!767 = !DILocation(line: 69, column: 3, scope: !758, inlinedAt: !766)
!768 = !DILocation(line: 77, column: 7, scope: !769, inlinedAt: !766)
!769 = distinct !DILexicalBlock(scope: !758, file: !10, line: 70, column: 5)
!770 = !DILocation(line: 80, column: 7, scope: !769, inlinedAt: !766)
!771 = !DILocation(line: 83, column: 7, scope: !769, inlinedAt: !766)
!772 = !DILocation(line: 88, column: 28, scope: !758, inlinedAt: !766)
!773 = !DILocation(line: 0, scope: !735, inlinedAt: !774)
!774 = distinct !DILocation(line: 88, column: 8, scope: !758, inlinedAt: !766)
!775 = !DILocation(line: 60, column: 21, scope: !745, inlinedAt: !774)
!776 = !DILocation(line: 123, column: 11, scope: !703)
!777 = !DILocation(line: 131, column: 11, scope: !778)
!778 = distinct !DILexicalBlock(scope: !748, file: !10, line: 130, column: 9)
!779 = !DILocation(line: 133, column: 9, scope: !778)
!780 = !DILocation(line: 122, column: 14, scope: !703)
!781 = !DILocation(line: 135, column: 42, scope: !703)
!782 = !DILocation(line: 0, scope: !735, inlinedAt: !783)
!783 = distinct !DILocation(line: 135, column: 17, scope: !703)
!784 = !DILocation(line: 60, column: 21, scope: !745, inlinedAt: !783)
!785 = !DILocation(line: 136, column: 5, scope: !704)
!786 = !DILocation(line: 117, column: 35, scope: !704)
!787 = distinct !{!787, !726, !788, !536}
!788 = !DILocation(line: 136, column: 5, scope: !701)
!789 = !DILocation(line: 139, column: 5, scope: !790)
!790 = distinct !DILexicalBlock(scope: !690, file: !10, line: 138, column: 7)
!791 = !DILocation(line: 141, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !690, file: !10, line: 141, column: 7)
!793 = !DILocation(line: 141, column: 7, scope: !690)
!794 = !DILocation(line: 142, column: 5, scope: !792)
!795 = !DILocation(line: 144, column: 3, scope: !690)
!796 = !DISubprogram(name: "bindtextdomain", scope: !559, file: !559, line: 86, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!797 = !DISubroutineType(types: !798)
!798 = !{!65, !6, !6}
!799 = !DISubprogram(name: "textdomain", scope: !559, file: !559, line: 82, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!800 = !DISubprogram(name: "atexit", scope: !681, file: !681, line: 602, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!801 = !DISubroutineType(types: !802)
!802 = !{!30, !169}
!803 = distinct !DISubprogram(name: "cl_strtod", scope: !380, file: !380, line: 59, type: !804, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !807)
!804 = !DISubroutineType(types: !805)
!805 = !{!698, !6, !806}
!806 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !693)
!807 = !{!808, !809, !810, !811, !812, !815, !816}
!808 = !DILocalVariable(name: "nptr", arg: 1, scope: !803, file: !380, line: 59, type: !6)
!809 = !DILocalVariable(name: "endptr", arg: 2, scope: !803, file: !380, line: 59, type: !806)
!810 = !DILocalVariable(name: "end", scope: !803, file: !380, line: 61, type: !65)
!811 = !DILocalVariable(name: "d", scope: !803, file: !380, line: 62, type: !698)
!812 = !DILocalVariable(name: "strtod_errno", scope: !813, file: !380, line: 65, type: !30)
!813 = distinct !DILexicalBlock(scope: !814, file: !380, line: 64, column: 5)
!814 = distinct !DILexicalBlock(scope: !803, file: !380, line: 63, column: 7)
!815 = !DILocalVariable(name: "c_end", scope: !813, file: !380, line: 66, type: !65)
!816 = !DILocalVariable(name: "c", scope: !813, file: !380, line: 67, type: !698)
!817 = !DILocation(line: 0, scope: !803)
!818 = !DILocation(line: 61, column: 3, scope: !803)
!819 = !DILocation(line: 62, column: 14, scope: !803)
!820 = !DILocation(line: 63, column: 8, scope: !814)
!821 = !DILocation(line: 63, column: 7, scope: !814)
!822 = !DILocation(line: 63, column: 7, scope: !803)
!823 = !DILocation(line: 65, column: 26, scope: !813)
!824 = !DILocation(line: 0, scope: !813)
!825 = !DILocation(line: 66, column: 7, scope: !813)
!826 = !DILocation(line: 67, column: 18, scope: !813)
!827 = !DILocation(line: 68, column: 17, scope: !828)
!828 = distinct !DILexicalBlock(scope: !813, file: !380, line: 68, column: 11)
!829 = !DILocation(line: 68, column: 15, scope: !828)
!830 = !DILocation(line: 68, column: 11, scope: !813)
!831 = !DILocation(line: 71, column: 15, scope: !828)
!832 = !DILocation(line: 72, column: 5, scope: !814)
!833 = !DILocation(line: 72, column: 5, scope: !813)
!834 = !DILocation(line: 73, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !803, file: !380, line: 73, column: 7)
!836 = !DILocation(line: 73, column: 7, scope: !803)
!837 = !DILocation(line: 74, column: 13, scope: !835)
!838 = !DILocation(line: 74, column: 5, scope: !835)
!839 = !DILocation(line: 76, column: 1, scope: !803)
!840 = !DILocation(line: 75, column: 3, scope: !803)
!841 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !127, file: !127, line: 50, type: !495, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !842)
!842 = !{!843}
!843 = !DILocalVariable(name: "file", arg: 1, scope: !841, file: !127, line: 50, type: !6)
!844 = !DILocation(line: 0, scope: !841)
!845 = !DILocation(line: 52, column: 13, scope: !841)
!846 = !DILocation(line: 53, column: 1, scope: !841)
!847 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !127, file: !127, line: 87, type: !848, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !44}
!850 = !{!851}
!851 = !DILocalVariable(name: "ignore", arg: 1, scope: !847, file: !127, line: 87, type: !44)
!852 = !DILocation(line: 0, scope: !847)
!853 = !DILocation(line: 89, column: 16, scope: !847)
!854 = !{!855, !855, i64 0}
!855 = !{!"_Bool", !487, i64 0}
!856 = !DILocation(line: 90, column: 1, scope: !847)
!857 = distinct !DISubprogram(name: "close_stdout", scope: !127, file: !127, line: 116, type: !170, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !858)
!858 = !{!859}
!859 = !DILocalVariable(name: "write_error", scope: !860, file: !127, line: 121, type: !6)
!860 = distinct !DILexicalBlock(scope: !861, file: !127, line: 120, column: 5)
!861 = distinct !DILexicalBlock(scope: !857, file: !127, line: 118, column: 7)
!862 = !DILocation(line: 118, column: 21, scope: !861)
!863 = !DILocation(line: 118, column: 7, scope: !861)
!864 = !DILocation(line: 118, column: 29, scope: !861)
!865 = !DILocation(line: 119, column: 7, scope: !861)
!866 = !DILocation(line: 119, column: 12, scope: !861)
!867 = !{i8 0, i8 2}
!868 = !DILocation(line: 119, column: 25, scope: !861)
!869 = !DILocation(line: 119, column: 28, scope: !861)
!870 = !DILocation(line: 119, column: 34, scope: !861)
!871 = !DILocation(line: 118, column: 7, scope: !857)
!872 = !DILocation(line: 121, column: 33, scope: !860)
!873 = !DILocation(line: 0, scope: !860)
!874 = !DILocation(line: 122, column: 11, scope: !875)
!875 = distinct !DILexicalBlock(scope: !860, file: !127, line: 122, column: 11)
!876 = !DILocation(line: 0, scope: !875)
!877 = !DILocation(line: 122, column: 11, scope: !860)
!878 = !DILocation(line: 123, column: 9, scope: !875)
!879 = !DILocation(line: 126, column: 9, scope: !875)
!880 = !DILocation(line: 128, column: 14, scope: !860)
!881 = !DILocation(line: 128, column: 7, scope: !860)
!882 = !DILocation(line: 133, column: 42, scope: !883)
!883 = distinct !DILexicalBlock(scope: !857, file: !127, line: 133, column: 7)
!884 = !DILocation(line: 133, column: 28, scope: !883)
!885 = !DILocation(line: 133, column: 50, scope: !883)
!886 = !DILocation(line: 133, column: 7, scope: !857)
!887 = !DILocation(line: 134, column: 12, scope: !883)
!888 = !DILocation(line: 134, column: 5, scope: !883)
!889 = !DILocation(line: 135, column: 1, scope: !857)
!890 = distinct !DISubprogram(name: "verror", scope: !134, file: !134, line: 251, type: !891, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !30, !30, !6, !142}
!893 = !{!894, !895, !896, !897}
!894 = !DILocalVariable(name: "status", arg: 1, scope: !890, file: !134, line: 251, type: !30)
!895 = !DILocalVariable(name: "errnum", arg: 2, scope: !890, file: !134, line: 251, type: !30)
!896 = !DILocalVariable(name: "message", arg: 3, scope: !890, file: !134, line: 251, type: !6)
!897 = !DILocalVariable(name: "args", arg: 4, scope: !890, file: !134, line: 251, type: !142)
!898 = !DILocation(line: 0, scope: !890)
!899 = !DILocation(line: 251, column: 1, scope: !890)
!900 = !DILocation(line: 261, column: 3, scope: !890)
!901 = !DILocation(line: 265, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !890, file: !134, line: 265, column: 7)
!903 = !DILocation(line: 265, column: 7, scope: !890)
!904 = !DILocation(line: 266, column: 5, scope: !902)
!905 = !DILocation(line: 272, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !134, line: 268, column: 5)
!907 = !DILocation(line: 276, column: 3, scope: !890)
!908 = !{i64 0, i64 8, !485, i64 8, i64 8, !485, i64 16, i64 8, !485, i64 24, i64 4, !565, i64 28, i64 4, !565}
!909 = !DILocation(line: 282, column: 1, scope: !890)
!910 = distinct !DISubprogram(name: "flush_stdout", scope: !134, file: !134, line: 163, type: !170, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !911)
!911 = !{!912}
!912 = !DILocalVariable(name: "stdout_fd", scope: !910, file: !134, line: 166, type: !30)
!913 = !DILocation(line: 0, scope: !910)
!914 = !DILocalVariable(name: "fd", arg: 1, scope: !915, file: !134, line: 145, type: !30)
!915 = distinct !DISubprogram(name: "is_open", scope: !134, file: !134, line: 145, type: !916, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !918)
!916 = !DISubroutineType(types: !917)
!917 = !{!30, !30}
!918 = !{!914}
!919 = !DILocation(line: 0, scope: !915, inlinedAt: !920)
!920 = distinct !DILocation(line: 182, column: 25, scope: !921)
!921 = distinct !DILexicalBlock(scope: !910, file: !134, line: 182, column: 7)
!922 = !DILocation(line: 157, column: 15, scope: !915, inlinedAt: !920)
!923 = !DILocation(line: 182, column: 25, scope: !921)
!924 = !DILocation(line: 182, column: 7, scope: !910)
!925 = !DILocation(line: 184, column: 5, scope: !921)
!926 = !DILocation(line: 185, column: 1, scope: !910)
!927 = distinct !DISubprogram(name: "error_tail", scope: !134, file: !134, line: 219, type: !891, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !928)
!928 = !{!929, !930, !931, !932}
!929 = !DILocalVariable(name: "status", arg: 1, scope: !927, file: !134, line: 219, type: !30)
!930 = !DILocalVariable(name: "errnum", arg: 2, scope: !927, file: !134, line: 219, type: !30)
!931 = !DILocalVariable(name: "message", arg: 3, scope: !927, file: !134, line: 219, type: !6)
!932 = !DILocalVariable(name: "args", arg: 4, scope: !927, file: !134, line: 219, type: !142)
!933 = !DILocation(line: 0, scope: !927)
!934 = !DILocation(line: 219, column: 1, scope: !927)
!935 = !DILocation(line: 229, column: 13, scope: !927)
!936 = !DILocation(line: 229, column: 3, scope: !927)
!937 = !DILocalVariable(name: "__stream", arg: 1, scope: !938, file: !939, line: 132, type: !942)
!938 = distinct !DISubprogram(name: "vfprintf", scope: !939, file: !939, line: 132, type: !940, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !977)
!939 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!940 = !DISubroutineType(types: !941)
!941 = !{!30, !942, !678, !144}
!942 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !946)
!946 = !{!947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !945, file: !61, line: 51, baseType: !30, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !945, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !945, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !945, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !945, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !945, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !945, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !945, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !945, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !945, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !945, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !945, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !945, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !945, file: !61, line: 70, baseType: !961, size: 64, offset: 832)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !945, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !945, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !945, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !945, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !945, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !945, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !945, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !945, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !945, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !945, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !945, file: !61, line: 93, baseType: !961, size: 64, offset: 1344)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !945, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !945, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !945, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !945, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!977 = !{!937, !978, !979}
!978 = !DILocalVariable(name: "__fmt", arg: 2, scope: !938, file: !939, line: 133, type: !678)
!979 = !DILocalVariable(name: "__ap", arg: 3, scope: !938, file: !939, line: 133, type: !144)
!980 = !DILocation(line: 0, scope: !938, inlinedAt: !981)
!981 = distinct !DILocation(line: 229, column: 3, scope: !927)
!982 = !DILocation(line: 135, column: 10, scope: !938, inlinedAt: !981)
!983 = !{!984, !986}
!984 = distinct !{!984, !985, !"vfprintf.inline: argument 0"}
!985 = distinct !{!985, !"vfprintf.inline"}
!986 = distinct !{!986, !985, !"vfprintf.inline: argument 1"}
!987 = !DILocation(line: 232, column: 3, scope: !927)
!988 = !DILocation(line: 233, column: 7, scope: !989)
!989 = distinct !DILexicalBlock(scope: !927, file: !134, line: 233, column: 7)
!990 = !DILocation(line: 233, column: 7, scope: !927)
!991 = !DILocalVariable(name: "errnum", arg: 1, scope: !992, file: !134, line: 188, type: !30)
!992 = distinct !DISubprogram(name: "print_errno_message", scope: !134, file: !134, line: 188, type: !475, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !993)
!993 = !{!991, !994, !995}
!994 = !DILocalVariable(name: "s", scope: !992, file: !134, line: 190, type: !6)
!995 = !DILocalVariable(name: "errbuf", scope: !992, file: !134, line: 193, type: !996)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !997)
!997 = !{!998}
!998 = !DISubrange(count: 1024)
!999 = !DILocation(line: 0, scope: !992, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 234, column: 5, scope: !989)
!1001 = !DILocation(line: 193, column: 3, scope: !992, inlinedAt: !1000)
!1002 = !DILocation(line: 193, column: 8, scope: !992, inlinedAt: !1000)
!1003 = !DILocation(line: 195, column: 7, scope: !992, inlinedAt: !1000)
!1004 = !DILocation(line: 207, column: 9, scope: !1005, inlinedAt: !1000)
!1005 = distinct !DILexicalBlock(scope: !992, file: !134, line: 207, column: 7)
!1006 = !DILocation(line: 207, column: 7, scope: !992, inlinedAt: !1000)
!1007 = !DILocation(line: 208, column: 9, scope: !1005, inlinedAt: !1000)
!1008 = !DILocation(line: 208, column: 5, scope: !1005, inlinedAt: !1000)
!1009 = !DILocation(line: 214, column: 3, scope: !992, inlinedAt: !1000)
!1010 = !DILocation(line: 216, column: 1, scope: !992, inlinedAt: !1000)
!1011 = !DILocation(line: 234, column: 5, scope: !989)
!1012 = !DILocation(line: 238, column: 3, scope: !927)
!1013 = !DILocalVariable(name: "__c", arg: 1, scope: !1014, file: !1015, line: 101, type: !30)
!1014 = distinct !DISubprogram(name: "putc_unlocked", scope: !1015, file: !1015, line: 101, type: !1016, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1018)
!1015 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!30, !30, !943}
!1018 = !{!1013, !1019}
!1019 = !DILocalVariable(name: "__stream", arg: 2, scope: !1014, file: !1015, line: 101, type: !943)
!1020 = !DILocation(line: 0, scope: !1014, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 238, column: 3, scope: !927)
!1022 = !DILocation(line: 103, column: 10, scope: !1014, inlinedAt: !1021)
!1023 = !{!1024, !486, i64 40}
!1024 = !{!"_IO_FILE", !566, i64 0, !486, i64 8, !486, i64 16, !486, i64 24, !486, i64 32, !486, i64 40, !486, i64 48, !486, i64 56, !486, i64 64, !486, i64 72, !486, i64 80, !486, i64 88, !486, i64 96, !486, i64 104, !566, i64 112, !566, i64 116, !1025, i64 120, !600, i64 128, !487, i64 130, !487, i64 131, !486, i64 136, !1025, i64 144, !486, i64 152, !486, i64 160, !486, i64 168, !486, i64 176, !1025, i64 184, !566, i64 192, !487, i64 196}
!1025 = !{!"long", !487, i64 0}
!1026 = !{!1024, !486, i64 48}
!1027 = !{!"branch_weights", i32 2000, i32 1}
!1028 = !DILocation(line: 240, column: 3, scope: !927)
!1029 = !DILocation(line: 241, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !927, file: !134, line: 241, column: 7)
!1031 = !DILocation(line: 241, column: 7, scope: !927)
!1032 = !DILocation(line: 242, column: 5, scope: !1030)
!1033 = !DILocation(line: 243, column: 1, scope: !927)
!1034 = !DISubprogram(name: "strerror_r", scope: !1035, file: !1035, line: 444, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!1035 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!65, !30, !65, !32}
!1038 = !DISubprogram(name: "fflush_unlocked", scope: !143, file: !143, line: 239, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!30, !943}
!1041 = !DISubprogram(name: "fcntl", scope: !1042, file: !1042, line: 149, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!1042 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!30, !30, !30, null}
!1045 = distinct !DISubprogram(name: "error", scope: !134, file: !134, line: 285, type: !1046, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !30, !30, !6, null}
!1048 = !{!1049, !1050, !1051, !1052}
!1049 = !DILocalVariable(name: "status", arg: 1, scope: !1045, file: !134, line: 285, type: !30)
!1050 = !DILocalVariable(name: "errnum", arg: 2, scope: !1045, file: !134, line: 285, type: !30)
!1051 = !DILocalVariable(name: "message", arg: 3, scope: !1045, file: !134, line: 285, type: !6)
!1052 = !DILocalVariable(name: "ap", scope: !1045, file: !134, line: 287, type: !142)
!1053 = !DILocation(line: 0, scope: !1045)
!1054 = !DILocation(line: 287, column: 3, scope: !1045)
!1055 = !DILocation(line: 287, column: 11, scope: !1045)
!1056 = !DILocation(line: 288, column: 3, scope: !1045)
!1057 = !DILocation(line: 289, column: 3, scope: !1045)
!1058 = !DILocation(line: 290, column: 3, scope: !1045)
!1059 = !DILocation(line: 291, column: 1, scope: !1045)
!1060 = !DILocation(line: 0, scope: !139)
!1061 = !DILocation(line: 298, column: 1, scope: !139)
!1062 = !DILocation(line: 302, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !139, file: !134, line: 302, column: 7)
!1064 = !DILocation(line: 302, column: 7, scope: !139)
!1065 = !DILocation(line: 307, column: 11, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !134, line: 307, column: 11)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !134, line: 303, column: 5)
!1068 = !DILocation(line: 307, column: 27, scope: !1066)
!1069 = !DILocation(line: 308, column: 11, scope: !1066)
!1070 = !DILocation(line: 308, column: 28, scope: !1066)
!1071 = !DILocation(line: 308, column: 25, scope: !1066)
!1072 = !DILocation(line: 309, column: 15, scope: !1066)
!1073 = !DILocation(line: 309, column: 33, scope: !1066)
!1074 = !DILocation(line: 310, column: 19, scope: !1066)
!1075 = !DILocation(line: 311, column: 22, scope: !1066)
!1076 = !DILocation(line: 311, column: 56, scope: !1066)
!1077 = !DILocation(line: 307, column: 11, scope: !1067)
!1078 = !DILocation(line: 316, column: 21, scope: !1067)
!1079 = !DILocation(line: 317, column: 23, scope: !1067)
!1080 = !DILocation(line: 318, column: 5, scope: !1067)
!1081 = !DILocation(line: 327, column: 3, scope: !139)
!1082 = !DILocation(line: 331, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !139, file: !134, line: 331, column: 7)
!1084 = !DILocation(line: 331, column: 7, scope: !139)
!1085 = !DILocation(line: 332, column: 5, scope: !1083)
!1086 = !DILocation(line: 338, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !134, line: 334, column: 5)
!1088 = !DILocation(line: 346, column: 3, scope: !139)
!1089 = !DILocation(line: 350, column: 3, scope: !139)
!1090 = !DILocation(line: 356, column: 1, scope: !139)
!1091 = distinct !DISubprogram(name: "error_at_line", scope: !134, file: !134, line: 359, type: !1092, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !1094)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !30, !30, !6, !14, !6, null}
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100}
!1095 = !DILocalVariable(name: "status", arg: 1, scope: !1091, file: !134, line: 359, type: !30)
!1096 = !DILocalVariable(name: "errnum", arg: 2, scope: !1091, file: !134, line: 359, type: !30)
!1097 = !DILocalVariable(name: "file_name", arg: 3, scope: !1091, file: !134, line: 359, type: !6)
!1098 = !DILocalVariable(name: "line_number", arg: 4, scope: !1091, file: !134, line: 360, type: !14)
!1099 = !DILocalVariable(name: "message", arg: 5, scope: !1091, file: !134, line: 360, type: !6)
!1100 = !DILocalVariable(name: "ap", scope: !1091, file: !134, line: 362, type: !142)
!1101 = !DILocation(line: 0, scope: !1091)
!1102 = !DILocation(line: 362, column: 3, scope: !1091)
!1103 = !DILocation(line: 362, column: 11, scope: !1091)
!1104 = !DILocation(line: 363, column: 3, scope: !1091)
!1105 = !DILocation(line: 364, column: 3, scope: !1091)
!1106 = !DILocation(line: 366, column: 3, scope: !1091)
!1107 = !DILocation(line: 367, column: 1, scope: !1091)
!1108 = distinct !DISubprogram(name: "getprogname", scope: !382, file: !382, line: 54, type: !1109, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !562)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!6}
!1111 = !DILocation(line: 58, column: 10, scope: !1108)
!1112 = !DILocation(line: 58, column: 3, scope: !1108)
!1113 = distinct !DISubprogram(name: "parse_long_options", scope: !175, file: !175, line: 45, type: !1114, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !1117)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !30, !693, !6, !6, !6, !1116, null}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1128}
!1118 = !DILocalVariable(name: "argc", arg: 1, scope: !1113, file: !175, line: 45, type: !30)
!1119 = !DILocalVariable(name: "argv", arg: 2, scope: !1113, file: !175, line: 46, type: !693)
!1120 = !DILocalVariable(name: "command_name", arg: 3, scope: !1113, file: !175, line: 47, type: !6)
!1121 = !DILocalVariable(name: "package", arg: 4, scope: !1113, file: !175, line: 48, type: !6)
!1122 = !DILocalVariable(name: "version", arg: 5, scope: !1113, file: !175, line: 49, type: !6)
!1123 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1113, file: !175, line: 50, type: !1116)
!1124 = !DILocalVariable(name: "saved_opterr", scope: !1113, file: !175, line: 53, type: !30)
!1125 = !DILocalVariable(name: "c", scope: !1126, file: !175, line: 60, type: !30)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !175, line: 59, column: 5)
!1127 = distinct !DILexicalBlock(scope: !1113, file: !175, line: 58, column: 7)
!1128 = !DILocalVariable(name: "authors", scope: !1129, file: !175, line: 71, type: !1133)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !175, line: 70, column: 15)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !175, line: 64, column: 13)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !175, line: 62, column: 9)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !175, line: 61, column: 11)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 52, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !145, line: 32, baseType: !1135)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1136, baseType: !1137)
!1136 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !149, size: 256, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1143}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1137, file: !1136, line: 71, baseType: !29, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1137, file: !1136, line: 71, baseType: !29, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1137, file: !1136, line: 71, baseType: !29, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1137, file: !1136, line: 71, baseType: !30, size: 32, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1137, file: !1136, line: 71, baseType: !30, size: 32, offset: 224)
!1144 = !DILocation(line: 0, scope: !1113)
!1145 = !DILocation(line: 53, column: 22, scope: !1113)
!1146 = !DILocation(line: 56, column: 10, scope: !1113)
!1147 = !DILocation(line: 58, column: 12, scope: !1127)
!1148 = !DILocation(line: 58, column: 7, scope: !1113)
!1149 = !DILocation(line: 60, column: 15, scope: !1126)
!1150 = !DILocation(line: 0, scope: !1126)
!1151 = !DILocation(line: 61, column: 11, scope: !1126)
!1152 = !DILocation(line: 66, column: 15, scope: !1130)
!1153 = !DILocation(line: 67, column: 15, scope: !1130)
!1154 = !DILocation(line: 71, column: 17, scope: !1129)
!1155 = !DILocation(line: 71, column: 25, scope: !1129)
!1156 = !DILocation(line: 72, column: 17, scope: !1129)
!1157 = !DILocation(line: 73, column: 33, scope: !1129)
!1158 = !DILocation(line: 73, column: 17, scope: !1129)
!1159 = !DILocation(line: 74, column: 17, scope: !1129)
!1160 = !DILocation(line: 85, column: 10, scope: !1113)
!1161 = !DILocation(line: 89, column: 10, scope: !1113)
!1162 = !DILocation(line: 90, column: 1, scope: !1113)
!1163 = !DISubprogram(name: "getopt_long", scope: !180, file: !180, line: 66, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!30, !30, !1166, !6, !1168, !185}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1169 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !175, file: !175, line: 98, type: !1170, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !1172)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !30, !693, !6, !6, !6, !44, !1116, null}
!1172 = !{!1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183}
!1173 = !DILocalVariable(name: "argc", arg: 1, scope: !1169, file: !175, line: 98, type: !30)
!1174 = !DILocalVariable(name: "argv", arg: 2, scope: !1169, file: !175, line: 99, type: !693)
!1175 = !DILocalVariable(name: "command_name", arg: 3, scope: !1169, file: !175, line: 100, type: !6)
!1176 = !DILocalVariable(name: "package", arg: 4, scope: !1169, file: !175, line: 101, type: !6)
!1177 = !DILocalVariable(name: "version", arg: 5, scope: !1169, file: !175, line: 102, type: !6)
!1178 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1169, file: !175, line: 103, type: !44)
!1179 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1169, file: !175, line: 104, type: !1116)
!1180 = !DILocalVariable(name: "saved_opterr", scope: !1169, file: !175, line: 107, type: !30)
!1181 = !DILocalVariable(name: "optstring", scope: !1169, file: !175, line: 112, type: !6)
!1182 = !DILocalVariable(name: "c", scope: !1169, file: !175, line: 114, type: !30)
!1183 = !DILocalVariable(name: "authors", scope: !1184, file: !175, line: 125, type: !1133)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !175, line: 124, column: 11)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !175, line: 118, column: 9)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !175, line: 116, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1169, file: !175, line: 115, column: 7)
!1188 = !DILocation(line: 0, scope: !1169)
!1189 = !DILocation(line: 107, column: 22, scope: !1169)
!1190 = !DILocation(line: 110, column: 10, scope: !1169)
!1191 = !DILocation(line: 112, column: 27, scope: !1169)
!1192 = !DILocation(line: 114, column: 11, scope: !1169)
!1193 = !DILocation(line: 115, column: 7, scope: !1169)
!1194 = !DILocation(line: 125, column: 13, scope: !1184)
!1195 = !DILocation(line: 125, column: 21, scope: !1184)
!1196 = !DILocation(line: 126, column: 13, scope: !1184)
!1197 = !DILocation(line: 127, column: 29, scope: !1184)
!1198 = !DILocation(line: 127, column: 13, scope: !1184)
!1199 = !DILocation(line: 128, column: 13, scope: !1184)
!1200 = !DILocation(line: 132, column: 26, scope: !1185)
!1201 = !DILocation(line: 133, column: 11, scope: !1185)
!1202 = !DILocation(line: 0, scope: !1185)
!1203 = !DILocation(line: 138, column: 10, scope: !1169)
!1204 = !DILocation(line: 139, column: 1, scope: !1169)
!1205 = distinct !DISubprogram(name: "set_program_name", scope: !192, file: !192, line: 37, type: !495, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1206)
!1206 = !{!1207, !1208, !1209}
!1207 = !DILocalVariable(name: "argv0", arg: 1, scope: !1205, file: !192, line: 37, type: !6)
!1208 = !DILocalVariable(name: "slash", scope: !1205, file: !192, line: 44, type: !6)
!1209 = !DILocalVariable(name: "base", scope: !1205, file: !192, line: 45, type: !6)
!1210 = !DILocation(line: 0, scope: !1205)
!1211 = !DILocation(line: 44, column: 23, scope: !1205)
!1212 = !DILocation(line: 45, column: 22, scope: !1205)
!1213 = !DILocation(line: 46, column: 17, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1205, file: !192, line: 46, column: 7)
!1215 = !DILocation(line: 46, column: 9, scope: !1214)
!1216 = !DILocation(line: 46, column: 25, scope: !1214)
!1217 = !DILocation(line: 46, column: 40, scope: !1214)
!1218 = !DILocalVariable(name: "__s1", arg: 1, scope: !1219, file: !520, line: 974, type: !688)
!1219 = distinct !DISubprogram(name: "memeq", scope: !520, file: !520, line: 974, type: !1220, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!44, !688, !688, !32}
!1222 = !{!1218, !1223, !1224}
!1223 = !DILocalVariable(name: "__s2", arg: 2, scope: !1219, file: !520, line: 974, type: !688)
!1224 = !DILocalVariable(name: "__n", arg: 3, scope: !1219, file: !520, line: 974, type: !32)
!1225 = !DILocation(line: 0, scope: !1219, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 46, column: 28, scope: !1214)
!1227 = !DILocation(line: 976, column: 11, scope: !1219, inlinedAt: !1226)
!1228 = !DILocation(line: 976, column: 10, scope: !1219, inlinedAt: !1226)
!1229 = !DILocation(line: 46, column: 7, scope: !1205)
!1230 = !DILocation(line: 49, column: 11, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !192, line: 49, column: 11)
!1232 = distinct !DILexicalBlock(scope: !1214, file: !192, line: 47, column: 5)
!1233 = !DILocation(line: 49, column: 36, scope: !1231)
!1234 = !DILocation(line: 49, column: 11, scope: !1232)
!1235 = !DILocation(line: 65, column: 16, scope: !1205)
!1236 = !DILocation(line: 71, column: 27, scope: !1205)
!1237 = !DILocation(line: 74, column: 33, scope: !1205)
!1238 = !DILocation(line: 76, column: 1, scope: !1205)
!1239 = !DILocation(line: 0, scope: !197)
!1240 = !DILocation(line: 40, column: 29, scope: !197)
!1241 = !DILocation(line: 41, column: 19, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !197, file: !198, line: 41, column: 7)
!1243 = !DILocation(line: 41, column: 7, scope: !197)
!1244 = !DILocation(line: 47, column: 3, scope: !197)
!1245 = !DILocation(line: 48, column: 3, scope: !197)
!1246 = !DILocation(line: 48, column: 13, scope: !197)
!1247 = !DILocalVariable(name: "ps", arg: 1, scope: !1248, file: !1249, line: 1135, type: !1252)
!1248 = distinct !DISubprogram(name: "mbszero", scope: !1249, file: !1249, line: 1135, type: !1250, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1253)
!1249 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!1253 = !{!1247}
!1254 = !DILocation(line: 0, scope: !1248, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 48, column: 18, scope: !197)
!1256 = !DILocalVariable(name: "__dest", arg: 1, scope: !1257, file: !1258, line: 57, type: !29)
!1257 = distinct !DISubprogram(name: "memset", scope: !1258, file: !1258, line: 57, type: !1259, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1261)
!1258 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!29, !29, !30, !32}
!1261 = !{!1256, !1262, !1263}
!1262 = !DILocalVariable(name: "__ch", arg: 2, scope: !1257, file: !1258, line: 57, type: !30)
!1263 = !DILocalVariable(name: "__len", arg: 3, scope: !1257, file: !1258, line: 57, type: !32)
!1264 = !DILocation(line: 0, scope: !1257, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 1137, column: 3, scope: !1248, inlinedAt: !1255)
!1266 = !DILocation(line: 59, column: 10, scope: !1257, inlinedAt: !1265)
!1267 = !DILocation(line: 49, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !197, file: !198, line: 49, column: 7)
!1269 = !DILocation(line: 49, column: 39, scope: !1268)
!1270 = !DILocation(line: 49, column: 44, scope: !1268)
!1271 = !DILocation(line: 54, column: 1, scope: !197)
!1272 = !DISubprogram(name: "mbrtoc32", scope: !209, file: !209, line: 57, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!32, !1275, !678, !32, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1252)
!1278 = distinct !DISubprogram(name: "clone_quoting_options", scope: !234, file: !234, line: 113, type: !1279, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1282)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!1281, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1282 = !{!1283, !1284, !1285}
!1283 = !DILocalVariable(name: "o", arg: 1, scope: !1278, file: !234, line: 113, type: !1281)
!1284 = !DILocalVariable(name: "saved_errno", scope: !1278, file: !234, line: 115, type: !30)
!1285 = !DILocalVariable(name: "p", scope: !1278, file: !234, line: 116, type: !1281)
!1286 = !DILocation(line: 0, scope: !1278)
!1287 = !DILocation(line: 115, column: 21, scope: !1278)
!1288 = !DILocation(line: 116, column: 40, scope: !1278)
!1289 = !DILocation(line: 116, column: 31, scope: !1278)
!1290 = !DILocation(line: 118, column: 9, scope: !1278)
!1291 = !DILocation(line: 119, column: 3, scope: !1278)
!1292 = distinct !DISubprogram(name: "get_quoting_style", scope: !234, file: !234, line: 124, type: !1293, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1297)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!236, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "o", arg: 1, scope: !1292, file: !234, line: 124, type: !1295)
!1299 = !DILocation(line: 0, scope: !1292)
!1300 = !DILocation(line: 126, column: 11, scope: !1292)
!1301 = !DILocation(line: 126, column: 46, scope: !1292)
!1302 = !{!1303, !487, i64 0}
!1303 = !{!"quoting_options", !487, i64 0, !566, i64 4, !487, i64 8, !486, i64 40, !486, i64 48}
!1304 = !DILocation(line: 126, column: 3, scope: !1292)
!1305 = distinct !DISubprogram(name: "set_quoting_style", scope: !234, file: !234, line: 132, type: !1306, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !1281, !236}
!1308 = !{!1309, !1310}
!1309 = !DILocalVariable(name: "o", arg: 1, scope: !1305, file: !234, line: 132, type: !1281)
!1310 = !DILocalVariable(name: "s", arg: 2, scope: !1305, file: !234, line: 132, type: !236)
!1311 = !DILocation(line: 0, scope: !1305)
!1312 = !DILocation(line: 134, column: 4, scope: !1305)
!1313 = !DILocation(line: 134, column: 39, scope: !1305)
!1314 = !DILocation(line: 134, column: 45, scope: !1305)
!1315 = !DILocation(line: 135, column: 1, scope: !1305)
!1316 = distinct !DISubprogram(name: "set_char_quoting", scope: !234, file: !234, line: 143, type: !1317, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!30, !1281, !8, !30}
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1326, !1327}
!1320 = !DILocalVariable(name: "o", arg: 1, scope: !1316, file: !234, line: 143, type: !1281)
!1321 = !DILocalVariable(name: "c", arg: 2, scope: !1316, file: !234, line: 143, type: !8)
!1322 = !DILocalVariable(name: "i", arg: 3, scope: !1316, file: !234, line: 143, type: !30)
!1323 = !DILocalVariable(name: "uc", scope: !1316, file: !234, line: 145, type: !35)
!1324 = !DILocalVariable(name: "p", scope: !1316, file: !234, line: 146, type: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1326 = !DILocalVariable(name: "shift", scope: !1316, file: !234, line: 148, type: !30)
!1327 = !DILocalVariable(name: "r", scope: !1316, file: !234, line: 149, type: !14)
!1328 = !DILocation(line: 0, scope: !1316)
!1329 = !DILocation(line: 147, column: 6, scope: !1316)
!1330 = !DILocation(line: 147, column: 62, scope: !1316)
!1331 = !DILocation(line: 147, column: 57, scope: !1316)
!1332 = !DILocation(line: 148, column: 15, scope: !1316)
!1333 = !DILocation(line: 149, column: 21, scope: !1316)
!1334 = !DILocation(line: 149, column: 24, scope: !1316)
!1335 = !DILocation(line: 149, column: 34, scope: !1316)
!1336 = !DILocation(line: 150, column: 13, scope: !1316)
!1337 = !DILocation(line: 150, column: 19, scope: !1316)
!1338 = !DILocation(line: 150, column: 24, scope: !1316)
!1339 = !DILocation(line: 150, column: 6, scope: !1316)
!1340 = !DILocation(line: 151, column: 3, scope: !1316)
!1341 = distinct !DISubprogram(name: "set_quoting_flags", scope: !234, file: !234, line: 159, type: !1342, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!30, !1281, !30}
!1344 = !{!1345, !1346, !1347}
!1345 = !DILocalVariable(name: "o", arg: 1, scope: !1341, file: !234, line: 159, type: !1281)
!1346 = !DILocalVariable(name: "i", arg: 2, scope: !1341, file: !234, line: 159, type: !30)
!1347 = !DILocalVariable(name: "r", scope: !1341, file: !234, line: 163, type: !30)
!1348 = !DILocation(line: 0, scope: !1341)
!1349 = !DILocation(line: 161, column: 8, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1341, file: !234, line: 161, column: 7)
!1351 = !DILocation(line: 161, column: 7, scope: !1341)
!1352 = !DILocation(line: 163, column: 14, scope: !1341)
!1353 = !{!1303, !566, i64 4}
!1354 = !DILocation(line: 164, column: 12, scope: !1341)
!1355 = !DILocation(line: 165, column: 3, scope: !1341)
!1356 = distinct !DISubprogram(name: "set_custom_quoting", scope: !234, file: !234, line: 169, type: !1357, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1281, !6, !6}
!1359 = !{!1360, !1361, !1362}
!1360 = !DILocalVariable(name: "o", arg: 1, scope: !1356, file: !234, line: 169, type: !1281)
!1361 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1356, file: !234, line: 170, type: !6)
!1362 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1356, file: !234, line: 170, type: !6)
!1363 = !DILocation(line: 0, scope: !1356)
!1364 = !DILocation(line: 172, column: 8, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1356, file: !234, line: 172, column: 7)
!1366 = !DILocation(line: 172, column: 7, scope: !1356)
!1367 = !DILocation(line: 174, column: 6, scope: !1356)
!1368 = !DILocation(line: 174, column: 12, scope: !1356)
!1369 = !DILocation(line: 175, column: 8, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1356, file: !234, line: 175, column: 7)
!1371 = !DILocation(line: 175, column: 19, scope: !1370)
!1372 = !DILocation(line: 176, column: 5, scope: !1370)
!1373 = !DILocation(line: 177, column: 6, scope: !1356)
!1374 = !DILocation(line: 177, column: 17, scope: !1356)
!1375 = !{!1303, !486, i64 40}
!1376 = !DILocation(line: 178, column: 6, scope: !1356)
!1377 = !DILocation(line: 178, column: 18, scope: !1356)
!1378 = !{!1303, !486, i64 48}
!1379 = !DILocation(line: 179, column: 1, scope: !1356)
!1380 = distinct !DISubprogram(name: "quotearg_buffer", scope: !234, file: !234, line: 774, type: !1381, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!32, !65, !32, !6, !32, !1295}
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391}
!1384 = !DILocalVariable(name: "buffer", arg: 1, scope: !1380, file: !234, line: 774, type: !65)
!1385 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1380, file: !234, line: 774, type: !32)
!1386 = !DILocalVariable(name: "arg", arg: 3, scope: !1380, file: !234, line: 775, type: !6)
!1387 = !DILocalVariable(name: "argsize", arg: 4, scope: !1380, file: !234, line: 775, type: !32)
!1388 = !DILocalVariable(name: "o", arg: 5, scope: !1380, file: !234, line: 776, type: !1295)
!1389 = !DILocalVariable(name: "p", scope: !1380, file: !234, line: 778, type: !1295)
!1390 = !DILocalVariable(name: "saved_errno", scope: !1380, file: !234, line: 779, type: !30)
!1391 = !DILocalVariable(name: "r", scope: !1380, file: !234, line: 780, type: !32)
!1392 = !DILocation(line: 0, scope: !1380)
!1393 = !DILocation(line: 778, column: 37, scope: !1380)
!1394 = !DILocation(line: 779, column: 21, scope: !1380)
!1395 = !DILocation(line: 781, column: 43, scope: !1380)
!1396 = !DILocation(line: 781, column: 53, scope: !1380)
!1397 = !DILocation(line: 781, column: 60, scope: !1380)
!1398 = !DILocation(line: 782, column: 43, scope: !1380)
!1399 = !DILocation(line: 782, column: 58, scope: !1380)
!1400 = !DILocation(line: 780, column: 14, scope: !1380)
!1401 = !DILocation(line: 783, column: 9, scope: !1380)
!1402 = !DILocation(line: 784, column: 3, scope: !1380)
!1403 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !234, file: !234, line: 251, type: !1404, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1408)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!32, !65, !32, !6, !32, !236, !30, !1406, !6, !6}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1433, !1435, !1438, !1439, !1440, !1441, !1444, !1445, !1448, !1452, !1453, !1461, !1464, !1465, !1467, !1468, !1469, !1470}
!1409 = !DILocalVariable(name: "buffer", arg: 1, scope: !1403, file: !234, line: 251, type: !65)
!1410 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1403, file: !234, line: 251, type: !32)
!1411 = !DILocalVariable(name: "arg", arg: 3, scope: !1403, file: !234, line: 252, type: !6)
!1412 = !DILocalVariable(name: "argsize", arg: 4, scope: !1403, file: !234, line: 252, type: !32)
!1413 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1403, file: !234, line: 253, type: !236)
!1414 = !DILocalVariable(name: "flags", arg: 6, scope: !1403, file: !234, line: 253, type: !30)
!1415 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1403, file: !234, line: 254, type: !1406)
!1416 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1403, file: !234, line: 255, type: !6)
!1417 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1403, file: !234, line: 256, type: !6)
!1418 = !DILocalVariable(name: "unibyte_locale", scope: !1403, file: !234, line: 258, type: !44)
!1419 = !DILocalVariable(name: "len", scope: !1403, file: !234, line: 260, type: !32)
!1420 = !DILocalVariable(name: "orig_buffersize", scope: !1403, file: !234, line: 261, type: !32)
!1421 = !DILocalVariable(name: "quote_string", scope: !1403, file: !234, line: 262, type: !6)
!1422 = !DILocalVariable(name: "quote_string_len", scope: !1403, file: !234, line: 263, type: !32)
!1423 = !DILocalVariable(name: "backslash_escapes", scope: !1403, file: !234, line: 264, type: !44)
!1424 = !DILocalVariable(name: "elide_outer_quotes", scope: !1403, file: !234, line: 265, type: !44)
!1425 = !DILocalVariable(name: "encountered_single_quote", scope: !1403, file: !234, line: 266, type: !44)
!1426 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1403, file: !234, line: 267, type: !44)
!1427 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1403, file: !234, line: 309, type: !44)
!1428 = !DILocalVariable(name: "lq", scope: !1429, file: !234, line: 361, type: !6)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !234, line: 361, column: 11)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !234, line: 360, column: 13)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !234, line: 333, column: 7)
!1432 = distinct !DILexicalBlock(scope: !1403, file: !234, line: 312, column: 5)
!1433 = !DILocalVariable(name: "i", scope: !1434, file: !234, line: 395, type: !32)
!1434 = distinct !DILexicalBlock(scope: !1403, file: !234, line: 395, column: 3)
!1435 = !DILocalVariable(name: "is_right_quote", scope: !1436, file: !234, line: 397, type: !44)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !234, line: 396, column: 5)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !234, line: 395, column: 3)
!1438 = !DILocalVariable(name: "escaping", scope: !1436, file: !234, line: 398, type: !44)
!1439 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1436, file: !234, line: 399, type: !44)
!1440 = !DILocalVariable(name: "c", scope: !1436, file: !234, line: 417, type: !35)
!1441 = !DILocalVariable(name: "m", scope: !1442, file: !234, line: 598, type: !32)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !234, line: 596, column: 11)
!1443 = distinct !DILexicalBlock(scope: !1436, file: !234, line: 419, column: 9)
!1444 = !DILocalVariable(name: "printable", scope: !1442, file: !234, line: 600, type: !44)
!1445 = !DILocalVariable(name: "mbs", scope: !1446, file: !234, line: 609, type: !293)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !234, line: 608, column: 15)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !234, line: 602, column: 17)
!1448 = !DILocalVariable(name: "w", scope: !1449, file: !234, line: 618, type: !208)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !234, line: 617, column: 19)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !234, line: 616, column: 17)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !234, line: 616, column: 17)
!1452 = !DILocalVariable(name: "bytes", scope: !1449, file: !234, line: 619, type: !32)
!1453 = !DILocalVariable(name: "j", scope: !1454, file: !234, line: 648, type: !32)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !234, line: 648, column: 29)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !234, line: 647, column: 27)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !234, line: 645, column: 29)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !234, line: 636, column: 23)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !234, line: 628, column: 30)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !234, line: 623, column: 30)
!1460 = distinct !DILexicalBlock(scope: !1449, file: !234, line: 621, column: 25)
!1461 = !DILocalVariable(name: "ilim", scope: !1462, file: !234, line: 674, type: !32)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !234, line: 671, column: 15)
!1463 = distinct !DILexicalBlock(scope: !1442, file: !234, line: 670, column: 17)
!1464 = !DILabel(scope: !1403, name: "process_input", file: !234, line: 308)
!1465 = !DILabel(scope: !1466, name: "c_and_shell_escape", file: !234, line: 502)
!1466 = distinct !DILexicalBlock(scope: !1443, file: !234, line: 478, column: 9)
!1467 = !DILabel(scope: !1466, name: "c_escape", file: !234, line: 507)
!1468 = !DILabel(scope: !1436, name: "store_escape", file: !234, line: 709)
!1469 = !DILabel(scope: !1436, name: "store_c", file: !234, line: 712)
!1470 = !DILabel(scope: !1403, name: "force_outer_quoting_style", file: !234, line: 753)
!1471 = !DILocation(line: 0, scope: !1403)
!1472 = !DILocation(line: 258, column: 25, scope: !1403)
!1473 = !DILocation(line: 258, column: 36, scope: !1403)
!1474 = !DILocation(line: 267, column: 3, scope: !1403)
!1475 = !DILocation(line: 261, column: 10, scope: !1403)
!1476 = !DILocation(line: 262, column: 15, scope: !1403)
!1477 = !DILocation(line: 263, column: 10, scope: !1403)
!1478 = !DILocation(line: 308, column: 2, scope: !1403)
!1479 = !DILocation(line: 311, column: 3, scope: !1403)
!1480 = !DILocation(line: 318, column: 11, scope: !1432)
!1481 = !DILocation(line: 319, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !234, line: 319, column: 9)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !234, line: 319, column: 9)
!1484 = distinct !DILexicalBlock(scope: !1432, file: !234, line: 318, column: 11)
!1485 = !DILocation(line: 319, column: 9, scope: !1483)
!1486 = !DILocation(line: 0, scope: !284, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 357, column: 26, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !234, line: 335, column: 11)
!1489 = distinct !DILexicalBlock(scope: !1431, file: !234, line: 334, column: 13)
!1490 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1487)
!1491 = !DILocation(line: 201, column: 19, scope: !1492, inlinedAt: !1487)
!1492 = distinct !DILexicalBlock(scope: !284, file: !234, line: 201, column: 7)
!1493 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1487)
!1494 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1487)
!1495 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1487)
!1496 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1487)
!1497 = !DILocalVariable(name: "ps", arg: 1, scope: !1498, file: !1249, line: 1135, type: !1501)
!1498 = distinct !DISubprogram(name: "mbszero", scope: !1249, file: !1249, line: 1135, type: !1499, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1502)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1502 = !{!1497}
!1503 = !DILocation(line: 0, scope: !1498, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1487)
!1505 = !DILocalVariable(name: "__dest", arg: 1, scope: !1506, file: !1258, line: 57, type: !29)
!1506 = distinct !DISubprogram(name: "memset", scope: !1258, file: !1258, line: 57, type: !1259, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1507)
!1507 = !{!1505, !1508, !1509}
!1508 = !DILocalVariable(name: "__ch", arg: 2, scope: !1506, file: !1258, line: 57, type: !30)
!1509 = !DILocalVariable(name: "__len", arg: 3, scope: !1506, file: !1258, line: 57, type: !32)
!1510 = !DILocation(line: 0, scope: !1506, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 1137, column: 3, scope: !1498, inlinedAt: !1504)
!1512 = !DILocation(line: 59, column: 10, scope: !1506, inlinedAt: !1511)
!1513 = !DILocation(line: 231, column: 7, scope: !1514, inlinedAt: !1487)
!1514 = distinct !DILexicalBlock(scope: !284, file: !234, line: 231, column: 7)
!1515 = !DILocation(line: 231, column: 40, scope: !1514, inlinedAt: !1487)
!1516 = !DILocation(line: 231, column: 45, scope: !1514, inlinedAt: !1487)
!1517 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1487)
!1518 = !DILocation(line: 0, scope: !284, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 358, column: 27, scope: !1488)
!1520 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1519)
!1521 = !DILocation(line: 201, column: 19, scope: !1492, inlinedAt: !1519)
!1522 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1519)
!1523 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1519)
!1524 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1519)
!1525 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1519)
!1526 = !DILocation(line: 0, scope: !1498, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1519)
!1528 = !DILocation(line: 0, scope: !1506, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 1137, column: 3, scope: !1498, inlinedAt: !1527)
!1530 = !DILocation(line: 59, column: 10, scope: !1506, inlinedAt: !1529)
!1531 = !DILocation(line: 231, column: 7, scope: !1514, inlinedAt: !1519)
!1532 = !DILocation(line: 231, column: 40, scope: !1514, inlinedAt: !1519)
!1533 = !DILocation(line: 231, column: 45, scope: !1514, inlinedAt: !1519)
!1534 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1519)
!1535 = !DILocation(line: 360, column: 13, scope: !1431)
!1536 = !DILocation(line: 0, scope: !1429)
!1537 = !DILocation(line: 361, column: 45, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1429, file: !234, line: 361, column: 11)
!1539 = !DILocation(line: 361, column: 11, scope: !1429)
!1540 = !DILocation(line: 362, column: 13, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !234, line: 362, column: 13)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !234, line: 362, column: 13)
!1543 = !DILocation(line: 362, column: 13, scope: !1542)
!1544 = !DILocation(line: 361, column: 52, scope: !1538)
!1545 = distinct !{!1545, !1539, !1546, !536}
!1546 = !DILocation(line: 362, column: 13, scope: !1429)
!1547 = !DILocation(line: 260, column: 10, scope: !1403)
!1548 = !DILocation(line: 365, column: 28, scope: !1431)
!1549 = !DILocation(line: 367, column: 7, scope: !1432)
!1550 = !DILocation(line: 370, column: 7, scope: !1432)
!1551 = !DILocation(line: 376, column: 11, scope: !1432)
!1552 = !DILocation(line: 381, column: 11, scope: !1432)
!1553 = !DILocation(line: 382, column: 9, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !234, line: 382, column: 9)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !234, line: 382, column: 9)
!1556 = distinct !DILexicalBlock(scope: !1432, file: !234, line: 381, column: 11)
!1557 = !DILocation(line: 382, column: 9, scope: !1555)
!1558 = !DILocation(line: 389, column: 7, scope: !1432)
!1559 = !DILocation(line: 392, column: 7, scope: !1432)
!1560 = !DILocation(line: 0, scope: !1434)
!1561 = !DILocation(line: 395, column: 8, scope: !1434)
!1562 = !DILocation(line: 395, column: 34, scope: !1437)
!1563 = !DILocation(line: 395, column: 26, scope: !1437)
!1564 = !DILocation(line: 395, column: 48, scope: !1437)
!1565 = !DILocation(line: 395, column: 55, scope: !1437)
!1566 = !DILocation(line: 395, column: 3, scope: !1434)
!1567 = !DILocation(line: 395, column: 67, scope: !1437)
!1568 = !DILocation(line: 0, scope: !1436)
!1569 = !DILocation(line: 402, column: 11, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1436, file: !234, line: 401, column: 11)
!1571 = !DILocation(line: 404, column: 17, scope: !1570)
!1572 = !DILocation(line: 405, column: 39, scope: !1570)
!1573 = !DILocation(line: 409, column: 32, scope: !1570)
!1574 = !DILocation(line: 405, column: 19, scope: !1570)
!1575 = !DILocation(line: 405, column: 15, scope: !1570)
!1576 = !DILocation(line: 410, column: 11, scope: !1570)
!1577 = !DILocation(line: 410, column: 25, scope: !1570)
!1578 = !DILocalVariable(name: "__s1", arg: 1, scope: !1579, file: !520, line: 974, type: !688)
!1579 = distinct !DISubprogram(name: "memeq", scope: !520, file: !520, line: 974, type: !1220, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1580)
!1580 = !{!1578, !1581, !1582}
!1581 = !DILocalVariable(name: "__s2", arg: 2, scope: !1579, file: !520, line: 974, type: !688)
!1582 = !DILocalVariable(name: "__n", arg: 3, scope: !1579, file: !520, line: 974, type: !32)
!1583 = !DILocation(line: 0, scope: !1579, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 410, column: 14, scope: !1570)
!1585 = !DILocation(line: 976, column: 11, scope: !1579, inlinedAt: !1584)
!1586 = !DILocation(line: 976, column: 10, scope: !1579, inlinedAt: !1584)
!1587 = !DILocation(line: 401, column: 11, scope: !1436)
!1588 = !DILocation(line: 417, column: 25, scope: !1436)
!1589 = !DILocation(line: 418, column: 7, scope: !1436)
!1590 = !DILocation(line: 421, column: 15, scope: !1443)
!1591 = !DILocation(line: 423, column: 15, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !234, line: 423, column: 15)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !234, line: 422, column: 13)
!1594 = distinct !DILexicalBlock(scope: !1443, file: !234, line: 421, column: 15)
!1595 = !DILocation(line: 423, column: 15, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !234, line: 423, column: 15)
!1597 = !DILocation(line: 423, column: 15, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !234, line: 423, column: 15)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !234, line: 423, column: 15)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !234, line: 423, column: 15)
!1601 = !DILocation(line: 423, column: 15, scope: !1599)
!1602 = !DILocation(line: 423, column: 15, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !234, line: 423, column: 15)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !234, line: 423, column: 15)
!1605 = !DILocation(line: 423, column: 15, scope: !1604)
!1606 = !DILocation(line: 423, column: 15, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !234, line: 423, column: 15)
!1608 = distinct !DILexicalBlock(scope: !1600, file: !234, line: 423, column: 15)
!1609 = !DILocation(line: 423, column: 15, scope: !1608)
!1610 = !DILocation(line: 423, column: 15, scope: !1600)
!1611 = !DILocation(line: 423, column: 15, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !234, line: 423, column: 15)
!1613 = distinct !DILexicalBlock(scope: !1592, file: !234, line: 423, column: 15)
!1614 = !DILocation(line: 423, column: 15, scope: !1613)
!1615 = !DILocation(line: 431, column: 19, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1593, file: !234, line: 430, column: 19)
!1617 = !DILocation(line: 431, column: 24, scope: !1616)
!1618 = !DILocation(line: 431, column: 28, scope: !1616)
!1619 = !DILocation(line: 431, column: 38, scope: !1616)
!1620 = !DILocation(line: 431, column: 48, scope: !1616)
!1621 = !DILocation(line: 431, column: 59, scope: !1616)
!1622 = !DILocation(line: 433, column: 19, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !234, line: 433, column: 19)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !234, line: 433, column: 19)
!1625 = distinct !DILexicalBlock(scope: !1616, file: !234, line: 432, column: 17)
!1626 = !DILocation(line: 433, column: 19, scope: !1624)
!1627 = !DILocation(line: 434, column: 19, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !234, line: 434, column: 19)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !234, line: 434, column: 19)
!1630 = !DILocation(line: 434, column: 19, scope: !1629)
!1631 = !DILocation(line: 435, column: 17, scope: !1625)
!1632 = !DILocation(line: 442, column: 20, scope: !1594)
!1633 = !DILocation(line: 447, column: 11, scope: !1443)
!1634 = !DILocation(line: 450, column: 19, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1443, file: !234, line: 448, column: 13)
!1636 = !DILocation(line: 456, column: 19, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1635, file: !234, line: 455, column: 19)
!1638 = !DILocation(line: 456, column: 24, scope: !1637)
!1639 = !DILocation(line: 456, column: 28, scope: !1637)
!1640 = !DILocation(line: 456, column: 38, scope: !1637)
!1641 = !DILocation(line: 456, column: 47, scope: !1637)
!1642 = !DILocation(line: 456, column: 41, scope: !1637)
!1643 = !DILocation(line: 456, column: 52, scope: !1637)
!1644 = !DILocation(line: 455, column: 19, scope: !1635)
!1645 = !DILocation(line: 457, column: 25, scope: !1637)
!1646 = !DILocation(line: 457, column: 17, scope: !1637)
!1647 = !DILocation(line: 464, column: 25, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1637, file: !234, line: 458, column: 19)
!1649 = !DILocation(line: 468, column: 21, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !234, line: 468, column: 21)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !234, line: 468, column: 21)
!1652 = !DILocation(line: 468, column: 21, scope: !1651)
!1653 = !DILocation(line: 469, column: 21, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !234, line: 469, column: 21)
!1655 = distinct !DILexicalBlock(scope: !1648, file: !234, line: 469, column: 21)
!1656 = !DILocation(line: 469, column: 21, scope: !1655)
!1657 = !DILocation(line: 470, column: 21, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !234, line: 470, column: 21)
!1659 = distinct !DILexicalBlock(scope: !1648, file: !234, line: 470, column: 21)
!1660 = !DILocation(line: 470, column: 21, scope: !1659)
!1661 = !DILocation(line: 471, column: 21, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !234, line: 471, column: 21)
!1663 = distinct !DILexicalBlock(scope: !1648, file: !234, line: 471, column: 21)
!1664 = !DILocation(line: 471, column: 21, scope: !1663)
!1665 = !DILocation(line: 472, column: 21, scope: !1648)
!1666 = !DILocation(line: 482, column: 33, scope: !1466)
!1667 = !DILocation(line: 483, column: 33, scope: !1466)
!1668 = !DILocation(line: 485, column: 33, scope: !1466)
!1669 = !DILocation(line: 486, column: 33, scope: !1466)
!1670 = !DILocation(line: 487, column: 33, scope: !1466)
!1671 = !DILocation(line: 490, column: 17, scope: !1466)
!1672 = !DILocation(line: 492, column: 21, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !234, line: 491, column: 15)
!1674 = distinct !DILexicalBlock(scope: !1466, file: !234, line: 490, column: 17)
!1675 = !DILocation(line: 499, column: 35, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1466, file: !234, line: 499, column: 17)
!1677 = !DILocation(line: 499, column: 57, scope: !1676)
!1678 = !DILocation(line: 0, scope: !1466)
!1679 = !DILocation(line: 502, column: 11, scope: !1466)
!1680 = !DILocation(line: 504, column: 17, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1466, file: !234, line: 503, column: 17)
!1682 = !DILocation(line: 507, column: 11, scope: !1466)
!1683 = !DILocation(line: 508, column: 17, scope: !1466)
!1684 = !DILocation(line: 517, column: 15, scope: !1443)
!1685 = !DILocation(line: 517, column: 40, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1443, file: !234, line: 517, column: 15)
!1687 = !DILocation(line: 517, column: 47, scope: !1686)
!1688 = !DILocation(line: 517, column: 18, scope: !1686)
!1689 = !DILocation(line: 521, column: 17, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1443, file: !234, line: 521, column: 15)
!1691 = !DILocation(line: 521, column: 15, scope: !1443)
!1692 = !DILocation(line: 525, column: 11, scope: !1443)
!1693 = !DILocation(line: 537, column: 15, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1443, file: !234, line: 536, column: 15)
!1695 = !DILocation(line: 536, column: 15, scope: !1443)
!1696 = !DILocation(line: 544, column: 15, scope: !1443)
!1697 = !DILocation(line: 546, column: 19, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !234, line: 545, column: 13)
!1699 = distinct !DILexicalBlock(scope: !1443, file: !234, line: 544, column: 15)
!1700 = !DILocation(line: 549, column: 19, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !234, line: 549, column: 19)
!1702 = !DILocation(line: 549, column: 30, scope: !1701)
!1703 = !DILocation(line: 558, column: 15, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !234, line: 558, column: 15)
!1705 = distinct !DILexicalBlock(scope: !1698, file: !234, line: 558, column: 15)
!1706 = !DILocation(line: 558, column: 15, scope: !1705)
!1707 = !DILocation(line: 559, column: 15, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !234, line: 559, column: 15)
!1709 = distinct !DILexicalBlock(scope: !1698, file: !234, line: 559, column: 15)
!1710 = !DILocation(line: 559, column: 15, scope: !1709)
!1711 = !DILocation(line: 560, column: 15, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !234, line: 560, column: 15)
!1713 = distinct !DILexicalBlock(scope: !1698, file: !234, line: 560, column: 15)
!1714 = !DILocation(line: 560, column: 15, scope: !1713)
!1715 = !DILocation(line: 562, column: 13, scope: !1698)
!1716 = !DILocation(line: 602, column: 17, scope: !1442)
!1717 = !DILocation(line: 0, scope: !1442)
!1718 = !DILocation(line: 605, column: 29, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1447, file: !234, line: 603, column: 15)
!1720 = !DILocation(line: 605, column: 41, scope: !1719)
!1721 = !DILocation(line: 670, column: 23, scope: !1463)
!1722 = !DILocation(line: 609, column: 17, scope: !1446)
!1723 = !DILocation(line: 609, column: 27, scope: !1446)
!1724 = !DILocation(line: 0, scope: !1498, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 609, column: 32, scope: !1446)
!1726 = !DILocation(line: 0, scope: !1506, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 1137, column: 3, scope: !1498, inlinedAt: !1725)
!1728 = !DILocation(line: 59, column: 10, scope: !1506, inlinedAt: !1727)
!1729 = !DILocation(line: 613, column: 29, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1446, file: !234, line: 613, column: 21)
!1731 = !DILocation(line: 613, column: 21, scope: !1446)
!1732 = !DILocation(line: 614, column: 29, scope: !1730)
!1733 = !DILocation(line: 614, column: 19, scope: !1730)
!1734 = !DILocation(line: 618, column: 21, scope: !1449)
!1735 = !DILocation(line: 620, column: 54, scope: !1449)
!1736 = !DILocation(line: 0, scope: !1449)
!1737 = !DILocation(line: 619, column: 36, scope: !1449)
!1738 = !DILocation(line: 621, column: 25, scope: !1449)
!1739 = !DILocation(line: 631, column: 38, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1458, file: !234, line: 629, column: 23)
!1741 = !DILocation(line: 631, column: 48, scope: !1740)
!1742 = !DILocation(line: 665, column: 19, scope: !1450)
!1743 = !DILocation(line: 666, column: 15, scope: !1447)
!1744 = !DILocation(line: 626, column: 25, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1459, file: !234, line: 624, column: 23)
!1746 = !DILocation(line: 631, column: 51, scope: !1740)
!1747 = !DILocation(line: 631, column: 25, scope: !1740)
!1748 = !DILocation(line: 632, column: 28, scope: !1740)
!1749 = !DILocation(line: 631, column: 34, scope: !1740)
!1750 = distinct !{!1750, !1747, !1748, !536}
!1751 = !DILocation(line: 646, column: 29, scope: !1456)
!1752 = !DILocation(line: 0, scope: !1454)
!1753 = !DILocation(line: 649, column: 49, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1454, file: !234, line: 648, column: 29)
!1755 = !DILocation(line: 649, column: 39, scope: !1754)
!1756 = !DILocation(line: 649, column: 31, scope: !1754)
!1757 = !DILocation(line: 648, column: 60, scope: !1754)
!1758 = !DILocation(line: 648, column: 50, scope: !1754)
!1759 = !DILocation(line: 648, column: 29, scope: !1454)
!1760 = distinct !{!1760, !1759, !1761, !536}
!1761 = !DILocation(line: 654, column: 33, scope: !1454)
!1762 = !DILocation(line: 657, column: 43, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1457, file: !234, line: 657, column: 29)
!1764 = !DILocalVariable(name: "wc", arg: 1, scope: !1765, file: !1766, line: 865, type: !1769)
!1765 = distinct !DISubprogram(name: "c32isprint", scope: !1766, file: !1766, line: 865, type: !1767, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1771)
!1766 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!30, !1769}
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1770, line: 20, baseType: !14)
!1770 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1771 = !{!1764}
!1772 = !DILocation(line: 0, scope: !1765, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 657, column: 31, scope: !1763)
!1774 = !DILocation(line: 871, column: 10, scope: !1765, inlinedAt: !1773)
!1775 = !DILocation(line: 657, column: 31, scope: !1763)
!1776 = !DILocation(line: 664, column: 23, scope: !1449)
!1777 = !DILocation(line: 753, column: 2, scope: !1403)
!1778 = !DILocation(line: 756, column: 51, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1403, file: !234, line: 756, column: 7)
!1780 = !DILocation(line: 670, column: 19, scope: !1463)
!1781 = !DILocation(line: 670, column: 45, scope: !1463)
!1782 = !DILocation(line: 674, column: 33, scope: !1462)
!1783 = !DILocation(line: 0, scope: !1462)
!1784 = !DILocation(line: 676, column: 17, scope: !1462)
!1785 = !DILocation(line: 398, column: 12, scope: !1436)
!1786 = !DILocation(line: 678, column: 43, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !234, line: 678, column: 25)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !234, line: 677, column: 19)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !234, line: 676, column: 17)
!1790 = distinct !DILexicalBlock(scope: !1462, file: !234, line: 676, column: 17)
!1791 = !DILocation(line: 680, column: 25, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !234, line: 680, column: 25)
!1793 = distinct !DILexicalBlock(scope: !1787, file: !234, line: 679, column: 23)
!1794 = !DILocation(line: 680, column: 25, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1792, file: !234, line: 680, column: 25)
!1796 = !DILocation(line: 680, column: 25, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !234, line: 680, column: 25)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !234, line: 680, column: 25)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !234, line: 680, column: 25)
!1800 = !DILocation(line: 680, column: 25, scope: !1798)
!1801 = !DILocation(line: 680, column: 25, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !234, line: 680, column: 25)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !234, line: 680, column: 25)
!1804 = !DILocation(line: 680, column: 25, scope: !1803)
!1805 = !DILocation(line: 680, column: 25, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !234, line: 680, column: 25)
!1807 = distinct !DILexicalBlock(scope: !1799, file: !234, line: 680, column: 25)
!1808 = !DILocation(line: 680, column: 25, scope: !1807)
!1809 = !DILocation(line: 680, column: 25, scope: !1799)
!1810 = !DILocation(line: 680, column: 25, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !234, line: 680, column: 25)
!1812 = distinct !DILexicalBlock(scope: !1792, file: !234, line: 680, column: 25)
!1813 = !DILocation(line: 680, column: 25, scope: !1812)
!1814 = !DILocation(line: 681, column: 25, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !234, line: 681, column: 25)
!1816 = distinct !DILexicalBlock(scope: !1793, file: !234, line: 681, column: 25)
!1817 = !DILocation(line: 681, column: 25, scope: !1816)
!1818 = !DILocation(line: 682, column: 25, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !234, line: 682, column: 25)
!1820 = distinct !DILexicalBlock(scope: !1793, file: !234, line: 682, column: 25)
!1821 = !DILocation(line: 682, column: 25, scope: !1820)
!1822 = !DILocation(line: 683, column: 38, scope: !1793)
!1823 = !DILocation(line: 683, column: 33, scope: !1793)
!1824 = !DILocation(line: 684, column: 23, scope: !1793)
!1825 = !DILocation(line: 685, column: 30, scope: !1787)
!1826 = !DILocation(line: 687, column: 25, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !234, line: 687, column: 25)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !234, line: 687, column: 25)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !234, line: 686, column: 23)
!1830 = distinct !DILexicalBlock(scope: !1787, file: !234, line: 685, column: 30)
!1831 = !DILocation(line: 687, column: 25, scope: !1828)
!1832 = !DILocation(line: 689, column: 23, scope: !1829)
!1833 = !DILocation(line: 690, column: 35, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1788, file: !234, line: 690, column: 25)
!1835 = !DILocation(line: 690, column: 30, scope: !1834)
!1836 = !DILocation(line: 690, column: 25, scope: !1788)
!1837 = !DILocation(line: 692, column: 21, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !234, line: 692, column: 21)
!1839 = distinct !DILexicalBlock(scope: !1788, file: !234, line: 692, column: 21)
!1840 = !DILocation(line: 692, column: 21, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !234, line: 692, column: 21)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !234, line: 692, column: 21)
!1843 = distinct !DILexicalBlock(scope: !1838, file: !234, line: 692, column: 21)
!1844 = !DILocation(line: 692, column: 21, scope: !1842)
!1845 = !DILocation(line: 692, column: 21, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !234, line: 692, column: 21)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !234, line: 692, column: 21)
!1848 = !DILocation(line: 692, column: 21, scope: !1847)
!1849 = !DILocation(line: 692, column: 21, scope: !1843)
!1850 = !DILocation(line: 0, scope: !1788)
!1851 = !DILocation(line: 693, column: 21, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !234, line: 693, column: 21)
!1853 = distinct !DILexicalBlock(scope: !1788, file: !234, line: 693, column: 21)
!1854 = !DILocation(line: 693, column: 21, scope: !1853)
!1855 = !DILocation(line: 694, column: 25, scope: !1788)
!1856 = !DILocation(line: 676, column: 17, scope: !1789)
!1857 = distinct !{!1857, !1858, !1859}
!1858 = !DILocation(line: 676, column: 17, scope: !1790)
!1859 = !DILocation(line: 695, column: 19, scope: !1790)
!1860 = !DILocation(line: 409, column: 30, scope: !1570)
!1861 = !DILocation(line: 702, column: 34, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1436, file: !234, line: 702, column: 11)
!1863 = !DILocation(line: 704, column: 14, scope: !1862)
!1864 = !DILocation(line: 705, column: 14, scope: !1862)
!1865 = !DILocation(line: 705, column: 35, scope: !1862)
!1866 = !DILocation(line: 705, column: 17, scope: !1862)
!1867 = !DILocation(line: 705, column: 47, scope: !1862)
!1868 = !DILocation(line: 705, column: 65, scope: !1862)
!1869 = !DILocation(line: 706, column: 11, scope: !1862)
!1870 = !DILocation(line: 702, column: 11, scope: !1436)
!1871 = !DILocation(line: 395, column: 15, scope: !1434)
!1872 = !DILocation(line: 709, column: 5, scope: !1436)
!1873 = !DILocation(line: 710, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1436, file: !234, line: 710, column: 7)
!1875 = !DILocation(line: 710, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1874, file: !234, line: 710, column: 7)
!1877 = !DILocation(line: 710, column: 7, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !234, line: 710, column: 7)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !234, line: 710, column: 7)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !234, line: 710, column: 7)
!1881 = !DILocation(line: 710, column: 7, scope: !1879)
!1882 = !DILocation(line: 710, column: 7, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !234, line: 710, column: 7)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !234, line: 710, column: 7)
!1885 = !DILocation(line: 710, column: 7, scope: !1884)
!1886 = !DILocation(line: 710, column: 7, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !234, line: 710, column: 7)
!1888 = distinct !DILexicalBlock(scope: !1880, file: !234, line: 710, column: 7)
!1889 = !DILocation(line: 710, column: 7, scope: !1888)
!1890 = !DILocation(line: 710, column: 7, scope: !1880)
!1891 = !DILocation(line: 710, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !234, line: 710, column: 7)
!1893 = distinct !DILexicalBlock(scope: !1874, file: !234, line: 710, column: 7)
!1894 = !DILocation(line: 710, column: 7, scope: !1893)
!1895 = !DILocation(line: 712, column: 5, scope: !1436)
!1896 = !DILocation(line: 713, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !234, line: 713, column: 7)
!1898 = distinct !DILexicalBlock(scope: !1436, file: !234, line: 713, column: 7)
!1899 = !DILocation(line: 417, column: 21, scope: !1436)
!1900 = !DILocation(line: 713, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !234, line: 713, column: 7)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !234, line: 713, column: 7)
!1903 = distinct !DILexicalBlock(scope: !1897, file: !234, line: 713, column: 7)
!1904 = !DILocation(line: 713, column: 7, scope: !1902)
!1905 = !DILocation(line: 713, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !234, line: 713, column: 7)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !234, line: 713, column: 7)
!1908 = !DILocation(line: 713, column: 7, scope: !1907)
!1909 = !DILocation(line: 713, column: 7, scope: !1903)
!1910 = !DILocation(line: 714, column: 7, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !234, line: 714, column: 7)
!1912 = distinct !DILexicalBlock(scope: !1436, file: !234, line: 714, column: 7)
!1913 = !DILocation(line: 714, column: 7, scope: !1912)
!1914 = !DILocation(line: 716, column: 11, scope: !1436)
!1915 = !DILocation(line: 718, column: 5, scope: !1437)
!1916 = !DILocation(line: 395, column: 82, scope: !1437)
!1917 = !DILocation(line: 395, column: 3, scope: !1437)
!1918 = distinct !{!1918, !1566, !1919, !536}
!1919 = !DILocation(line: 718, column: 5, scope: !1434)
!1920 = !DILocation(line: 720, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1403, file: !234, line: 720, column: 7)
!1922 = !DILocation(line: 720, column: 16, scope: !1921)
!1923 = !DILocation(line: 728, column: 51, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1403, file: !234, line: 728, column: 7)
!1925 = !DILocation(line: 731, column: 11, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1924, file: !234, line: 730, column: 5)
!1927 = !DILocation(line: 732, column: 16, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1926, file: !234, line: 731, column: 11)
!1929 = !DILocation(line: 732, column: 9, scope: !1928)
!1930 = !DILocation(line: 736, column: 18, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !234, line: 736, column: 16)
!1932 = !DILocation(line: 736, column: 29, scope: !1931)
!1933 = !DILocation(line: 745, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1403, file: !234, line: 745, column: 7)
!1935 = !DILocation(line: 745, column: 20, scope: !1934)
!1936 = !DILocation(line: 746, column: 12, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !234, line: 746, column: 5)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !234, line: 746, column: 5)
!1939 = !DILocation(line: 746, column: 5, scope: !1938)
!1940 = !DILocation(line: 747, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !234, line: 747, column: 7)
!1942 = distinct !DILexicalBlock(scope: !1937, file: !234, line: 747, column: 7)
!1943 = !DILocation(line: 747, column: 7, scope: !1942)
!1944 = !DILocation(line: 746, column: 39, scope: !1937)
!1945 = distinct !{!1945, !1939, !1946, !536}
!1946 = !DILocation(line: 747, column: 7, scope: !1938)
!1947 = !DILocation(line: 749, column: 11, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1403, file: !234, line: 749, column: 7)
!1949 = !DILocation(line: 749, column: 7, scope: !1403)
!1950 = !DILocation(line: 750, column: 5, scope: !1948)
!1951 = !DILocation(line: 750, column: 17, scope: !1948)
!1952 = !DILocation(line: 756, column: 21, scope: !1779)
!1953 = !DILocation(line: 760, column: 42, scope: !1403)
!1954 = !DILocation(line: 758, column: 10, scope: !1403)
!1955 = !DILocation(line: 758, column: 3, scope: !1403)
!1956 = !DILocation(line: 762, column: 1, scope: !1403)
!1957 = !DISubprogram(name: "iswprint", scope: !1958, file: !1958, line: 120, type: !1767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!1958 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1959 = distinct !DISubprogram(name: "quotearg_alloc", scope: !234, file: !234, line: 788, type: !1960, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!65, !6, !32, !1295}
!1962 = !{!1963, !1964, !1965}
!1963 = !DILocalVariable(name: "arg", arg: 1, scope: !1959, file: !234, line: 788, type: !6)
!1964 = !DILocalVariable(name: "argsize", arg: 2, scope: !1959, file: !234, line: 788, type: !32)
!1965 = !DILocalVariable(name: "o", arg: 3, scope: !1959, file: !234, line: 789, type: !1295)
!1966 = !DILocation(line: 0, scope: !1959)
!1967 = !DILocalVariable(name: "arg", arg: 1, scope: !1968, file: !234, line: 801, type: !6)
!1968 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !234, file: !234, line: 801, type: !1969, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!65, !6, !32, !397, !1295}
!1971 = !{!1967, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979}
!1972 = !DILocalVariable(name: "argsize", arg: 2, scope: !1968, file: !234, line: 801, type: !32)
!1973 = !DILocalVariable(name: "size", arg: 3, scope: !1968, file: !234, line: 801, type: !397)
!1974 = !DILocalVariable(name: "o", arg: 4, scope: !1968, file: !234, line: 802, type: !1295)
!1975 = !DILocalVariable(name: "p", scope: !1968, file: !234, line: 804, type: !1295)
!1976 = !DILocalVariable(name: "saved_errno", scope: !1968, file: !234, line: 805, type: !30)
!1977 = !DILocalVariable(name: "flags", scope: !1968, file: !234, line: 807, type: !30)
!1978 = !DILocalVariable(name: "bufsize", scope: !1968, file: !234, line: 808, type: !32)
!1979 = !DILocalVariable(name: "buf", scope: !1968, file: !234, line: 812, type: !65)
!1980 = !DILocation(line: 0, scope: !1968, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 791, column: 10, scope: !1959)
!1982 = !DILocation(line: 804, column: 37, scope: !1968, inlinedAt: !1981)
!1983 = !DILocation(line: 805, column: 21, scope: !1968, inlinedAt: !1981)
!1984 = !DILocation(line: 807, column: 18, scope: !1968, inlinedAt: !1981)
!1985 = !DILocation(line: 807, column: 24, scope: !1968, inlinedAt: !1981)
!1986 = !DILocation(line: 808, column: 72, scope: !1968, inlinedAt: !1981)
!1987 = !DILocation(line: 809, column: 53, scope: !1968, inlinedAt: !1981)
!1988 = !DILocation(line: 810, column: 49, scope: !1968, inlinedAt: !1981)
!1989 = !DILocation(line: 811, column: 49, scope: !1968, inlinedAt: !1981)
!1990 = !DILocation(line: 808, column: 20, scope: !1968, inlinedAt: !1981)
!1991 = !DILocation(line: 811, column: 62, scope: !1968, inlinedAt: !1981)
!1992 = !DILocation(line: 812, column: 15, scope: !1968, inlinedAt: !1981)
!1993 = !DILocation(line: 813, column: 60, scope: !1968, inlinedAt: !1981)
!1994 = !DILocation(line: 815, column: 32, scope: !1968, inlinedAt: !1981)
!1995 = !DILocation(line: 815, column: 47, scope: !1968, inlinedAt: !1981)
!1996 = !DILocation(line: 813, column: 3, scope: !1968, inlinedAt: !1981)
!1997 = !DILocation(line: 816, column: 9, scope: !1968, inlinedAt: !1981)
!1998 = !DILocation(line: 791, column: 3, scope: !1959)
!1999 = !DILocation(line: 0, scope: !1968)
!2000 = !DILocation(line: 804, column: 37, scope: !1968)
!2001 = !DILocation(line: 805, column: 21, scope: !1968)
!2002 = !DILocation(line: 807, column: 18, scope: !1968)
!2003 = !DILocation(line: 807, column: 27, scope: !1968)
!2004 = !DILocation(line: 807, column: 24, scope: !1968)
!2005 = !DILocation(line: 808, column: 72, scope: !1968)
!2006 = !DILocation(line: 809, column: 53, scope: !1968)
!2007 = !DILocation(line: 810, column: 49, scope: !1968)
!2008 = !DILocation(line: 811, column: 49, scope: !1968)
!2009 = !DILocation(line: 808, column: 20, scope: !1968)
!2010 = !DILocation(line: 811, column: 62, scope: !1968)
!2011 = !DILocation(line: 812, column: 15, scope: !1968)
!2012 = !DILocation(line: 813, column: 60, scope: !1968)
!2013 = !DILocation(line: 815, column: 32, scope: !1968)
!2014 = !DILocation(line: 815, column: 47, scope: !1968)
!2015 = !DILocation(line: 813, column: 3, scope: !1968)
!2016 = !DILocation(line: 816, column: 9, scope: !1968)
!2017 = !DILocation(line: 817, column: 7, scope: !1968)
!2018 = !DILocation(line: 818, column: 11, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1968, file: !234, line: 817, column: 7)
!2020 = !{!1025, !1025, i64 0}
!2021 = !DILocation(line: 818, column: 5, scope: !2019)
!2022 = !DILocation(line: 819, column: 3, scope: !1968)
!2023 = distinct !DISubprogram(name: "quotearg_free", scope: !234, file: !234, line: 837, type: !170, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2024)
!2024 = !{!2025, !2026}
!2025 = !DILocalVariable(name: "sv", scope: !2023, file: !234, line: 839, type: !307)
!2026 = !DILocalVariable(name: "i", scope: !2027, file: !234, line: 840, type: !30)
!2027 = distinct !DILexicalBlock(scope: !2023, file: !234, line: 840, column: 3)
!2028 = !DILocation(line: 839, column: 24, scope: !2023)
!2029 = !DILocation(line: 0, scope: !2023)
!2030 = !DILocation(line: 0, scope: !2027)
!2031 = !DILocation(line: 840, column: 21, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !234, line: 840, column: 3)
!2033 = !DILocation(line: 840, column: 3, scope: !2027)
!2034 = !DILocation(line: 842, column: 13, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2023, file: !234, line: 842, column: 7)
!2036 = !{!2037, !486, i64 8}
!2037 = !{!"slotvec", !1025, i64 0, !486, i64 8}
!2038 = !DILocation(line: 842, column: 17, scope: !2035)
!2039 = !DILocation(line: 842, column: 7, scope: !2023)
!2040 = !DILocation(line: 841, column: 17, scope: !2032)
!2041 = !DILocation(line: 841, column: 5, scope: !2032)
!2042 = !DILocation(line: 840, column: 32, scope: !2032)
!2043 = distinct !{!2043, !2033, !2044, !536}
!2044 = !DILocation(line: 841, column: 20, scope: !2027)
!2045 = !DILocation(line: 844, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2035, file: !234, line: 843, column: 5)
!2047 = !DILocation(line: 845, column: 21, scope: !2046)
!2048 = !{!2037, !1025, i64 0}
!2049 = !DILocation(line: 846, column: 20, scope: !2046)
!2050 = !DILocation(line: 847, column: 5, scope: !2046)
!2051 = !DILocation(line: 848, column: 10, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2023, file: !234, line: 848, column: 7)
!2053 = !DILocation(line: 848, column: 7, scope: !2023)
!2054 = !DILocation(line: 850, column: 13, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !234, line: 849, column: 5)
!2056 = !DILocation(line: 850, column: 7, scope: !2055)
!2057 = !DILocation(line: 851, column: 15, scope: !2055)
!2058 = !DILocation(line: 852, column: 5, scope: !2055)
!2059 = !DILocation(line: 853, column: 10, scope: !2023)
!2060 = !DILocation(line: 854, column: 1, scope: !2023)
!2061 = distinct !DISubprogram(name: "quotearg_n", scope: !234, file: !234, line: 919, type: !673, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2062)
!2062 = !{!2063, !2064}
!2063 = !DILocalVariable(name: "n", arg: 1, scope: !2061, file: !234, line: 919, type: !30)
!2064 = !DILocalVariable(name: "arg", arg: 2, scope: !2061, file: !234, line: 919, type: !6)
!2065 = !DILocation(line: 0, scope: !2061)
!2066 = !DILocation(line: 921, column: 10, scope: !2061)
!2067 = !DILocation(line: 921, column: 3, scope: !2061)
!2068 = distinct !DISubprogram(name: "quotearg_n_options", scope: !234, file: !234, line: 866, type: !2069, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2071)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!65, !30, !6, !32, !1295}
!2071 = !{!2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2082, !2083, !2085, !2086, !2087}
!2072 = !DILocalVariable(name: "n", arg: 1, scope: !2068, file: !234, line: 866, type: !30)
!2073 = !DILocalVariable(name: "arg", arg: 2, scope: !2068, file: !234, line: 866, type: !6)
!2074 = !DILocalVariable(name: "argsize", arg: 3, scope: !2068, file: !234, line: 866, type: !32)
!2075 = !DILocalVariable(name: "options", arg: 4, scope: !2068, file: !234, line: 867, type: !1295)
!2076 = !DILocalVariable(name: "saved_errno", scope: !2068, file: !234, line: 869, type: !30)
!2077 = !DILocalVariable(name: "sv", scope: !2068, file: !234, line: 871, type: !307)
!2078 = !DILocalVariable(name: "nslots_max", scope: !2068, file: !234, line: 873, type: !30)
!2079 = !DILocalVariable(name: "preallocated", scope: !2080, file: !234, line: 879, type: !44)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !234, line: 878, column: 5)
!2081 = distinct !DILexicalBlock(scope: !2068, file: !234, line: 877, column: 7)
!2082 = !DILocalVariable(name: "new_nslots", scope: !2080, file: !234, line: 880, type: !410)
!2083 = !DILocalVariable(name: "size", scope: !2084, file: !234, line: 891, type: !32)
!2084 = distinct !DILexicalBlock(scope: !2068, file: !234, line: 890, column: 3)
!2085 = !DILocalVariable(name: "val", scope: !2084, file: !234, line: 892, type: !65)
!2086 = !DILocalVariable(name: "flags", scope: !2084, file: !234, line: 894, type: !30)
!2087 = !DILocalVariable(name: "qsize", scope: !2084, file: !234, line: 895, type: !32)
!2088 = !DILocation(line: 0, scope: !2068)
!2089 = !DILocation(line: 869, column: 21, scope: !2068)
!2090 = !DILocation(line: 871, column: 24, scope: !2068)
!2091 = !DILocation(line: 874, column: 17, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2068, file: !234, line: 874, column: 7)
!2093 = !DILocation(line: 875, column: 5, scope: !2092)
!2094 = !DILocation(line: 877, column: 7, scope: !2081)
!2095 = !DILocation(line: 877, column: 14, scope: !2081)
!2096 = !DILocation(line: 877, column: 7, scope: !2068)
!2097 = !DILocation(line: 879, column: 31, scope: !2080)
!2098 = !DILocation(line: 0, scope: !2080)
!2099 = !DILocation(line: 880, column: 7, scope: !2080)
!2100 = !DILocation(line: 880, column: 26, scope: !2080)
!2101 = !DILocation(line: 880, column: 13, scope: !2080)
!2102 = !DILocation(line: 882, column: 31, scope: !2080)
!2103 = !DILocation(line: 883, column: 33, scope: !2080)
!2104 = !DILocation(line: 883, column: 42, scope: !2080)
!2105 = !DILocation(line: 883, column: 31, scope: !2080)
!2106 = !DILocation(line: 882, column: 22, scope: !2080)
!2107 = !DILocation(line: 882, column: 15, scope: !2080)
!2108 = !DILocation(line: 884, column: 11, scope: !2080)
!2109 = !DILocation(line: 885, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2080, file: !234, line: 884, column: 11)
!2111 = !{i64 0, i64 8, !2020, i64 8, i64 8, !485}
!2112 = !DILocation(line: 885, column: 9, scope: !2110)
!2113 = !DILocation(line: 886, column: 20, scope: !2080)
!2114 = !DILocation(line: 886, column: 18, scope: !2080)
!2115 = !DILocation(line: 886, column: 15, scope: !2080)
!2116 = !DILocation(line: 886, column: 32, scope: !2080)
!2117 = !DILocation(line: 886, column: 43, scope: !2080)
!2118 = !DILocation(line: 886, column: 53, scope: !2080)
!2119 = !DILocation(line: 0, scope: !1506, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 886, column: 7, scope: !2080)
!2121 = !DILocation(line: 59, column: 10, scope: !1506, inlinedAt: !2120)
!2122 = !DILocation(line: 887, column: 16, scope: !2080)
!2123 = !DILocation(line: 887, column: 14, scope: !2080)
!2124 = !DILocation(line: 888, column: 5, scope: !2081)
!2125 = !DILocation(line: 888, column: 5, scope: !2080)
!2126 = !DILocation(line: 891, column: 19, scope: !2084)
!2127 = !DILocation(line: 891, column: 25, scope: !2084)
!2128 = !DILocation(line: 0, scope: !2084)
!2129 = !DILocation(line: 892, column: 23, scope: !2084)
!2130 = !DILocation(line: 894, column: 26, scope: !2084)
!2131 = !DILocation(line: 894, column: 32, scope: !2084)
!2132 = !DILocation(line: 896, column: 55, scope: !2084)
!2133 = !DILocation(line: 897, column: 46, scope: !2084)
!2134 = !DILocation(line: 898, column: 55, scope: !2084)
!2135 = !DILocation(line: 899, column: 55, scope: !2084)
!2136 = !DILocation(line: 895, column: 20, scope: !2084)
!2137 = !DILocation(line: 901, column: 14, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2084, file: !234, line: 901, column: 9)
!2139 = !DILocation(line: 901, column: 9, scope: !2084)
!2140 = !DILocation(line: 903, column: 35, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !234, line: 902, column: 7)
!2142 = !DILocation(line: 903, column: 20, scope: !2141)
!2143 = !DILocation(line: 904, column: 17, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2141, file: !234, line: 904, column: 13)
!2145 = !DILocation(line: 904, column: 13, scope: !2141)
!2146 = !DILocation(line: 905, column: 11, scope: !2144)
!2147 = !DILocation(line: 906, column: 27, scope: !2141)
!2148 = !DILocation(line: 906, column: 19, scope: !2141)
!2149 = !DILocation(line: 907, column: 69, scope: !2141)
!2150 = !DILocation(line: 909, column: 44, scope: !2141)
!2151 = !DILocation(line: 910, column: 44, scope: !2141)
!2152 = !DILocation(line: 907, column: 9, scope: !2141)
!2153 = !DILocation(line: 911, column: 7, scope: !2141)
!2154 = !DILocation(line: 913, column: 11, scope: !2084)
!2155 = !DILocation(line: 914, column: 5, scope: !2084)
!2156 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !234, file: !234, line: 925, type: !2157, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!65, !30, !6, !32}
!2159 = !{!2160, !2161, !2162}
!2160 = !DILocalVariable(name: "n", arg: 1, scope: !2156, file: !234, line: 925, type: !30)
!2161 = !DILocalVariable(name: "arg", arg: 2, scope: !2156, file: !234, line: 925, type: !6)
!2162 = !DILocalVariable(name: "argsize", arg: 3, scope: !2156, file: !234, line: 925, type: !32)
!2163 = !DILocation(line: 0, scope: !2156)
!2164 = !DILocation(line: 927, column: 10, scope: !2156)
!2165 = !DILocation(line: 927, column: 3, scope: !2156)
!2166 = distinct !DISubprogram(name: "quotearg", scope: !234, file: !234, line: 931, type: !682, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2167)
!2167 = !{!2168}
!2168 = !DILocalVariable(name: "arg", arg: 1, scope: !2166, file: !234, line: 931, type: !6)
!2169 = !DILocation(line: 0, scope: !2166)
!2170 = !DILocation(line: 0, scope: !2061, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 933, column: 10, scope: !2166)
!2172 = !DILocation(line: 921, column: 10, scope: !2061, inlinedAt: !2171)
!2173 = !DILocation(line: 933, column: 3, scope: !2166)
!2174 = distinct !DISubprogram(name: "quotearg_mem", scope: !234, file: !234, line: 937, type: !2175, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!65, !6, !32}
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "arg", arg: 1, scope: !2174, file: !234, line: 937, type: !6)
!2179 = !DILocalVariable(name: "argsize", arg: 2, scope: !2174, file: !234, line: 937, type: !32)
!2180 = !DILocation(line: 0, scope: !2174)
!2181 = !DILocation(line: 0, scope: !2156, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 939, column: 10, scope: !2174)
!2183 = !DILocation(line: 927, column: 10, scope: !2156, inlinedAt: !2182)
!2184 = !DILocation(line: 939, column: 3, scope: !2174)
!2185 = distinct !DISubprogram(name: "quotearg_n_style", scope: !234, file: !234, line: 943, type: !2186, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!65, !30, !236, !6}
!2188 = !{!2189, !2190, !2191, !2192}
!2189 = !DILocalVariable(name: "n", arg: 1, scope: !2185, file: !234, line: 943, type: !30)
!2190 = !DILocalVariable(name: "s", arg: 2, scope: !2185, file: !234, line: 943, type: !236)
!2191 = !DILocalVariable(name: "arg", arg: 3, scope: !2185, file: !234, line: 943, type: !6)
!2192 = !DILocalVariable(name: "o", scope: !2185, file: !234, line: 945, type: !1296)
!2193 = !DILocation(line: 0, scope: !2185)
!2194 = !DILocation(line: 945, column: 3, scope: !2185)
!2195 = !DILocation(line: 945, column: 32, scope: !2185)
!2196 = !{!2197}
!2197 = distinct !{!2197, !2198, !"quoting_options_from_style: argument 0"}
!2198 = distinct !{!2198, !"quoting_options_from_style"}
!2199 = !DILocation(line: 945, column: 36, scope: !2185)
!2200 = !DILocalVariable(name: "style", arg: 1, scope: !2201, file: !234, line: 183, type: !236)
!2201 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !234, file: !234, line: 183, type: !2202, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2204)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!265, !236}
!2204 = !{!2200, !2205}
!2205 = !DILocalVariable(name: "o", scope: !2201, file: !234, line: 185, type: !265)
!2206 = !DILocation(line: 0, scope: !2201, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 945, column: 36, scope: !2185)
!2208 = !DILocation(line: 185, column: 26, scope: !2201, inlinedAt: !2207)
!2209 = !DILocation(line: 186, column: 13, scope: !2210, inlinedAt: !2207)
!2210 = distinct !DILexicalBlock(scope: !2201, file: !234, line: 186, column: 7)
!2211 = !DILocation(line: 186, column: 7, scope: !2201, inlinedAt: !2207)
!2212 = !DILocation(line: 187, column: 5, scope: !2210, inlinedAt: !2207)
!2213 = !DILocation(line: 188, column: 5, scope: !2201, inlinedAt: !2207)
!2214 = !DILocation(line: 188, column: 11, scope: !2201, inlinedAt: !2207)
!2215 = !DILocation(line: 946, column: 10, scope: !2185)
!2216 = !DILocation(line: 947, column: 1, scope: !2185)
!2217 = !DILocation(line: 946, column: 3, scope: !2185)
!2218 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !234, file: !234, line: 950, type: !2219, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!65, !30, !236, !6, !32}
!2221 = !{!2222, !2223, !2224, !2225, !2226}
!2222 = !DILocalVariable(name: "n", arg: 1, scope: !2218, file: !234, line: 950, type: !30)
!2223 = !DILocalVariable(name: "s", arg: 2, scope: !2218, file: !234, line: 950, type: !236)
!2224 = !DILocalVariable(name: "arg", arg: 3, scope: !2218, file: !234, line: 951, type: !6)
!2225 = !DILocalVariable(name: "argsize", arg: 4, scope: !2218, file: !234, line: 951, type: !32)
!2226 = !DILocalVariable(name: "o", scope: !2218, file: !234, line: 953, type: !1296)
!2227 = !DILocation(line: 0, scope: !2218)
!2228 = !DILocation(line: 953, column: 3, scope: !2218)
!2229 = !DILocation(line: 953, column: 32, scope: !2218)
!2230 = !{!2231}
!2231 = distinct !{!2231, !2232, !"quoting_options_from_style: argument 0"}
!2232 = distinct !{!2232, !"quoting_options_from_style"}
!2233 = !DILocation(line: 953, column: 36, scope: !2218)
!2234 = !DILocation(line: 0, scope: !2201, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 953, column: 36, scope: !2218)
!2236 = !DILocation(line: 185, column: 26, scope: !2201, inlinedAt: !2235)
!2237 = !DILocation(line: 186, column: 13, scope: !2210, inlinedAt: !2235)
!2238 = !DILocation(line: 186, column: 7, scope: !2201, inlinedAt: !2235)
!2239 = !DILocation(line: 187, column: 5, scope: !2210, inlinedAt: !2235)
!2240 = !DILocation(line: 188, column: 5, scope: !2201, inlinedAt: !2235)
!2241 = !DILocation(line: 188, column: 11, scope: !2201, inlinedAt: !2235)
!2242 = !DILocation(line: 954, column: 10, scope: !2218)
!2243 = !DILocation(line: 955, column: 1, scope: !2218)
!2244 = !DILocation(line: 954, column: 3, scope: !2218)
!2245 = distinct !DISubprogram(name: "quotearg_style", scope: !234, file: !234, line: 958, type: !2246, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!65, !236, !6}
!2248 = !{!2249, !2250}
!2249 = !DILocalVariable(name: "s", arg: 1, scope: !2245, file: !234, line: 958, type: !236)
!2250 = !DILocalVariable(name: "arg", arg: 2, scope: !2245, file: !234, line: 958, type: !6)
!2251 = !DILocation(line: 0, scope: !2245)
!2252 = !DILocation(line: 0, scope: !2185, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 960, column: 10, scope: !2245)
!2254 = !DILocation(line: 945, column: 3, scope: !2185, inlinedAt: !2253)
!2255 = !DILocation(line: 945, column: 32, scope: !2185, inlinedAt: !2253)
!2256 = !{!2257}
!2257 = distinct !{!2257, !2258, !"quoting_options_from_style: argument 0"}
!2258 = distinct !{!2258, !"quoting_options_from_style"}
!2259 = !DILocation(line: 945, column: 36, scope: !2185, inlinedAt: !2253)
!2260 = !DILocation(line: 0, scope: !2201, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 945, column: 36, scope: !2185, inlinedAt: !2253)
!2262 = !DILocation(line: 185, column: 26, scope: !2201, inlinedAt: !2261)
!2263 = !DILocation(line: 186, column: 13, scope: !2210, inlinedAt: !2261)
!2264 = !DILocation(line: 186, column: 7, scope: !2201, inlinedAt: !2261)
!2265 = !DILocation(line: 187, column: 5, scope: !2210, inlinedAt: !2261)
!2266 = !DILocation(line: 188, column: 5, scope: !2201, inlinedAt: !2261)
!2267 = !DILocation(line: 188, column: 11, scope: !2201, inlinedAt: !2261)
!2268 = !DILocation(line: 946, column: 10, scope: !2185, inlinedAt: !2253)
!2269 = !DILocation(line: 947, column: 1, scope: !2185, inlinedAt: !2253)
!2270 = !DILocation(line: 960, column: 3, scope: !2245)
!2271 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !234, file: !234, line: 964, type: !2272, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!65, !236, !6, !32}
!2274 = !{!2275, !2276, !2277}
!2275 = !DILocalVariable(name: "s", arg: 1, scope: !2271, file: !234, line: 964, type: !236)
!2276 = !DILocalVariable(name: "arg", arg: 2, scope: !2271, file: !234, line: 964, type: !6)
!2277 = !DILocalVariable(name: "argsize", arg: 3, scope: !2271, file: !234, line: 964, type: !32)
!2278 = !DILocation(line: 0, scope: !2271)
!2279 = !DILocation(line: 0, scope: !2218, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 966, column: 10, scope: !2271)
!2281 = !DILocation(line: 953, column: 3, scope: !2218, inlinedAt: !2280)
!2282 = !DILocation(line: 953, column: 32, scope: !2218, inlinedAt: !2280)
!2283 = !{!2284}
!2284 = distinct !{!2284, !2285, !"quoting_options_from_style: argument 0"}
!2285 = distinct !{!2285, !"quoting_options_from_style"}
!2286 = !DILocation(line: 953, column: 36, scope: !2218, inlinedAt: !2280)
!2287 = !DILocation(line: 0, scope: !2201, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 953, column: 36, scope: !2218, inlinedAt: !2280)
!2289 = !DILocation(line: 185, column: 26, scope: !2201, inlinedAt: !2288)
!2290 = !DILocation(line: 186, column: 13, scope: !2210, inlinedAt: !2288)
!2291 = !DILocation(line: 186, column: 7, scope: !2201, inlinedAt: !2288)
!2292 = !DILocation(line: 187, column: 5, scope: !2210, inlinedAt: !2288)
!2293 = !DILocation(line: 188, column: 5, scope: !2201, inlinedAt: !2288)
!2294 = !DILocation(line: 188, column: 11, scope: !2201, inlinedAt: !2288)
!2295 = !DILocation(line: 954, column: 10, scope: !2218, inlinedAt: !2280)
!2296 = !DILocation(line: 955, column: 1, scope: !2218, inlinedAt: !2280)
!2297 = !DILocation(line: 966, column: 3, scope: !2271)
!2298 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !234, file: !234, line: 970, type: !2299, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!65, !6, !32, !8}
!2301 = !{!2302, !2303, !2304, !2305}
!2302 = !DILocalVariable(name: "arg", arg: 1, scope: !2298, file: !234, line: 970, type: !6)
!2303 = !DILocalVariable(name: "argsize", arg: 2, scope: !2298, file: !234, line: 970, type: !32)
!2304 = !DILocalVariable(name: "ch", arg: 3, scope: !2298, file: !234, line: 970, type: !8)
!2305 = !DILocalVariable(name: "options", scope: !2298, file: !234, line: 972, type: !265)
!2306 = !DILocation(line: 0, scope: !2298)
!2307 = !DILocation(line: 972, column: 3, scope: !2298)
!2308 = !DILocation(line: 972, column: 26, scope: !2298)
!2309 = !DILocation(line: 973, column: 13, scope: !2298)
!2310 = !{i64 0, i64 4, !574, i64 4, i64 4, !565, i64 8, i64 32, !574, i64 40, i64 8, !485, i64 48, i64 8, !485}
!2311 = !DILocation(line: 0, scope: !1316, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 974, column: 3, scope: !2298)
!2313 = !DILocation(line: 147, column: 62, scope: !1316, inlinedAt: !2312)
!2314 = !DILocation(line: 147, column: 57, scope: !1316, inlinedAt: !2312)
!2315 = !DILocation(line: 148, column: 15, scope: !1316, inlinedAt: !2312)
!2316 = !DILocation(line: 149, column: 21, scope: !1316, inlinedAt: !2312)
!2317 = !DILocation(line: 149, column: 24, scope: !1316, inlinedAt: !2312)
!2318 = !DILocation(line: 149, column: 34, scope: !1316, inlinedAt: !2312)
!2319 = !DILocation(line: 150, column: 19, scope: !1316, inlinedAt: !2312)
!2320 = !DILocation(line: 150, column: 24, scope: !1316, inlinedAt: !2312)
!2321 = !DILocation(line: 150, column: 6, scope: !1316, inlinedAt: !2312)
!2322 = !DILocation(line: 975, column: 10, scope: !2298)
!2323 = !DILocation(line: 976, column: 1, scope: !2298)
!2324 = !DILocation(line: 975, column: 3, scope: !2298)
!2325 = distinct !DISubprogram(name: "quotearg_char", scope: !234, file: !234, line: 979, type: !2326, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2328)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!65, !6, !8}
!2328 = !{!2329, !2330}
!2329 = !DILocalVariable(name: "arg", arg: 1, scope: !2325, file: !234, line: 979, type: !6)
!2330 = !DILocalVariable(name: "ch", arg: 2, scope: !2325, file: !234, line: 979, type: !8)
!2331 = !DILocation(line: 0, scope: !2325)
!2332 = !DILocation(line: 0, scope: !2298, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 981, column: 10, scope: !2325)
!2334 = !DILocation(line: 972, column: 3, scope: !2298, inlinedAt: !2333)
!2335 = !DILocation(line: 972, column: 26, scope: !2298, inlinedAt: !2333)
!2336 = !DILocation(line: 973, column: 13, scope: !2298, inlinedAt: !2333)
!2337 = !DILocation(line: 0, scope: !1316, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 974, column: 3, scope: !2298, inlinedAt: !2333)
!2339 = !DILocation(line: 147, column: 62, scope: !1316, inlinedAt: !2338)
!2340 = !DILocation(line: 147, column: 57, scope: !1316, inlinedAt: !2338)
!2341 = !DILocation(line: 148, column: 15, scope: !1316, inlinedAt: !2338)
!2342 = !DILocation(line: 149, column: 21, scope: !1316, inlinedAt: !2338)
!2343 = !DILocation(line: 149, column: 24, scope: !1316, inlinedAt: !2338)
!2344 = !DILocation(line: 149, column: 34, scope: !1316, inlinedAt: !2338)
!2345 = !DILocation(line: 150, column: 19, scope: !1316, inlinedAt: !2338)
!2346 = !DILocation(line: 150, column: 24, scope: !1316, inlinedAt: !2338)
!2347 = !DILocation(line: 150, column: 6, scope: !1316, inlinedAt: !2338)
!2348 = !DILocation(line: 975, column: 10, scope: !2298, inlinedAt: !2333)
!2349 = !DILocation(line: 976, column: 1, scope: !2298, inlinedAt: !2333)
!2350 = !DILocation(line: 981, column: 3, scope: !2325)
!2351 = distinct !DISubprogram(name: "quotearg_colon", scope: !234, file: !234, line: 985, type: !682, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2352)
!2352 = !{!2353}
!2353 = !DILocalVariable(name: "arg", arg: 1, scope: !2351, file: !234, line: 985, type: !6)
!2354 = !DILocation(line: 0, scope: !2351)
!2355 = !DILocation(line: 0, scope: !2325, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 987, column: 10, scope: !2351)
!2357 = !DILocation(line: 0, scope: !2298, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 981, column: 10, scope: !2325, inlinedAt: !2356)
!2359 = !DILocation(line: 972, column: 3, scope: !2298, inlinedAt: !2358)
!2360 = !DILocation(line: 972, column: 26, scope: !2298, inlinedAt: !2358)
!2361 = !DILocation(line: 973, column: 13, scope: !2298, inlinedAt: !2358)
!2362 = !DILocation(line: 0, scope: !1316, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 974, column: 3, scope: !2298, inlinedAt: !2358)
!2364 = !DILocation(line: 147, column: 57, scope: !1316, inlinedAt: !2363)
!2365 = !DILocation(line: 149, column: 21, scope: !1316, inlinedAt: !2363)
!2366 = !DILocation(line: 150, column: 6, scope: !1316, inlinedAt: !2363)
!2367 = !DILocation(line: 975, column: 10, scope: !2298, inlinedAt: !2358)
!2368 = !DILocation(line: 976, column: 1, scope: !2298, inlinedAt: !2358)
!2369 = !DILocation(line: 987, column: 3, scope: !2351)
!2370 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !234, file: !234, line: 991, type: !2175, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2371)
!2371 = !{!2372, !2373}
!2372 = !DILocalVariable(name: "arg", arg: 1, scope: !2370, file: !234, line: 991, type: !6)
!2373 = !DILocalVariable(name: "argsize", arg: 2, scope: !2370, file: !234, line: 991, type: !32)
!2374 = !DILocation(line: 0, scope: !2370)
!2375 = !DILocation(line: 0, scope: !2298, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 993, column: 10, scope: !2370)
!2377 = !DILocation(line: 972, column: 3, scope: !2298, inlinedAt: !2376)
!2378 = !DILocation(line: 972, column: 26, scope: !2298, inlinedAt: !2376)
!2379 = !DILocation(line: 973, column: 13, scope: !2298, inlinedAt: !2376)
!2380 = !DILocation(line: 0, scope: !1316, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 974, column: 3, scope: !2298, inlinedAt: !2376)
!2382 = !DILocation(line: 147, column: 57, scope: !1316, inlinedAt: !2381)
!2383 = !DILocation(line: 149, column: 21, scope: !1316, inlinedAt: !2381)
!2384 = !DILocation(line: 150, column: 6, scope: !1316, inlinedAt: !2381)
!2385 = !DILocation(line: 975, column: 10, scope: !2298, inlinedAt: !2376)
!2386 = !DILocation(line: 976, column: 1, scope: !2298, inlinedAt: !2376)
!2387 = !DILocation(line: 993, column: 3, scope: !2370)
!2388 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !234, file: !234, line: 997, type: !2186, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2389)
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DILocalVariable(name: "n", arg: 1, scope: !2388, file: !234, line: 997, type: !30)
!2391 = !DILocalVariable(name: "s", arg: 2, scope: !2388, file: !234, line: 997, type: !236)
!2392 = !DILocalVariable(name: "arg", arg: 3, scope: !2388, file: !234, line: 997, type: !6)
!2393 = !DILocalVariable(name: "options", scope: !2388, file: !234, line: 999, type: !265)
!2394 = !DILocation(line: 0, scope: !2388)
!2395 = !DILocation(line: 999, column: 3, scope: !2388)
!2396 = !DILocation(line: 999, column: 26, scope: !2388)
!2397 = !DILocation(line: 0, scope: !2201, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 1000, column: 13, scope: !2388)
!2399 = !DILocation(line: 186, column: 13, scope: !2210, inlinedAt: !2398)
!2400 = !DILocation(line: 186, column: 7, scope: !2201, inlinedAt: !2398)
!2401 = !DILocation(line: 187, column: 5, scope: !2210, inlinedAt: !2398)
!2402 = !{!2403}
!2403 = distinct !{!2403, !2404, !"quoting_options_from_style: argument 0"}
!2404 = distinct !{!2404, !"quoting_options_from_style"}
!2405 = !DILocation(line: 1000, column: 13, scope: !2388)
!2406 = !DILocation(line: 0, scope: !1316, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 1001, column: 3, scope: !2388)
!2408 = !DILocation(line: 147, column: 57, scope: !1316, inlinedAt: !2407)
!2409 = !DILocation(line: 149, column: 21, scope: !1316, inlinedAt: !2407)
!2410 = !DILocation(line: 150, column: 6, scope: !1316, inlinedAt: !2407)
!2411 = !DILocation(line: 1002, column: 10, scope: !2388)
!2412 = !DILocation(line: 1003, column: 1, scope: !2388)
!2413 = !DILocation(line: 1002, column: 3, scope: !2388)
!2414 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !234, file: !234, line: 1006, type: !2415, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!65, !30, !6, !6, !6}
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DILocalVariable(name: "n", arg: 1, scope: !2414, file: !234, line: 1006, type: !30)
!2419 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2414, file: !234, line: 1006, type: !6)
!2420 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2414, file: !234, line: 1007, type: !6)
!2421 = !DILocalVariable(name: "arg", arg: 4, scope: !2414, file: !234, line: 1007, type: !6)
!2422 = !DILocation(line: 0, scope: !2414)
!2423 = !DILocalVariable(name: "n", arg: 1, scope: !2424, file: !234, line: 1014, type: !30)
!2424 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !234, file: !234, line: 1014, type: !2425, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!65, !30, !6, !6, !6, !32}
!2427 = !{!2423, !2428, !2429, !2430, !2431, !2432}
!2428 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2424, file: !234, line: 1014, type: !6)
!2429 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2424, file: !234, line: 1015, type: !6)
!2430 = !DILocalVariable(name: "arg", arg: 4, scope: !2424, file: !234, line: 1016, type: !6)
!2431 = !DILocalVariable(name: "argsize", arg: 5, scope: !2424, file: !234, line: 1016, type: !32)
!2432 = !DILocalVariable(name: "o", scope: !2424, file: !234, line: 1018, type: !265)
!2433 = !DILocation(line: 0, scope: !2424, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 1009, column: 10, scope: !2414)
!2435 = !DILocation(line: 1018, column: 3, scope: !2424, inlinedAt: !2434)
!2436 = !DILocation(line: 1018, column: 26, scope: !2424, inlinedAt: !2434)
!2437 = !DILocation(line: 1018, column: 30, scope: !2424, inlinedAt: !2434)
!2438 = !DILocation(line: 0, scope: !1356, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 1019, column: 3, scope: !2424, inlinedAt: !2434)
!2440 = !DILocation(line: 174, column: 6, scope: !1356, inlinedAt: !2439)
!2441 = !DILocation(line: 174, column: 12, scope: !1356, inlinedAt: !2439)
!2442 = !DILocation(line: 175, column: 8, scope: !1370, inlinedAt: !2439)
!2443 = !DILocation(line: 175, column: 19, scope: !1370, inlinedAt: !2439)
!2444 = !DILocation(line: 176, column: 5, scope: !1370, inlinedAt: !2439)
!2445 = !DILocation(line: 177, column: 6, scope: !1356, inlinedAt: !2439)
!2446 = !DILocation(line: 177, column: 17, scope: !1356, inlinedAt: !2439)
!2447 = !DILocation(line: 178, column: 6, scope: !1356, inlinedAt: !2439)
!2448 = !DILocation(line: 178, column: 18, scope: !1356, inlinedAt: !2439)
!2449 = !DILocation(line: 1020, column: 10, scope: !2424, inlinedAt: !2434)
!2450 = !DILocation(line: 1021, column: 1, scope: !2424, inlinedAt: !2434)
!2451 = !DILocation(line: 1009, column: 3, scope: !2414)
!2452 = !DILocation(line: 0, scope: !2424)
!2453 = !DILocation(line: 1018, column: 3, scope: !2424)
!2454 = !DILocation(line: 1018, column: 26, scope: !2424)
!2455 = !DILocation(line: 1018, column: 30, scope: !2424)
!2456 = !DILocation(line: 0, scope: !1356, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 1019, column: 3, scope: !2424)
!2458 = !DILocation(line: 174, column: 6, scope: !1356, inlinedAt: !2457)
!2459 = !DILocation(line: 174, column: 12, scope: !1356, inlinedAt: !2457)
!2460 = !DILocation(line: 175, column: 8, scope: !1370, inlinedAt: !2457)
!2461 = !DILocation(line: 175, column: 19, scope: !1370, inlinedAt: !2457)
!2462 = !DILocation(line: 176, column: 5, scope: !1370, inlinedAt: !2457)
!2463 = !DILocation(line: 177, column: 6, scope: !1356, inlinedAt: !2457)
!2464 = !DILocation(line: 177, column: 17, scope: !1356, inlinedAt: !2457)
!2465 = !DILocation(line: 178, column: 6, scope: !1356, inlinedAt: !2457)
!2466 = !DILocation(line: 178, column: 18, scope: !1356, inlinedAt: !2457)
!2467 = !DILocation(line: 1020, column: 10, scope: !2424)
!2468 = !DILocation(line: 1021, column: 1, scope: !2424)
!2469 = !DILocation(line: 1020, column: 3, scope: !2424)
!2470 = distinct !DISubprogram(name: "quotearg_custom", scope: !234, file: !234, line: 1024, type: !2471, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!65, !6, !6, !6}
!2473 = !{!2474, !2475, !2476}
!2474 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2470, file: !234, line: 1024, type: !6)
!2475 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2470, file: !234, line: 1024, type: !6)
!2476 = !DILocalVariable(name: "arg", arg: 3, scope: !2470, file: !234, line: 1025, type: !6)
!2477 = !DILocation(line: 0, scope: !2470)
!2478 = !DILocation(line: 0, scope: !2414, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1027, column: 10, scope: !2470)
!2480 = !DILocation(line: 0, scope: !2424, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 1009, column: 10, scope: !2414, inlinedAt: !2479)
!2482 = !DILocation(line: 1018, column: 3, scope: !2424, inlinedAt: !2481)
!2483 = !DILocation(line: 1018, column: 26, scope: !2424, inlinedAt: !2481)
!2484 = !DILocation(line: 1018, column: 30, scope: !2424, inlinedAt: !2481)
!2485 = !DILocation(line: 0, scope: !1356, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 1019, column: 3, scope: !2424, inlinedAt: !2481)
!2487 = !DILocation(line: 174, column: 6, scope: !1356, inlinedAt: !2486)
!2488 = !DILocation(line: 174, column: 12, scope: !1356, inlinedAt: !2486)
!2489 = !DILocation(line: 175, column: 8, scope: !1370, inlinedAt: !2486)
!2490 = !DILocation(line: 175, column: 19, scope: !1370, inlinedAt: !2486)
!2491 = !DILocation(line: 176, column: 5, scope: !1370, inlinedAt: !2486)
!2492 = !DILocation(line: 177, column: 6, scope: !1356, inlinedAt: !2486)
!2493 = !DILocation(line: 177, column: 17, scope: !1356, inlinedAt: !2486)
!2494 = !DILocation(line: 178, column: 6, scope: !1356, inlinedAt: !2486)
!2495 = !DILocation(line: 178, column: 18, scope: !1356, inlinedAt: !2486)
!2496 = !DILocation(line: 1020, column: 10, scope: !2424, inlinedAt: !2481)
!2497 = !DILocation(line: 1021, column: 1, scope: !2424, inlinedAt: !2481)
!2498 = !DILocation(line: 1027, column: 3, scope: !2470)
!2499 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !234, file: !234, line: 1031, type: !2500, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!65, !6, !6, !6, !32}
!2502 = !{!2503, !2504, !2505, !2506}
!2503 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2499, file: !234, line: 1031, type: !6)
!2504 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2499, file: !234, line: 1031, type: !6)
!2505 = !DILocalVariable(name: "arg", arg: 3, scope: !2499, file: !234, line: 1032, type: !6)
!2506 = !DILocalVariable(name: "argsize", arg: 4, scope: !2499, file: !234, line: 1032, type: !32)
!2507 = !DILocation(line: 0, scope: !2499)
!2508 = !DILocation(line: 0, scope: !2424, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 1034, column: 10, scope: !2499)
!2510 = !DILocation(line: 1018, column: 3, scope: !2424, inlinedAt: !2509)
!2511 = !DILocation(line: 1018, column: 26, scope: !2424, inlinedAt: !2509)
!2512 = !DILocation(line: 1018, column: 30, scope: !2424, inlinedAt: !2509)
!2513 = !DILocation(line: 0, scope: !1356, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 1019, column: 3, scope: !2424, inlinedAt: !2509)
!2515 = !DILocation(line: 174, column: 6, scope: !1356, inlinedAt: !2514)
!2516 = !DILocation(line: 174, column: 12, scope: !1356, inlinedAt: !2514)
!2517 = !DILocation(line: 175, column: 8, scope: !1370, inlinedAt: !2514)
!2518 = !DILocation(line: 175, column: 19, scope: !1370, inlinedAt: !2514)
!2519 = !DILocation(line: 176, column: 5, scope: !1370, inlinedAt: !2514)
!2520 = !DILocation(line: 177, column: 6, scope: !1356, inlinedAt: !2514)
!2521 = !DILocation(line: 177, column: 17, scope: !1356, inlinedAt: !2514)
!2522 = !DILocation(line: 178, column: 6, scope: !1356, inlinedAt: !2514)
!2523 = !DILocation(line: 178, column: 18, scope: !1356, inlinedAt: !2514)
!2524 = !DILocation(line: 1020, column: 10, scope: !2424, inlinedAt: !2509)
!2525 = !DILocation(line: 1021, column: 1, scope: !2424, inlinedAt: !2509)
!2526 = !DILocation(line: 1034, column: 3, scope: !2499)
!2527 = distinct !DISubprogram(name: "quote_n_mem", scope: !234, file: !234, line: 1049, type: !2528, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!6, !30, !6, !32}
!2530 = !{!2531, !2532, !2533}
!2531 = !DILocalVariable(name: "n", arg: 1, scope: !2527, file: !234, line: 1049, type: !30)
!2532 = !DILocalVariable(name: "arg", arg: 2, scope: !2527, file: !234, line: 1049, type: !6)
!2533 = !DILocalVariable(name: "argsize", arg: 3, scope: !2527, file: !234, line: 1049, type: !32)
!2534 = !DILocation(line: 0, scope: !2527)
!2535 = !DILocation(line: 1051, column: 10, scope: !2527)
!2536 = !DILocation(line: 1051, column: 3, scope: !2527)
!2537 = distinct !DISubprogram(name: "quote_mem", scope: !234, file: !234, line: 1055, type: !2538, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!6, !6, !32}
!2540 = !{!2541, !2542}
!2541 = !DILocalVariable(name: "arg", arg: 1, scope: !2537, file: !234, line: 1055, type: !6)
!2542 = !DILocalVariable(name: "argsize", arg: 2, scope: !2537, file: !234, line: 1055, type: !32)
!2543 = !DILocation(line: 0, scope: !2537)
!2544 = !DILocation(line: 0, scope: !2527, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 1057, column: 10, scope: !2537)
!2546 = !DILocation(line: 1051, column: 10, scope: !2527, inlinedAt: !2545)
!2547 = !DILocation(line: 1057, column: 3, scope: !2537)
!2548 = distinct !DISubprogram(name: "quote_n", scope: !234, file: !234, line: 1061, type: !2549, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!6, !30, !6}
!2551 = !{!2552, !2553}
!2552 = !DILocalVariable(name: "n", arg: 1, scope: !2548, file: !234, line: 1061, type: !30)
!2553 = !DILocalVariable(name: "arg", arg: 2, scope: !2548, file: !234, line: 1061, type: !6)
!2554 = !DILocation(line: 0, scope: !2548)
!2555 = !DILocation(line: 0, scope: !2527, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 1063, column: 10, scope: !2548)
!2557 = !DILocation(line: 1051, column: 10, scope: !2527, inlinedAt: !2556)
!2558 = !DILocation(line: 1063, column: 3, scope: !2548)
!2559 = distinct !DISubprogram(name: "quote", scope: !234, file: !234, line: 1067, type: !2560, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!6, !6}
!2562 = !{!2563}
!2563 = !DILocalVariable(name: "arg", arg: 1, scope: !2559, file: !234, line: 1067, type: !6)
!2564 = !DILocation(line: 0, scope: !2559)
!2565 = !DILocation(line: 0, scope: !2548, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1069, column: 10, scope: !2559)
!2567 = !DILocation(line: 0, scope: !2527, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 1063, column: 10, scope: !2548, inlinedAt: !2566)
!2569 = !DILocation(line: 1051, column: 10, scope: !2527, inlinedAt: !2568)
!2570 = !DILocation(line: 1069, column: 3, scope: !2559)
!2571 = distinct !DISubprogram(name: "version_etc_arn", scope: !384, file: !384, line: 61, type: !2572, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !2609)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !2574, !6, !6, !6, !2608, !32}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !2576)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2576, file: !61, line: 51, baseType: !30, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2576, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2576, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2576, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2576, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2576, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2576, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2576, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2576, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2576, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2576, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2576, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2576, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2576, file: !61, line: 70, baseType: !2592, size: 64, offset: 832)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2576, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2576, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2576, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2576, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2576, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2576, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2576, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2576, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2576, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2576, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2576, file: !61, line: 93, baseType: !2592, size: 64, offset: 1344)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2576, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2576, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2576, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2576, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615}
!2610 = !DILocalVariable(name: "stream", arg: 1, scope: !2571, file: !384, line: 61, type: !2574)
!2611 = !DILocalVariable(name: "command_name", arg: 2, scope: !2571, file: !384, line: 62, type: !6)
!2612 = !DILocalVariable(name: "package", arg: 3, scope: !2571, file: !384, line: 62, type: !6)
!2613 = !DILocalVariable(name: "version", arg: 4, scope: !2571, file: !384, line: 63, type: !6)
!2614 = !DILocalVariable(name: "authors", arg: 5, scope: !2571, file: !384, line: 64, type: !2608)
!2615 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2571, file: !384, line: 64, type: !32)
!2616 = !DILocation(line: 0, scope: !2571)
!2617 = !DILocation(line: 66, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2571, file: !384, line: 66, column: 7)
!2619 = !DILocation(line: 66, column: 7, scope: !2571)
!2620 = !DILocation(line: 67, column: 5, scope: !2618)
!2621 = !DILocation(line: 69, column: 5, scope: !2618)
!2622 = !DILocation(line: 83, column: 3, scope: !2571)
!2623 = !DILocation(line: 85, column: 3, scope: !2571)
!2624 = !DILocation(line: 88, column: 3, scope: !2571)
!2625 = !DILocation(line: 95, column: 3, scope: !2571)
!2626 = !DILocation(line: 97, column: 3, scope: !2571)
!2627 = !DILocation(line: 105, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2571, file: !384, line: 98, column: 5)
!2629 = !DILocation(line: 106, column: 7, scope: !2628)
!2630 = !DILocation(line: 109, column: 7, scope: !2628)
!2631 = !DILocation(line: 110, column: 7, scope: !2628)
!2632 = !DILocation(line: 113, column: 7, scope: !2628)
!2633 = !DILocation(line: 115, column: 7, scope: !2628)
!2634 = !DILocation(line: 120, column: 7, scope: !2628)
!2635 = !DILocation(line: 122, column: 7, scope: !2628)
!2636 = !DILocation(line: 127, column: 7, scope: !2628)
!2637 = !DILocation(line: 129, column: 7, scope: !2628)
!2638 = !DILocation(line: 134, column: 7, scope: !2628)
!2639 = !DILocation(line: 137, column: 7, scope: !2628)
!2640 = !DILocation(line: 142, column: 7, scope: !2628)
!2641 = !DILocation(line: 145, column: 7, scope: !2628)
!2642 = !DILocation(line: 150, column: 7, scope: !2628)
!2643 = !DILocation(line: 154, column: 7, scope: !2628)
!2644 = !DILocation(line: 159, column: 7, scope: !2628)
!2645 = !DILocation(line: 163, column: 7, scope: !2628)
!2646 = !DILocation(line: 170, column: 7, scope: !2628)
!2647 = !DILocation(line: 174, column: 7, scope: !2628)
!2648 = !DILocation(line: 176, column: 1, scope: !2571)
!2649 = distinct !DISubprogram(name: "version_etc_ar", scope: !384, file: !384, line: 183, type: !2650, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !2574, !6, !6, !6, !2608}
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658}
!2653 = !DILocalVariable(name: "stream", arg: 1, scope: !2649, file: !384, line: 183, type: !2574)
!2654 = !DILocalVariable(name: "command_name", arg: 2, scope: !2649, file: !384, line: 184, type: !6)
!2655 = !DILocalVariable(name: "package", arg: 3, scope: !2649, file: !384, line: 184, type: !6)
!2656 = !DILocalVariable(name: "version", arg: 4, scope: !2649, file: !384, line: 185, type: !6)
!2657 = !DILocalVariable(name: "authors", arg: 5, scope: !2649, file: !384, line: 185, type: !2608)
!2658 = !DILocalVariable(name: "n_authors", scope: !2649, file: !384, line: 187, type: !32)
!2659 = !DILocation(line: 0, scope: !2649)
!2660 = !DILocation(line: 189, column: 8, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2649, file: !384, line: 189, column: 3)
!2662 = !DILocation(line: 0, scope: !2661)
!2663 = !DILocation(line: 189, column: 23, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2661, file: !384, line: 189, column: 3)
!2665 = !DILocation(line: 189, column: 3, scope: !2661)
!2666 = !DILocation(line: 189, column: 52, scope: !2664)
!2667 = distinct !{!2667, !2665, !2668, !536}
!2668 = !DILocation(line: 190, column: 5, scope: !2661)
!2669 = !DILocation(line: 191, column: 3, scope: !2649)
!2670 = !DILocation(line: 192, column: 1, scope: !2649)
!2671 = distinct !DISubprogram(name: "version_etc_va", scope: !384, file: !384, line: 199, type: !2672, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !2685)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !2574, !6, !6, !6, !2674}
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 52, baseType: !2675)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !145, line: 32, baseType: !2676)
!2676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2677, baseType: !2678)
!2677 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !149, size: 256, elements: !2679)
!2679 = !{!2680, !2681, !2682, !2683, !2684}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2678, file: !2677, line: 192, baseType: !29, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2678, file: !2677, line: 192, baseType: !29, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2678, file: !2677, line: 192, baseType: !29, size: 64, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2678, file: !2677, line: 192, baseType: !30, size: 32, offset: 192)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2678, file: !2677, line: 192, baseType: !30, size: 32, offset: 224)
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691, !2692}
!2686 = !DILocalVariable(name: "stream", arg: 1, scope: !2671, file: !384, line: 199, type: !2574)
!2687 = !DILocalVariable(name: "command_name", arg: 2, scope: !2671, file: !384, line: 200, type: !6)
!2688 = !DILocalVariable(name: "package", arg: 3, scope: !2671, file: !384, line: 200, type: !6)
!2689 = !DILocalVariable(name: "version", arg: 4, scope: !2671, file: !384, line: 201, type: !6)
!2690 = !DILocalVariable(name: "authors", arg: 5, scope: !2671, file: !384, line: 201, type: !2674)
!2691 = !DILocalVariable(name: "n_authors", scope: !2671, file: !384, line: 203, type: !32)
!2692 = !DILocalVariable(name: "authtab", scope: !2671, file: !384, line: 204, type: !2693)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !261)
!2694 = !DILocation(line: 0, scope: !2671)
!2695 = !DILocation(line: 201, column: 46, scope: !2671)
!2696 = !DILocation(line: 204, column: 3, scope: !2671)
!2697 = !DILocation(line: 204, column: 15, scope: !2671)
!2698 = !DILocation(line: 208, column: 35, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !384, line: 206, column: 3)
!2700 = distinct !DILexicalBlock(scope: !2671, file: !384, line: 206, column: 3)
!2701 = !DILocation(line: 208, column: 14, scope: !2699)
!2702 = !DILocation(line: 208, column: 33, scope: !2699)
!2703 = !DILocation(line: 208, column: 67, scope: !2699)
!2704 = !DILocation(line: 206, column: 3, scope: !2700)
!2705 = !DILocation(line: 0, scope: !2700)
!2706 = !DILocation(line: 211, column: 3, scope: !2671)
!2707 = !DILocation(line: 213, column: 1, scope: !2671)
!2708 = distinct !DISubprogram(name: "version_etc", scope: !384, file: !384, line: 230, type: !2709, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{null, !2574, !6, !6, !6, null}
!2711 = !{!2712, !2713, !2714, !2715, !2716}
!2712 = !DILocalVariable(name: "stream", arg: 1, scope: !2708, file: !384, line: 230, type: !2574)
!2713 = !DILocalVariable(name: "command_name", arg: 2, scope: !2708, file: !384, line: 231, type: !6)
!2714 = !DILocalVariable(name: "package", arg: 3, scope: !2708, file: !384, line: 231, type: !6)
!2715 = !DILocalVariable(name: "version", arg: 4, scope: !2708, file: !384, line: 232, type: !6)
!2716 = !DILocalVariable(name: "authors", scope: !2708, file: !384, line: 234, type: !2674)
!2717 = !DILocation(line: 0, scope: !2708)
!2718 = !DILocation(line: 234, column: 3, scope: !2708)
!2719 = !DILocation(line: 234, column: 11, scope: !2708)
!2720 = !DILocation(line: 235, column: 3, scope: !2708)
!2721 = !DILocation(line: 236, column: 3, scope: !2708)
!2722 = !DILocation(line: 237, column: 3, scope: !2708)
!2723 = !DILocation(line: 238, column: 1, scope: !2708)
!2724 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !384, file: !384, line: 241, type: !170, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !562)
!2725 = !DILocation(line: 243, column: 3, scope: !2724)
!2726 = !DILocation(line: 248, column: 3, scope: !2724)
!2727 = !DILocation(line: 254, column: 3, scope: !2724)
!2728 = !DILocation(line: 259, column: 3, scope: !2724)
!2729 = !DILocation(line: 261, column: 1, scope: !2724)
!2730 = distinct !DISubprogram(name: "xnrealloc", scope: !2731, file: !2731, line: 147, type: !2732, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2734)
!2731 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!29, !29, !32, !32}
!2734 = !{!2735, !2736, !2737}
!2735 = !DILocalVariable(name: "p", arg: 1, scope: !2730, file: !2731, line: 147, type: !29)
!2736 = !DILocalVariable(name: "n", arg: 2, scope: !2730, file: !2731, line: 147, type: !32)
!2737 = !DILocalVariable(name: "s", arg: 3, scope: !2730, file: !2731, line: 147, type: !32)
!2738 = !DILocation(line: 0, scope: !2730)
!2739 = !DILocalVariable(name: "p", arg: 1, scope: !2740, file: !391, line: 83, type: !29)
!2740 = distinct !DISubprogram(name: "xreallocarray", scope: !391, file: !391, line: 83, type: !2732, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2741)
!2741 = !{!2739, !2742, !2743}
!2742 = !DILocalVariable(name: "n", arg: 2, scope: !2740, file: !391, line: 83, type: !32)
!2743 = !DILocalVariable(name: "s", arg: 3, scope: !2740, file: !391, line: 83, type: !32)
!2744 = !DILocation(line: 0, scope: !2740, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 149, column: 10, scope: !2730)
!2746 = !DILocation(line: 85, column: 25, scope: !2740, inlinedAt: !2745)
!2747 = !DILocalVariable(name: "p", arg: 1, scope: !2748, file: !391, line: 37, type: !29)
!2748 = distinct !DISubprogram(name: "check_nonnull", scope: !391, file: !391, line: 37, type: !2749, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!29, !29}
!2751 = !{!2747}
!2752 = !DILocation(line: 0, scope: !2748, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 85, column: 10, scope: !2740, inlinedAt: !2745)
!2754 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2753)
!2755 = distinct !DILexicalBlock(scope: !2748, file: !391, line: 39, column: 7)
!2756 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2753)
!2757 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2753)
!2758 = !DILocation(line: 149, column: 3, scope: !2730)
!2759 = !DILocation(line: 0, scope: !2740)
!2760 = !DILocation(line: 85, column: 25, scope: !2740)
!2761 = !DILocation(line: 0, scope: !2748, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 85, column: 10, scope: !2740)
!2763 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2762)
!2764 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2762)
!2765 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2762)
!2766 = !DILocation(line: 85, column: 3, scope: !2740)
!2767 = distinct !DISubprogram(name: "xmalloc", scope: !391, file: !391, line: 47, type: !2768, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!29, !32}
!2770 = !{!2771}
!2771 = !DILocalVariable(name: "s", arg: 1, scope: !2767, file: !391, line: 47, type: !32)
!2772 = !DILocation(line: 0, scope: !2767)
!2773 = !DILocation(line: 49, column: 25, scope: !2767)
!2774 = !DILocation(line: 0, scope: !2748, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 49, column: 10, scope: !2767)
!2776 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2775)
!2777 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2775)
!2778 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2775)
!2779 = !DILocation(line: 49, column: 3, scope: !2767)
!2780 = distinct !DISubprogram(name: "ximalloc", scope: !391, file: !391, line: 53, type: !2781, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!29, !410}
!2783 = !{!2784}
!2784 = !DILocalVariable(name: "s", arg: 1, scope: !2780, file: !391, line: 53, type: !410)
!2785 = !DILocation(line: 0, scope: !2780)
!2786 = !DILocalVariable(name: "s", arg: 1, scope: !2787, file: !2788, line: 55, type: !410)
!2787 = distinct !DISubprogram(name: "imalloc", scope: !2788, file: !2788, line: 55, type: !2781, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2789)
!2788 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2789 = !{!2786}
!2790 = !DILocation(line: 0, scope: !2787, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 55, column: 25, scope: !2780)
!2792 = !DILocation(line: 57, column: 26, scope: !2787, inlinedAt: !2791)
!2793 = !DILocation(line: 0, scope: !2748, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 55, column: 10, scope: !2780)
!2795 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2794)
!2796 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2794)
!2797 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2794)
!2798 = !DILocation(line: 55, column: 3, scope: !2780)
!2799 = distinct !DISubprogram(name: "xcharalloc", scope: !391, file: !391, line: 59, type: !2800, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!65, !32}
!2802 = !{!2803}
!2803 = !DILocalVariable(name: "n", arg: 1, scope: !2799, file: !391, line: 59, type: !32)
!2804 = !DILocation(line: 0, scope: !2799)
!2805 = !DILocation(line: 0, scope: !2767, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 61, column: 10, scope: !2799)
!2807 = !DILocation(line: 49, column: 25, scope: !2767, inlinedAt: !2806)
!2808 = !DILocation(line: 0, scope: !2748, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 49, column: 10, scope: !2767, inlinedAt: !2806)
!2810 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2809)
!2811 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2809)
!2812 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2809)
!2813 = !DILocation(line: 61, column: 3, scope: !2799)
!2814 = distinct !DISubprogram(name: "xrealloc", scope: !391, file: !391, line: 68, type: !2815, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!29, !29, !32}
!2817 = !{!2818, !2819}
!2818 = !DILocalVariable(name: "p", arg: 1, scope: !2814, file: !391, line: 68, type: !29)
!2819 = !DILocalVariable(name: "s", arg: 2, scope: !2814, file: !391, line: 68, type: !32)
!2820 = !DILocation(line: 0, scope: !2814)
!2821 = !DILocalVariable(name: "ptr", arg: 1, scope: !2822, file: !2823, line: 2057, type: !29)
!2822 = distinct !DISubprogram(name: "rpl_realloc", scope: !2823, file: !2823, line: 2057, type: !2815, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2824)
!2823 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2824 = !{!2821, !2825}
!2825 = !DILocalVariable(name: "size", arg: 2, scope: !2822, file: !2823, line: 2057, type: !32)
!2826 = !DILocation(line: 0, scope: !2822, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 70, column: 25, scope: !2814)
!2828 = !DILocation(line: 2059, column: 24, scope: !2822, inlinedAt: !2827)
!2829 = !DILocation(line: 2059, column: 10, scope: !2822, inlinedAt: !2827)
!2830 = !DILocation(line: 0, scope: !2748, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 70, column: 10, scope: !2814)
!2832 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2831)
!2833 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2831)
!2834 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2831)
!2835 = !DILocation(line: 70, column: 3, scope: !2814)
!2836 = distinct !DISubprogram(name: "xirealloc", scope: !391, file: !391, line: 74, type: !2837, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!29, !29, !410}
!2839 = !{!2840, !2841}
!2840 = !DILocalVariable(name: "p", arg: 1, scope: !2836, file: !391, line: 74, type: !29)
!2841 = !DILocalVariable(name: "s", arg: 2, scope: !2836, file: !391, line: 74, type: !410)
!2842 = !DILocation(line: 0, scope: !2836)
!2843 = !DILocalVariable(name: "p", arg: 1, scope: !2844, file: !2788, line: 66, type: !29)
!2844 = distinct !DISubprogram(name: "irealloc", scope: !2788, file: !2788, line: 66, type: !2837, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2845)
!2845 = !{!2843, !2846}
!2846 = !DILocalVariable(name: "s", arg: 2, scope: !2844, file: !2788, line: 66, type: !410)
!2847 = !DILocation(line: 0, scope: !2844, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 76, column: 25, scope: !2836)
!2849 = !DILocation(line: 0, scope: !2822, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 68, column: 26, scope: !2844, inlinedAt: !2848)
!2851 = !DILocation(line: 2059, column: 24, scope: !2822, inlinedAt: !2850)
!2852 = !DILocation(line: 2059, column: 10, scope: !2822, inlinedAt: !2850)
!2853 = !DILocation(line: 0, scope: !2748, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 76, column: 10, scope: !2836)
!2855 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2854)
!2856 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2854)
!2857 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2854)
!2858 = !DILocation(line: 76, column: 3, scope: !2836)
!2859 = distinct !DISubprogram(name: "xireallocarray", scope: !391, file: !391, line: 89, type: !2860, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!29, !29, !410, !410}
!2862 = !{!2863, !2864, !2865}
!2863 = !DILocalVariable(name: "p", arg: 1, scope: !2859, file: !391, line: 89, type: !29)
!2864 = !DILocalVariable(name: "n", arg: 2, scope: !2859, file: !391, line: 89, type: !410)
!2865 = !DILocalVariable(name: "s", arg: 3, scope: !2859, file: !391, line: 89, type: !410)
!2866 = !DILocation(line: 0, scope: !2859)
!2867 = !DILocalVariable(name: "p", arg: 1, scope: !2868, file: !2788, line: 98, type: !29)
!2868 = distinct !DISubprogram(name: "ireallocarray", scope: !2788, file: !2788, line: 98, type: !2860, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2869)
!2869 = !{!2867, !2870, !2871}
!2870 = !DILocalVariable(name: "n", arg: 2, scope: !2868, file: !2788, line: 98, type: !410)
!2871 = !DILocalVariable(name: "s", arg: 3, scope: !2868, file: !2788, line: 98, type: !410)
!2872 = !DILocation(line: 0, scope: !2868, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 91, column: 25, scope: !2859)
!2874 = !DILocation(line: 101, column: 13, scope: !2868, inlinedAt: !2873)
!2875 = !DILocation(line: 0, scope: !2748, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 91, column: 10, scope: !2859)
!2877 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2876)
!2878 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2876)
!2879 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2876)
!2880 = !DILocation(line: 91, column: 3, scope: !2859)
!2881 = distinct !DISubprogram(name: "xnmalloc", scope: !391, file: !391, line: 98, type: !2882, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!29, !32, !32}
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "n", arg: 1, scope: !2881, file: !391, line: 98, type: !32)
!2886 = !DILocalVariable(name: "s", arg: 2, scope: !2881, file: !391, line: 98, type: !32)
!2887 = !DILocation(line: 0, scope: !2881)
!2888 = !DILocation(line: 0, scope: !2740, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 100, column: 10, scope: !2881)
!2890 = !DILocation(line: 85, column: 25, scope: !2740, inlinedAt: !2889)
!2891 = !DILocation(line: 0, scope: !2748, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 85, column: 10, scope: !2740, inlinedAt: !2889)
!2893 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2892)
!2894 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2892)
!2895 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2892)
!2896 = !DILocation(line: 100, column: 3, scope: !2881)
!2897 = distinct !DISubprogram(name: "xinmalloc", scope: !391, file: !391, line: 104, type: !2898, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!29, !410, !410}
!2900 = !{!2901, !2902}
!2901 = !DILocalVariable(name: "n", arg: 1, scope: !2897, file: !391, line: 104, type: !410)
!2902 = !DILocalVariable(name: "s", arg: 2, scope: !2897, file: !391, line: 104, type: !410)
!2903 = !DILocation(line: 0, scope: !2897)
!2904 = !DILocation(line: 0, scope: !2859, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 106, column: 10, scope: !2897)
!2906 = !DILocation(line: 0, scope: !2868, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 91, column: 25, scope: !2859, inlinedAt: !2905)
!2908 = !DILocation(line: 101, column: 13, scope: !2868, inlinedAt: !2907)
!2909 = !DILocation(line: 0, scope: !2748, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 91, column: 10, scope: !2859, inlinedAt: !2905)
!2911 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2910)
!2912 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2910)
!2913 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2910)
!2914 = !DILocation(line: 106, column: 3, scope: !2897)
!2915 = distinct !DISubprogram(name: "x2realloc", scope: !391, file: !391, line: 116, type: !2916, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!29, !29, !397}
!2918 = !{!2919, !2920}
!2919 = !DILocalVariable(name: "p", arg: 1, scope: !2915, file: !391, line: 116, type: !29)
!2920 = !DILocalVariable(name: "ps", arg: 2, scope: !2915, file: !391, line: 116, type: !397)
!2921 = !DILocation(line: 0, scope: !2915)
!2922 = !DILocation(line: 0, scope: !394, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 118, column: 10, scope: !2915)
!2924 = !DILocation(line: 178, column: 14, scope: !394, inlinedAt: !2923)
!2925 = !DILocation(line: 180, column: 9, scope: !2926, inlinedAt: !2923)
!2926 = distinct !DILexicalBlock(scope: !394, file: !391, line: 180, column: 7)
!2927 = !DILocation(line: 180, column: 7, scope: !394, inlinedAt: !2923)
!2928 = !DILocation(line: 182, column: 13, scope: !2929, inlinedAt: !2923)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !391, line: 182, column: 11)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !391, line: 181, column: 5)
!2931 = !DILocation(line: 182, column: 11, scope: !2930, inlinedAt: !2923)
!2932 = !DILocation(line: 197, column: 11, scope: !2933, inlinedAt: !2923)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !391, line: 197, column: 11)
!2934 = distinct !DILexicalBlock(scope: !2926, file: !391, line: 195, column: 5)
!2935 = !DILocation(line: 197, column: 11, scope: !2934, inlinedAt: !2923)
!2936 = !DILocation(line: 198, column: 9, scope: !2933, inlinedAt: !2923)
!2937 = !DILocation(line: 0, scope: !2740, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 201, column: 7, scope: !394, inlinedAt: !2923)
!2939 = !DILocation(line: 85, column: 25, scope: !2740, inlinedAt: !2938)
!2940 = !DILocation(line: 0, scope: !2748, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 85, column: 10, scope: !2740, inlinedAt: !2938)
!2942 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2941)
!2943 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2941)
!2944 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2941)
!2945 = !DILocation(line: 202, column: 7, scope: !394, inlinedAt: !2923)
!2946 = !DILocation(line: 118, column: 3, scope: !2915)
!2947 = !DILocation(line: 0, scope: !394)
!2948 = !DILocation(line: 178, column: 14, scope: !394)
!2949 = !DILocation(line: 180, column: 9, scope: !2926)
!2950 = !DILocation(line: 180, column: 7, scope: !394)
!2951 = !DILocation(line: 182, column: 13, scope: !2929)
!2952 = !DILocation(line: 182, column: 11, scope: !2930)
!2953 = !DILocation(line: 190, column: 30, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2929, file: !391, line: 183, column: 9)
!2955 = !DILocation(line: 191, column: 16, scope: !2954)
!2956 = !DILocation(line: 191, column: 13, scope: !2954)
!2957 = !DILocation(line: 192, column: 9, scope: !2954)
!2958 = !DILocation(line: 197, column: 11, scope: !2933)
!2959 = !DILocation(line: 197, column: 11, scope: !2934)
!2960 = !DILocation(line: 198, column: 9, scope: !2933)
!2961 = !DILocation(line: 0, scope: !2740, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 201, column: 7, scope: !394)
!2963 = !DILocation(line: 85, column: 25, scope: !2740, inlinedAt: !2962)
!2964 = !DILocation(line: 0, scope: !2748, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 85, column: 10, scope: !2740, inlinedAt: !2962)
!2966 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !2965)
!2967 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !2965)
!2968 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !2965)
!2969 = !DILocation(line: 202, column: 7, scope: !394)
!2970 = !DILocation(line: 203, column: 3, scope: !394)
!2971 = !DILocation(line: 0, scope: !406)
!2972 = !DILocation(line: 230, column: 14, scope: !406)
!2973 = !DILocation(line: 238, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !406, file: !391, line: 238, column: 7)
!2975 = !DILocation(line: 238, column: 7, scope: !406)
!2976 = !DILocation(line: 240, column: 9, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !406, file: !391, line: 240, column: 7)
!2978 = !DILocation(line: 240, column: 18, scope: !2977)
!2979 = !DILocation(line: 253, column: 8, scope: !406)
!2980 = !DILocation(line: 258, column: 27, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !391, line: 257, column: 5)
!2982 = distinct !DILexicalBlock(scope: !406, file: !391, line: 256, column: 7)
!2983 = !DILocation(line: 259, column: 32, scope: !2981)
!2984 = !DILocation(line: 260, column: 5, scope: !2981)
!2985 = !DILocation(line: 262, column: 9, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !406, file: !391, line: 262, column: 7)
!2987 = !DILocation(line: 262, column: 7, scope: !406)
!2988 = !DILocation(line: 263, column: 9, scope: !2986)
!2989 = !DILocation(line: 263, column: 5, scope: !2986)
!2990 = !DILocation(line: 264, column: 9, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !406, file: !391, line: 264, column: 7)
!2992 = !DILocation(line: 264, column: 14, scope: !2991)
!2993 = !DILocation(line: 265, column: 7, scope: !2991)
!2994 = !DILocation(line: 265, column: 11, scope: !2991)
!2995 = !DILocation(line: 266, column: 11, scope: !2991)
!2996 = !DILocation(line: 266, column: 26, scope: !2991)
!2997 = !DILocation(line: 267, column: 14, scope: !2991)
!2998 = !DILocation(line: 264, column: 7, scope: !406)
!2999 = !DILocation(line: 268, column: 5, scope: !2991)
!3000 = !DILocation(line: 0, scope: !2814, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 269, column: 8, scope: !406)
!3002 = !DILocation(line: 0, scope: !2822, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 70, column: 25, scope: !2814, inlinedAt: !3001)
!3004 = !DILocation(line: 2059, column: 24, scope: !2822, inlinedAt: !3003)
!3005 = !DILocation(line: 2059, column: 10, scope: !2822, inlinedAt: !3003)
!3006 = !DILocation(line: 0, scope: !2748, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 70, column: 10, scope: !2814, inlinedAt: !3001)
!3008 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !3007)
!3009 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !3007)
!3010 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !3007)
!3011 = !DILocation(line: 270, column: 7, scope: !406)
!3012 = !DILocation(line: 271, column: 3, scope: !406)
!3013 = distinct !DISubprogram(name: "xzalloc", scope: !391, file: !391, line: 279, type: !2768, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !3014)
!3014 = !{!3015}
!3015 = !DILocalVariable(name: "s", arg: 1, scope: !3013, file: !391, line: 279, type: !32)
!3016 = !DILocation(line: 0, scope: !3013)
!3017 = !DILocalVariable(name: "n", arg: 1, scope: !3018, file: !391, line: 294, type: !32)
!3018 = distinct !DISubprogram(name: "xcalloc", scope: !391, file: !391, line: 294, type: !2882, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !3019)
!3019 = !{!3017, !3020}
!3020 = !DILocalVariable(name: "s", arg: 2, scope: !3018, file: !391, line: 294, type: !32)
!3021 = !DILocation(line: 0, scope: !3018, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 281, column: 10, scope: !3013)
!3023 = !DILocation(line: 296, column: 25, scope: !3018, inlinedAt: !3022)
!3024 = !DILocation(line: 0, scope: !2748, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 296, column: 10, scope: !3018, inlinedAt: !3022)
!3026 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !3025)
!3027 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !3025)
!3028 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !3025)
!3029 = !DILocation(line: 281, column: 3, scope: !3013)
!3030 = !DILocation(line: 0, scope: !3018)
!3031 = !DILocation(line: 296, column: 25, scope: !3018)
!3032 = !DILocation(line: 0, scope: !2748, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 296, column: 10, scope: !3018)
!3034 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !3033)
!3035 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !3033)
!3036 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !3033)
!3037 = !DILocation(line: 296, column: 3, scope: !3018)
!3038 = distinct !DISubprogram(name: "xizalloc", scope: !391, file: !391, line: 285, type: !2781, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !3039)
!3039 = !{!3040}
!3040 = !DILocalVariable(name: "s", arg: 1, scope: !3038, file: !391, line: 285, type: !410)
!3041 = !DILocation(line: 0, scope: !3038)
!3042 = !DILocalVariable(name: "n", arg: 1, scope: !3043, file: !391, line: 300, type: !410)
!3043 = distinct !DISubprogram(name: "xicalloc", scope: !391, file: !391, line: 300, type: !2898, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !3044)
!3044 = !{!3042, !3045}
!3045 = !DILocalVariable(name: "s", arg: 2, scope: !3043, file: !391, line: 300, type: !410)
!3046 = !DILocation(line: 0, scope: !3043, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 287, column: 10, scope: !3038)
!3048 = !DILocalVariable(name: "n", arg: 1, scope: !3049, file: !2788, line: 77, type: !410)
!3049 = distinct !DISubprogram(name: "icalloc", scope: !2788, file: !2788, line: 77, type: !2898, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !3050)
!3050 = !{!3048, !3051}
!3051 = !DILocalVariable(name: "s", arg: 2, scope: !3049, file: !2788, line: 77, type: !410)
!3052 = !DILocation(line: 0, scope: !3049, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 302, column: 25, scope: !3043, inlinedAt: !3047)
!3054 = !DILocation(line: 91, column: 10, scope: !3049, inlinedAt: !3053)
!3055 = !DILocation(line: 0, scope: !2748, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 302, column: 10, scope: !3043, inlinedAt: !3047)
!3057 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !3056)
!3058 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !3056)
!3059 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !3056)
!3060 = !DILocation(line: 287, column: 3, scope: !3038)
!3061 = !DILocation(line: 0, scope: !3043)
!3062 = !DILocation(line: 0, scope: !3049, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 302, column: 25, scope: !3043)
!3064 = !DILocation(line: 91, column: 10, scope: !3049, inlinedAt: !3063)
!3065 = !DILocation(line: 0, scope: !2748, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 302, column: 10, scope: !3043)
!3067 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !3066)
!3068 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !3066)
!3069 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !3066)
!3070 = !DILocation(line: 302, column: 3, scope: !3043)
!3071 = distinct !DISubprogram(name: "xmemdup", scope: !391, file: !391, line: 310, type: !3072, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!29, !688, !32}
!3074 = !{!3075, !3076}
!3075 = !DILocalVariable(name: "p", arg: 1, scope: !3071, file: !391, line: 310, type: !688)
!3076 = !DILocalVariable(name: "s", arg: 2, scope: !3071, file: !391, line: 310, type: !32)
!3077 = !DILocation(line: 0, scope: !3071)
!3078 = !DILocation(line: 0, scope: !2767, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 312, column: 18, scope: !3071)
!3080 = !DILocation(line: 49, column: 25, scope: !2767, inlinedAt: !3079)
!3081 = !DILocation(line: 0, scope: !2748, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 49, column: 10, scope: !2767, inlinedAt: !3079)
!3083 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !3082)
!3084 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !3082)
!3085 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !3082)
!3086 = !DILocalVariable(name: "__dest", arg: 1, scope: !3087, file: !1258, line: 26, type: !3090)
!3087 = distinct !DISubprogram(name: "memcpy", scope: !1258, file: !1258, line: 26, type: !3088, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !3091)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!29, !3090, !687, !32}
!3090 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!3091 = !{!3086, !3092, !3093}
!3092 = !DILocalVariable(name: "__src", arg: 2, scope: !3087, file: !1258, line: 26, type: !687)
!3093 = !DILocalVariable(name: "__len", arg: 3, scope: !3087, file: !1258, line: 26, type: !32)
!3094 = !DILocation(line: 0, scope: !3087, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 312, column: 10, scope: !3071)
!3096 = !DILocation(line: 29, column: 10, scope: !3087, inlinedAt: !3095)
!3097 = !DILocation(line: 312, column: 3, scope: !3071)
!3098 = distinct !DISubprogram(name: "ximemdup", scope: !391, file: !391, line: 316, type: !3099, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!29, !688, !410}
!3101 = !{!3102, !3103}
!3102 = !DILocalVariable(name: "p", arg: 1, scope: !3098, file: !391, line: 316, type: !688)
!3103 = !DILocalVariable(name: "s", arg: 2, scope: !3098, file: !391, line: 316, type: !410)
!3104 = !DILocation(line: 0, scope: !3098)
!3105 = !DILocation(line: 0, scope: !2780, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 318, column: 18, scope: !3098)
!3107 = !DILocation(line: 0, scope: !2787, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 55, column: 25, scope: !2780, inlinedAt: !3106)
!3109 = !DILocation(line: 57, column: 26, scope: !2787, inlinedAt: !3108)
!3110 = !DILocation(line: 0, scope: !2748, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 55, column: 10, scope: !2780, inlinedAt: !3106)
!3112 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !3111)
!3113 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !3111)
!3114 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !3111)
!3115 = !DILocation(line: 0, scope: !3087, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 318, column: 10, scope: !3098)
!3117 = !DILocation(line: 29, column: 10, scope: !3087, inlinedAt: !3116)
!3118 = !DILocation(line: 318, column: 3, scope: !3098)
!3119 = distinct !DISubprogram(name: "ximemdup0", scope: !391, file: !391, line: 325, type: !3120, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!65, !688, !410}
!3122 = !{!3123, !3124, !3125}
!3123 = !DILocalVariable(name: "p", arg: 1, scope: !3119, file: !391, line: 325, type: !688)
!3124 = !DILocalVariable(name: "s", arg: 2, scope: !3119, file: !391, line: 325, type: !410)
!3125 = !DILocalVariable(name: "result", scope: !3119, file: !391, line: 327, type: !65)
!3126 = !DILocation(line: 0, scope: !3119)
!3127 = !DILocation(line: 327, column: 30, scope: !3119)
!3128 = !DILocation(line: 0, scope: !2780, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 327, column: 18, scope: !3119)
!3130 = !DILocation(line: 0, scope: !2787, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 55, column: 25, scope: !2780, inlinedAt: !3129)
!3132 = !DILocation(line: 57, column: 26, scope: !2787, inlinedAt: !3131)
!3133 = !DILocation(line: 0, scope: !2748, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 55, column: 10, scope: !2780, inlinedAt: !3129)
!3135 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !3134)
!3136 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !3134)
!3137 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !3134)
!3138 = !DILocation(line: 328, column: 3, scope: !3119)
!3139 = !DILocation(line: 328, column: 13, scope: !3119)
!3140 = !DILocation(line: 0, scope: !3087, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 329, column: 10, scope: !3119)
!3142 = !DILocation(line: 29, column: 10, scope: !3087, inlinedAt: !3141)
!3143 = !DILocation(line: 329, column: 3, scope: !3119)
!3144 = distinct !DISubprogram(name: "xstrdup", scope: !391, file: !391, line: 335, type: !682, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !3145)
!3145 = !{!3146}
!3146 = !DILocalVariable(name: "string", arg: 1, scope: !3144, file: !391, line: 335, type: !6)
!3147 = !DILocation(line: 0, scope: !3144)
!3148 = !DILocation(line: 337, column: 27, scope: !3144)
!3149 = !DILocation(line: 337, column: 43, scope: !3144)
!3150 = !DILocation(line: 0, scope: !3071, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 337, column: 10, scope: !3144)
!3152 = !DILocation(line: 0, scope: !2767, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 312, column: 18, scope: !3071, inlinedAt: !3151)
!3154 = !DILocation(line: 49, column: 25, scope: !2767, inlinedAt: !3153)
!3155 = !DILocation(line: 0, scope: !2748, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 49, column: 10, scope: !2767, inlinedAt: !3153)
!3157 = !DILocation(line: 39, column: 8, scope: !2755, inlinedAt: !3156)
!3158 = !DILocation(line: 39, column: 7, scope: !2748, inlinedAt: !3156)
!3159 = !DILocation(line: 40, column: 5, scope: !2755, inlinedAt: !3156)
!3160 = !DILocation(line: 0, scope: !3087, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 312, column: 10, scope: !3071, inlinedAt: !3151)
!3162 = !DILocation(line: 29, column: 10, scope: !3087, inlinedAt: !3161)
!3163 = !DILocation(line: 337, column: 3, scope: !3144)
!3164 = distinct !DISubprogram(name: "xalloc_die", scope: !425, file: !425, line: 32, type: !170, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3165)
!3165 = !{!3166}
!3166 = !DILocalVariable(name: "__errstatus", scope: !3167, file: !425, line: 34, type: !357)
!3167 = distinct !DILexicalBlock(scope: !3164, file: !425, line: 34, column: 3)
!3168 = !DILocation(line: 34, column: 3, scope: !3167)
!3169 = !DILocation(line: 0, scope: !3167)
!3170 = !DILocation(line: 40, column: 3, scope: !3164)
!3171 = distinct !DISubprogram(name: "xnanosleep", scope: !427, file: !427, line: 40, type: !3172, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!30, !698}
!3174 = !{!3175, !3176}
!3175 = !DILocalVariable(name: "seconds", arg: 1, scope: !3171, file: !427, line: 40, type: !698)
!3176 = !DILocalVariable(name: "ts_sleep", scope: !3171, file: !427, line: 53, type: !3177)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3178, line: 11, size: 128, elements: !3179)
!3178 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3179 = !{!3180, !3181}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3177, file: !3178, line: 16, baseType: !431, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3177, file: !3178, line: 21, baseType: !3182, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !85, line: 197, baseType: !86)
!3183 = !DILocation(line: 0, scope: !3171)
!3184 = !DILocation(line: 43, column: 35, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3171, file: !427, line: 43, column: 7)
!3186 = !DILocation(line: 43, column: 7, scope: !3171)
!3187 = !DILocation(line: 46, column: 9, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3185, file: !427, line: 44, column: 5)
!3189 = !DILocation(line: 47, column: 14, scope: !3188)
!3190 = !DILocation(line: 47, column: 20, scope: !3188)
!3191 = distinct !{!3191, !3192, !3193, !536}
!3192 = !DILocation(line: 45, column: 7, scope: !3188)
!3193 = !DILocation(line: 47, column: 28, scope: !3188)
!3194 = !DILocation(line: 53, column: 3, scope: !3171)
!3195 = !DILocation(line: 53, column: 19, scope: !3171)
!3196 = !DILocation(line: 53, column: 30, scope: !3171)
!3197 = !DILocation(line: 68, column: 13, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !427, line: 56, column: 5)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !427, line: 55, column: 3)
!3200 = distinct !DILexicalBlock(scope: !3171, file: !427, line: 55, column: 3)
!3201 = !DILocation(line: 69, column: 11, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3198, file: !427, line: 69, column: 11)
!3203 = !DILocation(line: 69, column: 44, scope: !3202)
!3204 = !DILocation(line: 69, column: 11, scope: !3198)
!3205 = !DILocation(line: 71, column: 11, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3198, file: !427, line: 71, column: 11)
!3207 = !DILocation(line: 71, column: 26, scope: !3206)
!3208 = distinct !{!3208, !3209, !3210}
!3209 = !DILocation(line: 55, column: 3, scope: !3200)
!3210 = !DILocation(line: 73, column: 5, scope: !3200)
!3211 = !DILocation(line: 76, column: 1, scope: !3171)
!3212 = !DISubprogram(name: "pause", scope: !3213, file: !3213, line: 489, type: !3214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!3213 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!30}
!3216 = distinct !DISubprogram(name: "c_strtod", scope: !337, file: !337, line: 102, type: !3217, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!698, !6, !693}
!3219 = !{!3220, !3221, !3222, !3223}
!3220 = !DILocalVariable(name: "nptr", arg: 1, scope: !3216, file: !337, line: 102, type: !6)
!3221 = !DILocalVariable(name: "endptr", arg: 2, scope: !3216, file: !337, line: 102, type: !693)
!3222 = !DILocalVariable(name: "r", scope: !3216, file: !337, line: 104, type: !698)
!3223 = !DILocalVariable(name: "locale", scope: !3216, file: !337, line: 108, type: !339)
!3224 = !DILocation(line: 0, scope: !3216)
!3225 = !DILocation(line: 65, column: 8, scope: !3226, inlinedAt: !3230)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !337, line: 65, column: 7)
!3227 = distinct !DISubprogram(name: "c_locale", scope: !337, file: !337, line: 63, type: !3228, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !562)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!339}
!3230 = distinct !DILocation(line: 108, column: 21, scope: !3216)
!3231 = !DILocation(line: 65, column: 7, scope: !3227, inlinedAt: !3230)
!3232 = !DILocation(line: 66, column: 22, scope: !3226, inlinedAt: !3230)
!3233 = !DILocation(line: 66, column: 20, scope: !3226, inlinedAt: !3230)
!3234 = !DILocation(line: 66, column: 5, scope: !3226, inlinedAt: !3230)
!3235 = !DILocation(line: 67, column: 10, scope: !3227, inlinedAt: !3230)
!3236 = !DILocation(line: 109, column: 8, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3216, file: !337, line: 109, column: 7)
!3238 = !DILocation(line: 109, column: 7, scope: !3216)
!3239 = !DILocation(line: 111, column: 11, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !337, line: 111, column: 11)
!3241 = distinct !DILexicalBlock(scope: !3237, file: !337, line: 110, column: 5)
!3242 = !DILocation(line: 111, column: 11, scope: !3241)
!3243 = !DILocation(line: 112, column: 17, scope: !3240)
!3244 = !DILocation(line: 112, column: 9, scope: !3240)
!3245 = !DILocation(line: 118, column: 7, scope: !3216)
!3246 = !DILocation(line: 342, column: 3, scope: !3216)
!3247 = !DILocation(line: 343, column: 1, scope: !3216)
!3248 = !DISubprogram(name: "newlocale", scope: !672, file: !672, line: 141, type: !3249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!339, !30, !6, !339}
!3251 = !DISubprogram(name: "strtod_l", scope: !681, file: !681, line: 296, type: !3252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!698, !678, !806, !339}
!3254 = distinct !DISubprogram(name: "close_stream", scope: !433, file: !433, line: 55, type: !3255, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3291)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!30, !3257}
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3259)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3259, file: !61, line: 51, baseType: !30, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3259, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3259, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3259, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3259, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3259, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3259, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3259, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3259, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3259, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3259, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3259, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3259, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3259, file: !61, line: 70, baseType: !3275, size: 64, offset: 832)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3259, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3259, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3259, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3259, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3259, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3259, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3259, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3259, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3259, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3259, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3259, file: !61, line: 93, baseType: !3275, size: 64, offset: 1344)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3259, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3259, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3259, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3259, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3291 = !{!3292, !3293, !3295, !3296}
!3292 = !DILocalVariable(name: "stream", arg: 1, scope: !3254, file: !433, line: 55, type: !3257)
!3293 = !DILocalVariable(name: "some_pending", scope: !3254, file: !433, line: 57, type: !3294)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3295 = !DILocalVariable(name: "prev_fail", scope: !3254, file: !433, line: 58, type: !3294)
!3296 = !DILocalVariable(name: "fclose_fail", scope: !3254, file: !433, line: 59, type: !3294)
!3297 = !DILocation(line: 0, scope: !3254)
!3298 = !DILocation(line: 57, column: 30, scope: !3254)
!3299 = !DILocalVariable(name: "__stream", arg: 1, scope: !3300, file: !1015, line: 135, type: !3257)
!3300 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1015, file: !1015, line: 135, type: !3255, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3301)
!3301 = !{!3299}
!3302 = !DILocation(line: 0, scope: !3300, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 58, column: 27, scope: !3254)
!3304 = !DILocation(line: 137, column: 10, scope: !3300, inlinedAt: !3303)
!3305 = !{!1024, !566, i64 0}
!3306 = !DILocation(line: 58, column: 43, scope: !3254)
!3307 = !DILocation(line: 59, column: 29, scope: !3254)
!3308 = !DILocation(line: 59, column: 45, scope: !3254)
!3309 = !DILocation(line: 69, column: 17, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3254, file: !433, line: 69, column: 7)
!3311 = !DILocation(line: 57, column: 50, scope: !3254)
!3312 = !DILocation(line: 69, column: 33, scope: !3310)
!3313 = !DILocation(line: 69, column: 53, scope: !3310)
!3314 = !DILocation(line: 69, column: 59, scope: !3310)
!3315 = !DILocation(line: 69, column: 7, scope: !3254)
!3316 = !DILocation(line: 71, column: 11, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3310, file: !433, line: 70, column: 5)
!3318 = !DILocation(line: 72, column: 9, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3317, file: !433, line: 71, column: 11)
!3320 = !DILocation(line: 72, column: 15, scope: !3319)
!3321 = !DILocation(line: 77, column: 1, scope: !3254)
!3322 = distinct !DISubprogram(name: "dtotimespec", scope: !435, file: !435, line: 30, type: !3323, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3329)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!3325, !698}
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3178, line: 11, size: 128, elements: !3326)
!3326 = !{!3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3325, file: !3178, line: 16, baseType: !431, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3325, file: !3178, line: 21, baseType: !3182, size: 64, offset: 64)
!3329 = !{!3330, !3331, !3335, !3336}
!3330 = !DILocalVariable(name: "sec", arg: 1, scope: !3322, file: !435, line: 30, type: !698)
!3331 = !DILocalVariable(name: "s", scope: !3332, file: !435, line: 38, type: !429)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !435, line: 37, column: 5)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !435, line: 34, column: 12)
!3334 = distinct !DILexicalBlock(scope: !3322, file: !435, line: 32, column: 7)
!3335 = !DILocalVariable(name: "frac", scope: !3332, file: !435, line: 39, type: !698)
!3336 = !DILocalVariable(name: "ns", scope: !3332, file: !435, line: 40, type: !86)
!3337 = !DILocation(line: 0, scope: !3322)
!3338 = !DILocation(line: 32, column: 32, scope: !3334)
!3339 = !DILocation(line: 32, column: 7, scope: !3322)
!3340 = !DILocation(line: 34, column: 19, scope: !3333)
!3341 = !DILocation(line: 34, column: 12, scope: !3334)
!3342 = !DILocation(line: 38, column: 18, scope: !3332)
!3343 = !DILocation(line: 0, scope: !3332)
!3344 = !DILocation(line: 39, column: 42, scope: !3332)
!3345 = !DILocation(line: 39, column: 40, scope: !3332)
!3346 = !DILocation(line: 39, column: 33, scope: !3332)
!3347 = !DILocation(line: 40, column: 17, scope: !3332)
!3348 = !DILocation(line: 41, column: 13, scope: !3332)
!3349 = !DILocation(line: 41, column: 16, scope: !3332)
!3350 = !DILocation(line: 41, column: 10, scope: !3332)
!3351 = !DILocation(line: 42, column: 15, scope: !3332)
!3352 = !DILocation(line: 42, column: 9, scope: !3332)
!3353 = !DILocation(line: 45, column: 14, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3332, file: !435, line: 45, column: 11)
!3355 = !DILocation(line: 45, column: 11, scope: !3332)
!3356 = !DILocalVariable(name: "s", arg: 1, scope: !3357, file: !438, line: 56, type: !429)
!3357 = distinct !DISubprogram(name: "make_timespec", scope: !438, file: !438, line: 56, type: !3358, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!3325, !429, !86}
!3360 = !{!3356, !3361}
!3361 = !DILocalVariable(name: "ns", arg: 2, scope: !3357, file: !438, line: 56, type: !86)
!3362 = !DILocation(line: 0, scope: !3357, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 51, column: 14, scope: !3332)
!3364 = !DILocation(line: 58, column: 3, scope: !3357, inlinedAt: !3363)
!3365 = !DILocation(line: 53, column: 1, scope: !3322)
!3366 = distinct !DISubprogram(name: "rpl_fclose", scope: !442, file: !442, line: 58, type: !3367, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3403)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!30, !3369}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3371, file: !61, line: 51, baseType: !30, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3371, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3371, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3371, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3371, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3371, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3371, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3371, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3371, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3371, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3371, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3371, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3371, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3371, file: !61, line: 70, baseType: !3387, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3371, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3371, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3371, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3371, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3371, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3371, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3371, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3371, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3371, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3371, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3371, file: !61, line: 93, baseType: !3387, size: 64, offset: 1344)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3371, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3371, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3371, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3371, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3403 = !{!3404, !3405, !3406, !3407}
!3404 = !DILocalVariable(name: "fp", arg: 1, scope: !3366, file: !442, line: 58, type: !3369)
!3405 = !DILocalVariable(name: "saved_errno", scope: !3366, file: !442, line: 60, type: !30)
!3406 = !DILocalVariable(name: "fd", scope: !3366, file: !442, line: 63, type: !30)
!3407 = !DILocalVariable(name: "result", scope: !3366, file: !442, line: 74, type: !30)
!3408 = !DILocation(line: 0, scope: !3366)
!3409 = !DILocation(line: 63, column: 12, scope: !3366)
!3410 = !DILocation(line: 64, column: 10, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3366, file: !442, line: 64, column: 7)
!3412 = !DILocation(line: 64, column: 7, scope: !3366)
!3413 = !DILocation(line: 65, column: 12, scope: !3411)
!3414 = !DILocation(line: 65, column: 5, scope: !3411)
!3415 = !DILocation(line: 70, column: 9, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3366, file: !442, line: 70, column: 7)
!3417 = !DILocation(line: 70, column: 23, scope: !3416)
!3418 = !DILocation(line: 70, column: 33, scope: !3416)
!3419 = !DILocation(line: 70, column: 26, scope: !3416)
!3420 = !DILocation(line: 70, column: 59, scope: !3416)
!3421 = !DILocation(line: 71, column: 7, scope: !3416)
!3422 = !DILocation(line: 71, column: 10, scope: !3416)
!3423 = !DILocation(line: 70, column: 7, scope: !3366)
!3424 = !DILocation(line: 100, column: 12, scope: !3366)
!3425 = !DILocation(line: 105, column: 7, scope: !3366)
!3426 = !DILocation(line: 72, column: 19, scope: !3416)
!3427 = !DILocation(line: 105, column: 19, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3366, file: !442, line: 105, column: 7)
!3429 = !DILocation(line: 107, column: 13, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3428, file: !442, line: 106, column: 5)
!3431 = !DILocation(line: 109, column: 5, scope: !3430)
!3432 = !DILocation(line: 112, column: 1, scope: !3366)
!3433 = !DISubprogram(name: "fileno", scope: !143, file: !143, line: 809, type: !3367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!3434 = !DISubprogram(name: "fclose", scope: !143, file: !143, line: 178, type: !3367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!3435 = !DISubprogram(name: "lseek", scope: !3213, file: !3213, line: 339, type: !3436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!84, !30, !84, !30}
!3438 = distinct !DISubprogram(name: "rpl_fflush", scope: !444, file: !444, line: 130, type: !3439, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !3475)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!30, !3441}
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3443)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3444)
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3443, file: !61, line: 51, baseType: !30, size: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3443, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3443, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3443, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3443, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3443, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3443, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3443, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3443, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3443, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3443, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3443, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3443, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3443, file: !61, line: 70, baseType: !3459, size: 64, offset: 832)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3443, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3443, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3443, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3443, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3443, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3443, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3443, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3443, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3443, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3443, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3443, file: !61, line: 93, baseType: !3459, size: 64, offset: 1344)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3443, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3443, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3443, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3443, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3475 = !{!3476}
!3476 = !DILocalVariable(name: "stream", arg: 1, scope: !3438, file: !444, line: 130, type: !3441)
!3477 = !DILocation(line: 0, scope: !3438)
!3478 = !DILocation(line: 151, column: 14, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3438, file: !444, line: 151, column: 7)
!3480 = !DILocation(line: 151, column: 22, scope: !3479)
!3481 = !DILocation(line: 151, column: 27, scope: !3479)
!3482 = !DILocation(line: 151, column: 7, scope: !3438)
!3483 = !DILocation(line: 152, column: 12, scope: !3479)
!3484 = !DILocation(line: 152, column: 5, scope: !3479)
!3485 = !DILocalVariable(name: "fp", arg: 1, scope: !3486, file: !444, line: 42, type: !3441)
!3486 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !444, file: !444, line: 42, type: !3487, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !3441}
!3489 = !{!3485}
!3490 = !DILocation(line: 0, scope: !3486, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 157, column: 3, scope: !3438)
!3492 = !DILocation(line: 44, column: 12, scope: !3493, inlinedAt: !3491)
!3493 = distinct !DILexicalBlock(scope: !3486, file: !444, line: 44, column: 7)
!3494 = !DILocation(line: 44, column: 19, scope: !3493, inlinedAt: !3491)
!3495 = !DILocation(line: 44, column: 7, scope: !3486, inlinedAt: !3491)
!3496 = !DILocation(line: 46, column: 5, scope: !3493, inlinedAt: !3491)
!3497 = !DILocation(line: 159, column: 10, scope: !3438)
!3498 = !DILocation(line: 159, column: 3, scope: !3438)
!3499 = !DILocation(line: 236, column: 1, scope: !3438)
!3500 = !DISubprogram(name: "fflush", scope: !143, file: !143, line: 230, type: !3439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!3501 = distinct !DISubprogram(name: "rpl_fseeko", scope: !446, file: !446, line: 28, type: !3502, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !3539)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!30, !3504, !3538, !30}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3506)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3507)
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3506, file: !61, line: 51, baseType: !30, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3506, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3506, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3506, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3506, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3506, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3506, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3506, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3506, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3506, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3506, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3506, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3506, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3506, file: !61, line: 70, baseType: !3522, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3506, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3506, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3506, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3506, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3506, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3506, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3506, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3506, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3506, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3506, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3506, file: !61, line: 93, baseType: !3522, size: 64, offset: 1344)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3506, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3506, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3506, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3506, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3538 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !143, line: 63, baseType: !84)
!3539 = !{!3540, !3541, !3542, !3543}
!3540 = !DILocalVariable(name: "fp", arg: 1, scope: !3501, file: !446, line: 28, type: !3504)
!3541 = !DILocalVariable(name: "offset", arg: 2, scope: !3501, file: !446, line: 28, type: !3538)
!3542 = !DILocalVariable(name: "whence", arg: 3, scope: !3501, file: !446, line: 28, type: !30)
!3543 = !DILocalVariable(name: "pos", scope: !3544, file: !446, line: 123, type: !3538)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !446, line: 119, column: 5)
!3545 = distinct !DILexicalBlock(scope: !3501, file: !446, line: 55, column: 7)
!3546 = !DILocation(line: 0, scope: !3501)
!3547 = !DILocation(line: 55, column: 12, scope: !3545)
!3548 = !{!1024, !486, i64 16}
!3549 = !DILocation(line: 55, column: 33, scope: !3545)
!3550 = !{!1024, !486, i64 8}
!3551 = !DILocation(line: 55, column: 25, scope: !3545)
!3552 = !DILocation(line: 56, column: 7, scope: !3545)
!3553 = !DILocation(line: 56, column: 15, scope: !3545)
!3554 = !DILocation(line: 56, column: 37, scope: !3545)
!3555 = !{!1024, !486, i64 32}
!3556 = !DILocation(line: 56, column: 29, scope: !3545)
!3557 = !DILocation(line: 57, column: 7, scope: !3545)
!3558 = !DILocation(line: 57, column: 15, scope: !3545)
!3559 = !{!1024, !486, i64 72}
!3560 = !DILocation(line: 57, column: 29, scope: !3545)
!3561 = !DILocation(line: 55, column: 7, scope: !3501)
!3562 = !DILocation(line: 123, column: 26, scope: !3544)
!3563 = !DILocation(line: 123, column: 19, scope: !3544)
!3564 = !DILocation(line: 0, scope: !3544)
!3565 = !DILocation(line: 124, column: 15, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3544, file: !446, line: 124, column: 11)
!3567 = !DILocation(line: 124, column: 11, scope: !3544)
!3568 = !DILocation(line: 135, column: 12, scope: !3544)
!3569 = !DILocation(line: 135, column: 19, scope: !3544)
!3570 = !DILocation(line: 136, column: 12, scope: !3544)
!3571 = !DILocation(line: 136, column: 20, scope: !3544)
!3572 = !{!1024, !1025, i64 144}
!3573 = !DILocation(line: 167, column: 7, scope: !3544)
!3574 = !DILocation(line: 169, column: 10, scope: !3501)
!3575 = !DILocation(line: 169, column: 3, scope: !3501)
!3576 = !DILocation(line: 170, column: 1, scope: !3501)
!3577 = !DISubprogram(name: "fseeko", scope: !143, file: !143, line: 736, type: !3578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!30, !3504, !84, !30}
!3580 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !366, file: !366, line: 100, type: !3581, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !3584)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!32, !1276, !6, !32, !3583}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!3584 = !{!3585, !3586, !3587, !3588, !3589}
!3585 = !DILocalVariable(name: "pwc", arg: 1, scope: !3580, file: !366, line: 100, type: !1276)
!3586 = !DILocalVariable(name: "s", arg: 2, scope: !3580, file: !366, line: 100, type: !6)
!3587 = !DILocalVariable(name: "n", arg: 3, scope: !3580, file: !366, line: 100, type: !32)
!3588 = !DILocalVariable(name: "ps", arg: 4, scope: !3580, file: !366, line: 100, type: !3583)
!3589 = !DILocalVariable(name: "ret", scope: !3580, file: !366, line: 130, type: !32)
!3590 = !DILocation(line: 0, scope: !3580)
!3591 = !DILocation(line: 105, column: 9, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3580, file: !366, line: 105, column: 7)
!3593 = !DILocation(line: 105, column: 7, scope: !3580)
!3594 = !DILocation(line: 117, column: 10, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3580, file: !366, line: 117, column: 7)
!3596 = !DILocation(line: 117, column: 7, scope: !3580)
!3597 = !DILocation(line: 130, column: 16, scope: !3580)
!3598 = !DILocation(line: 135, column: 11, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3580, file: !366, line: 135, column: 7)
!3600 = !DILocation(line: 135, column: 25, scope: !3599)
!3601 = !DILocation(line: 135, column: 30, scope: !3599)
!3602 = !DILocation(line: 135, column: 7, scope: !3580)
!3603 = !DILocalVariable(name: "ps", arg: 1, scope: !3604, file: !1249, line: 1135, type: !3583)
!3604 = distinct !DISubprogram(name: "mbszero", scope: !1249, file: !1249, line: 1135, type: !3605, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{null, !3583}
!3607 = !{!3603}
!3608 = !DILocation(line: 0, scope: !3604, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 137, column: 5, scope: !3599)
!3610 = !DILocalVariable(name: "__dest", arg: 1, scope: !3611, file: !1258, line: 57, type: !29)
!3611 = distinct !DISubprogram(name: "memset", scope: !1258, file: !1258, line: 57, type: !1259, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !3612)
!3612 = !{!3610, !3613, !3614}
!3613 = !DILocalVariable(name: "__ch", arg: 2, scope: !3611, file: !1258, line: 57, type: !30)
!3614 = !DILocalVariable(name: "__len", arg: 3, scope: !3611, file: !1258, line: 57, type: !32)
!3615 = !DILocation(line: 0, scope: !3611, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 1137, column: 3, scope: !3604, inlinedAt: !3609)
!3617 = !DILocation(line: 59, column: 10, scope: !3611, inlinedAt: !3616)
!3618 = !DILocation(line: 137, column: 5, scope: !3599)
!3619 = !DILocation(line: 138, column: 11, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3580, file: !366, line: 138, column: 7)
!3621 = !DILocation(line: 138, column: 7, scope: !3580)
!3622 = !DILocation(line: 139, column: 5, scope: !3620)
!3623 = !DILocation(line: 143, column: 26, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3580, file: !366, line: 143, column: 7)
!3625 = !DILocation(line: 143, column: 41, scope: !3624)
!3626 = !DILocation(line: 143, column: 7, scope: !3580)
!3627 = !DILocation(line: 145, column: 15, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !366, line: 145, column: 11)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !366, line: 144, column: 5)
!3630 = !DILocation(line: 145, column: 11, scope: !3629)
!3631 = !DILocation(line: 146, column: 32, scope: !3628)
!3632 = !DILocation(line: 146, column: 16, scope: !3628)
!3633 = !DILocation(line: 146, column: 14, scope: !3628)
!3634 = !DILocation(line: 146, column: 9, scope: !3628)
!3635 = !DILocation(line: 286, column: 1, scope: !3580)
!3636 = !DISubprogram(name: "mbsinit", scope: !3637, file: !3637, line: 293, type: !3638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!3637 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!30, !3640}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!3642 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !448, file: !448, line: 42, type: !3643, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !3652)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!30, !3645, !3651}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3647)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3178, line: 11, size: 128, elements: !3648)
!3648 = !{!3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3647, file: !3178, line: 16, baseType: !431, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3647, file: !3178, line: 21, baseType: !3182, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3652 = !{!3653, !3654, !3655, !3658, !3659, !3660}
!3653 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !3642, file: !448, line: 42, type: !3645)
!3654 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !3642, file: !448, line: 43, type: !3651)
!3655 = !DILocalVariable(name: "limit", scope: !3656, file: !448, line: 61, type: !3657)
!3656 = distinct !DILexicalBlock(scope: !3642, file: !448, line: 58, column: 3)
!3657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!3658 = !DILocalVariable(name: "seconds", scope: !3656, file: !448, line: 62, type: !429)
!3659 = !DILocalVariable(name: "intermediate", scope: !3656, file: !448, line: 63, type: !3647)
!3660 = !DILocalVariable(name: "result", scope: !3661, file: !448, line: 68, type: !30)
!3661 = distinct !DILexicalBlock(scope: !3656, file: !448, line: 66, column: 7)
!3662 = !DILocation(line: 0, scope: !3642)
!3663 = !DILocation(line: 52, column: 24, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3642, file: !448, line: 52, column: 7)
!3665 = !{!3666, !1025, i64 8}
!3666 = !{!"timespec", !1025, i64 0, !1025, i64 8}
!3667 = !DILocation(line: 52, column: 36, scope: !3664)
!3668 = !DILocation(line: 54, column: 7, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3664, file: !448, line: 53, column: 5)
!3670 = !DILocation(line: 54, column: 13, scope: !3669)
!3671 = !DILocation(line: 55, column: 7, scope: !3669)
!3672 = !DILocation(line: 0, scope: !3656)
!3673 = !DILocation(line: 62, column: 39, scope: !3656)
!3674 = !{!3666, !1025, i64 0}
!3675 = !DILocation(line: 63, column: 5, scope: !3656)
!3676 = !DILocation(line: 63, column: 21, scope: !3656)
!3677 = !DILocation(line: 63, column: 36, scope: !3656)
!3678 = !{i64 0, i64 8, !2020, i64 8, i64 8, !2020}
!3679 = !DILocation(line: 65, column: 18, scope: !3656)
!3680 = !DILocation(line: 65, column: 5, scope: !3656)
!3681 = !DILocation(line: 67, column: 29, scope: !3661)
!3682 = !DILocation(line: 68, column: 22, scope: !3661)
!3683 = !DILocation(line: 0, scope: !3661)
!3684 = !DILocation(line: 69, column: 17, scope: !3661)
!3685 = !DILocation(line: 70, column: 13, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3661, file: !448, line: 70, column: 13)
!3687 = !DILocation(line: 70, column: 13, scope: !3661)
!3688 = !DILocation(line: 72, column: 17, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !448, line: 72, column: 17)
!3690 = distinct !DILexicalBlock(scope: !3686, file: !448, line: 71, column: 11)
!3691 = !DILocation(line: 72, column: 17, scope: !3690)
!3692 = !DILocation(line: 73, column: 32, scope: !3689)
!3693 = !DILocation(line: 73, column: 39, scope: !3689)
!3694 = !DILocation(line: 73, column: 15, scope: !3689)
!3695 = !DILocation(line: 76, column: 30, scope: !3661)
!3696 = !DILocation(line: 78, column: 18, scope: !3656)
!3697 = !DILocation(line: 78, column: 25, scope: !3656)
!3698 = !DILocation(line: 79, column: 12, scope: !3656)
!3699 = !DILocation(line: 79, column: 5, scope: !3656)
!3700 = !DILocation(line: 80, column: 3, scope: !3642)
!3701 = !DILocation(line: 81, column: 1, scope: !3642)
!3702 = !DISubprogram(name: "nanosleep", scope: !3703, file: !3703, line: 272, type: !3643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !562)
!3703 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3704 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !454, file: !454, line: 27, type: !2732, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3705)
!3705 = !{!3706, !3707, !3708, !3709}
!3706 = !DILocalVariable(name: "ptr", arg: 1, scope: !3704, file: !454, line: 27, type: !29)
!3707 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3704, file: !454, line: 27, type: !32)
!3708 = !DILocalVariable(name: "size", arg: 3, scope: !3704, file: !454, line: 27, type: !32)
!3709 = !DILocalVariable(name: "nbytes", scope: !3704, file: !454, line: 29, type: !32)
!3710 = !DILocation(line: 0, scope: !3704)
!3711 = !DILocation(line: 30, column: 7, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3704, file: !454, line: 30, column: 7)
!3713 = !DILocalVariable(name: "ptr", arg: 1, scope: !3714, file: !2823, line: 2057, type: !29)
!3714 = distinct !DISubprogram(name: "rpl_realloc", scope: !2823, file: !2823, line: 2057, type: !2815, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !3715)
!3715 = !{!3713, !3716}
!3716 = !DILocalVariable(name: "size", arg: 2, scope: !3714, file: !2823, line: 2057, type: !32)
!3717 = !DILocation(line: 0, scope: !3714, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 37, column: 10, scope: !3704)
!3719 = !DILocation(line: 2059, column: 24, scope: !3714, inlinedAt: !3718)
!3720 = !DILocation(line: 2059, column: 10, scope: !3714, inlinedAt: !3718)
!3721 = !DILocation(line: 37, column: 3, scope: !3704)
!3722 = !DILocation(line: 32, column: 7, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3712, file: !454, line: 31, column: 5)
!3724 = !DILocation(line: 32, column: 13, scope: !3723)
!3725 = !DILocation(line: 33, column: 7, scope: !3723)
!3726 = !DILocation(line: 38, column: 1, scope: !3704)
!3727 = distinct !DISubprogram(name: "hard_locale", scope: !457, file: !457, line: 28, type: !3728, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!44, !30}
!3730 = !{!3731, !3732}
!3731 = !DILocalVariable(name: "category", arg: 1, scope: !3727, file: !457, line: 28, type: !30)
!3732 = !DILocalVariable(name: "locale", scope: !3727, file: !457, line: 30, type: !3733)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3734)
!3734 = !{!3735}
!3735 = !DISubrange(count: 257)
!3736 = !DILocation(line: 0, scope: !3727)
!3737 = !DILocation(line: 30, column: 3, scope: !3727)
!3738 = !DILocation(line: 30, column: 8, scope: !3727)
!3739 = !DILocation(line: 32, column: 7, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3727, file: !457, line: 32, column: 7)
!3741 = !DILocation(line: 32, column: 7, scope: !3727)
!3742 = !DILocalVariable(name: "__s1", arg: 1, scope: !3743, file: !520, line: 1359, type: !6)
!3743 = distinct !DISubprogram(name: "streq", scope: !520, file: !520, line: 1359, type: !521, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !3744)
!3744 = !{!3742, !3745}
!3745 = !DILocalVariable(name: "__s2", arg: 2, scope: !3743, file: !520, line: 1359, type: !6)
!3746 = !DILocation(line: 0, scope: !3743, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 35, column: 9, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3727, file: !457, line: 35, column: 7)
!3749 = !DILocation(line: 1361, column: 11, scope: !3743, inlinedAt: !3747)
!3750 = !DILocation(line: 1361, column: 10, scope: !3743, inlinedAt: !3747)
!3751 = !DILocation(line: 35, column: 29, scope: !3748)
!3752 = !DILocation(line: 0, scope: !3743, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 35, column: 32, scope: !3748)
!3754 = !DILocation(line: 1361, column: 11, scope: !3743, inlinedAt: !3753)
!3755 = !DILocation(line: 1361, column: 10, scope: !3743, inlinedAt: !3753)
!3756 = !DILocation(line: 35, column: 7, scope: !3727)
!3757 = !DILocation(line: 46, column: 3, scope: !3727)
!3758 = !DILocation(line: 47, column: 1, scope: !3727)
!3759 = distinct !DISubprogram(name: "setlocale_null_r", scope: !459, file: !459, line: 154, type: !3760, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!30, !30, !65, !32}
!3762 = !{!3763, !3764, !3765}
!3763 = !DILocalVariable(name: "category", arg: 1, scope: !3759, file: !459, line: 154, type: !30)
!3764 = !DILocalVariable(name: "buf", arg: 2, scope: !3759, file: !459, line: 154, type: !65)
!3765 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3759, file: !459, line: 154, type: !32)
!3766 = !DILocation(line: 0, scope: !3759)
!3767 = !DILocation(line: 159, column: 10, scope: !3759)
!3768 = !DILocation(line: 159, column: 3, scope: !3759)
!3769 = distinct !DISubprogram(name: "setlocale_null", scope: !459, file: !459, line: 186, type: !3770, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!6, !30}
!3772 = !{!3773}
!3773 = !DILocalVariable(name: "category", arg: 1, scope: !3769, file: !459, line: 186, type: !30)
!3774 = !DILocation(line: 0, scope: !3769)
!3775 = !DILocation(line: 189, column: 10, scope: !3769)
!3776 = !DILocation(line: 189, column: 3, scope: !3769)
!3777 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !461, file: !461, line: 35, type: !3770, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3778)
!3778 = !{!3779, !3780}
!3779 = !DILocalVariable(name: "category", arg: 1, scope: !3777, file: !461, line: 35, type: !30)
!3780 = !DILocalVariable(name: "result", scope: !3777, file: !461, line: 37, type: !6)
!3781 = !DILocation(line: 0, scope: !3777)
!3782 = !DILocation(line: 37, column: 24, scope: !3777)
!3783 = !DILocation(line: 62, column: 3, scope: !3777)
!3784 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !461, file: !461, line: 66, type: !3760, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3785)
!3785 = !{!3786, !3787, !3788, !3789, !3790}
!3786 = !DILocalVariable(name: "category", arg: 1, scope: !3784, file: !461, line: 66, type: !30)
!3787 = !DILocalVariable(name: "buf", arg: 2, scope: !3784, file: !461, line: 66, type: !65)
!3788 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3784, file: !461, line: 66, type: !32)
!3789 = !DILocalVariable(name: "result", scope: !3784, file: !461, line: 111, type: !6)
!3790 = !DILocalVariable(name: "length", scope: !3791, file: !461, line: 125, type: !32)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !461, line: 124, column: 5)
!3792 = distinct !DILexicalBlock(scope: !3784, file: !461, line: 113, column: 7)
!3793 = !DILocation(line: 0, scope: !3784)
!3794 = !DILocation(line: 0, scope: !3777, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 111, column: 24, scope: !3784)
!3796 = !DILocation(line: 37, column: 24, scope: !3777, inlinedAt: !3795)
!3797 = !DILocation(line: 113, column: 14, scope: !3792)
!3798 = !DILocation(line: 113, column: 7, scope: !3784)
!3799 = !DILocation(line: 116, column: 19, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !461, line: 116, column: 11)
!3801 = distinct !DILexicalBlock(scope: !3792, file: !461, line: 114, column: 5)
!3802 = !DILocation(line: 116, column: 11, scope: !3801)
!3803 = !DILocation(line: 120, column: 16, scope: !3800)
!3804 = !DILocation(line: 120, column: 9, scope: !3800)
!3805 = !DILocation(line: 125, column: 23, scope: !3791)
!3806 = !DILocation(line: 0, scope: !3791)
!3807 = !DILocation(line: 126, column: 18, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3791, file: !461, line: 126, column: 11)
!3809 = !DILocation(line: 126, column: 11, scope: !3791)
!3810 = !DILocation(line: 128, column: 39, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3808, file: !461, line: 127, column: 9)
!3812 = !DILocalVariable(name: "__dest", arg: 1, scope: !3813, file: !1258, line: 26, type: !3090)
!3813 = distinct !DISubprogram(name: "memcpy", scope: !1258, file: !1258, line: 26, type: !3088, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !3814)
!3814 = !{!3812, !3815, !3816}
!3815 = !DILocalVariable(name: "__src", arg: 2, scope: !3813, file: !1258, line: 26, type: !687)
!3816 = !DILocalVariable(name: "__len", arg: 3, scope: !3813, file: !1258, line: 26, type: !32)
!3817 = !DILocation(line: 0, scope: !3813, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 128, column: 11, scope: !3811)
!3819 = !DILocation(line: 29, column: 10, scope: !3813, inlinedAt: !3818)
!3820 = !DILocation(line: 129, column: 11, scope: !3811)
!3821 = !DILocation(line: 133, column: 23, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !461, line: 133, column: 15)
!3823 = distinct !DILexicalBlock(scope: !3808, file: !461, line: 132, column: 9)
!3824 = !DILocation(line: 133, column: 15, scope: !3823)
!3825 = !DILocation(line: 138, column: 44, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3822, file: !461, line: 134, column: 13)
!3827 = !DILocation(line: 0, scope: !3813, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 138, column: 15, scope: !3826)
!3829 = !DILocation(line: 29, column: 10, scope: !3813, inlinedAt: !3828)
!3830 = !DILocation(line: 139, column: 15, scope: !3826)
!3831 = !DILocation(line: 139, column: 32, scope: !3826)
!3832 = !DILocation(line: 140, column: 13, scope: !3826)
!3833 = !DILocation(line: 0, scope: !3792)
!3834 = !DILocation(line: 145, column: 1, scope: !3784)
