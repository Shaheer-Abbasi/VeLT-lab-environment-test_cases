; ModuleID = 'src/dirname.bc'
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

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"  -z, --zero\0A         end each output line with NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@main.dot = internal constant i8 46, align 1, !dbg !34
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !114
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
@.str.51 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !157
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !162
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !167
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !169
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !205
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !175
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !201
@.str.1.60 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.62 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.61 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !203
@.str.4.55 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.56 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.57 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !210
@.str.71 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.72 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !216
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
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.78, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.84, i32 0, i32 0), i8* null], align 8, !dbg !250
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !276
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !294
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !324
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !331
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !296
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !333
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !282
@.str.10.87 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.85 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.88 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !301
@.str.91 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.92 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.94 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.95 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.96 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.97 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.98 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.99 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.100 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.101 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.102 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.103 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.104 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.105 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.106 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.107 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.112 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.113 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.114 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.115 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.116 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !339
@exit_failure = dso_local global i32 1, align 4, !dbg !347
@.str.129 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.127 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.128 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.142 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !353
@.str.147 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !444 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !448, metadata !DIExpression()), !dbg !449
  %3 = icmp eq i32 %0, 0, !dbg !450
  br i1 %3, label %9, label %4, !dbg !452

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !453, !tbaa !455
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !453
  %7 = load i8*, i8** @program_name, align 8, !dbg !453, !tbaa !455
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !453
  br label %56, !dbg !453

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !459
  %11 = load i8*, i8** @program_name, align 8, !dbg !459, !tbaa !455
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #34, !dbg !459
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([152 x i8], [152 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !461
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !461, !tbaa !455
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !461
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !462
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !462
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #34, !dbg !463
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !463
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #34, !dbg !464
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !464
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([130 x i8], [130 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #34, !dbg !465
  %20 = load i8*, i8** @program_name, align 8, !dbg !465, !tbaa !455
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %19, i8* noundef %20, i8* noundef %20, i8* noundef %20) #34, !dbg !465
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !466, metadata !DIExpression()) #34, !dbg !485
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !487
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #34, !dbg !487
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !471, metadata !DIExpression()) #34, !dbg !488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %22, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !488
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !480, metadata !DIExpression()) #34, !dbg !485
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !481, metadata !DIExpression()) #34, !dbg !485
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !489
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !481, metadata !DIExpression()) #34, !dbg !485
  br label %24, !dbg !490

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !481, metadata !DIExpression()) #34, !dbg !485
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !498
  call void @llvm.dbg.value(metadata i8* %25, metadata !497, metadata !DIExpression()) #34, !dbg !498
  %27 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %25) #35, !dbg !500
  %28 = icmp eq i32 %27, 0, !dbg !501
  br i1 %28, label %34, label %29, !dbg !490

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !502
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !481, metadata !DIExpression()) #34, !dbg !485
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !503
  %32 = load i8*, i8** %31, align 8, !dbg !503, !tbaa !504
  %33 = icmp eq i8* %32, null, !dbg !506
  br i1 %33, label %34, label %24, !dbg !507, !llvm.loop !508

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !510
  %37 = load i8*, i8** %36, align 8, !dbg !510, !tbaa !512
  %38 = icmp eq i8* %37, null, !dbg !513
  %39 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %37, !dbg !514
  call void @llvm.dbg.value(metadata i8* %39, metadata !480, metadata !DIExpression()) #34, !dbg !485
  tail call void @emit_bug_reporting_address() #34, !dbg !515
  %40 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !516
  call void @llvm.dbg.value(metadata i8* %40, metadata !483, metadata !DIExpression()) #34, !dbg !485
  %41 = icmp eq i8* %40, null, !dbg !517
  br i1 %41, label %49, label %42, !dbg !519

42:                                               ; preds = %34
  %43 = tail call i32 @strncmp(i8* noundef nonnull %40, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i64 noundef 3) #35, !dbg !520
  %44 = icmp eq i32 %43, 0, !dbg !520
  br i1 %44, label %49, label %45, !dbg !521

45:                                               ; preds = %42
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.47, i64 0, i64 0), i32 noundef 5) #34, !dbg !522
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !522, !tbaa !455
  %48 = tail call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47) #34, !dbg !522
  br label %49, !dbg !524

49:                                               ; preds = %34, %42, %45
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !525
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !497, metadata !DIExpression()) #34, !dbg !525
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #34, !dbg !485
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #34, !dbg !527
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %50, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !527
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #34, !dbg !528
  %53 = icmp eq i8* %39, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), !dbg !528
  %54 = select i1 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !528
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %52, i8* noundef %39, i8* noundef %54) #34, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #34, !dbg !529
  br label %56

56:                                               ; preds = %49, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !530
  unreachable, !dbg !530
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !531 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !536 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !116 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !121, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %0, metadata !122, metadata !DIExpression()), !dbg !541
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !542, !tbaa !543
  %3 = icmp eq i32 %2, -1, !dbg !545
  br i1 %3, label %4, label %16, !dbg !546

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #34, !dbg !547
  call void @llvm.dbg.value(metadata i8* %5, metadata !123, metadata !DIExpression()), !dbg !548
  %6 = icmp eq i8* %5, null, !dbg !549
  br i1 %6, label %14, label %7, !dbg !550

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !551, !tbaa !552
  %9 = icmp eq i8 %8, 0, !dbg !551
  br i1 %9, label %14, label %10, !dbg !553

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !491, metadata !DIExpression()) #34, !dbg !554
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), metadata !497, metadata !DIExpression()) #34, !dbg !554
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #35, !dbg !556
  %12 = icmp eq i32 %11, 0, !dbg !557
  %13 = zext i1 %12 to i32, !dbg !553
  br label %14, !dbg !553

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !558, !tbaa !543
  br label %16, !dbg !559

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !560
  %18 = icmp eq i32 %17, 0, !dbg !560
  br i1 %18, label %22, label %19, !dbg !562

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !563, !tbaa !455
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !563
  br label %121, !dbg !565

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !126, metadata !DIExpression()), !dbg !541
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #35, !dbg !566
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !567
  call void @llvm.dbg.value(metadata i8* %24, metadata !127, metadata !DIExpression()), !dbg !541
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !568
  call void @llvm.dbg.value(metadata i8* %25, metadata !128, metadata !DIExpression()), !dbg !541
  %26 = icmp eq i8* %25, null, !dbg !569
  br i1 %26, label %53, label %27, !dbg !570

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !571
  br i1 %28, label %53, label %29, !dbg !572

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !129, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i64 0, metadata !133, metadata !DIExpression()), !dbg !573
  %30 = icmp ult i8* %24, %25, !dbg !574
  br i1 %30, label %31, label %53, !dbg !575

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !541
  %33 = load i16*, i16** %32, align 8, !tbaa !455
  br label %34, !dbg !575

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !129, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i64 %36, metadata !133, metadata !DIExpression()), !dbg !573
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !576
  call void @llvm.dbg.value(metadata i8* %37, metadata !129, metadata !DIExpression()), !dbg !573
  %38 = load i8, i8* %35, align 1, !dbg !576, !tbaa !552
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !576
  %41 = load i16, i16* %40, align 2, !dbg !576, !tbaa !577
  %42 = lshr i16 %41, 13, !dbg !579
  %43 = and i16 %42, 1, !dbg !579
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !580
  call void @llvm.dbg.value(metadata i64 %45, metadata !133, metadata !DIExpression()), !dbg !573
  %46 = icmp ult i8* %37, %25, !dbg !574
  %47 = icmp ult i64 %45, 2, !dbg !581
  %48 = select i1 %46, i1 %47, i1 false, !dbg !581
  br i1 %48, label %34, label %49, !dbg !575, !llvm.loop !582

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !583
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !585
  %52 = xor i1 %50, true, !dbg !585
  br label %53, !dbg !585

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !541
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !126, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %54, metadata !128, metadata !DIExpression()), !dbg !541
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #35, !dbg !586
  call void @llvm.dbg.value(metadata i64 %56, metadata !134, metadata !DIExpression()), !dbg !541
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !587
  call void @llvm.dbg.value(metadata i8* %57, metadata !135, metadata !DIExpression()), !dbg !541
  br label %58, !dbg !588

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !541
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !126, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %59, metadata !135, metadata !DIExpression()), !dbg !541
  %61 = load i8, i8* %59, align 1, !dbg !589, !tbaa !552
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !590

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !591
  %64 = load i8, i8* %63, align 1, !dbg !594, !tbaa !552
  %65 = icmp ne i8 %64, 45, !dbg !595
  %66 = select i1 %65, i1 %60, i1 false, !dbg !596
  br label %67, !dbg !596

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !126, metadata !DIExpression()), !dbg !541
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !597
  %70 = load i16*, i16** %69, align 8, !dbg !597, !tbaa !455
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !597
  %73 = load i16, i16* %72, align 2, !dbg !597, !tbaa !577
  %74 = and i16 %73, 8192, !dbg !597
  %75 = icmp eq i16 %74, 0, !dbg !597
  br i1 %75, label %89, label %76, !dbg !599

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !600
  br i1 %77, label %91, label %78, !dbg !603

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !604
  %80 = load i8, i8* %79, align 1, !dbg !604, !tbaa !552
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !604
  %83 = load i16, i16* %82, align 2, !dbg !604, !tbaa !577
  %84 = and i16 %83, 8192, !dbg !604
  %85 = icmp eq i16 %84, 0, !dbg !604
  br i1 %85, label %86, label %91, !dbg !605

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !606
  br i1 %88, label %89, label %91, !dbg !606

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !608
  call void @llvm.dbg.value(metadata i8* %90, metadata !135, metadata !DIExpression()), !dbg !541
  br label %58, !dbg !588, !llvm.loop !609

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !611
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !455
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !611
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), metadata !497, metadata !DIExpression()) #34, !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !614
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !616
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !618
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !620
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !622
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !624
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !626
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !628
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #34, !dbg !630
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !140, metadata !DIExpression()), !dbg !541
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i64 noundef 6) #35, !dbg !632
  %96 = icmp eq i32 %95, 0, !dbg !632
  br i1 %96, label %100, label %97, !dbg !634

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i64 noundef 9) #35, !dbg !635
  %99 = icmp eq i32 %98, 0, !dbg !635
  br i1 %99, label %100, label %103, !dbg !636

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !637
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !637
  br label %106, !dbg !639

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !640
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !640
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !455
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !642
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !455
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !643
  %111 = ptrtoint i8* %59 to i64, !dbg !644
  %112 = sub i64 %111, %92, !dbg !644
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !455
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !644
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !645, !tbaa !455
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !645
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !455
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !646
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !647, !tbaa !455
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !647
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !648
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
declare !dbg !649 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !653 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !657 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !36 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !41, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8** %1, metadata !42, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8 0, metadata !43, metadata !DIExpression()), !dbg !663
  %3 = load i8*, i8** %1, align 8, !dbg !664, !tbaa !455
  tail call void @set_program_name(i8* noundef %3) #34, !dbg !665
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #34, !dbg !666
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #34, !dbg !667
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #34, !dbg !668
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !669
  br label %8, !dbg !670

8:                                                ; preds = %8, %2
  %9 = phi i32 [ 10, %2 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !663
  %10 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #34, !dbg !671
  call void @llvm.dbg.value(metadata i32 %10, metadata !45, metadata !DIExpression()), !dbg !672
  switch i32 %10, label %17 [
    i32 -1, label %18
    i32 122, label %8
    i32 -2, label %11
    i32 -3, label %12
  ], !dbg !673

11:                                               ; preds = %8
  tail call void @usage(i32 noundef 0) #38, !dbg !674
  unreachable, !dbg !674

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !676, !tbaa !455
  %14 = load i8*, i8** @Version, align 8, !dbg !676, !tbaa !455
  %15 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)) #34, !dbg !676
  %16 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0)) #34, !dbg !676
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %14, i8* noundef %15, i8* noundef %16, i8* noundef null) #34, !dbg !676
  tail call void @exit(i32 noundef 0) #36, !dbg !676
  unreachable, !dbg !676

17:                                               ; preds = %8
  tail call void @usage(i32 noundef 1) #38, !dbg !677
  unreachable, !dbg !677

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !663
  %19 = load i32, i32* @optind, align 4, !dbg !678, !tbaa !543
  %20 = icmp slt i32 %19, %0, !dbg !680
  br i1 %20, label %21, label %23, !dbg !681

21:                                               ; preds = %18
  %22 = trunc i32 %9 to i8
  br label %25, !dbg !682

23:                                               ; preds = %18
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #34, !dbg !683
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %24) #34, !dbg !683
  tail call void @usage(i32 noundef 1) #38, !dbg !685
  unreachable, !dbg !685

25:                                               ; preds = %21, %46
  %26 = phi i32 [ %19, %21 ], [ %48, %46 ]
  %27 = sext i32 %26 to i64, !dbg !686
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !686
  %29 = load i8*, i8** %28, align 8, !dbg !686, !tbaa !455
  call void @llvm.dbg.value(metadata i8* %29, metadata !47, metadata !DIExpression()), !dbg !687
  %30 = tail call i64 @dir_len(i8* noundef %29) #35, !dbg !688
  call void @llvm.dbg.value(metadata i64 %30, metadata !51, metadata !DIExpression()), !dbg !687
  %31 = icmp eq i64 %30, 0, !dbg !689
  call void @llvm.dbg.value(metadata i64 undef, metadata !51, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i8* undef, metadata !47, metadata !DIExpression()), !dbg !687
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !455
  %33 = select i1 %31, i64 1, i64 %30, !dbg !691
  call void @llvm.dbg.value(metadata i64 %33, metadata !51, metadata !DIExpression()), !dbg !687
  %34 = select i1 %31, i8* @main.dot, i8* %29, !dbg !691
  call void @llvm.dbg.value(metadata i8* %34, metadata !47, metadata !DIExpression()), !dbg !687
  %35 = tail call i64 @fwrite_unlocked(i8* noundef %34, i64 noundef 1, i64 noundef %33, %struct._IO_FILE* noundef %32), !dbg !692
  call void @llvm.dbg.value(metadata i32 %9, metadata !693, metadata !DIExpression()) #34, !dbg !699
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !455
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !701
  %38 = load i8*, i8** %37, align 8, !dbg !701, !tbaa !702
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !701
  %40 = load i8*, i8** %39, align 8, !dbg !701, !tbaa !705
  %41 = icmp ult i8* %38, %40, !dbg !701
  br i1 %41, label %44, label %42, !dbg !701, !prof !706

42:                                               ; preds = %25
  %43 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %36, i32 noundef %9) #34, !dbg !701
  br label %46, !dbg !701

44:                                               ; preds = %25
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !701
  store i8* %45, i8** %37, align 8, !dbg !701, !tbaa !702
  store i8 %22, i8* %38, align 1, !dbg !701, !tbaa !552
  br label %46, !dbg !701

46:                                               ; preds = %42, %44
  %47 = load i32, i32* @optind, align 4, !dbg !707, !tbaa !543
  %48 = add nsw i32 %47, 1, !dbg !707
  store i32 %48, i32* @optind, align 4, !dbg !707, !tbaa !543
  %49 = icmp slt i32 %48, %0, !dbg !708
  br i1 %49, label %25, label %50, !dbg !682, !llvm.loop !709

50:                                               ; preds = %46
  ret i32 0, !dbg !711
}

; Function Attrs: nounwind
declare !dbg !712 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !715 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !716 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !719 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !725 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !727, metadata !DIExpression()), !dbg !728
  store i8* %0, i8** @file_name, align 8, !dbg !729, !tbaa !455
  ret void, !dbg !730
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !731 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !735, metadata !DIExpression()), !dbg !736
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !737, !tbaa !738
  ret void, !dbg !740
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !741 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !746, !tbaa !455
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !747
  %3 = icmp eq i32 %2, 0, !dbg !748
  br i1 %3, label %22, label %4, !dbg !749

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !750, !tbaa !738, !range !751
  %6 = icmp eq i8 %5, 0, !dbg !750
  br i1 %6, label %11, label %7, !dbg !752

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !753
  %9 = load i32, i32* %8, align 4, !dbg !753, !tbaa !543
  %10 = icmp eq i32 %9, 32, !dbg !754
  br i1 %10, label %22, label %11, !dbg !755

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.25, i64 0, i64 0), i32 noundef 5) #34, !dbg !756
  call void @llvm.dbg.value(metadata i8* %12, metadata !743, metadata !DIExpression()), !dbg !757
  %13 = load i8*, i8** @file_name, align 8, !dbg !758, !tbaa !455
  %14 = icmp eq i8* %13, null, !dbg !758
  %15 = tail call i32* @__errno_location() #37, !dbg !760
  %16 = load i32, i32* %15, align 4, !dbg !760, !tbaa !543
  br i1 %14, label %19, label %17, !dbg !761

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !762
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.26, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !762
  br label %20, !dbg !762

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.27, i64 0, i64 0), i8* noundef %12) #34, !dbg !763
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !764, !tbaa !543
  tail call void @_exit(i32 noundef %21) #36, !dbg !765
  unreachable, !dbg !765

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !766, !tbaa !455
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !768
  %25 = icmp eq i32 %24, 0, !dbg !769
  br i1 %25, label %28, label %26, !dbg !770

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !771, !tbaa !543
  tail call void @_exit(i32 noundef %27) #36, !dbg !772
  unreachable, !dbg !772

28:                                               ; preds = %22
  ret void, !dbg !773
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @dir_len(i8* noundef %0) local_unnamed_addr #15 !dbg !774 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !778, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 0, metadata !779, metadata !DIExpression()), !dbg !781
  %2 = load i8, i8* %0, align 1, !dbg !782, !tbaa !552
  %3 = icmp eq i8 %2, 47, !dbg !782
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !779, metadata !DIExpression()), !dbg !781
  %5 = tail call i8* @last_component(i8* noundef nonnull %0) #35, !dbg !783
  %6 = ptrtoint i8* %5 to i64, !dbg !785
  %7 = ptrtoint i8* %0 to i64, !dbg !785
  %8 = sub i64 %6, %7, !dbg !785
  call void @llvm.dbg.value(metadata i64 %8, metadata !780, metadata !DIExpression()), !dbg !781
  %9 = call i64 @llvm.umin.i64(i64 %8, i64 %4), !dbg !786
  br label %10, !dbg !786

10:                                               ; preds = %13, %1
  %11 = phi i64 [ %8, %1 ], [ %14, %13 ], !dbg !787
  call void @llvm.dbg.value(metadata i64 %11, metadata !780, metadata !DIExpression()), !dbg !781
  %12 = icmp ugt i64 %11, %4, !dbg !788
  br i1 %12, label %13, label %18, !dbg !790

13:                                               ; preds = %10
  %14 = add i64 %11, -1, !dbg !791
  %15 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !791
  %16 = load i8, i8* %15, align 1, !dbg !791, !tbaa !552
  %17 = icmp eq i8 %16, 47, !dbg !791
  br i1 %17, label %10, label %18, !dbg !793, !llvm.loop !794

18:                                               ; preds = %13, %10
  %19 = phi i64 [ %11, %13 ], [ %9, %10 ], !dbg !787
  ret i64 %19, !dbg !796
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8* @mdir_name(i8* noundef %0) local_unnamed_addr #16 !dbg !797 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !799, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i8* %0, metadata !778, metadata !DIExpression()) #34, !dbg !804
  call void @llvm.dbg.value(metadata i64 0, metadata !779, metadata !DIExpression()) #34, !dbg !804
  %2 = load i8, i8* %0, align 1, !dbg !806, !tbaa !552
  %3 = icmp eq i8 %2, 47, !dbg !806
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !779, metadata !DIExpression()) #34, !dbg !804
  %5 = tail call i8* @last_component(i8* noundef nonnull %0) #35, !dbg !807
  %6 = ptrtoint i8* %5 to i64, !dbg !808
  %7 = ptrtoint i8* %0 to i64, !dbg !808
  %8 = sub i64 %6, %7, !dbg !808
  call void @llvm.dbg.value(metadata i64 %8, metadata !780, metadata !DIExpression()) #34, !dbg !804
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %4) #34, !dbg !809
  br label %10, !dbg !809

10:                                               ; preds = %13, %1
  %11 = phi i64 [ %8, %1 ], [ %14, %13 ], !dbg !810
  call void @llvm.dbg.value(metadata i64 %11, metadata !780, metadata !DIExpression()) #34, !dbg !804
  %12 = icmp ugt i64 %11, %4, !dbg !811
  br i1 %12, label %13, label %18, !dbg !812

13:                                               ; preds = %10
  %14 = add i64 %11, -1, !dbg !813
  %15 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !813
  %16 = load i8, i8* %15, align 1, !dbg !813, !tbaa !552
  %17 = icmp eq i8 %16, 47, !dbg !813
  br i1 %17, label %10, label %18, !dbg !814, !llvm.loop !815

18:                                               ; preds = %10, %13
  %19 = phi i64 [ %11, %13 ], [ %9, %10 ], !dbg !810
  call void @llvm.dbg.value(metadata i64 %19, metadata !800, metadata !DIExpression()), !dbg !803
  %20 = icmp eq i64 %19, 0, !dbg !817
  call void @llvm.dbg.value(metadata i1 %20, metadata !801, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !803
  %21 = zext i1 %20 to i64, !dbg !818
  %22 = add i64 %19, 1, !dbg !819
  %23 = add i64 %22, %21, !dbg !820
  %24 = tail call noalias i8* @malloc(i64 noundef %23) #34, !dbg !821
  call void @llvm.dbg.value(metadata i8* %24, metadata !802, metadata !DIExpression()), !dbg !803
  %25 = icmp eq i8* %24, null, !dbg !822
  br i1 %25, label %31, label %26, !dbg !824

26:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* %24, metadata !825, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.dbg.value(metadata i8* %0, metadata !832, metadata !DIExpression()) #34, !dbg !834
  call void @llvm.dbg.value(metadata i64 %19, metadata !833, metadata !DIExpression()) #34, !dbg !834
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %24, i8* noundef nonnull align 1 %0, i64 noundef %19, i1 noundef false) #34, !dbg !836
  br i1 %20, label %27, label %28, !dbg !837

27:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 1, metadata !800, metadata !DIExpression()), !dbg !803
  store i8 46, i8* %24, align 1, !dbg !838, !tbaa !552
  br label %28, !dbg !840

28:                                               ; preds = %27, %26
  %29 = phi i64 [ 1, %27 ], [ %19, %26 ], !dbg !803
  call void @llvm.dbg.value(metadata i64 %29, metadata !800, metadata !DIExpression()), !dbg !803
  %30 = getelementptr inbounds i8, i8* %24, i64 %29, !dbg !841
  store i8 0, i8* %30, align 1, !dbg !842, !tbaa !552
  br label %31, !dbg !843

31:                                               ; preds = %18, %28
  ret i8* %24, !dbg !844
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !845 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !849, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i32 %1, metadata !850, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i8* %2, metadata !851, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !852, metadata !DIExpression()), !dbg !854
  tail call fastcc void @flush_stdout(), !dbg !855
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !856, !tbaa !455
  %7 = icmp eq void ()* %6, null, !dbg !856
  br i1 %7, label %9, label %8, !dbg !858

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !859
  br label %13, !dbg !859

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !860, !tbaa !455
  %11 = tail call i8* @getprogname() #35, !dbg !860
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* noundef %11) #34, !dbg !860
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !862
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !862
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !862
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !862, !tbaa.struct !863
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !862
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !862
  ret void, !dbg !864
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !865 {
  call void @llvm.dbg.value(metadata i32 1, metadata !867, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i32 1, metadata !869, metadata !DIExpression()) #34, !dbg !872
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !875
  %2 = icmp slt i32 %1, 0, !dbg !876
  br i1 %2, label %6, label %3, !dbg !877

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !878, !tbaa !455
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !878
  br label %6, !dbg !878

6:                                                ; preds = %3, %0
  ret void, !dbg !879
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !880 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !882, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i32 %1, metadata !883, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i8* %2, metadata !884, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !885, metadata !DIExpression()), !dbg !887
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !888, !tbaa !455
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !889
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !890, metadata !DIExpression()) #34, !dbg !933
  call void @llvm.dbg.value(metadata i8* %2, metadata !931, metadata !DIExpression()) #34, !dbg !933
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !935
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !935, !noalias !936
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !935
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !935
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !935, !noalias !936
  %11 = load i32, i32* @error_message_count, align 4, !dbg !940, !tbaa !543
  %12 = add i32 %11, 1, !dbg !940
  store i32 %12, i32* @error_message_count, align 4, !dbg !940, !tbaa !543
  %13 = icmp eq i32 %1, 0, !dbg !941
  br i1 %13, label %24, label %14, !dbg !943

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !944, metadata !DIExpression()) #34, !dbg !952
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !954
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !954
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !948, metadata !DIExpression()) #34, !dbg !955
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !956
  call void @llvm.dbg.value(metadata i8* %16, metadata !947, metadata !DIExpression()) #34, !dbg !952
  %17 = icmp eq i8* %16, null, !dbg !957
  br i1 %17, label %18, label %20, !dbg !959

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.56, i64 0, i64 0), i32 noundef 5) #34, !dbg !960
  call void @llvm.dbg.value(metadata i8* %19, metadata !947, metadata !DIExpression()) #34, !dbg !952
  br label %20, !dbg !961

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !952
  call void @llvm.dbg.value(metadata i8* %21, metadata !947, metadata !DIExpression()) #34, !dbg !952
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !962, !tbaa !455
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.57, i64 0, i64 0), i8* noundef %21) #34, !dbg !962
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !963
  br label %24, !dbg !964

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !965, !tbaa !455
  call void @llvm.dbg.value(metadata i32 10, metadata !966, metadata !DIExpression()) #34, !dbg !972
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !971, metadata !DIExpression()) #34, !dbg !972
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !974
  %27 = load i8*, i8** %26, align 8, !dbg !974, !tbaa !702
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !974
  %29 = load i8*, i8** %28, align 8, !dbg !974, !tbaa !705
  %30 = icmp ult i8* %27, %29, !dbg !974
  br i1 %30, label %33, label %31, !dbg !974, !prof !706

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !974
  br label %35, !dbg !974

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !974
  store i8* %34, i8** %26, align 8, !dbg !974, !tbaa !702
  store i8 10, i8* %27, align 1, !dbg !974, !tbaa !552
  br label %35, !dbg !974

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !975, !tbaa !455
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !975
  %38 = icmp eq i32 %0, 0, !dbg !976
  br i1 %38, label %40, label %39, !dbg !978

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !979
  unreachable, !dbg !979

40:                                               ; preds = %35
  ret void, !dbg !980
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !981 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !985 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !988 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !992 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !996, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 %1, metadata !997, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8* %2, metadata !998, metadata !DIExpression()), !dbg !1000
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1001
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1001
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !999, metadata !DIExpression()), !dbg !1002
  call void @llvm.va_start(i8* nonnull %6), !dbg !1003
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1004
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1004, !tbaa.struct !863
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !1004
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1004
  call void @llvm.va_end(i8* nonnull %6), !dbg !1005
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1006
  ret void, !dbg !1006
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #19

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !177 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !195, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 %1, metadata !196, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i8* %2, metadata !197, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 %3, metadata !198, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i8* %4, metadata !199, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !200, metadata !DIExpression()), !dbg !1008
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1009, !tbaa !543
  %9 = icmp eq i32 %8, 0, !dbg !1009
  br i1 %9, label %24, label %10, !dbg !1011

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1012, !tbaa !543
  %12 = icmp eq i32 %11, %3, !dbg !1015
  br i1 %12, label %13, label %23, !dbg !1016

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1017, !tbaa !455
  %15 = icmp eq i8* %14, %2, !dbg !1018
  br i1 %15, label %39, label %16, !dbg !1019

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1020
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1021
  br i1 %19, label %20, label %23, !dbg !1021

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !1022
  %22 = icmp eq i32 %21, 0, !dbg !1023
  br i1 %22, label %39, label %23, !dbg !1024

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1025, !tbaa !455
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1026, !tbaa !543
  br label %24, !dbg !1027

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1028
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1029, !tbaa !455
  %26 = icmp eq void ()* %25, null, !dbg !1029
  br i1 %26, label %28, label %27, !dbg !1031

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1032
  br label %32, !dbg !1032

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1033, !tbaa !455
  %30 = tail call i8* @getprogname() #35, !dbg !1033
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.60, i64 0, i64 0), i8* noundef %30) #34, !dbg !1033
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1035, !tbaa !455
  %34 = icmp eq i8* %2, null, !dbg !1035
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.61, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.62, i64 0, i64 0), !dbg !1035
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1035
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1036
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1036
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1036
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1036, !tbaa.struct !863
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1036
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1036
  br label %39, !dbg !1037

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1037
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1038 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1042, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %1, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %2, metadata !1044, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %3, metadata !1045, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %4, metadata !1046, metadata !DIExpression()), !dbg !1048
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1049
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1049
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1047, metadata !DIExpression()), !dbg !1050
  call void @llvm.va_start(i8* nonnull %8), !dbg !1051
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1052
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1052
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1052, !tbaa.struct !863
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !1052
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1052
  call void @llvm.va_end(i8* nonnull %8), !dbg !1053
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1054
  ret void, !dbg !1054
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #20 !dbg !1055 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1058, !tbaa !455
  ret i8* %1, !dbg !1059
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #21 !dbg !1060 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1062, metadata !DIExpression()), !dbg !1065
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %2, metadata !1063, metadata !DIExpression()), !dbg !1065
  %3 = icmp eq i8* %2, null, !dbg !1067
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1067
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %5, metadata !1064, metadata !DIExpression()), !dbg !1065
  %6 = ptrtoint i8* %5 to i64, !dbg !1068
  %7 = ptrtoint i8* %0 to i64, !dbg !1068
  %8 = sub i64 %6, %7, !dbg !1068
  %9 = icmp sgt i64 %8, 6, !dbg !1070
  br i1 %9, label %10, label %19, !dbg !1071

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1072
  call void @llvm.dbg.value(metadata i8* %11, metadata !1073, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), metadata !1078, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i64 7, metadata !1079, metadata !DIExpression()) #34, !dbg !1080
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), i64 7) #34, !dbg !1082
  %13 = icmp eq i32 %12, 0, !dbg !1083
  br i1 %13, label %14, label %19, !dbg !1084

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1062, metadata !DIExpression()), !dbg !1065
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.72, i64 0, i64 0), i64 noundef 3) #35, !dbg !1085
  %16 = icmp eq i32 %15, 0, !dbg !1088
  %17 = select i1 %16, i64 3, i64 0, !dbg !1089
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1089
  br label %19, !dbg !1089

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1065
  call void @llvm.dbg.value(metadata i8* %21, metadata !1064, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8* %20, metadata !1062, metadata !DIExpression()), !dbg !1065
  store i8* %20, i8** @program_name, align 8, !dbg !1090, !tbaa !455
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1091, !tbaa !455
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1092, !tbaa !455
  ret void, !dbg !1093
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !218 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !225, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %1, metadata !226, metadata !DIExpression()), !dbg !1094
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %5, metadata !227, metadata !DIExpression()), !dbg !1094
  %6 = icmp eq i8* %5, %0, !dbg !1096
  br i1 %6, label %7, label %17, !dbg !1098

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1099
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1099
  %10 = bitcast i64* %4 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1100
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !233, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1102, metadata !DIExpression()) #34, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %10, metadata !1111, metadata !DIExpression()) #34, !dbg !1118
  call void @llvm.dbg.value(metadata i32 0, metadata !1116, metadata !DIExpression()) #34, !dbg !1118
  call void @llvm.dbg.value(metadata i64 8, metadata !1117, metadata !DIExpression()) #34, !dbg !1118
  store i64 0, i64* %4, align 8, !dbg !1120
  call void @llvm.dbg.value(metadata i32* %3, metadata !228, metadata !DIExpression(DW_OP_deref)), !dbg !1094
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !1121
  %12 = icmp eq i64 %11, 2, !dbg !1123
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !228, metadata !DIExpression()), !dbg !1094
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1124
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1094
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1125
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1094
  ret i8* %18, !dbg !1125
}

; Function Attrs: nounwind
declare !dbg !1126 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1132 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1137, metadata !DIExpression()), !dbg !1140
  %2 = tail call i32* @__errno_location() #37, !dbg !1141
  %3 = load i32, i32* %2, align 4, !dbg !1141, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %3, metadata !1138, metadata !DIExpression()), !dbg !1140
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1142
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1142
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1142
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !1143
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1139, metadata !DIExpression()), !dbg !1140
  store i32 %3, i32* %2, align 4, !dbg !1144, !tbaa !543
  ret %struct.quoting_options* %8, !dbg !1145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #20 !dbg !1146 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1152, metadata !DIExpression()), !dbg !1153
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1154
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1154
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1155
  %5 = load i32, i32* %4, align 8, !dbg !1155, !tbaa !1156
  ret i32 %5, !dbg !1158
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1159 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1163, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %1, metadata !1164, metadata !DIExpression()), !dbg !1165
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1166
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1166
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1167
  store i32 %1, i32* %5, align 8, !dbg !1168, !tbaa !1156
  ret void, !dbg !1169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1170 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1174, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %1, metadata !1175, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %2, metadata !1176, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %1, metadata !1177, metadata !DIExpression()), !dbg !1182
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1183
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1183
  %6 = lshr i8 %1, 5, !dbg !1184
  %7 = zext i8 %6 to i64, !dbg !1184
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1185
  call void @llvm.dbg.value(metadata i32* %8, metadata !1178, metadata !DIExpression()), !dbg !1182
  %9 = and i8 %1, 31, !dbg !1186
  %10 = zext i8 %9 to i32, !dbg !1186
  call void @llvm.dbg.value(metadata i32 %10, metadata !1180, metadata !DIExpression()), !dbg !1182
  %11 = load i32, i32* %8, align 4, !dbg !1187, !tbaa !543
  %12 = lshr i32 %11, %10, !dbg !1188
  %13 = and i32 %12, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %13, metadata !1181, metadata !DIExpression()), !dbg !1182
  %14 = and i32 %2, 1, !dbg !1190
  %15 = xor i32 %13, %14, !dbg !1191
  %16 = shl i32 %15, %10, !dbg !1192
  %17 = xor i32 %16, %11, !dbg !1193
  store i32 %17, i32* %8, align 4, !dbg !1193, !tbaa !543
  ret i32 %13, !dbg !1194
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1195 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1199, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %1, metadata !1200, metadata !DIExpression()), !dbg !1202
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1203
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1205
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1199, metadata !DIExpression()), !dbg !1202
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1206
  %6 = load i32, i32* %5, align 4, !dbg !1206, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 %6, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i32 %1, i32* %5, align 4, !dbg !1208, !tbaa !1207
  ret i32 %6, !dbg !1209
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1210 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1214, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %1, metadata !1215, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %2, metadata !1216, metadata !DIExpression()), !dbg !1217
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1218
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1220
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1214, metadata !DIExpression()), !dbg !1217
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1221
  store i32 10, i32* %6, align 8, !dbg !1222, !tbaa !1156
  %7 = icmp ne i8* %1, null, !dbg !1223
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1225
  br i1 %9, label %11, label %10, !dbg !1225

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !1226
  unreachable, !dbg !1226

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1227
  store i8* %1, i8** %12, align 8, !dbg !1228, !tbaa !1229
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1230
  store i8* %2, i8** %13, align 8, !dbg !1231, !tbaa !1232
  ret void, !dbg !1233
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1234 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1238, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %1, metadata !1239, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8* %2, metadata !1240, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %3, metadata !1241, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1242, metadata !DIExpression()), !dbg !1246
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1247
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1247
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1243, metadata !DIExpression()), !dbg !1246
  %8 = tail call i32* @__errno_location() #37, !dbg !1248
  %9 = load i32, i32* %8, align 4, !dbg !1248, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %9, metadata !1244, metadata !DIExpression()), !dbg !1246
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1249
  %11 = load i32, i32* %10, align 8, !dbg !1249, !tbaa !1156
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1250
  %13 = load i32, i32* %12, align 4, !dbg !1250, !tbaa !1207
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1251
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1252
  %16 = load i8*, i8** %15, align 8, !dbg !1252, !tbaa !1229
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1253
  %18 = load i8*, i8** %17, align 8, !dbg !1253, !tbaa !1232
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %19, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i32 %9, i32* %8, align 4, !dbg !1255, !tbaa !543
  ret i64 %19, !dbg !1256
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1257 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1263, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %1, metadata !1264, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %2, metadata !1265, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %3, metadata !1266, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %4, metadata !1267, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %5, metadata !1268, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32* %6, metadata !1269, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %7, metadata !1270, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %8, metadata !1271, metadata !DIExpression()), !dbg !1325
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !1326
  %18 = icmp eq i64 %17, 1, !dbg !1327
  call void @llvm.dbg.value(metadata i1 %18, metadata !1272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1325
  call void @llvm.dbg.value(metadata i64 0, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* null, metadata !1275, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 0, metadata !1276, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 0, metadata !1277, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %5, metadata !1278, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1325
  call void @llvm.dbg.value(metadata i8 0, metadata !1279, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 1, metadata !1280, metadata !DIExpression()), !dbg !1325
  %19 = and i32 %5, 2, !dbg !1328
  %20 = icmp ne i32 %19, 0, !dbg !1328
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
  br label %36, !dbg !1328

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1329
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1330
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1331
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1264, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %43, metadata !1276, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %42, metadata !1275, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %41, metadata !1274, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 0, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %40, metadata !1266, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %39, metadata !1271, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %38, metadata !1270, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %37, metadata !1267, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.label(metadata !1318), !dbg !1332
  call void @llvm.dbg.value(metadata i8 0, metadata !1281, metadata !DIExpression()), !dbg !1325
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
  ], !dbg !1333

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 5, metadata !1267, metadata !DIExpression()), !dbg !1325
  br label %111, !dbg !1334

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 5, metadata !1267, metadata !DIExpression()), !dbg !1325
  br i1 %45, label %111, label %51, !dbg !1334

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1335
  br i1 %52, label %111, label %53, !dbg !1339

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1335, !tbaa !552
  br label %111, !dbg !1335

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), metadata !307, metadata !DIExpression()) #34, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %37, metadata !308, metadata !DIExpression()) #34, !dbg !1340
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), i32 noundef 5) #34, !dbg !1344
  call void @llvm.dbg.value(metadata i8* %55, metadata !309, metadata !DIExpression()) #34, !dbg !1340
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.85, i64 0, i64 0), !dbg !1345
  br i1 %56, label %57, label %66, !dbg !1347

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1348
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1349
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !311, metadata !DIExpression()) #34, !dbg !1350
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1351, metadata !DIExpression()) #34, !dbg !1357
  call void @llvm.dbg.value(metadata i8* %23, metadata !1359, metadata !DIExpression()) #34, !dbg !1364
  call void @llvm.dbg.value(metadata i32 0, metadata !1362, metadata !DIExpression()) #34, !dbg !1364
  call void @llvm.dbg.value(metadata i64 8, metadata !1363, metadata !DIExpression()) #34, !dbg !1364
  store i64 0, i64* %13, align 8, !dbg !1366
  call void @llvm.dbg.value(metadata i32* %12, metadata !310, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1340
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !1367
  %59 = icmp eq i64 %58, 3, !dbg !1369
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !310, metadata !DIExpression()) #34, !dbg !1340
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1370
  %63 = icmp eq i32 %37, 9, !dbg !1370
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !1370
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1370
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1371
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1371
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1340
  call void @llvm.dbg.value(metadata i8* %67, metadata !1270, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), metadata !307, metadata !DIExpression()) #34, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %37, metadata !308, metadata !DIExpression()) #34, !dbg !1372
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), i32 noundef 5) #34, !dbg !1374
  call void @llvm.dbg.value(metadata i8* %68, metadata !309, metadata !DIExpression()) #34, !dbg !1372
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !1375
  br i1 %69, label %70, label %79, !dbg !1376

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1377
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1378
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !311, metadata !DIExpression()) #34, !dbg !1379
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1351, metadata !DIExpression()) #34, !dbg !1380
  call void @llvm.dbg.value(metadata i8* %26, metadata !1359, metadata !DIExpression()) #34, !dbg !1382
  call void @llvm.dbg.value(metadata i32 0, metadata !1362, metadata !DIExpression()) #34, !dbg !1382
  call void @llvm.dbg.value(metadata i64 8, metadata !1363, metadata !DIExpression()) #34, !dbg !1382
  store i64 0, i64* %11, align 8, !dbg !1384
  call void @llvm.dbg.value(metadata i32* %10, metadata !310, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1372
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !1385
  %72 = icmp eq i64 %71, 3, !dbg !1386
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !310, metadata !DIExpression()) #34, !dbg !1372
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1387
  %76 = icmp eq i32 %37, 9, !dbg !1387
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), !dbg !1387
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1387
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1388
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1271, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %80, metadata !1270, metadata !DIExpression()), !dbg !1325
  br i1 %45, label %97, label %82, !dbg !1389

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1282, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i64 0, metadata !1273, metadata !DIExpression()), !dbg !1325
  %83 = load i8, i8* %80, align 1, !dbg !1391, !tbaa !552
  %84 = icmp eq i8 %83, 0, !dbg !1393
  br i1 %84, label %97, label %85, !dbg !1393

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1282, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i64 %88, metadata !1273, metadata !DIExpression()), !dbg !1325
  %89 = icmp ult i64 %88, %48, !dbg !1394
  br i1 %89, label %90, label %92, !dbg !1397

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1394
  store i8 %86, i8* %91, align 1, !dbg !1394, !tbaa !552
  br label %92, !dbg !1394

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %93, metadata !1273, metadata !DIExpression()), !dbg !1325
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1398
  call void @llvm.dbg.value(metadata i8* %94, metadata !1282, metadata !DIExpression()), !dbg !1390
  %95 = load i8, i8* %94, align 1, !dbg !1391, !tbaa !552
  %96 = icmp eq i8 %95, 0, !dbg !1393
  br i1 %96, label %97, label %85, !dbg !1393, !llvm.loop !1399

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1401
  call void @llvm.dbg.value(metadata i64 %98, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %81, metadata !1275, metadata !DIExpression()), !dbg !1325
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %99, metadata !1276, metadata !DIExpression()), !dbg !1325
  br label %111, !dbg !1403

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1325
  br label %102, !dbg !1404

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1325
  br i1 %45, label %102, label %105, !dbg !1405

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 2, metadata !1267, metadata !DIExpression()), !dbg !1325
  br label %111, !dbg !1406

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 2, metadata !1267, metadata !DIExpression()), !dbg !1325
  br i1 %45, label %111, label %105, !dbg !1406

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1407
  br i1 %107, label %111, label %108, !dbg !1411

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1407, !tbaa !552
  br label %111, !dbg !1407

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1278, metadata !DIExpression()), !dbg !1325
  br label %111, !dbg !1412

110:                                              ; preds = %36
  call void @abort() #36, !dbg !1413
  unreachable, !dbg !1413

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1401
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.87, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.88, i64 0, i64 0), %102 ], !dbg !1325
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1325
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %117, metadata !1276, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %116, metadata !1275, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %115, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %114, metadata !1271, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %113, metadata !1270, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %112, metadata !1267, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 0, metadata !1287, metadata !DIExpression()), !dbg !1414
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
  br label %132, !dbg !1415

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1401
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1329
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1414
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1264, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %139, metadata !1287, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %135, metadata !1274, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %134, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %133, metadata !1266, metadata !DIExpression()), !dbg !1325
  %141 = icmp eq i64 %133, -1, !dbg !1416
  br i1 %141, label %142, label %146, !dbg !1417

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1418
  %144 = load i8, i8* %143, align 1, !dbg !1418, !tbaa !552
  %145 = icmp eq i8 %144, 0, !dbg !1419
  br i1 %145, label %596, label %148, !dbg !1420

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1421
  br i1 %147, label %596, label %148, !dbg !1420

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1289, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 0, metadata !1292, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 0, metadata !1293, metadata !DIExpression()), !dbg !1422
  br i1 %123, label %149, label %163, !dbg !1423

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1425
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1426
  br i1 %151, label %152, label %154, !dbg !1426

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %153, metadata !1266, metadata !DIExpression()), !dbg !1325
  br label %154, !dbg !1428

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1428
  call void @llvm.dbg.value(metadata i64 %155, metadata !1266, metadata !DIExpression()), !dbg !1325
  %156 = icmp ugt i64 %150, %155, !dbg !1429
  br i1 %156, label %163, label %157, !dbg !1430

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1431
  call void @llvm.dbg.value(metadata i8* %158, metadata !1432, metadata !DIExpression()) #34, !dbg !1437
  call void @llvm.dbg.value(metadata i8* %116, metadata !1435, metadata !DIExpression()) #34, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %117, metadata !1436, metadata !DIExpression()) #34, !dbg !1437
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !1439
  %160 = icmp ne i32 %159, 0, !dbg !1440
  %161 = or i1 %160, %125, !dbg !1441
  %162 = xor i1 %160, true, !dbg !1441
  br i1 %161, label %163, label %647, !dbg !1441

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %164, metadata !1266, metadata !DIExpression()), !dbg !1325
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1442
  %167 = load i8, i8* %166, align 1, !dbg !1442, !tbaa !552
  call void @llvm.dbg.value(metadata i8 %167, metadata !1294, metadata !DIExpression()), !dbg !1422
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
  ], !dbg !1443

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1444

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1445

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1292, metadata !DIExpression()), !dbg !1422
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1449
  br i1 %171, label %188, label %172, !dbg !1449

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1451
  br i1 %173, label %174, label %176, !dbg !1455

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1451
  store i8 39, i8* %175, align 1, !dbg !1451, !tbaa !552
  br label %176, !dbg !1451

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %177, metadata !1273, metadata !DIExpression()), !dbg !1325
  %178 = icmp ult i64 %177, %140, !dbg !1456
  br i1 %178, label %179, label %181, !dbg !1459

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1456
  store i8 36, i8* %180, align 1, !dbg !1456, !tbaa !552
  br label %181, !dbg !1456

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %182, metadata !1273, metadata !DIExpression()), !dbg !1325
  %183 = icmp ult i64 %182, %140, !dbg !1460
  br i1 %183, label %184, label %186, !dbg !1463

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1460
  store i8 39, i8* %185, align 1, !dbg !1460, !tbaa !552
  br label %186, !dbg !1460

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %187, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 1, metadata !1281, metadata !DIExpression()), !dbg !1325
  br label %188, !dbg !1464

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1325
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %189, metadata !1273, metadata !DIExpression()), !dbg !1325
  %191 = icmp ult i64 %189, %140, !dbg !1465
  br i1 %191, label %192, label %194, !dbg !1468

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1465
  store i8 92, i8* %193, align 1, !dbg !1465, !tbaa !552
  br label %194, !dbg !1465

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %195, metadata !1273, metadata !DIExpression()), !dbg !1325
  br i1 %120, label %196, label %499, !dbg !1469

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1471
  %198 = icmp ult i64 %197, %164, !dbg !1472
  br i1 %198, label %199, label %456, !dbg !1473

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1474
  %201 = load i8, i8* %200, align 1, !dbg !1474, !tbaa !552
  %202 = add i8 %201, -48, !dbg !1475
  %203 = icmp ult i8 %202, 10, !dbg !1475
  br i1 %203, label %204, label %456, !dbg !1475

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1476
  br i1 %205, label %206, label %208, !dbg !1480

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1476
  store i8 48, i8* %207, align 1, !dbg !1476, !tbaa !552
  br label %208, !dbg !1476

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %209, metadata !1273, metadata !DIExpression()), !dbg !1325
  %210 = icmp ult i64 %209, %140, !dbg !1481
  br i1 %210, label %211, label %213, !dbg !1484

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1481
  store i8 48, i8* %212, align 1, !dbg !1481, !tbaa !552
  br label %213, !dbg !1481

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %214, metadata !1273, metadata !DIExpression()), !dbg !1325
  br label %456, !dbg !1485

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1486

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1487

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1488

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1490

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1492
  %221 = icmp ult i64 %220, %164, !dbg !1493
  br i1 %221, label %222, label %456, !dbg !1494

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1495
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1496
  %225 = load i8, i8* %224, align 1, !dbg !1496, !tbaa !552
  %226 = icmp eq i8 %225, 63, !dbg !1497
  br i1 %226, label %227, label %456, !dbg !1498

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1499
  %229 = load i8, i8* %228, align 1, !dbg !1499, !tbaa !552
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
  ], !dbg !1500

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1501

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1294, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %220, metadata !1287, metadata !DIExpression()), !dbg !1414
  %232 = icmp ult i64 %134, %140, !dbg !1503
  br i1 %232, label %233, label %235, !dbg !1506

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1503
  store i8 63, i8* %234, align 1, !dbg !1503, !tbaa !552
  br label %235, !dbg !1503

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %236, metadata !1273, metadata !DIExpression()), !dbg !1325
  %237 = icmp ult i64 %236, %140, !dbg !1507
  br i1 %237, label %238, label %240, !dbg !1510

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1507
  store i8 34, i8* %239, align 1, !dbg !1507, !tbaa !552
  br label %240, !dbg !1507

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %241, metadata !1273, metadata !DIExpression()), !dbg !1325
  %242 = icmp ult i64 %241, %140, !dbg !1511
  br i1 %242, label %243, label %245, !dbg !1514

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1511
  store i8 34, i8* %244, align 1, !dbg !1511, !tbaa !552
  br label %245, !dbg !1511

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1514
  call void @llvm.dbg.value(metadata i64 %246, metadata !1273, metadata !DIExpression()), !dbg !1325
  %247 = icmp ult i64 %246, %140, !dbg !1515
  br i1 %247, label %248, label %250, !dbg !1518

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1515
  store i8 63, i8* %249, align 1, !dbg !1515, !tbaa !552
  br label %250, !dbg !1515

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %251, metadata !1273, metadata !DIExpression()), !dbg !1325
  br label %456, !dbg !1519

252:                                              ; preds = %163
  br label %263, !dbg !1520

253:                                              ; preds = %163
  br label %263, !dbg !1521

254:                                              ; preds = %163
  br label %261, !dbg !1522

255:                                              ; preds = %163
  br label %261, !dbg !1523

256:                                              ; preds = %163
  br label %263, !dbg !1524

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1525

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1526

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1529

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1531

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1532
  call void @llvm.dbg.label(metadata !1319), !dbg !1533
  br i1 %128, label %263, label %638, !dbg !1534

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1532
  call void @llvm.dbg.label(metadata !1321), !dbg !1536
  br i1 %118, label %510, label %467, !dbg !1537

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1538

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1539, !tbaa !552
  %268 = icmp eq i8 %267, 0, !dbg !1541
  br i1 %268, label %269, label %456, !dbg !1542

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1543
  br i1 %270, label %271, label %456, !dbg !1545

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1293, metadata !DIExpression()), !dbg !1422
  br label %272, !dbg !1546

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1293, metadata !DIExpression()), !dbg !1422
  br i1 %126, label %274, label %456, !dbg !1547

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1549

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1279, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 1, metadata !1293, metadata !DIExpression()), !dbg !1422
  br i1 %126, label %276, label %456, !dbg !1550

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1551

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1554
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1556
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1556
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %282, metadata !1264, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %281, metadata !1274, metadata !DIExpression()), !dbg !1325
  %283 = icmp ult i64 %134, %282, !dbg !1557
  br i1 %283, label %284, label %286, !dbg !1560

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1557
  store i8 39, i8* %285, align 1, !dbg !1557, !tbaa !552
  br label %286, !dbg !1557

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %287, metadata !1273, metadata !DIExpression()), !dbg !1325
  %288 = icmp ult i64 %287, %282, !dbg !1561
  br i1 %288, label %289, label %291, !dbg !1564

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1561
  store i8 92, i8* %290, align 1, !dbg !1561, !tbaa !552
  br label %291, !dbg !1561

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %292, metadata !1273, metadata !DIExpression()), !dbg !1325
  %293 = icmp ult i64 %292, %282, !dbg !1565
  br i1 %293, label %294, label %296, !dbg !1568

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1565
  store i8 39, i8* %295, align 1, !dbg !1565, !tbaa !552
  br label %296, !dbg !1565

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %297, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 0, metadata !1281, metadata !DIExpression()), !dbg !1325
  br label %456, !dbg !1569

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1570

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1295, metadata !DIExpression()), !dbg !1571
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !1572
  %301 = load i16*, i16** %300, align 8, !dbg !1572, !tbaa !455
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1572
  %304 = load i16, i16* %303, align 2, !dbg !1572, !tbaa !577
  %305 = and i16 %304, 16384, !dbg !1572
  %306 = icmp ne i16 %305, 0, !dbg !1574
  call void @llvm.dbg.value(metadata i8 poison, metadata !1298, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %349, metadata !1295, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %312, metadata !1266, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i1 %350, metadata !1293, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1422
  br label %352, !dbg !1575

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1576
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1299, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1351, metadata !DIExpression()) #34, !dbg !1578
  call void @llvm.dbg.value(metadata i8* %32, metadata !1359, metadata !DIExpression()) #34, !dbg !1580
  call void @llvm.dbg.value(metadata i32 0, metadata !1362, metadata !DIExpression()) #34, !dbg !1580
  call void @llvm.dbg.value(metadata i64 8, metadata !1363, metadata !DIExpression()) #34, !dbg !1580
  store i64 0, i64* %14, align 8, !dbg !1582
  call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i8 1, metadata !1298, metadata !DIExpression()), !dbg !1571
  %308 = icmp eq i64 %164, -1, !dbg !1583
  br i1 %308, label %309, label %311, !dbg !1585

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %310, metadata !1266, metadata !DIExpression()), !dbg !1325
  br label %311, !dbg !1587

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1422
  call void @llvm.dbg.value(metadata i64 %312, metadata !1266, metadata !DIExpression()), !dbg !1325
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1588
  %313 = sub i64 %312, %139, !dbg !1589
  call void @llvm.dbg.value(metadata i32* %16, metadata !1302, metadata !DIExpression(DW_OP_deref)), !dbg !1590
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %314, metadata !1306, metadata !DIExpression()), !dbg !1590
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1592

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()), !dbg !1571
  %316 = icmp ugt i64 %312, %139, !dbg !1593
  br i1 %316, label %319, label %317, !dbg !1595

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1298, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()), !dbg !1571
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1596
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %349, metadata !1295, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %312, metadata !1266, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i1 %350, metadata !1293, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1422
  br label %352, !dbg !1575

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1298, metadata !DIExpression()), !dbg !1571
  br label %346, !dbg !1598

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1295, metadata !DIExpression()), !dbg !1571
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1600
  %323 = load i8, i8* %322, align 1, !dbg !1600, !tbaa !552
  %324 = icmp eq i8 %323, 0, !dbg !1595
  br i1 %324, label %348, label %325, !dbg !1601

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %326, metadata !1295, metadata !DIExpression()), !dbg !1571
  %327 = add i64 %326, %139, !dbg !1603
  %328 = icmp eq i64 %326, %313, !dbg !1593
  br i1 %328, label %348, label %319, !dbg !1595, !llvm.loop !1604

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1605
  call void @llvm.dbg.value(metadata i64 1, metadata !1307, metadata !DIExpression()), !dbg !1606
  br i1 %331, label %332, label %340, !dbg !1605

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1307, metadata !DIExpression()), !dbg !1606
  %334 = add i64 %333, %139, !dbg !1607
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1609
  %336 = load i8, i8* %335, align 1, !dbg !1609, !tbaa !552
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1610

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %338, metadata !1307, metadata !DIExpression()), !dbg !1606
  %339 = icmp eq i64 %338, %314, !dbg !1612
  br i1 %339, label %340, label %332, !dbg !1613, !llvm.loop !1614

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1616, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %341, metadata !1302, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i32 %341, metadata !1618, metadata !DIExpression()) #34, !dbg !1626
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !1628
  %343 = icmp ne i32 %342, 0, !dbg !1629
  call void @llvm.dbg.value(metadata i8 poison, metadata !1298, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %314, metadata !1295, metadata !DIExpression()), !dbg !1571
  br label %348, !dbg !1630

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1298, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()), !dbg !1571
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1596
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1597
  call void @llvm.dbg.label(metadata !1324), !dbg !1631
  %345 = select i1 %118, i32 4, i32 2, !dbg !1632
  br label %643, !dbg !1632

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1298, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()), !dbg !1571
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1596
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %349, metadata !1295, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %312, metadata !1266, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i1 %350, metadata !1293, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1422
  br label %352, !dbg !1575

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1298, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()), !dbg !1571
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1596
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %349, metadata !1295, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %312, metadata !1266, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i1 %350, metadata !1293, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1422
  %351 = icmp ugt i64 %349, 1, !dbg !1634
  br i1 %351, label %357, label %352, !dbg !1575

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1635
  br i1 %356, label %456, label %357, !dbg !1635

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %361, metadata !1315, metadata !DIExpression()), !dbg !1637
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1638

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1325
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1414
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1639
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1422
  call void @llvm.dbg.value(metadata i8 %369, metadata !1294, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %368, metadata !1292, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %366, metadata !1287, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %364, metadata !1273, metadata !DIExpression()), !dbg !1325
  br i1 %362, label %414, label %370, !dbg !1640

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1645

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1292, metadata !DIExpression()), !dbg !1422
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1648
  br i1 %372, label %389, label %373, !dbg !1648

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1650
  br i1 %374, label %375, label %377, !dbg !1654

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1650
  store i8 39, i8* %376, align 1, !dbg !1650, !tbaa !552
  br label %377, !dbg !1650

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %378, metadata !1273, metadata !DIExpression()), !dbg !1325
  %379 = icmp ult i64 %378, %140, !dbg !1655
  br i1 %379, label %380, label %382, !dbg !1658

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1655
  store i8 36, i8* %381, align 1, !dbg !1655, !tbaa !552
  br label %382, !dbg !1655

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %383, metadata !1273, metadata !DIExpression()), !dbg !1325
  %384 = icmp ult i64 %383, %140, !dbg !1659
  br i1 %384, label %385, label %387, !dbg !1662

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1659
  store i8 39, i8* %386, align 1, !dbg !1659, !tbaa !552
  br label %387, !dbg !1659

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %388, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 1, metadata !1281, metadata !DIExpression()), !dbg !1325
  br label %389, !dbg !1663

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1325
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %390, metadata !1273, metadata !DIExpression()), !dbg !1325
  %392 = icmp ult i64 %390, %140, !dbg !1664
  br i1 %392, label %393, label %395, !dbg !1667

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1664
  store i8 92, i8* %394, align 1, !dbg !1664, !tbaa !552
  br label %395, !dbg !1664

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %396, metadata !1273, metadata !DIExpression()), !dbg !1325
  %397 = icmp ult i64 %396, %140, !dbg !1668
  br i1 %397, label %398, label %402, !dbg !1671

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1668
  %400 = or i8 %399, 48, !dbg !1668
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1668
  store i8 %400, i8* %401, align 1, !dbg !1668, !tbaa !552
  br label %402, !dbg !1668

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %403, metadata !1273, metadata !DIExpression()), !dbg !1325
  %404 = icmp ult i64 %403, %140, !dbg !1672
  br i1 %404, label %405, label %410, !dbg !1675

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1672
  %407 = and i8 %406, 7, !dbg !1672
  %408 = or i8 %407, 48, !dbg !1672
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1672
  store i8 %408, i8* %409, align 1, !dbg !1672, !tbaa !552
  br label %410, !dbg !1672

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %411, metadata !1273, metadata !DIExpression()), !dbg !1325
  %412 = and i8 %369, 7, !dbg !1676
  %413 = or i8 %412, 48, !dbg !1677
  call void @llvm.dbg.value(metadata i8 %413, metadata !1294, metadata !DIExpression()), !dbg !1422
  br label %421, !dbg !1678

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1679

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1680
  br i1 %416, label %417, label %419, !dbg !1685

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1680
  store i8 92, i8* %418, align 1, !dbg !1680, !tbaa !552
  br label %419, !dbg !1680

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %420, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 0, metadata !1289, metadata !DIExpression()), !dbg !1422
  br label %421, !dbg !1686

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1325
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1422
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1422
  call void @llvm.dbg.value(metadata i8 %426, metadata !1294, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %425, metadata !1292, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %422, metadata !1273, metadata !DIExpression()), !dbg !1325
  %427 = add i64 %366, 1, !dbg !1687
  %428 = icmp ugt i64 %361, %427, !dbg !1689
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1690

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1691
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1691
  br i1 %432, label %433, label %444, !dbg !1691

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1694
  br i1 %434, label %435, label %437, !dbg !1698

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1694
  store i8 39, i8* %436, align 1, !dbg !1694, !tbaa !552
  br label %437, !dbg !1694

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %438, metadata !1273, metadata !DIExpression()), !dbg !1325
  %439 = icmp ult i64 %438, %140, !dbg !1699
  br i1 %439, label %440, label %442, !dbg !1702

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1699
  store i8 39, i8* %441, align 1, !dbg !1699, !tbaa !552
  br label %442, !dbg !1699

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %443, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 0, metadata !1281, metadata !DIExpression()), !dbg !1325
  br label %444, !dbg !1703

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1704
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %445, metadata !1273, metadata !DIExpression()), !dbg !1325
  %447 = icmp ult i64 %445, %140, !dbg !1705
  br i1 %447, label %448, label %450, !dbg !1708

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1705
  store i8 %426, i8* %449, align 1, !dbg !1705, !tbaa !552
  br label %450, !dbg !1705

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %451, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %427, metadata !1287, metadata !DIExpression()), !dbg !1414
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1709
  %453 = load i8, i8* %452, align 1, !dbg !1709, !tbaa !552
  call void @llvm.dbg.value(metadata i8 %453, metadata !1294, metadata !DIExpression()), !dbg !1422
  br label %363, !dbg !1710, !llvm.loop !1711

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1294, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i1 %358, metadata !1293, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1422
  call void @llvm.dbg.value(metadata i8 %425, metadata !1292, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %366, metadata !1287, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %422, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %360, metadata !1266, metadata !DIExpression()), !dbg !1325
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1714
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1325
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1329
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1414
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1422
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1264, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 %465, metadata !1294, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1292, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %462, metadata !1287, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %459, metadata !1274, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %458, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %457, metadata !1266, metadata !DIExpression()), !dbg !1325
  br i1 %121, label %478, label %467, !dbg !1715

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
  br i1 %131, label %479, label %499, !dbg !1717

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1718

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
  %490 = lshr i8 %481, 5, !dbg !1719
  %491 = zext i8 %490 to i64, !dbg !1719
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1720
  %493 = load i32, i32* %492, align 4, !dbg !1720, !tbaa !543
  %494 = and i8 %481, 31, !dbg !1721
  %495 = zext i8 %494 to i32, !dbg !1721
  %496 = shl nuw i32 1, %495, !dbg !1722
  %497 = and i32 %493, %496, !dbg !1722
  %498 = icmp eq i32 %497, 0, !dbg !1722
  br i1 %498, label %499, label %510, !dbg !1723

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
  br i1 %165, label %510, label %546, !dbg !1724

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1714
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1325
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1329
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1725
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1422
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1264, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 %518, metadata !1294, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %516, metadata !1287, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %513, metadata !1274, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %512, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %511, metadata !1266, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.label(metadata !1322), !dbg !1726
  br i1 %119, label %638, label %520, !dbg !1727

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1292, metadata !DIExpression()), !dbg !1422
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1729
  br i1 %521, label %538, label %522, !dbg !1729

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1731
  br i1 %523, label %524, label %526, !dbg !1735

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1731
  store i8 39, i8* %525, align 1, !dbg !1731, !tbaa !552
  br label %526, !dbg !1731

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %527, metadata !1273, metadata !DIExpression()), !dbg !1325
  %528 = icmp ult i64 %527, %519, !dbg !1736
  br i1 %528, label %529, label %531, !dbg !1739

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1736
  store i8 36, i8* %530, align 1, !dbg !1736, !tbaa !552
  br label %531, !dbg !1736

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %532, metadata !1273, metadata !DIExpression()), !dbg !1325
  %533 = icmp ult i64 %532, %519, !dbg !1740
  br i1 %533, label %534, label %536, !dbg !1743

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1740
  store i8 39, i8* %535, align 1, !dbg !1740, !tbaa !552
  br label %536, !dbg !1740

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %537, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 1, metadata !1281, metadata !DIExpression()), !dbg !1325
  br label %538, !dbg !1744

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1422
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %539, metadata !1273, metadata !DIExpression()), !dbg !1325
  %541 = icmp ult i64 %539, %519, !dbg !1745
  br i1 %541, label %542, label %544, !dbg !1748

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1745
  store i8 92, i8* %543, align 1, !dbg !1745, !tbaa !552
  br label %544, !dbg !1745

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %556, metadata !1264, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 %555, metadata !1294, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1292, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %552, metadata !1287, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %549, metadata !1274, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %548, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %547, metadata !1266, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.label(metadata !1323), !dbg !1749
  br label %570, !dbg !1750

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1714
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1325
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1329
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1725
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1753
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1264, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 %555, metadata !1294, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8 poison, metadata !1292, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %552, metadata !1287, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %549, metadata !1274, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %548, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %547, metadata !1266, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.label(metadata !1323), !dbg !1749
  %557 = xor i1 %551, true, !dbg !1750
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1750
  br i1 %558, label %570, label %559, !dbg !1750

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1754
  br i1 %560, label %561, label %563, !dbg !1758

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1754
  store i8 39, i8* %562, align 1, !dbg !1754, !tbaa !552
  br label %563, !dbg !1754

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %564, metadata !1273, metadata !DIExpression()), !dbg !1325
  %565 = icmp ult i64 %564, %556, !dbg !1759
  br i1 %565, label %566, label %568, !dbg !1762

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1759
  store i8 39, i8* %567, align 1, !dbg !1759, !tbaa !552
  br label %568, !dbg !1759

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %569, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 0, metadata !1281, metadata !DIExpression()), !dbg !1325
  br label %570, !dbg !1763

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1422
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %578, metadata !1273, metadata !DIExpression()), !dbg !1325
  %580 = icmp ult i64 %578, %571, !dbg !1764
  br i1 %580, label %581, label %583, !dbg !1767

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1764
  store i8 %572, i8* %582, align 1, !dbg !1764, !tbaa !552
  br label %583, !dbg !1764

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %584, metadata !1273, metadata !DIExpression()), !dbg !1325
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1768
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1325
  br label %586, !dbg !1769

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1714
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1325
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1329
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1725
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1264, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %593, metadata !1287, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %589, metadata !1274, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %588, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %587, metadata !1266, metadata !DIExpression()), !dbg !1325
  %595 = add i64 %593, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %595, metadata !1287, metadata !DIExpression()), !dbg !1414
  br label %132, !dbg !1771, !llvm.loop !1772

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1264, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 undef, metadata !1274, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 undef, metadata !1273, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 undef, metadata !1266, metadata !DIExpression()), !dbg !1325
  %597 = icmp eq i64 %134, 0, !dbg !1774
  %598 = and i1 %126, %597, !dbg !1776
  %599 = and i1 %598, %119, !dbg !1776
  br i1 %599, label %638, label %600, !dbg !1776

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1777
  %602 = or i1 %119, %601, !dbg !1777
  %603 = xor i1 %136, true, !dbg !1777
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1777
  br i1 %604, label %612, label %605, !dbg !1777

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1779

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1781
  br label %653, !dbg !1783

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1784
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1786
  br i1 %611, label %36, label %612, !dbg !1786

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1787
  %615 = or i1 %614, %613, !dbg !1789
  br i1 %615, label %631, label %616, !dbg !1789

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1275, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %134, metadata !1273, metadata !DIExpression()), !dbg !1325
  %617 = load i8, i8* %116, align 1, !dbg !1790, !tbaa !552
  %618 = icmp eq i8 %617, 0, !dbg !1793
  br i1 %618, label %631, label %619, !dbg !1793

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1275, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %622, metadata !1273, metadata !DIExpression()), !dbg !1325
  %623 = icmp ult i64 %622, %140, !dbg !1794
  br i1 %623, label %624, label %626, !dbg !1797

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1794
  store i8 %620, i8* %625, align 1, !dbg !1794, !tbaa !552
  br label %626, !dbg !1794

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %627, metadata !1273, metadata !DIExpression()), !dbg !1325
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1798
  call void @llvm.dbg.value(metadata i8* %628, metadata !1275, metadata !DIExpression()), !dbg !1325
  %629 = load i8, i8* %628, align 1, !dbg !1790, !tbaa !552
  %630 = icmp eq i8 %629, 0, !dbg !1793
  br i1 %630, label %631, label %619, !dbg !1793, !llvm.loop !1799

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1401
  call void @llvm.dbg.value(metadata i64 %632, metadata !1273, metadata !DIExpression()), !dbg !1325
  %633 = icmp ult i64 %632, %140, !dbg !1801
  br i1 %633, label %634, label %653, !dbg !1803

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1804
  store i8 0, i8* %635, align 1, !dbg !1805, !tbaa !552
  br label %653, !dbg !1804

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1324), !dbg !1631
  %637 = icmp eq i32 %112, 2, !dbg !1806
  br i1 %637, label %643, label %647, !dbg !1632

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1324), !dbg !1631
  %641 = icmp eq i32 %112, 2, !dbg !1806
  %642 = select i1 %118, i32 4, i32 2, !dbg !1632
  br i1 %641, label %643, label %647, !dbg !1632

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1632

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1267, metadata !DIExpression()), !dbg !1325
  %651 = and i32 %5, -3, !dbg !1807
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1808
  br label %653, !dbg !1809

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1810
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1811 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1813 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1817, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 %1, metadata !1818, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1819, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8* %0, metadata !1821, metadata !DIExpression()) #34, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %1, metadata !1826, metadata !DIExpression()) #34, !dbg !1834
  call void @llvm.dbg.value(metadata i64* null, metadata !1827, metadata !DIExpression()) #34, !dbg !1834
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1828, metadata !DIExpression()) #34, !dbg !1834
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1836
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1836
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1829, metadata !DIExpression()) #34, !dbg !1834
  %6 = tail call i32* @__errno_location() #37, !dbg !1837
  %7 = load i32, i32* %6, align 4, !dbg !1837, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %7, metadata !1830, metadata !DIExpression()) #34, !dbg !1834
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1838
  %9 = load i32, i32* %8, align 4, !dbg !1838, !tbaa !1207
  %10 = or i32 %9, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %10, metadata !1831, metadata !DIExpression()) #34, !dbg !1834
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1840
  %12 = load i32, i32* %11, align 8, !dbg !1840, !tbaa !1156
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1841
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1842
  %15 = load i8*, i8** %14, align 8, !dbg !1842, !tbaa !1229
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1843
  %17 = load i8*, i8** %16, align 8, !dbg !1843, !tbaa !1232
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !1844
  %19 = add i64 %18, 1, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %19, metadata !1832, metadata !DIExpression()) #34, !dbg !1834
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #41, !dbg !1846
  call void @llvm.dbg.value(metadata i8* %20, metadata !1833, metadata !DIExpression()) #34, !dbg !1834
  %21 = load i32, i32* %11, align 8, !dbg !1847, !tbaa !1156
  %22 = load i8*, i8** %14, align 8, !dbg !1848, !tbaa !1229
  %23 = load i8*, i8** %16, align 8, !dbg !1849, !tbaa !1232
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !1850
  store i32 %7, i32* %6, align 4, !dbg !1851, !tbaa !543
  ret i8* %20, !dbg !1852
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1822 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1821, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %1, metadata !1826, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64* %2, metadata !1827, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1828, metadata !DIExpression()), !dbg !1853
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1854
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1829, metadata !DIExpression()), !dbg !1853
  %7 = tail call i32* @__errno_location() #37, !dbg !1855
  %8 = load i32, i32* %7, align 4, !dbg !1855, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %8, metadata !1830, metadata !DIExpression()), !dbg !1853
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1856
  %10 = load i32, i32* %9, align 4, !dbg !1856, !tbaa !1207
  %11 = icmp eq i64* %2, null, !dbg !1857
  %12 = zext i1 %11 to i32, !dbg !1857
  %13 = or i32 %10, %12, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %13, metadata !1831, metadata !DIExpression()), !dbg !1853
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1859
  %15 = load i32, i32* %14, align 8, !dbg !1859, !tbaa !1156
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1860
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1861
  %18 = load i8*, i8** %17, align 8, !dbg !1861, !tbaa !1229
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1862
  %20 = load i8*, i8** %19, align 8, !dbg !1862, !tbaa !1232
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1863
  %22 = add i64 %21, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %22, metadata !1832, metadata !DIExpression()), !dbg !1853
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #41, !dbg !1865
  call void @llvm.dbg.value(metadata i8* %23, metadata !1833, metadata !DIExpression()), !dbg !1853
  %24 = load i32, i32* %14, align 8, !dbg !1866, !tbaa !1156
  %25 = load i8*, i8** %17, align 8, !dbg !1867, !tbaa !1229
  %26 = load i8*, i8** %19, align 8, !dbg !1868, !tbaa !1232
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1869
  store i32 %8, i32* %7, align 4, !dbg !1870, !tbaa !543
  br i1 %11, label %29, label %28, !dbg !1871

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1872, !tbaa !1874
  br label %29, !dbg !1875

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1876
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1877 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1882, !tbaa !455
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1879, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 1, metadata !1880, metadata !DIExpression()), !dbg !1884
  %2 = load i32, i32* @nslots, align 4, !tbaa !543
  call void @llvm.dbg.value(metadata i32 1, metadata !1880, metadata !DIExpression()), !dbg !1884
  %3 = icmp sgt i32 %2, 1, !dbg !1885
  br i1 %3, label %4, label %6, !dbg !1887

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1885
  br label %10, !dbg !1887

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1888
  %8 = load i8*, i8** %7, align 8, !dbg !1888, !tbaa !1890
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1892
  br i1 %9, label %17, label %16, !dbg !1893

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1880, metadata !DIExpression()), !dbg !1884
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1894
  %13 = load i8*, i8** %12, align 8, !dbg !1894, !tbaa !1890
  tail call void @free(i8* noundef %13) #34, !dbg !1895
  %14 = add nuw nsw i64 %11, 1, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %14, metadata !1880, metadata !DIExpression()), !dbg !1884
  %15 = icmp eq i64 %14, %5, !dbg !1885
  br i1 %15, label %6, label %10, !dbg !1887, !llvm.loop !1897

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !1899
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1901, !tbaa !1902
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1903, !tbaa !1890
  br label %17, !dbg !1904

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1905
  br i1 %18, label %21, label %19, !dbg !1907

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1908
  tail call void @free(i8* noundef %20) #34, !dbg !1910
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1911, !tbaa !455
  br label %21, !dbg !1912

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1913, !tbaa !543
  ret void, !dbg !1914
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1915 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1917, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8* %1, metadata !1918, metadata !DIExpression()), !dbg !1919
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1920
  ret i8* %3, !dbg !1921
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1922 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1926, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8* %1, metadata !1927, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %2, metadata !1928, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1929, metadata !DIExpression()), !dbg !1942
  %6 = tail call i32* @__errno_location() #37, !dbg !1943
  %7 = load i32, i32* %6, align 4, !dbg !1943, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %7, metadata !1930, metadata !DIExpression()), !dbg !1942
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1944, !tbaa !455
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1931, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1932, metadata !DIExpression()), !dbg !1942
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1945
  br i1 %9, label %10, label %11, !dbg !1945

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !1947
  unreachable, !dbg !1947

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1948, !tbaa !543
  %13 = icmp sgt i32 %12, %0, !dbg !1949
  br i1 %13, label %36, label %14, !dbg !1950

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1951
  call void @llvm.dbg.value(metadata i1 %15, metadata !1933, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1952
  %16 = bitcast i64* %5 to i8*, !dbg !1953
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !1953
  %17 = sext i32 %12 to i64, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %17, metadata !1936, metadata !DIExpression()), !dbg !1952
  store i64 %17, i64* %5, align 8, !dbg !1955, !tbaa !1874
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !1956
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1956
  %20 = add nuw nsw i32 %0, 1, !dbg !1957
  %21 = sub i32 %20, %12, !dbg !1958
  %22 = sext i32 %21 to i64, !dbg !1959
  call void @llvm.dbg.value(metadata i64* %5, metadata !1936, metadata !DIExpression(DW_OP_deref)), !dbg !1952
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !1960
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1960
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1931, metadata !DIExpression()), !dbg !1942
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1961, !tbaa !455
  br i1 %15, label %25, label %26, !dbg !1962

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1963, !tbaa.struct !1965
  br label %26, !dbg !1966

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !1967, !tbaa !543
  %28 = sext i32 %27 to i64, !dbg !1968
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1968
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1969
  %31 = load i64, i64* %5, align 8, !dbg !1970, !tbaa !1874
  call void @llvm.dbg.value(metadata i64 %31, metadata !1936, metadata !DIExpression()), !dbg !1952
  %32 = sub nsw i64 %31, %28, !dbg !1971
  %33 = shl i64 %32, 4, !dbg !1972
  call void @llvm.dbg.value(metadata i8* %30, metadata !1359, metadata !DIExpression()) #34, !dbg !1973
  call void @llvm.dbg.value(metadata i32 0, metadata !1362, metadata !DIExpression()) #34, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %33, metadata !1363, metadata !DIExpression()) #34, !dbg !1973
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !1975
  %34 = load i64, i64* %5, align 8, !dbg !1976, !tbaa !1874
  call void @llvm.dbg.value(metadata i64 %34, metadata !1936, metadata !DIExpression()), !dbg !1952
  %35 = trunc i64 %34 to i32, !dbg !1976
  store i32 %35, i32* @nslots, align 4, !dbg !1977, !tbaa !543
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !1978
  br label %36, !dbg !1979

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1942
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1931, metadata !DIExpression()), !dbg !1942
  %38 = zext i32 %0 to i64, !dbg !1980
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !1981
  %40 = load i64, i64* %39, align 8, !dbg !1981, !tbaa !1902
  call void @llvm.dbg.value(metadata i64 %40, metadata !1937, metadata !DIExpression()), !dbg !1982
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !1983
  %42 = load i8*, i8** %41, align 8, !dbg !1983, !tbaa !1890
  call void @llvm.dbg.value(metadata i8* %42, metadata !1939, metadata !DIExpression()), !dbg !1982
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1984
  %44 = load i32, i32* %43, align 4, !dbg !1984, !tbaa !1207
  %45 = or i32 %44, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %45, metadata !1940, metadata !DIExpression()), !dbg !1982
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1986
  %47 = load i32, i32* %46, align 8, !dbg !1986, !tbaa !1156
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1987
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1988
  %50 = load i8*, i8** %49, align 8, !dbg !1988, !tbaa !1229
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1989
  %52 = load i8*, i8** %51, align 8, !dbg !1989, !tbaa !1232
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !1990
  call void @llvm.dbg.value(metadata i64 %53, metadata !1941, metadata !DIExpression()), !dbg !1982
  %54 = icmp ugt i64 %40, %53, !dbg !1991
  br i1 %54, label %65, label %55, !dbg !1993

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %56, metadata !1937, metadata !DIExpression()), !dbg !1982
  store i64 %56, i64* %39, align 8, !dbg !1996, !tbaa !1902
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1997
  br i1 %57, label %59, label %58, !dbg !1999

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !2000
  br label %59, !dbg !2000

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #41, !dbg !2001
  call void @llvm.dbg.value(metadata i8* %60, metadata !1939, metadata !DIExpression()), !dbg !1982
  store i8* %60, i8** %41, align 8, !dbg !2002, !tbaa !1890
  %61 = load i32, i32* %46, align 8, !dbg !2003, !tbaa !1156
  %62 = load i8*, i8** %49, align 8, !dbg !2004, !tbaa !1229
  %63 = load i8*, i8** %51, align 8, !dbg !2005, !tbaa !1232
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2006
  br label %65, !dbg !2007

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !1982
  call void @llvm.dbg.value(metadata i8* %66, metadata !1939, metadata !DIExpression()), !dbg !1982
  store i32 %7, i32* %6, align 4, !dbg !2008, !tbaa !543
  ret i8* %66, !dbg !2009
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2010 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2014, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %1, metadata !2015, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %2, metadata !2016, metadata !DIExpression()), !dbg !2017
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2018
  ret i8* %4, !dbg !2019
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2020 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2022, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i32 0, metadata !1917, metadata !DIExpression()) #34, !dbg !2024
  call void @llvm.dbg.value(metadata i8* %0, metadata !1918, metadata !DIExpression()) #34, !dbg !2024
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2026
  ret i8* %2, !dbg !2027
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2028 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2032, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i64 %1, metadata !2033, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i32 0, metadata !2014, metadata !DIExpression()) #34, !dbg !2035
  call void @llvm.dbg.value(metadata i8* %0, metadata !2015, metadata !DIExpression()) #34, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %1, metadata !2016, metadata !DIExpression()) #34, !dbg !2035
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2037
  ret i8* %3, !dbg !2038
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2039 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2043, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %1, metadata !2044, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %2, metadata !2045, metadata !DIExpression()), !dbg !2047
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2048
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2048
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2046, metadata !DIExpression()), !dbg !2049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2050), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %1, metadata !2054, metadata !DIExpression()) #34, !dbg !2060
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2059, metadata !DIExpression()) #34, !dbg !2062
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2062, !alias.scope !2050
  %6 = icmp eq i32 %1, 10, !dbg !2063
  br i1 %6, label %7, label %8, !dbg !2065

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2066, !noalias !2050
  unreachable, !dbg !2066

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2067
  store i32 %1, i32* %9, align 8, !dbg !2068, !tbaa !1156, !alias.scope !2050
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2069
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2070
  ret i8* %10, !dbg !2071
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2072 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2076, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %1, metadata !2077, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %2, metadata !2078, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %3, metadata !2079, metadata !DIExpression()), !dbg !2081
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2082
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2082
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2080, metadata !DIExpression()), !dbg !2083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %1, metadata !2054, metadata !DIExpression()) #34, !dbg !2088
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2059, metadata !DIExpression()) #34, !dbg !2090
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !2090, !alias.scope !2084
  %7 = icmp eq i32 %1, 10, !dbg !2091
  br i1 %7, label %8, label %9, !dbg !2092

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2093, !noalias !2084
  unreachable, !dbg !2093

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2094
  store i32 %1, i32* %10, align 8, !dbg !2095, !tbaa !1156, !alias.scope !2084
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2096
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2097
  ret i8* %11, !dbg !2098
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2099 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2103, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %1, metadata !2104, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 0, metadata !2043, metadata !DIExpression()) #34, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %0, metadata !2044, metadata !DIExpression()) #34, !dbg !2106
  call void @llvm.dbg.value(metadata i8* %1, metadata !2045, metadata !DIExpression()) #34, !dbg !2106
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2108
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2108
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2046, metadata !DIExpression()) #34, !dbg !2109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110) #34, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %0, metadata !2054, metadata !DIExpression()) #34, !dbg !2114
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2059, metadata !DIExpression()) #34, !dbg !2116
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !2116, !alias.scope !2110
  %5 = icmp eq i32 %0, 10, !dbg !2117
  br i1 %5, label %6, label %7, !dbg !2118

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !2119, !noalias !2110
  unreachable, !dbg !2119

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2120
  store i32 %0, i32* %8, align 8, !dbg !2121, !tbaa !1156, !alias.scope !2110
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2122
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2123
  ret i8* %9, !dbg !2124
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2125 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2129, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* %1, metadata !2130, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %2, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i32 0, metadata !2076, metadata !DIExpression()) #34, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %0, metadata !2077, metadata !DIExpression()) #34, !dbg !2133
  call void @llvm.dbg.value(metadata i8* %1, metadata !2078, metadata !DIExpression()) #34, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %2, metadata !2079, metadata !DIExpression()) #34, !dbg !2133
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2135
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2135
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2080, metadata !DIExpression()) #34, !dbg !2136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2137) #34, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %0, metadata !2054, metadata !DIExpression()) #34, !dbg !2141
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2059, metadata !DIExpression()) #34, !dbg !2143
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2143, !alias.scope !2137
  %6 = icmp eq i32 %0, 10, !dbg !2144
  br i1 %6, label %7, label %8, !dbg !2145

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2146, !noalias !2137
  unreachable, !dbg !2146

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2147
  store i32 %0, i32* %9, align 8, !dbg !2148, !tbaa !1156, !alias.scope !2137
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2149
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2150
  ret i8* %10, !dbg !2151
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2152 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2156, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %1, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %2, metadata !2158, metadata !DIExpression()), !dbg !2160
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2161
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2161
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2159, metadata !DIExpression()), !dbg !2162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2163, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1174, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8 %2, metadata !1175, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 1, metadata !1176, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8 %2, metadata !1177, metadata !DIExpression()), !dbg !2165
  %6 = lshr i8 %2, 5, !dbg !2167
  %7 = zext i8 %6 to i64, !dbg !2167
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2168
  call void @llvm.dbg.value(metadata i32* %8, metadata !1178, metadata !DIExpression()), !dbg !2165
  %9 = and i8 %2, 31, !dbg !2169
  %10 = zext i8 %9 to i32, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %10, metadata !1180, metadata !DIExpression()), !dbg !2165
  %11 = load i32, i32* %8, align 4, !dbg !2170, !tbaa !543
  %12 = lshr i32 %11, %10, !dbg !2171
  %13 = and i32 %12, 1, !dbg !2172
  call void @llvm.dbg.value(metadata i32 %13, metadata !1181, metadata !DIExpression()), !dbg !2165
  %14 = xor i32 %13, 1, !dbg !2173
  %15 = shl i32 %14, %10, !dbg !2174
  %16 = xor i32 %15, %11, !dbg !2175
  store i32 %16, i32* %8, align 4, !dbg !2175, !tbaa !543
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2176
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2177
  ret i8* %17, !dbg !2178
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2179 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2183, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %1, metadata !2184, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8* %0, metadata !2156, metadata !DIExpression()) #34, !dbg !2186
  call void @llvm.dbg.value(metadata i64 -1, metadata !2157, metadata !DIExpression()) #34, !dbg !2186
  call void @llvm.dbg.value(metadata i8 %1, metadata !2158, metadata !DIExpression()) #34, !dbg !2186
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2188
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2188
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2159, metadata !DIExpression()) #34, !dbg !2189
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2190, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1174, metadata !DIExpression()) #34, !dbg !2191
  call void @llvm.dbg.value(metadata i8 %1, metadata !1175, metadata !DIExpression()) #34, !dbg !2191
  call void @llvm.dbg.value(metadata i32 1, metadata !1176, metadata !DIExpression()) #34, !dbg !2191
  call void @llvm.dbg.value(metadata i8 %1, metadata !1177, metadata !DIExpression()) #34, !dbg !2191
  %5 = lshr i8 %1, 5, !dbg !2193
  %6 = zext i8 %5 to i64, !dbg !2193
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2194
  call void @llvm.dbg.value(metadata i32* %7, metadata !1178, metadata !DIExpression()) #34, !dbg !2191
  %8 = and i8 %1, 31, !dbg !2195
  %9 = zext i8 %8 to i32, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %9, metadata !1180, metadata !DIExpression()) #34, !dbg !2191
  %10 = load i32, i32* %7, align 4, !dbg !2196, !tbaa !543
  %11 = lshr i32 %10, %9, !dbg !2197
  %12 = and i32 %11, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %12, metadata !1181, metadata !DIExpression()) #34, !dbg !2191
  %13 = xor i32 %12, 1, !dbg !2199
  %14 = shl i32 %13, %9, !dbg !2200
  %15 = xor i32 %14, %10, !dbg !2201
  store i32 %15, i32* %7, align 4, !dbg !2201, !tbaa !543
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2202
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2203
  ret i8* %16, !dbg !2204
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2205 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2207, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8* %0, metadata !2183, metadata !DIExpression()) #34, !dbg !2209
  call void @llvm.dbg.value(metadata i8 58, metadata !2184, metadata !DIExpression()) #34, !dbg !2209
  call void @llvm.dbg.value(metadata i8* %0, metadata !2156, metadata !DIExpression()) #34, !dbg !2211
  call void @llvm.dbg.value(metadata i64 -1, metadata !2157, metadata !DIExpression()) #34, !dbg !2211
  call void @llvm.dbg.value(metadata i8 58, metadata !2158, metadata !DIExpression()) #34, !dbg !2211
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2213
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2213
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2159, metadata !DIExpression()) #34, !dbg !2214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2215, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1174, metadata !DIExpression()) #34, !dbg !2216
  call void @llvm.dbg.value(metadata i8 58, metadata !1175, metadata !DIExpression()) #34, !dbg !2216
  call void @llvm.dbg.value(metadata i32 1, metadata !1176, metadata !DIExpression()) #34, !dbg !2216
  call void @llvm.dbg.value(metadata i8 58, metadata !1177, metadata !DIExpression()) #34, !dbg !2216
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2218
  call void @llvm.dbg.value(metadata i32* %4, metadata !1178, metadata !DIExpression()) #34, !dbg !2216
  call void @llvm.dbg.value(metadata i32 26, metadata !1180, metadata !DIExpression()) #34, !dbg !2216
  %5 = load i32, i32* %4, align 4, !dbg !2219, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %5, metadata !1181, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2216
  %6 = or i32 %5, 67108864, !dbg !2220
  store i32 %6, i32* %4, align 4, !dbg !2220, !tbaa !543
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2222
  ret i8* %7, !dbg !2223
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2224 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2226, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i64 %1, metadata !2227, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i8* %0, metadata !2156, metadata !DIExpression()) #34, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %1, metadata !2157, metadata !DIExpression()) #34, !dbg !2229
  call void @llvm.dbg.value(metadata i8 58, metadata !2158, metadata !DIExpression()) #34, !dbg !2229
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2231
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2159, metadata !DIExpression()) #34, !dbg !2232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2233, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1174, metadata !DIExpression()) #34, !dbg !2234
  call void @llvm.dbg.value(metadata i8 58, metadata !1175, metadata !DIExpression()) #34, !dbg !2234
  call void @llvm.dbg.value(metadata i32 1, metadata !1176, metadata !DIExpression()) #34, !dbg !2234
  call void @llvm.dbg.value(metadata i8 58, metadata !1177, metadata !DIExpression()) #34, !dbg !2234
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2236
  call void @llvm.dbg.value(metadata i32* %5, metadata !1178, metadata !DIExpression()) #34, !dbg !2234
  call void @llvm.dbg.value(metadata i32 26, metadata !1180, metadata !DIExpression()) #34, !dbg !2234
  %6 = load i32, i32* %5, align 4, !dbg !2237, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %6, metadata !1181, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2234
  %7 = or i32 %6, 67108864, !dbg !2238
  store i32 %7, i32* %5, align 4, !dbg !2238, !tbaa !543
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2239
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2240
  ret i8* %8, !dbg !2241
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2242 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2244, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 %1, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %2, metadata !2246, metadata !DIExpression()), !dbg !2248
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2249
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2249
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2247, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 %1, metadata !2054, metadata !DIExpression()) #34, !dbg !2251
  call void @llvm.dbg.value(metadata i32 0, metadata !2059, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2251
  %6 = icmp eq i32 %1, 10, !dbg !2253
  br i1 %6, label %7, label %8, !dbg !2254

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2255, !noalias !2256
  unreachable, !dbg !2255

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2059, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2251
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2259
  store i32 %1, i32* %9, align 8, !dbg !2259, !tbaa.struct !2164
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2259
  %11 = bitcast i32* %10 to i8*, !dbg !2259
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1174, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 58, metadata !1175, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 1, metadata !1176, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 58, metadata !1177, metadata !DIExpression()), !dbg !2260
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2262
  call void @llvm.dbg.value(metadata i32* %12, metadata !1178, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 26, metadata !1180, metadata !DIExpression()), !dbg !2260
  %13 = load i32, i32* %12, align 4, !dbg !2263, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %13, metadata !1181, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2260
  %14 = or i32 %13, 67108864, !dbg !2264
  store i32 %14, i32* %12, align 4, !dbg !2264, !tbaa !543
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2266
  ret i8* %15, !dbg !2267
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2268 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2272, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* %1, metadata !2273, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* %2, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* %3, metadata !2275, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 %0, metadata !2277, metadata !DIExpression()) #34, !dbg !2287
  call void @llvm.dbg.value(metadata i8* %1, metadata !2282, metadata !DIExpression()) #34, !dbg !2287
  call void @llvm.dbg.value(metadata i8* %2, metadata !2283, metadata !DIExpression()) #34, !dbg !2287
  call void @llvm.dbg.value(metadata i8* %3, metadata !2284, metadata !DIExpression()) #34, !dbg !2287
  call void @llvm.dbg.value(metadata i64 -1, metadata !2285, metadata !DIExpression()) #34, !dbg !2287
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2289
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2289
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2286, metadata !DIExpression()) #34, !dbg !2290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2291, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1214, metadata !DIExpression()) #34, !dbg !2292
  call void @llvm.dbg.value(metadata i8* %1, metadata !1215, metadata !DIExpression()) #34, !dbg !2292
  call void @llvm.dbg.value(metadata i8* %2, metadata !1216, metadata !DIExpression()) #34, !dbg !2292
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1214, metadata !DIExpression()) #34, !dbg !2292
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2294
  store i32 10, i32* %7, align 8, !dbg !2295, !tbaa !1156
  %8 = icmp ne i8* %1, null, !dbg !2296
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2297
  br i1 %10, label %12, label %11, !dbg !2297

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2298
  unreachable, !dbg !2298

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2299
  store i8* %1, i8** %13, align 8, !dbg !2300, !tbaa !1229
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2301
  store i8* %2, i8** %14, align 8, !dbg !2302, !tbaa !1232
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2303
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2304
  ret i8* %15, !dbg !2305
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2278 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2277, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8* %1, metadata !2282, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8* %2, metadata !2283, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8* %3, metadata !2284, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %4, metadata !2285, metadata !DIExpression()), !dbg !2306
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2307
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2286, metadata !DIExpression()), !dbg !2308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2309, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1214, metadata !DIExpression()) #34, !dbg !2310
  call void @llvm.dbg.value(metadata i8* %1, metadata !1215, metadata !DIExpression()) #34, !dbg !2310
  call void @llvm.dbg.value(metadata i8* %2, metadata !1216, metadata !DIExpression()) #34, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1214, metadata !DIExpression()) #34, !dbg !2310
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2312
  store i32 10, i32* %8, align 8, !dbg !2313, !tbaa !1156
  %9 = icmp ne i8* %1, null, !dbg !2314
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2315
  br i1 %11, label %13, label %12, !dbg !2315

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !2316
  unreachable, !dbg !2316

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2317
  store i8* %1, i8** %14, align 8, !dbg !2318, !tbaa !1229
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2319
  store i8* %2, i8** %15, align 8, !dbg !2320, !tbaa !1232
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2321
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2322
  ret i8* %16, !dbg !2323
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2324 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2328, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %1, metadata !2329, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %2, metadata !2330, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 0, metadata !2272, metadata !DIExpression()) #34, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %0, metadata !2273, metadata !DIExpression()) #34, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %1, metadata !2274, metadata !DIExpression()) #34, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %2, metadata !2275, metadata !DIExpression()) #34, !dbg !2332
  call void @llvm.dbg.value(metadata i32 0, metadata !2277, metadata !DIExpression()) #34, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %0, metadata !2282, metadata !DIExpression()) #34, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %1, metadata !2283, metadata !DIExpression()) #34, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %2, metadata !2284, metadata !DIExpression()) #34, !dbg !2334
  call void @llvm.dbg.value(metadata i64 -1, metadata !2285, metadata !DIExpression()) #34, !dbg !2334
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2336
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2336
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2286, metadata !DIExpression()) #34, !dbg !2337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2338, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1214, metadata !DIExpression()) #34, !dbg !2339
  call void @llvm.dbg.value(metadata i8* %0, metadata !1215, metadata !DIExpression()) #34, !dbg !2339
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()) #34, !dbg !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1214, metadata !DIExpression()) #34, !dbg !2339
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2341
  store i32 10, i32* %6, align 8, !dbg !2342, !tbaa !1156
  %7 = icmp ne i8* %0, null, !dbg !2343
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2344
  br i1 %9, label %11, label %10, !dbg !2344

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2345
  unreachable, !dbg !2345

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2346
  store i8* %0, i8** %12, align 8, !dbg !2347, !tbaa !1229
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2348
  store i8* %1, i8** %13, align 8, !dbg !2349, !tbaa !1232
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2350
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2351
  ret i8* %14, !dbg !2352
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2353 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2357, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* %1, metadata !2358, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* %2, metadata !2359, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %3, metadata !2360, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 0, metadata !2277, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %0, metadata !2282, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %1, metadata !2283, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %2, metadata !2284, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %3, metadata !2285, metadata !DIExpression()) #34, !dbg !2362
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2364
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2364
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2286, metadata !DIExpression()) #34, !dbg !2365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2366, !tbaa.struct !2164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1214, metadata !DIExpression()) #34, !dbg !2367
  call void @llvm.dbg.value(metadata i8* %0, metadata !1215, metadata !DIExpression()) #34, !dbg !2367
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()) #34, !dbg !2367
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1214, metadata !DIExpression()) #34, !dbg !2367
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2369
  store i32 10, i32* %7, align 8, !dbg !2370, !tbaa !1156
  %8 = icmp ne i8* %0, null, !dbg !2371
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2372
  br i1 %10, label %12, label %11, !dbg !2372

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2373
  unreachable, !dbg !2373

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2374
  store i8* %0, i8** %13, align 8, !dbg !2375, !tbaa !1229
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2376
  store i8* %1, i8** %14, align 8, !dbg !2377, !tbaa !1232
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2378
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2379
  ret i8* %15, !dbg !2380
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2385, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %1, metadata !2386, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %2, metadata !2387, metadata !DIExpression()), !dbg !2388
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2389
  ret i8* %4, !dbg !2390
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2391 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2395, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i64 %1, metadata !2396, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i32 0, metadata !2385, metadata !DIExpression()) #34, !dbg !2398
  call void @llvm.dbg.value(metadata i8* %0, metadata !2386, metadata !DIExpression()) #34, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %1, metadata !2387, metadata !DIExpression()) #34, !dbg !2398
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2400
  ret i8* %3, !dbg !2401
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2402 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2406, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8* %1, metadata !2407, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 %0, metadata !2385, metadata !DIExpression()) #34, !dbg !2409
  call void @llvm.dbg.value(metadata i8* %1, metadata !2386, metadata !DIExpression()) #34, !dbg !2409
  call void @llvm.dbg.value(metadata i64 -1, metadata !2387, metadata !DIExpression()) #34, !dbg !2409
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2411
  ret i8* %3, !dbg !2412
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2413 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2417, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i32 0, metadata !2406, metadata !DIExpression()) #34, !dbg !2419
  call void @llvm.dbg.value(metadata i8* %0, metadata !2407, metadata !DIExpression()) #34, !dbg !2419
  call void @llvm.dbg.value(metadata i32 0, metadata !2385, metadata !DIExpression()) #34, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %0, metadata !2386, metadata !DIExpression()) #34, !dbg !2421
  call void @llvm.dbg.value(metadata i64 -1, metadata !2387, metadata !DIExpression()) #34, !dbg !2421
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2423
  ret i8* %2, !dbg !2424
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2425 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2464, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %1, metadata !2465, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %2, metadata !2466, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %3, metadata !2467, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8** %4, metadata !2468, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i64 %5, metadata !2469, metadata !DIExpression()), !dbg !2470
  %7 = icmp eq i8* %1, null, !dbg !2471
  br i1 %7, label %10, label %8, !dbg !2473

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !2474
  br label %12, !dbg !2474

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.92, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !2475
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.94, i64 0, i64 0), i32 noundef 5) #34, !dbg !2476
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !2476
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.95, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2477
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.96, i64 0, i64 0), i32 noundef 5) #34, !dbg !2478
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.97, i64 0, i64 0)) #34, !dbg !2478
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.95, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2479
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
  ], !dbg !2480

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.98, i64 0, i64 0), i32 noundef 5) #34, !dbg !2481
  %21 = load i8*, i8** %4, align 8, !dbg !2481, !tbaa !455
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !2481
  br label %147, !dbg !2483

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.99, i64 0, i64 0), i32 noundef 5) #34, !dbg !2484
  %25 = load i8*, i8** %4, align 8, !dbg !2484, !tbaa !455
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2484
  %27 = load i8*, i8** %26, align 8, !dbg !2484, !tbaa !455
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !2484
  br label %147, !dbg !2485

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.100, i64 0, i64 0), i32 noundef 5) #34, !dbg !2486
  %31 = load i8*, i8** %4, align 8, !dbg !2486, !tbaa !455
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2486
  %33 = load i8*, i8** %32, align 8, !dbg !2486, !tbaa !455
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2486
  %35 = load i8*, i8** %34, align 8, !dbg !2486, !tbaa !455
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !2486
  br label %147, !dbg !2487

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.101, i64 0, i64 0), i32 noundef 5) #34, !dbg !2488
  %39 = load i8*, i8** %4, align 8, !dbg !2488, !tbaa !455
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2488
  %41 = load i8*, i8** %40, align 8, !dbg !2488, !tbaa !455
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2488
  %43 = load i8*, i8** %42, align 8, !dbg !2488, !tbaa !455
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2488
  %45 = load i8*, i8** %44, align 8, !dbg !2488, !tbaa !455
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !2488
  br label %147, !dbg !2489

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.102, i64 0, i64 0), i32 noundef 5) #34, !dbg !2490
  %49 = load i8*, i8** %4, align 8, !dbg !2490, !tbaa !455
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2490
  %51 = load i8*, i8** %50, align 8, !dbg !2490, !tbaa !455
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2490
  %53 = load i8*, i8** %52, align 8, !dbg !2490, !tbaa !455
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2490
  %55 = load i8*, i8** %54, align 8, !dbg !2490, !tbaa !455
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2490
  %57 = load i8*, i8** %56, align 8, !dbg !2490, !tbaa !455
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !2490
  br label %147, !dbg !2491

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.103, i64 0, i64 0), i32 noundef 5) #34, !dbg !2492
  %61 = load i8*, i8** %4, align 8, !dbg !2492, !tbaa !455
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2492
  %63 = load i8*, i8** %62, align 8, !dbg !2492, !tbaa !455
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2492
  %65 = load i8*, i8** %64, align 8, !dbg !2492, !tbaa !455
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2492
  %67 = load i8*, i8** %66, align 8, !dbg !2492, !tbaa !455
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2492
  %69 = load i8*, i8** %68, align 8, !dbg !2492, !tbaa !455
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2492
  %71 = load i8*, i8** %70, align 8, !dbg !2492, !tbaa !455
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !2492
  br label %147, !dbg !2493

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.104, i64 0, i64 0), i32 noundef 5) #34, !dbg !2494
  %75 = load i8*, i8** %4, align 8, !dbg !2494, !tbaa !455
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2494
  %77 = load i8*, i8** %76, align 8, !dbg !2494, !tbaa !455
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2494
  %79 = load i8*, i8** %78, align 8, !dbg !2494, !tbaa !455
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2494
  %81 = load i8*, i8** %80, align 8, !dbg !2494, !tbaa !455
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2494
  %83 = load i8*, i8** %82, align 8, !dbg !2494, !tbaa !455
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2494
  %85 = load i8*, i8** %84, align 8, !dbg !2494, !tbaa !455
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2494
  %87 = load i8*, i8** %86, align 8, !dbg !2494, !tbaa !455
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !2494
  br label %147, !dbg !2495

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.105, i64 0, i64 0), i32 noundef 5) #34, !dbg !2496
  %91 = load i8*, i8** %4, align 8, !dbg !2496, !tbaa !455
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2496
  %93 = load i8*, i8** %92, align 8, !dbg !2496, !tbaa !455
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2496
  %95 = load i8*, i8** %94, align 8, !dbg !2496, !tbaa !455
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2496
  %97 = load i8*, i8** %96, align 8, !dbg !2496, !tbaa !455
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2496
  %99 = load i8*, i8** %98, align 8, !dbg !2496, !tbaa !455
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2496
  %101 = load i8*, i8** %100, align 8, !dbg !2496, !tbaa !455
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2496
  %103 = load i8*, i8** %102, align 8, !dbg !2496, !tbaa !455
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2496
  %105 = load i8*, i8** %104, align 8, !dbg !2496, !tbaa !455
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !2496
  br label %147, !dbg !2497

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.106, i64 0, i64 0), i32 noundef 5) #34, !dbg !2498
  %109 = load i8*, i8** %4, align 8, !dbg !2498, !tbaa !455
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2498
  %111 = load i8*, i8** %110, align 8, !dbg !2498, !tbaa !455
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2498
  %113 = load i8*, i8** %112, align 8, !dbg !2498, !tbaa !455
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2498
  %115 = load i8*, i8** %114, align 8, !dbg !2498, !tbaa !455
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2498
  %117 = load i8*, i8** %116, align 8, !dbg !2498, !tbaa !455
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2498
  %119 = load i8*, i8** %118, align 8, !dbg !2498, !tbaa !455
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2498
  %121 = load i8*, i8** %120, align 8, !dbg !2498, !tbaa !455
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2498
  %123 = load i8*, i8** %122, align 8, !dbg !2498, !tbaa !455
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2498
  %125 = load i8*, i8** %124, align 8, !dbg !2498, !tbaa !455
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !2498
  br label %147, !dbg !2499

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.107, i64 0, i64 0), i32 noundef 5) #34, !dbg !2500
  %129 = load i8*, i8** %4, align 8, !dbg !2500, !tbaa !455
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2500
  %131 = load i8*, i8** %130, align 8, !dbg !2500, !tbaa !455
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2500
  %133 = load i8*, i8** %132, align 8, !dbg !2500, !tbaa !455
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2500
  %135 = load i8*, i8** %134, align 8, !dbg !2500, !tbaa !455
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2500
  %137 = load i8*, i8** %136, align 8, !dbg !2500, !tbaa !455
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2500
  %139 = load i8*, i8** %138, align 8, !dbg !2500, !tbaa !455
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2500
  %141 = load i8*, i8** %140, align 8, !dbg !2500, !tbaa !455
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2500
  %143 = load i8*, i8** %142, align 8, !dbg !2500, !tbaa !455
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2500
  %145 = load i8*, i8** %144, align 8, !dbg !2500, !tbaa !455
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !2500
  br label %147, !dbg !2501

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2502
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2503 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2507, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8* %1, metadata !2508, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8* %2, metadata !2509, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8* %3, metadata !2510, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8** %4, metadata !2511, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64 0, metadata !2512, metadata !DIExpression()), !dbg !2513
  br label %6, !dbg !2514

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2516
  call void @llvm.dbg.value(metadata i64 %7, metadata !2512, metadata !DIExpression()), !dbg !2513
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2517
  %9 = load i8*, i8** %8, align 8, !dbg !2517, !tbaa !455
  %10 = icmp eq i8* %9, null, !dbg !2519
  %11 = add i64 %7, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %11, metadata !2512, metadata !DIExpression()), !dbg !2513
  br i1 %10, label %12, label %6, !dbg !2519, !llvm.loop !2521

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2523
  ret void, !dbg !2524
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2525 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2540, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8* %1, metadata !2541, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8* %2, metadata !2542, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8* %3, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2544, metadata !DIExpression()), !dbg !2549
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2550
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !2550
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2546, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 0, metadata !2545, metadata !DIExpression()), !dbg !2548
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2545, metadata !DIExpression()), !dbg !2548
  %11 = load i32, i32* %8, align 8, !dbg !2552
  %12 = icmp sgt i32 %11, -1, !dbg !2552
  br i1 %12, label %20, label %13, !dbg !2552

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2552
  store i32 %14, i32* %8, align 8, !dbg !2552
  %15 = icmp ult i32 %11, -7, !dbg !2552
  br i1 %15, label %16, label %20, !dbg !2552

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2552
  %18 = sext i32 %11 to i64, !dbg !2552
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2552
  br label %24, !dbg !2552

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2552
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2552
  store i8* %23, i8** %10, align 8, !dbg !2552
  br label %24, !dbg !2552

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2552
  %28 = load i8*, i8** %27, align 8, !dbg !2552
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2555
  store i8* %28, i8** %29, align 8, !dbg !2556, !tbaa !455
  %30 = icmp eq i8* %28, null, !dbg !2557
  br i1 %30, label %210, label %31, !dbg !2558

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2545, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 1, metadata !2545, metadata !DIExpression()), !dbg !2548
  %32 = icmp sgt i32 %25, -1, !dbg !2552
  br i1 %32, label %40, label %33, !dbg !2552

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2552
  store i32 %34, i32* %8, align 8, !dbg !2552
  %35 = icmp ult i32 %25, -7, !dbg !2552
  br i1 %35, label %36, label %40, !dbg !2552

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2552
  %38 = sext i32 %25 to i64, !dbg !2552
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2552
  br label %44, !dbg !2552

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2552
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2552
  store i8* %43, i8** %10, align 8, !dbg !2552
  br label %44, !dbg !2552

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2552
  %48 = load i8*, i8** %47, align 8, !dbg !2552
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2555
  store i8* %48, i8** %49, align 8, !dbg !2556, !tbaa !455
  %50 = icmp eq i8* %48, null, !dbg !2557
  br i1 %50, label %210, label %51, !dbg !2558

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2545, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 2, metadata !2545, metadata !DIExpression()), !dbg !2548
  %52 = icmp sgt i32 %45, -1, !dbg !2552
  br i1 %52, label %60, label %53, !dbg !2552

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2552
  store i32 %54, i32* %8, align 8, !dbg !2552
  %55 = icmp ult i32 %45, -7, !dbg !2552
  br i1 %55, label %56, label %60, !dbg !2552

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2552
  %58 = sext i32 %45 to i64, !dbg !2552
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2552
  br label %64, !dbg !2552

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2552
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2552
  store i8* %63, i8** %10, align 8, !dbg !2552
  br label %64, !dbg !2552

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2552
  %68 = load i8*, i8** %67, align 8, !dbg !2552
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2555
  store i8* %68, i8** %69, align 8, !dbg !2556, !tbaa !455
  %70 = icmp eq i8* %68, null, !dbg !2557
  br i1 %70, label %210, label %71, !dbg !2558

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2545, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 3, metadata !2545, metadata !DIExpression()), !dbg !2548
  %72 = icmp sgt i32 %65, -1, !dbg !2552
  br i1 %72, label %80, label %73, !dbg !2552

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2552
  store i32 %74, i32* %8, align 8, !dbg !2552
  %75 = icmp ult i32 %65, -7, !dbg !2552
  br i1 %75, label %76, label %80, !dbg !2552

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2552
  %78 = sext i32 %65 to i64, !dbg !2552
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2552
  br label %84, !dbg !2552

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2552
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2552
  store i8* %83, i8** %10, align 8, !dbg !2552
  br label %84, !dbg !2552

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2552
  %88 = load i8*, i8** %87, align 8, !dbg !2552
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2555
  store i8* %88, i8** %89, align 8, !dbg !2556, !tbaa !455
  %90 = icmp eq i8* %88, null, !dbg !2557
  br i1 %90, label %210, label %91, !dbg !2558

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2545, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 4, metadata !2545, metadata !DIExpression()), !dbg !2548
  %92 = icmp sgt i32 %85, -1, !dbg !2552
  br i1 %92, label %100, label %93, !dbg !2552

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2552
  store i32 %94, i32* %8, align 8, !dbg !2552
  %95 = icmp ult i32 %85, -7, !dbg !2552
  br i1 %95, label %96, label %100, !dbg !2552

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2552
  %98 = sext i32 %85 to i64, !dbg !2552
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2552
  br label %104, !dbg !2552

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2552
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2552
  store i8* %103, i8** %10, align 8, !dbg !2552
  br label %104, !dbg !2552

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2552
  %108 = load i8*, i8** %107, align 8, !dbg !2552
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2555
  store i8* %108, i8** %109, align 8, !dbg !2556, !tbaa !455
  %110 = icmp eq i8* %108, null, !dbg !2557
  br i1 %110, label %210, label %111, !dbg !2558

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2545, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 5, metadata !2545, metadata !DIExpression()), !dbg !2548
  %112 = icmp sgt i32 %105, -1, !dbg !2552
  br i1 %112, label %120, label %113, !dbg !2552

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2552
  store i32 %114, i32* %8, align 8, !dbg !2552
  %115 = icmp ult i32 %105, -7, !dbg !2552
  br i1 %115, label %116, label %120, !dbg !2552

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2552
  %118 = sext i32 %105 to i64, !dbg !2552
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2552
  br label %124, !dbg !2552

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2552
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2552
  store i8* %123, i8** %10, align 8, !dbg !2552
  br label %124, !dbg !2552

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2552
  %128 = load i8*, i8** %127, align 8, !dbg !2552
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2555
  store i8* %128, i8** %129, align 8, !dbg !2556, !tbaa !455
  %130 = icmp eq i8* %128, null, !dbg !2557
  br i1 %130, label %210, label %131, !dbg !2558

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2545, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 6, metadata !2545, metadata !DIExpression()), !dbg !2548
  %132 = icmp sgt i32 %125, -1, !dbg !2552
  br i1 %132, label %140, label %133, !dbg !2552

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2552
  store i32 %134, i32* %8, align 8, !dbg !2552
  %135 = icmp ult i32 %125, -7, !dbg !2552
  br i1 %135, label %136, label %140, !dbg !2552

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2552
  %138 = sext i32 %125 to i64, !dbg !2552
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2552
  br label %144, !dbg !2552

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2552
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2552
  store i8* %143, i8** %10, align 8, !dbg !2552
  br label %144, !dbg !2552

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2552
  %148 = load i8*, i8** %147, align 8, !dbg !2552
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2555
  store i8* %148, i8** %149, align 8, !dbg !2556, !tbaa !455
  %150 = icmp eq i8* %148, null, !dbg !2557
  br i1 %150, label %210, label %151, !dbg !2558

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2545, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 7, metadata !2545, metadata !DIExpression()), !dbg !2548
  %152 = icmp sgt i32 %145, -1, !dbg !2552
  br i1 %152, label %160, label %153, !dbg !2552

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2552
  store i32 %154, i32* %8, align 8, !dbg !2552
  %155 = icmp ult i32 %145, -7, !dbg !2552
  br i1 %155, label %156, label %160, !dbg !2552

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2552
  %158 = sext i32 %145 to i64, !dbg !2552
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2552
  br label %164, !dbg !2552

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2552
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2552
  store i8* %163, i8** %10, align 8, !dbg !2552
  br label %164, !dbg !2552

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2552
  %168 = load i8*, i8** %167, align 8, !dbg !2552
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2555
  store i8* %168, i8** %169, align 8, !dbg !2556, !tbaa !455
  %170 = icmp eq i8* %168, null, !dbg !2557
  br i1 %170, label %210, label %171, !dbg !2558

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2545, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 8, metadata !2545, metadata !DIExpression()), !dbg !2548
  %172 = icmp sgt i32 %165, -1, !dbg !2552
  br i1 %172, label %180, label %173, !dbg !2552

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2552
  store i32 %174, i32* %8, align 8, !dbg !2552
  %175 = icmp ult i32 %165, -7, !dbg !2552
  br i1 %175, label %176, label %180, !dbg !2552

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2552
  %178 = sext i32 %165 to i64, !dbg !2552
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2552
  br label %184, !dbg !2552

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2552
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2552
  store i8* %183, i8** %10, align 8, !dbg !2552
  br label %184, !dbg !2552

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2552
  %188 = load i8*, i8** %187, align 8, !dbg !2552
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2555
  store i8* %188, i8** %189, align 8, !dbg !2556, !tbaa !455
  %190 = icmp eq i8* %188, null, !dbg !2557
  br i1 %190, label %210, label %191, !dbg !2558

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2545, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 9, metadata !2545, metadata !DIExpression()), !dbg !2548
  %192 = icmp sgt i32 %185, -1, !dbg !2552
  br i1 %192, label %200, label %193, !dbg !2552

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2552
  store i32 %194, i32* %8, align 8, !dbg !2552
  %195 = icmp ult i32 %185, -7, !dbg !2552
  br i1 %195, label %196, label %200, !dbg !2552

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2552
  %198 = sext i32 %185 to i64, !dbg !2552
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2552
  br label %203, !dbg !2552

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2552
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2552
  store i8* %202, i8** %10, align 8, !dbg !2552
  br label %203, !dbg !2552

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2552
  %206 = load i8*, i8** %205, align 8, !dbg !2552
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2555
  store i8* %206, i8** %207, align 8, !dbg !2556, !tbaa !455
  %208 = icmp eq i8* %206, null, !dbg !2557
  %209 = select i1 %208, i64 9, i64 10, !dbg !2558
  br label %210, !dbg !2558

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2559
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2560
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !2561
  ret void, !dbg !2561
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2562 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2566, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %1, metadata !2567, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %2, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %3, metadata !2569, metadata !DIExpression()), !dbg !2571
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2572
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !2572
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.va_start(i8* nonnull %7), !dbg !2574
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !2575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2575, !tbaa.struct !863
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2575
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !2575
  call void @llvm.va_end(i8* nonnull %7), !dbg !2576
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !2577
  ret void, !dbg !2577
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2578 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2579, !tbaa !455
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.95, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2579
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.112, i64 0, i64 0), i32 noundef 5) #34, !dbg !2580
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.113, i64 0, i64 0)) #34, !dbg !2580
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.114, i64 0, i64 0), i32 noundef 5) #34, !dbg !2581
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.116, i64 0, i64 0)) #34, !dbg !2581
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #34, !dbg !2582
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #34, !dbg !2582
  ret void, !dbg !2583
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2584 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2589, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %1, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %2, metadata !2591, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8* %0, metadata !2593, metadata !DIExpression()) #34, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %1, metadata !2596, metadata !DIExpression()) #34, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %2, metadata !2597, metadata !DIExpression()) #34, !dbg !2598
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %4, metadata !2601, metadata !DIExpression()) #34, !dbg !2606
  %5 = icmp eq i8* %4, null, !dbg !2608
  br i1 %5, label %6, label %7, !dbg !2610

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !2611
  unreachable, !dbg !2611

7:                                                ; preds = %3
  ret i8* %4, !dbg !2612
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !2594 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2593, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 %1, metadata !2596, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 %2, metadata !2597, metadata !DIExpression()), !dbg !2613
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !2614
  call void @llvm.dbg.value(metadata i8* %4, metadata !2601, metadata !DIExpression()) #34, !dbg !2615
  %5 = icmp eq i8* %4, null, !dbg !2617
  br i1 %5, label %6, label %7, !dbg !2618

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !2619
  unreachable, !dbg !2619

7:                                                ; preds = %3
  ret i8* %4, !dbg !2620
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !2621 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2625, metadata !DIExpression()), !dbg !2626
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !2627
  call void @llvm.dbg.value(metadata i8* %2, metadata !2601, metadata !DIExpression()) #34, !dbg !2628
  %3 = icmp eq i8* %2, null, !dbg !2630
  br i1 %3, label %4, label %5, !dbg !2631

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2632
  unreachable, !dbg !2632

5:                                                ; preds = %1
  ret i8* %2, !dbg !2633
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !2634 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2638, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %0, metadata !2640, metadata !DIExpression()) #34, !dbg !2644
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !2646
  call void @llvm.dbg.value(metadata i8* %2, metadata !2601, metadata !DIExpression()) #34, !dbg !2647
  %3 = icmp eq i8* %2, null, !dbg !2649
  br i1 %3, label %4, label %5, !dbg !2650

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2651
  unreachable, !dbg !2651

5:                                                ; preds = %1
  ret i8* %2, !dbg !2652
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !2653 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2657, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %0, metadata !2625, metadata !DIExpression()) #34, !dbg !2659
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !2661
  call void @llvm.dbg.value(metadata i8* %2, metadata !2601, metadata !DIExpression()) #34, !dbg !2662
  %3 = icmp eq i8* %2, null, !dbg !2664
  br i1 %3, label %4, label %5, !dbg !2665

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2666
  unreachable, !dbg !2666

5:                                                ; preds = %1
  ret i8* %2, !dbg !2667
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2668 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 %1, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %0, metadata !2675, metadata !DIExpression()) #34, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %1, metadata !2679, metadata !DIExpression()) #34, !dbg !2680
  %3 = icmp eq i64 %1, 0, !dbg !2682
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2682
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %5, metadata !2601, metadata !DIExpression()) #34, !dbg !2684
  %6 = icmp eq i8* %5, null, !dbg !2686
  br i1 %6, label %7, label %8, !dbg !2687

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2688
  unreachable, !dbg !2688

8:                                                ; preds = %2
  ret i8* %5, !dbg !2689
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2690 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2694, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %1, metadata !2695, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8* %0, metadata !2697, metadata !DIExpression()) #34, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %1, metadata !2700, metadata !DIExpression()) #34, !dbg !2701
  call void @llvm.dbg.value(metadata i8* %0, metadata !2675, metadata !DIExpression()) #34, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %1, metadata !2679, metadata !DIExpression()) #34, !dbg !2703
  %3 = icmp eq i64 %1, 0, !dbg !2705
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2705
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !2706
  call void @llvm.dbg.value(metadata i8* %5, metadata !2601, metadata !DIExpression()) #34, !dbg !2707
  %6 = icmp eq i8* %5, null, !dbg !2709
  br i1 %6, label %7, label %8, !dbg !2710

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2711
  unreachable, !dbg !2711

8:                                                ; preds = %2
  ret i8* %5, !dbg !2712
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !2713 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2717, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %1, metadata !2718, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %2, metadata !2719, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8* %0, metadata !2721, metadata !DIExpression()) #34, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %1, metadata !2724, metadata !DIExpression()) #34, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %2, metadata !2725, metadata !DIExpression()) #34, !dbg !2726
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %4, metadata !2601, metadata !DIExpression()) #34, !dbg !2729
  %5 = icmp eq i8* %4, null, !dbg !2731
  br i1 %5, label %6, label %7, !dbg !2732

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !2733
  unreachable, !dbg !2733

7:                                                ; preds = %3
  ret i8* %4, !dbg !2734
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !2735 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2739, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8* null, metadata !2593, metadata !DIExpression()) #34, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %0, metadata !2596, metadata !DIExpression()) #34, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %1, metadata !2597, metadata !DIExpression()) #34, !dbg !2742
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !2744
  call void @llvm.dbg.value(metadata i8* %3, metadata !2601, metadata !DIExpression()) #34, !dbg !2745
  %4 = icmp eq i8* %3, null, !dbg !2747
  br i1 %4, label %5, label %6, !dbg !2748

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2749
  unreachable, !dbg !2749

6:                                                ; preds = %2
  ret i8* %3, !dbg !2750
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !2751 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2755, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %1, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i8* null, metadata !2717, metadata !DIExpression()) #34, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %0, metadata !2718, metadata !DIExpression()) #34, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %1, metadata !2719, metadata !DIExpression()) #34, !dbg !2758
  call void @llvm.dbg.value(metadata i8* null, metadata !2721, metadata !DIExpression()) #34, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %0, metadata !2724, metadata !DIExpression()) #34, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %1, metadata !2725, metadata !DIExpression()) #34, !dbg !2760
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !2762
  call void @llvm.dbg.value(metadata i8* %3, metadata !2601, metadata !DIExpression()) #34, !dbg !2763
  %4 = icmp eq i8* %3, null, !dbg !2765
  br i1 %4, label %5, label %6, !dbg !2766

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2767
  unreachable, !dbg !2767

6:                                                ; preds = %2
  ret i8* %3, !dbg !2768
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64* %1, metadata !2774, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %0, metadata !389, metadata !DIExpression()) #34, !dbg !2776
  call void @llvm.dbg.value(metadata i64* %1, metadata !390, metadata !DIExpression()) #34, !dbg !2776
  call void @llvm.dbg.value(metadata i64 1, metadata !391, metadata !DIExpression()) #34, !dbg !2776
  %3 = load i64, i64* %1, align 8, !dbg !2778, !tbaa !1874
  call void @llvm.dbg.value(metadata i64 %3, metadata !392, metadata !DIExpression()) #34, !dbg !2776
  %4 = icmp eq i8* %0, null, !dbg !2779
  br i1 %4, label %5, label %8, !dbg !2781

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2782
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2785
  br label %15, !dbg !2785

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2786
  %10 = add nuw i64 %9, 1, !dbg !2786
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !2786
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2786
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %13, metadata !392, metadata !DIExpression()) #34, !dbg !2776
  br i1 %12, label %14, label %15, !dbg !2789

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !2790
  unreachable, !dbg !2790

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2776
  call void @llvm.dbg.value(metadata i64 %16, metadata !392, metadata !DIExpression()) #34, !dbg !2776
  call void @llvm.dbg.value(metadata i8* %0, metadata !2593, metadata !DIExpression()) #34, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %16, metadata !2596, metadata !DIExpression()) #34, !dbg !2791
  call void @llvm.dbg.value(metadata i64 1, metadata !2597, metadata !DIExpression()) #34, !dbg !2791
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %17, metadata !2601, metadata !DIExpression()) #34, !dbg !2794
  %18 = icmp eq i8* %17, null, !dbg !2796
  br i1 %18, label %19, label %20, !dbg !2797

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !2798
  unreachable, !dbg !2798

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !389, metadata !DIExpression()) #34, !dbg !2776
  store i64 %16, i64* %1, align 8, !dbg !2799, !tbaa !1874
  ret i8* %17, !dbg !2800
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !389, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i64* %1, metadata !390, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %2, metadata !391, metadata !DIExpression()), !dbg !2801
  %4 = load i64, i64* %1, align 8, !dbg !2802, !tbaa !1874
  call void @llvm.dbg.value(metadata i64 %4, metadata !392, metadata !DIExpression()), !dbg !2801
  %5 = icmp eq i8* %0, null, !dbg !2803
  br i1 %5, label %6, label %13, !dbg !2804

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2805
  br i1 %7, label %8, label %20, !dbg !2806

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %9, metadata !392, metadata !DIExpression()), !dbg !2801
  %10 = icmp ugt i64 %2, 128, !dbg !2809
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %12, metadata !392, metadata !DIExpression()), !dbg !2801
  br label %20, !dbg !2811

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2812
  %15 = add nuw i64 %14, 1, !dbg !2812
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2812
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2812
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %18, metadata !392, metadata !DIExpression()), !dbg !2801
  br i1 %17, label %19, label %20, !dbg !2813

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !2814
  unreachable, !dbg !2814

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2801
  call void @llvm.dbg.value(metadata i64 %21, metadata !392, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %0, metadata !2593, metadata !DIExpression()) #34, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %21, metadata !2596, metadata !DIExpression()) #34, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %2, metadata !2597, metadata !DIExpression()) #34, !dbg !2815
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %22, metadata !2601, metadata !DIExpression()) #34, !dbg !2818
  %23 = icmp eq i8* %22, null, !dbg !2820
  br i1 %23, label %24, label %25, !dbg !2821

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !2822
  unreachable, !dbg !2822

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !389, metadata !DIExpression()), !dbg !2801
  store i64 %21, i64* %1, align 8, !dbg !2823, !tbaa !1874
  ret i8* %22, !dbg !2824
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !396 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !401, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64* %1, metadata !402, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %2, metadata !403, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %3, metadata !404, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %4, metadata !405, metadata !DIExpression()), !dbg !2825
  %6 = load i64, i64* %1, align 8, !dbg !2826, !tbaa !1874
  call void @llvm.dbg.value(metadata i64 %6, metadata !406, metadata !DIExpression()), !dbg !2825
  %7 = ashr i64 %6, 1, !dbg !2827
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2827
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2827
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %10, metadata !407, metadata !DIExpression()), !dbg !2825
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %11, metadata !407, metadata !DIExpression()), !dbg !2825
  %12 = icmp sgt i64 %3, -1, !dbg !2830
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2832
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %15, metadata !407, metadata !DIExpression()), !dbg !2825
  %16 = icmp slt i64 %4, 0, !dbg !2833
  br i1 %16, label %17, label %30, !dbg !2833

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2833
  br i1 %18, label %19, label %24, !dbg !2833

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2833
  %21 = udiv i64 9223372036854775807, %20, !dbg !2833
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2833
  br i1 %23, label %46, label %43, !dbg !2833

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2833
  br i1 %25, label %43, label %26, !dbg !2833

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2833
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2833
  %29 = icmp ult i64 %28, %15, !dbg !2833
  br i1 %29, label %46, label %43, !dbg !2833

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2833
  br i1 %31, label %43, label %32, !dbg !2833

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2833
  br i1 %33, label %34, label %40, !dbg !2833

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2833
  br i1 %35, label %43, label %36, !dbg !2833

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2833
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2833
  %39 = icmp ult i64 %38, %4, !dbg !2833
  br i1 %39, label %46, label %43, !dbg !2833

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2833
  %42 = icmp ult i64 %41, %15, !dbg !2833
  br i1 %42, label %46, label %43, !dbg !2833

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2825
  %44 = mul i64 %15, %4, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %44, metadata !408, metadata !DIExpression()), !dbg !2825
  %45 = icmp slt i64 %44, 128, !dbg !2833
  br i1 %45, label %46, label %52, !dbg !2833

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !409, metadata !DIExpression()), !dbg !2825
  %48 = sdiv i64 %47, %4, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %48, metadata !407, metadata !DIExpression()), !dbg !2825
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %51, metadata !408, metadata !DIExpression()), !dbg !2825
  br label %52, !dbg !2838

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2825
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2825
  call void @llvm.dbg.value(metadata i64 %54, metadata !408, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %53, metadata !407, metadata !DIExpression()), !dbg !2825
  %55 = icmp eq i8* %0, null, !dbg !2839
  br i1 %55, label %56, label %57, !dbg !2841

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2842, !tbaa !1874
  br label %57, !dbg !2843

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2844
  %59 = icmp slt i64 %58, %2, !dbg !2846
  br i1 %59, label %60, label %97, !dbg !2847

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2848
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2848
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2848
  call void @llvm.dbg.value(metadata i64 %63, metadata !407, metadata !DIExpression()), !dbg !2825
  br i1 %62, label %96, label %64, !dbg !2849

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2850
  br i1 %66, label %96, label %67, !dbg !2850

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2851

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2851
  br i1 %69, label %70, label %75, !dbg !2851

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2851
  %72 = udiv i64 9223372036854775807, %71, !dbg !2851
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2851
  br i1 %74, label %96, label %94, !dbg !2851

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2851
  br i1 %76, label %94, label %77, !dbg !2851

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2851
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2851
  %80 = icmp ult i64 %79, %63, !dbg !2851
  br i1 %80, label %96, label %94, !dbg !2851

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2851
  br i1 %82, label %94, label %83, !dbg !2851

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2851
  br i1 %84, label %85, label %91, !dbg !2851

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2851
  br i1 %86, label %94, label %87, !dbg !2851

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2851
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2851
  %90 = icmp ult i64 %89, %4, !dbg !2851
  br i1 %90, label %96, label %94, !dbg !2851

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2851
  %93 = icmp ult i64 %92, %63, !dbg !2851
  br i1 %93, label %96, label %94, !dbg !2851

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2825
  %95 = mul i64 %63, %4, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %95, metadata !408, metadata !DIExpression()), !dbg !2825
  br label %97, !dbg !2852

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !2853
  unreachable, !dbg !2853

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2825
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2825
  call void @llvm.dbg.value(metadata i64 %99, metadata !408, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %98, metadata !407, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8* %0, metadata !2672, metadata !DIExpression()) #34, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %99, metadata !2673, metadata !DIExpression()) #34, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %0, metadata !2675, metadata !DIExpression()) #34, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %99, metadata !2679, metadata !DIExpression()) #34, !dbg !2856
  %100 = icmp eq i64 %99, 0, !dbg !2858
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2858
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !2859
  call void @llvm.dbg.value(metadata i8* %102, metadata !2601, metadata !DIExpression()) #34, !dbg !2860
  %103 = icmp eq i8* %102, null, !dbg !2862
  br i1 %103, label %104, label %105, !dbg !2863

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !2864
  unreachable, !dbg !2864

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !401, metadata !DIExpression()), !dbg !2825
  store i64 %98, i64* %1, align 8, !dbg !2865, !tbaa !1874
  ret i8* %102, !dbg !2866
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !2867 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2869, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %0, metadata !2871, metadata !DIExpression()) #34, !dbg !2875
  call void @llvm.dbg.value(metadata i64 1, metadata !2874, metadata !DIExpression()) #34, !dbg !2875
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %2, metadata !2601, metadata !DIExpression()) #34, !dbg !2878
  %3 = icmp eq i8* %2, null, !dbg !2880
  br i1 %3, label %4, label %5, !dbg !2881

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2882
  unreachable, !dbg !2882

5:                                                ; preds = %1
  ret i8* %2, !dbg !2883
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !2872 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2871, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %1, metadata !2874, metadata !DIExpression()), !dbg !2884
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !2885
  call void @llvm.dbg.value(metadata i8* %3, metadata !2601, metadata !DIExpression()) #34, !dbg !2886
  %4 = icmp eq i8* %3, null, !dbg !2888
  br i1 %4, label %5, label %6, !dbg !2889

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2890
  unreachable, !dbg !2890

6:                                                ; preds = %2
  ret i8* %3, !dbg !2891
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !2892 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %0, metadata !2896, metadata !DIExpression()) #34, !dbg !2900
  call void @llvm.dbg.value(metadata i64 1, metadata !2899, metadata !DIExpression()) #34, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %0, metadata !2902, metadata !DIExpression()) #34, !dbg !2906
  call void @llvm.dbg.value(metadata i64 1, metadata !2905, metadata !DIExpression()) #34, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %0, metadata !2902, metadata !DIExpression()) #34, !dbg !2906
  call void @llvm.dbg.value(metadata i64 1, metadata !2905, metadata !DIExpression()) #34, !dbg !2906
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %2, metadata !2601, metadata !DIExpression()) #34, !dbg !2909
  %3 = icmp eq i8* %2, null, !dbg !2911
  br i1 %3, label %4, label %5, !dbg !2912

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2913
  unreachable, !dbg !2913

5:                                                ; preds = %1
  ret i8* %2, !dbg !2914
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !2897 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2896, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %1, metadata !2899, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %0, metadata !2902, metadata !DIExpression()) #34, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()) #34, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %0, metadata !2902, metadata !DIExpression()) #34, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()) #34, !dbg !2916
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !2918
  call void @llvm.dbg.value(metadata i8* %3, metadata !2601, metadata !DIExpression()) #34, !dbg !2919
  %4 = icmp eq i8* %3, null, !dbg !2921
  br i1 %4, label %5, label %6, !dbg !2922

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2923
  unreachable, !dbg !2923

6:                                                ; preds = %2
  ret i8* %3, !dbg !2924
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2925 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2929, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %1, metadata !2625, metadata !DIExpression()) #34, !dbg !2932
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !2934
  call void @llvm.dbg.value(metadata i8* %3, metadata !2601, metadata !DIExpression()) #34, !dbg !2935
  %4 = icmp eq i8* %3, null, !dbg !2937
  br i1 %4, label %5, label %6, !dbg !2938

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2939
  unreachable, !dbg !2939

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2940, metadata !DIExpression()) #34, !dbg !2945
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()) #34, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %1, metadata !2944, metadata !DIExpression()) #34, !dbg !2945
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !2947
  ret i8* %3, !dbg !2948
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2949 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %1, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %1, metadata !2638, metadata !DIExpression()) #34, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2640, metadata !DIExpression()) #34, !dbg !2958
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %3, metadata !2601, metadata !DIExpression()) #34, !dbg !2961
  %4 = icmp eq i8* %3, null, !dbg !2963
  br i1 %4, label %5, label %6, !dbg !2964

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2965
  unreachable, !dbg !2965

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2940, metadata !DIExpression()) #34, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()) #34, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %1, metadata !2944, metadata !DIExpression()) #34, !dbg !2966
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !2968
  ret i8* %3, !dbg !2969
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2970 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2974, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()), !dbg !2977
  %3 = add nsw i64 %1, 1, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %3, metadata !2638, metadata !DIExpression()) #34, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %3, metadata !2640, metadata !DIExpression()) #34, !dbg !2981
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !2983
  call void @llvm.dbg.value(metadata i8* %4, metadata !2601, metadata !DIExpression()) #34, !dbg !2984
  %5 = icmp eq i8* %4, null, !dbg !2986
  br i1 %5, label %6, label %7, !dbg !2987

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2988
  unreachable, !dbg !2988

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !2976, metadata !DIExpression()), !dbg !2977
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2989
  store i8 0, i8* %8, align 1, !dbg !2990, !tbaa !552
  call void @llvm.dbg.value(metadata i8* %4, metadata !2940, metadata !DIExpression()) #34, !dbg !2991
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()) #34, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %1, metadata !2944, metadata !DIExpression()) #34, !dbg !2991
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !2993
  ret i8* %4, !dbg !2994
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !2995 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()), !dbg !2998
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !2999
  %3 = add i64 %2, 1, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %0, metadata !2929, metadata !DIExpression()) #34, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %3, metadata !2930, metadata !DIExpression()) #34, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %3, metadata !2625, metadata !DIExpression()) #34, !dbg !3003
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %4, metadata !2601, metadata !DIExpression()) #34, !dbg !3006
  %5 = icmp eq i8* %4, null, !dbg !3008
  br i1 %5, label %6, label %7, !dbg !3009

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3010
  unreachable, !dbg !3010

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2940, metadata !DIExpression()) #34, !dbg !3011
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()) #34, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %3, metadata !2944, metadata !DIExpression()) #34, !dbg !3011
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !3013
  ret i8* %4, !dbg !3014
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3015 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3020, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %1, metadata !3017, metadata !DIExpression()), !dbg !3021
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.128, i64 0, i64 0), i32 noundef 5) #34, !dbg !3020
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0), i8* noundef %2) #34, !dbg !3020
  %3 = icmp eq i32 %1, 0, !dbg !3020
  tail call void @llvm.assume(i1 %3), !dbg !3020
  tail call void @abort() #36, !dbg !3022
  unreachable, !dbg !3022
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef readonly %0) local_unnamed_addr #20 !dbg !3023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %0, metadata !3026, metadata !DIExpression()), !dbg !3030
  br label %2, !dbg !3031

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !3030
  call void @llvm.dbg.value(metadata i8* %3, metadata !3026, metadata !DIExpression()), !dbg !3030
  %4 = load i8, i8* %3, align 1, !dbg !3032, !tbaa !552
  %5 = icmp eq i8 %4, 47, !dbg !3032
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %6, metadata !3026, metadata !DIExpression()), !dbg !3030
  br i1 %5, label %2, label %7, !dbg !3031, !llvm.loop !3034

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !3035
  %9 = phi i8* [ %16, %15 ], [ %3, %2 ], !dbg !3037
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi i8* [ %18, %15 ], [ %3, %2 ], !dbg !3038
  call void @llvm.dbg.value(metadata i8* %11, metadata !3028, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 poison, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %9, metadata !3026, metadata !DIExpression()), !dbg !3030
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3039

12:                                               ; preds = %7
  ret i8* %9, !dbg !3040

13:                                               ; preds = %7
  %14 = select i1 %10, i8* %11, i8* %9, !dbg !3041
  br label %15, !dbg !3041

15:                                               ; preds = %13, %7
  %16 = phi i8* [ %9, %7 ], [ %14, %13 ], !dbg !3030
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %16, metadata !3026, metadata !DIExpression()), !dbg !3030
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %18, metadata !3028, metadata !DIExpression()), !dbg !3038
  %19 = load i8, i8* %18, align 1, !dbg !3035, !tbaa !552
  br label %7, !dbg !3045, !llvm.loop !3046
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @base_len(i8* nocapture noundef readonly %0) local_unnamed_addr #15 !dbg !3048 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3050, metadata !DIExpression()), !dbg !3053
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !3054
  call void @llvm.dbg.value(metadata i64 %2, metadata !3051, metadata !DIExpression()), !dbg !3053
  %3 = icmp ne i64 %2, 0, !dbg !3056
  %4 = zext i1 %3 to i64, !dbg !3056
  br label %5, !dbg !3056

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3057
  call void @llvm.dbg.value(metadata i64 %6, metadata !3051, metadata !DIExpression()), !dbg !3053
  %7 = icmp ugt i64 %6, 1, !dbg !3058
  br i1 %7, label %8, label %13, !dbg !3060

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3061
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !3061
  %11 = load i8, i8* %10, align 1, !dbg !3061, !tbaa !552
  %12 = icmp eq i8 %11, 47, !dbg !3061
  br i1 %12, label %5, label %13, !dbg !3062, !llvm.loop !3063

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3057
  call void @llvm.dbg.value(metadata i64 0, metadata !3052, metadata !DIExpression()), !dbg !3053
  ret i64 %14, !dbg !3065
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3066 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3104, metadata !DIExpression()), !dbg !3109
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !3110
  call void @llvm.dbg.value(metadata i1 undef, metadata !3105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3109
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3111, metadata !DIExpression()), !dbg !3114
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3116
  %4 = load i32, i32* %3, align 8, !dbg !3116, !tbaa !3117
  %5 = and i32 %4, 32, !dbg !3118
  %6 = icmp eq i32 %5, 0, !dbg !3118
  call void @llvm.dbg.value(metadata i1 %6, metadata !3107, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3109
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !3119
  %8 = icmp eq i32 %7, 0, !dbg !3120
  call void @llvm.dbg.value(metadata i1 %8, metadata !3108, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3109
  br i1 %6, label %9, label %19, !dbg !3121

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3123
  call void @llvm.dbg.value(metadata i1 %10, metadata !3105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3109
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3124
  %12 = xor i1 %8, true, !dbg !3124
  %13 = sext i1 %12 to i32, !dbg !3124
  br i1 %11, label %22, label %14, !dbg !3124

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !3125
  %16 = load i32, i32* %15, align 4, !dbg !3125, !tbaa !543
  %17 = icmp ne i32 %16, 9, !dbg !3126
  %18 = sext i1 %17 to i32, !dbg !3127
  br label %22, !dbg !3127

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3128

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !3130
  store i32 0, i32* %21, align 4, !dbg !3132, !tbaa !543
  br label %22, !dbg !3130

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3109
  ret i32 %23, !dbg !3133
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3134 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3172, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32 0, metadata !3173, metadata !DIExpression()), !dbg !3176
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3177
  call void @llvm.dbg.value(metadata i32 %2, metadata !3174, metadata !DIExpression()), !dbg !3176
  %3 = icmp slt i32 %2, 0, !dbg !3178
  br i1 %3, label %4, label %6, !dbg !3180

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3181
  br label %24, !dbg !3182

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3183
  %8 = icmp eq i32 %7, 0, !dbg !3183
  br i1 %8, label %13, label %9, !dbg !3185

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3186
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !3187
  %12 = icmp eq i64 %11, -1, !dbg !3188
  br i1 %12, label %16, label %13, !dbg !3189

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3190
  %15 = icmp eq i32 %14, 0, !dbg !3190
  br i1 %15, label %16, label %18, !dbg !3191

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32 0, metadata !3175, metadata !DIExpression()), !dbg !3176
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %21, metadata !3175, metadata !DIExpression()), !dbg !3176
  br label %24, !dbg !3193

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !3194
  %20 = load i32, i32* %19, align 4, !dbg !3194, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %20, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32 0, metadata !3175, metadata !DIExpression()), !dbg !3176
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %21, metadata !3175, metadata !DIExpression()), !dbg !3176
  %22 = icmp eq i32 %20, 0, !dbg !3195
  br i1 %22, label %24, label %23, !dbg !3193

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3197, !tbaa !543
  call void @llvm.dbg.value(metadata i32 -1, metadata !3175, metadata !DIExpression()), !dbg !3176
  br label %24, !dbg !3199

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3176
  ret i32 %25, !dbg !3200
}

; Function Attrs: nofree nounwind
declare !dbg !3201 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3202 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3203 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3207 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3245, metadata !DIExpression()), !dbg !3246
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3247
  br i1 %2, label %6, label %3, !dbg !3249

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3250
  %5 = icmp eq i32 %4, 0, !dbg !3250
  br i1 %5, label %6, label %8, !dbg !3251

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3252
  br label %17, !dbg !3253

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3254, metadata !DIExpression()) #34, !dbg !3259
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3261
  %10 = load i32, i32* %9, align 8, !dbg !3261, !tbaa !3117
  %11 = and i32 %10, 256, !dbg !3263
  %12 = icmp eq i32 %11, 0, !dbg !3263
  br i1 %12, label %15, label %13, !dbg !3264

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !3265
  br label %15, !dbg !3265

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3266
  br label %17, !dbg !3267

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3246
  ret i32 %18, !dbg !3268
}

; Function Attrs: nofree nounwind
declare !dbg !3269 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3270 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3309, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %1, metadata !3310, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i32 %2, metadata !3311, metadata !DIExpression()), !dbg !3315
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3316
  %5 = load i8*, i8** %4, align 8, !dbg !3316, !tbaa !3317
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3318
  %7 = load i8*, i8** %6, align 8, !dbg !3318, !tbaa !3319
  %8 = icmp eq i8* %5, %7, !dbg !3320
  br i1 %8, label %9, label %28, !dbg !3321

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3322
  %11 = load i8*, i8** %10, align 8, !dbg !3322, !tbaa !702
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3323
  %13 = load i8*, i8** %12, align 8, !dbg !3323, !tbaa !3324
  %14 = icmp eq i8* %11, %13, !dbg !3325
  br i1 %14, label %15, label %28, !dbg !3326

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3327
  %17 = load i8*, i8** %16, align 8, !dbg !3327, !tbaa !3328
  %18 = icmp eq i8* %17, null, !dbg !3329
  br i1 %18, label %19, label %28, !dbg !3330

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3331
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %21, metadata !3312, metadata !DIExpression()), !dbg !3333
  %22 = icmp eq i64 %21, -1, !dbg !3334
  br i1 %22, label %30, label %23, !dbg !3336

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3337
  %25 = load i32, i32* %24, align 8, !dbg !3338, !tbaa !3117
  %26 = and i32 %25, -17, !dbg !3338
  store i32 %26, i32* %24, align 8, !dbg !3338, !tbaa !3117
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3339
  store i64 %21, i64* %27, align 8, !dbg !3340, !tbaa !3341
  br label %30, !dbg !3342

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3343
  br label %30, !dbg !3344

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3315
  ret i32 %31, !dbg !3345
}

; Function Attrs: nofree nounwind
declare !dbg !3346 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3349 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3354, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i8* %1, metadata !3355, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %2, metadata !3356, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3357, metadata !DIExpression()), !dbg !3359
  %5 = icmp eq i8* %1, null, !dbg !3360
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3362
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), i8* %1, !dbg !3362
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %8, metadata !3356, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i8* %7, metadata !3355, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32* %6, metadata !3354, metadata !DIExpression()), !dbg !3359
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3363
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3365
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3357, metadata !DIExpression()), !dbg !3359
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %11, metadata !3358, metadata !DIExpression()), !dbg !3359
  %12 = icmp ult i64 %11, -3, !dbg !3367
  br i1 %12, label %13, label %18, !dbg !3369

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !3370
  %15 = icmp eq i32 %14, 0, !dbg !3370
  br i1 %15, label %16, label %30, !dbg !3371

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3372, metadata !DIExpression()) #34, !dbg !3377
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3379, metadata !DIExpression()) #34, !dbg !3384
  call void @llvm.dbg.value(metadata i32 0, metadata !3382, metadata !DIExpression()) #34, !dbg !3384
  call void @llvm.dbg.value(metadata i64 8, metadata !3383, metadata !DIExpression()) #34, !dbg !3384
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3386
  store i64 0, i64* %17, align 1, !dbg !3386
  br label %30, !dbg !3387

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3388
  br i1 %19, label %20, label %21, !dbg !3390

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !3391
  unreachable, !dbg !3391

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3392

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !3394
  br i1 %24, label %30, label %25, !dbg !3395

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3396
  br i1 %26, label %30, label %27, !dbg !3399

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3400, !tbaa !552
  %29 = zext i8 %28 to i32, !dbg !3401
  store i32 %29, i32* %6, align 4, !dbg !3402, !tbaa !543
  br label %30, !dbg !3403

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3359
  ret i64 %31, !dbg !3404
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3405 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !3411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3413, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %1, metadata !3414, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %2, metadata !3415, metadata !DIExpression()), !dbg !3417
  %4 = icmp eq i64 %2, 0, !dbg !3418
  br i1 %4, label %8, label %5, !dbg !3418

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3418
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3418
  br i1 %7, label %13, label %8, !dbg !3418

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3416, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3417
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3416, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3417
  %9 = mul i64 %2, %1, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %9, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8* %0, metadata !3420, metadata !DIExpression()) #34, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %9, metadata !3423, metadata !DIExpression()) #34, !dbg !3424
  %10 = icmp eq i64 %9, 0, !dbg !3426
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3426
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !3427
  br label %15, !dbg !3428

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3416, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3417
  %14 = tail call i32* @__errno_location() #37, !dbg !3429
  store i32 12, i32* %14, align 4, !dbg !3431, !tbaa !543
  br label %15, !dbg !3432

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3417
  ret i8* %16, !dbg !3433
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3434 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3438, metadata !DIExpression()), !dbg !3443
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3444
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !3444
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3439, metadata !DIExpression()), !dbg !3445
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !3446
  %5 = icmp eq i32 %4, 0, !dbg !3446
  br i1 %5, label %6, label %13, !dbg !3448

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3449, metadata !DIExpression()) #34, !dbg !3453
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0), metadata !3452, metadata !DIExpression()) #34, !dbg !3453
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0), i64 2), !dbg !3456
  %8 = icmp eq i32 %7, 0, !dbg !3457
  br i1 %8, label %12, label %9, !dbg !3458

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3449, metadata !DIExpression()) #34, !dbg !3459
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0), metadata !3452, metadata !DIExpression()) #34, !dbg !3459
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0), i64 6), !dbg !3461
  %11 = icmp eq i32 %10, 0, !dbg !3462
  br i1 %11, label %12, label %13, !dbg !3463

12:                                               ; preds = %9, %6
  br label %13, !dbg !3464

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3443
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !3465
  ret i1 %14, !dbg !3465
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8* %1, metadata !3471, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %2, metadata !3472, metadata !DIExpression()), !dbg !3473
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !3474
  ret i32 %4, !dbg !3475
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3476 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3480, metadata !DIExpression()), !dbg !3481
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !3482
  ret i8* %2, !dbg !3483
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3484 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3486, metadata !DIExpression()), !dbg !3488
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !3489
  call void @llvm.dbg.value(metadata i8* %2, metadata !3487, metadata !DIExpression()), !dbg !3488
  ret i8* %2, !dbg !3490
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3491 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3493, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i8* %1, metadata !3494, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %2, metadata !3495, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 %0, metadata !3486, metadata !DIExpression()) #34, !dbg !3501
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !3503
  call void @llvm.dbg.value(metadata i8* %4, metadata !3487, metadata !DIExpression()) #34, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %4, metadata !3496, metadata !DIExpression()), !dbg !3500
  %5 = icmp eq i8* %4, null, !dbg !3504
  br i1 %5, label %6, label %9, !dbg !3505

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3506
  br i1 %7, label %19, label %8, !dbg !3509

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3510, !tbaa !552
  br label %19, !dbg !3511

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %10, metadata !3497, metadata !DIExpression()), !dbg !3513
  %11 = icmp ult i64 %10, %2, !dbg !3514
  br i1 %11, label %12, label %14, !dbg !3516

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3517
  call void @llvm.dbg.value(metadata i8* %1, metadata !3519, metadata !DIExpression()) #34, !dbg !3524
  call void @llvm.dbg.value(metadata i8* %4, metadata !3522, metadata !DIExpression()) #34, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %13, metadata !3523, metadata !DIExpression()) #34, !dbg !3524
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !3526
  br label %19, !dbg !3527

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3528
  br i1 %15, label %19, label %16, !dbg !3531

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3532
  call void @llvm.dbg.value(metadata i8* %1, metadata !3519, metadata !DIExpression()) #34, !dbg !3534
  call void @llvm.dbg.value(metadata i8* %4, metadata !3522, metadata !DIExpression()) #34, !dbg !3534
  call void @llvm.dbg.value(metadata i64 %17, metadata !3523, metadata !DIExpression()) #34, !dbg !3534
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !3536
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3537
  store i8 0, i8* %18, align 1, !dbg !3538, !tbaa !552
  br label %19, !dbg !3539

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3540
  ret i32 %20, !dbg !3541
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
attributes #15 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { argmemonly nofree nounwind readonly willreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { argmemonly nofree nounwind willreturn writeonly }
attributes #26 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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

!llvm.dbg.cu = !{!2, !159, !164, !369, !171, !349, !371, !212, !222, !252, !373, !341, !380, !411, !413, !415, !417, !419, !421, !355, !423, !426, !428, !430}
!llvm.ident = !{!432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432, !432}
!llvm.module.flags = !{!433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 34, type: !145, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/dirname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a60dd6e6d60eda028b732002e611b3c7")
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
!21 = !{!22, !24, !25, !28, !30, !31, !32}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34, !114, !0}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "dot", scope: !36, file: !3, line: 124, type: !29, isLocal: true, isDefinition: true)
!36 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 78, type: !37, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!37 = !DISubroutineType(types: !38)
!38 = !{!30, !30, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!40 = !{!41, !42, !43, !45, !47, !51, !56, !58, !113}
!41 = !DILocalVariable(name: "argc", arg: 1, scope: !36, file: !3, line: 78, type: !30)
!42 = !DILocalVariable(name: "argv", arg: 2, scope: !36, file: !3, line: 78, type: !39)
!43 = !DILocalVariable(name: "use_nuls", scope: !36, file: !3, line: 80, type: !44)
!44 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!45 = !DILocalVariable(name: "c", scope: !46, file: !3, line: 92, type: !30)
!46 = distinct !DILexicalBlock(scope: !36, file: !3, line: 91, column: 5)
!47 = !DILocalVariable(name: "result", scope: !48, file: !3, line: 119, type: !28)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 118, column: 5)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 117, column: 3)
!50 = distinct !DILexicalBlock(scope: !36, file: !3, line: 117, column: 3)
!51 = !DILocalVariable(name: "len", scope: !48, file: !3, line: 120, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !53, line: 130, baseType: !54)
!53 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !26, line: 35, baseType: !55)
!55 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!56 = !DILocalVariable(name: "__ptr", scope: !57, file: !3, line: 129, type: !28)
!57 = distinct !DILexicalBlock(scope: !48, file: !3, line: 129, column: 7)
!58 = !DILocalVariable(name: "__stream", scope: !57, file: !3, line: 129, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !61, line: 7, baseType: !62)
!61 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !63, line: 49, size: 1728, elements: !64)
!63 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !80, !82, !83, !84, !87, !88, !90, !94, !97, !99, !102, !105, !106, !107, !108, !109}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !62, file: !63, line: 51, baseType: !30, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !62, file: !63, line: 54, baseType: !22, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !62, file: !63, line: 55, baseType: !22, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !62, file: !63, line: 56, baseType: !22, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !62, file: !63, line: 57, baseType: !22, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !62, file: !63, line: 58, baseType: !22, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !62, file: !63, line: 59, baseType: !22, size: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !62, file: !63, line: 60, baseType: !22, size: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !62, file: !63, line: 61, baseType: !22, size: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !62, file: !63, line: 64, baseType: !22, size: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !62, file: !63, line: 65, baseType: !22, size: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !62, file: !63, line: 66, baseType: !22, size: 64, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !62, file: !63, line: 68, baseType: !78, size: 64, offset: 768)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !63, line: 36, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !62, file: !63, line: 70, baseType: !81, size: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !62, file: !63, line: 72, baseType: !30, size: 32, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !62, file: !63, line: 73, baseType: !30, size: 32, offset: 928)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !62, file: !63, line: 74, baseType: !85, size: 64, offset: 960)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !86, line: 152, baseType: !55)
!86 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !62, file: !63, line: 77, baseType: !31, size: 16, offset: 1024)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !62, file: !63, line: 78, baseType: !89, size: 8, offset: 1040)
!89 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !62, file: !63, line: 79, baseType: !91, size: 8, offset: 1048)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 1)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !62, file: !63, line: 81, baseType: !95, size: 64, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !63, line: 43, baseType: null)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !62, file: !63, line: 89, baseType: !98, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !86, line: 153, baseType: !55)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !62, file: !63, line: 91, baseType: !100, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !63, line: 37, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !62, file: !63, line: 92, baseType: !103, size: 64, offset: 1280)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !63, line: 38, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !62, file: !63, line: 93, baseType: !81, size: 64, offset: 1344)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !62, file: !63, line: 94, baseType: !24, size: 64, offset: 1408)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !62, file: !63, line: 95, baseType: !25, size: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !62, file: !63, line: 96, baseType: !30, size: 32, offset: 1536)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !62, file: !63, line: 98, baseType: !110, size: 160, offset: 1568)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 20)
!113 = !DILocalVariable(name: "__cnt", scope: !57, file: !3, line: 129, type: !25)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !116, file: !117, line: 575, type: !30, isLocal: true, isDefinition: true)
!116 = distinct !DISubprogram(name: "oputs_", scope: !117, file: !117, line: 573, type: !118, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!117 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!118 = !DISubroutineType(types: !119)
!119 = !{null, !28, !28}
!120 = !{!121, !122, !123, !126, !127, !128, !129, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144}
!121 = !DILocalVariable(name: "program", arg: 1, scope: !116, file: !117, line: 573, type: !28)
!122 = !DILocalVariable(name: "option", arg: 2, scope: !116, file: !117, line: 573, type: !28)
!123 = !DILocalVariable(name: "term", scope: !124, file: !117, line: 585, type: !28)
!124 = distinct !DILexicalBlock(scope: !125, file: !117, line: 582, column: 5)
!125 = distinct !DILexicalBlock(scope: !116, file: !117, line: 581, column: 7)
!126 = !DILocalVariable(name: "double_space", scope: !116, file: !117, line: 594, type: !44)
!127 = !DILocalVariable(name: "first_word", scope: !116, file: !117, line: 595, type: !28)
!128 = !DILocalVariable(name: "option_text", scope: !116, file: !117, line: 596, type: !28)
!129 = !DILocalVariable(name: "s", scope: !130, file: !117, line: 608, type: !28)
!130 = distinct !DILexicalBlock(scope: !131, file: !117, line: 605, column: 5)
!131 = distinct !DILexicalBlock(scope: !132, file: !117, line: 604, column: 12)
!132 = distinct !DILexicalBlock(scope: !116, file: !117, line: 597, column: 7)
!133 = !DILocalVariable(name: "spaces", scope: !130, file: !117, line: 609, type: !25)
!134 = !DILocalVariable(name: "anchor_len", scope: !116, file: !117, line: 620, type: !25)
!135 = !DILocalVariable(name: "desc_text", scope: !116, file: !117, line: 625, type: !28)
!136 = !DILocalVariable(name: "__ptr", scope: !137, file: !117, line: 644, type: !28)
!137 = distinct !DILexicalBlock(scope: !116, file: !117, line: 644, column: 3)
!138 = !DILocalVariable(name: "__stream", scope: !137, file: !117, line: 644, type: !59)
!139 = !DILocalVariable(name: "__cnt", scope: !137, file: !117, line: 644, type: !25)
!140 = !DILocalVariable(name: "url_program", scope: !116, file: !117, line: 648, type: !28)
!141 = !DILocalVariable(name: "__ptr", scope: !142, file: !117, line: 686, type: !28)
!142 = distinct !DILexicalBlock(scope: !116, file: !117, line: 686, column: 3)
!143 = !DILocalVariable(name: "__stream", scope: !142, file: !117, line: 686, type: !59)
!144 = !DILocalVariable(name: "__cnt", scope: !142, file: !117, line: 686, type: !25)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !155)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !148, line: 50, size: 256, elements: !149)
!148 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!149 = !{!150, !151, !152, !154}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !147, file: !148, line: 52, baseType: !28, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !147, file: !148, line: 55, baseType: !30, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !147, file: !148, line: 56, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !147, file: !148, line: 57, baseType: !30, size: 32, offset: 192)
!155 = !{!156}
!156 = !DISubrange(count: 4)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "Version", scope: !159, file: !160, line: 3, type: !28, isLocal: false, isDefinition: true)
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !161, splitDebugInlining: false, nameTableKind: None)
!160 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!161 = !{!157}
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "file_name", scope: !164, file: !165, line: 45, type: !28, isLocal: true, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !166, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!166 = !{!162, !167}
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !164, file: !165, line: 55, type: !44, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !171, file: !172, line: 66, type: !207, isLocal: false, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !173, globals: !174, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!173 = !{!24, !32}
!174 = !{!175, !201, !169, !203, !205}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "old_file_name", scope: !177, file: !172, line: 304, type: !28, isLocal: true, isDefinition: true)
!177 = distinct !DISubprogram(name: "verror_at_line", scope: !172, file: !172, line: 298, type: !178, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !194)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !30, !30, !28, !7, !28, !180}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !181, line: 52, baseType: !182)
!181 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !183, line: 32, baseType: !184)
!183 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !185, baseType: !186)
!185 = !DIFile(filename: "lib/error.c", directory: "/src")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !187, size: 256, elements: !188)
!187 = !DINamespace(name: "std", scope: null)
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !186, file: !185, baseType: !24, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !186, file: !185, baseType: !24, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !186, file: !185, baseType: !24, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !186, file: !185, baseType: !30, size: 32, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !186, file: !185, baseType: !30, size: 32, offset: 224)
!194 = !{!195, !196, !197, !198, !199, !200}
!195 = !DILocalVariable(name: "status", arg: 1, scope: !177, file: !172, line: 298, type: !30)
!196 = !DILocalVariable(name: "errnum", arg: 2, scope: !177, file: !172, line: 298, type: !30)
!197 = !DILocalVariable(name: "file_name", arg: 3, scope: !177, file: !172, line: 298, type: !28)
!198 = !DILocalVariable(name: "line_number", arg: 4, scope: !177, file: !172, line: 298, type: !7)
!199 = !DILocalVariable(name: "message", arg: 5, scope: !177, file: !172, line: 298, type: !28)
!200 = !DILocalVariable(name: "args", arg: 6, scope: !177, file: !172, line: 298, type: !180)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "old_line_number", scope: !177, file: !172, line: 305, type: !7, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "error_message_count", scope: !171, file: !172, line: 69, type: !7, isLocal: false, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !171, file: !172, line: 295, type: !30, isLocal: false, isDefinition: true)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null}
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "program_name", scope: !212, file: !213, line: 31, type: !28, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !214, globals: !215, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!214 = !{!22}
!215 = !{!210}
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "utf07FF", scope: !218, file: !219, line: 46, type: !247, isLocal: true, isDefinition: true)
!218 = distinct !DISubprogram(name: "proper_name_lite", scope: !219, file: !219, line: 38, type: !220, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !224)
!219 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!220 = !DISubroutineType(types: !221)
!221 = !{!28, !28, !28}
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !223, splitDebugInlining: false, nameTableKind: None)
!223 = !{!216}
!224 = !{!225, !226, !227, !228, !233}
!225 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !218, file: !219, line: 38, type: !28)
!226 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !218, file: !219, line: 38, type: !28)
!227 = !DILocalVariable(name: "translation", scope: !218, file: !219, line: 40, type: !28)
!228 = !DILocalVariable(name: "w", scope: !218, file: !219, line: 47, type: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !230, line: 37, baseType: !231)
!230 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !86, line: 57, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !86, line: 42, baseType: !7)
!233 = !DILocalVariable(name: "mbs", scope: !218, file: !219, line: 48, type: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !235, line: 6, baseType: !236)
!235 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !237, line: 21, baseType: !238)
!237 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 13, size: 64, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !238, file: !237, line: 15, baseType: !30, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !238, file: !237, line: 20, baseType: !242, size: 32, offset: 32)
!242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !237, line: 16, size: 32, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !242, file: !237, line: 18, baseType: !7, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !242, file: !237, line: 19, baseType: !246, size: 32)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !155)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 16, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 2)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !252, file: !253, line: 76, type: !335, isLocal: false, isDefinition: true)
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, retainedTypes: !274, globals: !275, splitDebugInlining: false, nameTableKind: None)
!253 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!254 = !{!255, !269, !5}
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !256, line: 42, baseType: !7, size: 32, elements: !257)
!256 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!258 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!259 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!260 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!261 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!262 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!263 = !DIEnumerator(name: "c_quoting_style", value: 5)
!264 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!265 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!266 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!267 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!268 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !256, line: 254, baseType: !7, size: 32, elements: !270)
!270 = !{!271, !272, !273}
!271 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!272 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!273 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!274 = !{!30, !31, !25}
!275 = !{!250, !276, !282, !294, !296, !301, !324, !331, !333}
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !252, file: !253, line: 92, type: !278, isLocal: false, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 320, elements: !280)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!280 = !{!281}
!281 = !DISubrange(count: 10)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !252, file: !253, line: 1040, type: !284, isLocal: false, isDefinition: true)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !253, line: 56, size: 448, elements: !285)
!285 = !{!286, !287, !288, !292, !293}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !284, file: !253, line: 59, baseType: !255, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !253, line: 62, baseType: !30, size: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !284, file: !253, line: 66, baseType: !289, size: 256, offset: 64)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 8)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !284, file: !253, line: 69, baseType: !28, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !284, file: !253, line: 72, baseType: !28, size: 64, offset: 384)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !252, file: !253, line: 107, type: !284, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "slot0", scope: !252, file: !253, line: 831, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 256)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "quote", scope: !303, file: !253, line: 228, type: !322, isLocal: true, isDefinition: true)
!303 = distinct !DISubprogram(name: "gettext_quote", scope: !253, file: !253, line: 197, type: !304, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{!28, !28, !255}
!306 = !{!307, !308, !309, !310, !311}
!307 = !DILocalVariable(name: "msgid", arg: 1, scope: !303, file: !253, line: 197, type: !28)
!308 = !DILocalVariable(name: "s", arg: 2, scope: !303, file: !253, line: 197, type: !255)
!309 = !DILocalVariable(name: "translation", scope: !303, file: !253, line: 199, type: !28)
!310 = !DILocalVariable(name: "w", scope: !303, file: !253, line: 229, type: !229)
!311 = !DILocalVariable(name: "mbs", scope: !303, file: !253, line: 230, type: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !235, line: 6, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !237, line: 21, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 13, size: 64, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !314, file: !237, line: 15, baseType: !30, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !314, file: !237, line: 20, baseType: !318, size: 32, offset: 32)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !237, line: 16, size: 32, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !318, file: !237, line: 18, baseType: !7, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !318, file: !237, line: 19, baseType: !246, size: 32)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !323)
!323 = !{!249, !156}
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "slotvec", scope: !252, file: !253, line: 834, type: !326, isLocal: true, isDefinition: true)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !253, line: 823, size: 128, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !327, file: !253, line: 825, baseType: !25, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !327, file: !253, line: 826, baseType: !22, size: 64, offset: 64)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "nslots", scope: !252, file: !253, line: 832, type: !30, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "slotvec0", scope: !252, file: !253, line: 833, type: !327, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 704, elements: !337)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!337 = !{!338}
!338 = !DISubrange(count: 11)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !341, file: !342, line: 26, type: !344, isLocal: false, isDefinition: true)
!341 = distinct !DICompileUnit(language: DW_LANG_C99, file: !342, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !343, splitDebugInlining: false, nameTableKind: None)
!342 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!343 = !{!339}
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 376, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 47)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "exit_failure", scope: !349, file: !350, line: 24, type: !352, isLocal: false, isDefinition: true)
!349 = distinct !DICompileUnit(language: DW_LANG_C99, file: !350, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !351, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!351 = !{!347}
!352 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "internal_state", scope: !355, file: !356, line: 97, type: !359, isLocal: true, isDefinition: true)
!355 = distinct !DICompileUnit(language: DW_LANG_C99, file: !356, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !357, globals: !358, splitDebugInlining: false, nameTableKind: None)
!356 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!357 = !{!24, !25, !32}
!358 = !{!353}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !235, line: 6, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !237, line: 21, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 13, size: 64, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !361, file: !237, line: 15, baseType: !30, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !361, file: !237, line: 20, baseType: !365, size: 32, offset: 32)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !237, line: 16, size: 32, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !365, file: !237, line: 18, baseType: !7, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !365, file: !237, line: 19, baseType: !246, size: 32)
!369 = distinct !DICompileUnit(language: DW_LANG_C99, file: !370, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!370 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12591251654a6c6fd0490c627594f543")
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!373 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !375, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!374 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!375 = !{!376}
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !374, line: 40, baseType: !7, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!379 = !{!24}
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !382, retainedTypes: !410, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!382 = !{!383, !395}
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !384, file: !381, line: 188, baseType: !7, size: 32, elements: !393)
!384 = distinct !DISubprogram(name: "x2nrealloc", scope: !381, file: !381, line: 176, type: !385, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !388)
!385 = !DISubroutineType(types: !386)
!386 = !{!24, !24, !387, !25}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!388 = !{!389, !390, !391, !392}
!389 = !DILocalVariable(name: "p", arg: 1, scope: !384, file: !381, line: 176, type: !24)
!390 = !DILocalVariable(name: "pn", arg: 2, scope: !384, file: !381, line: 176, type: !387)
!391 = !DILocalVariable(name: "s", arg: 3, scope: !384, file: !381, line: 176, type: !25)
!392 = !DILocalVariable(name: "n", scope: !384, file: !381, line: 178, type: !25)
!393 = !{!394}
!394 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!395 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !396, file: !381, line: 228, baseType: !7, size: 32, elements: !393)
!396 = distinct !DISubprogram(name: "xpalloc", scope: !381, file: !381, line: 223, type: !397, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !400)
!397 = !DISubroutineType(types: !398)
!398 = !{!24, !24, !399, !52, !54, !52}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409}
!401 = !DILocalVariable(name: "pa", arg: 1, scope: !396, file: !381, line: 223, type: !24)
!402 = !DILocalVariable(name: "pn", arg: 2, scope: !396, file: !381, line: 223, type: !399)
!403 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !396, file: !381, line: 223, type: !52)
!404 = !DILocalVariable(name: "n_max", arg: 4, scope: !396, file: !381, line: 223, type: !54)
!405 = !DILocalVariable(name: "s", arg: 5, scope: !396, file: !381, line: 223, type: !52)
!406 = !DILocalVariable(name: "n0", scope: !396, file: !381, line: 230, type: !52)
!407 = !DILocalVariable(name: "n", scope: !396, file: !381, line: 237, type: !52)
!408 = !DILocalVariable(name: "nbytes", scope: !396, file: !381, line: 248, type: !52)
!409 = !DILocalVariable(name: "adjusted_nbytes", scope: !396, file: !381, line: 252, type: !52)
!410 = !{!22, !24, !44, !55, !27}
!411 = distinct !DICompileUnit(language: DW_LANG_C99, file: !412, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!412 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!413 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !214, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !416, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!417 = distinct !DICompileUnit(language: DW_LANG_C99, file: !418, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!418 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !425, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!425 = !{!44, !27, !24}
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!430 = distinct !DICompileUnit(language: DW_LANG_C99, file: !431, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!432 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!433 = !{i32 7, !"Dwarf Version", i32 5}
!434 = !{i32 2, !"Debug Info Version", i32 3}
!435 = !{i32 1, !"wchar_size", i32 4}
!436 = !{i32 1, !"branch-target-enforcement", i32 0}
!437 = !{i32 1, !"sign-return-address", i32 0}
!438 = !{i32 1, !"sign-return-address-all", i32 0}
!439 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!440 = !{i32 7, !"PIC Level", i32 2}
!441 = !{i32 7, !"PIE Level", i32 2}
!442 = !{i32 7, !"uwtable", i32 1}
!443 = !{i32 7, !"frame-pointer", i32 1}
!444 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 43, type: !445, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !30}
!447 = !{!448}
!448 = !DILocalVariable(name: "status", arg: 1, scope: !444, file: !3, line: 43, type: !30)
!449 = !DILocation(line: 0, scope: !444)
!450 = !DILocation(line: 45, column: 14, scope: !451)
!451 = distinct !DILexicalBlock(scope: !444, file: !3, line: 45, column: 7)
!452 = !DILocation(line: 45, column: 7, scope: !444)
!453 = !DILocation(line: 46, column: 5, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !3, line: 46, column: 5)
!455 = !{!456, !456, i64 0}
!456 = !{!"any pointer", !457, i64 0}
!457 = !{!"omnipotent char", !458, i64 0}
!458 = !{!"Simple C/C++ TBAA"}
!459 = !DILocation(line: 49, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !451, file: !3, line: 48, column: 5)
!461 = !DILocation(line: 53, column: 7, scope: !460)
!462 = !DILocation(line: 58, column: 7, scope: !460)
!463 = !DILocation(line: 62, column: 7, scope: !460)
!464 = !DILocation(line: 63, column: 7, scope: !460)
!465 = !DILocation(line: 64, column: 7, scope: !460)
!466 = !DILocalVariable(name: "program", arg: 1, scope: !467, file: !117, line: 836, type: !28)
!467 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !117, file: !117, line: 836, type: !468, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !28}
!470 = !{!466, !471, !480, !481, !483, !484}
!471 = !DILocalVariable(name: "infomap", scope: !467, file: !117, line: 838, type: !472)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 896, elements: !478)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !467, file: !117, line: 838, size: 128, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !474, file: !117, line: 838, baseType: !28, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !117, line: 838, baseType: !28, size: 64, offset: 64)
!478 = !{!479}
!479 = !DISubrange(count: 7)
!480 = !DILocalVariable(name: "node", scope: !467, file: !117, line: 848, type: !28)
!481 = !DILocalVariable(name: "map_prog", scope: !467, file: !117, line: 849, type: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!483 = !DILocalVariable(name: "lc_messages", scope: !467, file: !117, line: 861, type: !28)
!484 = !DILocalVariable(name: "url_program", scope: !467, file: !117, line: 874, type: !28)
!485 = !DILocation(line: 0, scope: !467, inlinedAt: !486)
!486 = distinct !DILocation(line: 72, column: 7, scope: !460)
!487 = !DILocation(line: 838, column: 3, scope: !467, inlinedAt: !486)
!488 = !DILocation(line: 838, column: 67, scope: !467, inlinedAt: !486)
!489 = !DILocation(line: 849, column: 36, scope: !467, inlinedAt: !486)
!490 = !DILocation(line: 851, column: 3, scope: !467, inlinedAt: !486)
!491 = !DILocalVariable(name: "__s1", arg: 1, scope: !492, file: !493, line: 1359, type: !28)
!492 = distinct !DISubprogram(name: "streq", scope: !493, file: !493, line: 1359, type: !494, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!493 = !DIFile(filename: "./lib/string.h", directory: "/src")
!494 = !DISubroutineType(types: !495)
!495 = !{!44, !28, !28}
!496 = !{!491, !497}
!497 = !DILocalVariable(name: "__s2", arg: 2, scope: !492, file: !493, line: 1359, type: !28)
!498 = !DILocation(line: 0, scope: !492, inlinedAt: !499)
!499 = distinct !DILocation(line: 851, column: 33, scope: !467, inlinedAt: !486)
!500 = !DILocation(line: 1361, column: 11, scope: !492, inlinedAt: !499)
!501 = !DILocation(line: 1361, column: 10, scope: !492, inlinedAt: !499)
!502 = !DILocation(line: 852, column: 13, scope: !467, inlinedAt: !486)
!503 = !DILocation(line: 851, column: 20, scope: !467, inlinedAt: !486)
!504 = !{!505, !456, i64 0}
!505 = !{!"infomap", !456, i64 0, !456, i64 8}
!506 = !DILocation(line: 851, column: 10, scope: !467, inlinedAt: !486)
!507 = !DILocation(line: 851, column: 28, scope: !467, inlinedAt: !486)
!508 = distinct !{!508, !490, !502, !509}
!509 = !{!"llvm.loop.mustprogress"}
!510 = !DILocation(line: 854, column: 17, scope: !511, inlinedAt: !486)
!511 = distinct !DILexicalBlock(scope: !467, file: !117, line: 854, column: 7)
!512 = !{!505, !456, i64 8}
!513 = !DILocation(line: 854, column: 7, scope: !511, inlinedAt: !486)
!514 = !DILocation(line: 854, column: 7, scope: !467, inlinedAt: !486)
!515 = !DILocation(line: 857, column: 3, scope: !467, inlinedAt: !486)
!516 = !DILocation(line: 861, column: 29, scope: !467, inlinedAt: !486)
!517 = !DILocation(line: 862, column: 7, scope: !518, inlinedAt: !486)
!518 = distinct !DILexicalBlock(scope: !467, file: !117, line: 862, column: 7)
!519 = !DILocation(line: 862, column: 19, scope: !518, inlinedAt: !486)
!520 = !DILocation(line: 862, column: 22, scope: !518, inlinedAt: !486)
!521 = !DILocation(line: 862, column: 7, scope: !467, inlinedAt: !486)
!522 = !DILocation(line: 868, column: 7, scope: !523, inlinedAt: !486)
!523 = distinct !DILexicalBlock(scope: !518, file: !117, line: 863, column: 5)
!524 = !DILocation(line: 870, column: 5, scope: !523, inlinedAt: !486)
!525 = !DILocation(line: 0, scope: !492, inlinedAt: !526)
!526 = distinct !DILocation(line: 874, column: 29, scope: !467, inlinedAt: !486)
!527 = !DILocation(line: 875, column: 3, scope: !467, inlinedAt: !486)
!528 = !DILocation(line: 877, column: 3, scope: !467, inlinedAt: !486)
!529 = !DILocation(line: 879, column: 1, scope: !467, inlinedAt: !486)
!530 = !DILocation(line: 74, column: 3, scope: !444)
!531 = !DISubprogram(name: "dcgettext", scope: !532, file: !532, line: 51, type: !533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!532 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!533 = !DISubroutineType(types: !534)
!534 = !{!22, !28, !28, !30}
!535 = !{}
!536 = !DISubprogram(name: "fputs_unlocked", scope: !181, file: !181, line: 691, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!537 = !DISubroutineType(types: !538)
!538 = !{!30, !539, !540}
!539 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!540 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!541 = !DILocation(line: 0, scope: !116)
!542 = !DILocation(line: 581, column: 7, scope: !125)
!543 = !{!544, !544, i64 0}
!544 = !{!"int", !457, i64 0}
!545 = !DILocation(line: 581, column: 19, scope: !125)
!546 = !DILocation(line: 581, column: 7, scope: !116)
!547 = !DILocation(line: 585, column: 26, scope: !124)
!548 = !DILocation(line: 0, scope: !124)
!549 = !DILocation(line: 586, column: 23, scope: !124)
!550 = !DILocation(line: 586, column: 28, scope: !124)
!551 = !DILocation(line: 586, column: 32, scope: !124)
!552 = !{!457, !457, i64 0}
!553 = !DILocation(line: 586, column: 38, scope: !124)
!554 = !DILocation(line: 0, scope: !492, inlinedAt: !555)
!555 = distinct !DILocation(line: 586, column: 41, scope: !124)
!556 = !DILocation(line: 1361, column: 11, scope: !492, inlinedAt: !555)
!557 = !DILocation(line: 1361, column: 10, scope: !492, inlinedAt: !555)
!558 = !DILocation(line: 586, column: 19, scope: !124)
!559 = !DILocation(line: 587, column: 5, scope: !124)
!560 = !DILocation(line: 588, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !116, file: !117, line: 588, column: 7)
!562 = !DILocation(line: 588, column: 7, scope: !116)
!563 = !DILocation(line: 590, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !117, line: 589, column: 5)
!565 = !DILocation(line: 591, column: 7, scope: !564)
!566 = !DILocation(line: 595, column: 37, scope: !116)
!567 = !DILocation(line: 595, column: 35, scope: !116)
!568 = !DILocation(line: 596, column: 29, scope: !116)
!569 = !DILocation(line: 597, column: 8, scope: !132)
!570 = !DILocation(line: 597, column: 7, scope: !116)
!571 = !DILocation(line: 604, column: 24, scope: !131)
!572 = !DILocation(line: 604, column: 12, scope: !132)
!573 = !DILocation(line: 0, scope: !130)
!574 = !DILocation(line: 610, column: 16, scope: !130)
!575 = !DILocation(line: 610, column: 7, scope: !130)
!576 = !DILocation(line: 611, column: 21, scope: !130)
!577 = !{!578, !578, i64 0}
!578 = !{!"short", !457, i64 0}
!579 = !DILocation(line: 611, column: 19, scope: !130)
!580 = !DILocation(line: 611, column: 16, scope: !130)
!581 = !DILocation(line: 610, column: 30, scope: !130)
!582 = distinct !{!582, !575, !576, !509}
!583 = !DILocation(line: 612, column: 18, scope: !584)
!584 = distinct !DILexicalBlock(scope: !130, file: !117, line: 612, column: 11)
!585 = !DILocation(line: 612, column: 11, scope: !130)
!586 = !DILocation(line: 620, column: 23, scope: !116)
!587 = !DILocation(line: 625, column: 39, scope: !116)
!588 = !DILocation(line: 626, column: 3, scope: !116)
!589 = !DILocation(line: 626, column: 10, scope: !116)
!590 = !DILocation(line: 626, column: 21, scope: !116)
!591 = !DILocation(line: 628, column: 44, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !117, line: 628, column: 11)
!593 = distinct !DILexicalBlock(scope: !116, file: !117, line: 627, column: 5)
!594 = !DILocation(line: 628, column: 32, scope: !592)
!595 = !DILocation(line: 628, column: 49, scope: !592)
!596 = !DILocation(line: 628, column: 11, scope: !593)
!597 = !DILocation(line: 630, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !593, file: !117, line: 630, column: 11)
!599 = !DILocation(line: 630, column: 11, scope: !593)
!600 = !DILocation(line: 632, column: 26, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !117, line: 632, column: 15)
!602 = distinct !DILexicalBlock(scope: !598, file: !117, line: 631, column: 9)
!603 = !DILocation(line: 632, column: 34, scope: !601)
!604 = !DILocation(line: 632, column: 37, scope: !601)
!605 = !DILocation(line: 632, column: 15, scope: !602)
!606 = !DILocation(line: 636, column: 29, scope: !607)
!607 = distinct !DILexicalBlock(scope: !602, file: !117, line: 636, column: 15)
!608 = !DILocation(line: 640, column: 16, scope: !593)
!609 = distinct !{!609, !588, !610, !509}
!610 = !DILocation(line: 641, column: 5, scope: !116)
!611 = !DILocation(line: 644, column: 3, scope: !116)
!612 = !DILocation(line: 0, scope: !492, inlinedAt: !613)
!613 = distinct !DILocation(line: 648, column: 31, scope: !116)
!614 = !DILocation(line: 0, scope: !492, inlinedAt: !615)
!615 = distinct !DILocation(line: 649, column: 31, scope: !116)
!616 = !DILocation(line: 0, scope: !492, inlinedAt: !617)
!617 = distinct !DILocation(line: 650, column: 31, scope: !116)
!618 = !DILocation(line: 0, scope: !492, inlinedAt: !619)
!619 = distinct !DILocation(line: 651, column: 31, scope: !116)
!620 = !DILocation(line: 0, scope: !492, inlinedAt: !621)
!621 = distinct !DILocation(line: 652, column: 31, scope: !116)
!622 = !DILocation(line: 0, scope: !492, inlinedAt: !623)
!623 = distinct !DILocation(line: 653, column: 31, scope: !116)
!624 = !DILocation(line: 0, scope: !492, inlinedAt: !625)
!625 = distinct !DILocation(line: 654, column: 31, scope: !116)
!626 = !DILocation(line: 0, scope: !492, inlinedAt: !627)
!627 = distinct !DILocation(line: 655, column: 31, scope: !116)
!628 = !DILocation(line: 0, scope: !492, inlinedAt: !629)
!629 = distinct !DILocation(line: 656, column: 31, scope: !116)
!630 = !DILocation(line: 0, scope: !492, inlinedAt: !631)
!631 = distinct !DILocation(line: 657, column: 31, scope: !116)
!632 = !DILocation(line: 663, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !116, file: !117, line: 663, column: 7)
!634 = !DILocation(line: 664, column: 7, scope: !633)
!635 = !DILocation(line: 664, column: 10, scope: !633)
!636 = !DILocation(line: 663, column: 7, scope: !116)
!637 = !DILocation(line: 669, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !633, file: !117, line: 665, column: 5)
!639 = !DILocation(line: 671, column: 5, scope: !638)
!640 = !DILocation(line: 676, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !633, file: !117, line: 673, column: 5)
!642 = !DILocation(line: 679, column: 3, scope: !116)
!643 = !DILocation(line: 683, column: 3, scope: !116)
!644 = !DILocation(line: 686, column: 3, scope: !116)
!645 = !DILocation(line: 688, column: 3, scope: !116)
!646 = !DILocation(line: 691, column: 3, scope: !116)
!647 = !DILocation(line: 695, column: 3, scope: !116)
!648 = !DILocation(line: 696, column: 1, scope: !116)
!649 = !DISubprogram(name: "setlocale", scope: !650, file: !650, line: 122, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!650 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!651 = !DISubroutineType(types: !652)
!652 = !{!22, !30, !28}
!653 = !DISubprogram(name: "getenv", scope: !654, file: !654, line: 641, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!654 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!655 = !DISubroutineType(types: !656)
!656 = !{!22, !28}
!657 = !DISubprogram(name: "fwrite_unlocked", scope: !181, file: !181, line: 704, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!658 = !DISubroutineType(types: !659)
!659 = !{!25, !660, !25, !25, !540}
!660 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!663 = !DILocation(line: 0, scope: !36)
!664 = !DILocation(line: 83, column: 21, scope: !36)
!665 = !DILocation(line: 83, column: 3, scope: !36)
!666 = !DILocation(line: 84, column: 3, scope: !36)
!667 = !DILocation(line: 85, column: 3, scope: !36)
!668 = !DILocation(line: 86, column: 3, scope: !36)
!669 = !DILocation(line: 88, column: 3, scope: !36)
!670 = !DILocation(line: 90, column: 3, scope: !36)
!671 = !DILocation(line: 92, column: 15, scope: !46)
!672 = !DILocation(line: 0, scope: !46)
!673 = !DILocation(line: 94, column: 11, scope: !46)
!674 = !DILocation(line: 103, column: 9, scope: !675)
!675 = distinct !DILexicalBlock(scope: !46, file: !3, line: 98, column: 9)
!676 = !DILocation(line: 104, column: 9, scope: !675)
!677 = !DILocation(line: 107, column: 11, scope: !675)
!678 = !DILocation(line: 111, column: 14, scope: !679)
!679 = distinct !DILexicalBlock(scope: !36, file: !3, line: 111, column: 7)
!680 = !DILocation(line: 111, column: 12, scope: !679)
!681 = !DILocation(line: 111, column: 7, scope: !36)
!682 = !DILocation(line: 117, column: 3, scope: !50)
!683 = !DILocation(line: 113, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !679, file: !3, line: 112, column: 5)
!685 = !DILocation(line: 114, column: 7, scope: !684)
!686 = !DILocation(line: 119, column: 28, scope: !48)
!687 = !DILocation(line: 0, scope: !48)
!688 = !DILocation(line: 120, column: 19, scope: !48)
!689 = !DILocation(line: 122, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !48, file: !3, line: 122, column: 11)
!691 = !DILocation(line: 122, column: 11, scope: !48)
!692 = !DILocation(line: 129, column: 7, scope: !48)
!693 = !DILocalVariable(name: "__c", arg: 1, scope: !694, file: !695, line: 108, type: !30)
!694 = distinct !DISubprogram(name: "putchar_unlocked", scope: !695, file: !695, line: 108, type: !696, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !698)
!695 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!696 = !DISubroutineType(types: !697)
!697 = !{!30, !30}
!698 = !{!693}
!699 = !DILocation(line: 0, scope: !694, inlinedAt: !700)
!700 = distinct !DILocation(line: 130, column: 7, scope: !48)
!701 = !DILocation(line: 110, column: 10, scope: !694, inlinedAt: !700)
!702 = !{!703, !456, i64 40}
!703 = !{!"_IO_FILE", !544, i64 0, !456, i64 8, !456, i64 16, !456, i64 24, !456, i64 32, !456, i64 40, !456, i64 48, !456, i64 56, !456, i64 64, !456, i64 72, !456, i64 80, !456, i64 88, !456, i64 96, !456, i64 104, !544, i64 112, !544, i64 116, !704, i64 120, !578, i64 128, !457, i64 130, !457, i64 131, !456, i64 136, !704, i64 144, !456, i64 152, !456, i64 160, !456, i64 168, !456, i64 176, !704, i64 184, !544, i64 192, !457, i64 196}
!704 = !{!"long", !457, i64 0}
!705 = !{!703, !456, i64 48}
!706 = !{!"branch_weights", i32 2000, i32 1}
!707 = !DILocation(line: 117, column: 31, scope: !49)
!708 = !DILocation(line: 117, column: 17, scope: !49)
!709 = distinct !{!709, !682, !710, !509}
!710 = !DILocation(line: 131, column: 5, scope: !50)
!711 = !DILocation(line: 134, column: 1, scope: !36)
!712 = !DISubprogram(name: "bindtextdomain", scope: !532, file: !532, line: 86, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!713 = !DISubroutineType(types: !714)
!714 = !{!22, !28, !28}
!715 = !DISubprogram(name: "textdomain", scope: !532, file: !532, line: 82, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!716 = !DISubprogram(name: "atexit", scope: !654, file: !654, line: 602, type: !717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!717 = !DISubroutineType(types: !718)
!718 = !{!30, !207}
!719 = !DISubprogram(name: "getopt_long", scope: !148, file: !148, line: 66, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!720 = !DISubroutineType(types: !721)
!721 = !{!30, !30, !722, !28, !724, !153}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!725 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !165, file: !165, line: 50, type: !468, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !726)
!726 = !{!727}
!727 = !DILocalVariable(name: "file", arg: 1, scope: !725, file: !165, line: 50, type: !28)
!728 = !DILocation(line: 0, scope: !725)
!729 = !DILocation(line: 52, column: 13, scope: !725)
!730 = !DILocation(line: 53, column: 1, scope: !725)
!731 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !165, file: !165, line: 87, type: !732, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !44}
!734 = !{!735}
!735 = !DILocalVariable(name: "ignore", arg: 1, scope: !731, file: !165, line: 87, type: !44)
!736 = !DILocation(line: 0, scope: !731)
!737 = !DILocation(line: 89, column: 16, scope: !731)
!738 = !{!739, !739, i64 0}
!739 = !{!"_Bool", !457, i64 0}
!740 = !DILocation(line: 90, column: 1, scope: !731)
!741 = distinct !DISubprogram(name: "close_stdout", scope: !165, file: !165, line: 116, type: !208, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !742)
!742 = !{!743}
!743 = !DILocalVariable(name: "write_error", scope: !744, file: !165, line: 121, type: !28)
!744 = distinct !DILexicalBlock(scope: !745, file: !165, line: 120, column: 5)
!745 = distinct !DILexicalBlock(scope: !741, file: !165, line: 118, column: 7)
!746 = !DILocation(line: 118, column: 21, scope: !745)
!747 = !DILocation(line: 118, column: 7, scope: !745)
!748 = !DILocation(line: 118, column: 29, scope: !745)
!749 = !DILocation(line: 119, column: 7, scope: !745)
!750 = !DILocation(line: 119, column: 12, scope: !745)
!751 = !{i8 0, i8 2}
!752 = !DILocation(line: 119, column: 25, scope: !745)
!753 = !DILocation(line: 119, column: 28, scope: !745)
!754 = !DILocation(line: 119, column: 34, scope: !745)
!755 = !DILocation(line: 118, column: 7, scope: !741)
!756 = !DILocation(line: 121, column: 33, scope: !744)
!757 = !DILocation(line: 0, scope: !744)
!758 = !DILocation(line: 122, column: 11, scope: !759)
!759 = distinct !DILexicalBlock(scope: !744, file: !165, line: 122, column: 11)
!760 = !DILocation(line: 0, scope: !759)
!761 = !DILocation(line: 122, column: 11, scope: !744)
!762 = !DILocation(line: 123, column: 9, scope: !759)
!763 = !DILocation(line: 126, column: 9, scope: !759)
!764 = !DILocation(line: 128, column: 14, scope: !744)
!765 = !DILocation(line: 128, column: 7, scope: !744)
!766 = !DILocation(line: 133, column: 42, scope: !767)
!767 = distinct !DILexicalBlock(scope: !741, file: !165, line: 133, column: 7)
!768 = !DILocation(line: 133, column: 28, scope: !767)
!769 = !DILocation(line: 133, column: 50, scope: !767)
!770 = !DILocation(line: 133, column: 7, scope: !741)
!771 = !DILocation(line: 134, column: 12, scope: !767)
!772 = !DILocation(line: 134, column: 5, scope: !767)
!773 = !DILocation(line: 135, column: 1, scope: !741)
!774 = distinct !DISubprogram(name: "dir_len", scope: !370, file: !370, line: 32, type: !775, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !777)
!775 = !DISubroutineType(types: !776)
!776 = !{!25, !28}
!777 = !{!778, !779, !780}
!778 = !DILocalVariable(name: "file", arg: 1, scope: !774, file: !370, line: 32, type: !28)
!779 = !DILocalVariable(name: "prefix_length", scope: !774, file: !370, line: 34, type: !25)
!780 = !DILocalVariable(name: "length", scope: !774, file: !370, line: 47, type: !25)
!781 = !DILocation(line: 0, scope: !774)
!782 = !DILocation(line: 40, column: 24, scope: !774)
!783 = !DILocation(line: 48, column: 17, scope: !784)
!784 = distinct !DILexicalBlock(scope: !774, file: !370, line: 48, column: 3)
!785 = !DILocation(line: 48, column: 39, scope: !784)
!786 = !DILocation(line: 48, column: 8, scope: !784)
!787 = !DILocation(line: 0, scope: !784)
!788 = !DILocation(line: 49, column: 22, scope: !789)
!789 = distinct !DILexicalBlock(scope: !784, file: !370, line: 48, column: 3)
!790 = !DILocation(line: 48, column: 3, scope: !784)
!791 = !DILocation(line: 51, column: 11, scope: !792)
!792 = distinct !DILexicalBlock(scope: !789, file: !370, line: 51, column: 9)
!793 = !DILocation(line: 51, column: 9, scope: !789)
!794 = distinct !{!794, !790, !795, !509}
!795 = !DILocation(line: 52, column: 7, scope: !784)
!796 = !DILocation(line: 53, column: 3, scope: !774)
!797 = distinct !DISubprogram(name: "mdir_name", scope: !370, file: !370, line: 72, type: !655, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !798)
!798 = !{!799, !800, !801, !802}
!799 = !DILocalVariable(name: "file", arg: 1, scope: !797, file: !370, line: 72, type: !28)
!800 = !DILocalVariable(name: "length", scope: !797, file: !370, line: 74, type: !25)
!801 = !DILocalVariable(name: "append_dot", scope: !797, file: !370, line: 75, type: !44)
!802 = !DILocalVariable(name: "dir", scope: !797, file: !370, line: 79, type: !22)
!803 = !DILocation(line: 0, scope: !797)
!804 = !DILocation(line: 0, scope: !774, inlinedAt: !805)
!805 = distinct !DILocation(line: 74, column: 19, scope: !797)
!806 = !DILocation(line: 40, column: 24, scope: !774, inlinedAt: !805)
!807 = !DILocation(line: 48, column: 17, scope: !784, inlinedAt: !805)
!808 = !DILocation(line: 48, column: 39, scope: !784, inlinedAt: !805)
!809 = !DILocation(line: 48, column: 8, scope: !784, inlinedAt: !805)
!810 = !DILocation(line: 0, scope: !784, inlinedAt: !805)
!811 = !DILocation(line: 49, column: 22, scope: !789, inlinedAt: !805)
!812 = !DILocation(line: 48, column: 3, scope: !784, inlinedAt: !805)
!813 = !DILocation(line: 51, column: 11, scope: !792, inlinedAt: !805)
!814 = !DILocation(line: 51, column: 9, scope: !789, inlinedAt: !805)
!815 = distinct !{!815, !812, !816, !509}
!816 = !DILocation(line: 52, column: 7, scope: !784, inlinedAt: !805)
!817 = !DILocation(line: 75, column: 29, scope: !797)
!818 = !DILocation(line: 79, column: 32, scope: !797)
!819 = !DILocation(line: 79, column: 30, scope: !797)
!820 = !DILocation(line: 79, column: 43, scope: !797)
!821 = !DILocation(line: 79, column: 15, scope: !797)
!822 = !DILocation(line: 80, column: 8, scope: !823)
!823 = distinct !DILexicalBlock(scope: !797, file: !370, line: 80, column: 7)
!824 = !DILocation(line: 80, column: 7, scope: !797)
!825 = !DILocalVariable(name: "__dest", arg: 1, scope: !826, file: !827, line: 26, type: !830)
!826 = distinct !DISubprogram(name: "memcpy", scope: !827, file: !827, line: 26, type: !828, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !831)
!827 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!828 = !DISubroutineType(types: !829)
!829 = !{!24, !830, !660, !25}
!830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!831 = !{!825, !832, !833}
!832 = !DILocalVariable(name: "__src", arg: 2, scope: !826, file: !827, line: 26, type: !660)
!833 = !DILocalVariable(name: "__len", arg: 3, scope: !826, file: !827, line: 26, type: !25)
!834 = !DILocation(line: 0, scope: !826, inlinedAt: !835)
!835 = distinct !DILocation(line: 82, column: 3, scope: !797)
!836 = !DILocation(line: 29, column: 10, scope: !826, inlinedAt: !835)
!837 = !DILocation(line: 83, column: 7, scope: !797)
!838 = !DILocation(line: 84, column: 19, scope: !839)
!839 = distinct !DILexicalBlock(scope: !797, file: !370, line: 83, column: 7)
!840 = !DILocation(line: 84, column: 5, scope: !839)
!841 = !DILocation(line: 85, column: 3, scope: !797)
!842 = !DILocation(line: 85, column: 15, scope: !797)
!843 = !DILocation(line: 86, column: 3, scope: !797)
!844 = !DILocation(line: 87, column: 1, scope: !797)
!845 = distinct !DISubprogram(name: "verror", scope: !172, file: !172, line: 251, type: !846, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !848)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !30, !30, !28, !180}
!848 = !{!849, !850, !851, !852}
!849 = !DILocalVariable(name: "status", arg: 1, scope: !845, file: !172, line: 251, type: !30)
!850 = !DILocalVariable(name: "errnum", arg: 2, scope: !845, file: !172, line: 251, type: !30)
!851 = !DILocalVariable(name: "message", arg: 3, scope: !845, file: !172, line: 251, type: !28)
!852 = !DILocalVariable(name: "args", arg: 4, scope: !845, file: !172, line: 251, type: !180)
!853 = !DILocation(line: 0, scope: !845)
!854 = !DILocation(line: 251, column: 1, scope: !845)
!855 = !DILocation(line: 261, column: 3, scope: !845)
!856 = !DILocation(line: 265, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !845, file: !172, line: 265, column: 7)
!858 = !DILocation(line: 265, column: 7, scope: !845)
!859 = !DILocation(line: 266, column: 5, scope: !857)
!860 = !DILocation(line: 272, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !172, line: 268, column: 5)
!862 = !DILocation(line: 276, column: 3, scope: !845)
!863 = !{i64 0, i64 8, !455, i64 8, i64 8, !455, i64 16, i64 8, !455, i64 24, i64 4, !543, i64 28, i64 4, !543}
!864 = !DILocation(line: 282, column: 1, scope: !845)
!865 = distinct !DISubprogram(name: "flush_stdout", scope: !172, file: !172, line: 163, type: !208, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !866)
!866 = !{!867}
!867 = !DILocalVariable(name: "stdout_fd", scope: !865, file: !172, line: 166, type: !30)
!868 = !DILocation(line: 0, scope: !865)
!869 = !DILocalVariable(name: "fd", arg: 1, scope: !870, file: !172, line: 145, type: !30)
!870 = distinct !DISubprogram(name: "is_open", scope: !172, file: !172, line: 145, type: !696, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !871)
!871 = !{!869}
!872 = !DILocation(line: 0, scope: !870, inlinedAt: !873)
!873 = distinct !DILocation(line: 182, column: 25, scope: !874)
!874 = distinct !DILexicalBlock(scope: !865, file: !172, line: 182, column: 7)
!875 = !DILocation(line: 157, column: 15, scope: !870, inlinedAt: !873)
!876 = !DILocation(line: 182, column: 25, scope: !874)
!877 = !DILocation(line: 182, column: 7, scope: !865)
!878 = !DILocation(line: 184, column: 5, scope: !874)
!879 = !DILocation(line: 185, column: 1, scope: !865)
!880 = distinct !DISubprogram(name: "error_tail", scope: !172, file: !172, line: 219, type: !846, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !881)
!881 = !{!882, !883, !884, !885}
!882 = !DILocalVariable(name: "status", arg: 1, scope: !880, file: !172, line: 219, type: !30)
!883 = !DILocalVariable(name: "errnum", arg: 2, scope: !880, file: !172, line: 219, type: !30)
!884 = !DILocalVariable(name: "message", arg: 3, scope: !880, file: !172, line: 219, type: !28)
!885 = !DILocalVariable(name: "args", arg: 4, scope: !880, file: !172, line: 219, type: !180)
!886 = !DILocation(line: 0, scope: !880)
!887 = !DILocation(line: 219, column: 1, scope: !880)
!888 = !DILocation(line: 229, column: 13, scope: !880)
!889 = !DILocation(line: 229, column: 3, scope: !880)
!890 = !DILocalVariable(name: "__stream", arg: 1, scope: !891, file: !892, line: 132, type: !895)
!891 = distinct !DISubprogram(name: "vfprintf", scope: !892, file: !892, line: 132, type: !893, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !930)
!892 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!893 = !DISubroutineType(types: !894)
!894 = !{!30, !895, !539, !182}
!895 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !61, line: 7, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !63, line: 49, size: 1728, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !898, file: !63, line: 51, baseType: !30, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !898, file: !63, line: 54, baseType: !22, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !898, file: !63, line: 55, baseType: !22, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !898, file: !63, line: 56, baseType: !22, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !898, file: !63, line: 57, baseType: !22, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !898, file: !63, line: 58, baseType: !22, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !898, file: !63, line: 59, baseType: !22, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !898, file: !63, line: 60, baseType: !22, size: 64, offset: 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !898, file: !63, line: 61, baseType: !22, size: 64, offset: 512)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !898, file: !63, line: 64, baseType: !22, size: 64, offset: 576)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !898, file: !63, line: 65, baseType: !22, size: 64, offset: 640)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !898, file: !63, line: 66, baseType: !22, size: 64, offset: 704)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !898, file: !63, line: 68, baseType: !78, size: 64, offset: 768)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !898, file: !63, line: 70, baseType: !914, size: 64, offset: 832)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !898, file: !63, line: 72, baseType: !30, size: 32, offset: 896)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !898, file: !63, line: 73, baseType: !30, size: 32, offset: 928)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !898, file: !63, line: 74, baseType: !85, size: 64, offset: 960)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !898, file: !63, line: 77, baseType: !31, size: 16, offset: 1024)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !898, file: !63, line: 78, baseType: !89, size: 8, offset: 1040)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !898, file: !63, line: 79, baseType: !91, size: 8, offset: 1048)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !898, file: !63, line: 81, baseType: !95, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !898, file: !63, line: 89, baseType: !98, size: 64, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !898, file: !63, line: 91, baseType: !100, size: 64, offset: 1216)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !898, file: !63, line: 92, baseType: !103, size: 64, offset: 1280)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !898, file: !63, line: 93, baseType: !914, size: 64, offset: 1344)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !898, file: !63, line: 94, baseType: !24, size: 64, offset: 1408)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !898, file: !63, line: 95, baseType: !25, size: 64, offset: 1472)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !898, file: !63, line: 96, baseType: !30, size: 32, offset: 1536)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !898, file: !63, line: 98, baseType: !110, size: 160, offset: 1568)
!930 = !{!890, !931, !932}
!931 = !DILocalVariable(name: "__fmt", arg: 2, scope: !891, file: !892, line: 133, type: !539)
!932 = !DILocalVariable(name: "__ap", arg: 3, scope: !891, file: !892, line: 133, type: !182)
!933 = !DILocation(line: 0, scope: !891, inlinedAt: !934)
!934 = distinct !DILocation(line: 229, column: 3, scope: !880)
!935 = !DILocation(line: 135, column: 10, scope: !891, inlinedAt: !934)
!936 = !{!937, !939}
!937 = distinct !{!937, !938, !"vfprintf.inline: argument 0"}
!938 = distinct !{!938, !"vfprintf.inline"}
!939 = distinct !{!939, !938, !"vfprintf.inline: argument 1"}
!940 = !DILocation(line: 232, column: 3, scope: !880)
!941 = !DILocation(line: 233, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !880, file: !172, line: 233, column: 7)
!943 = !DILocation(line: 233, column: 7, scope: !880)
!944 = !DILocalVariable(name: "errnum", arg: 1, scope: !945, file: !172, line: 188, type: !30)
!945 = distinct !DISubprogram(name: "print_errno_message", scope: !172, file: !172, line: 188, type: !445, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !946)
!946 = !{!944, !947, !948}
!947 = !DILocalVariable(name: "s", scope: !945, file: !172, line: 190, type: !28)
!948 = !DILocalVariable(name: "errbuf", scope: !945, file: !172, line: 193, type: !949)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 1024)
!952 = !DILocation(line: 0, scope: !945, inlinedAt: !953)
!953 = distinct !DILocation(line: 234, column: 5, scope: !942)
!954 = !DILocation(line: 193, column: 3, scope: !945, inlinedAt: !953)
!955 = !DILocation(line: 193, column: 8, scope: !945, inlinedAt: !953)
!956 = !DILocation(line: 195, column: 7, scope: !945, inlinedAt: !953)
!957 = !DILocation(line: 207, column: 9, scope: !958, inlinedAt: !953)
!958 = distinct !DILexicalBlock(scope: !945, file: !172, line: 207, column: 7)
!959 = !DILocation(line: 207, column: 7, scope: !945, inlinedAt: !953)
!960 = !DILocation(line: 208, column: 9, scope: !958, inlinedAt: !953)
!961 = !DILocation(line: 208, column: 5, scope: !958, inlinedAt: !953)
!962 = !DILocation(line: 214, column: 3, scope: !945, inlinedAt: !953)
!963 = !DILocation(line: 216, column: 1, scope: !945, inlinedAt: !953)
!964 = !DILocation(line: 234, column: 5, scope: !942)
!965 = !DILocation(line: 238, column: 3, scope: !880)
!966 = !DILocalVariable(name: "__c", arg: 1, scope: !967, file: !695, line: 101, type: !30)
!967 = distinct !DISubprogram(name: "putc_unlocked", scope: !695, file: !695, line: 101, type: !968, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!30, !30, !896}
!970 = !{!966, !971}
!971 = !DILocalVariable(name: "__stream", arg: 2, scope: !967, file: !695, line: 101, type: !896)
!972 = !DILocation(line: 0, scope: !967, inlinedAt: !973)
!973 = distinct !DILocation(line: 238, column: 3, scope: !880)
!974 = !DILocation(line: 103, column: 10, scope: !967, inlinedAt: !973)
!975 = !DILocation(line: 240, column: 3, scope: !880)
!976 = !DILocation(line: 241, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !880, file: !172, line: 241, column: 7)
!978 = !DILocation(line: 241, column: 7, scope: !880)
!979 = !DILocation(line: 242, column: 5, scope: !977)
!980 = !DILocation(line: 243, column: 1, scope: !880)
!981 = !DISubprogram(name: "strerror_r", scope: !982, file: !982, line: 444, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!982 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!983 = !DISubroutineType(types: !984)
!984 = !{!22, !30, !22, !25}
!985 = !DISubprogram(name: "fflush_unlocked", scope: !181, file: !181, line: 239, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!986 = !DISubroutineType(types: !987)
!987 = !{!30, !896}
!988 = !DISubprogram(name: "fcntl", scope: !989, file: !989, line: 149, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!989 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!990 = !DISubroutineType(types: !991)
!991 = !{!30, !30, !30, null}
!992 = distinct !DISubprogram(name: "error", scope: !172, file: !172, line: 285, type: !993, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !30, !30, !28, null}
!995 = !{!996, !997, !998, !999}
!996 = !DILocalVariable(name: "status", arg: 1, scope: !992, file: !172, line: 285, type: !30)
!997 = !DILocalVariable(name: "errnum", arg: 2, scope: !992, file: !172, line: 285, type: !30)
!998 = !DILocalVariable(name: "message", arg: 3, scope: !992, file: !172, line: 285, type: !28)
!999 = !DILocalVariable(name: "ap", scope: !992, file: !172, line: 287, type: !180)
!1000 = !DILocation(line: 0, scope: !992)
!1001 = !DILocation(line: 287, column: 3, scope: !992)
!1002 = !DILocation(line: 287, column: 11, scope: !992)
!1003 = !DILocation(line: 288, column: 3, scope: !992)
!1004 = !DILocation(line: 289, column: 3, scope: !992)
!1005 = !DILocation(line: 290, column: 3, scope: !992)
!1006 = !DILocation(line: 291, column: 1, scope: !992)
!1007 = !DILocation(line: 0, scope: !177)
!1008 = !DILocation(line: 298, column: 1, scope: !177)
!1009 = !DILocation(line: 302, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !177, file: !172, line: 302, column: 7)
!1011 = !DILocation(line: 302, column: 7, scope: !177)
!1012 = !DILocation(line: 307, column: 11, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !172, line: 307, column: 11)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !172, line: 303, column: 5)
!1015 = !DILocation(line: 307, column: 27, scope: !1013)
!1016 = !DILocation(line: 308, column: 11, scope: !1013)
!1017 = !DILocation(line: 308, column: 28, scope: !1013)
!1018 = !DILocation(line: 308, column: 25, scope: !1013)
!1019 = !DILocation(line: 309, column: 15, scope: !1013)
!1020 = !DILocation(line: 309, column: 33, scope: !1013)
!1021 = !DILocation(line: 310, column: 19, scope: !1013)
!1022 = !DILocation(line: 311, column: 22, scope: !1013)
!1023 = !DILocation(line: 311, column: 56, scope: !1013)
!1024 = !DILocation(line: 307, column: 11, scope: !1014)
!1025 = !DILocation(line: 316, column: 21, scope: !1014)
!1026 = !DILocation(line: 317, column: 23, scope: !1014)
!1027 = !DILocation(line: 318, column: 5, scope: !1014)
!1028 = !DILocation(line: 327, column: 3, scope: !177)
!1029 = !DILocation(line: 331, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !177, file: !172, line: 331, column: 7)
!1031 = !DILocation(line: 331, column: 7, scope: !177)
!1032 = !DILocation(line: 332, column: 5, scope: !1030)
!1033 = !DILocation(line: 338, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !172, line: 334, column: 5)
!1035 = !DILocation(line: 346, column: 3, scope: !177)
!1036 = !DILocation(line: 350, column: 3, scope: !177)
!1037 = !DILocation(line: 356, column: 1, scope: !177)
!1038 = distinct !DISubprogram(name: "error_at_line", scope: !172, file: !172, line: 359, type: !1039, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !30, !30, !28, !7, !28, null}
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047}
!1042 = !DILocalVariable(name: "status", arg: 1, scope: !1038, file: !172, line: 359, type: !30)
!1043 = !DILocalVariable(name: "errnum", arg: 2, scope: !1038, file: !172, line: 359, type: !30)
!1044 = !DILocalVariable(name: "file_name", arg: 3, scope: !1038, file: !172, line: 359, type: !28)
!1045 = !DILocalVariable(name: "line_number", arg: 4, scope: !1038, file: !172, line: 360, type: !7)
!1046 = !DILocalVariable(name: "message", arg: 5, scope: !1038, file: !172, line: 360, type: !28)
!1047 = !DILocalVariable(name: "ap", scope: !1038, file: !172, line: 362, type: !180)
!1048 = !DILocation(line: 0, scope: !1038)
!1049 = !DILocation(line: 362, column: 3, scope: !1038)
!1050 = !DILocation(line: 362, column: 11, scope: !1038)
!1051 = !DILocation(line: 363, column: 3, scope: !1038)
!1052 = !DILocation(line: 364, column: 3, scope: !1038)
!1053 = !DILocation(line: 366, column: 3, scope: !1038)
!1054 = !DILocation(line: 367, column: 1, scope: !1038)
!1055 = distinct !DISubprogram(name: "getprogname", scope: !372, file: !372, line: 54, type: !1056, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !535)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!28}
!1058 = !DILocation(line: 58, column: 10, scope: !1055)
!1059 = !DILocation(line: 58, column: 3, scope: !1055)
!1060 = distinct !DISubprogram(name: "set_program_name", scope: !213, file: !213, line: 37, type: !468, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DILocalVariable(name: "argv0", arg: 1, scope: !1060, file: !213, line: 37, type: !28)
!1063 = !DILocalVariable(name: "slash", scope: !1060, file: !213, line: 44, type: !28)
!1064 = !DILocalVariable(name: "base", scope: !1060, file: !213, line: 45, type: !28)
!1065 = !DILocation(line: 0, scope: !1060)
!1066 = !DILocation(line: 44, column: 23, scope: !1060)
!1067 = !DILocation(line: 45, column: 22, scope: !1060)
!1068 = !DILocation(line: 46, column: 17, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1060, file: !213, line: 46, column: 7)
!1070 = !DILocation(line: 46, column: 9, scope: !1069)
!1071 = !DILocation(line: 46, column: 25, scope: !1069)
!1072 = !DILocation(line: 46, column: 40, scope: !1069)
!1073 = !DILocalVariable(name: "__s1", arg: 1, scope: !1074, file: !493, line: 974, type: !661)
!1074 = distinct !DISubprogram(name: "memeq", scope: !493, file: !493, line: 974, type: !1075, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!44, !661, !661, !25}
!1077 = !{!1073, !1078, !1079}
!1078 = !DILocalVariable(name: "__s2", arg: 2, scope: !1074, file: !493, line: 974, type: !661)
!1079 = !DILocalVariable(name: "__n", arg: 3, scope: !1074, file: !493, line: 974, type: !25)
!1080 = !DILocation(line: 0, scope: !1074, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 46, column: 28, scope: !1069)
!1082 = !DILocation(line: 976, column: 11, scope: !1074, inlinedAt: !1081)
!1083 = !DILocation(line: 976, column: 10, scope: !1074, inlinedAt: !1081)
!1084 = !DILocation(line: 46, column: 7, scope: !1060)
!1085 = !DILocation(line: 49, column: 11, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !213, line: 49, column: 11)
!1087 = distinct !DILexicalBlock(scope: !1069, file: !213, line: 47, column: 5)
!1088 = !DILocation(line: 49, column: 36, scope: !1086)
!1089 = !DILocation(line: 49, column: 11, scope: !1087)
!1090 = !DILocation(line: 65, column: 16, scope: !1060)
!1091 = !DILocation(line: 71, column: 27, scope: !1060)
!1092 = !DILocation(line: 74, column: 33, scope: !1060)
!1093 = !DILocation(line: 76, column: 1, scope: !1060)
!1094 = !DILocation(line: 0, scope: !218)
!1095 = !DILocation(line: 40, column: 29, scope: !218)
!1096 = !DILocation(line: 41, column: 19, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !218, file: !219, line: 41, column: 7)
!1098 = !DILocation(line: 41, column: 7, scope: !218)
!1099 = !DILocation(line: 47, column: 3, scope: !218)
!1100 = !DILocation(line: 48, column: 3, scope: !218)
!1101 = !DILocation(line: 48, column: 13, scope: !218)
!1102 = !DILocalVariable(name: "ps", arg: 1, scope: !1103, file: !1104, line: 1135, type: !1107)
!1103 = distinct !DISubprogram(name: "mbszero", scope: !1104, file: !1104, line: 1135, type: !1105, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !1108)
!1104 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!1108 = !{!1102}
!1109 = !DILocation(line: 0, scope: !1103, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 48, column: 18, scope: !218)
!1111 = !DILocalVariable(name: "__dest", arg: 1, scope: !1112, file: !827, line: 57, type: !24)
!1112 = distinct !DISubprogram(name: "memset", scope: !827, file: !827, line: 57, type: !1113, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!24, !24, !30, !25}
!1115 = !{!1111, !1116, !1117}
!1116 = !DILocalVariable(name: "__ch", arg: 2, scope: !1112, file: !827, line: 57, type: !30)
!1117 = !DILocalVariable(name: "__len", arg: 3, scope: !1112, file: !827, line: 57, type: !25)
!1118 = !DILocation(line: 0, scope: !1112, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 1137, column: 3, scope: !1103, inlinedAt: !1110)
!1120 = !DILocation(line: 59, column: 10, scope: !1112, inlinedAt: !1119)
!1121 = !DILocation(line: 49, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !218, file: !219, line: 49, column: 7)
!1123 = !DILocation(line: 49, column: 39, scope: !1122)
!1124 = !DILocation(line: 49, column: 44, scope: !1122)
!1125 = !DILocation(line: 54, column: 1, scope: !218)
!1126 = !DISubprogram(name: "mbrtoc32", scope: !230, file: !230, line: 57, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!25, !1129, !539, !25, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1130)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1107)
!1132 = distinct !DISubprogram(name: "clone_quoting_options", scope: !253, file: !253, line: 113, type: !1133, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1136)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!1135, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!1136 = !{!1137, !1138, !1139}
!1137 = !DILocalVariable(name: "o", arg: 1, scope: !1132, file: !253, line: 113, type: !1135)
!1138 = !DILocalVariable(name: "saved_errno", scope: !1132, file: !253, line: 115, type: !30)
!1139 = !DILocalVariable(name: "p", scope: !1132, file: !253, line: 116, type: !1135)
!1140 = !DILocation(line: 0, scope: !1132)
!1141 = !DILocation(line: 115, column: 21, scope: !1132)
!1142 = !DILocation(line: 116, column: 40, scope: !1132)
!1143 = !DILocation(line: 116, column: 31, scope: !1132)
!1144 = !DILocation(line: 118, column: 9, scope: !1132)
!1145 = !DILocation(line: 119, column: 3, scope: !1132)
!1146 = distinct !DISubprogram(name: "get_quoting_style", scope: !253, file: !253, line: 124, type: !1147, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1151)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!255, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!1151 = !{!1152}
!1152 = !DILocalVariable(name: "o", arg: 1, scope: !1146, file: !253, line: 124, type: !1149)
!1153 = !DILocation(line: 0, scope: !1146)
!1154 = !DILocation(line: 126, column: 11, scope: !1146)
!1155 = !DILocation(line: 126, column: 46, scope: !1146)
!1156 = !{!1157, !457, i64 0}
!1157 = !{!"quoting_options", !457, i64 0, !544, i64 4, !457, i64 8, !456, i64 40, !456, i64 48}
!1158 = !DILocation(line: 126, column: 3, scope: !1146)
!1159 = distinct !DISubprogram(name: "set_quoting_style", scope: !253, file: !253, line: 132, type: !1160, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !1135, !255}
!1162 = !{!1163, !1164}
!1163 = !DILocalVariable(name: "o", arg: 1, scope: !1159, file: !253, line: 132, type: !1135)
!1164 = !DILocalVariable(name: "s", arg: 2, scope: !1159, file: !253, line: 132, type: !255)
!1165 = !DILocation(line: 0, scope: !1159)
!1166 = !DILocation(line: 134, column: 4, scope: !1159)
!1167 = !DILocation(line: 134, column: 39, scope: !1159)
!1168 = !DILocation(line: 134, column: 45, scope: !1159)
!1169 = !DILocation(line: 135, column: 1, scope: !1159)
!1170 = distinct !DISubprogram(name: "set_char_quoting", scope: !253, file: !253, line: 143, type: !1171, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!30, !1135, !23, !30}
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1180, !1181}
!1174 = !DILocalVariable(name: "o", arg: 1, scope: !1170, file: !253, line: 143, type: !1135)
!1175 = !DILocalVariable(name: "c", arg: 2, scope: !1170, file: !253, line: 143, type: !23)
!1176 = !DILocalVariable(name: "i", arg: 3, scope: !1170, file: !253, line: 143, type: !30)
!1177 = !DILocalVariable(name: "uc", scope: !1170, file: !253, line: 145, type: !32)
!1178 = !DILocalVariable(name: "p", scope: !1170, file: !253, line: 146, type: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1180 = !DILocalVariable(name: "shift", scope: !1170, file: !253, line: 148, type: !30)
!1181 = !DILocalVariable(name: "r", scope: !1170, file: !253, line: 149, type: !7)
!1182 = !DILocation(line: 0, scope: !1170)
!1183 = !DILocation(line: 147, column: 6, scope: !1170)
!1184 = !DILocation(line: 147, column: 62, scope: !1170)
!1185 = !DILocation(line: 147, column: 57, scope: !1170)
!1186 = !DILocation(line: 148, column: 15, scope: !1170)
!1187 = !DILocation(line: 149, column: 21, scope: !1170)
!1188 = !DILocation(line: 149, column: 24, scope: !1170)
!1189 = !DILocation(line: 149, column: 34, scope: !1170)
!1190 = !DILocation(line: 150, column: 13, scope: !1170)
!1191 = !DILocation(line: 150, column: 19, scope: !1170)
!1192 = !DILocation(line: 150, column: 24, scope: !1170)
!1193 = !DILocation(line: 150, column: 6, scope: !1170)
!1194 = !DILocation(line: 151, column: 3, scope: !1170)
!1195 = distinct !DISubprogram(name: "set_quoting_flags", scope: !253, file: !253, line: 159, type: !1196, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!30, !1135, !30}
!1198 = !{!1199, !1200, !1201}
!1199 = !DILocalVariable(name: "o", arg: 1, scope: !1195, file: !253, line: 159, type: !1135)
!1200 = !DILocalVariable(name: "i", arg: 2, scope: !1195, file: !253, line: 159, type: !30)
!1201 = !DILocalVariable(name: "r", scope: !1195, file: !253, line: 163, type: !30)
!1202 = !DILocation(line: 0, scope: !1195)
!1203 = !DILocation(line: 161, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1195, file: !253, line: 161, column: 7)
!1205 = !DILocation(line: 161, column: 7, scope: !1195)
!1206 = !DILocation(line: 163, column: 14, scope: !1195)
!1207 = !{!1157, !544, i64 4}
!1208 = !DILocation(line: 164, column: 12, scope: !1195)
!1209 = !DILocation(line: 165, column: 3, scope: !1195)
!1210 = distinct !DISubprogram(name: "set_custom_quoting", scope: !253, file: !253, line: 169, type: !1211, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !1135, !28, !28}
!1213 = !{!1214, !1215, !1216}
!1214 = !DILocalVariable(name: "o", arg: 1, scope: !1210, file: !253, line: 169, type: !1135)
!1215 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1210, file: !253, line: 170, type: !28)
!1216 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1210, file: !253, line: 170, type: !28)
!1217 = !DILocation(line: 0, scope: !1210)
!1218 = !DILocation(line: 172, column: 8, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !253, line: 172, column: 7)
!1220 = !DILocation(line: 172, column: 7, scope: !1210)
!1221 = !DILocation(line: 174, column: 6, scope: !1210)
!1222 = !DILocation(line: 174, column: 12, scope: !1210)
!1223 = !DILocation(line: 175, column: 8, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1210, file: !253, line: 175, column: 7)
!1225 = !DILocation(line: 175, column: 19, scope: !1224)
!1226 = !DILocation(line: 176, column: 5, scope: !1224)
!1227 = !DILocation(line: 177, column: 6, scope: !1210)
!1228 = !DILocation(line: 177, column: 17, scope: !1210)
!1229 = !{!1157, !456, i64 40}
!1230 = !DILocation(line: 178, column: 6, scope: !1210)
!1231 = !DILocation(line: 178, column: 18, scope: !1210)
!1232 = !{!1157, !456, i64 48}
!1233 = !DILocation(line: 179, column: 1, scope: !1210)
!1234 = distinct !DISubprogram(name: "quotearg_buffer", scope: !253, file: !253, line: 774, type: !1235, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1237)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!25, !22, !25, !28, !25, !1149}
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1238 = !DILocalVariable(name: "buffer", arg: 1, scope: !1234, file: !253, line: 774, type: !22)
!1239 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1234, file: !253, line: 774, type: !25)
!1240 = !DILocalVariable(name: "arg", arg: 3, scope: !1234, file: !253, line: 775, type: !28)
!1241 = !DILocalVariable(name: "argsize", arg: 4, scope: !1234, file: !253, line: 775, type: !25)
!1242 = !DILocalVariable(name: "o", arg: 5, scope: !1234, file: !253, line: 776, type: !1149)
!1243 = !DILocalVariable(name: "p", scope: !1234, file: !253, line: 778, type: !1149)
!1244 = !DILocalVariable(name: "saved_errno", scope: !1234, file: !253, line: 779, type: !30)
!1245 = !DILocalVariable(name: "r", scope: !1234, file: !253, line: 780, type: !25)
!1246 = !DILocation(line: 0, scope: !1234)
!1247 = !DILocation(line: 778, column: 37, scope: !1234)
!1248 = !DILocation(line: 779, column: 21, scope: !1234)
!1249 = !DILocation(line: 781, column: 43, scope: !1234)
!1250 = !DILocation(line: 781, column: 53, scope: !1234)
!1251 = !DILocation(line: 781, column: 60, scope: !1234)
!1252 = !DILocation(line: 782, column: 43, scope: !1234)
!1253 = !DILocation(line: 782, column: 58, scope: !1234)
!1254 = !DILocation(line: 780, column: 14, scope: !1234)
!1255 = !DILocation(line: 783, column: 9, scope: !1234)
!1256 = !DILocation(line: 784, column: 3, scope: !1234)
!1257 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !253, file: !253, line: 251, type: !1258, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1262)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!25, !22, !25, !28, !25, !255, !30, !1260, !28, !28}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1287, !1289, !1292, !1293, !1294, !1295, !1298, !1299, !1302, !1306, !1307, !1315, !1318, !1319, !1321, !1322, !1323, !1324}
!1263 = !DILocalVariable(name: "buffer", arg: 1, scope: !1257, file: !253, line: 251, type: !22)
!1264 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1257, file: !253, line: 251, type: !25)
!1265 = !DILocalVariable(name: "arg", arg: 3, scope: !1257, file: !253, line: 252, type: !28)
!1266 = !DILocalVariable(name: "argsize", arg: 4, scope: !1257, file: !253, line: 252, type: !25)
!1267 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1257, file: !253, line: 253, type: !255)
!1268 = !DILocalVariable(name: "flags", arg: 6, scope: !1257, file: !253, line: 253, type: !30)
!1269 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1257, file: !253, line: 254, type: !1260)
!1270 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1257, file: !253, line: 255, type: !28)
!1271 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1257, file: !253, line: 256, type: !28)
!1272 = !DILocalVariable(name: "unibyte_locale", scope: !1257, file: !253, line: 258, type: !44)
!1273 = !DILocalVariable(name: "len", scope: !1257, file: !253, line: 260, type: !25)
!1274 = !DILocalVariable(name: "orig_buffersize", scope: !1257, file: !253, line: 261, type: !25)
!1275 = !DILocalVariable(name: "quote_string", scope: !1257, file: !253, line: 262, type: !28)
!1276 = !DILocalVariable(name: "quote_string_len", scope: !1257, file: !253, line: 263, type: !25)
!1277 = !DILocalVariable(name: "backslash_escapes", scope: !1257, file: !253, line: 264, type: !44)
!1278 = !DILocalVariable(name: "elide_outer_quotes", scope: !1257, file: !253, line: 265, type: !44)
!1279 = !DILocalVariable(name: "encountered_single_quote", scope: !1257, file: !253, line: 266, type: !44)
!1280 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1257, file: !253, line: 267, type: !44)
!1281 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1257, file: !253, line: 309, type: !44)
!1282 = !DILocalVariable(name: "lq", scope: !1283, file: !253, line: 361, type: !28)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !253, line: 361, column: 11)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !253, line: 360, column: 13)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !253, line: 333, column: 7)
!1286 = distinct !DILexicalBlock(scope: !1257, file: !253, line: 312, column: 5)
!1287 = !DILocalVariable(name: "i", scope: !1288, file: !253, line: 395, type: !25)
!1288 = distinct !DILexicalBlock(scope: !1257, file: !253, line: 395, column: 3)
!1289 = !DILocalVariable(name: "is_right_quote", scope: !1290, file: !253, line: 397, type: !44)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !253, line: 396, column: 5)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !253, line: 395, column: 3)
!1292 = !DILocalVariable(name: "escaping", scope: !1290, file: !253, line: 398, type: !44)
!1293 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1290, file: !253, line: 399, type: !44)
!1294 = !DILocalVariable(name: "c", scope: !1290, file: !253, line: 417, type: !32)
!1295 = !DILocalVariable(name: "m", scope: !1296, file: !253, line: 598, type: !25)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !253, line: 596, column: 11)
!1297 = distinct !DILexicalBlock(scope: !1290, file: !253, line: 419, column: 9)
!1298 = !DILocalVariable(name: "printable", scope: !1296, file: !253, line: 600, type: !44)
!1299 = !DILocalVariable(name: "mbs", scope: !1300, file: !253, line: 609, type: !312)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !253, line: 608, column: 15)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !253, line: 602, column: 17)
!1302 = !DILocalVariable(name: "w", scope: !1303, file: !253, line: 618, type: !229)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !253, line: 617, column: 19)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !253, line: 616, column: 17)
!1305 = distinct !DILexicalBlock(scope: !1300, file: !253, line: 616, column: 17)
!1306 = !DILocalVariable(name: "bytes", scope: !1303, file: !253, line: 619, type: !25)
!1307 = !DILocalVariable(name: "j", scope: !1308, file: !253, line: 648, type: !25)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !253, line: 648, column: 29)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !253, line: 647, column: 27)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !253, line: 645, column: 29)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !253, line: 636, column: 23)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !253, line: 628, column: 30)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !253, line: 623, column: 30)
!1314 = distinct !DILexicalBlock(scope: !1303, file: !253, line: 621, column: 25)
!1315 = !DILocalVariable(name: "ilim", scope: !1316, file: !253, line: 674, type: !25)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !253, line: 671, column: 15)
!1317 = distinct !DILexicalBlock(scope: !1296, file: !253, line: 670, column: 17)
!1318 = !DILabel(scope: !1257, name: "process_input", file: !253, line: 308)
!1319 = !DILabel(scope: !1320, name: "c_and_shell_escape", file: !253, line: 502)
!1320 = distinct !DILexicalBlock(scope: !1297, file: !253, line: 478, column: 9)
!1321 = !DILabel(scope: !1320, name: "c_escape", file: !253, line: 507)
!1322 = !DILabel(scope: !1290, name: "store_escape", file: !253, line: 709)
!1323 = !DILabel(scope: !1290, name: "store_c", file: !253, line: 712)
!1324 = !DILabel(scope: !1257, name: "force_outer_quoting_style", file: !253, line: 753)
!1325 = !DILocation(line: 0, scope: !1257)
!1326 = !DILocation(line: 258, column: 25, scope: !1257)
!1327 = !DILocation(line: 258, column: 36, scope: !1257)
!1328 = !DILocation(line: 267, column: 3, scope: !1257)
!1329 = !DILocation(line: 261, column: 10, scope: !1257)
!1330 = !DILocation(line: 262, column: 15, scope: !1257)
!1331 = !DILocation(line: 263, column: 10, scope: !1257)
!1332 = !DILocation(line: 308, column: 2, scope: !1257)
!1333 = !DILocation(line: 311, column: 3, scope: !1257)
!1334 = !DILocation(line: 318, column: 11, scope: !1286)
!1335 = !DILocation(line: 319, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !253, line: 319, column: 9)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !253, line: 319, column: 9)
!1338 = distinct !DILexicalBlock(scope: !1286, file: !253, line: 318, column: 11)
!1339 = !DILocation(line: 319, column: 9, scope: !1337)
!1340 = !DILocation(line: 0, scope: !303, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 357, column: 26, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !253, line: 335, column: 11)
!1343 = distinct !DILexicalBlock(scope: !1285, file: !253, line: 334, column: 13)
!1344 = !DILocation(line: 199, column: 29, scope: !303, inlinedAt: !1341)
!1345 = !DILocation(line: 201, column: 19, scope: !1346, inlinedAt: !1341)
!1346 = distinct !DILexicalBlock(scope: !303, file: !253, line: 201, column: 7)
!1347 = !DILocation(line: 201, column: 7, scope: !303, inlinedAt: !1341)
!1348 = !DILocation(line: 229, column: 3, scope: !303, inlinedAt: !1341)
!1349 = !DILocation(line: 230, column: 3, scope: !303, inlinedAt: !1341)
!1350 = !DILocation(line: 230, column: 13, scope: !303, inlinedAt: !1341)
!1351 = !DILocalVariable(name: "ps", arg: 1, scope: !1352, file: !1104, line: 1135, type: !1355)
!1352 = distinct !DISubprogram(name: "mbszero", scope: !1104, file: !1104, line: 1135, type: !1353, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1356)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !1355}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!1356 = !{!1351}
!1357 = !DILocation(line: 0, scope: !1352, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 230, column: 18, scope: !303, inlinedAt: !1341)
!1359 = !DILocalVariable(name: "__dest", arg: 1, scope: !1360, file: !827, line: 57, type: !24)
!1360 = distinct !DISubprogram(name: "memset", scope: !827, file: !827, line: 57, type: !1113, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1361)
!1361 = !{!1359, !1362, !1363}
!1362 = !DILocalVariable(name: "__ch", arg: 2, scope: !1360, file: !827, line: 57, type: !30)
!1363 = !DILocalVariable(name: "__len", arg: 3, scope: !1360, file: !827, line: 57, type: !25)
!1364 = !DILocation(line: 0, scope: !1360, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 1137, column: 3, scope: !1352, inlinedAt: !1358)
!1366 = !DILocation(line: 59, column: 10, scope: !1360, inlinedAt: !1365)
!1367 = !DILocation(line: 231, column: 7, scope: !1368, inlinedAt: !1341)
!1368 = distinct !DILexicalBlock(scope: !303, file: !253, line: 231, column: 7)
!1369 = !DILocation(line: 231, column: 40, scope: !1368, inlinedAt: !1341)
!1370 = !DILocation(line: 231, column: 45, scope: !1368, inlinedAt: !1341)
!1371 = !DILocation(line: 235, column: 1, scope: !303, inlinedAt: !1341)
!1372 = !DILocation(line: 0, scope: !303, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 358, column: 27, scope: !1342)
!1374 = !DILocation(line: 199, column: 29, scope: !303, inlinedAt: !1373)
!1375 = !DILocation(line: 201, column: 19, scope: !1346, inlinedAt: !1373)
!1376 = !DILocation(line: 201, column: 7, scope: !303, inlinedAt: !1373)
!1377 = !DILocation(line: 229, column: 3, scope: !303, inlinedAt: !1373)
!1378 = !DILocation(line: 230, column: 3, scope: !303, inlinedAt: !1373)
!1379 = !DILocation(line: 230, column: 13, scope: !303, inlinedAt: !1373)
!1380 = !DILocation(line: 0, scope: !1352, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 230, column: 18, scope: !303, inlinedAt: !1373)
!1382 = !DILocation(line: 0, scope: !1360, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 1137, column: 3, scope: !1352, inlinedAt: !1381)
!1384 = !DILocation(line: 59, column: 10, scope: !1360, inlinedAt: !1383)
!1385 = !DILocation(line: 231, column: 7, scope: !1368, inlinedAt: !1373)
!1386 = !DILocation(line: 231, column: 40, scope: !1368, inlinedAt: !1373)
!1387 = !DILocation(line: 231, column: 45, scope: !1368, inlinedAt: !1373)
!1388 = !DILocation(line: 235, column: 1, scope: !303, inlinedAt: !1373)
!1389 = !DILocation(line: 360, column: 13, scope: !1285)
!1390 = !DILocation(line: 0, scope: !1283)
!1391 = !DILocation(line: 361, column: 45, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1283, file: !253, line: 361, column: 11)
!1393 = !DILocation(line: 361, column: 11, scope: !1283)
!1394 = !DILocation(line: 362, column: 13, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !253, line: 362, column: 13)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !253, line: 362, column: 13)
!1397 = !DILocation(line: 362, column: 13, scope: !1396)
!1398 = !DILocation(line: 361, column: 52, scope: !1392)
!1399 = distinct !{!1399, !1393, !1400, !509}
!1400 = !DILocation(line: 362, column: 13, scope: !1283)
!1401 = !DILocation(line: 260, column: 10, scope: !1257)
!1402 = !DILocation(line: 365, column: 28, scope: !1285)
!1403 = !DILocation(line: 367, column: 7, scope: !1286)
!1404 = !DILocation(line: 370, column: 7, scope: !1286)
!1405 = !DILocation(line: 376, column: 11, scope: !1286)
!1406 = !DILocation(line: 381, column: 11, scope: !1286)
!1407 = !DILocation(line: 382, column: 9, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !253, line: 382, column: 9)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !253, line: 382, column: 9)
!1410 = distinct !DILexicalBlock(scope: !1286, file: !253, line: 381, column: 11)
!1411 = !DILocation(line: 382, column: 9, scope: !1409)
!1412 = !DILocation(line: 389, column: 7, scope: !1286)
!1413 = !DILocation(line: 392, column: 7, scope: !1286)
!1414 = !DILocation(line: 0, scope: !1288)
!1415 = !DILocation(line: 395, column: 8, scope: !1288)
!1416 = !DILocation(line: 395, column: 34, scope: !1291)
!1417 = !DILocation(line: 395, column: 26, scope: !1291)
!1418 = !DILocation(line: 395, column: 48, scope: !1291)
!1419 = !DILocation(line: 395, column: 55, scope: !1291)
!1420 = !DILocation(line: 395, column: 3, scope: !1288)
!1421 = !DILocation(line: 395, column: 67, scope: !1291)
!1422 = !DILocation(line: 0, scope: !1290)
!1423 = !DILocation(line: 402, column: 11, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1290, file: !253, line: 401, column: 11)
!1425 = !DILocation(line: 404, column: 17, scope: !1424)
!1426 = !DILocation(line: 405, column: 39, scope: !1424)
!1427 = !DILocation(line: 409, column: 32, scope: !1424)
!1428 = !DILocation(line: 405, column: 19, scope: !1424)
!1429 = !DILocation(line: 405, column: 15, scope: !1424)
!1430 = !DILocation(line: 410, column: 11, scope: !1424)
!1431 = !DILocation(line: 410, column: 25, scope: !1424)
!1432 = !DILocalVariable(name: "__s1", arg: 1, scope: !1433, file: !493, line: 974, type: !661)
!1433 = distinct !DISubprogram(name: "memeq", scope: !493, file: !493, line: 974, type: !1075, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1434)
!1434 = !{!1432, !1435, !1436}
!1435 = !DILocalVariable(name: "__s2", arg: 2, scope: !1433, file: !493, line: 974, type: !661)
!1436 = !DILocalVariable(name: "__n", arg: 3, scope: !1433, file: !493, line: 974, type: !25)
!1437 = !DILocation(line: 0, scope: !1433, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 410, column: 14, scope: !1424)
!1439 = !DILocation(line: 976, column: 11, scope: !1433, inlinedAt: !1438)
!1440 = !DILocation(line: 976, column: 10, scope: !1433, inlinedAt: !1438)
!1441 = !DILocation(line: 401, column: 11, scope: !1290)
!1442 = !DILocation(line: 417, column: 25, scope: !1290)
!1443 = !DILocation(line: 418, column: 7, scope: !1290)
!1444 = !DILocation(line: 421, column: 15, scope: !1297)
!1445 = !DILocation(line: 423, column: 15, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !253, line: 423, column: 15)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !253, line: 422, column: 13)
!1448 = distinct !DILexicalBlock(scope: !1297, file: !253, line: 421, column: 15)
!1449 = !DILocation(line: 423, column: 15, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !253, line: 423, column: 15)
!1451 = !DILocation(line: 423, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !253, line: 423, column: 15)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !253, line: 423, column: 15)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !253, line: 423, column: 15)
!1455 = !DILocation(line: 423, column: 15, scope: !1453)
!1456 = !DILocation(line: 423, column: 15, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !253, line: 423, column: 15)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !253, line: 423, column: 15)
!1459 = !DILocation(line: 423, column: 15, scope: !1458)
!1460 = !DILocation(line: 423, column: 15, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !253, line: 423, column: 15)
!1462 = distinct !DILexicalBlock(scope: !1454, file: !253, line: 423, column: 15)
!1463 = !DILocation(line: 423, column: 15, scope: !1462)
!1464 = !DILocation(line: 423, column: 15, scope: !1454)
!1465 = !DILocation(line: 423, column: 15, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !253, line: 423, column: 15)
!1467 = distinct !DILexicalBlock(scope: !1446, file: !253, line: 423, column: 15)
!1468 = !DILocation(line: 423, column: 15, scope: !1467)
!1469 = !DILocation(line: 431, column: 19, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1447, file: !253, line: 430, column: 19)
!1471 = !DILocation(line: 431, column: 24, scope: !1470)
!1472 = !DILocation(line: 431, column: 28, scope: !1470)
!1473 = !DILocation(line: 431, column: 38, scope: !1470)
!1474 = !DILocation(line: 431, column: 48, scope: !1470)
!1475 = !DILocation(line: 431, column: 59, scope: !1470)
!1476 = !DILocation(line: 433, column: 19, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !253, line: 433, column: 19)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !253, line: 433, column: 19)
!1479 = distinct !DILexicalBlock(scope: !1470, file: !253, line: 432, column: 17)
!1480 = !DILocation(line: 433, column: 19, scope: !1478)
!1481 = !DILocation(line: 434, column: 19, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !253, line: 434, column: 19)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !253, line: 434, column: 19)
!1484 = !DILocation(line: 434, column: 19, scope: !1483)
!1485 = !DILocation(line: 435, column: 17, scope: !1479)
!1486 = !DILocation(line: 442, column: 20, scope: !1448)
!1487 = !DILocation(line: 447, column: 11, scope: !1297)
!1488 = !DILocation(line: 450, column: 19, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1297, file: !253, line: 448, column: 13)
!1490 = !DILocation(line: 456, column: 19, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1489, file: !253, line: 455, column: 19)
!1492 = !DILocation(line: 456, column: 24, scope: !1491)
!1493 = !DILocation(line: 456, column: 28, scope: !1491)
!1494 = !DILocation(line: 456, column: 38, scope: !1491)
!1495 = !DILocation(line: 456, column: 47, scope: !1491)
!1496 = !DILocation(line: 456, column: 41, scope: !1491)
!1497 = !DILocation(line: 456, column: 52, scope: !1491)
!1498 = !DILocation(line: 455, column: 19, scope: !1489)
!1499 = !DILocation(line: 457, column: 25, scope: !1491)
!1500 = !DILocation(line: 457, column: 17, scope: !1491)
!1501 = !DILocation(line: 464, column: 25, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1491, file: !253, line: 458, column: 19)
!1503 = !DILocation(line: 468, column: 21, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !253, line: 468, column: 21)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !253, line: 468, column: 21)
!1506 = !DILocation(line: 468, column: 21, scope: !1505)
!1507 = !DILocation(line: 469, column: 21, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !253, line: 469, column: 21)
!1509 = distinct !DILexicalBlock(scope: !1502, file: !253, line: 469, column: 21)
!1510 = !DILocation(line: 469, column: 21, scope: !1509)
!1511 = !DILocation(line: 470, column: 21, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !253, line: 470, column: 21)
!1513 = distinct !DILexicalBlock(scope: !1502, file: !253, line: 470, column: 21)
!1514 = !DILocation(line: 470, column: 21, scope: !1513)
!1515 = !DILocation(line: 471, column: 21, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !253, line: 471, column: 21)
!1517 = distinct !DILexicalBlock(scope: !1502, file: !253, line: 471, column: 21)
!1518 = !DILocation(line: 471, column: 21, scope: !1517)
!1519 = !DILocation(line: 472, column: 21, scope: !1502)
!1520 = !DILocation(line: 482, column: 33, scope: !1320)
!1521 = !DILocation(line: 483, column: 33, scope: !1320)
!1522 = !DILocation(line: 485, column: 33, scope: !1320)
!1523 = !DILocation(line: 486, column: 33, scope: !1320)
!1524 = !DILocation(line: 487, column: 33, scope: !1320)
!1525 = !DILocation(line: 490, column: 17, scope: !1320)
!1526 = !DILocation(line: 492, column: 21, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !253, line: 491, column: 15)
!1528 = distinct !DILexicalBlock(scope: !1320, file: !253, line: 490, column: 17)
!1529 = !DILocation(line: 499, column: 35, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1320, file: !253, line: 499, column: 17)
!1531 = !DILocation(line: 499, column: 57, scope: !1530)
!1532 = !DILocation(line: 0, scope: !1320)
!1533 = !DILocation(line: 502, column: 11, scope: !1320)
!1534 = !DILocation(line: 504, column: 17, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1320, file: !253, line: 503, column: 17)
!1536 = !DILocation(line: 507, column: 11, scope: !1320)
!1537 = !DILocation(line: 508, column: 17, scope: !1320)
!1538 = !DILocation(line: 517, column: 15, scope: !1297)
!1539 = !DILocation(line: 517, column: 40, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1297, file: !253, line: 517, column: 15)
!1541 = !DILocation(line: 517, column: 47, scope: !1540)
!1542 = !DILocation(line: 517, column: 18, scope: !1540)
!1543 = !DILocation(line: 521, column: 17, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1297, file: !253, line: 521, column: 15)
!1545 = !DILocation(line: 521, column: 15, scope: !1297)
!1546 = !DILocation(line: 525, column: 11, scope: !1297)
!1547 = !DILocation(line: 537, column: 15, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1297, file: !253, line: 536, column: 15)
!1549 = !DILocation(line: 536, column: 15, scope: !1297)
!1550 = !DILocation(line: 544, column: 15, scope: !1297)
!1551 = !DILocation(line: 546, column: 19, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !253, line: 545, column: 13)
!1553 = distinct !DILexicalBlock(scope: !1297, file: !253, line: 544, column: 15)
!1554 = !DILocation(line: 549, column: 19, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !253, line: 549, column: 19)
!1556 = !DILocation(line: 549, column: 30, scope: !1555)
!1557 = !DILocation(line: 558, column: 15, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !253, line: 558, column: 15)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !253, line: 558, column: 15)
!1560 = !DILocation(line: 558, column: 15, scope: !1559)
!1561 = !DILocation(line: 559, column: 15, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !253, line: 559, column: 15)
!1563 = distinct !DILexicalBlock(scope: !1552, file: !253, line: 559, column: 15)
!1564 = !DILocation(line: 559, column: 15, scope: !1563)
!1565 = !DILocation(line: 560, column: 15, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !253, line: 560, column: 15)
!1567 = distinct !DILexicalBlock(scope: !1552, file: !253, line: 560, column: 15)
!1568 = !DILocation(line: 560, column: 15, scope: !1567)
!1569 = !DILocation(line: 562, column: 13, scope: !1552)
!1570 = !DILocation(line: 602, column: 17, scope: !1296)
!1571 = !DILocation(line: 0, scope: !1296)
!1572 = !DILocation(line: 605, column: 29, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1301, file: !253, line: 603, column: 15)
!1574 = !DILocation(line: 605, column: 41, scope: !1573)
!1575 = !DILocation(line: 670, column: 23, scope: !1317)
!1576 = !DILocation(line: 609, column: 17, scope: !1300)
!1577 = !DILocation(line: 609, column: 27, scope: !1300)
!1578 = !DILocation(line: 0, scope: !1352, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 609, column: 32, scope: !1300)
!1580 = !DILocation(line: 0, scope: !1360, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 1137, column: 3, scope: !1352, inlinedAt: !1579)
!1582 = !DILocation(line: 59, column: 10, scope: !1360, inlinedAt: !1581)
!1583 = !DILocation(line: 613, column: 29, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1300, file: !253, line: 613, column: 21)
!1585 = !DILocation(line: 613, column: 21, scope: !1300)
!1586 = !DILocation(line: 614, column: 29, scope: !1584)
!1587 = !DILocation(line: 614, column: 19, scope: !1584)
!1588 = !DILocation(line: 618, column: 21, scope: !1303)
!1589 = !DILocation(line: 620, column: 54, scope: !1303)
!1590 = !DILocation(line: 0, scope: !1303)
!1591 = !DILocation(line: 619, column: 36, scope: !1303)
!1592 = !DILocation(line: 621, column: 25, scope: !1303)
!1593 = !DILocation(line: 631, column: 38, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1312, file: !253, line: 629, column: 23)
!1595 = !DILocation(line: 631, column: 48, scope: !1594)
!1596 = !DILocation(line: 665, column: 19, scope: !1304)
!1597 = !DILocation(line: 666, column: 15, scope: !1301)
!1598 = !DILocation(line: 626, column: 25, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1313, file: !253, line: 624, column: 23)
!1600 = !DILocation(line: 631, column: 51, scope: !1594)
!1601 = !DILocation(line: 631, column: 25, scope: !1594)
!1602 = !DILocation(line: 632, column: 28, scope: !1594)
!1603 = !DILocation(line: 631, column: 34, scope: !1594)
!1604 = distinct !{!1604, !1601, !1602, !509}
!1605 = !DILocation(line: 646, column: 29, scope: !1310)
!1606 = !DILocation(line: 0, scope: !1308)
!1607 = !DILocation(line: 649, column: 49, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1308, file: !253, line: 648, column: 29)
!1609 = !DILocation(line: 649, column: 39, scope: !1608)
!1610 = !DILocation(line: 649, column: 31, scope: !1608)
!1611 = !DILocation(line: 648, column: 60, scope: !1608)
!1612 = !DILocation(line: 648, column: 50, scope: !1608)
!1613 = !DILocation(line: 648, column: 29, scope: !1308)
!1614 = distinct !{!1614, !1613, !1615, !509}
!1615 = !DILocation(line: 654, column: 33, scope: !1308)
!1616 = !DILocation(line: 657, column: 43, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1311, file: !253, line: 657, column: 29)
!1618 = !DILocalVariable(name: "wc", arg: 1, scope: !1619, file: !1620, line: 865, type: !1623)
!1619 = distinct !DISubprogram(name: "c32isprint", scope: !1620, file: !1620, line: 865, type: !1621, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1625)
!1620 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!30, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1624, line: 20, baseType: !7)
!1624 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1625 = !{!1618}
!1626 = !DILocation(line: 0, scope: !1619, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 657, column: 31, scope: !1617)
!1628 = !DILocation(line: 871, column: 10, scope: !1619, inlinedAt: !1627)
!1629 = !DILocation(line: 657, column: 31, scope: !1617)
!1630 = !DILocation(line: 664, column: 23, scope: !1303)
!1631 = !DILocation(line: 753, column: 2, scope: !1257)
!1632 = !DILocation(line: 756, column: 51, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1257, file: !253, line: 756, column: 7)
!1634 = !DILocation(line: 670, column: 19, scope: !1317)
!1635 = !DILocation(line: 670, column: 45, scope: !1317)
!1636 = !DILocation(line: 674, column: 33, scope: !1316)
!1637 = !DILocation(line: 0, scope: !1316)
!1638 = !DILocation(line: 676, column: 17, scope: !1316)
!1639 = !DILocation(line: 398, column: 12, scope: !1290)
!1640 = !DILocation(line: 678, column: 43, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !253, line: 678, column: 25)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !253, line: 677, column: 19)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !253, line: 676, column: 17)
!1644 = distinct !DILexicalBlock(scope: !1316, file: !253, line: 676, column: 17)
!1645 = !DILocation(line: 680, column: 25, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !253, line: 680, column: 25)
!1647 = distinct !DILexicalBlock(scope: !1641, file: !253, line: 679, column: 23)
!1648 = !DILocation(line: 680, column: 25, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !253, line: 680, column: 25)
!1650 = !DILocation(line: 680, column: 25, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !253, line: 680, column: 25)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !253, line: 680, column: 25)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !253, line: 680, column: 25)
!1654 = !DILocation(line: 680, column: 25, scope: !1652)
!1655 = !DILocation(line: 680, column: 25, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !253, line: 680, column: 25)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !253, line: 680, column: 25)
!1658 = !DILocation(line: 680, column: 25, scope: !1657)
!1659 = !DILocation(line: 680, column: 25, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !253, line: 680, column: 25)
!1661 = distinct !DILexicalBlock(scope: !1653, file: !253, line: 680, column: 25)
!1662 = !DILocation(line: 680, column: 25, scope: !1661)
!1663 = !DILocation(line: 680, column: 25, scope: !1653)
!1664 = !DILocation(line: 680, column: 25, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !253, line: 680, column: 25)
!1666 = distinct !DILexicalBlock(scope: !1646, file: !253, line: 680, column: 25)
!1667 = !DILocation(line: 680, column: 25, scope: !1666)
!1668 = !DILocation(line: 681, column: 25, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !253, line: 681, column: 25)
!1670 = distinct !DILexicalBlock(scope: !1647, file: !253, line: 681, column: 25)
!1671 = !DILocation(line: 681, column: 25, scope: !1670)
!1672 = !DILocation(line: 682, column: 25, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !253, line: 682, column: 25)
!1674 = distinct !DILexicalBlock(scope: !1647, file: !253, line: 682, column: 25)
!1675 = !DILocation(line: 682, column: 25, scope: !1674)
!1676 = !DILocation(line: 683, column: 38, scope: !1647)
!1677 = !DILocation(line: 683, column: 33, scope: !1647)
!1678 = !DILocation(line: 684, column: 23, scope: !1647)
!1679 = !DILocation(line: 685, column: 30, scope: !1641)
!1680 = !DILocation(line: 687, column: 25, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !253, line: 687, column: 25)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !253, line: 687, column: 25)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !253, line: 686, column: 23)
!1684 = distinct !DILexicalBlock(scope: !1641, file: !253, line: 685, column: 30)
!1685 = !DILocation(line: 687, column: 25, scope: !1682)
!1686 = !DILocation(line: 689, column: 23, scope: !1683)
!1687 = !DILocation(line: 690, column: 35, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1642, file: !253, line: 690, column: 25)
!1689 = !DILocation(line: 690, column: 30, scope: !1688)
!1690 = !DILocation(line: 690, column: 25, scope: !1642)
!1691 = !DILocation(line: 692, column: 21, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !253, line: 692, column: 21)
!1693 = distinct !DILexicalBlock(scope: !1642, file: !253, line: 692, column: 21)
!1694 = !DILocation(line: 692, column: 21, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !253, line: 692, column: 21)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !253, line: 692, column: 21)
!1697 = distinct !DILexicalBlock(scope: !1692, file: !253, line: 692, column: 21)
!1698 = !DILocation(line: 692, column: 21, scope: !1696)
!1699 = !DILocation(line: 692, column: 21, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !253, line: 692, column: 21)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !253, line: 692, column: 21)
!1702 = !DILocation(line: 692, column: 21, scope: !1701)
!1703 = !DILocation(line: 692, column: 21, scope: !1697)
!1704 = !DILocation(line: 0, scope: !1642)
!1705 = !DILocation(line: 693, column: 21, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !253, line: 693, column: 21)
!1707 = distinct !DILexicalBlock(scope: !1642, file: !253, line: 693, column: 21)
!1708 = !DILocation(line: 693, column: 21, scope: !1707)
!1709 = !DILocation(line: 694, column: 25, scope: !1642)
!1710 = !DILocation(line: 676, column: 17, scope: !1643)
!1711 = distinct !{!1711, !1712, !1713}
!1712 = !DILocation(line: 676, column: 17, scope: !1644)
!1713 = !DILocation(line: 695, column: 19, scope: !1644)
!1714 = !DILocation(line: 409, column: 30, scope: !1424)
!1715 = !DILocation(line: 702, column: 34, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1290, file: !253, line: 702, column: 11)
!1717 = !DILocation(line: 704, column: 14, scope: !1716)
!1718 = !DILocation(line: 705, column: 14, scope: !1716)
!1719 = !DILocation(line: 705, column: 35, scope: !1716)
!1720 = !DILocation(line: 705, column: 17, scope: !1716)
!1721 = !DILocation(line: 705, column: 47, scope: !1716)
!1722 = !DILocation(line: 705, column: 65, scope: !1716)
!1723 = !DILocation(line: 706, column: 11, scope: !1716)
!1724 = !DILocation(line: 702, column: 11, scope: !1290)
!1725 = !DILocation(line: 395, column: 15, scope: !1288)
!1726 = !DILocation(line: 709, column: 5, scope: !1290)
!1727 = !DILocation(line: 710, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1290, file: !253, line: 710, column: 7)
!1729 = !DILocation(line: 710, column: 7, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1728, file: !253, line: 710, column: 7)
!1731 = !DILocation(line: 710, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !253, line: 710, column: 7)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !253, line: 710, column: 7)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !253, line: 710, column: 7)
!1735 = !DILocation(line: 710, column: 7, scope: !1733)
!1736 = !DILocation(line: 710, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !253, line: 710, column: 7)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !253, line: 710, column: 7)
!1739 = !DILocation(line: 710, column: 7, scope: !1738)
!1740 = !DILocation(line: 710, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !253, line: 710, column: 7)
!1742 = distinct !DILexicalBlock(scope: !1734, file: !253, line: 710, column: 7)
!1743 = !DILocation(line: 710, column: 7, scope: !1742)
!1744 = !DILocation(line: 710, column: 7, scope: !1734)
!1745 = !DILocation(line: 710, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !253, line: 710, column: 7)
!1747 = distinct !DILexicalBlock(scope: !1728, file: !253, line: 710, column: 7)
!1748 = !DILocation(line: 710, column: 7, scope: !1747)
!1749 = !DILocation(line: 712, column: 5, scope: !1290)
!1750 = !DILocation(line: 713, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !253, line: 713, column: 7)
!1752 = distinct !DILexicalBlock(scope: !1290, file: !253, line: 713, column: 7)
!1753 = !DILocation(line: 417, column: 21, scope: !1290)
!1754 = !DILocation(line: 713, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !253, line: 713, column: 7)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !253, line: 713, column: 7)
!1757 = distinct !DILexicalBlock(scope: !1751, file: !253, line: 713, column: 7)
!1758 = !DILocation(line: 713, column: 7, scope: !1756)
!1759 = !DILocation(line: 713, column: 7, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !253, line: 713, column: 7)
!1761 = distinct !DILexicalBlock(scope: !1757, file: !253, line: 713, column: 7)
!1762 = !DILocation(line: 713, column: 7, scope: !1761)
!1763 = !DILocation(line: 713, column: 7, scope: !1757)
!1764 = !DILocation(line: 714, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !253, line: 714, column: 7)
!1766 = distinct !DILexicalBlock(scope: !1290, file: !253, line: 714, column: 7)
!1767 = !DILocation(line: 714, column: 7, scope: !1766)
!1768 = !DILocation(line: 716, column: 11, scope: !1290)
!1769 = !DILocation(line: 718, column: 5, scope: !1291)
!1770 = !DILocation(line: 395, column: 82, scope: !1291)
!1771 = !DILocation(line: 395, column: 3, scope: !1291)
!1772 = distinct !{!1772, !1420, !1773, !509}
!1773 = !DILocation(line: 718, column: 5, scope: !1288)
!1774 = !DILocation(line: 720, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1257, file: !253, line: 720, column: 7)
!1776 = !DILocation(line: 720, column: 16, scope: !1775)
!1777 = !DILocation(line: 728, column: 51, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1257, file: !253, line: 728, column: 7)
!1779 = !DILocation(line: 731, column: 11, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1778, file: !253, line: 730, column: 5)
!1781 = !DILocation(line: 732, column: 16, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1780, file: !253, line: 731, column: 11)
!1783 = !DILocation(line: 732, column: 9, scope: !1782)
!1784 = !DILocation(line: 736, column: 18, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !253, line: 736, column: 16)
!1786 = !DILocation(line: 736, column: 29, scope: !1785)
!1787 = !DILocation(line: 745, column: 7, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1257, file: !253, line: 745, column: 7)
!1789 = !DILocation(line: 745, column: 20, scope: !1788)
!1790 = !DILocation(line: 746, column: 12, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !253, line: 746, column: 5)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !253, line: 746, column: 5)
!1793 = !DILocation(line: 746, column: 5, scope: !1792)
!1794 = !DILocation(line: 747, column: 7, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !253, line: 747, column: 7)
!1796 = distinct !DILexicalBlock(scope: !1791, file: !253, line: 747, column: 7)
!1797 = !DILocation(line: 747, column: 7, scope: !1796)
!1798 = !DILocation(line: 746, column: 39, scope: !1791)
!1799 = distinct !{!1799, !1793, !1800, !509}
!1800 = !DILocation(line: 747, column: 7, scope: !1792)
!1801 = !DILocation(line: 749, column: 11, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1257, file: !253, line: 749, column: 7)
!1803 = !DILocation(line: 749, column: 7, scope: !1257)
!1804 = !DILocation(line: 750, column: 5, scope: !1802)
!1805 = !DILocation(line: 750, column: 17, scope: !1802)
!1806 = !DILocation(line: 756, column: 21, scope: !1633)
!1807 = !DILocation(line: 760, column: 42, scope: !1257)
!1808 = !DILocation(line: 758, column: 10, scope: !1257)
!1809 = !DILocation(line: 758, column: 3, scope: !1257)
!1810 = !DILocation(line: 762, column: 1, scope: !1257)
!1811 = !DISubprogram(name: "iswprint", scope: !1812, file: !1812, line: 120, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!1812 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1813 = distinct !DISubprogram(name: "quotearg_alloc", scope: !253, file: !253, line: 788, type: !1814, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!22, !28, !25, !1149}
!1816 = !{!1817, !1818, !1819}
!1817 = !DILocalVariable(name: "arg", arg: 1, scope: !1813, file: !253, line: 788, type: !28)
!1818 = !DILocalVariable(name: "argsize", arg: 2, scope: !1813, file: !253, line: 788, type: !25)
!1819 = !DILocalVariable(name: "o", arg: 3, scope: !1813, file: !253, line: 789, type: !1149)
!1820 = !DILocation(line: 0, scope: !1813)
!1821 = !DILocalVariable(name: "arg", arg: 1, scope: !1822, file: !253, line: 801, type: !28)
!1822 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !253, file: !253, line: 801, type: !1823, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1825)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!22, !28, !25, !387, !1149}
!1825 = !{!1821, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833}
!1826 = !DILocalVariable(name: "argsize", arg: 2, scope: !1822, file: !253, line: 801, type: !25)
!1827 = !DILocalVariable(name: "size", arg: 3, scope: !1822, file: !253, line: 801, type: !387)
!1828 = !DILocalVariable(name: "o", arg: 4, scope: !1822, file: !253, line: 802, type: !1149)
!1829 = !DILocalVariable(name: "p", scope: !1822, file: !253, line: 804, type: !1149)
!1830 = !DILocalVariable(name: "saved_errno", scope: !1822, file: !253, line: 805, type: !30)
!1831 = !DILocalVariable(name: "flags", scope: !1822, file: !253, line: 807, type: !30)
!1832 = !DILocalVariable(name: "bufsize", scope: !1822, file: !253, line: 808, type: !25)
!1833 = !DILocalVariable(name: "buf", scope: !1822, file: !253, line: 812, type: !22)
!1834 = !DILocation(line: 0, scope: !1822, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 791, column: 10, scope: !1813)
!1836 = !DILocation(line: 804, column: 37, scope: !1822, inlinedAt: !1835)
!1837 = !DILocation(line: 805, column: 21, scope: !1822, inlinedAt: !1835)
!1838 = !DILocation(line: 807, column: 18, scope: !1822, inlinedAt: !1835)
!1839 = !DILocation(line: 807, column: 24, scope: !1822, inlinedAt: !1835)
!1840 = !DILocation(line: 808, column: 72, scope: !1822, inlinedAt: !1835)
!1841 = !DILocation(line: 809, column: 53, scope: !1822, inlinedAt: !1835)
!1842 = !DILocation(line: 810, column: 49, scope: !1822, inlinedAt: !1835)
!1843 = !DILocation(line: 811, column: 49, scope: !1822, inlinedAt: !1835)
!1844 = !DILocation(line: 808, column: 20, scope: !1822, inlinedAt: !1835)
!1845 = !DILocation(line: 811, column: 62, scope: !1822, inlinedAt: !1835)
!1846 = !DILocation(line: 812, column: 15, scope: !1822, inlinedAt: !1835)
!1847 = !DILocation(line: 813, column: 60, scope: !1822, inlinedAt: !1835)
!1848 = !DILocation(line: 815, column: 32, scope: !1822, inlinedAt: !1835)
!1849 = !DILocation(line: 815, column: 47, scope: !1822, inlinedAt: !1835)
!1850 = !DILocation(line: 813, column: 3, scope: !1822, inlinedAt: !1835)
!1851 = !DILocation(line: 816, column: 9, scope: !1822, inlinedAt: !1835)
!1852 = !DILocation(line: 791, column: 3, scope: !1813)
!1853 = !DILocation(line: 0, scope: !1822)
!1854 = !DILocation(line: 804, column: 37, scope: !1822)
!1855 = !DILocation(line: 805, column: 21, scope: !1822)
!1856 = !DILocation(line: 807, column: 18, scope: !1822)
!1857 = !DILocation(line: 807, column: 27, scope: !1822)
!1858 = !DILocation(line: 807, column: 24, scope: !1822)
!1859 = !DILocation(line: 808, column: 72, scope: !1822)
!1860 = !DILocation(line: 809, column: 53, scope: !1822)
!1861 = !DILocation(line: 810, column: 49, scope: !1822)
!1862 = !DILocation(line: 811, column: 49, scope: !1822)
!1863 = !DILocation(line: 808, column: 20, scope: !1822)
!1864 = !DILocation(line: 811, column: 62, scope: !1822)
!1865 = !DILocation(line: 812, column: 15, scope: !1822)
!1866 = !DILocation(line: 813, column: 60, scope: !1822)
!1867 = !DILocation(line: 815, column: 32, scope: !1822)
!1868 = !DILocation(line: 815, column: 47, scope: !1822)
!1869 = !DILocation(line: 813, column: 3, scope: !1822)
!1870 = !DILocation(line: 816, column: 9, scope: !1822)
!1871 = !DILocation(line: 817, column: 7, scope: !1822)
!1872 = !DILocation(line: 818, column: 11, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1822, file: !253, line: 817, column: 7)
!1874 = !{!704, !704, i64 0}
!1875 = !DILocation(line: 818, column: 5, scope: !1873)
!1876 = !DILocation(line: 819, column: 3, scope: !1822)
!1877 = distinct !DISubprogram(name: "quotearg_free", scope: !253, file: !253, line: 837, type: !208, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1878)
!1878 = !{!1879, !1880}
!1879 = !DILocalVariable(name: "sv", scope: !1877, file: !253, line: 839, type: !326)
!1880 = !DILocalVariable(name: "i", scope: !1881, file: !253, line: 840, type: !30)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !253, line: 840, column: 3)
!1882 = !DILocation(line: 839, column: 24, scope: !1877)
!1883 = !DILocation(line: 0, scope: !1877)
!1884 = !DILocation(line: 0, scope: !1881)
!1885 = !DILocation(line: 840, column: 21, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1881, file: !253, line: 840, column: 3)
!1887 = !DILocation(line: 840, column: 3, scope: !1881)
!1888 = !DILocation(line: 842, column: 13, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1877, file: !253, line: 842, column: 7)
!1890 = !{!1891, !456, i64 8}
!1891 = !{!"slotvec", !704, i64 0, !456, i64 8}
!1892 = !DILocation(line: 842, column: 17, scope: !1889)
!1893 = !DILocation(line: 842, column: 7, scope: !1877)
!1894 = !DILocation(line: 841, column: 17, scope: !1886)
!1895 = !DILocation(line: 841, column: 5, scope: !1886)
!1896 = !DILocation(line: 840, column: 32, scope: !1886)
!1897 = distinct !{!1897, !1887, !1898, !509}
!1898 = !DILocation(line: 841, column: 20, scope: !1881)
!1899 = !DILocation(line: 844, column: 7, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1889, file: !253, line: 843, column: 5)
!1901 = !DILocation(line: 845, column: 21, scope: !1900)
!1902 = !{!1891, !704, i64 0}
!1903 = !DILocation(line: 846, column: 20, scope: !1900)
!1904 = !DILocation(line: 847, column: 5, scope: !1900)
!1905 = !DILocation(line: 848, column: 10, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1877, file: !253, line: 848, column: 7)
!1907 = !DILocation(line: 848, column: 7, scope: !1877)
!1908 = !DILocation(line: 850, column: 13, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !253, line: 849, column: 5)
!1910 = !DILocation(line: 850, column: 7, scope: !1909)
!1911 = !DILocation(line: 851, column: 15, scope: !1909)
!1912 = !DILocation(line: 852, column: 5, scope: !1909)
!1913 = !DILocation(line: 853, column: 10, scope: !1877)
!1914 = !DILocation(line: 854, column: 1, scope: !1877)
!1915 = distinct !DISubprogram(name: "quotearg_n", scope: !253, file: !253, line: 919, type: !651, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1916)
!1916 = !{!1917, !1918}
!1917 = !DILocalVariable(name: "n", arg: 1, scope: !1915, file: !253, line: 919, type: !30)
!1918 = !DILocalVariable(name: "arg", arg: 2, scope: !1915, file: !253, line: 919, type: !28)
!1919 = !DILocation(line: 0, scope: !1915)
!1920 = !DILocation(line: 921, column: 10, scope: !1915)
!1921 = !DILocation(line: 921, column: 3, scope: !1915)
!1922 = distinct !DISubprogram(name: "quotearg_n_options", scope: !253, file: !253, line: 866, type: !1923, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!22, !30, !28, !25, !1149}
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1936, !1937, !1939, !1940, !1941}
!1926 = !DILocalVariable(name: "n", arg: 1, scope: !1922, file: !253, line: 866, type: !30)
!1927 = !DILocalVariable(name: "arg", arg: 2, scope: !1922, file: !253, line: 866, type: !28)
!1928 = !DILocalVariable(name: "argsize", arg: 3, scope: !1922, file: !253, line: 866, type: !25)
!1929 = !DILocalVariable(name: "options", arg: 4, scope: !1922, file: !253, line: 867, type: !1149)
!1930 = !DILocalVariable(name: "saved_errno", scope: !1922, file: !253, line: 869, type: !30)
!1931 = !DILocalVariable(name: "sv", scope: !1922, file: !253, line: 871, type: !326)
!1932 = !DILocalVariable(name: "nslots_max", scope: !1922, file: !253, line: 873, type: !30)
!1933 = !DILocalVariable(name: "preallocated", scope: !1934, file: !253, line: 879, type: !44)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !253, line: 878, column: 5)
!1935 = distinct !DILexicalBlock(scope: !1922, file: !253, line: 877, column: 7)
!1936 = !DILocalVariable(name: "new_nslots", scope: !1934, file: !253, line: 880, type: !52)
!1937 = !DILocalVariable(name: "size", scope: !1938, file: !253, line: 891, type: !25)
!1938 = distinct !DILexicalBlock(scope: !1922, file: !253, line: 890, column: 3)
!1939 = !DILocalVariable(name: "val", scope: !1938, file: !253, line: 892, type: !22)
!1940 = !DILocalVariable(name: "flags", scope: !1938, file: !253, line: 894, type: !30)
!1941 = !DILocalVariable(name: "qsize", scope: !1938, file: !253, line: 895, type: !25)
!1942 = !DILocation(line: 0, scope: !1922)
!1943 = !DILocation(line: 869, column: 21, scope: !1922)
!1944 = !DILocation(line: 871, column: 24, scope: !1922)
!1945 = !DILocation(line: 874, column: 17, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1922, file: !253, line: 874, column: 7)
!1947 = !DILocation(line: 875, column: 5, scope: !1946)
!1948 = !DILocation(line: 877, column: 7, scope: !1935)
!1949 = !DILocation(line: 877, column: 14, scope: !1935)
!1950 = !DILocation(line: 877, column: 7, scope: !1922)
!1951 = !DILocation(line: 879, column: 31, scope: !1934)
!1952 = !DILocation(line: 0, scope: !1934)
!1953 = !DILocation(line: 880, column: 7, scope: !1934)
!1954 = !DILocation(line: 880, column: 26, scope: !1934)
!1955 = !DILocation(line: 880, column: 13, scope: !1934)
!1956 = !DILocation(line: 882, column: 31, scope: !1934)
!1957 = !DILocation(line: 883, column: 33, scope: !1934)
!1958 = !DILocation(line: 883, column: 42, scope: !1934)
!1959 = !DILocation(line: 883, column: 31, scope: !1934)
!1960 = !DILocation(line: 882, column: 22, scope: !1934)
!1961 = !DILocation(line: 882, column: 15, scope: !1934)
!1962 = !DILocation(line: 884, column: 11, scope: !1934)
!1963 = !DILocation(line: 885, column: 15, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1934, file: !253, line: 884, column: 11)
!1965 = !{i64 0, i64 8, !1874, i64 8, i64 8, !455}
!1966 = !DILocation(line: 885, column: 9, scope: !1964)
!1967 = !DILocation(line: 886, column: 20, scope: !1934)
!1968 = !DILocation(line: 886, column: 18, scope: !1934)
!1969 = !DILocation(line: 886, column: 15, scope: !1934)
!1970 = !DILocation(line: 886, column: 32, scope: !1934)
!1971 = !DILocation(line: 886, column: 43, scope: !1934)
!1972 = !DILocation(line: 886, column: 53, scope: !1934)
!1973 = !DILocation(line: 0, scope: !1360, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 886, column: 7, scope: !1934)
!1975 = !DILocation(line: 59, column: 10, scope: !1360, inlinedAt: !1974)
!1976 = !DILocation(line: 887, column: 16, scope: !1934)
!1977 = !DILocation(line: 887, column: 14, scope: !1934)
!1978 = !DILocation(line: 888, column: 5, scope: !1935)
!1979 = !DILocation(line: 888, column: 5, scope: !1934)
!1980 = !DILocation(line: 891, column: 19, scope: !1938)
!1981 = !DILocation(line: 891, column: 25, scope: !1938)
!1982 = !DILocation(line: 0, scope: !1938)
!1983 = !DILocation(line: 892, column: 23, scope: !1938)
!1984 = !DILocation(line: 894, column: 26, scope: !1938)
!1985 = !DILocation(line: 894, column: 32, scope: !1938)
!1986 = !DILocation(line: 896, column: 55, scope: !1938)
!1987 = !DILocation(line: 897, column: 46, scope: !1938)
!1988 = !DILocation(line: 898, column: 55, scope: !1938)
!1989 = !DILocation(line: 899, column: 55, scope: !1938)
!1990 = !DILocation(line: 895, column: 20, scope: !1938)
!1991 = !DILocation(line: 901, column: 14, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1938, file: !253, line: 901, column: 9)
!1993 = !DILocation(line: 901, column: 9, scope: !1938)
!1994 = !DILocation(line: 903, column: 35, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !253, line: 902, column: 7)
!1996 = !DILocation(line: 903, column: 20, scope: !1995)
!1997 = !DILocation(line: 904, column: 17, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !253, line: 904, column: 13)
!1999 = !DILocation(line: 904, column: 13, scope: !1995)
!2000 = !DILocation(line: 905, column: 11, scope: !1998)
!2001 = !DILocation(line: 906, column: 27, scope: !1995)
!2002 = !DILocation(line: 906, column: 19, scope: !1995)
!2003 = !DILocation(line: 907, column: 69, scope: !1995)
!2004 = !DILocation(line: 909, column: 44, scope: !1995)
!2005 = !DILocation(line: 910, column: 44, scope: !1995)
!2006 = !DILocation(line: 907, column: 9, scope: !1995)
!2007 = !DILocation(line: 911, column: 7, scope: !1995)
!2008 = !DILocation(line: 913, column: 11, scope: !1938)
!2009 = !DILocation(line: 914, column: 5, scope: !1938)
!2010 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !253, file: !253, line: 925, type: !2011, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!22, !30, !28, !25}
!2013 = !{!2014, !2015, !2016}
!2014 = !DILocalVariable(name: "n", arg: 1, scope: !2010, file: !253, line: 925, type: !30)
!2015 = !DILocalVariable(name: "arg", arg: 2, scope: !2010, file: !253, line: 925, type: !28)
!2016 = !DILocalVariable(name: "argsize", arg: 3, scope: !2010, file: !253, line: 925, type: !25)
!2017 = !DILocation(line: 0, scope: !2010)
!2018 = !DILocation(line: 927, column: 10, scope: !2010)
!2019 = !DILocation(line: 927, column: 3, scope: !2010)
!2020 = distinct !DISubprogram(name: "quotearg", scope: !253, file: !253, line: 931, type: !655, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2021)
!2021 = !{!2022}
!2022 = !DILocalVariable(name: "arg", arg: 1, scope: !2020, file: !253, line: 931, type: !28)
!2023 = !DILocation(line: 0, scope: !2020)
!2024 = !DILocation(line: 0, scope: !1915, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 933, column: 10, scope: !2020)
!2026 = !DILocation(line: 921, column: 10, scope: !1915, inlinedAt: !2025)
!2027 = !DILocation(line: 933, column: 3, scope: !2020)
!2028 = distinct !DISubprogram(name: "quotearg_mem", scope: !253, file: !253, line: 937, type: !2029, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!22, !28, !25}
!2031 = !{!2032, !2033}
!2032 = !DILocalVariable(name: "arg", arg: 1, scope: !2028, file: !253, line: 937, type: !28)
!2033 = !DILocalVariable(name: "argsize", arg: 2, scope: !2028, file: !253, line: 937, type: !25)
!2034 = !DILocation(line: 0, scope: !2028)
!2035 = !DILocation(line: 0, scope: !2010, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 939, column: 10, scope: !2028)
!2037 = !DILocation(line: 927, column: 10, scope: !2010, inlinedAt: !2036)
!2038 = !DILocation(line: 939, column: 3, scope: !2028)
!2039 = distinct !DISubprogram(name: "quotearg_n_style", scope: !253, file: !253, line: 943, type: !2040, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!22, !30, !255, !28}
!2042 = !{!2043, !2044, !2045, !2046}
!2043 = !DILocalVariable(name: "n", arg: 1, scope: !2039, file: !253, line: 943, type: !30)
!2044 = !DILocalVariable(name: "s", arg: 2, scope: !2039, file: !253, line: 943, type: !255)
!2045 = !DILocalVariable(name: "arg", arg: 3, scope: !2039, file: !253, line: 943, type: !28)
!2046 = !DILocalVariable(name: "o", scope: !2039, file: !253, line: 945, type: !1150)
!2047 = !DILocation(line: 0, scope: !2039)
!2048 = !DILocation(line: 945, column: 3, scope: !2039)
!2049 = !DILocation(line: 945, column: 32, scope: !2039)
!2050 = !{!2051}
!2051 = distinct !{!2051, !2052, !"quoting_options_from_style: argument 0"}
!2052 = distinct !{!2052, !"quoting_options_from_style"}
!2053 = !DILocation(line: 945, column: 36, scope: !2039)
!2054 = !DILocalVariable(name: "style", arg: 1, scope: !2055, file: !253, line: 183, type: !255)
!2055 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !253, file: !253, line: 183, type: !2056, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!284, !255}
!2058 = !{!2054, !2059}
!2059 = !DILocalVariable(name: "o", scope: !2055, file: !253, line: 185, type: !284)
!2060 = !DILocation(line: 0, scope: !2055, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 945, column: 36, scope: !2039)
!2062 = !DILocation(line: 185, column: 26, scope: !2055, inlinedAt: !2061)
!2063 = !DILocation(line: 186, column: 13, scope: !2064, inlinedAt: !2061)
!2064 = distinct !DILexicalBlock(scope: !2055, file: !253, line: 186, column: 7)
!2065 = !DILocation(line: 186, column: 7, scope: !2055, inlinedAt: !2061)
!2066 = !DILocation(line: 187, column: 5, scope: !2064, inlinedAt: !2061)
!2067 = !DILocation(line: 188, column: 5, scope: !2055, inlinedAt: !2061)
!2068 = !DILocation(line: 188, column: 11, scope: !2055, inlinedAt: !2061)
!2069 = !DILocation(line: 946, column: 10, scope: !2039)
!2070 = !DILocation(line: 947, column: 1, scope: !2039)
!2071 = !DILocation(line: 946, column: 3, scope: !2039)
!2072 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !253, file: !253, line: 950, type: !2073, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!22, !30, !255, !28, !25}
!2075 = !{!2076, !2077, !2078, !2079, !2080}
!2076 = !DILocalVariable(name: "n", arg: 1, scope: !2072, file: !253, line: 950, type: !30)
!2077 = !DILocalVariable(name: "s", arg: 2, scope: !2072, file: !253, line: 950, type: !255)
!2078 = !DILocalVariable(name: "arg", arg: 3, scope: !2072, file: !253, line: 951, type: !28)
!2079 = !DILocalVariable(name: "argsize", arg: 4, scope: !2072, file: !253, line: 951, type: !25)
!2080 = !DILocalVariable(name: "o", scope: !2072, file: !253, line: 953, type: !1150)
!2081 = !DILocation(line: 0, scope: !2072)
!2082 = !DILocation(line: 953, column: 3, scope: !2072)
!2083 = !DILocation(line: 953, column: 32, scope: !2072)
!2084 = !{!2085}
!2085 = distinct !{!2085, !2086, !"quoting_options_from_style: argument 0"}
!2086 = distinct !{!2086, !"quoting_options_from_style"}
!2087 = !DILocation(line: 953, column: 36, scope: !2072)
!2088 = !DILocation(line: 0, scope: !2055, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 953, column: 36, scope: !2072)
!2090 = !DILocation(line: 185, column: 26, scope: !2055, inlinedAt: !2089)
!2091 = !DILocation(line: 186, column: 13, scope: !2064, inlinedAt: !2089)
!2092 = !DILocation(line: 186, column: 7, scope: !2055, inlinedAt: !2089)
!2093 = !DILocation(line: 187, column: 5, scope: !2064, inlinedAt: !2089)
!2094 = !DILocation(line: 188, column: 5, scope: !2055, inlinedAt: !2089)
!2095 = !DILocation(line: 188, column: 11, scope: !2055, inlinedAt: !2089)
!2096 = !DILocation(line: 954, column: 10, scope: !2072)
!2097 = !DILocation(line: 955, column: 1, scope: !2072)
!2098 = !DILocation(line: 954, column: 3, scope: !2072)
!2099 = distinct !DISubprogram(name: "quotearg_style", scope: !253, file: !253, line: 958, type: !2100, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!22, !255, !28}
!2102 = !{!2103, !2104}
!2103 = !DILocalVariable(name: "s", arg: 1, scope: !2099, file: !253, line: 958, type: !255)
!2104 = !DILocalVariable(name: "arg", arg: 2, scope: !2099, file: !253, line: 958, type: !28)
!2105 = !DILocation(line: 0, scope: !2099)
!2106 = !DILocation(line: 0, scope: !2039, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 960, column: 10, scope: !2099)
!2108 = !DILocation(line: 945, column: 3, scope: !2039, inlinedAt: !2107)
!2109 = !DILocation(line: 945, column: 32, scope: !2039, inlinedAt: !2107)
!2110 = !{!2111}
!2111 = distinct !{!2111, !2112, !"quoting_options_from_style: argument 0"}
!2112 = distinct !{!2112, !"quoting_options_from_style"}
!2113 = !DILocation(line: 945, column: 36, scope: !2039, inlinedAt: !2107)
!2114 = !DILocation(line: 0, scope: !2055, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 945, column: 36, scope: !2039, inlinedAt: !2107)
!2116 = !DILocation(line: 185, column: 26, scope: !2055, inlinedAt: !2115)
!2117 = !DILocation(line: 186, column: 13, scope: !2064, inlinedAt: !2115)
!2118 = !DILocation(line: 186, column: 7, scope: !2055, inlinedAt: !2115)
!2119 = !DILocation(line: 187, column: 5, scope: !2064, inlinedAt: !2115)
!2120 = !DILocation(line: 188, column: 5, scope: !2055, inlinedAt: !2115)
!2121 = !DILocation(line: 188, column: 11, scope: !2055, inlinedAt: !2115)
!2122 = !DILocation(line: 946, column: 10, scope: !2039, inlinedAt: !2107)
!2123 = !DILocation(line: 947, column: 1, scope: !2039, inlinedAt: !2107)
!2124 = !DILocation(line: 960, column: 3, scope: !2099)
!2125 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !253, file: !253, line: 964, type: !2126, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!22, !255, !28, !25}
!2128 = !{!2129, !2130, !2131}
!2129 = !DILocalVariable(name: "s", arg: 1, scope: !2125, file: !253, line: 964, type: !255)
!2130 = !DILocalVariable(name: "arg", arg: 2, scope: !2125, file: !253, line: 964, type: !28)
!2131 = !DILocalVariable(name: "argsize", arg: 3, scope: !2125, file: !253, line: 964, type: !25)
!2132 = !DILocation(line: 0, scope: !2125)
!2133 = !DILocation(line: 0, scope: !2072, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 966, column: 10, scope: !2125)
!2135 = !DILocation(line: 953, column: 3, scope: !2072, inlinedAt: !2134)
!2136 = !DILocation(line: 953, column: 32, scope: !2072, inlinedAt: !2134)
!2137 = !{!2138}
!2138 = distinct !{!2138, !2139, !"quoting_options_from_style: argument 0"}
!2139 = distinct !{!2139, !"quoting_options_from_style"}
!2140 = !DILocation(line: 953, column: 36, scope: !2072, inlinedAt: !2134)
!2141 = !DILocation(line: 0, scope: !2055, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 953, column: 36, scope: !2072, inlinedAt: !2134)
!2143 = !DILocation(line: 185, column: 26, scope: !2055, inlinedAt: !2142)
!2144 = !DILocation(line: 186, column: 13, scope: !2064, inlinedAt: !2142)
!2145 = !DILocation(line: 186, column: 7, scope: !2055, inlinedAt: !2142)
!2146 = !DILocation(line: 187, column: 5, scope: !2064, inlinedAt: !2142)
!2147 = !DILocation(line: 188, column: 5, scope: !2055, inlinedAt: !2142)
!2148 = !DILocation(line: 188, column: 11, scope: !2055, inlinedAt: !2142)
!2149 = !DILocation(line: 954, column: 10, scope: !2072, inlinedAt: !2134)
!2150 = !DILocation(line: 955, column: 1, scope: !2072, inlinedAt: !2134)
!2151 = !DILocation(line: 966, column: 3, scope: !2125)
!2152 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !253, file: !253, line: 970, type: !2153, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!22, !28, !25, !23}
!2155 = !{!2156, !2157, !2158, !2159}
!2156 = !DILocalVariable(name: "arg", arg: 1, scope: !2152, file: !253, line: 970, type: !28)
!2157 = !DILocalVariable(name: "argsize", arg: 2, scope: !2152, file: !253, line: 970, type: !25)
!2158 = !DILocalVariable(name: "ch", arg: 3, scope: !2152, file: !253, line: 970, type: !23)
!2159 = !DILocalVariable(name: "options", scope: !2152, file: !253, line: 972, type: !284)
!2160 = !DILocation(line: 0, scope: !2152)
!2161 = !DILocation(line: 972, column: 3, scope: !2152)
!2162 = !DILocation(line: 972, column: 26, scope: !2152)
!2163 = !DILocation(line: 973, column: 13, scope: !2152)
!2164 = !{i64 0, i64 4, !552, i64 4, i64 4, !543, i64 8, i64 32, !552, i64 40, i64 8, !455, i64 48, i64 8, !455}
!2165 = !DILocation(line: 0, scope: !1170, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 974, column: 3, scope: !2152)
!2167 = !DILocation(line: 147, column: 62, scope: !1170, inlinedAt: !2166)
!2168 = !DILocation(line: 147, column: 57, scope: !1170, inlinedAt: !2166)
!2169 = !DILocation(line: 148, column: 15, scope: !1170, inlinedAt: !2166)
!2170 = !DILocation(line: 149, column: 21, scope: !1170, inlinedAt: !2166)
!2171 = !DILocation(line: 149, column: 24, scope: !1170, inlinedAt: !2166)
!2172 = !DILocation(line: 149, column: 34, scope: !1170, inlinedAt: !2166)
!2173 = !DILocation(line: 150, column: 19, scope: !1170, inlinedAt: !2166)
!2174 = !DILocation(line: 150, column: 24, scope: !1170, inlinedAt: !2166)
!2175 = !DILocation(line: 150, column: 6, scope: !1170, inlinedAt: !2166)
!2176 = !DILocation(line: 975, column: 10, scope: !2152)
!2177 = !DILocation(line: 976, column: 1, scope: !2152)
!2178 = !DILocation(line: 975, column: 3, scope: !2152)
!2179 = distinct !DISubprogram(name: "quotearg_char", scope: !253, file: !253, line: 979, type: !2180, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!22, !28, !23}
!2182 = !{!2183, !2184}
!2183 = !DILocalVariable(name: "arg", arg: 1, scope: !2179, file: !253, line: 979, type: !28)
!2184 = !DILocalVariable(name: "ch", arg: 2, scope: !2179, file: !253, line: 979, type: !23)
!2185 = !DILocation(line: 0, scope: !2179)
!2186 = !DILocation(line: 0, scope: !2152, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 981, column: 10, scope: !2179)
!2188 = !DILocation(line: 972, column: 3, scope: !2152, inlinedAt: !2187)
!2189 = !DILocation(line: 972, column: 26, scope: !2152, inlinedAt: !2187)
!2190 = !DILocation(line: 973, column: 13, scope: !2152, inlinedAt: !2187)
!2191 = !DILocation(line: 0, scope: !1170, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 974, column: 3, scope: !2152, inlinedAt: !2187)
!2193 = !DILocation(line: 147, column: 62, scope: !1170, inlinedAt: !2192)
!2194 = !DILocation(line: 147, column: 57, scope: !1170, inlinedAt: !2192)
!2195 = !DILocation(line: 148, column: 15, scope: !1170, inlinedAt: !2192)
!2196 = !DILocation(line: 149, column: 21, scope: !1170, inlinedAt: !2192)
!2197 = !DILocation(line: 149, column: 24, scope: !1170, inlinedAt: !2192)
!2198 = !DILocation(line: 149, column: 34, scope: !1170, inlinedAt: !2192)
!2199 = !DILocation(line: 150, column: 19, scope: !1170, inlinedAt: !2192)
!2200 = !DILocation(line: 150, column: 24, scope: !1170, inlinedAt: !2192)
!2201 = !DILocation(line: 150, column: 6, scope: !1170, inlinedAt: !2192)
!2202 = !DILocation(line: 975, column: 10, scope: !2152, inlinedAt: !2187)
!2203 = !DILocation(line: 976, column: 1, scope: !2152, inlinedAt: !2187)
!2204 = !DILocation(line: 981, column: 3, scope: !2179)
!2205 = distinct !DISubprogram(name: "quotearg_colon", scope: !253, file: !253, line: 985, type: !655, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2206)
!2206 = !{!2207}
!2207 = !DILocalVariable(name: "arg", arg: 1, scope: !2205, file: !253, line: 985, type: !28)
!2208 = !DILocation(line: 0, scope: !2205)
!2209 = !DILocation(line: 0, scope: !2179, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 987, column: 10, scope: !2205)
!2211 = !DILocation(line: 0, scope: !2152, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 981, column: 10, scope: !2179, inlinedAt: !2210)
!2213 = !DILocation(line: 972, column: 3, scope: !2152, inlinedAt: !2212)
!2214 = !DILocation(line: 972, column: 26, scope: !2152, inlinedAt: !2212)
!2215 = !DILocation(line: 973, column: 13, scope: !2152, inlinedAt: !2212)
!2216 = !DILocation(line: 0, scope: !1170, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 974, column: 3, scope: !2152, inlinedAt: !2212)
!2218 = !DILocation(line: 147, column: 57, scope: !1170, inlinedAt: !2217)
!2219 = !DILocation(line: 149, column: 21, scope: !1170, inlinedAt: !2217)
!2220 = !DILocation(line: 150, column: 6, scope: !1170, inlinedAt: !2217)
!2221 = !DILocation(line: 975, column: 10, scope: !2152, inlinedAt: !2212)
!2222 = !DILocation(line: 976, column: 1, scope: !2152, inlinedAt: !2212)
!2223 = !DILocation(line: 987, column: 3, scope: !2205)
!2224 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !253, file: !253, line: 991, type: !2029, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2225)
!2225 = !{!2226, !2227}
!2226 = !DILocalVariable(name: "arg", arg: 1, scope: !2224, file: !253, line: 991, type: !28)
!2227 = !DILocalVariable(name: "argsize", arg: 2, scope: !2224, file: !253, line: 991, type: !25)
!2228 = !DILocation(line: 0, scope: !2224)
!2229 = !DILocation(line: 0, scope: !2152, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 993, column: 10, scope: !2224)
!2231 = !DILocation(line: 972, column: 3, scope: !2152, inlinedAt: !2230)
!2232 = !DILocation(line: 972, column: 26, scope: !2152, inlinedAt: !2230)
!2233 = !DILocation(line: 973, column: 13, scope: !2152, inlinedAt: !2230)
!2234 = !DILocation(line: 0, scope: !1170, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 974, column: 3, scope: !2152, inlinedAt: !2230)
!2236 = !DILocation(line: 147, column: 57, scope: !1170, inlinedAt: !2235)
!2237 = !DILocation(line: 149, column: 21, scope: !1170, inlinedAt: !2235)
!2238 = !DILocation(line: 150, column: 6, scope: !1170, inlinedAt: !2235)
!2239 = !DILocation(line: 975, column: 10, scope: !2152, inlinedAt: !2230)
!2240 = !DILocation(line: 976, column: 1, scope: !2152, inlinedAt: !2230)
!2241 = !DILocation(line: 993, column: 3, scope: !2224)
!2242 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !253, file: !253, line: 997, type: !2040, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2243)
!2243 = !{!2244, !2245, !2246, !2247}
!2244 = !DILocalVariable(name: "n", arg: 1, scope: !2242, file: !253, line: 997, type: !30)
!2245 = !DILocalVariable(name: "s", arg: 2, scope: !2242, file: !253, line: 997, type: !255)
!2246 = !DILocalVariable(name: "arg", arg: 3, scope: !2242, file: !253, line: 997, type: !28)
!2247 = !DILocalVariable(name: "options", scope: !2242, file: !253, line: 999, type: !284)
!2248 = !DILocation(line: 0, scope: !2242)
!2249 = !DILocation(line: 999, column: 3, scope: !2242)
!2250 = !DILocation(line: 999, column: 26, scope: !2242)
!2251 = !DILocation(line: 0, scope: !2055, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 1000, column: 13, scope: !2242)
!2253 = !DILocation(line: 186, column: 13, scope: !2064, inlinedAt: !2252)
!2254 = !DILocation(line: 186, column: 7, scope: !2055, inlinedAt: !2252)
!2255 = !DILocation(line: 187, column: 5, scope: !2064, inlinedAt: !2252)
!2256 = !{!2257}
!2257 = distinct !{!2257, !2258, !"quoting_options_from_style: argument 0"}
!2258 = distinct !{!2258, !"quoting_options_from_style"}
!2259 = !DILocation(line: 1000, column: 13, scope: !2242)
!2260 = !DILocation(line: 0, scope: !1170, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 1001, column: 3, scope: !2242)
!2262 = !DILocation(line: 147, column: 57, scope: !1170, inlinedAt: !2261)
!2263 = !DILocation(line: 149, column: 21, scope: !1170, inlinedAt: !2261)
!2264 = !DILocation(line: 150, column: 6, scope: !1170, inlinedAt: !2261)
!2265 = !DILocation(line: 1002, column: 10, scope: !2242)
!2266 = !DILocation(line: 1003, column: 1, scope: !2242)
!2267 = !DILocation(line: 1002, column: 3, scope: !2242)
!2268 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !253, file: !253, line: 1006, type: !2269, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!22, !30, !28, !28, !28}
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DILocalVariable(name: "n", arg: 1, scope: !2268, file: !253, line: 1006, type: !30)
!2273 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2268, file: !253, line: 1006, type: !28)
!2274 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2268, file: !253, line: 1007, type: !28)
!2275 = !DILocalVariable(name: "arg", arg: 4, scope: !2268, file: !253, line: 1007, type: !28)
!2276 = !DILocation(line: 0, scope: !2268)
!2277 = !DILocalVariable(name: "n", arg: 1, scope: !2278, file: !253, line: 1014, type: !30)
!2278 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !253, file: !253, line: 1014, type: !2279, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!22, !30, !28, !28, !28, !25}
!2281 = !{!2277, !2282, !2283, !2284, !2285, !2286}
!2282 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2278, file: !253, line: 1014, type: !28)
!2283 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2278, file: !253, line: 1015, type: !28)
!2284 = !DILocalVariable(name: "arg", arg: 4, scope: !2278, file: !253, line: 1016, type: !28)
!2285 = !DILocalVariable(name: "argsize", arg: 5, scope: !2278, file: !253, line: 1016, type: !25)
!2286 = !DILocalVariable(name: "o", scope: !2278, file: !253, line: 1018, type: !284)
!2287 = !DILocation(line: 0, scope: !2278, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 1009, column: 10, scope: !2268)
!2289 = !DILocation(line: 1018, column: 3, scope: !2278, inlinedAt: !2288)
!2290 = !DILocation(line: 1018, column: 26, scope: !2278, inlinedAt: !2288)
!2291 = !DILocation(line: 1018, column: 30, scope: !2278, inlinedAt: !2288)
!2292 = !DILocation(line: 0, scope: !1210, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 1019, column: 3, scope: !2278, inlinedAt: !2288)
!2294 = !DILocation(line: 174, column: 6, scope: !1210, inlinedAt: !2293)
!2295 = !DILocation(line: 174, column: 12, scope: !1210, inlinedAt: !2293)
!2296 = !DILocation(line: 175, column: 8, scope: !1224, inlinedAt: !2293)
!2297 = !DILocation(line: 175, column: 19, scope: !1224, inlinedAt: !2293)
!2298 = !DILocation(line: 176, column: 5, scope: !1224, inlinedAt: !2293)
!2299 = !DILocation(line: 177, column: 6, scope: !1210, inlinedAt: !2293)
!2300 = !DILocation(line: 177, column: 17, scope: !1210, inlinedAt: !2293)
!2301 = !DILocation(line: 178, column: 6, scope: !1210, inlinedAt: !2293)
!2302 = !DILocation(line: 178, column: 18, scope: !1210, inlinedAt: !2293)
!2303 = !DILocation(line: 1020, column: 10, scope: !2278, inlinedAt: !2288)
!2304 = !DILocation(line: 1021, column: 1, scope: !2278, inlinedAt: !2288)
!2305 = !DILocation(line: 1009, column: 3, scope: !2268)
!2306 = !DILocation(line: 0, scope: !2278)
!2307 = !DILocation(line: 1018, column: 3, scope: !2278)
!2308 = !DILocation(line: 1018, column: 26, scope: !2278)
!2309 = !DILocation(line: 1018, column: 30, scope: !2278)
!2310 = !DILocation(line: 0, scope: !1210, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 1019, column: 3, scope: !2278)
!2312 = !DILocation(line: 174, column: 6, scope: !1210, inlinedAt: !2311)
!2313 = !DILocation(line: 174, column: 12, scope: !1210, inlinedAt: !2311)
!2314 = !DILocation(line: 175, column: 8, scope: !1224, inlinedAt: !2311)
!2315 = !DILocation(line: 175, column: 19, scope: !1224, inlinedAt: !2311)
!2316 = !DILocation(line: 176, column: 5, scope: !1224, inlinedAt: !2311)
!2317 = !DILocation(line: 177, column: 6, scope: !1210, inlinedAt: !2311)
!2318 = !DILocation(line: 177, column: 17, scope: !1210, inlinedAt: !2311)
!2319 = !DILocation(line: 178, column: 6, scope: !1210, inlinedAt: !2311)
!2320 = !DILocation(line: 178, column: 18, scope: !1210, inlinedAt: !2311)
!2321 = !DILocation(line: 1020, column: 10, scope: !2278)
!2322 = !DILocation(line: 1021, column: 1, scope: !2278)
!2323 = !DILocation(line: 1020, column: 3, scope: !2278)
!2324 = distinct !DISubprogram(name: "quotearg_custom", scope: !253, file: !253, line: 1024, type: !2325, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!22, !28, !28, !28}
!2327 = !{!2328, !2329, !2330}
!2328 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2324, file: !253, line: 1024, type: !28)
!2329 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2324, file: !253, line: 1024, type: !28)
!2330 = !DILocalVariable(name: "arg", arg: 3, scope: !2324, file: !253, line: 1025, type: !28)
!2331 = !DILocation(line: 0, scope: !2324)
!2332 = !DILocation(line: 0, scope: !2268, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 1027, column: 10, scope: !2324)
!2334 = !DILocation(line: 0, scope: !2278, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 1009, column: 10, scope: !2268, inlinedAt: !2333)
!2336 = !DILocation(line: 1018, column: 3, scope: !2278, inlinedAt: !2335)
!2337 = !DILocation(line: 1018, column: 26, scope: !2278, inlinedAt: !2335)
!2338 = !DILocation(line: 1018, column: 30, scope: !2278, inlinedAt: !2335)
!2339 = !DILocation(line: 0, scope: !1210, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 1019, column: 3, scope: !2278, inlinedAt: !2335)
!2341 = !DILocation(line: 174, column: 6, scope: !1210, inlinedAt: !2340)
!2342 = !DILocation(line: 174, column: 12, scope: !1210, inlinedAt: !2340)
!2343 = !DILocation(line: 175, column: 8, scope: !1224, inlinedAt: !2340)
!2344 = !DILocation(line: 175, column: 19, scope: !1224, inlinedAt: !2340)
!2345 = !DILocation(line: 176, column: 5, scope: !1224, inlinedAt: !2340)
!2346 = !DILocation(line: 177, column: 6, scope: !1210, inlinedAt: !2340)
!2347 = !DILocation(line: 177, column: 17, scope: !1210, inlinedAt: !2340)
!2348 = !DILocation(line: 178, column: 6, scope: !1210, inlinedAt: !2340)
!2349 = !DILocation(line: 178, column: 18, scope: !1210, inlinedAt: !2340)
!2350 = !DILocation(line: 1020, column: 10, scope: !2278, inlinedAt: !2335)
!2351 = !DILocation(line: 1021, column: 1, scope: !2278, inlinedAt: !2335)
!2352 = !DILocation(line: 1027, column: 3, scope: !2324)
!2353 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !253, file: !253, line: 1031, type: !2354, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!22, !28, !28, !28, !25}
!2356 = !{!2357, !2358, !2359, !2360}
!2357 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2353, file: !253, line: 1031, type: !28)
!2358 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2353, file: !253, line: 1031, type: !28)
!2359 = !DILocalVariable(name: "arg", arg: 3, scope: !2353, file: !253, line: 1032, type: !28)
!2360 = !DILocalVariable(name: "argsize", arg: 4, scope: !2353, file: !253, line: 1032, type: !25)
!2361 = !DILocation(line: 0, scope: !2353)
!2362 = !DILocation(line: 0, scope: !2278, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 1034, column: 10, scope: !2353)
!2364 = !DILocation(line: 1018, column: 3, scope: !2278, inlinedAt: !2363)
!2365 = !DILocation(line: 1018, column: 26, scope: !2278, inlinedAt: !2363)
!2366 = !DILocation(line: 1018, column: 30, scope: !2278, inlinedAt: !2363)
!2367 = !DILocation(line: 0, scope: !1210, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 1019, column: 3, scope: !2278, inlinedAt: !2363)
!2369 = !DILocation(line: 174, column: 6, scope: !1210, inlinedAt: !2368)
!2370 = !DILocation(line: 174, column: 12, scope: !1210, inlinedAt: !2368)
!2371 = !DILocation(line: 175, column: 8, scope: !1224, inlinedAt: !2368)
!2372 = !DILocation(line: 175, column: 19, scope: !1224, inlinedAt: !2368)
!2373 = !DILocation(line: 176, column: 5, scope: !1224, inlinedAt: !2368)
!2374 = !DILocation(line: 177, column: 6, scope: !1210, inlinedAt: !2368)
!2375 = !DILocation(line: 177, column: 17, scope: !1210, inlinedAt: !2368)
!2376 = !DILocation(line: 178, column: 6, scope: !1210, inlinedAt: !2368)
!2377 = !DILocation(line: 178, column: 18, scope: !1210, inlinedAt: !2368)
!2378 = !DILocation(line: 1020, column: 10, scope: !2278, inlinedAt: !2363)
!2379 = !DILocation(line: 1021, column: 1, scope: !2278, inlinedAt: !2363)
!2380 = !DILocation(line: 1034, column: 3, scope: !2353)
!2381 = distinct !DISubprogram(name: "quote_n_mem", scope: !253, file: !253, line: 1049, type: !2382, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!28, !30, !28, !25}
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "n", arg: 1, scope: !2381, file: !253, line: 1049, type: !30)
!2386 = !DILocalVariable(name: "arg", arg: 2, scope: !2381, file: !253, line: 1049, type: !28)
!2387 = !DILocalVariable(name: "argsize", arg: 3, scope: !2381, file: !253, line: 1049, type: !25)
!2388 = !DILocation(line: 0, scope: !2381)
!2389 = !DILocation(line: 1051, column: 10, scope: !2381)
!2390 = !DILocation(line: 1051, column: 3, scope: !2381)
!2391 = distinct !DISubprogram(name: "quote_mem", scope: !253, file: !253, line: 1055, type: !2392, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!28, !28, !25}
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "arg", arg: 1, scope: !2391, file: !253, line: 1055, type: !28)
!2396 = !DILocalVariable(name: "argsize", arg: 2, scope: !2391, file: !253, line: 1055, type: !25)
!2397 = !DILocation(line: 0, scope: !2391)
!2398 = !DILocation(line: 0, scope: !2381, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 1057, column: 10, scope: !2391)
!2400 = !DILocation(line: 1051, column: 10, scope: !2381, inlinedAt: !2399)
!2401 = !DILocation(line: 1057, column: 3, scope: !2391)
!2402 = distinct !DISubprogram(name: "quote_n", scope: !253, file: !253, line: 1061, type: !2403, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!28, !30, !28}
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "n", arg: 1, scope: !2402, file: !253, line: 1061, type: !30)
!2407 = !DILocalVariable(name: "arg", arg: 2, scope: !2402, file: !253, line: 1061, type: !28)
!2408 = !DILocation(line: 0, scope: !2402)
!2409 = !DILocation(line: 0, scope: !2381, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 1063, column: 10, scope: !2402)
!2411 = !DILocation(line: 1051, column: 10, scope: !2381, inlinedAt: !2410)
!2412 = !DILocation(line: 1063, column: 3, scope: !2402)
!2413 = distinct !DISubprogram(name: "quote", scope: !253, file: !253, line: 1067, type: !2414, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!28, !28}
!2416 = !{!2417}
!2417 = !DILocalVariable(name: "arg", arg: 1, scope: !2413, file: !253, line: 1067, type: !28)
!2418 = !DILocation(line: 0, scope: !2413)
!2419 = !DILocation(line: 0, scope: !2402, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 1069, column: 10, scope: !2413)
!2421 = !DILocation(line: 0, scope: !2381, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 1063, column: 10, scope: !2402, inlinedAt: !2420)
!2423 = !DILocation(line: 1051, column: 10, scope: !2381, inlinedAt: !2422)
!2424 = !DILocation(line: 1069, column: 3, scope: !2413)
!2425 = distinct !DISubprogram(name: "version_etc_arn", scope: !374, file: !374, line: 61, type: !2426, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2463)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !2428, !28, !28, !28, !2462, !25}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !61, line: 7, baseType: !2430)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !63, line: 49, size: 1728, elements: !2431)
!2431 = !{!2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2430, file: !63, line: 51, baseType: !30, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2430, file: !63, line: 54, baseType: !22, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2430, file: !63, line: 55, baseType: !22, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2430, file: !63, line: 56, baseType: !22, size: 64, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2430, file: !63, line: 57, baseType: !22, size: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2430, file: !63, line: 58, baseType: !22, size: 64, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2430, file: !63, line: 59, baseType: !22, size: 64, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2430, file: !63, line: 60, baseType: !22, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2430, file: !63, line: 61, baseType: !22, size: 64, offset: 512)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2430, file: !63, line: 64, baseType: !22, size: 64, offset: 576)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2430, file: !63, line: 65, baseType: !22, size: 64, offset: 640)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2430, file: !63, line: 66, baseType: !22, size: 64, offset: 704)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2430, file: !63, line: 68, baseType: !78, size: 64, offset: 768)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2430, file: !63, line: 70, baseType: !2446, size: 64, offset: 832)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2430, file: !63, line: 72, baseType: !30, size: 32, offset: 896)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2430, file: !63, line: 73, baseType: !30, size: 32, offset: 928)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2430, file: !63, line: 74, baseType: !85, size: 64, offset: 960)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2430, file: !63, line: 77, baseType: !31, size: 16, offset: 1024)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2430, file: !63, line: 78, baseType: !89, size: 8, offset: 1040)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2430, file: !63, line: 79, baseType: !91, size: 8, offset: 1048)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2430, file: !63, line: 81, baseType: !95, size: 64, offset: 1088)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2430, file: !63, line: 89, baseType: !98, size: 64, offset: 1152)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2430, file: !63, line: 91, baseType: !100, size: 64, offset: 1216)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2430, file: !63, line: 92, baseType: !103, size: 64, offset: 1280)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2430, file: !63, line: 93, baseType: !2446, size: 64, offset: 1344)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2430, file: !63, line: 94, baseType: !24, size: 64, offset: 1408)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2430, file: !63, line: 95, baseType: !25, size: 64, offset: 1472)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2430, file: !63, line: 96, baseType: !30, size: 32, offset: 1536)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2430, file: !63, line: 98, baseType: !110, size: 160, offset: 1568)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2463 = !{!2464, !2465, !2466, !2467, !2468, !2469}
!2464 = !DILocalVariable(name: "stream", arg: 1, scope: !2425, file: !374, line: 61, type: !2428)
!2465 = !DILocalVariable(name: "command_name", arg: 2, scope: !2425, file: !374, line: 62, type: !28)
!2466 = !DILocalVariable(name: "package", arg: 3, scope: !2425, file: !374, line: 62, type: !28)
!2467 = !DILocalVariable(name: "version", arg: 4, scope: !2425, file: !374, line: 63, type: !28)
!2468 = !DILocalVariable(name: "authors", arg: 5, scope: !2425, file: !374, line: 64, type: !2462)
!2469 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2425, file: !374, line: 64, type: !25)
!2470 = !DILocation(line: 0, scope: !2425)
!2471 = !DILocation(line: 66, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2425, file: !374, line: 66, column: 7)
!2473 = !DILocation(line: 66, column: 7, scope: !2425)
!2474 = !DILocation(line: 67, column: 5, scope: !2472)
!2475 = !DILocation(line: 69, column: 5, scope: !2472)
!2476 = !DILocation(line: 83, column: 3, scope: !2425)
!2477 = !DILocation(line: 85, column: 3, scope: !2425)
!2478 = !DILocation(line: 88, column: 3, scope: !2425)
!2479 = !DILocation(line: 95, column: 3, scope: !2425)
!2480 = !DILocation(line: 97, column: 3, scope: !2425)
!2481 = !DILocation(line: 105, column: 7, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2425, file: !374, line: 98, column: 5)
!2483 = !DILocation(line: 106, column: 7, scope: !2482)
!2484 = !DILocation(line: 109, column: 7, scope: !2482)
!2485 = !DILocation(line: 110, column: 7, scope: !2482)
!2486 = !DILocation(line: 113, column: 7, scope: !2482)
!2487 = !DILocation(line: 115, column: 7, scope: !2482)
!2488 = !DILocation(line: 120, column: 7, scope: !2482)
!2489 = !DILocation(line: 122, column: 7, scope: !2482)
!2490 = !DILocation(line: 127, column: 7, scope: !2482)
!2491 = !DILocation(line: 129, column: 7, scope: !2482)
!2492 = !DILocation(line: 134, column: 7, scope: !2482)
!2493 = !DILocation(line: 137, column: 7, scope: !2482)
!2494 = !DILocation(line: 142, column: 7, scope: !2482)
!2495 = !DILocation(line: 145, column: 7, scope: !2482)
!2496 = !DILocation(line: 150, column: 7, scope: !2482)
!2497 = !DILocation(line: 154, column: 7, scope: !2482)
!2498 = !DILocation(line: 159, column: 7, scope: !2482)
!2499 = !DILocation(line: 163, column: 7, scope: !2482)
!2500 = !DILocation(line: 170, column: 7, scope: !2482)
!2501 = !DILocation(line: 174, column: 7, scope: !2482)
!2502 = !DILocation(line: 176, column: 1, scope: !2425)
!2503 = distinct !DISubprogram(name: "version_etc_ar", scope: !374, file: !374, line: 183, type: !2504, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{null, !2428, !28, !28, !28, !2462}
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512}
!2507 = !DILocalVariable(name: "stream", arg: 1, scope: !2503, file: !374, line: 183, type: !2428)
!2508 = !DILocalVariable(name: "command_name", arg: 2, scope: !2503, file: !374, line: 184, type: !28)
!2509 = !DILocalVariable(name: "package", arg: 3, scope: !2503, file: !374, line: 184, type: !28)
!2510 = !DILocalVariable(name: "version", arg: 4, scope: !2503, file: !374, line: 185, type: !28)
!2511 = !DILocalVariable(name: "authors", arg: 5, scope: !2503, file: !374, line: 185, type: !2462)
!2512 = !DILocalVariable(name: "n_authors", scope: !2503, file: !374, line: 187, type: !25)
!2513 = !DILocation(line: 0, scope: !2503)
!2514 = !DILocation(line: 189, column: 8, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2503, file: !374, line: 189, column: 3)
!2516 = !DILocation(line: 0, scope: !2515)
!2517 = !DILocation(line: 189, column: 23, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2515, file: !374, line: 189, column: 3)
!2519 = !DILocation(line: 189, column: 3, scope: !2515)
!2520 = !DILocation(line: 189, column: 52, scope: !2518)
!2521 = distinct !{!2521, !2519, !2522, !509}
!2522 = !DILocation(line: 190, column: 5, scope: !2515)
!2523 = !DILocation(line: 191, column: 3, scope: !2503)
!2524 = !DILocation(line: 192, column: 1, scope: !2503)
!2525 = distinct !DISubprogram(name: "version_etc_va", scope: !374, file: !374, line: 199, type: !2526, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2539)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{null, !2428, !28, !28, !28, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !181, line: 52, baseType: !2529)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !183, line: 32, baseType: !2530)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2531, baseType: !2532)
!2531 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !187, size: 256, elements: !2533)
!2533 = !{!2534, !2535, !2536, !2537, !2538}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2532, file: !2531, line: 192, baseType: !24, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2532, file: !2531, line: 192, baseType: !24, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2532, file: !2531, line: 192, baseType: !24, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2532, file: !2531, line: 192, baseType: !30, size: 32, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2532, file: !2531, line: 192, baseType: !30, size: 32, offset: 224)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546}
!2540 = !DILocalVariable(name: "stream", arg: 1, scope: !2525, file: !374, line: 199, type: !2428)
!2541 = !DILocalVariable(name: "command_name", arg: 2, scope: !2525, file: !374, line: 200, type: !28)
!2542 = !DILocalVariable(name: "package", arg: 3, scope: !2525, file: !374, line: 200, type: !28)
!2543 = !DILocalVariable(name: "version", arg: 4, scope: !2525, file: !374, line: 201, type: !28)
!2544 = !DILocalVariable(name: "authors", arg: 5, scope: !2525, file: !374, line: 201, type: !2528)
!2545 = !DILocalVariable(name: "n_authors", scope: !2525, file: !374, line: 203, type: !25)
!2546 = !DILocalVariable(name: "authtab", scope: !2525, file: !374, line: 204, type: !2547)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, elements: !280)
!2548 = !DILocation(line: 0, scope: !2525)
!2549 = !DILocation(line: 201, column: 46, scope: !2525)
!2550 = !DILocation(line: 204, column: 3, scope: !2525)
!2551 = !DILocation(line: 204, column: 15, scope: !2525)
!2552 = !DILocation(line: 208, column: 35, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !374, line: 206, column: 3)
!2554 = distinct !DILexicalBlock(scope: !2525, file: !374, line: 206, column: 3)
!2555 = !DILocation(line: 208, column: 14, scope: !2553)
!2556 = !DILocation(line: 208, column: 33, scope: !2553)
!2557 = !DILocation(line: 208, column: 67, scope: !2553)
!2558 = !DILocation(line: 206, column: 3, scope: !2554)
!2559 = !DILocation(line: 0, scope: !2554)
!2560 = !DILocation(line: 211, column: 3, scope: !2525)
!2561 = !DILocation(line: 213, column: 1, scope: !2525)
!2562 = distinct !DISubprogram(name: "version_etc", scope: !374, file: !374, line: 230, type: !2563, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !2428, !28, !28, !28, null}
!2565 = !{!2566, !2567, !2568, !2569, !2570}
!2566 = !DILocalVariable(name: "stream", arg: 1, scope: !2562, file: !374, line: 230, type: !2428)
!2567 = !DILocalVariable(name: "command_name", arg: 2, scope: !2562, file: !374, line: 231, type: !28)
!2568 = !DILocalVariable(name: "package", arg: 3, scope: !2562, file: !374, line: 231, type: !28)
!2569 = !DILocalVariable(name: "version", arg: 4, scope: !2562, file: !374, line: 232, type: !28)
!2570 = !DILocalVariable(name: "authors", scope: !2562, file: !374, line: 234, type: !2528)
!2571 = !DILocation(line: 0, scope: !2562)
!2572 = !DILocation(line: 234, column: 3, scope: !2562)
!2573 = !DILocation(line: 234, column: 11, scope: !2562)
!2574 = !DILocation(line: 235, column: 3, scope: !2562)
!2575 = !DILocation(line: 236, column: 3, scope: !2562)
!2576 = !DILocation(line: 237, column: 3, scope: !2562)
!2577 = !DILocation(line: 238, column: 1, scope: !2562)
!2578 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !374, file: !374, line: 241, type: !208, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !535)
!2579 = !DILocation(line: 243, column: 3, scope: !2578)
!2580 = !DILocation(line: 248, column: 3, scope: !2578)
!2581 = !DILocation(line: 254, column: 3, scope: !2578)
!2582 = !DILocation(line: 259, column: 3, scope: !2578)
!2583 = !DILocation(line: 261, column: 1, scope: !2578)
!2584 = distinct !DISubprogram(name: "xnrealloc", scope: !2585, file: !2585, line: 147, type: !2586, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2588)
!2585 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!24, !24, !25, !25}
!2588 = !{!2589, !2590, !2591}
!2589 = !DILocalVariable(name: "p", arg: 1, scope: !2584, file: !2585, line: 147, type: !24)
!2590 = !DILocalVariable(name: "n", arg: 2, scope: !2584, file: !2585, line: 147, type: !25)
!2591 = !DILocalVariable(name: "s", arg: 3, scope: !2584, file: !2585, line: 147, type: !25)
!2592 = !DILocation(line: 0, scope: !2584)
!2593 = !DILocalVariable(name: "p", arg: 1, scope: !2594, file: !381, line: 83, type: !24)
!2594 = distinct !DISubprogram(name: "xreallocarray", scope: !381, file: !381, line: 83, type: !2586, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2595)
!2595 = !{!2593, !2596, !2597}
!2596 = !DILocalVariable(name: "n", arg: 2, scope: !2594, file: !381, line: 83, type: !25)
!2597 = !DILocalVariable(name: "s", arg: 3, scope: !2594, file: !381, line: 83, type: !25)
!2598 = !DILocation(line: 0, scope: !2594, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 149, column: 10, scope: !2584)
!2600 = !DILocation(line: 85, column: 25, scope: !2594, inlinedAt: !2599)
!2601 = !DILocalVariable(name: "p", arg: 1, scope: !2602, file: !381, line: 37, type: !24)
!2602 = distinct !DISubprogram(name: "check_nonnull", scope: !381, file: !381, line: 37, type: !2603, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!24, !24}
!2605 = !{!2601}
!2606 = !DILocation(line: 0, scope: !2602, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 85, column: 10, scope: !2594, inlinedAt: !2599)
!2608 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2607)
!2609 = distinct !DILexicalBlock(scope: !2602, file: !381, line: 39, column: 7)
!2610 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2607)
!2611 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2607)
!2612 = !DILocation(line: 149, column: 3, scope: !2584)
!2613 = !DILocation(line: 0, scope: !2594)
!2614 = !DILocation(line: 85, column: 25, scope: !2594)
!2615 = !DILocation(line: 0, scope: !2602, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 85, column: 10, scope: !2594)
!2617 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2616)
!2618 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2616)
!2619 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2616)
!2620 = !DILocation(line: 85, column: 3, scope: !2594)
!2621 = distinct !DISubprogram(name: "xmalloc", scope: !381, file: !381, line: 47, type: !2622, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!24, !25}
!2624 = !{!2625}
!2625 = !DILocalVariable(name: "s", arg: 1, scope: !2621, file: !381, line: 47, type: !25)
!2626 = !DILocation(line: 0, scope: !2621)
!2627 = !DILocation(line: 49, column: 25, scope: !2621)
!2628 = !DILocation(line: 0, scope: !2602, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 49, column: 10, scope: !2621)
!2630 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2629)
!2631 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2629)
!2632 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2629)
!2633 = !DILocation(line: 49, column: 3, scope: !2621)
!2634 = distinct !DISubprogram(name: "ximalloc", scope: !381, file: !381, line: 53, type: !2635, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!24, !52}
!2637 = !{!2638}
!2638 = !DILocalVariable(name: "s", arg: 1, scope: !2634, file: !381, line: 53, type: !52)
!2639 = !DILocation(line: 0, scope: !2634)
!2640 = !DILocalVariable(name: "s", arg: 1, scope: !2641, file: !2642, line: 55, type: !52)
!2641 = distinct !DISubprogram(name: "imalloc", scope: !2642, file: !2642, line: 55, type: !2635, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2643)
!2642 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2643 = !{!2640}
!2644 = !DILocation(line: 0, scope: !2641, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 55, column: 25, scope: !2634)
!2646 = !DILocation(line: 57, column: 26, scope: !2641, inlinedAt: !2645)
!2647 = !DILocation(line: 0, scope: !2602, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 55, column: 10, scope: !2634)
!2649 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2648)
!2650 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2648)
!2651 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2648)
!2652 = !DILocation(line: 55, column: 3, scope: !2634)
!2653 = distinct !DISubprogram(name: "xcharalloc", scope: !381, file: !381, line: 59, type: !2654, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!22, !25}
!2656 = !{!2657}
!2657 = !DILocalVariable(name: "n", arg: 1, scope: !2653, file: !381, line: 59, type: !25)
!2658 = !DILocation(line: 0, scope: !2653)
!2659 = !DILocation(line: 0, scope: !2621, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 61, column: 10, scope: !2653)
!2661 = !DILocation(line: 49, column: 25, scope: !2621, inlinedAt: !2660)
!2662 = !DILocation(line: 0, scope: !2602, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 49, column: 10, scope: !2621, inlinedAt: !2660)
!2664 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2663)
!2665 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2663)
!2666 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2663)
!2667 = !DILocation(line: 61, column: 3, scope: !2653)
!2668 = distinct !DISubprogram(name: "xrealloc", scope: !381, file: !381, line: 68, type: !2669, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!24, !24, !25}
!2671 = !{!2672, !2673}
!2672 = !DILocalVariable(name: "p", arg: 1, scope: !2668, file: !381, line: 68, type: !24)
!2673 = !DILocalVariable(name: "s", arg: 2, scope: !2668, file: !381, line: 68, type: !25)
!2674 = !DILocation(line: 0, scope: !2668)
!2675 = !DILocalVariable(name: "ptr", arg: 1, scope: !2676, file: !2677, line: 2057, type: !24)
!2676 = distinct !DISubprogram(name: "rpl_realloc", scope: !2677, file: !2677, line: 2057, type: !2669, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2678)
!2677 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2678 = !{!2675, !2679}
!2679 = !DILocalVariable(name: "size", arg: 2, scope: !2676, file: !2677, line: 2057, type: !25)
!2680 = !DILocation(line: 0, scope: !2676, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 70, column: 25, scope: !2668)
!2682 = !DILocation(line: 2059, column: 24, scope: !2676, inlinedAt: !2681)
!2683 = !DILocation(line: 2059, column: 10, scope: !2676, inlinedAt: !2681)
!2684 = !DILocation(line: 0, scope: !2602, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 70, column: 10, scope: !2668)
!2686 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2685)
!2687 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2685)
!2688 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2685)
!2689 = !DILocation(line: 70, column: 3, scope: !2668)
!2690 = distinct !DISubprogram(name: "xirealloc", scope: !381, file: !381, line: 74, type: !2691, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!24, !24, !52}
!2693 = !{!2694, !2695}
!2694 = !DILocalVariable(name: "p", arg: 1, scope: !2690, file: !381, line: 74, type: !24)
!2695 = !DILocalVariable(name: "s", arg: 2, scope: !2690, file: !381, line: 74, type: !52)
!2696 = !DILocation(line: 0, scope: !2690)
!2697 = !DILocalVariable(name: "p", arg: 1, scope: !2698, file: !2642, line: 66, type: !24)
!2698 = distinct !DISubprogram(name: "irealloc", scope: !2642, file: !2642, line: 66, type: !2691, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2699)
!2699 = !{!2697, !2700}
!2700 = !DILocalVariable(name: "s", arg: 2, scope: !2698, file: !2642, line: 66, type: !52)
!2701 = !DILocation(line: 0, scope: !2698, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 76, column: 25, scope: !2690)
!2703 = !DILocation(line: 0, scope: !2676, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 68, column: 26, scope: !2698, inlinedAt: !2702)
!2705 = !DILocation(line: 2059, column: 24, scope: !2676, inlinedAt: !2704)
!2706 = !DILocation(line: 2059, column: 10, scope: !2676, inlinedAt: !2704)
!2707 = !DILocation(line: 0, scope: !2602, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 76, column: 10, scope: !2690)
!2709 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2708)
!2710 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2708)
!2711 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2708)
!2712 = !DILocation(line: 76, column: 3, scope: !2690)
!2713 = distinct !DISubprogram(name: "xireallocarray", scope: !381, file: !381, line: 89, type: !2714, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!24, !24, !52, !52}
!2716 = !{!2717, !2718, !2719}
!2717 = !DILocalVariable(name: "p", arg: 1, scope: !2713, file: !381, line: 89, type: !24)
!2718 = !DILocalVariable(name: "n", arg: 2, scope: !2713, file: !381, line: 89, type: !52)
!2719 = !DILocalVariable(name: "s", arg: 3, scope: !2713, file: !381, line: 89, type: !52)
!2720 = !DILocation(line: 0, scope: !2713)
!2721 = !DILocalVariable(name: "p", arg: 1, scope: !2722, file: !2642, line: 98, type: !24)
!2722 = distinct !DISubprogram(name: "ireallocarray", scope: !2642, file: !2642, line: 98, type: !2714, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2723)
!2723 = !{!2721, !2724, !2725}
!2724 = !DILocalVariable(name: "n", arg: 2, scope: !2722, file: !2642, line: 98, type: !52)
!2725 = !DILocalVariable(name: "s", arg: 3, scope: !2722, file: !2642, line: 98, type: !52)
!2726 = !DILocation(line: 0, scope: !2722, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 91, column: 25, scope: !2713)
!2728 = !DILocation(line: 101, column: 13, scope: !2722, inlinedAt: !2727)
!2729 = !DILocation(line: 0, scope: !2602, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 91, column: 10, scope: !2713)
!2731 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2730)
!2732 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2730)
!2733 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2730)
!2734 = !DILocation(line: 91, column: 3, scope: !2713)
!2735 = distinct !DISubprogram(name: "xnmalloc", scope: !381, file: !381, line: 98, type: !2736, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!24, !25, !25}
!2738 = !{!2739, !2740}
!2739 = !DILocalVariable(name: "n", arg: 1, scope: !2735, file: !381, line: 98, type: !25)
!2740 = !DILocalVariable(name: "s", arg: 2, scope: !2735, file: !381, line: 98, type: !25)
!2741 = !DILocation(line: 0, scope: !2735)
!2742 = !DILocation(line: 0, scope: !2594, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 100, column: 10, scope: !2735)
!2744 = !DILocation(line: 85, column: 25, scope: !2594, inlinedAt: !2743)
!2745 = !DILocation(line: 0, scope: !2602, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 85, column: 10, scope: !2594, inlinedAt: !2743)
!2747 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2746)
!2748 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2746)
!2749 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2746)
!2750 = !DILocation(line: 100, column: 3, scope: !2735)
!2751 = distinct !DISubprogram(name: "xinmalloc", scope: !381, file: !381, line: 104, type: !2752, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!24, !52, !52}
!2754 = !{!2755, !2756}
!2755 = !DILocalVariable(name: "n", arg: 1, scope: !2751, file: !381, line: 104, type: !52)
!2756 = !DILocalVariable(name: "s", arg: 2, scope: !2751, file: !381, line: 104, type: !52)
!2757 = !DILocation(line: 0, scope: !2751)
!2758 = !DILocation(line: 0, scope: !2713, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 106, column: 10, scope: !2751)
!2760 = !DILocation(line: 0, scope: !2722, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 91, column: 25, scope: !2713, inlinedAt: !2759)
!2762 = !DILocation(line: 101, column: 13, scope: !2722, inlinedAt: !2761)
!2763 = !DILocation(line: 0, scope: !2602, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 91, column: 10, scope: !2713, inlinedAt: !2759)
!2765 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2764)
!2766 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2764)
!2767 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2764)
!2768 = !DILocation(line: 106, column: 3, scope: !2751)
!2769 = distinct !DISubprogram(name: "x2realloc", scope: !381, file: !381, line: 116, type: !2770, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!24, !24, !387}
!2772 = !{!2773, !2774}
!2773 = !DILocalVariable(name: "p", arg: 1, scope: !2769, file: !381, line: 116, type: !24)
!2774 = !DILocalVariable(name: "ps", arg: 2, scope: !2769, file: !381, line: 116, type: !387)
!2775 = !DILocation(line: 0, scope: !2769)
!2776 = !DILocation(line: 0, scope: !384, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 118, column: 10, scope: !2769)
!2778 = !DILocation(line: 178, column: 14, scope: !384, inlinedAt: !2777)
!2779 = !DILocation(line: 180, column: 9, scope: !2780, inlinedAt: !2777)
!2780 = distinct !DILexicalBlock(scope: !384, file: !381, line: 180, column: 7)
!2781 = !DILocation(line: 180, column: 7, scope: !384, inlinedAt: !2777)
!2782 = !DILocation(line: 182, column: 13, scope: !2783, inlinedAt: !2777)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !381, line: 182, column: 11)
!2784 = distinct !DILexicalBlock(scope: !2780, file: !381, line: 181, column: 5)
!2785 = !DILocation(line: 182, column: 11, scope: !2784, inlinedAt: !2777)
!2786 = !DILocation(line: 197, column: 11, scope: !2787, inlinedAt: !2777)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !381, line: 197, column: 11)
!2788 = distinct !DILexicalBlock(scope: !2780, file: !381, line: 195, column: 5)
!2789 = !DILocation(line: 197, column: 11, scope: !2788, inlinedAt: !2777)
!2790 = !DILocation(line: 198, column: 9, scope: !2787, inlinedAt: !2777)
!2791 = !DILocation(line: 0, scope: !2594, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 201, column: 7, scope: !384, inlinedAt: !2777)
!2793 = !DILocation(line: 85, column: 25, scope: !2594, inlinedAt: !2792)
!2794 = !DILocation(line: 0, scope: !2602, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 85, column: 10, scope: !2594, inlinedAt: !2792)
!2796 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2795)
!2797 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2795)
!2798 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2795)
!2799 = !DILocation(line: 202, column: 7, scope: !384, inlinedAt: !2777)
!2800 = !DILocation(line: 118, column: 3, scope: !2769)
!2801 = !DILocation(line: 0, scope: !384)
!2802 = !DILocation(line: 178, column: 14, scope: !384)
!2803 = !DILocation(line: 180, column: 9, scope: !2780)
!2804 = !DILocation(line: 180, column: 7, scope: !384)
!2805 = !DILocation(line: 182, column: 13, scope: !2783)
!2806 = !DILocation(line: 182, column: 11, scope: !2784)
!2807 = !DILocation(line: 190, column: 30, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2783, file: !381, line: 183, column: 9)
!2809 = !DILocation(line: 191, column: 16, scope: !2808)
!2810 = !DILocation(line: 191, column: 13, scope: !2808)
!2811 = !DILocation(line: 192, column: 9, scope: !2808)
!2812 = !DILocation(line: 197, column: 11, scope: !2787)
!2813 = !DILocation(line: 197, column: 11, scope: !2788)
!2814 = !DILocation(line: 198, column: 9, scope: !2787)
!2815 = !DILocation(line: 0, scope: !2594, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 201, column: 7, scope: !384)
!2817 = !DILocation(line: 85, column: 25, scope: !2594, inlinedAt: !2816)
!2818 = !DILocation(line: 0, scope: !2602, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 85, column: 10, scope: !2594, inlinedAt: !2816)
!2820 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2819)
!2821 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2819)
!2822 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2819)
!2823 = !DILocation(line: 202, column: 7, scope: !384)
!2824 = !DILocation(line: 203, column: 3, scope: !384)
!2825 = !DILocation(line: 0, scope: !396)
!2826 = !DILocation(line: 230, column: 14, scope: !396)
!2827 = !DILocation(line: 238, column: 7, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !396, file: !381, line: 238, column: 7)
!2829 = !DILocation(line: 238, column: 7, scope: !396)
!2830 = !DILocation(line: 240, column: 9, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !396, file: !381, line: 240, column: 7)
!2832 = !DILocation(line: 240, column: 18, scope: !2831)
!2833 = !DILocation(line: 253, column: 8, scope: !396)
!2834 = !DILocation(line: 258, column: 27, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !381, line: 257, column: 5)
!2836 = distinct !DILexicalBlock(scope: !396, file: !381, line: 256, column: 7)
!2837 = !DILocation(line: 259, column: 32, scope: !2835)
!2838 = !DILocation(line: 260, column: 5, scope: !2835)
!2839 = !DILocation(line: 262, column: 9, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !396, file: !381, line: 262, column: 7)
!2841 = !DILocation(line: 262, column: 7, scope: !396)
!2842 = !DILocation(line: 263, column: 9, scope: !2840)
!2843 = !DILocation(line: 263, column: 5, scope: !2840)
!2844 = !DILocation(line: 264, column: 9, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !396, file: !381, line: 264, column: 7)
!2846 = !DILocation(line: 264, column: 14, scope: !2845)
!2847 = !DILocation(line: 265, column: 7, scope: !2845)
!2848 = !DILocation(line: 265, column: 11, scope: !2845)
!2849 = !DILocation(line: 266, column: 11, scope: !2845)
!2850 = !DILocation(line: 266, column: 26, scope: !2845)
!2851 = !DILocation(line: 267, column: 14, scope: !2845)
!2852 = !DILocation(line: 264, column: 7, scope: !396)
!2853 = !DILocation(line: 268, column: 5, scope: !2845)
!2854 = !DILocation(line: 0, scope: !2668, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 269, column: 8, scope: !396)
!2856 = !DILocation(line: 0, scope: !2676, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 70, column: 25, scope: !2668, inlinedAt: !2855)
!2858 = !DILocation(line: 2059, column: 24, scope: !2676, inlinedAt: !2857)
!2859 = !DILocation(line: 2059, column: 10, scope: !2676, inlinedAt: !2857)
!2860 = !DILocation(line: 0, scope: !2602, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 70, column: 10, scope: !2668, inlinedAt: !2855)
!2862 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2861)
!2863 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2861)
!2864 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2861)
!2865 = !DILocation(line: 270, column: 7, scope: !396)
!2866 = !DILocation(line: 271, column: 3, scope: !396)
!2867 = distinct !DISubprogram(name: "xzalloc", scope: !381, file: !381, line: 279, type: !2622, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2868)
!2868 = !{!2869}
!2869 = !DILocalVariable(name: "s", arg: 1, scope: !2867, file: !381, line: 279, type: !25)
!2870 = !DILocation(line: 0, scope: !2867)
!2871 = !DILocalVariable(name: "n", arg: 1, scope: !2872, file: !381, line: 294, type: !25)
!2872 = distinct !DISubprogram(name: "xcalloc", scope: !381, file: !381, line: 294, type: !2736, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2873)
!2873 = !{!2871, !2874}
!2874 = !DILocalVariable(name: "s", arg: 2, scope: !2872, file: !381, line: 294, type: !25)
!2875 = !DILocation(line: 0, scope: !2872, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 281, column: 10, scope: !2867)
!2877 = !DILocation(line: 296, column: 25, scope: !2872, inlinedAt: !2876)
!2878 = !DILocation(line: 0, scope: !2602, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 296, column: 10, scope: !2872, inlinedAt: !2876)
!2880 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2879)
!2881 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2879)
!2882 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2879)
!2883 = !DILocation(line: 281, column: 3, scope: !2867)
!2884 = !DILocation(line: 0, scope: !2872)
!2885 = !DILocation(line: 296, column: 25, scope: !2872)
!2886 = !DILocation(line: 0, scope: !2602, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 296, column: 10, scope: !2872)
!2888 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2887)
!2889 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2887)
!2890 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2887)
!2891 = !DILocation(line: 296, column: 3, scope: !2872)
!2892 = distinct !DISubprogram(name: "xizalloc", scope: !381, file: !381, line: 285, type: !2635, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2893)
!2893 = !{!2894}
!2894 = !DILocalVariable(name: "s", arg: 1, scope: !2892, file: !381, line: 285, type: !52)
!2895 = !DILocation(line: 0, scope: !2892)
!2896 = !DILocalVariable(name: "n", arg: 1, scope: !2897, file: !381, line: 300, type: !52)
!2897 = distinct !DISubprogram(name: "xicalloc", scope: !381, file: !381, line: 300, type: !2752, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2898)
!2898 = !{!2896, !2899}
!2899 = !DILocalVariable(name: "s", arg: 2, scope: !2897, file: !381, line: 300, type: !52)
!2900 = !DILocation(line: 0, scope: !2897, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 287, column: 10, scope: !2892)
!2902 = !DILocalVariable(name: "n", arg: 1, scope: !2903, file: !2642, line: 77, type: !52)
!2903 = distinct !DISubprogram(name: "icalloc", scope: !2642, file: !2642, line: 77, type: !2752, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2904)
!2904 = !{!2902, !2905}
!2905 = !DILocalVariable(name: "s", arg: 2, scope: !2903, file: !2642, line: 77, type: !52)
!2906 = !DILocation(line: 0, scope: !2903, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 302, column: 25, scope: !2897, inlinedAt: !2901)
!2908 = !DILocation(line: 91, column: 10, scope: !2903, inlinedAt: !2907)
!2909 = !DILocation(line: 0, scope: !2602, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 302, column: 10, scope: !2897, inlinedAt: !2901)
!2911 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2910)
!2912 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2910)
!2913 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2910)
!2914 = !DILocation(line: 287, column: 3, scope: !2892)
!2915 = !DILocation(line: 0, scope: !2897)
!2916 = !DILocation(line: 0, scope: !2903, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 302, column: 25, scope: !2897)
!2918 = !DILocation(line: 91, column: 10, scope: !2903, inlinedAt: !2917)
!2919 = !DILocation(line: 0, scope: !2602, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 302, column: 10, scope: !2897)
!2921 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2920)
!2922 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2920)
!2923 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2920)
!2924 = !DILocation(line: 302, column: 3, scope: !2897)
!2925 = distinct !DISubprogram(name: "xmemdup", scope: !381, file: !381, line: 310, type: !2926, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!24, !661, !25}
!2928 = !{!2929, !2930}
!2929 = !DILocalVariable(name: "p", arg: 1, scope: !2925, file: !381, line: 310, type: !661)
!2930 = !DILocalVariable(name: "s", arg: 2, scope: !2925, file: !381, line: 310, type: !25)
!2931 = !DILocation(line: 0, scope: !2925)
!2932 = !DILocation(line: 0, scope: !2621, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 312, column: 18, scope: !2925)
!2934 = !DILocation(line: 49, column: 25, scope: !2621, inlinedAt: !2933)
!2935 = !DILocation(line: 0, scope: !2602, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 49, column: 10, scope: !2621, inlinedAt: !2933)
!2937 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2936)
!2938 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2936)
!2939 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2936)
!2940 = !DILocalVariable(name: "__dest", arg: 1, scope: !2941, file: !827, line: 26, type: !830)
!2941 = distinct !DISubprogram(name: "memcpy", scope: !827, file: !827, line: 26, type: !828, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2942)
!2942 = !{!2940, !2943, !2944}
!2943 = !DILocalVariable(name: "__src", arg: 2, scope: !2941, file: !827, line: 26, type: !660)
!2944 = !DILocalVariable(name: "__len", arg: 3, scope: !2941, file: !827, line: 26, type: !25)
!2945 = !DILocation(line: 0, scope: !2941, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 312, column: 10, scope: !2925)
!2947 = !DILocation(line: 29, column: 10, scope: !2941, inlinedAt: !2946)
!2948 = !DILocation(line: 312, column: 3, scope: !2925)
!2949 = distinct !DISubprogram(name: "ximemdup", scope: !381, file: !381, line: 316, type: !2950, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!24, !661, !52}
!2952 = !{!2953, !2954}
!2953 = !DILocalVariable(name: "p", arg: 1, scope: !2949, file: !381, line: 316, type: !661)
!2954 = !DILocalVariable(name: "s", arg: 2, scope: !2949, file: !381, line: 316, type: !52)
!2955 = !DILocation(line: 0, scope: !2949)
!2956 = !DILocation(line: 0, scope: !2634, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 318, column: 18, scope: !2949)
!2958 = !DILocation(line: 0, scope: !2641, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 55, column: 25, scope: !2634, inlinedAt: !2957)
!2960 = !DILocation(line: 57, column: 26, scope: !2641, inlinedAt: !2959)
!2961 = !DILocation(line: 0, scope: !2602, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 55, column: 10, scope: !2634, inlinedAt: !2957)
!2963 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2962)
!2964 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2962)
!2965 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2962)
!2966 = !DILocation(line: 0, scope: !2941, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 318, column: 10, scope: !2949)
!2968 = !DILocation(line: 29, column: 10, scope: !2941, inlinedAt: !2967)
!2969 = !DILocation(line: 318, column: 3, scope: !2949)
!2970 = distinct !DISubprogram(name: "ximemdup0", scope: !381, file: !381, line: 325, type: !2971, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!22, !661, !52}
!2973 = !{!2974, !2975, !2976}
!2974 = !DILocalVariable(name: "p", arg: 1, scope: !2970, file: !381, line: 325, type: !661)
!2975 = !DILocalVariable(name: "s", arg: 2, scope: !2970, file: !381, line: 325, type: !52)
!2976 = !DILocalVariable(name: "result", scope: !2970, file: !381, line: 327, type: !22)
!2977 = !DILocation(line: 0, scope: !2970)
!2978 = !DILocation(line: 327, column: 30, scope: !2970)
!2979 = !DILocation(line: 0, scope: !2634, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 327, column: 18, scope: !2970)
!2981 = !DILocation(line: 0, scope: !2641, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 55, column: 25, scope: !2634, inlinedAt: !2980)
!2983 = !DILocation(line: 57, column: 26, scope: !2641, inlinedAt: !2982)
!2984 = !DILocation(line: 0, scope: !2602, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 55, column: 10, scope: !2634, inlinedAt: !2980)
!2986 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !2985)
!2987 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !2985)
!2988 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !2985)
!2989 = !DILocation(line: 328, column: 3, scope: !2970)
!2990 = !DILocation(line: 328, column: 13, scope: !2970)
!2991 = !DILocation(line: 0, scope: !2941, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 329, column: 10, scope: !2970)
!2993 = !DILocation(line: 29, column: 10, scope: !2941, inlinedAt: !2992)
!2994 = !DILocation(line: 329, column: 3, scope: !2970)
!2995 = distinct !DISubprogram(name: "xstrdup", scope: !381, file: !381, line: 335, type: !655, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2996)
!2996 = !{!2997}
!2997 = !DILocalVariable(name: "string", arg: 1, scope: !2995, file: !381, line: 335, type: !28)
!2998 = !DILocation(line: 0, scope: !2995)
!2999 = !DILocation(line: 337, column: 27, scope: !2995)
!3000 = !DILocation(line: 337, column: 43, scope: !2995)
!3001 = !DILocation(line: 0, scope: !2925, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 337, column: 10, scope: !2995)
!3003 = !DILocation(line: 0, scope: !2621, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 312, column: 18, scope: !2925, inlinedAt: !3002)
!3005 = !DILocation(line: 49, column: 25, scope: !2621, inlinedAt: !3004)
!3006 = !DILocation(line: 0, scope: !2602, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 49, column: 10, scope: !2621, inlinedAt: !3004)
!3008 = !DILocation(line: 39, column: 8, scope: !2609, inlinedAt: !3007)
!3009 = !DILocation(line: 39, column: 7, scope: !2602, inlinedAt: !3007)
!3010 = !DILocation(line: 40, column: 5, scope: !2609, inlinedAt: !3007)
!3011 = !DILocation(line: 0, scope: !2941, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 312, column: 10, scope: !2925, inlinedAt: !3002)
!3013 = !DILocation(line: 29, column: 10, scope: !2941, inlinedAt: !3012)
!3014 = !DILocation(line: 337, column: 3, scope: !2995)
!3015 = distinct !DISubprogram(name: "xalloc_die", scope: !412, file: !412, line: 32, type: !208, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3016)
!3016 = !{!3017}
!3017 = !DILocalVariable(name: "__errstatus", scope: !3018, file: !412, line: 34, type: !3019)
!3018 = distinct !DILexicalBlock(scope: !3015, file: !412, line: 34, column: 3)
!3019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!3020 = !DILocation(line: 34, column: 3, scope: !3018)
!3021 = !DILocation(line: 0, scope: !3018)
!3022 = !DILocation(line: 40, column: 3, scope: !3015)
!3023 = distinct !DISubprogram(name: "last_component", scope: !414, file: !414, line: 29, type: !655, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3024)
!3024 = !{!3025, !3026, !3027, !3028}
!3025 = !DILocalVariable(name: "name", arg: 1, scope: !3023, file: !414, line: 29, type: !28)
!3026 = !DILocalVariable(name: "base", scope: !3023, file: !414, line: 31, type: !28)
!3027 = !DILocalVariable(name: "last_was_slash", scope: !3023, file: !414, line: 35, type: !44)
!3028 = !DILocalVariable(name: "p", scope: !3029, file: !414, line: 36, type: !28)
!3029 = distinct !DILexicalBlock(scope: !3023, file: !414, line: 36, column: 3)
!3030 = !DILocation(line: 0, scope: !3023)
!3031 = !DILocation(line: 32, column: 3, scope: !3023)
!3032 = !DILocation(line: 32, column: 10, scope: !3023)
!3033 = !DILocation(line: 33, column: 9, scope: !3023)
!3034 = distinct !{!3034, !3031, !3033, !509}
!3035 = !DILocation(line: 36, column: 30, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3029, file: !414, line: 36, column: 3)
!3037 = !DILocation(line: 31, column: 15, scope: !3023)
!3038 = !DILocation(line: 0, scope: !3029)
!3039 = !DILocation(line: 36, column: 3, scope: !3029)
!3040 = !DILocation(line: 47, column: 3, scope: !3023)
!3041 = !DILocation(line: 40, column: 16, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !414, line: 38, column: 11)
!3043 = distinct !DILexicalBlock(scope: !3036, file: !414, line: 37, column: 5)
!3044 = !DILocation(line: 36, column: 35, scope: !3036)
!3045 = !DILocation(line: 36, column: 3, scope: !3036)
!3046 = distinct !{!3046, !3039, !3047, !509}
!3047 = !DILocation(line: 45, column: 5, scope: !3029)
!3048 = distinct !DISubprogram(name: "base_len", scope: !414, file: !414, line: 51, type: !775, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3049)
!3049 = !{!3050, !3051, !3052}
!3050 = !DILocalVariable(name: "name", arg: 1, scope: !3048, file: !414, line: 51, type: !28)
!3051 = !DILocalVariable(name: "len", scope: !3048, file: !414, line: 53, type: !25)
!3052 = !DILocalVariable(name: "prefix_len", scope: !3048, file: !414, line: 61, type: !25)
!3053 = !DILocation(line: 0, scope: !3048)
!3054 = !DILocation(line: 54, column: 14, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3048, file: !414, line: 54, column: 3)
!3056 = !DILocation(line: 54, column: 8, scope: !3055)
!3057 = !DILocation(line: 0, scope: !3055)
!3058 = !DILocation(line: 54, column: 32, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !414, line: 54, column: 3)
!3060 = !DILocation(line: 54, column: 38, scope: !3059)
!3061 = !DILocation(line: 54, column: 41, scope: !3059)
!3062 = !DILocation(line: 54, column: 3, scope: !3055)
!3063 = distinct !{!3063, !3062, !3064, !509}
!3064 = !DILocation(line: 55, column: 5, scope: !3055)
!3065 = !DILocation(line: 66, column: 3, scope: !3048)
!3066 = distinct !DISubprogram(name: "close_stream", scope: !416, file: !416, line: 55, type: !3067, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !3103)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!30, !3069}
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !61, line: 7, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !63, line: 49, size: 1728, elements: !3072)
!3072 = !{!3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3071, file: !63, line: 51, baseType: !30, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3071, file: !63, line: 54, baseType: !22, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3071, file: !63, line: 55, baseType: !22, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3071, file: !63, line: 56, baseType: !22, size: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3071, file: !63, line: 57, baseType: !22, size: 64, offset: 256)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3071, file: !63, line: 58, baseType: !22, size: 64, offset: 320)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3071, file: !63, line: 59, baseType: !22, size: 64, offset: 384)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3071, file: !63, line: 60, baseType: !22, size: 64, offset: 448)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3071, file: !63, line: 61, baseType: !22, size: 64, offset: 512)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3071, file: !63, line: 64, baseType: !22, size: 64, offset: 576)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3071, file: !63, line: 65, baseType: !22, size: 64, offset: 640)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3071, file: !63, line: 66, baseType: !22, size: 64, offset: 704)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3071, file: !63, line: 68, baseType: !78, size: 64, offset: 768)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3071, file: !63, line: 70, baseType: !3087, size: 64, offset: 832)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3071, file: !63, line: 72, baseType: !30, size: 32, offset: 896)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3071, file: !63, line: 73, baseType: !30, size: 32, offset: 928)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3071, file: !63, line: 74, baseType: !85, size: 64, offset: 960)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3071, file: !63, line: 77, baseType: !31, size: 16, offset: 1024)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3071, file: !63, line: 78, baseType: !89, size: 8, offset: 1040)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3071, file: !63, line: 79, baseType: !91, size: 8, offset: 1048)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3071, file: !63, line: 81, baseType: !95, size: 64, offset: 1088)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3071, file: !63, line: 89, baseType: !98, size: 64, offset: 1152)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3071, file: !63, line: 91, baseType: !100, size: 64, offset: 1216)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3071, file: !63, line: 92, baseType: !103, size: 64, offset: 1280)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3071, file: !63, line: 93, baseType: !3087, size: 64, offset: 1344)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3071, file: !63, line: 94, baseType: !24, size: 64, offset: 1408)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3071, file: !63, line: 95, baseType: !25, size: 64, offset: 1472)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3071, file: !63, line: 96, baseType: !30, size: 32, offset: 1536)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3071, file: !63, line: 98, baseType: !110, size: 160, offset: 1568)
!3103 = !{!3104, !3105, !3107, !3108}
!3104 = !DILocalVariable(name: "stream", arg: 1, scope: !3066, file: !416, line: 55, type: !3069)
!3105 = !DILocalVariable(name: "some_pending", scope: !3066, file: !416, line: 57, type: !3106)
!3106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3107 = !DILocalVariable(name: "prev_fail", scope: !3066, file: !416, line: 58, type: !3106)
!3108 = !DILocalVariable(name: "fclose_fail", scope: !3066, file: !416, line: 59, type: !3106)
!3109 = !DILocation(line: 0, scope: !3066)
!3110 = !DILocation(line: 57, column: 30, scope: !3066)
!3111 = !DILocalVariable(name: "__stream", arg: 1, scope: !3112, file: !695, line: 135, type: !3069)
!3112 = distinct !DISubprogram(name: "ferror_unlocked", scope: !695, file: !695, line: 135, type: !3067, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !3113)
!3113 = !{!3111}
!3114 = !DILocation(line: 0, scope: !3112, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 58, column: 27, scope: !3066)
!3116 = !DILocation(line: 137, column: 10, scope: !3112, inlinedAt: !3115)
!3117 = !{!703, !544, i64 0}
!3118 = !DILocation(line: 58, column: 43, scope: !3066)
!3119 = !DILocation(line: 59, column: 29, scope: !3066)
!3120 = !DILocation(line: 59, column: 45, scope: !3066)
!3121 = !DILocation(line: 69, column: 17, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3066, file: !416, line: 69, column: 7)
!3123 = !DILocation(line: 57, column: 50, scope: !3066)
!3124 = !DILocation(line: 69, column: 33, scope: !3122)
!3125 = !DILocation(line: 69, column: 53, scope: !3122)
!3126 = !DILocation(line: 69, column: 59, scope: !3122)
!3127 = !DILocation(line: 69, column: 7, scope: !3066)
!3128 = !DILocation(line: 71, column: 11, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3122, file: !416, line: 70, column: 5)
!3130 = !DILocation(line: 72, column: 9, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3129, file: !416, line: 71, column: 11)
!3132 = !DILocation(line: 72, column: 15, scope: !3131)
!3133 = !DILocation(line: 77, column: 1, scope: !3066)
!3134 = distinct !DISubprogram(name: "rpl_fclose", scope: !418, file: !418, line: 58, type: !3135, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3171)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!30, !3137}
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !61, line: 7, baseType: !3139)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !63, line: 49, size: 1728, elements: !3140)
!3140 = !{!3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3139, file: !63, line: 51, baseType: !30, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3139, file: !63, line: 54, baseType: !22, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3139, file: !63, line: 55, baseType: !22, size: 64, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3139, file: !63, line: 56, baseType: !22, size: 64, offset: 192)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3139, file: !63, line: 57, baseType: !22, size: 64, offset: 256)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3139, file: !63, line: 58, baseType: !22, size: 64, offset: 320)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3139, file: !63, line: 59, baseType: !22, size: 64, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3139, file: !63, line: 60, baseType: !22, size: 64, offset: 448)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3139, file: !63, line: 61, baseType: !22, size: 64, offset: 512)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3139, file: !63, line: 64, baseType: !22, size: 64, offset: 576)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3139, file: !63, line: 65, baseType: !22, size: 64, offset: 640)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3139, file: !63, line: 66, baseType: !22, size: 64, offset: 704)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3139, file: !63, line: 68, baseType: !78, size: 64, offset: 768)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3139, file: !63, line: 70, baseType: !3155, size: 64, offset: 832)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3139, file: !63, line: 72, baseType: !30, size: 32, offset: 896)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3139, file: !63, line: 73, baseType: !30, size: 32, offset: 928)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3139, file: !63, line: 74, baseType: !85, size: 64, offset: 960)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3139, file: !63, line: 77, baseType: !31, size: 16, offset: 1024)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3139, file: !63, line: 78, baseType: !89, size: 8, offset: 1040)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3139, file: !63, line: 79, baseType: !91, size: 8, offset: 1048)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3139, file: !63, line: 81, baseType: !95, size: 64, offset: 1088)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3139, file: !63, line: 89, baseType: !98, size: 64, offset: 1152)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3139, file: !63, line: 91, baseType: !100, size: 64, offset: 1216)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3139, file: !63, line: 92, baseType: !103, size: 64, offset: 1280)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3139, file: !63, line: 93, baseType: !3155, size: 64, offset: 1344)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3139, file: !63, line: 94, baseType: !24, size: 64, offset: 1408)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3139, file: !63, line: 95, baseType: !25, size: 64, offset: 1472)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3139, file: !63, line: 96, baseType: !30, size: 32, offset: 1536)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3139, file: !63, line: 98, baseType: !110, size: 160, offset: 1568)
!3171 = !{!3172, !3173, !3174, !3175}
!3172 = !DILocalVariable(name: "fp", arg: 1, scope: !3134, file: !418, line: 58, type: !3137)
!3173 = !DILocalVariable(name: "saved_errno", scope: !3134, file: !418, line: 60, type: !30)
!3174 = !DILocalVariable(name: "fd", scope: !3134, file: !418, line: 63, type: !30)
!3175 = !DILocalVariable(name: "result", scope: !3134, file: !418, line: 74, type: !30)
!3176 = !DILocation(line: 0, scope: !3134)
!3177 = !DILocation(line: 63, column: 12, scope: !3134)
!3178 = !DILocation(line: 64, column: 10, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3134, file: !418, line: 64, column: 7)
!3180 = !DILocation(line: 64, column: 7, scope: !3134)
!3181 = !DILocation(line: 65, column: 12, scope: !3179)
!3182 = !DILocation(line: 65, column: 5, scope: !3179)
!3183 = !DILocation(line: 70, column: 9, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3134, file: !418, line: 70, column: 7)
!3185 = !DILocation(line: 70, column: 23, scope: !3184)
!3186 = !DILocation(line: 70, column: 33, scope: !3184)
!3187 = !DILocation(line: 70, column: 26, scope: !3184)
!3188 = !DILocation(line: 70, column: 59, scope: !3184)
!3189 = !DILocation(line: 71, column: 7, scope: !3184)
!3190 = !DILocation(line: 71, column: 10, scope: !3184)
!3191 = !DILocation(line: 70, column: 7, scope: !3134)
!3192 = !DILocation(line: 100, column: 12, scope: !3134)
!3193 = !DILocation(line: 105, column: 7, scope: !3134)
!3194 = !DILocation(line: 72, column: 19, scope: !3184)
!3195 = !DILocation(line: 105, column: 19, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3134, file: !418, line: 105, column: 7)
!3197 = !DILocation(line: 107, column: 13, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3196, file: !418, line: 106, column: 5)
!3199 = !DILocation(line: 109, column: 5, scope: !3198)
!3200 = !DILocation(line: 112, column: 1, scope: !3134)
!3201 = !DISubprogram(name: "fileno", scope: !181, file: !181, line: 809, type: !3135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!3202 = !DISubprogram(name: "fclose", scope: !181, file: !181, line: 178, type: !3135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!3203 = !DISubprogram(name: "lseek", scope: !3204, file: !3204, line: 339, type: !3205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!3204 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!85, !30, !85, !30}
!3207 = distinct !DISubprogram(name: "rpl_fflush", scope: !420, file: !420, line: 130, type: !3208, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !3244)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!30, !3210}
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !61, line: 7, baseType: !3212)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !63, line: 49, size: 1728, elements: !3213)
!3213 = !{!3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3212, file: !63, line: 51, baseType: !30, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3212, file: !63, line: 54, baseType: !22, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3212, file: !63, line: 55, baseType: !22, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3212, file: !63, line: 56, baseType: !22, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3212, file: !63, line: 57, baseType: !22, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3212, file: !63, line: 58, baseType: !22, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3212, file: !63, line: 59, baseType: !22, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3212, file: !63, line: 60, baseType: !22, size: 64, offset: 448)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3212, file: !63, line: 61, baseType: !22, size: 64, offset: 512)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3212, file: !63, line: 64, baseType: !22, size: 64, offset: 576)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3212, file: !63, line: 65, baseType: !22, size: 64, offset: 640)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3212, file: !63, line: 66, baseType: !22, size: 64, offset: 704)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3212, file: !63, line: 68, baseType: !78, size: 64, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3212, file: !63, line: 70, baseType: !3228, size: 64, offset: 832)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3212, file: !63, line: 72, baseType: !30, size: 32, offset: 896)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3212, file: !63, line: 73, baseType: !30, size: 32, offset: 928)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3212, file: !63, line: 74, baseType: !85, size: 64, offset: 960)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3212, file: !63, line: 77, baseType: !31, size: 16, offset: 1024)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3212, file: !63, line: 78, baseType: !89, size: 8, offset: 1040)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3212, file: !63, line: 79, baseType: !91, size: 8, offset: 1048)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3212, file: !63, line: 81, baseType: !95, size: 64, offset: 1088)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3212, file: !63, line: 89, baseType: !98, size: 64, offset: 1152)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3212, file: !63, line: 91, baseType: !100, size: 64, offset: 1216)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3212, file: !63, line: 92, baseType: !103, size: 64, offset: 1280)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3212, file: !63, line: 93, baseType: !3228, size: 64, offset: 1344)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3212, file: !63, line: 94, baseType: !24, size: 64, offset: 1408)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3212, file: !63, line: 95, baseType: !25, size: 64, offset: 1472)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3212, file: !63, line: 96, baseType: !30, size: 32, offset: 1536)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3212, file: !63, line: 98, baseType: !110, size: 160, offset: 1568)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "stream", arg: 1, scope: !3207, file: !420, line: 130, type: !3210)
!3246 = !DILocation(line: 0, scope: !3207)
!3247 = !DILocation(line: 151, column: 14, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3207, file: !420, line: 151, column: 7)
!3249 = !DILocation(line: 151, column: 22, scope: !3248)
!3250 = !DILocation(line: 151, column: 27, scope: !3248)
!3251 = !DILocation(line: 151, column: 7, scope: !3207)
!3252 = !DILocation(line: 152, column: 12, scope: !3248)
!3253 = !DILocation(line: 152, column: 5, scope: !3248)
!3254 = !DILocalVariable(name: "fp", arg: 1, scope: !3255, file: !420, line: 42, type: !3210)
!3255 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !420, file: !420, line: 42, type: !3256, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{null, !3210}
!3258 = !{!3254}
!3259 = !DILocation(line: 0, scope: !3255, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 157, column: 3, scope: !3207)
!3261 = !DILocation(line: 44, column: 12, scope: !3262, inlinedAt: !3260)
!3262 = distinct !DILexicalBlock(scope: !3255, file: !420, line: 44, column: 7)
!3263 = !DILocation(line: 44, column: 19, scope: !3262, inlinedAt: !3260)
!3264 = !DILocation(line: 44, column: 7, scope: !3255, inlinedAt: !3260)
!3265 = !DILocation(line: 46, column: 5, scope: !3262, inlinedAt: !3260)
!3266 = !DILocation(line: 159, column: 10, scope: !3207)
!3267 = !DILocation(line: 159, column: 3, scope: !3207)
!3268 = !DILocation(line: 236, column: 1, scope: !3207)
!3269 = !DISubprogram(name: "fflush", scope: !181, file: !181, line: 230, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!3270 = distinct !DISubprogram(name: "rpl_fseeko", scope: !422, file: !422, line: 28, type: !3271, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3308)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!30, !3273, !3307, !30}
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !61, line: 7, baseType: !3275)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !63, line: 49, size: 1728, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3275, file: !63, line: 51, baseType: !30, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3275, file: !63, line: 54, baseType: !22, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3275, file: !63, line: 55, baseType: !22, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3275, file: !63, line: 56, baseType: !22, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3275, file: !63, line: 57, baseType: !22, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3275, file: !63, line: 58, baseType: !22, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3275, file: !63, line: 59, baseType: !22, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3275, file: !63, line: 60, baseType: !22, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3275, file: !63, line: 61, baseType: !22, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3275, file: !63, line: 64, baseType: !22, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3275, file: !63, line: 65, baseType: !22, size: 64, offset: 640)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3275, file: !63, line: 66, baseType: !22, size: 64, offset: 704)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3275, file: !63, line: 68, baseType: !78, size: 64, offset: 768)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3275, file: !63, line: 70, baseType: !3291, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3275, file: !63, line: 72, baseType: !30, size: 32, offset: 896)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3275, file: !63, line: 73, baseType: !30, size: 32, offset: 928)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3275, file: !63, line: 74, baseType: !85, size: 64, offset: 960)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3275, file: !63, line: 77, baseType: !31, size: 16, offset: 1024)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3275, file: !63, line: 78, baseType: !89, size: 8, offset: 1040)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3275, file: !63, line: 79, baseType: !91, size: 8, offset: 1048)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3275, file: !63, line: 81, baseType: !95, size: 64, offset: 1088)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3275, file: !63, line: 89, baseType: !98, size: 64, offset: 1152)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3275, file: !63, line: 91, baseType: !100, size: 64, offset: 1216)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3275, file: !63, line: 92, baseType: !103, size: 64, offset: 1280)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3275, file: !63, line: 93, baseType: !3291, size: 64, offset: 1344)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3275, file: !63, line: 94, baseType: !24, size: 64, offset: 1408)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3275, file: !63, line: 95, baseType: !25, size: 64, offset: 1472)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3275, file: !63, line: 96, baseType: !30, size: 32, offset: 1536)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3275, file: !63, line: 98, baseType: !110, size: 160, offset: 1568)
!3307 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !181, line: 63, baseType: !85)
!3308 = !{!3309, !3310, !3311, !3312}
!3309 = !DILocalVariable(name: "fp", arg: 1, scope: !3270, file: !422, line: 28, type: !3273)
!3310 = !DILocalVariable(name: "offset", arg: 2, scope: !3270, file: !422, line: 28, type: !3307)
!3311 = !DILocalVariable(name: "whence", arg: 3, scope: !3270, file: !422, line: 28, type: !30)
!3312 = !DILocalVariable(name: "pos", scope: !3313, file: !422, line: 123, type: !3307)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !422, line: 119, column: 5)
!3314 = distinct !DILexicalBlock(scope: !3270, file: !422, line: 55, column: 7)
!3315 = !DILocation(line: 0, scope: !3270)
!3316 = !DILocation(line: 55, column: 12, scope: !3314)
!3317 = !{!703, !456, i64 16}
!3318 = !DILocation(line: 55, column: 33, scope: !3314)
!3319 = !{!703, !456, i64 8}
!3320 = !DILocation(line: 55, column: 25, scope: !3314)
!3321 = !DILocation(line: 56, column: 7, scope: !3314)
!3322 = !DILocation(line: 56, column: 15, scope: !3314)
!3323 = !DILocation(line: 56, column: 37, scope: !3314)
!3324 = !{!703, !456, i64 32}
!3325 = !DILocation(line: 56, column: 29, scope: !3314)
!3326 = !DILocation(line: 57, column: 7, scope: !3314)
!3327 = !DILocation(line: 57, column: 15, scope: !3314)
!3328 = !{!703, !456, i64 72}
!3329 = !DILocation(line: 57, column: 29, scope: !3314)
!3330 = !DILocation(line: 55, column: 7, scope: !3270)
!3331 = !DILocation(line: 123, column: 26, scope: !3313)
!3332 = !DILocation(line: 123, column: 19, scope: !3313)
!3333 = !DILocation(line: 0, scope: !3313)
!3334 = !DILocation(line: 124, column: 15, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3313, file: !422, line: 124, column: 11)
!3336 = !DILocation(line: 124, column: 11, scope: !3313)
!3337 = !DILocation(line: 135, column: 12, scope: !3313)
!3338 = !DILocation(line: 135, column: 19, scope: !3313)
!3339 = !DILocation(line: 136, column: 12, scope: !3313)
!3340 = !DILocation(line: 136, column: 20, scope: !3313)
!3341 = !{!703, !704, i64 144}
!3342 = !DILocation(line: 167, column: 7, scope: !3313)
!3343 = !DILocation(line: 169, column: 10, scope: !3270)
!3344 = !DILocation(line: 169, column: 3, scope: !3270)
!3345 = !DILocation(line: 170, column: 1, scope: !3270)
!3346 = !DISubprogram(name: "fseeko", scope: !181, file: !181, line: 736, type: !3347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!30, !3273, !85, !30}
!3349 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !356, file: !356, line: 100, type: !3350, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !3353)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!25, !1130, !28, !25, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!3353 = !{!3354, !3355, !3356, !3357, !3358}
!3354 = !DILocalVariable(name: "pwc", arg: 1, scope: !3349, file: !356, line: 100, type: !1130)
!3355 = !DILocalVariable(name: "s", arg: 2, scope: !3349, file: !356, line: 100, type: !28)
!3356 = !DILocalVariable(name: "n", arg: 3, scope: !3349, file: !356, line: 100, type: !25)
!3357 = !DILocalVariable(name: "ps", arg: 4, scope: !3349, file: !356, line: 100, type: !3352)
!3358 = !DILocalVariable(name: "ret", scope: !3349, file: !356, line: 130, type: !25)
!3359 = !DILocation(line: 0, scope: !3349)
!3360 = !DILocation(line: 105, column: 9, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3349, file: !356, line: 105, column: 7)
!3362 = !DILocation(line: 105, column: 7, scope: !3349)
!3363 = !DILocation(line: 117, column: 10, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3349, file: !356, line: 117, column: 7)
!3365 = !DILocation(line: 117, column: 7, scope: !3349)
!3366 = !DILocation(line: 130, column: 16, scope: !3349)
!3367 = !DILocation(line: 135, column: 11, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3349, file: !356, line: 135, column: 7)
!3369 = !DILocation(line: 135, column: 25, scope: !3368)
!3370 = !DILocation(line: 135, column: 30, scope: !3368)
!3371 = !DILocation(line: 135, column: 7, scope: !3349)
!3372 = !DILocalVariable(name: "ps", arg: 1, scope: !3373, file: !1104, line: 1135, type: !3352)
!3373 = distinct !DISubprogram(name: "mbszero", scope: !1104, file: !1104, line: 1135, type: !3374, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3352}
!3376 = !{!3372}
!3377 = !DILocation(line: 0, scope: !3373, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 137, column: 5, scope: !3368)
!3379 = !DILocalVariable(name: "__dest", arg: 1, scope: !3380, file: !827, line: 57, type: !24)
!3380 = distinct !DISubprogram(name: "memset", scope: !827, file: !827, line: 57, type: !1113, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !3381)
!3381 = !{!3379, !3382, !3383}
!3382 = !DILocalVariable(name: "__ch", arg: 2, scope: !3380, file: !827, line: 57, type: !30)
!3383 = !DILocalVariable(name: "__len", arg: 3, scope: !3380, file: !827, line: 57, type: !25)
!3384 = !DILocation(line: 0, scope: !3380, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 1137, column: 3, scope: !3373, inlinedAt: !3378)
!3386 = !DILocation(line: 59, column: 10, scope: !3380, inlinedAt: !3385)
!3387 = !DILocation(line: 137, column: 5, scope: !3368)
!3388 = !DILocation(line: 138, column: 11, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3349, file: !356, line: 138, column: 7)
!3390 = !DILocation(line: 138, column: 7, scope: !3349)
!3391 = !DILocation(line: 139, column: 5, scope: !3389)
!3392 = !DILocation(line: 143, column: 26, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3349, file: !356, line: 143, column: 7)
!3394 = !DILocation(line: 143, column: 41, scope: !3393)
!3395 = !DILocation(line: 143, column: 7, scope: !3349)
!3396 = !DILocation(line: 145, column: 15, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !356, line: 145, column: 11)
!3398 = distinct !DILexicalBlock(scope: !3393, file: !356, line: 144, column: 5)
!3399 = !DILocation(line: 145, column: 11, scope: !3398)
!3400 = !DILocation(line: 146, column: 32, scope: !3397)
!3401 = !DILocation(line: 146, column: 16, scope: !3397)
!3402 = !DILocation(line: 146, column: 14, scope: !3397)
!3403 = !DILocation(line: 146, column: 9, scope: !3397)
!3404 = !DILocation(line: 286, column: 1, scope: !3349)
!3405 = !DISubprogram(name: "mbsinit", scope: !3406, file: !3406, line: 293, type: !3407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !535)
!3406 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!30, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!3411 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !424, file: !424, line: 27, type: !2586, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3412)
!3412 = !{!3413, !3414, !3415, !3416}
!3413 = !DILocalVariable(name: "ptr", arg: 1, scope: !3411, file: !424, line: 27, type: !24)
!3414 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3411, file: !424, line: 27, type: !25)
!3415 = !DILocalVariable(name: "size", arg: 3, scope: !3411, file: !424, line: 27, type: !25)
!3416 = !DILocalVariable(name: "nbytes", scope: !3411, file: !424, line: 29, type: !25)
!3417 = !DILocation(line: 0, scope: !3411)
!3418 = !DILocation(line: 30, column: 7, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3411, file: !424, line: 30, column: 7)
!3420 = !DILocalVariable(name: "ptr", arg: 1, scope: !3421, file: !2677, line: 2057, type: !24)
!3421 = distinct !DISubprogram(name: "rpl_realloc", scope: !2677, file: !2677, line: 2057, type: !2669, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3422)
!3422 = !{!3420, !3423}
!3423 = !DILocalVariable(name: "size", arg: 2, scope: !3421, file: !2677, line: 2057, type: !25)
!3424 = !DILocation(line: 0, scope: !3421, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 37, column: 10, scope: !3411)
!3426 = !DILocation(line: 2059, column: 24, scope: !3421, inlinedAt: !3425)
!3427 = !DILocation(line: 2059, column: 10, scope: !3421, inlinedAt: !3425)
!3428 = !DILocation(line: 37, column: 3, scope: !3411)
!3429 = !DILocation(line: 32, column: 7, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3419, file: !424, line: 31, column: 5)
!3431 = !DILocation(line: 32, column: 13, scope: !3430)
!3432 = !DILocation(line: 33, column: 7, scope: !3430)
!3433 = !DILocation(line: 38, column: 1, scope: !3411)
!3434 = distinct !DISubprogram(name: "hard_locale", scope: !427, file: !427, line: 28, type: !3435, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!44, !30}
!3437 = !{!3438, !3439}
!3438 = !DILocalVariable(name: "category", arg: 1, scope: !3434, file: !427, line: 28, type: !30)
!3439 = !DILocalVariable(name: "locale", scope: !3434, file: !427, line: 30, type: !3440)
!3440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !3441)
!3441 = !{!3442}
!3442 = !DISubrange(count: 257)
!3443 = !DILocation(line: 0, scope: !3434)
!3444 = !DILocation(line: 30, column: 3, scope: !3434)
!3445 = !DILocation(line: 30, column: 8, scope: !3434)
!3446 = !DILocation(line: 32, column: 7, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3434, file: !427, line: 32, column: 7)
!3448 = !DILocation(line: 32, column: 7, scope: !3434)
!3449 = !DILocalVariable(name: "__s1", arg: 1, scope: !3450, file: !493, line: 1359, type: !28)
!3450 = distinct !DISubprogram(name: "streq", scope: !493, file: !493, line: 1359, type: !494, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3451)
!3451 = !{!3449, !3452}
!3452 = !DILocalVariable(name: "__s2", arg: 2, scope: !3450, file: !493, line: 1359, type: !28)
!3453 = !DILocation(line: 0, scope: !3450, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 35, column: 9, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3434, file: !427, line: 35, column: 7)
!3456 = !DILocation(line: 1361, column: 11, scope: !3450, inlinedAt: !3454)
!3457 = !DILocation(line: 1361, column: 10, scope: !3450, inlinedAt: !3454)
!3458 = !DILocation(line: 35, column: 29, scope: !3455)
!3459 = !DILocation(line: 0, scope: !3450, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 35, column: 32, scope: !3455)
!3461 = !DILocation(line: 1361, column: 11, scope: !3450, inlinedAt: !3460)
!3462 = !DILocation(line: 1361, column: 10, scope: !3450, inlinedAt: !3460)
!3463 = !DILocation(line: 35, column: 7, scope: !3434)
!3464 = !DILocation(line: 46, column: 3, scope: !3434)
!3465 = !DILocation(line: 47, column: 1, scope: !3434)
!3466 = distinct !DISubprogram(name: "setlocale_null_r", scope: !429, file: !429, line: 154, type: !3467, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!30, !30, !22, !25}
!3469 = !{!3470, !3471, !3472}
!3470 = !DILocalVariable(name: "category", arg: 1, scope: !3466, file: !429, line: 154, type: !30)
!3471 = !DILocalVariable(name: "buf", arg: 2, scope: !3466, file: !429, line: 154, type: !22)
!3472 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3466, file: !429, line: 154, type: !25)
!3473 = !DILocation(line: 0, scope: !3466)
!3474 = !DILocation(line: 159, column: 10, scope: !3466)
!3475 = !DILocation(line: 159, column: 3, scope: !3466)
!3476 = distinct !DISubprogram(name: "setlocale_null", scope: !429, file: !429, line: 186, type: !3477, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!28, !30}
!3479 = !{!3480}
!3480 = !DILocalVariable(name: "category", arg: 1, scope: !3476, file: !429, line: 186, type: !30)
!3481 = !DILocation(line: 0, scope: !3476)
!3482 = !DILocation(line: 189, column: 10, scope: !3476)
!3483 = !DILocation(line: 189, column: 3, scope: !3476)
!3484 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !431, file: !431, line: 35, type: !3477, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !3485)
!3485 = !{!3486, !3487}
!3486 = !DILocalVariable(name: "category", arg: 1, scope: !3484, file: !431, line: 35, type: !30)
!3487 = !DILocalVariable(name: "result", scope: !3484, file: !431, line: 37, type: !28)
!3488 = !DILocation(line: 0, scope: !3484)
!3489 = !DILocation(line: 37, column: 24, scope: !3484)
!3490 = !DILocation(line: 62, column: 3, scope: !3484)
!3491 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !431, file: !431, line: 66, type: !3467, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !3492)
!3492 = !{!3493, !3494, !3495, !3496, !3497}
!3493 = !DILocalVariable(name: "category", arg: 1, scope: !3491, file: !431, line: 66, type: !30)
!3494 = !DILocalVariable(name: "buf", arg: 2, scope: !3491, file: !431, line: 66, type: !22)
!3495 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3491, file: !431, line: 66, type: !25)
!3496 = !DILocalVariable(name: "result", scope: !3491, file: !431, line: 111, type: !28)
!3497 = !DILocalVariable(name: "length", scope: !3498, file: !431, line: 125, type: !25)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !431, line: 124, column: 5)
!3499 = distinct !DILexicalBlock(scope: !3491, file: !431, line: 113, column: 7)
!3500 = !DILocation(line: 0, scope: !3491)
!3501 = !DILocation(line: 0, scope: !3484, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 111, column: 24, scope: !3491)
!3503 = !DILocation(line: 37, column: 24, scope: !3484, inlinedAt: !3502)
!3504 = !DILocation(line: 113, column: 14, scope: !3499)
!3505 = !DILocation(line: 113, column: 7, scope: !3491)
!3506 = !DILocation(line: 116, column: 19, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !431, line: 116, column: 11)
!3508 = distinct !DILexicalBlock(scope: !3499, file: !431, line: 114, column: 5)
!3509 = !DILocation(line: 116, column: 11, scope: !3508)
!3510 = !DILocation(line: 120, column: 16, scope: !3507)
!3511 = !DILocation(line: 120, column: 9, scope: !3507)
!3512 = !DILocation(line: 125, column: 23, scope: !3498)
!3513 = !DILocation(line: 0, scope: !3498)
!3514 = !DILocation(line: 126, column: 18, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3498, file: !431, line: 126, column: 11)
!3516 = !DILocation(line: 126, column: 11, scope: !3498)
!3517 = !DILocation(line: 128, column: 39, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3515, file: !431, line: 127, column: 9)
!3519 = !DILocalVariable(name: "__dest", arg: 1, scope: !3520, file: !827, line: 26, type: !830)
!3520 = distinct !DISubprogram(name: "memcpy", scope: !827, file: !827, line: 26, type: !828, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !3521)
!3521 = !{!3519, !3522, !3523}
!3522 = !DILocalVariable(name: "__src", arg: 2, scope: !3520, file: !827, line: 26, type: !660)
!3523 = !DILocalVariable(name: "__len", arg: 3, scope: !3520, file: !827, line: 26, type: !25)
!3524 = !DILocation(line: 0, scope: !3520, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 128, column: 11, scope: !3518)
!3526 = !DILocation(line: 29, column: 10, scope: !3520, inlinedAt: !3525)
!3527 = !DILocation(line: 129, column: 11, scope: !3518)
!3528 = !DILocation(line: 133, column: 23, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !431, line: 133, column: 15)
!3530 = distinct !DILexicalBlock(scope: !3515, file: !431, line: 132, column: 9)
!3531 = !DILocation(line: 133, column: 15, scope: !3530)
!3532 = !DILocation(line: 138, column: 44, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3529, file: !431, line: 134, column: 13)
!3534 = !DILocation(line: 0, scope: !3520, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 138, column: 15, scope: !3533)
!3536 = !DILocation(line: 29, column: 10, scope: !3520, inlinedAt: !3535)
!3537 = !DILocation(line: 139, column: 15, scope: !3533)
!3538 = !DILocation(line: 139, column: 32, scope: !3533)
!3539 = !DILocation(line: 140, column: 13, scope: !3533)
!3540 = !DILocation(line: 0, scope: !3499)
!3541 = !DILocation(line: 145, column: 1, scope: !3491)
