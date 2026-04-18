; ModuleID = 'src/hostid.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Usage: %s [OPTION]\0APrint the numeric identifier (in hexadecimal) for the current host.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hostid\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !0
@.str.12 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.34 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.43 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !119
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !124
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !129
@.str.20 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.21 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.22 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !131
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !167
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !137
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !163
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !165
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.47 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.48, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.49, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !172
@optind = external local_unnamed_addr global i32, align 4
@.str.1.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.48 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.49 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !189
@.str.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !195
@.str.61 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.62 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.63 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.64 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.65 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.66 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.67 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.68 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.69 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.70 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.62, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.64, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.65, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.70, i32 0, i32 0), i8* null], align 8, !dbg !231
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !257
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !275
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !305
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !312
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !277
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !314
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !263
@.str.10.73 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.71 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.74 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.72 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !282
@.str.79 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.81 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.82 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.83 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.84 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.85 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.86 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.87 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.88 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.89 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.90 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.91 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.92 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.93 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.94 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.95 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.100 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !320
@exit_failure = dso_local global i32 1, align 4, !dbg !328
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.112 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.125 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !334
@.str.130 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !424 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !428, metadata !DIExpression()), !dbg !429
  %3 = icmp eq i32 %0, 0, !dbg !430
  br i1 %3, label %9, label %4, !dbg !432

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !433, !tbaa !435
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !433
  %7 = load i8*, i8** @program_name, align 8, !dbg !433, !tbaa !435
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !433
  br label %49, !dbg !433

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !439
  %11 = load i8*, i8** @program_name, align 8, !dbg !439, !tbaa !435
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !439
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 noundef 5) #32, !dbg !441
  tail call fastcc void @oputs_(i8* noundef %13), !dbg !441
  %14 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !442
  tail call fastcc void @oputs_(i8* noundef %14), !dbg !442
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !462
  %15 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !464
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %15) #32, !dbg !464
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !448, metadata !DIExpression()) #32, !dbg !465
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %15, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !465
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !457, metadata !DIExpression()) #32, !dbg !462
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !458, metadata !DIExpression()) #32, !dbg !462
  %16 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !466
  call void @llvm.dbg.value(metadata %struct.infomap* %16, metadata !458, metadata !DIExpression()) #32, !dbg !462
  br label %17, !dbg !467

17:                                               ; preds = %22, %9
  %18 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %19 = phi %struct.infomap* [ %23, %22 ], [ %16, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !458, metadata !DIExpression()) #32, !dbg !462
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !475
  call void @llvm.dbg.value(metadata i8* %18, metadata !474, metadata !DIExpression()) #32, !dbg !475
  %20 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %18) #33, !dbg !477
  %21 = icmp eq i32 %20, 0, !dbg !478
  br i1 %21, label %27, label %22, !dbg !467

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.infomap, %struct.infomap* %19, i64 1, !dbg !479
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !458, metadata !DIExpression()) #32, !dbg !462
  %24 = getelementptr inbounds %struct.infomap, %struct.infomap* %23, i64 0, i32 0, !dbg !480
  %25 = load i8*, i8** %24, align 8, !dbg !480, !tbaa !481
  %26 = icmp eq i8* %25, null, !dbg !483
  br i1 %26, label %27, label %17, !dbg !484, !llvm.loop !485

27:                                               ; preds = %22, %17
  %28 = phi %struct.infomap* [ %19, %17 ], [ %23, %22 ]
  %29 = getelementptr inbounds %struct.infomap, %struct.infomap* %28, i64 0, i32 1, !dbg !487
  %30 = load i8*, i8** %29, align 8, !dbg !487, !tbaa !489
  %31 = icmp eq i8* %30, null, !dbg !490
  %32 = select i1 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %30, !dbg !491
  call void @llvm.dbg.value(metadata i8* %32, metadata !457, metadata !DIExpression()) #32, !dbg !462
  tail call void @emit_bug_reporting_address() #32, !dbg !492
  %33 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !493
  call void @llvm.dbg.value(metadata i8* %33, metadata !460, metadata !DIExpression()) #32, !dbg !462
  %34 = icmp eq i8* %33, null, !dbg !494
  br i1 %34, label %42, label %35, !dbg !496

35:                                               ; preds = %27
  %36 = tail call i32 @strncmp(i8* noundef nonnull %33, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i64 noundef 3) #33, !dbg !497
  %37 = icmp eq i32 %36, 0, !dbg !497
  br i1 %37, label %42, label %38, !dbg !498

38:                                               ; preds = %35
  %39 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.43, i64 0, i64 0), i32 noundef 5) #32, !dbg !499
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !499, !tbaa !435
  %41 = tail call i32 @fputs_unlocked(i8* noundef %39, %struct._IO_FILE* noundef %40) #32, !dbg !499
  br label %42, !dbg !501

42:                                               ; preds = %27, %35, %38
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !502
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), metadata !474, metadata !DIExpression()) #32, !dbg !502
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !461, metadata !DIExpression()) #32, !dbg !462
  %43 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i32 noundef 5) #32, !dbg !504
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %43, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #32, !dbg !504
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #32, !dbg !505
  %46 = icmp eq i8* %32, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), !dbg !505
  %47 = select i1 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !505
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %45, i8* noundef %32, i8* noundef %47) #32, !dbg !505
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %15) #32, !dbg !506
  br label %49

49:                                               ; preds = %42, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !507
  unreachable, !dbg !507
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !508 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #4 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !38, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i8* %0, metadata !39, metadata !DIExpression()), !dbg !513
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !514, !tbaa !515
  %3 = icmp eq i32 %2, -1, !dbg !517
  br i1 %3, label %4, label %16, !dbg !518

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #32, !dbg !519
  call void @llvm.dbg.value(metadata i8* %5, metadata !40, metadata !DIExpression()), !dbg !520
  %6 = icmp eq i8* %5, null, !dbg !521
  br i1 %6, label %14, label %7, !dbg !522

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !523, !tbaa !524
  %9 = icmp eq i8 %8, 0, !dbg !523
  br i1 %9, label %14, label %10, !dbg !525

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !468, metadata !DIExpression()) #32, !dbg !526
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), metadata !474, metadata !DIExpression()) #32, !dbg !526
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #33, !dbg !528
  %12 = icmp eq i32 %11, 0, !dbg !529
  %13 = zext i1 %12 to i32, !dbg !525
  br label %14, !dbg !525

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !530, !tbaa !515
  br label %16, !dbg !531

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !532
  %18 = icmp eq i32 %17, 0, !dbg !532
  br i1 %18, label %22, label %19, !dbg !534

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !535, !tbaa !435
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !535
  br label %121, !dbg !537

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !43, metadata !DIExpression()), !dbg !513
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #33, !dbg !538
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !539
  call void @llvm.dbg.value(metadata i8* %24, metadata !45, metadata !DIExpression()), !dbg !513
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !540
  call void @llvm.dbg.value(metadata i8* %25, metadata !46, metadata !DIExpression()), !dbg !513
  %26 = icmp eq i8* %25, null, !dbg !541
  br i1 %26, label %53, label %27, !dbg !542

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !543
  br i1 %28, label %53, label %29, !dbg !544

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !47, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()), !dbg !545
  %30 = icmp ult i8* %24, %25, !dbg !546
  br i1 %30, label %31, label %53, !dbg !547

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !513
  %33 = load i16*, i16** %32, align 8, !tbaa !435
  br label %34, !dbg !547

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !47, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i64 %36, metadata !51, metadata !DIExpression()), !dbg !545
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !548
  call void @llvm.dbg.value(metadata i8* %37, metadata !47, metadata !DIExpression()), !dbg !545
  %38 = load i8, i8* %35, align 1, !dbg !548, !tbaa !524
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !548
  %41 = load i16, i16* %40, align 2, !dbg !548, !tbaa !549
  %42 = lshr i16 %41, 13, !dbg !551
  %43 = and i16 %42, 1, !dbg !551
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !552
  call void @llvm.dbg.value(metadata i64 %45, metadata !51, metadata !DIExpression()), !dbg !545
  %46 = icmp ult i8* %37, %25, !dbg !546
  %47 = icmp ult i64 %45, 2, !dbg !553
  %48 = select i1 %46, i1 %47, i1 false, !dbg !553
  br i1 %48, label %34, label %49, !dbg !547, !llvm.loop !554

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !555
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !557
  %52 = xor i1 %50, true, !dbg !557
  br label %53, !dbg !557

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !513
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i8* %54, metadata !46, metadata !DIExpression()), !dbg !513
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #33, !dbg !558
  call void @llvm.dbg.value(metadata i64 %56, metadata !52, metadata !DIExpression()), !dbg !513
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !559
  call void @llvm.dbg.value(metadata i8* %57, metadata !53, metadata !DIExpression()), !dbg !513
  br label %58, !dbg !560

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !513
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i8* %59, metadata !53, metadata !DIExpression()), !dbg !513
  %61 = load i8, i8* %59, align 1, !dbg !561, !tbaa !524
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !562

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !563
  %64 = load i8, i8* %63, align 1, !dbg !566, !tbaa !524
  %65 = icmp ne i8 %64, 45, !dbg !567
  %66 = select i1 %65, i1 %60, i1 false, !dbg !568
  br label %67, !dbg !568

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !513
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !569
  %70 = load i16*, i16** %69, align 8, !dbg !569, !tbaa !435
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !569
  %73 = load i16, i16* %72, align 2, !dbg !569, !tbaa !549
  %74 = and i16 %73, 8192, !dbg !569
  %75 = icmp eq i16 %74, 0, !dbg !569
  br i1 %75, label %89, label %76, !dbg !571

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !572
  br i1 %77, label %91, label %78, !dbg !575

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !576
  %80 = load i8, i8* %79, align 1, !dbg !576, !tbaa !524
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !576
  %83 = load i16, i16* %82, align 2, !dbg !576, !tbaa !549
  %84 = and i16 %83, 8192, !dbg !576
  %85 = icmp eq i16 %84, 0, !dbg !576
  br i1 %85, label %86, label %91, !dbg !577

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !578
  br i1 %88, label %89, label %91, !dbg !578

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !580
  call void @llvm.dbg.value(metadata i8* %90, metadata !53, metadata !DIExpression()), !dbg !513
  br label %58, !dbg !560, !llvm.loop !581

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !583
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !583, !tbaa !435
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !583
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !584
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), metadata !474, metadata !DIExpression()) #32, !dbg !584
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !586
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !588
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !594
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !596
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !468, metadata !DIExpression()) #32, !dbg !602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), metadata !114, metadata !DIExpression()), !dbg !513
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i64 noundef 6) #33, !dbg !604
  %96 = icmp eq i32 %95, 0, !dbg !604
  br i1 %96, label %100, label %97, !dbg !606

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i64 noundef 9) #33, !dbg !607
  %99 = icmp eq i32 %98, 0, !dbg !607
  br i1 %99, label %100, label %103, !dbg !608

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !609
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !609
  br label %106, !dbg !611

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !612
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !612
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !435
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !614
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !615, !tbaa !435
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !615
  %111 = ptrtoint i8* %59 to i64, !dbg !616
  %112 = sub i64 %111, %92, !dbg !616
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !435
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !616
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !617, !tbaa !435
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !617
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !435
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !618
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619, !tbaa !435
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !619
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !620
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
declare !dbg !621 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !625 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !630 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !634 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !640 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !645, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i8** %1, metadata !646, metadata !DIExpression()), !dbg !648
  %3 = load i8*, i8** %1, align 8, !dbg !649, !tbaa !435
  tail call void @set_program_name(i8* noundef %3) #32, !dbg !650
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #32, !dbg !651
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !652
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #32, !dbg !653
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !654
  %8 = load i8*, i8** @Version, align 8, !dbg !655, !tbaa !435
  %9 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #32, !dbg !656
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* noundef %8, i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %9, i8* noundef null) #32, !dbg !657
  %10 = load i32, i32* @optind, align 4, !dbg !658, !tbaa !515
  %11 = icmp slt i32 %10, %0, !dbg !660
  br i1 %11, label %12, label %19, !dbg !661

12:                                               ; preds = %2
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #32, !dbg !662
  %14 = load i32, i32* @optind, align 4, !dbg !662, !tbaa !515
  %15 = sext i32 %14 to i64, !dbg !662
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !662
  %17 = load i8*, i8** %16, align 8, !dbg !662, !tbaa !435
  %18 = tail call i8* @quote(i8* noundef %17) #32, !dbg !662
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %13, i8* noundef %18) #32, !dbg !662
  tail call void @usage(i32 noundef 1) #36, !dbg !664
  unreachable, !dbg !664

19:                                               ; preds = %2
  %20 = tail call i64 @gethostid() #32, !dbg !665
  %21 = trunc i64 %20 to i32, !dbg !665
  call void @llvm.dbg.value(metadata i32 %21, metadata !647, metadata !DIExpression()), !dbg !648
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 noundef %21) #32, !dbg !666
  ret i32 0, !dbg !667
}

; Function Attrs: nounwind
declare !dbg !668 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !671 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !672 i32 @atexit(void ()* noundef) local_unnamed_addr #2

declare !dbg !675 i64 @gethostid() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !679 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !681, metadata !DIExpression()), !dbg !682
  store i8* %0, i8** @file_name, align 8, !dbg !683, !tbaa !435
  ret void, !dbg !684
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !685 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !689, metadata !DIExpression()), !dbg !690
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !691, !tbaa !692
  ret void, !dbg !694
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !695 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !700, !tbaa !435
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !701
  %3 = icmp eq i32 %2, 0, !dbg !702
  br i1 %3, label %22, label %4, !dbg !703

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !704, !tbaa !692, !range !705
  %6 = icmp eq i8 %5, 0, !dbg !704
  br i1 %6, label %11, label %7, !dbg !706

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !707
  %9 = load i32, i32* %8, align 4, !dbg !707, !tbaa !515
  %10 = icmp eq i32 %9, 32, !dbg !708
  br i1 %10, label %22, label %11, !dbg !709

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.21, i64 0, i64 0), i32 noundef 5) #32, !dbg !710
  call void @llvm.dbg.value(metadata i8* %12, metadata !697, metadata !DIExpression()), !dbg !711
  %13 = load i8*, i8** @file_name, align 8, !dbg !712, !tbaa !435
  %14 = icmp eq i8* %13, null, !dbg !712
  %15 = tail call i32* @__errno_location() #35, !dbg !714
  %16 = load i32, i32* %15, align 4, !dbg !714, !tbaa !515
  br i1 %14, label %19, label %17, !dbg !715

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !716
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.22, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !716
  br label %20, !dbg !716

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.23, i64 0, i64 0), i8* noundef %12) #32, !dbg !717
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !718, !tbaa !515
  tail call void @_exit(i32 noundef %21) #34, !dbg !719
  unreachable, !dbg !719

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !720, !tbaa !435
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !722
  %25 = icmp eq i32 %24, 0, !dbg !723
  br i1 %25, label %28, label %26, !dbg !724

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !725, !tbaa !515
  tail call void @_exit(i32 noundef %27) #34, !dbg !726
  unreachable, !dbg !726

28:                                               ; preds = %22
  ret void, !dbg !727
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !728 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !732, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32 %1, metadata !733, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i8* %2, metadata !734, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !735, metadata !DIExpression()), !dbg !737
  tail call fastcc void @flush_stdout(), !dbg !738
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !739, !tbaa !435
  %7 = icmp eq void ()* %6, null, !dbg !739
  br i1 %7, label %9, label %8, !dbg !741

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !742
  br label %13, !dbg !742

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !743, !tbaa !435
  %11 = tail call i8* @getprogname() #33, !dbg !743
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* noundef %11) #32, !dbg !743
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !745
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !745
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !745
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !745, !tbaa.struct !746
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !745
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !745
  ret void, !dbg !747
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !748 {
  call void @llvm.dbg.value(metadata i32 1, metadata !750, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i32 1, metadata !752, metadata !DIExpression()) #32, !dbg !757
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !760
  %2 = icmp slt i32 %1, 0, !dbg !761
  br i1 %2, label %6, label %3, !dbg !762

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !435
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !763
  br label %6, !dbg !763

6:                                                ; preds = %3, %0
  ret void, !dbg !764
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !765 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !767, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i32 %1, metadata !768, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %2, metadata !769, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !770, metadata !DIExpression()), !dbg !772
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !773, !tbaa !435
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !774
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !775, metadata !DIExpression()) #32, !dbg !818
  call void @llvm.dbg.value(metadata i8* %2, metadata !816, metadata !DIExpression()) #32, !dbg !818
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !820, !noalias !821
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !820
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !820
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !820, !noalias !821
  %11 = load i32, i32* @error_message_count, align 4, !dbg !825, !tbaa !515
  %12 = add i32 %11, 1, !dbg !825
  store i32 %12, i32* @error_message_count, align 4, !dbg !825, !tbaa !515
  %13 = icmp eq i32 %1, 0, !dbg !826
  br i1 %13, label %24, label %14, !dbg !828

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !829, metadata !DIExpression()) #32, !dbg !837
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !839
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !839
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !833, metadata !DIExpression()) #32, !dbg !840
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !841
  call void @llvm.dbg.value(metadata i8* %16, metadata !832, metadata !DIExpression()) #32, !dbg !837
  %17 = icmp eq i8* %16, null, !dbg !842
  br i1 %17, label %18, label %20, !dbg !844

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.26, i64 0, i64 0), i32 noundef 5) #32, !dbg !845
  call void @llvm.dbg.value(metadata i8* %19, metadata !832, metadata !DIExpression()) #32, !dbg !837
  br label %20, !dbg !846

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !837
  call void @llvm.dbg.value(metadata i8* %21, metadata !832, metadata !DIExpression()) #32, !dbg !837
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !847, !tbaa !435
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.27, i64 0, i64 0), i8* noundef %21) #32, !dbg !847
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !848
  br label %24, !dbg !849

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !850, !tbaa !435
  call void @llvm.dbg.value(metadata i32 10, metadata !851, metadata !DIExpression()) #32, !dbg !858
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !857, metadata !DIExpression()) #32, !dbg !858
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !860
  %27 = load i8*, i8** %26, align 8, !dbg !860, !tbaa !861
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !860
  %29 = load i8*, i8** %28, align 8, !dbg !860, !tbaa !864
  %30 = icmp ult i8* %27, %29, !dbg !860
  br i1 %30, label %33, label %31, !dbg !860, !prof !865

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !860
  br label %35, !dbg !860

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !860
  store i8* %34, i8** %26, align 8, !dbg !860, !tbaa !861
  store i8 10, i8* %27, align 1, !dbg !860, !tbaa !524
  br label %35, !dbg !860

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !866, !tbaa !435
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !866
  %38 = icmp eq i32 %0, 0, !dbg !867
  br i1 %38, label %40, label %39, !dbg !869

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !870
  unreachable, !dbg !870

40:                                               ; preds = %35
  ret void, !dbg !871
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !872 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !876 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !879 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !883 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !887, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i32 %1, metadata !888, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* %2, metadata !889, metadata !DIExpression()), !dbg !891
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !892
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !892
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !890, metadata !DIExpression()), !dbg !893
  call void @llvm.va_start(i8* nonnull %6), !dbg !894
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !895
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !895, !tbaa.struct !746
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !895
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !895
  call void @llvm.va_end(i8* nonnull %6), !dbg !896
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !897
  ret void, !dbg !897
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !139 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !157, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %1, metadata !158, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i8* %2, metadata !159, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %3, metadata !160, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i8* %4, metadata !161, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !162, metadata !DIExpression()), !dbg !899
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !900, !tbaa !515
  %9 = icmp eq i32 %8, 0, !dbg !900
  br i1 %9, label %24, label %10, !dbg !902

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !903, !tbaa !515
  %12 = icmp eq i32 %11, %3, !dbg !906
  br i1 %12, label %13, label %23, !dbg !907

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !908, !tbaa !435
  %15 = icmp eq i8* %14, %2, !dbg !909
  br i1 %15, label %39, label %16, !dbg !910

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !911
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !912
  br i1 %19, label %20, label %23, !dbg !912

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !913
  %22 = icmp eq i32 %21, 0, !dbg !914
  br i1 %22, label %39, label %23, !dbg !915

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !916, !tbaa !435
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !917, !tbaa !515
  br label %24, !dbg !918

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !919
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !920, !tbaa !435
  %26 = icmp eq void ()* %25, null, !dbg !920
  br i1 %26, label %28, label %27, !dbg !922

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !923
  br label %32, !dbg !923

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !924, !tbaa !435
  %30 = tail call i8* @getprogname() #33, !dbg !924
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.30, i64 0, i64 0), i8* noundef %30) #32, !dbg !924
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !926, !tbaa !435
  %34 = icmp eq i8* %2, null, !dbg !926
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.31, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.32, i64 0, i64 0), !dbg !926
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !926
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !927
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !927
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !927, !tbaa.struct !746
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !927
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !927
  br label %39, !dbg !928

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !928
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !929 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !933, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %1, metadata !934, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8* %2, metadata !935, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %3, metadata !936, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8* %4, metadata !937, metadata !DIExpression()), !dbg !939
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !940
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !938, metadata !DIExpression()), !dbg !941
  call void @llvm.va_start(i8* nonnull %8), !dbg !942
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !943
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !943, !tbaa.struct !746
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !943
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !943
  call void @llvm.va_end(i8* nonnull %8), !dbg !944
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !945
  ret void, !dbg !945
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !946 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !949, !tbaa !435
  ret i8* %1, !dbg !950
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #12 !dbg !951 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !956, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8** %1, metadata !957, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %2, metadata !958, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %3, metadata !959, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %4, metadata !960, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !961, metadata !DIExpression()), !dbg !982
  %9 = load i32, i32* @opterr, align 4, !dbg !983, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %9, metadata !962, metadata !DIExpression()), !dbg !982
  store i32 0, i32* @opterr, align 4, !dbg !984, !tbaa !515
  %10 = icmp eq i32 %0, 2, !dbg !985
  br i1 %10, label %11, label %18, !dbg !986

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !987
  call void @llvm.dbg.value(metadata i32 %12, metadata !963, metadata !DIExpression()), !dbg !988
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !989

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #32, !dbg !990
  br label %18, !dbg !991

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !992
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #32, !dbg !992
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !966, metadata !DIExpression()), !dbg !993
  call void @llvm.va_start(i8* nonnull %15), !dbg !994
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !995, !tbaa !435
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !996
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #32, !dbg !996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !996, !tbaa.struct !746
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #32, !dbg !996
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #32, !dbg !996
  call void @exit(i32 noundef 0) #34, !dbg !997
  unreachable, !dbg !997

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !998, !tbaa !515
  store i32 0, i32* @optind, align 4, !dbg !999, !tbaa !515
  ret void, !dbg !1000
}

; Function Attrs: nounwind
declare !dbg !1001 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #12 !dbg !1007 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1011, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i8** %1, metadata !1012, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i8* %2, metadata !1013, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i8* %3, metadata !1014, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i8* %4, metadata !1015, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i1 %5, metadata !1016, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1026
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1017, metadata !DIExpression()), !dbg !1026
  %10 = load i32, i32* @opterr, align 4, !dbg !1027, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %10, metadata !1018, metadata !DIExpression()), !dbg !1026
  store i32 1, i32* @opterr, align 4, !dbg !1028, !tbaa !515
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.52, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), !dbg !1029
  call void @llvm.dbg.value(metadata i8* %11, metadata !1019, metadata !DIExpression()), !dbg !1026
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %12, metadata !1020, metadata !DIExpression()), !dbg !1026
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !1031

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1032
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !1021, metadata !DIExpression()), !dbg !1033
  call void @llvm.va_start(i8* nonnull %14), !dbg !1034
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1035, !tbaa !435
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !1036
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #32, !dbg !1036
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !1036, !tbaa.struct !746
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #32, !dbg !1036
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #32, !dbg !1036
  call void @exit(i32 noundef 0) #34, !dbg !1037
  unreachable, !dbg !1037

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !1038, !tbaa !515
  br label %19, !dbg !1039

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #32, !dbg !1040
  br label %21, !dbg !1041

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !1041, !tbaa !515
  ret void, !dbg !1042
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !1043 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1045, metadata !DIExpression()), !dbg !1048
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1049
  call void @llvm.dbg.value(metadata i8* %2, metadata !1046, metadata !DIExpression()), !dbg !1048
  %3 = icmp eq i8* %2, null, !dbg !1050
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1050
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1050
  call void @llvm.dbg.value(metadata i8* %5, metadata !1047, metadata !DIExpression()), !dbg !1048
  %6 = ptrtoint i8* %5 to i64, !dbg !1051
  %7 = ptrtoint i8* %0 to i64, !dbg !1051
  %8 = sub i64 %6, %7, !dbg !1051
  %9 = icmp sgt i64 %8, 6, !dbg !1053
  br i1 %9, label %10, label %19, !dbg !1054

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %11, metadata !1056, metadata !DIExpression()) #32, !dbg !1063
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), metadata !1061, metadata !DIExpression()) #32, !dbg !1063
  call void @llvm.dbg.value(metadata i64 7, metadata !1062, metadata !DIExpression()) #32, !dbg !1063
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), i64 7) #32, !dbg !1065
  %13 = icmp eq i32 %12, 0, !dbg !1066
  br i1 %13, label %14, label %19, !dbg !1067

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1045, metadata !DIExpression()), !dbg !1048
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.58, i64 0, i64 0), i64 noundef 3) #33, !dbg !1068
  %16 = icmp eq i32 %15, 0, !dbg !1071
  %17 = select i1 %16, i64 3, i64 0, !dbg !1072
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1072
  br label %19, !dbg !1072

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1048
  call void @llvm.dbg.value(metadata i8* %21, metadata !1047, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %20, metadata !1045, metadata !DIExpression()), !dbg !1048
  store i8* %20, i8** @program_name, align 8, !dbg !1073, !tbaa !435
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1074, !tbaa !435
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1075, !tbaa !435
  ret void, !dbg !1076
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !197 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !204, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %1, metadata !205, metadata !DIExpression()), !dbg !1077
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1078
  call void @llvm.dbg.value(metadata i8* %5, metadata !206, metadata !DIExpression()), !dbg !1077
  %6 = icmp eq i8* %5, %0, !dbg !1079
  br i1 %6, label %7, label %17, !dbg !1081

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1082
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1082
  %10 = bitcast i64* %4 to i8*, !dbg !1083
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1083
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !212, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1085, metadata !DIExpression()) #32, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %10, metadata !1094, metadata !DIExpression()) #32, !dbg !1102
  call void @llvm.dbg.value(metadata i32 0, metadata !1100, metadata !DIExpression()) #32, !dbg !1102
  call void @llvm.dbg.value(metadata i64 8, metadata !1101, metadata !DIExpression()) #32, !dbg !1102
  store i64 0, i64* %4, align 8, !dbg !1104
  call void @llvm.dbg.value(metadata i32* %3, metadata !207, metadata !DIExpression(DW_OP_deref)), !dbg !1077
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1105
  %12 = icmp eq i64 %11, 2, !dbg !1107
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !207, metadata !DIExpression()), !dbg !1077
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1108
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1077
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1109
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1109
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1077
  ret i8* %18, !dbg !1109
}

; Function Attrs: nounwind
declare !dbg !1110 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1116 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1121, metadata !DIExpression()), !dbg !1124
  %2 = tail call i32* @__errno_location() #35, !dbg !1125
  %3 = load i32, i32* %2, align 4, !dbg !1125, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %3, metadata !1122, metadata !DIExpression()), !dbg !1124
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1126
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1126
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1126
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1127
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1127
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1123, metadata !DIExpression()), !dbg !1124
  store i32 %3, i32* %2, align 4, !dbg !1128, !tbaa !515
  ret %struct.quoting_options* %8, !dbg !1129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1130 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1136, metadata !DIExpression()), !dbg !1137
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1138
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1138
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1139
  %5 = load i32, i32* %4, align 8, !dbg !1139, !tbaa !1140
  ret i32 %5, !dbg !1142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1143 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1147, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i32 %1, metadata !1148, metadata !DIExpression()), !dbg !1149
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1150
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1150
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1151
  store i32 %1, i32* %5, align 8, !dbg !1152, !tbaa !1140
  ret void, !dbg !1153
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1154 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1158, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 %1, metadata !1159, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %2, metadata !1160, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 %1, metadata !1161, metadata !DIExpression()), !dbg !1166
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1167
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1167
  %6 = lshr i8 %1, 5, !dbg !1168
  %7 = zext i8 %6 to i64, !dbg !1168
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1169
  call void @llvm.dbg.value(metadata i32* %8, metadata !1162, metadata !DIExpression()), !dbg !1166
  %9 = and i8 %1, 31, !dbg !1170
  %10 = zext i8 %9 to i32, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %10, metadata !1164, metadata !DIExpression()), !dbg !1166
  %11 = load i32, i32* %8, align 4, !dbg !1171, !tbaa !515
  %12 = lshr i32 %11, %10, !dbg !1172
  %13 = and i32 %12, 1, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %13, metadata !1165, metadata !DIExpression()), !dbg !1166
  %14 = and i32 %2, 1, !dbg !1174
  %15 = xor i32 %13, %14, !dbg !1175
  %16 = shl i32 %15, %10, !dbg !1176
  %17 = xor i32 %16, %11, !dbg !1177
  store i32 %17, i32* %8, align 4, !dbg !1177, !tbaa !515
  ret i32 %13, !dbg !1178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1179 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1183, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 %1, metadata !1184, metadata !DIExpression()), !dbg !1186
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1187
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1183, metadata !DIExpression()), !dbg !1186
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1190
  %6 = load i32, i32* %5, align 4, !dbg !1190, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %6, metadata !1185, metadata !DIExpression()), !dbg !1186
  store i32 %1, i32* %5, align 4, !dbg !1192, !tbaa !1191
  ret i32 %6, !dbg !1193
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1194 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1198, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %1, metadata !1199, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %2, metadata !1200, metadata !DIExpression()), !dbg !1201
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1202
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1204
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1198, metadata !DIExpression()), !dbg !1201
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1205
  store i32 10, i32* %6, align 8, !dbg !1206, !tbaa !1140
  %7 = icmp ne i8* %1, null, !dbg !1207
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1209
  br i1 %9, label %11, label %10, !dbg !1209

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1210
  unreachable, !dbg !1210

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1211
  store i8* %1, i8** %12, align 8, !dbg !1212, !tbaa !1213
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1214
  store i8* %2, i8** %13, align 8, !dbg !1215, !tbaa !1216
  ret void, !dbg !1217
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1218 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1222, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %1, metadata !1223, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8* %2, metadata !1224, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %3, metadata !1225, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1226, metadata !DIExpression()), !dbg !1230
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1231
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1227, metadata !DIExpression()), !dbg !1230
  %8 = tail call i32* @__errno_location() #35, !dbg !1232
  %9 = load i32, i32* %8, align 4, !dbg !1232, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %9, metadata !1228, metadata !DIExpression()), !dbg !1230
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1233
  %11 = load i32, i32* %10, align 8, !dbg !1233, !tbaa !1140
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1234
  %13 = load i32, i32* %12, align 4, !dbg !1234, !tbaa !1191
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1235
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1236
  %16 = load i8*, i8** %15, align 8, !dbg !1236, !tbaa !1213
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1237
  %18 = load i8*, i8** %17, align 8, !dbg !1237, !tbaa !1216
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %19, metadata !1229, metadata !DIExpression()), !dbg !1230
  store i32 %9, i32* %8, align 4, !dbg !1239, !tbaa !515
  ret i64 %19, !dbg !1240
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1241 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1247, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %1, metadata !1248, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %2, metadata !1249, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %3, metadata !1250, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %4, metadata !1251, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %5, metadata !1252, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32* %6, metadata !1253, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %7, metadata !1254, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %8, metadata !1255, metadata !DIExpression()), !dbg !1309
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1310
  %18 = icmp eq i64 %17, 1, !dbg !1311
  call void @llvm.dbg.value(metadata i1 %18, metadata !1256, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, metadata !1258, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* null, metadata !1259, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, metadata !1260, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 0, metadata !1261, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %5, metadata !1262, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1309
  call void @llvm.dbg.value(metadata i8 0, metadata !1263, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 1, metadata !1264, metadata !DIExpression()), !dbg !1309
  %19 = and i32 %5, 2, !dbg !1312
  %20 = icmp ne i32 %19, 0, !dbg !1312
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
  br label %36, !dbg !1312

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1313
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1314
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1315
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1248, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1264, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1263, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1262, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1261, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %43, metadata !1260, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %42, metadata !1259, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %41, metadata !1258, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %40, metadata !1250, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %39, metadata !1255, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %38, metadata !1254, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %37, metadata !1251, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.label(metadata !1302), !dbg !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1265, metadata !DIExpression()), !dbg !1309
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
  ], !dbg !1317

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1262, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 5, metadata !1251, metadata !DIExpression()), !dbg !1309
  br label %111, !dbg !1318

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1262, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 5, metadata !1251, metadata !DIExpression()), !dbg !1309
  br i1 %45, label %111, label %51, !dbg !1318

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1319
  br i1 %52, label %111, label %53, !dbg !1323

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1319, !tbaa !524
  br label %111, !dbg !1319

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.71, i64 0, i64 0), metadata !288, metadata !DIExpression()) #32, !dbg !1324
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #32, !dbg !1324
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.71, i64 0, i64 0), i32 noundef 5) #32, !dbg !1328
  call void @llvm.dbg.value(metadata i8* %55, metadata !290, metadata !DIExpression()) #32, !dbg !1324
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.71, i64 0, i64 0), !dbg !1329
  br i1 %56, label %57, label %66, !dbg !1331

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1332
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1333
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !292, metadata !DIExpression()) #32, !dbg !1334
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1335, metadata !DIExpression()) #32, !dbg !1341
  call void @llvm.dbg.value(metadata i8* %23, metadata !1343, metadata !DIExpression()) #32, !dbg !1348
  call void @llvm.dbg.value(metadata i32 0, metadata !1346, metadata !DIExpression()) #32, !dbg !1348
  call void @llvm.dbg.value(metadata i64 8, metadata !1347, metadata !DIExpression()) #32, !dbg !1348
  store i64 0, i64* %13, align 8, !dbg !1350
  call void @llvm.dbg.value(metadata i32* %12, metadata !291, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1324
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1351
  %59 = icmp eq i64 %58, 3, !dbg !1353
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !291, metadata !DIExpression()) #32, !dbg !1324
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1354
  %63 = icmp eq i32 %37, 9, !dbg !1354
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !1354
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1354
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1355
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1355
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1324
  call void @llvm.dbg.value(metadata i8* %67, metadata !1254, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), metadata !288, metadata !DIExpression()) #32, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #32, !dbg !1356
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), i32 noundef 5) #32, !dbg !1358
  call void @llvm.dbg.value(metadata i8* %68, metadata !290, metadata !DIExpression()) #32, !dbg !1356
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !1359
  br i1 %69, label %70, label %79, !dbg !1360

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1361
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1362
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !292, metadata !DIExpression()) #32, !dbg !1363
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1335, metadata !DIExpression()) #32, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %26, metadata !1343, metadata !DIExpression()) #32, !dbg !1366
  call void @llvm.dbg.value(metadata i32 0, metadata !1346, metadata !DIExpression()) #32, !dbg !1366
  call void @llvm.dbg.value(metadata i64 8, metadata !1347, metadata !DIExpression()) #32, !dbg !1366
  store i64 0, i64* %11, align 8, !dbg !1368
  call void @llvm.dbg.value(metadata i32* %10, metadata !291, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1356
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1369
  %72 = icmp eq i64 %71, 3, !dbg !1370
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !291, metadata !DIExpression()) #32, !dbg !1356
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1371
  %76 = icmp eq i32 %37, 9, !dbg !1371
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !1371
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1371
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1372
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1372
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1255, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %80, metadata !1254, metadata !DIExpression()), !dbg !1309
  br i1 %45, label %97, label %82, !dbg !1373

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1266, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 0, metadata !1257, metadata !DIExpression()), !dbg !1309
  %83 = load i8, i8* %80, align 1, !dbg !1375, !tbaa !524
  %84 = icmp eq i8 %83, 0, !dbg !1377
  br i1 %84, label %97, label %85, !dbg !1377

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1266, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %88, metadata !1257, metadata !DIExpression()), !dbg !1309
  %89 = icmp ult i64 %88, %48, !dbg !1378
  br i1 %89, label %90, label %92, !dbg !1381

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1378
  store i8 %86, i8* %91, align 1, !dbg !1378, !tbaa !524
  br label %92, !dbg !1378

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %93, metadata !1257, metadata !DIExpression()), !dbg !1309
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1382
  call void @llvm.dbg.value(metadata i8* %94, metadata !1266, metadata !DIExpression()), !dbg !1374
  %95 = load i8, i8* %94, align 1, !dbg !1375, !tbaa !524
  %96 = icmp eq i8 %95, 0, !dbg !1377
  br i1 %96, label %97, label %85, !dbg !1377, !llvm.loop !1383

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1385
  call void @llvm.dbg.value(metadata i64 %98, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 1, metadata !1261, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %81, metadata !1259, metadata !DIExpression()), !dbg !1309
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %99, metadata !1260, metadata !DIExpression()), !dbg !1309
  br label %111, !dbg !1387

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1261, metadata !DIExpression()), !dbg !1309
  br label %102, !dbg !1388

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1262, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1261, metadata !DIExpression()), !dbg !1309
  br i1 %45, label %102, label %105, !dbg !1389

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1262, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1261, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 2, metadata !1251, metadata !DIExpression()), !dbg !1309
  br label %111, !dbg !1390

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1262, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1261, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 2, metadata !1251, metadata !DIExpression()), !dbg !1309
  br i1 %45, label %111, label %105, !dbg !1390

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1391
  br i1 %107, label %111, label %108, !dbg !1395

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1391, !tbaa !524
  br label %111, !dbg !1391

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1262, metadata !DIExpression()), !dbg !1309
  br label %111, !dbg !1396

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1397
  unreachable, !dbg !1397

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1385
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.73, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %102 ], !dbg !1309
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1309
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1262, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1261, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %117, metadata !1260, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %116, metadata !1259, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %115, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %114, metadata !1255, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %113, metadata !1254, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %112, metadata !1251, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, metadata !1271, metadata !DIExpression()), !dbg !1398
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
  br label %132, !dbg !1399

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1385
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1313
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1398
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1248, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %139, metadata !1271, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1264, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1263, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %135, metadata !1258, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %134, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %133, metadata !1250, metadata !DIExpression()), !dbg !1309
  %141 = icmp eq i64 %133, -1, !dbg !1400
  br i1 %141, label %142, label %146, !dbg !1401

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1402
  %144 = load i8, i8* %143, align 1, !dbg !1402, !tbaa !524
  %145 = icmp eq i8 %144, 0, !dbg !1403
  br i1 %145, label %596, label %148, !dbg !1404

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1405
  br i1 %147, label %596, label %148, !dbg !1404

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1273, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 0, metadata !1276, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 0, metadata !1277, metadata !DIExpression()), !dbg !1406
  br i1 %123, label %149, label %163, !dbg !1407

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1409
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1410
  br i1 %151, label %152, label %154, !dbg !1410

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %153, metadata !1250, metadata !DIExpression()), !dbg !1309
  br label %154, !dbg !1412

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1412
  call void @llvm.dbg.value(metadata i64 %155, metadata !1250, metadata !DIExpression()), !dbg !1309
  %156 = icmp ugt i64 %150, %155, !dbg !1413
  br i1 %156, label %163, label %157, !dbg !1414

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1415
  call void @llvm.dbg.value(metadata i8* %158, metadata !1416, metadata !DIExpression()) #32, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %116, metadata !1419, metadata !DIExpression()) #32, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %117, metadata !1420, metadata !DIExpression()) #32, !dbg !1421
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1423
  %160 = icmp ne i32 %159, 0, !dbg !1424
  %161 = or i1 %160, %125, !dbg !1425
  %162 = xor i1 %160, true, !dbg !1425
  br i1 %161, label %163, label %647, !dbg !1425

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %164, metadata !1250, metadata !DIExpression()), !dbg !1309
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1426
  %167 = load i8, i8* %166, align 1, !dbg !1426, !tbaa !524
  call void @llvm.dbg.value(metadata i8 %167, metadata !1278, metadata !DIExpression()), !dbg !1406
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
  ], !dbg !1427

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1428

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1429

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1276, metadata !DIExpression()), !dbg !1406
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1433
  br i1 %171, label %188, label %172, !dbg !1433

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1435
  br i1 %173, label %174, label %176, !dbg !1439

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1435
  store i8 39, i8* %175, align 1, !dbg !1435, !tbaa !524
  br label %176, !dbg !1435

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %177, metadata !1257, metadata !DIExpression()), !dbg !1309
  %178 = icmp ult i64 %177, %140, !dbg !1440
  br i1 %178, label %179, label %181, !dbg !1443

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1440
  store i8 36, i8* %180, align 1, !dbg !1440, !tbaa !524
  br label %181, !dbg !1440

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %182, metadata !1257, metadata !DIExpression()), !dbg !1309
  %183 = icmp ult i64 %182, %140, !dbg !1444
  br i1 %183, label %184, label %186, !dbg !1447

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1444
  store i8 39, i8* %185, align 1, !dbg !1444, !tbaa !524
  br label %186, !dbg !1444

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %187, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 1, metadata !1265, metadata !DIExpression()), !dbg !1309
  br label %188, !dbg !1448

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1309
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %189, metadata !1257, metadata !DIExpression()), !dbg !1309
  %191 = icmp ult i64 %189, %140, !dbg !1449
  br i1 %191, label %192, label %194, !dbg !1452

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1449
  store i8 92, i8* %193, align 1, !dbg !1449, !tbaa !524
  br label %194, !dbg !1449

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %195, metadata !1257, metadata !DIExpression()), !dbg !1309
  br i1 %120, label %196, label %499, !dbg !1453

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1455
  %198 = icmp ult i64 %197, %164, !dbg !1456
  br i1 %198, label %199, label %456, !dbg !1457

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1458
  %201 = load i8, i8* %200, align 1, !dbg !1458, !tbaa !524
  %202 = add i8 %201, -48, !dbg !1459
  %203 = icmp ult i8 %202, 10, !dbg !1459
  br i1 %203, label %204, label %456, !dbg !1459

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1460
  br i1 %205, label %206, label %208, !dbg !1464

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1460
  store i8 48, i8* %207, align 1, !dbg !1460, !tbaa !524
  br label %208, !dbg !1460

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %209, metadata !1257, metadata !DIExpression()), !dbg !1309
  %210 = icmp ult i64 %209, %140, !dbg !1465
  br i1 %210, label %211, label %213, !dbg !1468

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1465
  store i8 48, i8* %212, align 1, !dbg !1465, !tbaa !524
  br label %213, !dbg !1465

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %214, metadata !1257, metadata !DIExpression()), !dbg !1309
  br label %456, !dbg !1469

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1470

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1471

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1472

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1474

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1476
  %221 = icmp ult i64 %220, %164, !dbg !1477
  br i1 %221, label %222, label %456, !dbg !1478

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1479
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1480
  %225 = load i8, i8* %224, align 1, !dbg !1480, !tbaa !524
  %226 = icmp eq i8 %225, 63, !dbg !1481
  br i1 %226, label %227, label %456, !dbg !1482

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1483
  %229 = load i8, i8* %228, align 1, !dbg !1483, !tbaa !524
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
  ], !dbg !1484

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1485

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1278, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %220, metadata !1271, metadata !DIExpression()), !dbg !1398
  %232 = icmp ult i64 %134, %140, !dbg !1487
  br i1 %232, label %233, label %235, !dbg !1490

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1487
  store i8 63, i8* %234, align 1, !dbg !1487, !tbaa !524
  br label %235, !dbg !1487

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %236, metadata !1257, metadata !DIExpression()), !dbg !1309
  %237 = icmp ult i64 %236, %140, !dbg !1491
  br i1 %237, label %238, label %240, !dbg !1494

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1491
  store i8 34, i8* %239, align 1, !dbg !1491, !tbaa !524
  br label %240, !dbg !1491

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %241, metadata !1257, metadata !DIExpression()), !dbg !1309
  %242 = icmp ult i64 %241, %140, !dbg !1495
  br i1 %242, label %243, label %245, !dbg !1498

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1495
  store i8 34, i8* %244, align 1, !dbg !1495, !tbaa !524
  br label %245, !dbg !1495

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %246, metadata !1257, metadata !DIExpression()), !dbg !1309
  %247 = icmp ult i64 %246, %140, !dbg !1499
  br i1 %247, label %248, label %250, !dbg !1502

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1499
  store i8 63, i8* %249, align 1, !dbg !1499, !tbaa !524
  br label %250, !dbg !1499

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %251, metadata !1257, metadata !DIExpression()), !dbg !1309
  br label %456, !dbg !1503

252:                                              ; preds = %163
  br label %263, !dbg !1504

253:                                              ; preds = %163
  br label %263, !dbg !1505

254:                                              ; preds = %163
  br label %261, !dbg !1506

255:                                              ; preds = %163
  br label %261, !dbg !1507

256:                                              ; preds = %163
  br label %263, !dbg !1508

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1509

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1510

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1513

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1515

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1516
  call void @llvm.dbg.label(metadata !1303), !dbg !1517
  br i1 %128, label %263, label %638, !dbg !1518

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1516
  call void @llvm.dbg.label(metadata !1305), !dbg !1520
  br i1 %118, label %510, label %467, !dbg !1521

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1522

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1523, !tbaa !524
  %268 = icmp eq i8 %267, 0, !dbg !1525
  br i1 %268, label %269, label %456, !dbg !1526

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1527
  br i1 %270, label %271, label %456, !dbg !1529

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1406
  br label %272, !dbg !1530

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1277, metadata !DIExpression()), !dbg !1406
  br i1 %126, label %274, label %456, !dbg !1531

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1533

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1263, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 1, metadata !1277, metadata !DIExpression()), !dbg !1406
  br i1 %126, label %276, label %456, !dbg !1534

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1535

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1538
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1540
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1540
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %282, metadata !1248, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %281, metadata !1258, metadata !DIExpression()), !dbg !1309
  %283 = icmp ult i64 %134, %282, !dbg !1541
  br i1 %283, label %284, label %286, !dbg !1544

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1541
  store i8 39, i8* %285, align 1, !dbg !1541, !tbaa !524
  br label %286, !dbg !1541

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %287, metadata !1257, metadata !DIExpression()), !dbg !1309
  %288 = icmp ult i64 %287, %282, !dbg !1545
  br i1 %288, label %289, label %291, !dbg !1548

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1545
  store i8 92, i8* %290, align 1, !dbg !1545, !tbaa !524
  br label %291, !dbg !1545

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %292, metadata !1257, metadata !DIExpression()), !dbg !1309
  %293 = icmp ult i64 %292, %282, !dbg !1549
  br i1 %293, label %294, label %296, !dbg !1552

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1549
  store i8 39, i8* %295, align 1, !dbg !1549, !tbaa !524
  br label %296, !dbg !1549

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %297, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 0, metadata !1265, metadata !DIExpression()), !dbg !1309
  br label %456, !dbg !1553

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1554

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1279, metadata !DIExpression()), !dbg !1555
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1556
  %301 = load i16*, i16** %300, align 8, !dbg !1556, !tbaa !435
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1556
  %304 = load i16, i16* %303, align 2, !dbg !1556, !tbaa !549
  %305 = and i16 %304, 16384, !dbg !1556
  %306 = icmp ne i16 %305, 0, !dbg !1558
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 %349, metadata !1279, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 %312, metadata !1250, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i1 %350, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1406
  br label %352, !dbg !1559

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1560
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1283, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1335, metadata !DIExpression()) #32, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %32, metadata !1343, metadata !DIExpression()) #32, !dbg !1564
  call void @llvm.dbg.value(metadata i32 0, metadata !1346, metadata !DIExpression()) #32, !dbg !1564
  call void @llvm.dbg.value(metadata i64 8, metadata !1347, metadata !DIExpression()) #32, !dbg !1564
  store i64 0, i64* %14, align 8, !dbg !1566
  call void @llvm.dbg.value(metadata i64 0, metadata !1279, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 1, metadata !1282, metadata !DIExpression()), !dbg !1555
  %308 = icmp eq i64 %164, -1, !dbg !1567
  br i1 %308, label %309, label %311, !dbg !1569

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %310, metadata !1250, metadata !DIExpression()), !dbg !1309
  br label %311, !dbg !1571

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1406
  call void @llvm.dbg.value(metadata i64 %312, metadata !1250, metadata !DIExpression()), !dbg !1309
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1572
  %313 = sub i64 %312, %139, !dbg !1573
  call void @llvm.dbg.value(metadata i32* %16, metadata !1286, metadata !DIExpression(DW_OP_deref)), !dbg !1574
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %314, metadata !1290, metadata !DIExpression()), !dbg !1574
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1576

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1279, metadata !DIExpression()), !dbg !1555
  %316 = icmp ugt i64 %312, %139, !dbg !1577
  br i1 %316, label %319, label %317, !dbg !1579

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 0, metadata !1279, metadata !DIExpression()), !dbg !1555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %349, metadata !1279, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 %312, metadata !1250, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i1 %350, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1406
  br label %352, !dbg !1559

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1282, metadata !DIExpression()), !dbg !1555
  br label %346, !dbg !1582

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1279, metadata !DIExpression()), !dbg !1555
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1584
  %323 = load i8, i8* %322, align 1, !dbg !1584, !tbaa !524
  %324 = icmp eq i8 %323, 0, !dbg !1579
  br i1 %324, label %348, label %325, !dbg !1585

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %326, metadata !1279, metadata !DIExpression()), !dbg !1555
  %327 = add i64 %326, %139, !dbg !1587
  %328 = icmp eq i64 %326, %313, !dbg !1577
  br i1 %328, label %348, label %319, !dbg !1579, !llvm.loop !1588

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1589
  call void @llvm.dbg.value(metadata i64 1, metadata !1291, metadata !DIExpression()), !dbg !1590
  br i1 %331, label %332, label %340, !dbg !1589

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1291, metadata !DIExpression()), !dbg !1590
  %334 = add i64 %333, %139, !dbg !1591
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1593
  %336 = load i8, i8* %335, align 1, !dbg !1593, !tbaa !524
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1594

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %338, metadata !1291, metadata !DIExpression()), !dbg !1590
  %339 = icmp eq i64 %338, %314, !dbg !1596
  br i1 %339, label %340, label %332, !dbg !1597, !llvm.loop !1598

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1600, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %341, metadata !1286, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i32 %341, metadata !1602, metadata !DIExpression()) #32, !dbg !1610
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1612
  %343 = icmp ne i32 %342, 0, !dbg !1613
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 %314, metadata !1279, metadata !DIExpression()), !dbg !1555
  br label %348, !dbg !1614

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 0, metadata !1279, metadata !DIExpression()), !dbg !1555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1581
  call void @llvm.dbg.label(metadata !1308), !dbg !1615
  %345 = select i1 %118, i32 4, i32 2, !dbg !1616
  br label %643, !dbg !1616

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 0, metadata !1279, metadata !DIExpression()), !dbg !1555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %349, metadata !1279, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 %312, metadata !1250, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i1 %350, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1406
  br label %352, !dbg !1559

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 0, metadata !1279, metadata !DIExpression()), !dbg !1555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %349, metadata !1279, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i64 %312, metadata !1250, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i1 %350, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1406
  %351 = icmp ugt i64 %349, 1, !dbg !1618
  br i1 %351, label %357, label %352, !dbg !1559

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1619
  br i1 %356, label %456, label %357, !dbg !1619

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %361, metadata !1299, metadata !DIExpression()), !dbg !1621
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1622

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1309
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1398
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1623
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1406
  call void @llvm.dbg.value(metadata i8 %369, metadata !1278, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %368, metadata !1276, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %366, metadata !1271, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %364, metadata !1257, metadata !DIExpression()), !dbg !1309
  br i1 %362, label %414, label %370, !dbg !1624

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1629

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1276, metadata !DIExpression()), !dbg !1406
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1632
  br i1 %372, label %389, label %373, !dbg !1632

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1634
  br i1 %374, label %375, label %377, !dbg !1638

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1634
  store i8 39, i8* %376, align 1, !dbg !1634, !tbaa !524
  br label %377, !dbg !1634

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %378, metadata !1257, metadata !DIExpression()), !dbg !1309
  %379 = icmp ult i64 %378, %140, !dbg !1639
  br i1 %379, label %380, label %382, !dbg !1642

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1639
  store i8 36, i8* %381, align 1, !dbg !1639, !tbaa !524
  br label %382, !dbg !1639

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %383, metadata !1257, metadata !DIExpression()), !dbg !1309
  %384 = icmp ult i64 %383, %140, !dbg !1643
  br i1 %384, label %385, label %387, !dbg !1646

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1643
  store i8 39, i8* %386, align 1, !dbg !1643, !tbaa !524
  br label %387, !dbg !1643

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %388, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 1, metadata !1265, metadata !DIExpression()), !dbg !1309
  br label %389, !dbg !1647

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1309
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %390, metadata !1257, metadata !DIExpression()), !dbg !1309
  %392 = icmp ult i64 %390, %140, !dbg !1648
  br i1 %392, label %393, label %395, !dbg !1651

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1648
  store i8 92, i8* %394, align 1, !dbg !1648, !tbaa !524
  br label %395, !dbg !1648

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %396, metadata !1257, metadata !DIExpression()), !dbg !1309
  %397 = icmp ult i64 %396, %140, !dbg !1652
  br i1 %397, label %398, label %402, !dbg !1655

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1652
  %400 = or i8 %399, 48, !dbg !1652
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1652
  store i8 %400, i8* %401, align 1, !dbg !1652, !tbaa !524
  br label %402, !dbg !1652

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %403, metadata !1257, metadata !DIExpression()), !dbg !1309
  %404 = icmp ult i64 %403, %140, !dbg !1656
  br i1 %404, label %405, label %410, !dbg !1659

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1656
  %407 = and i8 %406, 7, !dbg !1656
  %408 = or i8 %407, 48, !dbg !1656
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1656
  store i8 %408, i8* %409, align 1, !dbg !1656, !tbaa !524
  br label %410, !dbg !1656

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %411, metadata !1257, metadata !DIExpression()), !dbg !1309
  %412 = and i8 %369, 7, !dbg !1660
  %413 = or i8 %412, 48, !dbg !1661
  call void @llvm.dbg.value(metadata i8 %413, metadata !1278, metadata !DIExpression()), !dbg !1406
  br label %421, !dbg !1662

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1663

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1664
  br i1 %416, label %417, label %419, !dbg !1669

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1664
  store i8 92, i8* %418, align 1, !dbg !1664, !tbaa !524
  br label %419, !dbg !1664

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %420, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 0, metadata !1273, metadata !DIExpression()), !dbg !1406
  br label %421, !dbg !1670

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1309
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1406
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1406
  call void @llvm.dbg.value(metadata i8 %426, metadata !1278, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %425, metadata !1276, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %422, metadata !1257, metadata !DIExpression()), !dbg !1309
  %427 = add i64 %366, 1, !dbg !1671
  %428 = icmp ugt i64 %361, %427, !dbg !1673
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1674

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1675
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1675
  br i1 %432, label %433, label %444, !dbg !1675

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1678
  br i1 %434, label %435, label %437, !dbg !1682

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1678
  store i8 39, i8* %436, align 1, !dbg !1678, !tbaa !524
  br label %437, !dbg !1678

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %438, metadata !1257, metadata !DIExpression()), !dbg !1309
  %439 = icmp ult i64 %438, %140, !dbg !1683
  br i1 %439, label %440, label %442, !dbg !1686

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1683
  store i8 39, i8* %441, align 1, !dbg !1683, !tbaa !524
  br label %442, !dbg !1683

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %443, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 0, metadata !1265, metadata !DIExpression()), !dbg !1309
  br label %444, !dbg !1687

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1688
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %445, metadata !1257, metadata !DIExpression()), !dbg !1309
  %447 = icmp ult i64 %445, %140, !dbg !1689
  br i1 %447, label %448, label %450, !dbg !1692

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1689
  store i8 %426, i8* %449, align 1, !dbg !1689, !tbaa !524
  br label %450, !dbg !1689

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %451, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %427, metadata !1271, metadata !DIExpression()), !dbg !1398
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1693
  %453 = load i8, i8* %452, align 1, !dbg !1693, !tbaa !524
  call void @llvm.dbg.value(metadata i8 %453, metadata !1278, metadata !DIExpression()), !dbg !1406
  br label %363, !dbg !1694, !llvm.loop !1695

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1278, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i1 %358, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %425, metadata !1276, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %366, metadata !1271, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %422, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %360, metadata !1250, metadata !DIExpression()), !dbg !1309
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1698
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1309
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1313
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1398
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1406
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1248, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %465, metadata !1278, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %462, metadata !1271, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1263, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %459, metadata !1258, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %458, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %457, metadata !1250, metadata !DIExpression()), !dbg !1309
  br i1 %121, label %478, label %467, !dbg !1699

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
  br i1 %131, label %479, label %499, !dbg !1701

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1702

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
  %490 = lshr i8 %481, 5, !dbg !1703
  %491 = zext i8 %490 to i64, !dbg !1703
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1704
  %493 = load i32, i32* %492, align 4, !dbg !1704, !tbaa !515
  %494 = and i8 %481, 31, !dbg !1705
  %495 = zext i8 %494 to i32, !dbg !1705
  %496 = shl nuw i32 1, %495, !dbg !1706
  %497 = and i32 %493, %496, !dbg !1706
  %498 = icmp eq i32 %497, 0, !dbg !1706
  br i1 %498, label %499, label %510, !dbg !1707

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
  br i1 %165, label %510, label %546, !dbg !1708

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1698
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1309
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1313
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1709
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1406
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1248, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %518, metadata !1278, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %516, metadata !1271, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1263, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %513, metadata !1258, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %512, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %511, metadata !1250, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.label(metadata !1306), !dbg !1710
  br i1 %119, label %638, label %520, !dbg !1711

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1276, metadata !DIExpression()), !dbg !1406
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1713
  br i1 %521, label %538, label %522, !dbg !1713

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1715
  br i1 %523, label %524, label %526, !dbg !1719

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1715
  store i8 39, i8* %525, align 1, !dbg !1715, !tbaa !524
  br label %526, !dbg !1715

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %527, metadata !1257, metadata !DIExpression()), !dbg !1309
  %528 = icmp ult i64 %527, %519, !dbg !1720
  br i1 %528, label %529, label %531, !dbg !1723

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1720
  store i8 36, i8* %530, align 1, !dbg !1720, !tbaa !524
  br label %531, !dbg !1720

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %532, metadata !1257, metadata !DIExpression()), !dbg !1309
  %533 = icmp ult i64 %532, %519, !dbg !1724
  br i1 %533, label %534, label %536, !dbg !1727

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1724
  store i8 39, i8* %535, align 1, !dbg !1724, !tbaa !524
  br label %536, !dbg !1724

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %537, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 1, metadata !1265, metadata !DIExpression()), !dbg !1309
  br label %538, !dbg !1728

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1406
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %539, metadata !1257, metadata !DIExpression()), !dbg !1309
  %541 = icmp ult i64 %539, %519, !dbg !1729
  br i1 %541, label %542, label %544, !dbg !1732

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1729
  store i8 92, i8* %543, align 1, !dbg !1729, !tbaa !524
  br label %544, !dbg !1729

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %556, metadata !1248, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %555, metadata !1278, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %552, metadata !1271, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1263, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %549, metadata !1258, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %548, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %547, metadata !1250, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.label(metadata !1307), !dbg !1733
  br label %570, !dbg !1734

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1698
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1309
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1313
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1709
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1737
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1248, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %555, metadata !1278, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1277, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %552, metadata !1271, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1263, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %549, metadata !1258, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %548, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %547, metadata !1250, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.label(metadata !1307), !dbg !1733
  %557 = xor i1 %551, true, !dbg !1734
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1734
  br i1 %558, label %570, label %559, !dbg !1734

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1738
  br i1 %560, label %561, label %563, !dbg !1742

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1738
  store i8 39, i8* %562, align 1, !dbg !1738, !tbaa !524
  br label %563, !dbg !1738

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %564, metadata !1257, metadata !DIExpression()), !dbg !1309
  %565 = icmp ult i64 %564, %556, !dbg !1743
  br i1 %565, label %566, label %568, !dbg !1746

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1743
  store i8 39, i8* %567, align 1, !dbg !1743, !tbaa !524
  br label %568, !dbg !1743

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %569, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 0, metadata !1265, metadata !DIExpression()), !dbg !1309
  br label %570, !dbg !1747

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1406
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %578, metadata !1257, metadata !DIExpression()), !dbg !1309
  %580 = icmp ult i64 %578, %571, !dbg !1748
  br i1 %580, label %581, label %583, !dbg !1751

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1748
  store i8 %572, i8* %582, align 1, !dbg !1748, !tbaa !524
  br label %583, !dbg !1748

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %584, metadata !1257, metadata !DIExpression()), !dbg !1309
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1264, metadata !DIExpression()), !dbg !1309
  br label %586, !dbg !1753

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1698
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1309
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1313
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1709
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1248, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %593, metadata !1271, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 poison, metadata !1265, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1264, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1263, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %589, metadata !1258, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %588, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %587, metadata !1250, metadata !DIExpression()), !dbg !1309
  %595 = add i64 %593, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %595, metadata !1271, metadata !DIExpression()), !dbg !1398
  br label %132, !dbg !1755, !llvm.loop !1756

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1248, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1264, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 poison, metadata !1263, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 undef, metadata !1258, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 undef, metadata !1257, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 undef, metadata !1250, metadata !DIExpression()), !dbg !1309
  %597 = icmp eq i64 %134, 0, !dbg !1758
  %598 = and i1 %126, %597, !dbg !1760
  %599 = and i1 %598, %119, !dbg !1760
  br i1 %599, label %638, label %600, !dbg !1760

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1761
  %602 = or i1 %119, %601, !dbg !1761
  %603 = xor i1 %136, true, !dbg !1761
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1761
  br i1 %604, label %612, label %605, !dbg !1761

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1763

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1765
  br label %653, !dbg !1767

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1768
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1770
  br i1 %611, label %36, label %612, !dbg !1770

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1771
  %615 = or i1 %614, %613, !dbg !1773
  br i1 %615, label %631, label %616, !dbg !1773

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1259, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %134, metadata !1257, metadata !DIExpression()), !dbg !1309
  %617 = load i8, i8* %116, align 1, !dbg !1774, !tbaa !524
  %618 = icmp eq i8 %617, 0, !dbg !1777
  br i1 %618, label %631, label %619, !dbg !1777

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1259, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %622, metadata !1257, metadata !DIExpression()), !dbg !1309
  %623 = icmp ult i64 %622, %140, !dbg !1778
  br i1 %623, label %624, label %626, !dbg !1781

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1778
  store i8 %620, i8* %625, align 1, !dbg !1778, !tbaa !524
  br label %626, !dbg !1778

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %627, metadata !1257, metadata !DIExpression()), !dbg !1309
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1782
  call void @llvm.dbg.value(metadata i8* %628, metadata !1259, metadata !DIExpression()), !dbg !1309
  %629 = load i8, i8* %628, align 1, !dbg !1774, !tbaa !524
  %630 = icmp eq i8 %629, 0, !dbg !1777
  br i1 %630, label %631, label %619, !dbg !1777, !llvm.loop !1783

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1385
  call void @llvm.dbg.value(metadata i64 %632, metadata !1257, metadata !DIExpression()), !dbg !1309
  %633 = icmp ult i64 %632, %140, !dbg !1785
  br i1 %633, label %634, label %653, !dbg !1787

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1788
  store i8 0, i8* %635, align 1, !dbg !1789, !tbaa !524
  br label %653, !dbg !1788

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1308), !dbg !1615
  %637 = icmp eq i32 %112, 2, !dbg !1790
  br i1 %637, label %643, label %647, !dbg !1616

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1308), !dbg !1615
  %641 = icmp eq i32 %112, 2, !dbg !1790
  %642 = select i1 %118, i32 4, i32 2, !dbg !1616
  br i1 %641, label %643, label %647, !dbg !1616

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1616

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1251, metadata !DIExpression()), !dbg !1309
  %651 = and i32 %5, -3, !dbg !1791
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1792
  br label %653, !dbg !1793

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1794
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1795 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1797 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1801, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %1, metadata !1802, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1803, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %0, metadata !1805, metadata !DIExpression()) #32, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %1, metadata !1810, metadata !DIExpression()) #32, !dbg !1818
  call void @llvm.dbg.value(metadata i64* null, metadata !1811, metadata !DIExpression()) #32, !dbg !1818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1812, metadata !DIExpression()) #32, !dbg !1818
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1820
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1813, metadata !DIExpression()) #32, !dbg !1818
  %6 = tail call i32* @__errno_location() #35, !dbg !1821
  %7 = load i32, i32* %6, align 4, !dbg !1821, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %7, metadata !1814, metadata !DIExpression()) #32, !dbg !1818
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1822
  %9 = load i32, i32* %8, align 4, !dbg !1822, !tbaa !1191
  %10 = or i32 %9, 1, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %10, metadata !1815, metadata !DIExpression()) #32, !dbg !1818
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1824
  %12 = load i32, i32* %11, align 8, !dbg !1824, !tbaa !1140
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1825
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1826
  %15 = load i8*, i8** %14, align 8, !dbg !1826, !tbaa !1213
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1827
  %17 = load i8*, i8** %16, align 8, !dbg !1827, !tbaa !1216
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !1828
  %19 = add i64 %18, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %19, metadata !1816, metadata !DIExpression()) #32, !dbg !1818
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !1830
  call void @llvm.dbg.value(metadata i8* %20, metadata !1817, metadata !DIExpression()) #32, !dbg !1818
  %21 = load i32, i32* %11, align 8, !dbg !1831, !tbaa !1140
  %22 = load i8*, i8** %14, align 8, !dbg !1832, !tbaa !1213
  %23 = load i8*, i8** %16, align 8, !dbg !1833, !tbaa !1216
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !1834
  store i32 %7, i32* %6, align 4, !dbg !1835, !tbaa !515
  ret i8* %20, !dbg !1836
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1806 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1805, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %1, metadata !1810, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64* %2, metadata !1811, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1812, metadata !DIExpression()), !dbg !1837
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1838
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1813, metadata !DIExpression()), !dbg !1837
  %7 = tail call i32* @__errno_location() #35, !dbg !1839
  %8 = load i32, i32* %7, align 4, !dbg !1839, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %8, metadata !1814, metadata !DIExpression()), !dbg !1837
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1840
  %10 = load i32, i32* %9, align 4, !dbg !1840, !tbaa !1191
  %11 = icmp eq i64* %2, null, !dbg !1841
  %12 = zext i1 %11 to i32, !dbg !1841
  %13 = or i32 %10, %12, !dbg !1842
  call void @llvm.dbg.value(metadata i32 %13, metadata !1815, metadata !DIExpression()), !dbg !1837
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1843
  %15 = load i32, i32* %14, align 8, !dbg !1843, !tbaa !1140
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1844
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1845
  %18 = load i8*, i8** %17, align 8, !dbg !1845, !tbaa !1213
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1846
  %20 = load i8*, i8** %19, align 8, !dbg !1846, !tbaa !1216
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1847
  %22 = add i64 %21, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %22, metadata !1816, metadata !DIExpression()), !dbg !1837
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !1849
  call void @llvm.dbg.value(metadata i8* %23, metadata !1817, metadata !DIExpression()), !dbg !1837
  %24 = load i32, i32* %14, align 8, !dbg !1850, !tbaa !1140
  %25 = load i8*, i8** %17, align 8, !dbg !1851, !tbaa !1213
  %26 = load i8*, i8** %19, align 8, !dbg !1852, !tbaa !1216
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1853
  store i32 %8, i32* %7, align 4, !dbg !1854, !tbaa !515
  br i1 %11, label %29, label %28, !dbg !1855

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1856, !tbaa !1858
  br label %29, !dbg !1859

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1860
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1861 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1866, !tbaa !435
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1863, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !1868
  %2 = load i32, i32* @nslots, align 4, !tbaa !515
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !1868
  %3 = icmp sgt i32 %2, 1, !dbg !1869
  br i1 %3, label %4, label %6, !dbg !1871

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1869
  br label %10, !dbg !1871

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1872
  %8 = load i8*, i8** %7, align 8, !dbg !1872, !tbaa !1874
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1876
  br i1 %9, label %17, label %16, !dbg !1877

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1864, metadata !DIExpression()), !dbg !1868
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1878
  %13 = load i8*, i8** %12, align 8, !dbg !1878, !tbaa !1874
  tail call void @free(i8* noundef %13) #32, !dbg !1879
  %14 = add nuw nsw i64 %11, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %14, metadata !1864, metadata !DIExpression()), !dbg !1868
  %15 = icmp eq i64 %14, %5, !dbg !1869
  br i1 %15, label %6, label %10, !dbg !1871, !llvm.loop !1881

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !1883
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1885, !tbaa !1886
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1887, !tbaa !1874
  br label %17, !dbg !1888

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1889
  br i1 %18, label %21, label %19, !dbg !1891

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1892
  tail call void @free(i8* noundef %20) #32, !dbg !1894
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1895, !tbaa !435
  br label %21, !dbg !1896

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1897, !tbaa !515
  ret void, !dbg !1898
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1899 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1901, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8* %1, metadata !1902, metadata !DIExpression()), !dbg !1903
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1904
  ret i8* %3, !dbg !1905
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1906 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1910, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8* %1, metadata !1911, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 %2, metadata !1912, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1913, metadata !DIExpression()), !dbg !1926
  %6 = tail call i32* @__errno_location() #35, !dbg !1927
  %7 = load i32, i32* %6, align 4, !dbg !1927, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %7, metadata !1914, metadata !DIExpression()), !dbg !1926
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1928, !tbaa !435
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1915, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1916, metadata !DIExpression()), !dbg !1926
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1929
  br i1 %9, label %10, label %11, !dbg !1929

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !1931
  unreachable, !dbg !1931

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1932, !tbaa !515
  %13 = icmp sgt i32 %12, %0, !dbg !1933
  br i1 %13, label %36, label %14, !dbg !1934

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1935
  call void @llvm.dbg.value(metadata i1 %15, metadata !1917, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1936
  %16 = bitcast i64* %5 to i8*, !dbg !1937
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1937
  %17 = sext i32 %12 to i64, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %17, metadata !1920, metadata !DIExpression()), !dbg !1936
  store i64 %17, i64* %5, align 8, !dbg !1939, !tbaa !1858
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !1940
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1940
  %20 = add nuw nsw i32 %0, 1, !dbg !1941
  %21 = sub i32 %20, %12, !dbg !1942
  %22 = sext i32 %21 to i64, !dbg !1943
  call void @llvm.dbg.value(metadata i64* %5, metadata !1920, metadata !DIExpression(DW_OP_deref)), !dbg !1936
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !1944
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1944
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1915, metadata !DIExpression()), !dbg !1926
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1945, !tbaa !435
  br i1 %15, label %25, label %26, !dbg !1946

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1947, !tbaa.struct !1949
  br label %26, !dbg !1950

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !1951, !tbaa !515
  %28 = sext i32 %27 to i64, !dbg !1952
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1952
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1953
  %31 = load i64, i64* %5, align 8, !dbg !1954, !tbaa !1858
  call void @llvm.dbg.value(metadata i64 %31, metadata !1920, metadata !DIExpression()), !dbg !1936
  %32 = sub nsw i64 %31, %28, !dbg !1955
  %33 = shl i64 %32, 4, !dbg !1956
  call void @llvm.dbg.value(metadata i8* %30, metadata !1343, metadata !DIExpression()) #32, !dbg !1957
  call void @llvm.dbg.value(metadata i32 0, metadata !1346, metadata !DIExpression()) #32, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %33, metadata !1347, metadata !DIExpression()) #32, !dbg !1957
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !1959
  %34 = load i64, i64* %5, align 8, !dbg !1960, !tbaa !1858
  call void @llvm.dbg.value(metadata i64 %34, metadata !1920, metadata !DIExpression()), !dbg !1936
  %35 = trunc i64 %34 to i32, !dbg !1960
  store i32 %35, i32* @nslots, align 4, !dbg !1961, !tbaa !515
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1962
  br label %36, !dbg !1963

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1926
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1915, metadata !DIExpression()), !dbg !1926
  %38 = zext i32 %0 to i64, !dbg !1964
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !1965
  %40 = load i64, i64* %39, align 8, !dbg !1965, !tbaa !1886
  call void @llvm.dbg.value(metadata i64 %40, metadata !1921, metadata !DIExpression()), !dbg !1966
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !1967
  %42 = load i8*, i8** %41, align 8, !dbg !1967, !tbaa !1874
  call void @llvm.dbg.value(metadata i8* %42, metadata !1923, metadata !DIExpression()), !dbg !1966
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1968
  %44 = load i32, i32* %43, align 4, !dbg !1968, !tbaa !1191
  %45 = or i32 %44, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %45, metadata !1924, metadata !DIExpression()), !dbg !1966
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1970
  %47 = load i32, i32* %46, align 8, !dbg !1970, !tbaa !1140
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1971
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1972
  %50 = load i8*, i8** %49, align 8, !dbg !1972, !tbaa !1213
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1973
  %52 = load i8*, i8** %51, align 8, !dbg !1973, !tbaa !1216
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %53, metadata !1925, metadata !DIExpression()), !dbg !1966
  %54 = icmp ugt i64 %40, %53, !dbg !1975
  br i1 %54, label %65, label %55, !dbg !1977

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %56, metadata !1921, metadata !DIExpression()), !dbg !1966
  store i64 %56, i64* %39, align 8, !dbg !1980, !tbaa !1886
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1981
  br i1 %57, label %59, label %58, !dbg !1983

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !1984
  br label %59, !dbg !1984

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !1985
  call void @llvm.dbg.value(metadata i8* %60, metadata !1923, metadata !DIExpression()), !dbg !1966
  store i8* %60, i8** %41, align 8, !dbg !1986, !tbaa !1874
  %61 = load i32, i32* %46, align 8, !dbg !1987, !tbaa !1140
  %62 = load i8*, i8** %49, align 8, !dbg !1988, !tbaa !1213
  %63 = load i8*, i8** %51, align 8, !dbg !1989, !tbaa !1216
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !1990
  br label %65, !dbg !1991

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !1966
  call void @llvm.dbg.value(metadata i8* %66, metadata !1923, metadata !DIExpression()), !dbg !1966
  store i32 %7, i32* %6, align 4, !dbg !1992, !tbaa !515
  ret i8* %66, !dbg !1993
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1994 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8* %1, metadata !1999, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %2, metadata !2000, metadata !DIExpression()), !dbg !2001
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2002
  ret i8* %4, !dbg !2003
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2004 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2006, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 0, metadata !1901, metadata !DIExpression()) #32, !dbg !2008
  call void @llvm.dbg.value(metadata i8* %0, metadata !1902, metadata !DIExpression()) #32, !dbg !2008
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2010
  ret i8* %2, !dbg !2011
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2012 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2016, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i64 %1, metadata !2017, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i32 0, metadata !1998, metadata !DIExpression()) #32, !dbg !2019
  call void @llvm.dbg.value(metadata i8* %0, metadata !1999, metadata !DIExpression()) #32, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %1, metadata !2000, metadata !DIExpression()) #32, !dbg !2019
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2021
  ret i8* %3, !dbg !2022
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2023 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2027, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %1, metadata !2028, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8* %2, metadata !2029, metadata !DIExpression()), !dbg !2031
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2032
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2032
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2030, metadata !DIExpression()), !dbg !2033
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2034), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %1, metadata !2038, metadata !DIExpression()) #32, !dbg !2044
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2043, metadata !DIExpression()) #32, !dbg !2046
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2046, !alias.scope !2034
  %6 = icmp eq i32 %1, 10, !dbg !2047
  br i1 %6, label %7, label %8, !dbg !2049

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2050, !noalias !2034
  unreachable, !dbg !2050

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2051
  store i32 %1, i32* %9, align 8, !dbg !2052, !tbaa !1140, !alias.scope !2034
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2053
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2054
  ret i8* %10, !dbg !2055
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2056 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2060, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %1, metadata !2061, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %2, metadata !2062, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %3, metadata !2063, metadata !DIExpression()), !dbg !2065
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2066
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2066
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2064, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2068), !dbg !2071
  call void @llvm.dbg.value(metadata i32 %1, metadata !2038, metadata !DIExpression()) #32, !dbg !2072
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2043, metadata !DIExpression()) #32, !dbg !2074
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2074, !alias.scope !2068
  %7 = icmp eq i32 %1, 10, !dbg !2075
  br i1 %7, label %8, label %9, !dbg !2076

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2077, !noalias !2068
  unreachable, !dbg !2077

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2078
  store i32 %1, i32* %10, align 8, !dbg !2079, !tbaa !1140, !alias.scope !2068
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2080
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2081
  ret i8* %11, !dbg !2082
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2083 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2087, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8* %1, metadata !2088, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 0, metadata !2027, metadata !DIExpression()) #32, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %0, metadata !2028, metadata !DIExpression()) #32, !dbg !2090
  call void @llvm.dbg.value(metadata i8* %1, metadata !2029, metadata !DIExpression()) #32, !dbg !2090
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2092
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2092
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2030, metadata !DIExpression()) #32, !dbg !2093
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2094) #32, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %0, metadata !2038, metadata !DIExpression()) #32, !dbg !2098
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2043, metadata !DIExpression()) #32, !dbg !2100
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2100, !alias.scope !2094
  %5 = icmp eq i32 %0, 10, !dbg !2101
  br i1 %5, label %6, label %7, !dbg !2102

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2103, !noalias !2094
  unreachable, !dbg !2103

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2104
  store i32 %0, i32* %8, align 8, !dbg !2105, !tbaa !1140, !alias.scope !2094
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2106
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2107
  ret i8* %9, !dbg !2108
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2109 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2113, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8* %1, metadata !2114, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %2, metadata !2115, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i32 0, metadata !2060, metadata !DIExpression()) #32, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %0, metadata !2061, metadata !DIExpression()) #32, !dbg !2117
  call void @llvm.dbg.value(metadata i8* %1, metadata !2062, metadata !DIExpression()) #32, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %2, metadata !2063, metadata !DIExpression()) #32, !dbg !2117
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2119
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2119
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2064, metadata !DIExpression()) #32, !dbg !2120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2121) #32, !dbg !2124
  call void @llvm.dbg.value(metadata i32 %0, metadata !2038, metadata !DIExpression()) #32, !dbg !2125
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2043, metadata !DIExpression()) #32, !dbg !2127
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2127, !alias.scope !2121
  %6 = icmp eq i32 %0, 10, !dbg !2128
  br i1 %6, label %7, label %8, !dbg !2129

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2130, !noalias !2121
  unreachable, !dbg !2130

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2131
  store i32 %0, i32* %9, align 8, !dbg !2132, !tbaa !1140, !alias.scope !2121
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2133
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2134
  ret i8* %10, !dbg !2135
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2136 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2140, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64 %1, metadata !2141, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8 %2, metadata !2142, metadata !DIExpression()), !dbg !2144
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2145
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2145
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2143, metadata !DIExpression()), !dbg !2146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2147, !tbaa.struct !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1158, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 %2, metadata !1159, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 1, metadata !1160, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 %2, metadata !1161, metadata !DIExpression()), !dbg !2149
  %6 = lshr i8 %2, 5, !dbg !2151
  %7 = zext i8 %6 to i64, !dbg !2151
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2152
  call void @llvm.dbg.value(metadata i32* %8, metadata !1162, metadata !DIExpression()), !dbg !2149
  %9 = and i8 %2, 31, !dbg !2153
  %10 = zext i8 %9 to i32, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %10, metadata !1164, metadata !DIExpression()), !dbg !2149
  %11 = load i32, i32* %8, align 4, !dbg !2154, !tbaa !515
  %12 = lshr i32 %11, %10, !dbg !2155
  %13 = and i32 %12, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i32 %13, metadata !1165, metadata !DIExpression()), !dbg !2149
  %14 = xor i32 %13, 1, !dbg !2157
  %15 = shl i32 %14, %10, !dbg !2158
  %16 = xor i32 %15, %11, !dbg !2159
  store i32 %16, i32* %8, align 4, !dbg !2159, !tbaa !515
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2160
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2161
  ret i8* %17, !dbg !2162
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2163 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2167, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %1, metadata !2168, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8* %0, metadata !2140, metadata !DIExpression()) #32, !dbg !2170
  call void @llvm.dbg.value(metadata i64 -1, metadata !2141, metadata !DIExpression()) #32, !dbg !2170
  call void @llvm.dbg.value(metadata i8 %1, metadata !2142, metadata !DIExpression()) #32, !dbg !2170
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2172
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2172
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2143, metadata !DIExpression()) #32, !dbg !2173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2174, !tbaa.struct !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1158, metadata !DIExpression()) #32, !dbg !2175
  call void @llvm.dbg.value(metadata i8 %1, metadata !1159, metadata !DIExpression()) #32, !dbg !2175
  call void @llvm.dbg.value(metadata i32 1, metadata !1160, metadata !DIExpression()) #32, !dbg !2175
  call void @llvm.dbg.value(metadata i8 %1, metadata !1161, metadata !DIExpression()) #32, !dbg !2175
  %5 = lshr i8 %1, 5, !dbg !2177
  %6 = zext i8 %5 to i64, !dbg !2177
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2178
  call void @llvm.dbg.value(metadata i32* %7, metadata !1162, metadata !DIExpression()) #32, !dbg !2175
  %8 = and i8 %1, 31, !dbg !2179
  %9 = zext i8 %8 to i32, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %9, metadata !1164, metadata !DIExpression()) #32, !dbg !2175
  %10 = load i32, i32* %7, align 4, !dbg !2180, !tbaa !515
  %11 = lshr i32 %10, %9, !dbg !2181
  %12 = and i32 %11, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i32 %12, metadata !1165, metadata !DIExpression()) #32, !dbg !2175
  %13 = xor i32 %12, 1, !dbg !2183
  %14 = shl i32 %13, %9, !dbg !2184
  %15 = xor i32 %14, %10, !dbg !2185
  store i32 %15, i32* %7, align 4, !dbg !2185, !tbaa !515
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2186
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2187
  ret i8* %16, !dbg !2188
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2189 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2191, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %0, metadata !2167, metadata !DIExpression()) #32, !dbg !2193
  call void @llvm.dbg.value(metadata i8 58, metadata !2168, metadata !DIExpression()) #32, !dbg !2193
  call void @llvm.dbg.value(metadata i8* %0, metadata !2140, metadata !DIExpression()) #32, !dbg !2195
  call void @llvm.dbg.value(metadata i64 -1, metadata !2141, metadata !DIExpression()) #32, !dbg !2195
  call void @llvm.dbg.value(metadata i8 58, metadata !2142, metadata !DIExpression()) #32, !dbg !2195
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2197
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2197
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2143, metadata !DIExpression()) #32, !dbg !2198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2199, !tbaa.struct !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1158, metadata !DIExpression()) #32, !dbg !2200
  call void @llvm.dbg.value(metadata i8 58, metadata !1159, metadata !DIExpression()) #32, !dbg !2200
  call void @llvm.dbg.value(metadata i32 1, metadata !1160, metadata !DIExpression()) #32, !dbg !2200
  call void @llvm.dbg.value(metadata i8 58, metadata !1161, metadata !DIExpression()) #32, !dbg !2200
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2202
  call void @llvm.dbg.value(metadata i32* %4, metadata !1162, metadata !DIExpression()) #32, !dbg !2200
  call void @llvm.dbg.value(metadata i32 26, metadata !1164, metadata !DIExpression()) #32, !dbg !2200
  %5 = load i32, i32* %4, align 4, !dbg !2203, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %5, metadata !1165, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2200
  %6 = or i32 %5, 67108864, !dbg !2204
  store i32 %6, i32* %4, align 4, !dbg !2204, !tbaa !515
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2205
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2206
  ret i8* %7, !dbg !2207
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2208 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2210, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i64 %1, metadata !2211, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8* %0, metadata !2140, metadata !DIExpression()) #32, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %1, metadata !2141, metadata !DIExpression()) #32, !dbg !2213
  call void @llvm.dbg.value(metadata i8 58, metadata !2142, metadata !DIExpression()) #32, !dbg !2213
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2215
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2215
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2143, metadata !DIExpression()) #32, !dbg !2216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2217, !tbaa.struct !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1158, metadata !DIExpression()) #32, !dbg !2218
  call void @llvm.dbg.value(metadata i8 58, metadata !1159, metadata !DIExpression()) #32, !dbg !2218
  call void @llvm.dbg.value(metadata i32 1, metadata !1160, metadata !DIExpression()) #32, !dbg !2218
  call void @llvm.dbg.value(metadata i8 58, metadata !1161, metadata !DIExpression()) #32, !dbg !2218
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2220
  call void @llvm.dbg.value(metadata i32* %5, metadata !1162, metadata !DIExpression()) #32, !dbg !2218
  call void @llvm.dbg.value(metadata i32 26, metadata !1164, metadata !DIExpression()) #32, !dbg !2218
  %6 = load i32, i32* %5, align 4, !dbg !2221, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %6, metadata !1165, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2218
  %7 = or i32 %6, 67108864, !dbg !2222
  store i32 %7, i32* %5, align 4, !dbg !2222, !tbaa !515
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2223
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2224
  ret i8* %8, !dbg !2225
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2226 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2228, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i32 %1, metadata !2229, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %2, metadata !2230, metadata !DIExpression()), !dbg !2232
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2233
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2233
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2231, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %1, metadata !2038, metadata !DIExpression()) #32, !dbg !2235
  call void @llvm.dbg.value(metadata i32 0, metadata !2043, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2235
  %6 = icmp eq i32 %1, 10, !dbg !2237
  br i1 %6, label %7, label %8, !dbg !2238

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2239, !noalias !2240
  unreachable, !dbg !2239

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2043, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2235
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2243
  store i32 %1, i32* %9, align 8, !dbg !2243, !tbaa.struct !2148
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2243
  %11 = bitcast i32* %10 to i8*, !dbg !2243
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1158, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8 58, metadata !1159, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32 1, metadata !1160, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8 58, metadata !1161, metadata !DIExpression()), !dbg !2244
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2246
  call void @llvm.dbg.value(metadata i32* %12, metadata !1162, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32 26, metadata !1164, metadata !DIExpression()), !dbg !2244
  %13 = load i32, i32* %12, align 4, !dbg !2247, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %13, metadata !1165, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2244
  %14 = or i32 %13, 67108864, !dbg !2248
  store i32 %14, i32* %12, align 4, !dbg !2248, !tbaa !515
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2249
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2250
  ret i8* %15, !dbg !2251
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2252 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2256, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8* %1, metadata !2257, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8* %2, metadata !2258, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8* %3, metadata !2259, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 %0, metadata !2261, metadata !DIExpression()) #32, !dbg !2271
  call void @llvm.dbg.value(metadata i8* %1, metadata !2266, metadata !DIExpression()) #32, !dbg !2271
  call void @llvm.dbg.value(metadata i8* %2, metadata !2267, metadata !DIExpression()) #32, !dbg !2271
  call void @llvm.dbg.value(metadata i8* %3, metadata !2268, metadata !DIExpression()) #32, !dbg !2271
  call void @llvm.dbg.value(metadata i64 -1, metadata !2269, metadata !DIExpression()) #32, !dbg !2271
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2273
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2273
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2270, metadata !DIExpression()) #32, !dbg !2274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2275, !tbaa.struct !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1198, metadata !DIExpression()) #32, !dbg !2276
  call void @llvm.dbg.value(metadata i8* %1, metadata !1199, metadata !DIExpression()) #32, !dbg !2276
  call void @llvm.dbg.value(metadata i8* %2, metadata !1200, metadata !DIExpression()) #32, !dbg !2276
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1198, metadata !DIExpression()) #32, !dbg !2276
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2278
  store i32 10, i32* %7, align 8, !dbg !2279, !tbaa !1140
  %8 = icmp ne i8* %1, null, !dbg !2280
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2281
  br i1 %10, label %12, label %11, !dbg !2281

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2282
  unreachable, !dbg !2282

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2283
  store i8* %1, i8** %13, align 8, !dbg !2284, !tbaa !1213
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2285
  store i8* %2, i8** %14, align 8, !dbg !2286, !tbaa !1216
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2287
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2288
  ret i8* %15, !dbg !2289
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2262 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2261, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %1, metadata !2266, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %2, metadata !2267, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %3, metadata !2268, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %4, metadata !2269, metadata !DIExpression()), !dbg !2290
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2291
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2291
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2270, metadata !DIExpression()), !dbg !2292
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2293, !tbaa.struct !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1198, metadata !DIExpression()) #32, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %1, metadata !1199, metadata !DIExpression()) #32, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %2, metadata !1200, metadata !DIExpression()) #32, !dbg !2294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1198, metadata !DIExpression()) #32, !dbg !2294
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2296
  store i32 10, i32* %8, align 8, !dbg !2297, !tbaa !1140
  %9 = icmp ne i8* %1, null, !dbg !2298
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2299
  br i1 %11, label %13, label %12, !dbg !2299

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2300
  unreachable, !dbg !2300

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2301
  store i8* %1, i8** %14, align 8, !dbg !2302, !tbaa !1213
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2303
  store i8* %2, i8** %15, align 8, !dbg !2304, !tbaa !1216
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2305
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2306
  ret i8* %16, !dbg !2307
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2308 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2312, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8* %1, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8* %2, metadata !2314, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 0, metadata !2256, metadata !DIExpression()) #32, !dbg !2316
  call void @llvm.dbg.value(metadata i8* %0, metadata !2257, metadata !DIExpression()) #32, !dbg !2316
  call void @llvm.dbg.value(metadata i8* %1, metadata !2258, metadata !DIExpression()) #32, !dbg !2316
  call void @llvm.dbg.value(metadata i8* %2, metadata !2259, metadata !DIExpression()) #32, !dbg !2316
  call void @llvm.dbg.value(metadata i32 0, metadata !2261, metadata !DIExpression()) #32, !dbg !2318
  call void @llvm.dbg.value(metadata i8* %0, metadata !2266, metadata !DIExpression()) #32, !dbg !2318
  call void @llvm.dbg.value(metadata i8* %1, metadata !2267, metadata !DIExpression()) #32, !dbg !2318
  call void @llvm.dbg.value(metadata i8* %2, metadata !2268, metadata !DIExpression()) #32, !dbg !2318
  call void @llvm.dbg.value(metadata i64 -1, metadata !2269, metadata !DIExpression()) #32, !dbg !2318
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2320
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2320
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2270, metadata !DIExpression()) #32, !dbg !2321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2322, !tbaa.struct !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1198, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %0, metadata !1199, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %1, metadata !1200, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1198, metadata !DIExpression()) #32, !dbg !2323
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2325
  store i32 10, i32* %6, align 8, !dbg !2326, !tbaa !1140
  %7 = icmp ne i8* %0, null, !dbg !2327
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2328
  br i1 %9, label %11, label %10, !dbg !2328

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2329
  unreachable, !dbg !2329

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2330
  store i8* %0, i8** %12, align 8, !dbg !2331, !tbaa !1213
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2332
  store i8* %1, i8** %13, align 8, !dbg !2333, !tbaa !1216
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2334
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2335
  ret i8* %14, !dbg !2336
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2337 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2341, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %1, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %2, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %3, metadata !2344, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 0, metadata !2261, metadata !DIExpression()) #32, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %0, metadata !2266, metadata !DIExpression()) #32, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %1, metadata !2267, metadata !DIExpression()) #32, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %2, metadata !2268, metadata !DIExpression()) #32, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %3, metadata !2269, metadata !DIExpression()) #32, !dbg !2346
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2348
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2348
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2270, metadata !DIExpression()) #32, !dbg !2349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2350, !tbaa.struct !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1198, metadata !DIExpression()) #32, !dbg !2351
  call void @llvm.dbg.value(metadata i8* %0, metadata !1199, metadata !DIExpression()) #32, !dbg !2351
  call void @llvm.dbg.value(metadata i8* %1, metadata !1200, metadata !DIExpression()) #32, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1198, metadata !DIExpression()) #32, !dbg !2351
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2353
  store i32 10, i32* %7, align 8, !dbg !2354, !tbaa !1140
  %8 = icmp ne i8* %0, null, !dbg !2355
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2356
  br i1 %10, label %12, label %11, !dbg !2356

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2357
  unreachable, !dbg !2357

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2358
  store i8* %0, i8** %13, align 8, !dbg !2359, !tbaa !1213
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2360
  store i8* %1, i8** %14, align 8, !dbg !2361, !tbaa !1216
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2363
  ret i8* %15, !dbg !2364
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2365 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8* %1, metadata !2370, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i64 %2, metadata !2371, metadata !DIExpression()), !dbg !2372
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2373
  ret i8* %4, !dbg !2374
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %1, metadata !2380, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 0, metadata !2369, metadata !DIExpression()) #32, !dbg !2382
  call void @llvm.dbg.value(metadata i8* %0, metadata !2370, metadata !DIExpression()) #32, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %1, metadata !2371, metadata !DIExpression()) #32, !dbg !2382
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2384
  ret i8* %3, !dbg !2385
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2386 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8* %1, metadata !2391, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()) #32, !dbg !2393
  call void @llvm.dbg.value(metadata i8* %1, metadata !2370, metadata !DIExpression()) #32, !dbg !2393
  call void @llvm.dbg.value(metadata i64 -1, metadata !2371, metadata !DIExpression()) #32, !dbg !2393
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2395
  ret i8* %3, !dbg !2396
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2397 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2401, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 0, metadata !2390, metadata !DIExpression()) #32, !dbg !2403
  call void @llvm.dbg.value(metadata i8* %0, metadata !2391, metadata !DIExpression()) #32, !dbg !2403
  call void @llvm.dbg.value(metadata i32 0, metadata !2369, metadata !DIExpression()) #32, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %0, metadata !2370, metadata !DIExpression()) #32, !dbg !2405
  call void @llvm.dbg.value(metadata i64 -1, metadata !2371, metadata !DIExpression()) #32, !dbg !2405
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2407
  ret i8* %2, !dbg !2408
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2409 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2448, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %1, metadata !2449, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %2, metadata !2450, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %3, metadata !2451, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8** %4, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i64 %5, metadata !2453, metadata !DIExpression()), !dbg !2454
  %7 = icmp eq i8* %1, null, !dbg !2455
  br i1 %7, label %10, label %8, !dbg !2457

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2458
  br label %12, !dbg !2458

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.80, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2459
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.82, i64 0, i64 0), i32 noundef 5) #32, !dbg !2460
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2460
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.83, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2461
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.84, i64 0, i64 0), i32 noundef 5) #32, !dbg !2462
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.85, i64 0, i64 0)) #32, !dbg !2462
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.83, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2463
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
  ], !dbg !2464

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.86, i64 0, i64 0), i32 noundef 5) #32, !dbg !2465
  %21 = load i8*, i8** %4, align 8, !dbg !2465, !tbaa !435
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2465
  br label %147, !dbg !2467

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.87, i64 0, i64 0), i32 noundef 5) #32, !dbg !2468
  %25 = load i8*, i8** %4, align 8, !dbg !2468, !tbaa !435
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2468
  %27 = load i8*, i8** %26, align 8, !dbg !2468, !tbaa !435
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2468
  br label %147, !dbg !2469

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !2470
  %31 = load i8*, i8** %4, align 8, !dbg !2470, !tbaa !435
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2470
  %33 = load i8*, i8** %32, align 8, !dbg !2470, !tbaa !435
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2470
  %35 = load i8*, i8** %34, align 8, !dbg !2470, !tbaa !435
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2470
  br label %147, !dbg !2471

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.89, i64 0, i64 0), i32 noundef 5) #32, !dbg !2472
  %39 = load i8*, i8** %4, align 8, !dbg !2472, !tbaa !435
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2472
  %41 = load i8*, i8** %40, align 8, !dbg !2472, !tbaa !435
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2472
  %43 = load i8*, i8** %42, align 8, !dbg !2472, !tbaa !435
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2472
  %45 = load i8*, i8** %44, align 8, !dbg !2472, !tbaa !435
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2472
  br label %147, !dbg !2473

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.90, i64 0, i64 0), i32 noundef 5) #32, !dbg !2474
  %49 = load i8*, i8** %4, align 8, !dbg !2474, !tbaa !435
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2474
  %51 = load i8*, i8** %50, align 8, !dbg !2474, !tbaa !435
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2474
  %53 = load i8*, i8** %52, align 8, !dbg !2474, !tbaa !435
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2474
  %55 = load i8*, i8** %54, align 8, !dbg !2474, !tbaa !435
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2474
  %57 = load i8*, i8** %56, align 8, !dbg !2474, !tbaa !435
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2474
  br label %147, !dbg !2475

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !2476
  %61 = load i8*, i8** %4, align 8, !dbg !2476, !tbaa !435
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2476
  %63 = load i8*, i8** %62, align 8, !dbg !2476, !tbaa !435
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2476
  %65 = load i8*, i8** %64, align 8, !dbg !2476, !tbaa !435
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2476
  %67 = load i8*, i8** %66, align 8, !dbg !2476, !tbaa !435
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2476
  %69 = load i8*, i8** %68, align 8, !dbg !2476, !tbaa !435
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2476
  %71 = load i8*, i8** %70, align 8, !dbg !2476, !tbaa !435
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2476
  br label %147, !dbg !2477

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.92, i64 0, i64 0), i32 noundef 5) #32, !dbg !2478
  %75 = load i8*, i8** %4, align 8, !dbg !2478, !tbaa !435
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2478
  %77 = load i8*, i8** %76, align 8, !dbg !2478, !tbaa !435
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2478
  %79 = load i8*, i8** %78, align 8, !dbg !2478, !tbaa !435
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2478
  %81 = load i8*, i8** %80, align 8, !dbg !2478, !tbaa !435
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2478
  %83 = load i8*, i8** %82, align 8, !dbg !2478, !tbaa !435
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2478
  %85 = load i8*, i8** %84, align 8, !dbg !2478, !tbaa !435
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2478
  %87 = load i8*, i8** %86, align 8, !dbg !2478, !tbaa !435
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2478
  br label %147, !dbg !2479

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.93, i64 0, i64 0), i32 noundef 5) #32, !dbg !2480
  %91 = load i8*, i8** %4, align 8, !dbg !2480, !tbaa !435
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2480
  %93 = load i8*, i8** %92, align 8, !dbg !2480, !tbaa !435
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2480
  %95 = load i8*, i8** %94, align 8, !dbg !2480, !tbaa !435
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2480
  %97 = load i8*, i8** %96, align 8, !dbg !2480, !tbaa !435
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2480
  %99 = load i8*, i8** %98, align 8, !dbg !2480, !tbaa !435
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2480
  %101 = load i8*, i8** %100, align 8, !dbg !2480, !tbaa !435
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2480
  %103 = load i8*, i8** %102, align 8, !dbg !2480, !tbaa !435
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2480
  %105 = load i8*, i8** %104, align 8, !dbg !2480, !tbaa !435
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2480
  br label %147, !dbg !2481

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.94, i64 0, i64 0), i32 noundef 5) #32, !dbg !2482
  %109 = load i8*, i8** %4, align 8, !dbg !2482, !tbaa !435
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2482
  %111 = load i8*, i8** %110, align 8, !dbg !2482, !tbaa !435
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2482
  %113 = load i8*, i8** %112, align 8, !dbg !2482, !tbaa !435
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2482
  %115 = load i8*, i8** %114, align 8, !dbg !2482, !tbaa !435
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2482
  %117 = load i8*, i8** %116, align 8, !dbg !2482, !tbaa !435
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2482
  %119 = load i8*, i8** %118, align 8, !dbg !2482, !tbaa !435
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2482
  %121 = load i8*, i8** %120, align 8, !dbg !2482, !tbaa !435
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2482
  %123 = load i8*, i8** %122, align 8, !dbg !2482, !tbaa !435
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2482
  %125 = load i8*, i8** %124, align 8, !dbg !2482, !tbaa !435
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2482
  br label %147, !dbg !2483

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.95, i64 0, i64 0), i32 noundef 5) #32, !dbg !2484
  %129 = load i8*, i8** %4, align 8, !dbg !2484, !tbaa !435
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2484
  %131 = load i8*, i8** %130, align 8, !dbg !2484, !tbaa !435
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2484
  %133 = load i8*, i8** %132, align 8, !dbg !2484, !tbaa !435
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2484
  %135 = load i8*, i8** %134, align 8, !dbg !2484, !tbaa !435
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2484
  %137 = load i8*, i8** %136, align 8, !dbg !2484, !tbaa !435
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2484
  %139 = load i8*, i8** %138, align 8, !dbg !2484, !tbaa !435
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2484
  %141 = load i8*, i8** %140, align 8, !dbg !2484, !tbaa !435
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2484
  %143 = load i8*, i8** %142, align 8, !dbg !2484, !tbaa !435
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2484
  %145 = load i8*, i8** %144, align 8, !dbg !2484, !tbaa !435
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2484
  br label %147, !dbg !2485

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2486
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2487 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2491, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* %1, metadata !2492, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* %2, metadata !2493, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* %3, metadata !2494, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8** %4, metadata !2495, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 0, metadata !2496, metadata !DIExpression()), !dbg !2497
  br label %6, !dbg !2498

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2500
  call void @llvm.dbg.value(metadata i64 %7, metadata !2496, metadata !DIExpression()), !dbg !2497
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2501
  %9 = load i8*, i8** %8, align 8, !dbg !2501, !tbaa !435
  %10 = icmp eq i8* %9, null, !dbg !2503
  %11 = add i64 %7, 1, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %11, metadata !2496, metadata !DIExpression()), !dbg !2497
  br i1 %10, label %12, label %6, !dbg !2503, !llvm.loop !2505

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2507
  ret void, !dbg !2508
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2509 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2524, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %1, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %2, metadata !2526, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %3, metadata !2527, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2528, metadata !DIExpression()), !dbg !2533
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2534
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2534
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2530, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 0, metadata !2529, metadata !DIExpression()), !dbg !2532
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2529, metadata !DIExpression()), !dbg !2532
  %11 = load i32, i32* %8, align 8, !dbg !2536
  %12 = icmp sgt i32 %11, -1, !dbg !2536
  br i1 %12, label %20, label %13, !dbg !2536

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2536
  store i32 %14, i32* %8, align 8, !dbg !2536
  %15 = icmp ult i32 %11, -7, !dbg !2536
  br i1 %15, label %16, label %20, !dbg !2536

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2536
  %18 = sext i32 %11 to i64, !dbg !2536
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2536
  br label %24, !dbg !2536

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2536
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2536
  store i8* %23, i8** %10, align 8, !dbg !2536
  br label %24, !dbg !2536

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2536
  %28 = load i8*, i8** %27, align 8, !dbg !2536
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2539
  store i8* %28, i8** %29, align 8, !dbg !2540, !tbaa !435
  %30 = icmp eq i8* %28, null, !dbg !2541
  br i1 %30, label %210, label %31, !dbg !2542

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 1, metadata !2529, metadata !DIExpression()), !dbg !2532
  %32 = icmp sgt i32 %25, -1, !dbg !2536
  br i1 %32, label %40, label %33, !dbg !2536

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2536
  store i32 %34, i32* %8, align 8, !dbg !2536
  %35 = icmp ult i32 %25, -7, !dbg !2536
  br i1 %35, label %36, label %40, !dbg !2536

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2536
  %38 = sext i32 %25 to i64, !dbg !2536
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2536
  br label %44, !dbg !2536

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2536
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2536
  store i8* %43, i8** %10, align 8, !dbg !2536
  br label %44, !dbg !2536

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2536
  %48 = load i8*, i8** %47, align 8, !dbg !2536
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2539
  store i8* %48, i8** %49, align 8, !dbg !2540, !tbaa !435
  %50 = icmp eq i8* %48, null, !dbg !2541
  br i1 %50, label %210, label %51, !dbg !2542

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 2, metadata !2529, metadata !DIExpression()), !dbg !2532
  %52 = icmp sgt i32 %45, -1, !dbg !2536
  br i1 %52, label %60, label %53, !dbg !2536

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2536
  store i32 %54, i32* %8, align 8, !dbg !2536
  %55 = icmp ult i32 %45, -7, !dbg !2536
  br i1 %55, label %56, label %60, !dbg !2536

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2536
  %58 = sext i32 %45 to i64, !dbg !2536
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2536
  br label %64, !dbg !2536

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2536
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2536
  store i8* %63, i8** %10, align 8, !dbg !2536
  br label %64, !dbg !2536

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2536
  %68 = load i8*, i8** %67, align 8, !dbg !2536
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2539
  store i8* %68, i8** %69, align 8, !dbg !2540, !tbaa !435
  %70 = icmp eq i8* %68, null, !dbg !2541
  br i1 %70, label %210, label %71, !dbg !2542

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 3, metadata !2529, metadata !DIExpression()), !dbg !2532
  %72 = icmp sgt i32 %65, -1, !dbg !2536
  br i1 %72, label %80, label %73, !dbg !2536

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2536
  store i32 %74, i32* %8, align 8, !dbg !2536
  %75 = icmp ult i32 %65, -7, !dbg !2536
  br i1 %75, label %76, label %80, !dbg !2536

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2536
  %78 = sext i32 %65 to i64, !dbg !2536
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2536
  br label %84, !dbg !2536

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2536
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2536
  store i8* %83, i8** %10, align 8, !dbg !2536
  br label %84, !dbg !2536

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2536
  %88 = load i8*, i8** %87, align 8, !dbg !2536
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2539
  store i8* %88, i8** %89, align 8, !dbg !2540, !tbaa !435
  %90 = icmp eq i8* %88, null, !dbg !2541
  br i1 %90, label %210, label %91, !dbg !2542

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 4, metadata !2529, metadata !DIExpression()), !dbg !2532
  %92 = icmp sgt i32 %85, -1, !dbg !2536
  br i1 %92, label %100, label %93, !dbg !2536

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2536
  store i32 %94, i32* %8, align 8, !dbg !2536
  %95 = icmp ult i32 %85, -7, !dbg !2536
  br i1 %95, label %96, label %100, !dbg !2536

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2536
  %98 = sext i32 %85 to i64, !dbg !2536
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2536
  br label %104, !dbg !2536

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2536
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2536
  store i8* %103, i8** %10, align 8, !dbg !2536
  br label %104, !dbg !2536

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2536
  %108 = load i8*, i8** %107, align 8, !dbg !2536
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2539
  store i8* %108, i8** %109, align 8, !dbg !2540, !tbaa !435
  %110 = icmp eq i8* %108, null, !dbg !2541
  br i1 %110, label %210, label %111, !dbg !2542

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 5, metadata !2529, metadata !DIExpression()), !dbg !2532
  %112 = icmp sgt i32 %105, -1, !dbg !2536
  br i1 %112, label %120, label %113, !dbg !2536

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2536
  store i32 %114, i32* %8, align 8, !dbg !2536
  %115 = icmp ult i32 %105, -7, !dbg !2536
  br i1 %115, label %116, label %120, !dbg !2536

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2536
  %118 = sext i32 %105 to i64, !dbg !2536
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2536
  br label %124, !dbg !2536

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2536
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2536
  store i8* %123, i8** %10, align 8, !dbg !2536
  br label %124, !dbg !2536

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2536
  %128 = load i8*, i8** %127, align 8, !dbg !2536
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2539
  store i8* %128, i8** %129, align 8, !dbg !2540, !tbaa !435
  %130 = icmp eq i8* %128, null, !dbg !2541
  br i1 %130, label %210, label %131, !dbg !2542

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 6, metadata !2529, metadata !DIExpression()), !dbg !2532
  %132 = icmp sgt i32 %125, -1, !dbg !2536
  br i1 %132, label %140, label %133, !dbg !2536

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2536
  store i32 %134, i32* %8, align 8, !dbg !2536
  %135 = icmp ult i32 %125, -7, !dbg !2536
  br i1 %135, label %136, label %140, !dbg !2536

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2536
  %138 = sext i32 %125 to i64, !dbg !2536
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2536
  br label %144, !dbg !2536

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2536
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2536
  store i8* %143, i8** %10, align 8, !dbg !2536
  br label %144, !dbg !2536

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2536
  %148 = load i8*, i8** %147, align 8, !dbg !2536
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2539
  store i8* %148, i8** %149, align 8, !dbg !2540, !tbaa !435
  %150 = icmp eq i8* %148, null, !dbg !2541
  br i1 %150, label %210, label %151, !dbg !2542

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 7, metadata !2529, metadata !DIExpression()), !dbg !2532
  %152 = icmp sgt i32 %145, -1, !dbg !2536
  br i1 %152, label %160, label %153, !dbg !2536

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2536
  store i32 %154, i32* %8, align 8, !dbg !2536
  %155 = icmp ult i32 %145, -7, !dbg !2536
  br i1 %155, label %156, label %160, !dbg !2536

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2536
  %158 = sext i32 %145 to i64, !dbg !2536
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2536
  br label %164, !dbg !2536

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2536
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2536
  store i8* %163, i8** %10, align 8, !dbg !2536
  br label %164, !dbg !2536

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2536
  %168 = load i8*, i8** %167, align 8, !dbg !2536
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2539
  store i8* %168, i8** %169, align 8, !dbg !2540, !tbaa !435
  %170 = icmp eq i8* %168, null, !dbg !2541
  br i1 %170, label %210, label %171, !dbg !2542

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 8, metadata !2529, metadata !DIExpression()), !dbg !2532
  %172 = icmp sgt i32 %165, -1, !dbg !2536
  br i1 %172, label %180, label %173, !dbg !2536

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2536
  store i32 %174, i32* %8, align 8, !dbg !2536
  %175 = icmp ult i32 %165, -7, !dbg !2536
  br i1 %175, label %176, label %180, !dbg !2536

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2536
  %178 = sext i32 %165 to i64, !dbg !2536
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2536
  br label %184, !dbg !2536

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2536
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2536
  store i8* %183, i8** %10, align 8, !dbg !2536
  br label %184, !dbg !2536

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2536
  %188 = load i8*, i8** %187, align 8, !dbg !2536
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2539
  store i8* %188, i8** %189, align 8, !dbg !2540, !tbaa !435
  %190 = icmp eq i8* %188, null, !dbg !2541
  br i1 %190, label %210, label %191, !dbg !2542

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 9, metadata !2529, metadata !DIExpression()), !dbg !2532
  %192 = icmp sgt i32 %185, -1, !dbg !2536
  br i1 %192, label %200, label %193, !dbg !2536

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2536
  store i32 %194, i32* %8, align 8, !dbg !2536
  %195 = icmp ult i32 %185, -7, !dbg !2536
  br i1 %195, label %196, label %200, !dbg !2536

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2536
  %198 = sext i32 %185 to i64, !dbg !2536
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2536
  br label %203, !dbg !2536

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2536
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2536
  store i8* %202, i8** %10, align 8, !dbg !2536
  br label %203, !dbg !2536

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2536
  %206 = load i8*, i8** %205, align 8, !dbg !2536
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2539
  store i8* %206, i8** %207, align 8, !dbg !2540, !tbaa !435
  %208 = icmp eq i8* %206, null, !dbg !2541
  %209 = select i1 %208, i64 9, i64 10, !dbg !2542
  br label %210, !dbg !2542

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2543
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2544
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2545
  ret void, !dbg !2545
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2546 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2550, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* %1, metadata !2551, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* %2, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* %3, metadata !2553, metadata !DIExpression()), !dbg !2555
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2556
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2556
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2554, metadata !DIExpression()), !dbg !2557
  call void @llvm.va_start(i8* nonnull %7), !dbg !2558
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2559
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2559
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2559, !tbaa.struct !746
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2559
  call void @llvm.va_end(i8* nonnull %7), !dbg !2560
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2561
  ret void, !dbg !2561
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2562 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2563, !tbaa !435
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.83, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2563
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.100, i64 0, i64 0), i32 noundef 5) #32, !dbg !2564
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0)) #32, !dbg !2564
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #32, !dbg !2565
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #32, !dbg !2565
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !2566
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !2566
  ret void, !dbg !2567
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2568 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2573, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %1, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %2, metadata !2575, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %0, metadata !2577, metadata !DIExpression()) #32, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %1, metadata !2580, metadata !DIExpression()) #32, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %2, metadata !2581, metadata !DIExpression()) #32, !dbg !2582
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2584
  call void @llvm.dbg.value(metadata i8* %4, metadata !2585, metadata !DIExpression()) #32, !dbg !2590
  %5 = icmp eq i8* %4, null, !dbg !2592
  br i1 %5, label %6, label %7, !dbg !2594

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2595
  unreachable, !dbg !2595

7:                                                ; preds = %3
  ret i8* %4, !dbg !2596
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2578 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2577, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %1, metadata !2580, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %2, metadata !2581, metadata !DIExpression()), !dbg !2597
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2598
  call void @llvm.dbg.value(metadata i8* %4, metadata !2585, metadata !DIExpression()) #32, !dbg !2599
  %5 = icmp eq i8* %4, null, !dbg !2601
  br i1 %5, label %6, label %7, !dbg !2602

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2603
  unreachable, !dbg !2603

7:                                                ; preds = %3
  ret i8* %4, !dbg !2604
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2605 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2609, metadata !DIExpression()), !dbg !2610
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %2, metadata !2585, metadata !DIExpression()) #32, !dbg !2612
  %3 = icmp eq i8* %2, null, !dbg !2614
  br i1 %3, label %4, label %5, !dbg !2615

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2616
  unreachable, !dbg !2616

5:                                                ; preds = %1
  ret i8* %2, !dbg !2617
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2618 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2622, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 %0, metadata !2624, metadata !DIExpression()) #32, !dbg !2628
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2630
  call void @llvm.dbg.value(metadata i8* %2, metadata !2585, metadata !DIExpression()) #32, !dbg !2631
  %3 = icmp eq i8* %2, null, !dbg !2633
  br i1 %3, label %4, label %5, !dbg !2634

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2635
  unreachable, !dbg !2635

5:                                                ; preds = %1
  ret i8* %2, !dbg !2636
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2637 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2641, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 %0, metadata !2609, metadata !DIExpression()) #32, !dbg !2643
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %2, metadata !2585, metadata !DIExpression()) #32, !dbg !2646
  %3 = icmp eq i8* %2, null, !dbg !2648
  br i1 %3, label %4, label %5, !dbg !2649

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2650
  unreachable, !dbg !2650

5:                                                ; preds = %1
  ret i8* %2, !dbg !2651
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2652 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2656, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %1, metadata !2657, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8* %0, metadata !2659, metadata !DIExpression()) #32, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %1, metadata !2663, metadata !DIExpression()) #32, !dbg !2664
  %3 = icmp eq i64 %1, 0, !dbg !2666
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2666
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %5, metadata !2585, metadata !DIExpression()) #32, !dbg !2668
  %6 = icmp eq i8* %5, null, !dbg !2670
  br i1 %6, label %7, label %8, !dbg !2671

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2672
  unreachable, !dbg !2672

8:                                                ; preds = %2
  ret i8* %5, !dbg !2673
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2678, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %1, metadata !2679, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8* %0, metadata !2681, metadata !DIExpression()) #32, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %1, metadata !2684, metadata !DIExpression()) #32, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %0, metadata !2659, metadata !DIExpression()) #32, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %1, metadata !2663, metadata !DIExpression()) #32, !dbg !2687
  %3 = icmp eq i64 %1, 0, !dbg !2689
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2689
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2690
  call void @llvm.dbg.value(metadata i8* %5, metadata !2585, metadata !DIExpression()) #32, !dbg !2691
  %6 = icmp eq i8* %5, null, !dbg !2693
  br i1 %6, label %7, label %8, !dbg !2694

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2695
  unreachable, !dbg !2695

8:                                                ; preds = %2
  ret i8* %5, !dbg !2696
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2697 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %1, metadata !2702, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %2, metadata !2703, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %0, metadata !2705, metadata !DIExpression()) #32, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %1, metadata !2708, metadata !DIExpression()) #32, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %2, metadata !2709, metadata !DIExpression()) #32, !dbg !2710
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2712
  call void @llvm.dbg.value(metadata i8* %4, metadata !2585, metadata !DIExpression()) #32, !dbg !2713
  %5 = icmp eq i8* %4, null, !dbg !2715
  br i1 %5, label %6, label %7, !dbg !2716

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2717
  unreachable, !dbg !2717

7:                                                ; preds = %3
  ret i8* %4, !dbg !2718
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2719 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2723, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %1, metadata !2724, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8* null, metadata !2577, metadata !DIExpression()) #32, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %0, metadata !2580, metadata !DIExpression()) #32, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %1, metadata !2581, metadata !DIExpression()) #32, !dbg !2726
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %3, metadata !2585, metadata !DIExpression()) #32, !dbg !2729
  %4 = icmp eq i8* %3, null, !dbg !2731
  br i1 %4, label %5, label %6, !dbg !2732

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2733
  unreachable, !dbg !2733

6:                                                ; preds = %2
  ret i8* %3, !dbg !2734
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2735 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2739, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8* null, metadata !2701, metadata !DIExpression()) #32, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %0, metadata !2702, metadata !DIExpression()) #32, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %1, metadata !2703, metadata !DIExpression()) #32, !dbg !2742
  call void @llvm.dbg.value(metadata i8* null, metadata !2705, metadata !DIExpression()) #32, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %0, metadata !2708, metadata !DIExpression()) #32, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %1, metadata !2709, metadata !DIExpression()) #32, !dbg !2744
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2746
  call void @llvm.dbg.value(metadata i8* %3, metadata !2585, metadata !DIExpression()) #32, !dbg !2747
  %4 = icmp eq i8* %3, null, !dbg !2749
  br i1 %4, label %5, label %6, !dbg !2750

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2751
  unreachable, !dbg !2751

6:                                                ; preds = %2
  ret i8* %3, !dbg !2752
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2753 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64* %1, metadata !2758, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()) #32, !dbg !2760
  call void @llvm.dbg.value(metadata i64* %1, metadata !369, metadata !DIExpression()) #32, !dbg !2760
  call void @llvm.dbg.value(metadata i64 1, metadata !370, metadata !DIExpression()) #32, !dbg !2760
  %3 = load i64, i64* %1, align 8, !dbg !2762, !tbaa !1858
  call void @llvm.dbg.value(metadata i64 %3, metadata !371, metadata !DIExpression()) #32, !dbg !2760
  %4 = icmp eq i8* %0, null, !dbg !2763
  br i1 %4, label %5, label %8, !dbg !2765

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2766
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2769
  br label %15, !dbg !2769

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2770
  %10 = add nuw i64 %9, 1, !dbg !2770
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !2770
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2770
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %13, metadata !371, metadata !DIExpression()) #32, !dbg !2760
  br i1 %12, label %14, label %15, !dbg !2773

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !2774
  unreachable, !dbg !2774

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2760
  call void @llvm.dbg.value(metadata i64 %16, metadata !371, metadata !DIExpression()) #32, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %0, metadata !2577, metadata !DIExpression()) #32, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %16, metadata !2580, metadata !DIExpression()) #32, !dbg !2775
  call void @llvm.dbg.value(metadata i64 1, metadata !2581, metadata !DIExpression()) #32, !dbg !2775
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %17, metadata !2585, metadata !DIExpression()) #32, !dbg !2778
  %18 = icmp eq i8* %17, null, !dbg !2780
  br i1 %18, label %19, label %20, !dbg !2781

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !2782
  unreachable, !dbg !2782

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !368, metadata !DIExpression()) #32, !dbg !2760
  store i64 %16, i64* %1, align 8, !dbg !2783, !tbaa !1858
  ret i8* %17, !dbg !2784
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i64* %1, metadata !369, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i64 %2, metadata !370, metadata !DIExpression()), !dbg !2785
  %4 = load i64, i64* %1, align 8, !dbg !2786, !tbaa !1858
  call void @llvm.dbg.value(metadata i64 %4, metadata !371, metadata !DIExpression()), !dbg !2785
  %5 = icmp eq i8* %0, null, !dbg !2787
  br i1 %5, label %6, label %13, !dbg !2788

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2789
  br i1 %7, label %8, label %20, !dbg !2790

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %9, metadata !371, metadata !DIExpression()), !dbg !2785
  %10 = icmp ugt i64 %2, 128, !dbg !2793
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %12, metadata !371, metadata !DIExpression()), !dbg !2785
  br label %20, !dbg !2795

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2796
  %15 = add nuw i64 %14, 1, !dbg !2796
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2796
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2796
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %18, metadata !371, metadata !DIExpression()), !dbg !2785
  br i1 %17, label %19, label %20, !dbg !2797

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !2798
  unreachable, !dbg !2798

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2785
  call void @llvm.dbg.value(metadata i64 %21, metadata !371, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %0, metadata !2577, metadata !DIExpression()) #32, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %21, metadata !2580, metadata !DIExpression()) #32, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %2, metadata !2581, metadata !DIExpression()) #32, !dbg !2799
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !2801
  call void @llvm.dbg.value(metadata i8* %22, metadata !2585, metadata !DIExpression()) #32, !dbg !2802
  %23 = icmp eq i8* %22, null, !dbg !2804
  br i1 %23, label %24, label %25, !dbg !2805

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !2806
  unreachable, !dbg !2806

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !368, metadata !DIExpression()), !dbg !2785
  store i64 %21, i64* %1, align 8, !dbg !2807, !tbaa !1858
  ret i8* %22, !dbg !2808
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !383, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64* %1, metadata !384, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %2, metadata !385, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %3, metadata !386, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %4, metadata !387, metadata !DIExpression()), !dbg !2809
  %6 = load i64, i64* %1, align 8, !dbg !2810, !tbaa !1858
  call void @llvm.dbg.value(metadata i64 %6, metadata !388, metadata !DIExpression()), !dbg !2809
  %7 = ashr i64 %6, 1, !dbg !2811
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2811
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2811
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %10, metadata !389, metadata !DIExpression()), !dbg !2809
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %11, metadata !389, metadata !DIExpression()), !dbg !2809
  %12 = icmp sgt i64 %3, -1, !dbg !2814
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2816
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %15, metadata !389, metadata !DIExpression()), !dbg !2809
  %16 = icmp slt i64 %4, 0, !dbg !2817
  br i1 %16, label %17, label %30, !dbg !2817

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2817
  br i1 %18, label %19, label %24, !dbg !2817

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2817
  %21 = udiv i64 9223372036854775807, %20, !dbg !2817
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2817
  br i1 %23, label %46, label %43, !dbg !2817

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2817
  br i1 %25, label %43, label %26, !dbg !2817

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2817
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2817
  %29 = icmp ult i64 %28, %15, !dbg !2817
  br i1 %29, label %46, label %43, !dbg !2817

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2817
  br i1 %31, label %43, label %32, !dbg !2817

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2817
  br i1 %33, label %34, label %40, !dbg !2817

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2817
  br i1 %35, label %43, label %36, !dbg !2817

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2817
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2817
  %39 = icmp ult i64 %38, %4, !dbg !2817
  br i1 %39, label %46, label %43, !dbg !2817

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2817
  %42 = icmp ult i64 %41, %15, !dbg !2817
  br i1 %42, label %46, label %43, !dbg !2817

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2809
  %44 = mul i64 %15, %4, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %44, metadata !390, metadata !DIExpression()), !dbg !2809
  %45 = icmp slt i64 %44, 128, !dbg !2817
  br i1 %45, label %46, label %52, !dbg !2817

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !391, metadata !DIExpression()), !dbg !2809
  %48 = sdiv i64 %47, %4, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %48, metadata !389, metadata !DIExpression()), !dbg !2809
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %51, metadata !390, metadata !DIExpression()), !dbg !2809
  br label %52, !dbg !2822

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2809
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2809
  call void @llvm.dbg.value(metadata i64 %54, metadata !390, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %53, metadata !389, metadata !DIExpression()), !dbg !2809
  %55 = icmp eq i8* %0, null, !dbg !2823
  br i1 %55, label %56, label %57, !dbg !2825

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2826, !tbaa !1858
  br label %57, !dbg !2827

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2828
  %59 = icmp slt i64 %58, %2, !dbg !2830
  br i1 %59, label %60, label %97, !dbg !2831

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2832
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2832
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %63, metadata !389, metadata !DIExpression()), !dbg !2809
  br i1 %62, label %96, label %64, !dbg !2833

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2834
  br i1 %66, label %96, label %67, !dbg !2834

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2835

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2835
  br i1 %69, label %70, label %75, !dbg !2835

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2835
  %72 = udiv i64 9223372036854775807, %71, !dbg !2835
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2835
  br i1 %74, label %96, label %94, !dbg !2835

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2835
  br i1 %76, label %94, label %77, !dbg !2835

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2835
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2835
  %80 = icmp ult i64 %79, %63, !dbg !2835
  br i1 %80, label %96, label %94, !dbg !2835

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2835
  br i1 %82, label %94, label %83, !dbg !2835

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2835
  br i1 %84, label %85, label %91, !dbg !2835

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2835
  br i1 %86, label %94, label %87, !dbg !2835

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2835
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2835
  %90 = icmp ult i64 %89, %4, !dbg !2835
  br i1 %90, label %96, label %94, !dbg !2835

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2835
  %93 = icmp ult i64 %92, %63, !dbg !2835
  br i1 %93, label %96, label %94, !dbg !2835

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2809
  %95 = mul i64 %63, %4, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %95, metadata !390, metadata !DIExpression()), !dbg !2809
  br label %97, !dbg !2836

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !2837
  unreachable, !dbg !2837

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2809
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2809
  call void @llvm.dbg.value(metadata i64 %99, metadata !390, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %98, metadata !389, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* %0, metadata !2656, metadata !DIExpression()) #32, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %99, metadata !2657, metadata !DIExpression()) #32, !dbg !2838
  call void @llvm.dbg.value(metadata i8* %0, metadata !2659, metadata !DIExpression()) #32, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %99, metadata !2663, metadata !DIExpression()) #32, !dbg !2840
  %100 = icmp eq i64 %99, 0, !dbg !2842
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2842
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !2843
  call void @llvm.dbg.value(metadata i8* %102, metadata !2585, metadata !DIExpression()) #32, !dbg !2844
  %103 = icmp eq i8* %102, null, !dbg !2846
  br i1 %103, label %104, label %105, !dbg !2847

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !2848
  unreachable, !dbg !2848

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !383, metadata !DIExpression()), !dbg !2809
  store i64 %98, i64* %1, align 8, !dbg !2849, !tbaa !1858
  ret i8* %102, !dbg !2850
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2851 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %0, metadata !2855, metadata !DIExpression()) #32, !dbg !2859
  call void @llvm.dbg.value(metadata i64 1, metadata !2858, metadata !DIExpression()) #32, !dbg !2859
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2861
  call void @llvm.dbg.value(metadata i8* %2, metadata !2585, metadata !DIExpression()) #32, !dbg !2862
  %3 = icmp eq i8* %2, null, !dbg !2864
  br i1 %3, label %4, label %5, !dbg !2865

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2866
  unreachable, !dbg !2866

5:                                                ; preds = %1
  ret i8* %2, !dbg !2867
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2856 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2855, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %1, metadata !2858, metadata !DIExpression()), !dbg !2868
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %3, metadata !2585, metadata !DIExpression()) #32, !dbg !2870
  %4 = icmp eq i8* %3, null, !dbg !2872
  br i1 %4, label %5, label %6, !dbg !2873

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2874
  unreachable, !dbg !2874

6:                                                ; preds = %2
  ret i8* %3, !dbg !2875
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2876 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2878, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %0, metadata !2880, metadata !DIExpression()) #32, !dbg !2884
  call void @llvm.dbg.value(metadata i64 1, metadata !2883, metadata !DIExpression()) #32, !dbg !2884
  call void @llvm.dbg.value(metadata i64 %0, metadata !2886, metadata !DIExpression()) #32, !dbg !2890
  call void @llvm.dbg.value(metadata i64 1, metadata !2889, metadata !DIExpression()) #32, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %0, metadata !2886, metadata !DIExpression()) #32, !dbg !2890
  call void @llvm.dbg.value(metadata i64 1, metadata !2889, metadata !DIExpression()) #32, !dbg !2890
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %2, metadata !2585, metadata !DIExpression()) #32, !dbg !2893
  %3 = icmp eq i8* %2, null, !dbg !2895
  br i1 %3, label %4, label %5, !dbg !2896

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2897
  unreachable, !dbg !2897

5:                                                ; preds = %1
  ret i8* %2, !dbg !2898
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2881 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2880, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %1, metadata !2883, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %0, metadata !2886, metadata !DIExpression()) #32, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %1, metadata !2889, metadata !DIExpression()) #32, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %0, metadata !2886, metadata !DIExpression()) #32, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %1, metadata !2889, metadata !DIExpression()) #32, !dbg !2900
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %3, metadata !2585, metadata !DIExpression()) #32, !dbg !2903
  %4 = icmp eq i8* %3, null, !dbg !2905
  br i1 %4, label %5, label %6, !dbg !2906

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2907
  unreachable, !dbg !2907

6:                                                ; preds = %2
  ret i8* %3, !dbg !2908
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2909 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2913, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %1, metadata !2914, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %1, metadata !2609, metadata !DIExpression()) #32, !dbg !2916
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2918
  call void @llvm.dbg.value(metadata i8* %3, metadata !2585, metadata !DIExpression()) #32, !dbg !2919
  %4 = icmp eq i8* %3, null, !dbg !2921
  br i1 %4, label %5, label %6, !dbg !2922

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2923
  unreachable, !dbg !2923

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2924, metadata !DIExpression()) #32, !dbg !2932
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()) #32, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()) #32, !dbg !2932
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2934
  ret i8* %3, !dbg !2935
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2936 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2940, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i64 %1, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i64 %1, metadata !2622, metadata !DIExpression()) #32, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2624, metadata !DIExpression()) #32, !dbg !2945
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %3, metadata !2585, metadata !DIExpression()) #32, !dbg !2948
  %4 = icmp eq i8* %3, null, !dbg !2950
  br i1 %4, label %5, label %6, !dbg !2951

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2952
  unreachable, !dbg !2952

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2924, metadata !DIExpression()) #32, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()) #32, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()) #32, !dbg !2953
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2955
  ret i8* %3, !dbg !2956
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2957 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2961, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %1, metadata !2962, metadata !DIExpression()), !dbg !2964
  %3 = add nsw i64 %1, 1, !dbg !2965
  call void @llvm.dbg.value(metadata i64 %3, metadata !2622, metadata !DIExpression()) #32, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %3, metadata !2624, metadata !DIExpression()) #32, !dbg !2968
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2970
  call void @llvm.dbg.value(metadata i8* %4, metadata !2585, metadata !DIExpression()) #32, !dbg !2971
  %5 = icmp eq i8* %4, null, !dbg !2973
  br i1 %5, label %6, label %7, !dbg !2974

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2975
  unreachable, !dbg !2975

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !2963, metadata !DIExpression()), !dbg !2964
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2976
  store i8 0, i8* %8, align 1, !dbg !2977, !tbaa !524
  call void @llvm.dbg.value(metadata i8* %4, metadata !2924, metadata !DIExpression()) #32, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()) #32, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()) #32, !dbg !2978
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2980
  ret i8* %4, !dbg !2981
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !2982 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2984, metadata !DIExpression()), !dbg !2985
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !2986
  %3 = add i64 %2, 1, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %0, metadata !2913, metadata !DIExpression()) #32, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %3, metadata !2914, metadata !DIExpression()) #32, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %3, metadata !2609, metadata !DIExpression()) #32, !dbg !2990
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2992
  call void @llvm.dbg.value(metadata i8* %4, metadata !2585, metadata !DIExpression()) #32, !dbg !2993
  %5 = icmp eq i8* %4, null, !dbg !2995
  br i1 %5, label %6, label %7, !dbg !2996

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2997
  unreachable, !dbg !2997

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2924, metadata !DIExpression()) #32, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()) #32, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %3, metadata !2931, metadata !DIExpression()) #32, !dbg !2998
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3000
  ret i8* %4, !dbg !3001
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3002 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3007, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %1, metadata !3004, metadata !DIExpression()), !dbg !3008
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.113, i64 0, i64 0), i32 noundef 5) #32, !dbg !3007
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* noundef %2) #32, !dbg !3007
  %3 = icmp eq i32 %1, 0, !dbg !3007
  tail call void @llvm.assume(i1 %3), !dbg !3007
  tail call void @abort() #34, !dbg !3009
  unreachable, !dbg !3009
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3010 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3048, metadata !DIExpression()), !dbg !3053
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3054
  call void @llvm.dbg.value(metadata i1 undef, metadata !3049, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3053
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3055, metadata !DIExpression()), !dbg !3058
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3060
  %4 = load i32, i32* %3, align 8, !dbg !3060, !tbaa !3061
  %5 = and i32 %4, 32, !dbg !3062
  %6 = icmp eq i32 %5, 0, !dbg !3062
  call void @llvm.dbg.value(metadata i1 %6, metadata !3051, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3053
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3063
  %8 = icmp eq i32 %7, 0, !dbg !3064
  call void @llvm.dbg.value(metadata i1 %8, metadata !3052, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3053
  br i1 %6, label %9, label %19, !dbg !3065

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3067
  call void @llvm.dbg.value(metadata i1 %10, metadata !3049, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3053
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3068
  %12 = xor i1 %8, true, !dbg !3068
  %13 = sext i1 %12 to i32, !dbg !3068
  br i1 %11, label %22, label %14, !dbg !3068

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3069
  %16 = load i32, i32* %15, align 4, !dbg !3069, !tbaa !515
  %17 = icmp ne i32 %16, 9, !dbg !3070
  %18 = sext i1 %17 to i32, !dbg !3071
  br label %22, !dbg !3071

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3072

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3074
  store i32 0, i32* %21, align 4, !dbg !3076, !tbaa !515
  br label %22, !dbg !3074

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3053
  ret i32 %23, !dbg !3077
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3078 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3116, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 0, metadata !3117, metadata !DIExpression()), !dbg !3120
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3121
  call void @llvm.dbg.value(metadata i32 %2, metadata !3118, metadata !DIExpression()), !dbg !3120
  %3 = icmp slt i32 %2, 0, !dbg !3122
  br i1 %3, label %4, label %6, !dbg !3124

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3125
  br label %24, !dbg !3126

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3127
  %8 = icmp eq i32 %7, 0, !dbg !3127
  br i1 %8, label %13, label %9, !dbg !3129

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3130
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3131
  %12 = icmp eq i64 %11, -1, !dbg !3132
  br i1 %12, label %16, label %13, !dbg !3133

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3134
  %15 = icmp eq i32 %14, 0, !dbg !3134
  br i1 %15, label %16, label %18, !dbg !3135

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3117, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 0, metadata !3119, metadata !DIExpression()), !dbg !3120
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3136
  call void @llvm.dbg.value(metadata i32 %21, metadata !3119, metadata !DIExpression()), !dbg !3120
  br label %24, !dbg !3137

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3138
  %20 = load i32, i32* %19, align 4, !dbg !3138, !tbaa !515
  call void @llvm.dbg.value(metadata i32 %20, metadata !3117, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 0, metadata !3119, metadata !DIExpression()), !dbg !3120
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3136
  call void @llvm.dbg.value(metadata i32 %21, metadata !3119, metadata !DIExpression()), !dbg !3120
  %22 = icmp eq i32 %20, 0, !dbg !3139
  br i1 %22, label %24, label %23, !dbg !3137

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3141, !tbaa !515
  call void @llvm.dbg.value(metadata i32 -1, metadata !3119, metadata !DIExpression()), !dbg !3120
  br label %24, !dbg !3143

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3120
  ret i32 %25, !dbg !3144
}

; Function Attrs: nofree nounwind
declare !dbg !3145 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !3146 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3147 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3150 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3188, metadata !DIExpression()), !dbg !3189
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3190
  br i1 %2, label %6, label %3, !dbg !3192

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3193
  %5 = icmp eq i32 %4, 0, !dbg !3193
  br i1 %5, label %6, label %8, !dbg !3194

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3195
  br label %17, !dbg !3196

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3197, metadata !DIExpression()) #32, !dbg !3202
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3204
  %10 = load i32, i32* %9, align 8, !dbg !3204, !tbaa !3061
  %11 = and i32 %10, 256, !dbg !3206
  %12 = icmp eq i32 %11, 0, !dbg !3206
  br i1 %12, label %15, label %13, !dbg !3207

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3208
  br label %15, !dbg !3208

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3209
  br label %17, !dbg !3210

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3189
  ret i32 %18, !dbg !3211
}

; Function Attrs: nofree nounwind
declare !dbg !3212 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3213 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3252, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3253, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 %2, metadata !3254, metadata !DIExpression()), !dbg !3258
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3259
  %5 = load i8*, i8** %4, align 8, !dbg !3259, !tbaa !3260
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3261
  %7 = load i8*, i8** %6, align 8, !dbg !3261, !tbaa !3262
  %8 = icmp eq i8* %5, %7, !dbg !3263
  br i1 %8, label %9, label %28, !dbg !3264

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3265
  %11 = load i8*, i8** %10, align 8, !dbg !3265, !tbaa !861
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3266
  %13 = load i8*, i8** %12, align 8, !dbg !3266, !tbaa !3267
  %14 = icmp eq i8* %11, %13, !dbg !3268
  br i1 %14, label %15, label %28, !dbg !3269

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3270
  %17 = load i8*, i8** %16, align 8, !dbg !3270, !tbaa !3271
  %18 = icmp eq i8* %17, null, !dbg !3272
  br i1 %18, label %19, label %28, !dbg !3273

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3274
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %21, metadata !3255, metadata !DIExpression()), !dbg !3276
  %22 = icmp eq i64 %21, -1, !dbg !3277
  br i1 %22, label %30, label %23, !dbg !3279

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3280
  %25 = load i32, i32* %24, align 8, !dbg !3281, !tbaa !3061
  %26 = and i32 %25, -17, !dbg !3281
  store i32 %26, i32* %24, align 8, !dbg !3281, !tbaa !3061
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3282
  store i64 %21, i64* %27, align 8, !dbg !3283, !tbaa !3284
  br label %30, !dbg !3285

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3286
  br label %30, !dbg !3287

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3258
  ret i32 %31, !dbg !3288
}

; Function Attrs: nofree nounwind
declare !dbg !3289 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3292 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3297, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8* %1, metadata !3298, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %2, metadata !3299, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3300, metadata !DIExpression()), !dbg !3302
  %5 = icmp eq i8* %1, null, !dbg !3303
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3305
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i64 0, i64 0), i8* %1, !dbg !3305
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %8, metadata !3299, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8* %7, metadata !3298, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i32* %6, metadata !3297, metadata !DIExpression()), !dbg !3302
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3306
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3308
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3300, metadata !DIExpression()), !dbg !3302
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3309
  call void @llvm.dbg.value(metadata i64 %11, metadata !3301, metadata !DIExpression()), !dbg !3302
  %12 = icmp ult i64 %11, -3, !dbg !3310
  br i1 %12, label %13, label %18, !dbg !3312

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3313
  %15 = icmp eq i32 %14, 0, !dbg !3313
  br i1 %15, label %16, label %30, !dbg !3314

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3315, metadata !DIExpression()) #32, !dbg !3320
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3322, metadata !DIExpression()) #32, !dbg !3327
  call void @llvm.dbg.value(metadata i32 0, metadata !3325, metadata !DIExpression()) #32, !dbg !3327
  call void @llvm.dbg.value(metadata i64 8, metadata !3326, metadata !DIExpression()) #32, !dbg !3327
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3329
  store i64 0, i64* %17, align 1, !dbg !3329
  br label %30, !dbg !3330

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3331
  br i1 %19, label %20, label %21, !dbg !3333

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3334
  unreachable, !dbg !3334

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3335

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3337
  br i1 %24, label %30, label %25, !dbg !3338

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3339
  br i1 %26, label %30, label %27, !dbg !3342

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3343, !tbaa !524
  %29 = zext i8 %28 to i32, !dbg !3344
  store i32 %29, i32* %6, align 4, !dbg !3345, !tbaa !515
  br label %30, !dbg !3346

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3302
  ret i64 %31, !dbg !3347
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3348 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3354 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3356, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %1, metadata !3357, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %2, metadata !3358, metadata !DIExpression()), !dbg !3360
  %4 = icmp eq i64 %2, 0, !dbg !3361
  br i1 %4, label %8, label %5, !dbg !3361

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3361
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3361
  br i1 %7, label %13, label %8, !dbg !3361

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3359, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3360
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3359, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3360
  %9 = mul i64 %2, %1, !dbg !3361
  call void @llvm.dbg.value(metadata i64 %9, metadata !3359, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()) #32, !dbg !3367
  call void @llvm.dbg.value(metadata i64 %9, metadata !3366, metadata !DIExpression()) #32, !dbg !3367
  %10 = icmp eq i64 %9, 0, !dbg !3369
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3369
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3370
  br label %15, !dbg !3371

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3359, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3360
  %14 = tail call i32* @__errno_location() #35, !dbg !3372
  store i32 12, i32* %14, align 4, !dbg !3374, !tbaa !515
  br label %15, !dbg !3375

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3360
  ret i8* %16, !dbg !3376
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3377 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3381, metadata !DIExpression()), !dbg !3386
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3387
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3387
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3382, metadata !DIExpression()), !dbg !3388
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3389
  %5 = icmp eq i32 %4, 0, !dbg !3389
  br i1 %5, label %6, label %13, !dbg !3391

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3392, metadata !DIExpression()) #32, !dbg !3396
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i64 0, i64 0), metadata !3395, metadata !DIExpression()) #32, !dbg !3396
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i64 0, i64 0), i64 2), !dbg !3399
  %8 = icmp eq i32 %7, 0, !dbg !3400
  br i1 %8, label %12, label %9, !dbg !3401

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3392, metadata !DIExpression()) #32, !dbg !3402
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), metadata !3395, metadata !DIExpression()) #32, !dbg !3402
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 6), !dbg !3404
  %11 = icmp eq i32 %10, 0, !dbg !3405
  br i1 %11, label %12, label %13, !dbg !3406

12:                                               ; preds = %9, %6
  br label %13, !dbg !3407

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3386
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3408
  ret i1 %14, !dbg !3408
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3409 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !3414, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %2, metadata !3415, metadata !DIExpression()), !dbg !3416
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3417
  ret i32 %4, !dbg !3418
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3423, metadata !DIExpression()), !dbg !3424
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3425
  ret i8* %2, !dbg !3426
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3429, metadata !DIExpression()), !dbg !3431
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3432
  call void @llvm.dbg.value(metadata i8* %2, metadata !3430, metadata !DIExpression()), !dbg !3431
  ret i8* %2, !dbg !3433
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3434 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3436, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %1, metadata !3437, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %2, metadata !3438, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 %0, metadata !3429, metadata !DIExpression()) #32, !dbg !3444
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3446
  call void @llvm.dbg.value(metadata i8* %4, metadata !3430, metadata !DIExpression()) #32, !dbg !3444
  call void @llvm.dbg.value(metadata i8* %4, metadata !3439, metadata !DIExpression()), !dbg !3443
  %5 = icmp eq i8* %4, null, !dbg !3447
  br i1 %5, label %6, label %9, !dbg !3448

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3449
  br i1 %7, label %19, label %8, !dbg !3452

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3453, !tbaa !524
  br label %19, !dbg !3454

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %10, metadata !3440, metadata !DIExpression()), !dbg !3456
  %11 = icmp ult i64 %10, %2, !dbg !3457
  br i1 %11, label %12, label %14, !dbg !3459

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3460
  call void @llvm.dbg.value(metadata i8* %1, metadata !3462, metadata !DIExpression()) #32, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %4, metadata !3465, metadata !DIExpression()) #32, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %13, metadata !3466, metadata !DIExpression()) #32, !dbg !3467
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3469
  br label %19, !dbg !3470

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3471
  br i1 %15, label %19, label %16, !dbg !3474

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3475
  call void @llvm.dbg.value(metadata i8* %1, metadata !3462, metadata !DIExpression()) #32, !dbg !3477
  call void @llvm.dbg.value(metadata i8* %4, metadata !3465, metadata !DIExpression()) #32, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %17, metadata !3466, metadata !DIExpression()) #32, !dbg !3477
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3479
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3480
  store i8 0, i8* %18, align 1, !dbg !3481, !tbaa !524
  br label %19, !dbg !3482

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3483
  ret i32 %20, !dbg !3484
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
attributes #13 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { argmemonly nofree nounwind willreturn writeonly }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind }
attributes #33 = { nounwind readonly willreturn }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind readnone willreturn }
attributes #36 = { noreturn }
attributes #37 = { cold }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!9, !121, !126, !133, !330, !350, !174, !191, !201, !233, !352, !322, !359, !393, !395, !397, !399, !401, !336, !403, !406, !408, !410}
!llvm.ident = !{!412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412}
!llvm.module.flags = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}

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
!10 = !DIFile(filename: "src/hostid.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7f0e5f3aa5d6f632ed5741d47ec6b339")
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
!335 = distinct !DIGlobalVariable(name: "internal_state", scope: !336, file: !337, line: 97, type: !340, isLocal: true, isDefinition: true)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !338, globals: !339, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!338 = !{!29, !32, !35}
!339 = !{!334}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !214, line: 6, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !216, line: 21, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 13, size: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !342, file: !216, line: 15, baseType: !30, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !342, file: !216, line: 20, baseType: !346, size: 32, offset: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !216, line: 16, size: 32, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !346, file: !216, line: 18, baseType: !14, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !346, file: !216, line: 19, baseType: !225, size: 32)
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !354, retainedTypes: !358, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!354 = !{!355}
!355 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !353, line: 40, baseType: !14, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!358 = !{!29}
!359 = distinct !DICompileUnit(language: DW_LANG_C99, file: !360, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !361, retainedTypes: !392, splitDebugInlining: false, nameTableKind: None)
!360 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!361 = !{!362, !374}
!362 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !363, file: !360, line: 188, baseType: !14, size: 32, elements: !372)
!363 = distinct !DISubprogram(name: "x2nrealloc", scope: !360, file: !360, line: 176, type: !364, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !367)
!364 = !DISubroutineType(types: !365)
!365 = !{!29, !29, !366, !32}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!367 = !{!368, !369, !370, !371}
!368 = !DILocalVariable(name: "p", arg: 1, scope: !363, file: !360, line: 176, type: !29)
!369 = !DILocalVariable(name: "pn", arg: 2, scope: !363, file: !360, line: 176, type: !366)
!370 = !DILocalVariable(name: "s", arg: 3, scope: !363, file: !360, line: 176, type: !32)
!371 = !DILocalVariable(name: "n", scope: !363, file: !360, line: 178, type: !32)
!372 = !{!373}
!373 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!374 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !375, file: !360, line: 228, baseType: !14, size: 32, elements: !372)
!375 = distinct !DISubprogram(name: "xpalloc", scope: !360, file: !360, line: 223, type: !376, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !382)
!376 = !DISubroutineType(types: !377)
!377 = !{!29, !29, !378, !379, !381, !379}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !380, line: 130, baseType: !381)
!380 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !33, line: 35, baseType: !86)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391}
!383 = !DILocalVariable(name: "pa", arg: 1, scope: !375, file: !360, line: 223, type: !29)
!384 = !DILocalVariable(name: "pn", arg: 2, scope: !375, file: !360, line: 223, type: !378)
!385 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !375, file: !360, line: 223, type: !379)
!386 = !DILocalVariable(name: "n_max", arg: 4, scope: !375, file: !360, line: 223, type: !381)
!387 = !DILocalVariable(name: "s", arg: 5, scope: !375, file: !360, line: 223, type: !379)
!388 = !DILocalVariable(name: "n0", scope: !375, file: !360, line: 230, type: !379)
!389 = !DILocalVariable(name: "n", scope: !375, file: !360, line: 237, type: !379)
!390 = !DILocalVariable(name: "nbytes", scope: !375, file: !360, line: 248, type: !379)
!391 = !DILocalVariable(name: "adjusted_nbytes", scope: !375, file: !360, line: 252, type: !379)
!392 = !{!65, !29, !44, !86, !34}
!393 = distinct !DICompileUnit(language: DW_LANG_C99, file: !394, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !358, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !358, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !405, splitDebugInlining: false, nameTableKind: None)
!404 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!405 = !{!44, !34, !29}
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!408 = distinct !DICompileUnit(language: DW_LANG_C99, file: !409, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!410 = distinct !DICompileUnit(language: DW_LANG_C99, file: !411, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !358, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!412 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!413 = !{i32 7, !"Dwarf Version", i32 5}
!414 = !{i32 2, !"Debug Info Version", i32 3}
!415 = !{i32 1, !"wchar_size", i32 4}
!416 = !{i32 1, !"branch-target-enforcement", i32 0}
!417 = !{i32 1, !"sign-return-address", i32 0}
!418 = !{i32 1, !"sign-return-address-all", i32 0}
!419 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!420 = !{i32 7, !"PIC Level", i32 2}
!421 = !{i32 7, !"PIE Level", i32 2}
!422 = !{i32 7, !"uwtable", i32 1}
!423 = !{i32 7, !"frame-pointer", i32 1}
!424 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 34, type: !425, scopeLine: 35, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !30}
!427 = !{!428}
!428 = !DILocalVariable(name: "status", arg: 1, scope: !424, file: !10, line: 34, type: !30)
!429 = !DILocation(line: 0, scope: !424)
!430 = !DILocation(line: 36, column: 14, scope: !431)
!431 = distinct !DILexicalBlock(scope: !424, file: !10, line: 36, column: 7)
!432 = !DILocation(line: 36, column: 7, scope: !424)
!433 = !DILocation(line: 37, column: 5, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !10, line: 37, column: 5)
!435 = !{!436, !436, i64 0}
!436 = !{!"any pointer", !437, i64 0}
!437 = !{!"omnipotent char", !438, i64 0}
!438 = !{!"Simple C/C++ TBAA"}
!439 = !DILocation(line: 40, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !431, file: !10, line: 39, column: 5)
!441 = !DILocation(line: 45, column: 7, scope: !440)
!442 = !DILocation(line: 46, column: 7, scope: !440)
!443 = !DILocalVariable(name: "program", arg: 1, scope: !444, file: !3, line: 836, type: !6)
!444 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !445, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !6}
!447 = !{!443, !448, !457, !458, !460, !461}
!448 = !DILocalVariable(name: "infomap", scope: !444, file: !3, line: 838, type: !449)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 896, elements: !455)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !444, file: !3, line: 838, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !451, file: !3, line: 838, baseType: !6, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !451, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!455 = !{!456}
!456 = !DISubrange(count: 7)
!457 = !DILocalVariable(name: "node", scope: !444, file: !3, line: 848, type: !6)
!458 = !DILocalVariable(name: "map_prog", scope: !444, file: !3, line: 849, type: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!460 = !DILocalVariable(name: "lc_messages", scope: !444, file: !3, line: 861, type: !6)
!461 = !DILocalVariable(name: "url_program", scope: !444, file: !3, line: 874, type: !6)
!462 = !DILocation(line: 0, scope: !444, inlinedAt: !463)
!463 = distinct !DILocation(line: 47, column: 7, scope: !440)
!464 = !DILocation(line: 838, column: 3, scope: !444, inlinedAt: !463)
!465 = !DILocation(line: 838, column: 67, scope: !444, inlinedAt: !463)
!466 = !DILocation(line: 849, column: 36, scope: !444, inlinedAt: !463)
!467 = !DILocation(line: 851, column: 3, scope: !444, inlinedAt: !463)
!468 = !DILocalVariable(name: "__s1", arg: 1, scope: !469, file: !470, line: 1359, type: !6)
!469 = distinct !DISubprogram(name: "streq", scope: !470, file: !470, line: 1359, type: !471, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !473)
!470 = !DIFile(filename: "./lib/string.h", directory: "/src")
!471 = !DISubroutineType(types: !472)
!472 = !{!44, !6, !6}
!473 = !{!468, !474}
!474 = !DILocalVariable(name: "__s2", arg: 2, scope: !469, file: !470, line: 1359, type: !6)
!475 = !DILocation(line: 0, scope: !469, inlinedAt: !476)
!476 = distinct !DILocation(line: 851, column: 33, scope: !444, inlinedAt: !463)
!477 = !DILocation(line: 1361, column: 11, scope: !469, inlinedAt: !476)
!478 = !DILocation(line: 1361, column: 10, scope: !469, inlinedAt: !476)
!479 = !DILocation(line: 852, column: 13, scope: !444, inlinedAt: !463)
!480 = !DILocation(line: 851, column: 20, scope: !444, inlinedAt: !463)
!481 = !{!482, !436, i64 0}
!482 = !{!"infomap", !436, i64 0, !436, i64 8}
!483 = !DILocation(line: 851, column: 10, scope: !444, inlinedAt: !463)
!484 = !DILocation(line: 851, column: 28, scope: !444, inlinedAt: !463)
!485 = distinct !{!485, !467, !479, !486}
!486 = !{!"llvm.loop.mustprogress"}
!487 = !DILocation(line: 854, column: 17, scope: !488, inlinedAt: !463)
!488 = distinct !DILexicalBlock(scope: !444, file: !3, line: 854, column: 7)
!489 = !{!482, !436, i64 8}
!490 = !DILocation(line: 854, column: 7, scope: !488, inlinedAt: !463)
!491 = !DILocation(line: 854, column: 7, scope: !444, inlinedAt: !463)
!492 = !DILocation(line: 857, column: 3, scope: !444, inlinedAt: !463)
!493 = !DILocation(line: 861, column: 29, scope: !444, inlinedAt: !463)
!494 = !DILocation(line: 862, column: 7, scope: !495, inlinedAt: !463)
!495 = distinct !DILexicalBlock(scope: !444, file: !3, line: 862, column: 7)
!496 = !DILocation(line: 862, column: 19, scope: !495, inlinedAt: !463)
!497 = !DILocation(line: 862, column: 22, scope: !495, inlinedAt: !463)
!498 = !DILocation(line: 862, column: 7, scope: !444, inlinedAt: !463)
!499 = !DILocation(line: 868, column: 7, scope: !500, inlinedAt: !463)
!500 = distinct !DILexicalBlock(scope: !495, file: !3, line: 863, column: 5)
!501 = !DILocation(line: 870, column: 5, scope: !500, inlinedAt: !463)
!502 = !DILocation(line: 0, scope: !469, inlinedAt: !503)
!503 = distinct !DILocation(line: 874, column: 29, scope: !444, inlinedAt: !463)
!504 = !DILocation(line: 875, column: 3, scope: !444, inlinedAt: !463)
!505 = !DILocation(line: 877, column: 3, scope: !444, inlinedAt: !463)
!506 = !DILocation(line: 879, column: 1, scope: !444, inlinedAt: !463)
!507 = !DILocation(line: 49, column: 3, scope: !424)
!508 = !DISubprogram(name: "dcgettext", scope: !509, file: !509, line: 51, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!509 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!510 = !DISubroutineType(types: !511)
!511 = !{!65, !6, !6, !30}
!512 = !{}
!513 = !DILocation(line: 0, scope: !2)
!514 = !DILocation(line: 581, column: 7, scope: !42)
!515 = !{!516, !516, i64 0}
!516 = !{!"int", !437, i64 0}
!517 = !DILocation(line: 581, column: 19, scope: !42)
!518 = !DILocation(line: 581, column: 7, scope: !2)
!519 = !DILocation(line: 585, column: 26, scope: !41)
!520 = !DILocation(line: 0, scope: !41)
!521 = !DILocation(line: 586, column: 23, scope: !41)
!522 = !DILocation(line: 586, column: 28, scope: !41)
!523 = !DILocation(line: 586, column: 32, scope: !41)
!524 = !{!437, !437, i64 0}
!525 = !DILocation(line: 586, column: 38, scope: !41)
!526 = !DILocation(line: 0, scope: !469, inlinedAt: !527)
!527 = distinct !DILocation(line: 586, column: 41, scope: !41)
!528 = !DILocation(line: 1361, column: 11, scope: !469, inlinedAt: !527)
!529 = !DILocation(line: 1361, column: 10, scope: !469, inlinedAt: !527)
!530 = !DILocation(line: 586, column: 19, scope: !41)
!531 = !DILocation(line: 587, column: 5, scope: !41)
!532 = !DILocation(line: 588, column: 7, scope: !533)
!533 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!534 = !DILocation(line: 588, column: 7, scope: !2)
!535 = !DILocation(line: 590, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !3, line: 589, column: 5)
!537 = !DILocation(line: 591, column: 7, scope: !536)
!538 = !DILocation(line: 595, column: 37, scope: !2)
!539 = !DILocation(line: 595, column: 35, scope: !2)
!540 = !DILocation(line: 596, column: 29, scope: !2)
!541 = !DILocation(line: 597, column: 8, scope: !50)
!542 = !DILocation(line: 597, column: 7, scope: !2)
!543 = !DILocation(line: 604, column: 24, scope: !49)
!544 = !DILocation(line: 604, column: 12, scope: !50)
!545 = !DILocation(line: 0, scope: !48)
!546 = !DILocation(line: 610, column: 16, scope: !48)
!547 = !DILocation(line: 610, column: 7, scope: !48)
!548 = !DILocation(line: 611, column: 21, scope: !48)
!549 = !{!550, !550, i64 0}
!550 = !{!"short", !437, i64 0}
!551 = !DILocation(line: 611, column: 19, scope: !48)
!552 = !DILocation(line: 611, column: 16, scope: !48)
!553 = !DILocation(line: 610, column: 30, scope: !48)
!554 = distinct !{!554, !547, !548, !486}
!555 = !DILocation(line: 612, column: 18, scope: !556)
!556 = distinct !DILexicalBlock(scope: !48, file: !3, line: 612, column: 11)
!557 = !DILocation(line: 612, column: 11, scope: !48)
!558 = !DILocation(line: 620, column: 23, scope: !2)
!559 = !DILocation(line: 625, column: 39, scope: !2)
!560 = !DILocation(line: 626, column: 3, scope: !2)
!561 = !DILocation(line: 626, column: 10, scope: !2)
!562 = !DILocation(line: 626, column: 21, scope: !2)
!563 = !DILocation(line: 628, column: 44, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 628, column: 11)
!565 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!566 = !DILocation(line: 628, column: 32, scope: !564)
!567 = !DILocation(line: 628, column: 49, scope: !564)
!568 = !DILocation(line: 628, column: 11, scope: !565)
!569 = !DILocation(line: 630, column: 11, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !3, line: 630, column: 11)
!571 = !DILocation(line: 630, column: 11, scope: !565)
!572 = !DILocation(line: 632, column: 26, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 632, column: 15)
!574 = distinct !DILexicalBlock(scope: !570, file: !3, line: 631, column: 9)
!575 = !DILocation(line: 632, column: 34, scope: !573)
!576 = !DILocation(line: 632, column: 37, scope: !573)
!577 = !DILocation(line: 632, column: 15, scope: !574)
!578 = !DILocation(line: 636, column: 29, scope: !579)
!579 = distinct !DILexicalBlock(scope: !574, file: !3, line: 636, column: 15)
!580 = !DILocation(line: 640, column: 16, scope: !565)
!581 = distinct !{!581, !560, !582, !486}
!582 = !DILocation(line: 641, column: 5, scope: !2)
!583 = !DILocation(line: 644, column: 3, scope: !2)
!584 = !DILocation(line: 0, scope: !469, inlinedAt: !585)
!585 = distinct !DILocation(line: 648, column: 31, scope: !2)
!586 = !DILocation(line: 0, scope: !469, inlinedAt: !587)
!587 = distinct !DILocation(line: 649, column: 31, scope: !2)
!588 = !DILocation(line: 0, scope: !469, inlinedAt: !589)
!589 = distinct !DILocation(line: 650, column: 31, scope: !2)
!590 = !DILocation(line: 0, scope: !469, inlinedAt: !591)
!591 = distinct !DILocation(line: 651, column: 31, scope: !2)
!592 = !DILocation(line: 0, scope: !469, inlinedAt: !593)
!593 = distinct !DILocation(line: 652, column: 31, scope: !2)
!594 = !DILocation(line: 0, scope: !469, inlinedAt: !595)
!595 = distinct !DILocation(line: 653, column: 31, scope: !2)
!596 = !DILocation(line: 0, scope: !469, inlinedAt: !597)
!597 = distinct !DILocation(line: 654, column: 31, scope: !2)
!598 = !DILocation(line: 0, scope: !469, inlinedAt: !599)
!599 = distinct !DILocation(line: 655, column: 31, scope: !2)
!600 = !DILocation(line: 0, scope: !469, inlinedAt: !601)
!601 = distinct !DILocation(line: 656, column: 31, scope: !2)
!602 = !DILocation(line: 0, scope: !469, inlinedAt: !603)
!603 = distinct !DILocation(line: 657, column: 31, scope: !2)
!604 = !DILocation(line: 663, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!606 = !DILocation(line: 664, column: 7, scope: !605)
!607 = !DILocation(line: 664, column: 10, scope: !605)
!608 = !DILocation(line: 663, column: 7, scope: !2)
!609 = !DILocation(line: 669, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !3, line: 665, column: 5)
!611 = !DILocation(line: 671, column: 5, scope: !610)
!612 = !DILocation(line: 676, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !605, file: !3, line: 673, column: 5)
!614 = !DILocation(line: 679, column: 3, scope: !2)
!615 = !DILocation(line: 683, column: 3, scope: !2)
!616 = !DILocation(line: 686, column: 3, scope: !2)
!617 = !DILocation(line: 688, column: 3, scope: !2)
!618 = !DILocation(line: 691, column: 3, scope: !2)
!619 = !DILocation(line: 695, column: 3, scope: !2)
!620 = !DILocation(line: 696, column: 1, scope: !2)
!621 = !DISubprogram(name: "setlocale", scope: !622, file: !622, line: 122, type: !623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!622 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!623 = !DISubroutineType(types: !624)
!624 = !{!65, !30, !6}
!625 = !DISubprogram(name: "fputs_unlocked", scope: !143, file: !143, line: 691, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!626 = !DISubroutineType(types: !627)
!627 = !{!30, !628, !629}
!628 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!629 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!630 = !DISubprogram(name: "getenv", scope: !631, file: !631, line: 641, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!631 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!632 = !DISubroutineType(types: !633)
!633 = !{!65, !6}
!634 = !DISubprogram(name: "fwrite_unlocked", scope: !143, file: !143, line: 704, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!635 = !DISubroutineType(types: !636)
!636 = !{!32, !637, !32, !32, !629}
!637 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!640 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 53, type: !641, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !644)
!641 = !DISubroutineType(types: !642)
!642 = !{!30, !30, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!644 = !{!645, !646, !647}
!645 = !DILocalVariable(name: "argc", arg: 1, scope: !640, file: !10, line: 53, type: !30)
!646 = !DILocalVariable(name: "argv", arg: 2, scope: !640, file: !10, line: 53, type: !643)
!647 = !DILocalVariable(name: "id", scope: !640, file: !10, line: 76, type: !14)
!648 = !DILocation(line: 0, scope: !640)
!649 = !DILocation(line: 56, column: 21, scope: !640)
!650 = !DILocation(line: 56, column: 3, scope: !640)
!651 = !DILocation(line: 57, column: 3, scope: !640)
!652 = !DILocation(line: 58, column: 3, scope: !640)
!653 = !DILocation(line: 59, column: 3, scope: !640)
!654 = !DILocation(line: 61, column: 3, scope: !640)
!655 = !DILocation(line: 64, column: 36, scope: !640)
!656 = !DILocation(line: 64, column: 58, scope: !640)
!657 = !DILocation(line: 63, column: 3, scope: !640)
!658 = !DILocation(line: 67, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !640, file: !10, line: 67, column: 7)
!660 = !DILocation(line: 67, column: 14, scope: !659)
!661 = !DILocation(line: 67, column: 7, scope: !640)
!662 = !DILocation(line: 69, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !10, line: 68, column: 5)
!664 = !DILocation(line: 70, column: 7, scope: !663)
!665 = !DILocation(line: 76, column: 21, scope: !640)
!666 = !DILocation(line: 78, column: 3, scope: !640)
!667 = !DILocation(line: 80, column: 3, scope: !640)
!668 = !DISubprogram(name: "bindtextdomain", scope: !509, file: !509, line: 86, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!669 = !DISubroutineType(types: !670)
!670 = !{!65, !6, !6}
!671 = !DISubprogram(name: "textdomain", scope: !509, file: !509, line: 82, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!672 = !DISubprogram(name: "atexit", scope: !631, file: !631, line: 602, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!673 = !DISubroutineType(types: !674)
!674 = !{!30, !169}
!675 = !DISubprogram(name: "gethostid", scope: !676, file: !676, line: 1002, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!676 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!677 = !DISubroutineType(types: !678)
!678 = !{!86}
!679 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !127, file: !127, line: 50, type: !445, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !680)
!680 = !{!681}
!681 = !DILocalVariable(name: "file", arg: 1, scope: !679, file: !127, line: 50, type: !6)
!682 = !DILocation(line: 0, scope: !679)
!683 = !DILocation(line: 52, column: 13, scope: !679)
!684 = !DILocation(line: 53, column: 1, scope: !679)
!685 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !127, file: !127, line: 87, type: !686, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !44}
!688 = !{!689}
!689 = !DILocalVariable(name: "ignore", arg: 1, scope: !685, file: !127, line: 87, type: !44)
!690 = !DILocation(line: 0, scope: !685)
!691 = !DILocation(line: 89, column: 16, scope: !685)
!692 = !{!693, !693, i64 0}
!693 = !{!"_Bool", !437, i64 0}
!694 = !DILocation(line: 90, column: 1, scope: !685)
!695 = distinct !DISubprogram(name: "close_stdout", scope: !127, file: !127, line: 116, type: !170, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !696)
!696 = !{!697}
!697 = !DILocalVariable(name: "write_error", scope: !698, file: !127, line: 121, type: !6)
!698 = distinct !DILexicalBlock(scope: !699, file: !127, line: 120, column: 5)
!699 = distinct !DILexicalBlock(scope: !695, file: !127, line: 118, column: 7)
!700 = !DILocation(line: 118, column: 21, scope: !699)
!701 = !DILocation(line: 118, column: 7, scope: !699)
!702 = !DILocation(line: 118, column: 29, scope: !699)
!703 = !DILocation(line: 119, column: 7, scope: !699)
!704 = !DILocation(line: 119, column: 12, scope: !699)
!705 = !{i8 0, i8 2}
!706 = !DILocation(line: 119, column: 25, scope: !699)
!707 = !DILocation(line: 119, column: 28, scope: !699)
!708 = !DILocation(line: 119, column: 34, scope: !699)
!709 = !DILocation(line: 118, column: 7, scope: !695)
!710 = !DILocation(line: 121, column: 33, scope: !698)
!711 = !DILocation(line: 0, scope: !698)
!712 = !DILocation(line: 122, column: 11, scope: !713)
!713 = distinct !DILexicalBlock(scope: !698, file: !127, line: 122, column: 11)
!714 = !DILocation(line: 0, scope: !713)
!715 = !DILocation(line: 122, column: 11, scope: !698)
!716 = !DILocation(line: 123, column: 9, scope: !713)
!717 = !DILocation(line: 126, column: 9, scope: !713)
!718 = !DILocation(line: 128, column: 14, scope: !698)
!719 = !DILocation(line: 128, column: 7, scope: !698)
!720 = !DILocation(line: 133, column: 42, scope: !721)
!721 = distinct !DILexicalBlock(scope: !695, file: !127, line: 133, column: 7)
!722 = !DILocation(line: 133, column: 28, scope: !721)
!723 = !DILocation(line: 133, column: 50, scope: !721)
!724 = !DILocation(line: 133, column: 7, scope: !695)
!725 = !DILocation(line: 134, column: 12, scope: !721)
!726 = !DILocation(line: 134, column: 5, scope: !721)
!727 = !DILocation(line: 135, column: 1, scope: !695)
!728 = distinct !DISubprogram(name: "verror", scope: !134, file: !134, line: 251, type: !729, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !731)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !30, !30, !6, !142}
!731 = !{!732, !733, !734, !735}
!732 = !DILocalVariable(name: "status", arg: 1, scope: !728, file: !134, line: 251, type: !30)
!733 = !DILocalVariable(name: "errnum", arg: 2, scope: !728, file: !134, line: 251, type: !30)
!734 = !DILocalVariable(name: "message", arg: 3, scope: !728, file: !134, line: 251, type: !6)
!735 = !DILocalVariable(name: "args", arg: 4, scope: !728, file: !134, line: 251, type: !142)
!736 = !DILocation(line: 0, scope: !728)
!737 = !DILocation(line: 251, column: 1, scope: !728)
!738 = !DILocation(line: 261, column: 3, scope: !728)
!739 = !DILocation(line: 265, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !728, file: !134, line: 265, column: 7)
!741 = !DILocation(line: 265, column: 7, scope: !728)
!742 = !DILocation(line: 266, column: 5, scope: !740)
!743 = !DILocation(line: 272, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !134, line: 268, column: 5)
!745 = !DILocation(line: 276, column: 3, scope: !728)
!746 = !{i64 0, i64 8, !435, i64 8, i64 8, !435, i64 16, i64 8, !435, i64 24, i64 4, !515, i64 28, i64 4, !515}
!747 = !DILocation(line: 282, column: 1, scope: !728)
!748 = distinct !DISubprogram(name: "flush_stdout", scope: !134, file: !134, line: 163, type: !170, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !749)
!749 = !{!750}
!750 = !DILocalVariable(name: "stdout_fd", scope: !748, file: !134, line: 166, type: !30)
!751 = !DILocation(line: 0, scope: !748)
!752 = !DILocalVariable(name: "fd", arg: 1, scope: !753, file: !134, line: 145, type: !30)
!753 = distinct !DISubprogram(name: "is_open", scope: !134, file: !134, line: 145, type: !754, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!30, !30}
!756 = !{!752}
!757 = !DILocation(line: 0, scope: !753, inlinedAt: !758)
!758 = distinct !DILocation(line: 182, column: 25, scope: !759)
!759 = distinct !DILexicalBlock(scope: !748, file: !134, line: 182, column: 7)
!760 = !DILocation(line: 157, column: 15, scope: !753, inlinedAt: !758)
!761 = !DILocation(line: 182, column: 25, scope: !759)
!762 = !DILocation(line: 182, column: 7, scope: !748)
!763 = !DILocation(line: 184, column: 5, scope: !759)
!764 = !DILocation(line: 185, column: 1, scope: !748)
!765 = distinct !DISubprogram(name: "error_tail", scope: !134, file: !134, line: 219, type: !729, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !766)
!766 = !{!767, !768, !769, !770}
!767 = !DILocalVariable(name: "status", arg: 1, scope: !765, file: !134, line: 219, type: !30)
!768 = !DILocalVariable(name: "errnum", arg: 2, scope: !765, file: !134, line: 219, type: !30)
!769 = !DILocalVariable(name: "message", arg: 3, scope: !765, file: !134, line: 219, type: !6)
!770 = !DILocalVariable(name: "args", arg: 4, scope: !765, file: !134, line: 219, type: !142)
!771 = !DILocation(line: 0, scope: !765)
!772 = !DILocation(line: 219, column: 1, scope: !765)
!773 = !DILocation(line: 229, column: 13, scope: !765)
!774 = !DILocation(line: 229, column: 3, scope: !765)
!775 = !DILocalVariable(name: "__stream", arg: 1, scope: !776, file: !777, line: 132, type: !780)
!776 = distinct !DISubprogram(name: "vfprintf", scope: !777, file: !777, line: 132, type: !778, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !815)
!777 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!778 = !DISubroutineType(types: !779)
!779 = !{!30, !780, !628, !144}
!780 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !783, file: !61, line: 51, baseType: !30, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !783, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !783, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !783, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !783, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !783, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !783, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !783, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !783, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !783, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !783, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !783, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !783, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !783, file: !61, line: 70, baseType: !799, size: 64, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !783, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !783, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !783, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !783, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !783, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !783, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !783, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !783, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !783, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !783, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !783, file: !61, line: 93, baseType: !799, size: 64, offset: 1344)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !783, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !783, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !783, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !783, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!815 = !{!775, !816, !817}
!816 = !DILocalVariable(name: "__fmt", arg: 2, scope: !776, file: !777, line: 133, type: !628)
!817 = !DILocalVariable(name: "__ap", arg: 3, scope: !776, file: !777, line: 133, type: !144)
!818 = !DILocation(line: 0, scope: !776, inlinedAt: !819)
!819 = distinct !DILocation(line: 229, column: 3, scope: !765)
!820 = !DILocation(line: 135, column: 10, scope: !776, inlinedAt: !819)
!821 = !{!822, !824}
!822 = distinct !{!822, !823, !"vfprintf.inline: argument 0"}
!823 = distinct !{!823, !"vfprintf.inline"}
!824 = distinct !{!824, !823, !"vfprintf.inline: argument 1"}
!825 = !DILocation(line: 232, column: 3, scope: !765)
!826 = !DILocation(line: 233, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !765, file: !134, line: 233, column: 7)
!828 = !DILocation(line: 233, column: 7, scope: !765)
!829 = !DILocalVariable(name: "errnum", arg: 1, scope: !830, file: !134, line: 188, type: !30)
!830 = distinct !DISubprogram(name: "print_errno_message", scope: !134, file: !134, line: 188, type: !425, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !831)
!831 = !{!829, !832, !833}
!832 = !DILocalVariable(name: "s", scope: !830, file: !134, line: 190, type: !6)
!833 = !DILocalVariable(name: "errbuf", scope: !830, file: !134, line: 193, type: !834)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !835)
!835 = !{!836}
!836 = !DISubrange(count: 1024)
!837 = !DILocation(line: 0, scope: !830, inlinedAt: !838)
!838 = distinct !DILocation(line: 234, column: 5, scope: !827)
!839 = !DILocation(line: 193, column: 3, scope: !830, inlinedAt: !838)
!840 = !DILocation(line: 193, column: 8, scope: !830, inlinedAt: !838)
!841 = !DILocation(line: 195, column: 7, scope: !830, inlinedAt: !838)
!842 = !DILocation(line: 207, column: 9, scope: !843, inlinedAt: !838)
!843 = distinct !DILexicalBlock(scope: !830, file: !134, line: 207, column: 7)
!844 = !DILocation(line: 207, column: 7, scope: !830, inlinedAt: !838)
!845 = !DILocation(line: 208, column: 9, scope: !843, inlinedAt: !838)
!846 = !DILocation(line: 208, column: 5, scope: !843, inlinedAt: !838)
!847 = !DILocation(line: 214, column: 3, scope: !830, inlinedAt: !838)
!848 = !DILocation(line: 216, column: 1, scope: !830, inlinedAt: !838)
!849 = !DILocation(line: 234, column: 5, scope: !827)
!850 = !DILocation(line: 238, column: 3, scope: !765)
!851 = !DILocalVariable(name: "__c", arg: 1, scope: !852, file: !853, line: 101, type: !30)
!852 = distinct !DISubprogram(name: "putc_unlocked", scope: !853, file: !853, line: 101, type: !854, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !856)
!853 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!854 = !DISubroutineType(types: !855)
!855 = !{!30, !30, !781}
!856 = !{!851, !857}
!857 = !DILocalVariable(name: "__stream", arg: 2, scope: !852, file: !853, line: 101, type: !781)
!858 = !DILocation(line: 0, scope: !852, inlinedAt: !859)
!859 = distinct !DILocation(line: 238, column: 3, scope: !765)
!860 = !DILocation(line: 103, column: 10, scope: !852, inlinedAt: !859)
!861 = !{!862, !436, i64 40}
!862 = !{!"_IO_FILE", !516, i64 0, !436, i64 8, !436, i64 16, !436, i64 24, !436, i64 32, !436, i64 40, !436, i64 48, !436, i64 56, !436, i64 64, !436, i64 72, !436, i64 80, !436, i64 88, !436, i64 96, !436, i64 104, !516, i64 112, !516, i64 116, !863, i64 120, !550, i64 128, !437, i64 130, !437, i64 131, !436, i64 136, !863, i64 144, !436, i64 152, !436, i64 160, !436, i64 168, !436, i64 176, !863, i64 184, !516, i64 192, !437, i64 196}
!863 = !{!"long", !437, i64 0}
!864 = !{!862, !436, i64 48}
!865 = !{!"branch_weights", i32 2000, i32 1}
!866 = !DILocation(line: 240, column: 3, scope: !765)
!867 = !DILocation(line: 241, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !765, file: !134, line: 241, column: 7)
!869 = !DILocation(line: 241, column: 7, scope: !765)
!870 = !DILocation(line: 242, column: 5, scope: !868)
!871 = !DILocation(line: 243, column: 1, scope: !765)
!872 = !DISubprogram(name: "strerror_r", scope: !873, file: !873, line: 444, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!873 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!874 = !DISubroutineType(types: !875)
!875 = !{!65, !30, !65, !32}
!876 = !DISubprogram(name: "fflush_unlocked", scope: !143, file: !143, line: 239, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!877 = !DISubroutineType(types: !878)
!878 = !{!30, !781}
!879 = !DISubprogram(name: "fcntl", scope: !880, file: !880, line: 149, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!880 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!881 = !DISubroutineType(types: !882)
!882 = !{!30, !30, !30, null}
!883 = distinct !DISubprogram(name: "error", scope: !134, file: !134, line: 285, type: !884, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !886)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !30, !30, !6, null}
!886 = !{!887, !888, !889, !890}
!887 = !DILocalVariable(name: "status", arg: 1, scope: !883, file: !134, line: 285, type: !30)
!888 = !DILocalVariable(name: "errnum", arg: 2, scope: !883, file: !134, line: 285, type: !30)
!889 = !DILocalVariable(name: "message", arg: 3, scope: !883, file: !134, line: 285, type: !6)
!890 = !DILocalVariable(name: "ap", scope: !883, file: !134, line: 287, type: !142)
!891 = !DILocation(line: 0, scope: !883)
!892 = !DILocation(line: 287, column: 3, scope: !883)
!893 = !DILocation(line: 287, column: 11, scope: !883)
!894 = !DILocation(line: 288, column: 3, scope: !883)
!895 = !DILocation(line: 289, column: 3, scope: !883)
!896 = !DILocation(line: 290, column: 3, scope: !883)
!897 = !DILocation(line: 291, column: 1, scope: !883)
!898 = !DILocation(line: 0, scope: !139)
!899 = !DILocation(line: 298, column: 1, scope: !139)
!900 = !DILocation(line: 302, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !139, file: !134, line: 302, column: 7)
!902 = !DILocation(line: 302, column: 7, scope: !139)
!903 = !DILocation(line: 307, column: 11, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !134, line: 307, column: 11)
!905 = distinct !DILexicalBlock(scope: !901, file: !134, line: 303, column: 5)
!906 = !DILocation(line: 307, column: 27, scope: !904)
!907 = !DILocation(line: 308, column: 11, scope: !904)
!908 = !DILocation(line: 308, column: 28, scope: !904)
!909 = !DILocation(line: 308, column: 25, scope: !904)
!910 = !DILocation(line: 309, column: 15, scope: !904)
!911 = !DILocation(line: 309, column: 33, scope: !904)
!912 = !DILocation(line: 310, column: 19, scope: !904)
!913 = !DILocation(line: 311, column: 22, scope: !904)
!914 = !DILocation(line: 311, column: 56, scope: !904)
!915 = !DILocation(line: 307, column: 11, scope: !905)
!916 = !DILocation(line: 316, column: 21, scope: !905)
!917 = !DILocation(line: 317, column: 23, scope: !905)
!918 = !DILocation(line: 318, column: 5, scope: !905)
!919 = !DILocation(line: 327, column: 3, scope: !139)
!920 = !DILocation(line: 331, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !139, file: !134, line: 331, column: 7)
!922 = !DILocation(line: 331, column: 7, scope: !139)
!923 = !DILocation(line: 332, column: 5, scope: !921)
!924 = !DILocation(line: 338, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !921, file: !134, line: 334, column: 5)
!926 = !DILocation(line: 346, column: 3, scope: !139)
!927 = !DILocation(line: 350, column: 3, scope: !139)
!928 = !DILocation(line: 356, column: 1, scope: !139)
!929 = distinct !DISubprogram(name: "error_at_line", scope: !134, file: !134, line: 359, type: !930, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !932)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !30, !30, !6, !14, !6, null}
!932 = !{!933, !934, !935, !936, !937, !938}
!933 = !DILocalVariable(name: "status", arg: 1, scope: !929, file: !134, line: 359, type: !30)
!934 = !DILocalVariable(name: "errnum", arg: 2, scope: !929, file: !134, line: 359, type: !30)
!935 = !DILocalVariable(name: "file_name", arg: 3, scope: !929, file: !134, line: 359, type: !6)
!936 = !DILocalVariable(name: "line_number", arg: 4, scope: !929, file: !134, line: 360, type: !14)
!937 = !DILocalVariable(name: "message", arg: 5, scope: !929, file: !134, line: 360, type: !6)
!938 = !DILocalVariable(name: "ap", scope: !929, file: !134, line: 362, type: !142)
!939 = !DILocation(line: 0, scope: !929)
!940 = !DILocation(line: 362, column: 3, scope: !929)
!941 = !DILocation(line: 362, column: 11, scope: !929)
!942 = !DILocation(line: 363, column: 3, scope: !929)
!943 = !DILocation(line: 364, column: 3, scope: !929)
!944 = !DILocation(line: 366, column: 3, scope: !929)
!945 = !DILocation(line: 367, column: 1, scope: !929)
!946 = distinct !DISubprogram(name: "getprogname", scope: !351, file: !351, line: 54, type: !947, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !512)
!947 = !DISubroutineType(types: !948)
!948 = !{!6}
!949 = !DILocation(line: 58, column: 10, scope: !946)
!950 = !DILocation(line: 58, column: 3, scope: !946)
!951 = distinct !DISubprogram(name: "parse_long_options", scope: !175, file: !175, line: 45, type: !952, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !955)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !30, !643, !6, !6, !6, !954, null}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!955 = !{!956, !957, !958, !959, !960, !961, !962, !963, !966}
!956 = !DILocalVariable(name: "argc", arg: 1, scope: !951, file: !175, line: 45, type: !30)
!957 = !DILocalVariable(name: "argv", arg: 2, scope: !951, file: !175, line: 46, type: !643)
!958 = !DILocalVariable(name: "command_name", arg: 3, scope: !951, file: !175, line: 47, type: !6)
!959 = !DILocalVariable(name: "package", arg: 4, scope: !951, file: !175, line: 48, type: !6)
!960 = !DILocalVariable(name: "version", arg: 5, scope: !951, file: !175, line: 49, type: !6)
!961 = !DILocalVariable(name: "usage_func", arg: 6, scope: !951, file: !175, line: 50, type: !954)
!962 = !DILocalVariable(name: "saved_opterr", scope: !951, file: !175, line: 53, type: !30)
!963 = !DILocalVariable(name: "c", scope: !964, file: !175, line: 60, type: !30)
!964 = distinct !DILexicalBlock(scope: !965, file: !175, line: 59, column: 5)
!965 = distinct !DILexicalBlock(scope: !951, file: !175, line: 58, column: 7)
!966 = !DILocalVariable(name: "authors", scope: !967, file: !175, line: 71, type: !971)
!967 = distinct !DILexicalBlock(scope: !968, file: !175, line: 70, column: 15)
!968 = distinct !DILexicalBlock(scope: !969, file: !175, line: 64, column: 13)
!969 = distinct !DILexicalBlock(scope: !970, file: !175, line: 62, column: 9)
!970 = distinct !DILexicalBlock(scope: !964, file: !175, line: 61, column: 11)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 52, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !145, line: 32, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !974, baseType: !975)
!974 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !149, size: 256, elements: !976)
!976 = !{!977, !978, !979, !980, !981}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !975, file: !974, line: 71, baseType: !29, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !975, file: !974, line: 71, baseType: !29, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !975, file: !974, line: 71, baseType: !29, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !975, file: !974, line: 71, baseType: !30, size: 32, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !975, file: !974, line: 71, baseType: !30, size: 32, offset: 224)
!982 = !DILocation(line: 0, scope: !951)
!983 = !DILocation(line: 53, column: 22, scope: !951)
!984 = !DILocation(line: 56, column: 10, scope: !951)
!985 = !DILocation(line: 58, column: 12, scope: !965)
!986 = !DILocation(line: 58, column: 7, scope: !951)
!987 = !DILocation(line: 60, column: 15, scope: !964)
!988 = !DILocation(line: 0, scope: !964)
!989 = !DILocation(line: 61, column: 11, scope: !964)
!990 = !DILocation(line: 66, column: 15, scope: !968)
!991 = !DILocation(line: 67, column: 15, scope: !968)
!992 = !DILocation(line: 71, column: 17, scope: !967)
!993 = !DILocation(line: 71, column: 25, scope: !967)
!994 = !DILocation(line: 72, column: 17, scope: !967)
!995 = !DILocation(line: 73, column: 33, scope: !967)
!996 = !DILocation(line: 73, column: 17, scope: !967)
!997 = !DILocation(line: 74, column: 17, scope: !967)
!998 = !DILocation(line: 85, column: 10, scope: !951)
!999 = !DILocation(line: 89, column: 10, scope: !951)
!1000 = !DILocation(line: 90, column: 1, scope: !951)
!1001 = !DISubprogram(name: "getopt_long", scope: !180, file: !180, line: 66, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!30, !30, !1004, !6, !1006, !185}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1007 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !175, file: !175, line: 98, type: !1008, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !1010)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !30, !643, !6, !6, !6, !44, !954, null}
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021}
!1011 = !DILocalVariable(name: "argc", arg: 1, scope: !1007, file: !175, line: 98, type: !30)
!1012 = !DILocalVariable(name: "argv", arg: 2, scope: !1007, file: !175, line: 99, type: !643)
!1013 = !DILocalVariable(name: "command_name", arg: 3, scope: !1007, file: !175, line: 100, type: !6)
!1014 = !DILocalVariable(name: "package", arg: 4, scope: !1007, file: !175, line: 101, type: !6)
!1015 = !DILocalVariable(name: "version", arg: 5, scope: !1007, file: !175, line: 102, type: !6)
!1016 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1007, file: !175, line: 103, type: !44)
!1017 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1007, file: !175, line: 104, type: !954)
!1018 = !DILocalVariable(name: "saved_opterr", scope: !1007, file: !175, line: 107, type: !30)
!1019 = !DILocalVariable(name: "optstring", scope: !1007, file: !175, line: 112, type: !6)
!1020 = !DILocalVariable(name: "c", scope: !1007, file: !175, line: 114, type: !30)
!1021 = !DILocalVariable(name: "authors", scope: !1022, file: !175, line: 125, type: !971)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !175, line: 124, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !175, line: 118, column: 9)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !175, line: 116, column: 5)
!1025 = distinct !DILexicalBlock(scope: !1007, file: !175, line: 115, column: 7)
!1026 = !DILocation(line: 0, scope: !1007)
!1027 = !DILocation(line: 107, column: 22, scope: !1007)
!1028 = !DILocation(line: 110, column: 10, scope: !1007)
!1029 = !DILocation(line: 112, column: 27, scope: !1007)
!1030 = !DILocation(line: 114, column: 11, scope: !1007)
!1031 = !DILocation(line: 115, column: 7, scope: !1007)
!1032 = !DILocation(line: 125, column: 13, scope: !1022)
!1033 = !DILocation(line: 125, column: 21, scope: !1022)
!1034 = !DILocation(line: 126, column: 13, scope: !1022)
!1035 = !DILocation(line: 127, column: 29, scope: !1022)
!1036 = !DILocation(line: 127, column: 13, scope: !1022)
!1037 = !DILocation(line: 128, column: 13, scope: !1022)
!1038 = !DILocation(line: 132, column: 26, scope: !1023)
!1039 = !DILocation(line: 133, column: 11, scope: !1023)
!1040 = !DILocation(line: 0, scope: !1023)
!1041 = !DILocation(line: 138, column: 10, scope: !1007)
!1042 = !DILocation(line: 139, column: 1, scope: !1007)
!1043 = distinct !DISubprogram(name: "set_program_name", scope: !192, file: !192, line: 37, type: !445, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DILocalVariable(name: "argv0", arg: 1, scope: !1043, file: !192, line: 37, type: !6)
!1046 = !DILocalVariable(name: "slash", scope: !1043, file: !192, line: 44, type: !6)
!1047 = !DILocalVariable(name: "base", scope: !1043, file: !192, line: 45, type: !6)
!1048 = !DILocation(line: 0, scope: !1043)
!1049 = !DILocation(line: 44, column: 23, scope: !1043)
!1050 = !DILocation(line: 45, column: 22, scope: !1043)
!1051 = !DILocation(line: 46, column: 17, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1043, file: !192, line: 46, column: 7)
!1053 = !DILocation(line: 46, column: 9, scope: !1052)
!1054 = !DILocation(line: 46, column: 25, scope: !1052)
!1055 = !DILocation(line: 46, column: 40, scope: !1052)
!1056 = !DILocalVariable(name: "__s1", arg: 1, scope: !1057, file: !470, line: 974, type: !638)
!1057 = distinct !DISubprogram(name: "memeq", scope: !470, file: !470, line: 974, type: !1058, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1060)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!44, !638, !638, !32}
!1060 = !{!1056, !1061, !1062}
!1061 = !DILocalVariable(name: "__s2", arg: 2, scope: !1057, file: !470, line: 974, type: !638)
!1062 = !DILocalVariable(name: "__n", arg: 3, scope: !1057, file: !470, line: 974, type: !32)
!1063 = !DILocation(line: 0, scope: !1057, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 46, column: 28, scope: !1052)
!1065 = !DILocation(line: 976, column: 11, scope: !1057, inlinedAt: !1064)
!1066 = !DILocation(line: 976, column: 10, scope: !1057, inlinedAt: !1064)
!1067 = !DILocation(line: 46, column: 7, scope: !1043)
!1068 = !DILocation(line: 49, column: 11, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !192, line: 49, column: 11)
!1070 = distinct !DILexicalBlock(scope: !1052, file: !192, line: 47, column: 5)
!1071 = !DILocation(line: 49, column: 36, scope: !1069)
!1072 = !DILocation(line: 49, column: 11, scope: !1070)
!1073 = !DILocation(line: 65, column: 16, scope: !1043)
!1074 = !DILocation(line: 71, column: 27, scope: !1043)
!1075 = !DILocation(line: 74, column: 33, scope: !1043)
!1076 = !DILocation(line: 76, column: 1, scope: !1043)
!1077 = !DILocation(line: 0, scope: !197)
!1078 = !DILocation(line: 40, column: 29, scope: !197)
!1079 = !DILocation(line: 41, column: 19, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !197, file: !198, line: 41, column: 7)
!1081 = !DILocation(line: 41, column: 7, scope: !197)
!1082 = !DILocation(line: 47, column: 3, scope: !197)
!1083 = !DILocation(line: 48, column: 3, scope: !197)
!1084 = !DILocation(line: 48, column: 13, scope: !197)
!1085 = !DILocalVariable(name: "ps", arg: 1, scope: !1086, file: !1087, line: 1135, type: !1090)
!1086 = distinct !DISubprogram(name: "mbszero", scope: !1087, file: !1087, line: 1135, type: !1088, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1091)
!1087 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!1091 = !{!1085}
!1092 = !DILocation(line: 0, scope: !1086, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 48, column: 18, scope: !197)
!1094 = !DILocalVariable(name: "__dest", arg: 1, scope: !1095, file: !1096, line: 57, type: !29)
!1095 = distinct !DISubprogram(name: "memset", scope: !1096, file: !1096, line: 57, type: !1097, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1099)
!1096 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!29, !29, !30, !32}
!1099 = !{!1094, !1100, !1101}
!1100 = !DILocalVariable(name: "__ch", arg: 2, scope: !1095, file: !1096, line: 57, type: !30)
!1101 = !DILocalVariable(name: "__len", arg: 3, scope: !1095, file: !1096, line: 57, type: !32)
!1102 = !DILocation(line: 0, scope: !1095, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 1137, column: 3, scope: !1086, inlinedAt: !1093)
!1104 = !DILocation(line: 59, column: 10, scope: !1095, inlinedAt: !1103)
!1105 = !DILocation(line: 49, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !197, file: !198, line: 49, column: 7)
!1107 = !DILocation(line: 49, column: 39, scope: !1106)
!1108 = !DILocation(line: 49, column: 44, scope: !1106)
!1109 = !DILocation(line: 54, column: 1, scope: !197)
!1110 = !DISubprogram(name: "mbrtoc32", scope: !209, file: !209, line: 57, type: !1111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!32, !1113, !628, !32, !1115}
!1113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1090)
!1116 = distinct !DISubprogram(name: "clone_quoting_options", scope: !234, file: !234, line: 113, type: !1117, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1120)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!1119, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1120 = !{!1121, !1122, !1123}
!1121 = !DILocalVariable(name: "o", arg: 1, scope: !1116, file: !234, line: 113, type: !1119)
!1122 = !DILocalVariable(name: "saved_errno", scope: !1116, file: !234, line: 115, type: !30)
!1123 = !DILocalVariable(name: "p", scope: !1116, file: !234, line: 116, type: !1119)
!1124 = !DILocation(line: 0, scope: !1116)
!1125 = !DILocation(line: 115, column: 21, scope: !1116)
!1126 = !DILocation(line: 116, column: 40, scope: !1116)
!1127 = !DILocation(line: 116, column: 31, scope: !1116)
!1128 = !DILocation(line: 118, column: 9, scope: !1116)
!1129 = !DILocation(line: 119, column: 3, scope: !1116)
!1130 = distinct !DISubprogram(name: "get_quoting_style", scope: !234, file: !234, line: 124, type: !1131, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1135)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!236, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1135 = !{!1136}
!1136 = !DILocalVariable(name: "o", arg: 1, scope: !1130, file: !234, line: 124, type: !1133)
!1137 = !DILocation(line: 0, scope: !1130)
!1138 = !DILocation(line: 126, column: 11, scope: !1130)
!1139 = !DILocation(line: 126, column: 46, scope: !1130)
!1140 = !{!1141, !437, i64 0}
!1141 = !{!"quoting_options", !437, i64 0, !516, i64 4, !437, i64 8, !436, i64 40, !436, i64 48}
!1142 = !DILocation(line: 126, column: 3, scope: !1130)
!1143 = distinct !DISubprogram(name: "set_quoting_style", scope: !234, file: !234, line: 132, type: !1144, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !1119, !236}
!1146 = !{!1147, !1148}
!1147 = !DILocalVariable(name: "o", arg: 1, scope: !1143, file: !234, line: 132, type: !1119)
!1148 = !DILocalVariable(name: "s", arg: 2, scope: !1143, file: !234, line: 132, type: !236)
!1149 = !DILocation(line: 0, scope: !1143)
!1150 = !DILocation(line: 134, column: 4, scope: !1143)
!1151 = !DILocation(line: 134, column: 39, scope: !1143)
!1152 = !DILocation(line: 134, column: 45, scope: !1143)
!1153 = !DILocation(line: 135, column: 1, scope: !1143)
!1154 = distinct !DISubprogram(name: "set_char_quoting", scope: !234, file: !234, line: 143, type: !1155, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1157)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!30, !1119, !8, !30}
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1164, !1165}
!1158 = !DILocalVariable(name: "o", arg: 1, scope: !1154, file: !234, line: 143, type: !1119)
!1159 = !DILocalVariable(name: "c", arg: 2, scope: !1154, file: !234, line: 143, type: !8)
!1160 = !DILocalVariable(name: "i", arg: 3, scope: !1154, file: !234, line: 143, type: !30)
!1161 = !DILocalVariable(name: "uc", scope: !1154, file: !234, line: 145, type: !35)
!1162 = !DILocalVariable(name: "p", scope: !1154, file: !234, line: 146, type: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1164 = !DILocalVariable(name: "shift", scope: !1154, file: !234, line: 148, type: !30)
!1165 = !DILocalVariable(name: "r", scope: !1154, file: !234, line: 149, type: !14)
!1166 = !DILocation(line: 0, scope: !1154)
!1167 = !DILocation(line: 147, column: 6, scope: !1154)
!1168 = !DILocation(line: 147, column: 62, scope: !1154)
!1169 = !DILocation(line: 147, column: 57, scope: !1154)
!1170 = !DILocation(line: 148, column: 15, scope: !1154)
!1171 = !DILocation(line: 149, column: 21, scope: !1154)
!1172 = !DILocation(line: 149, column: 24, scope: !1154)
!1173 = !DILocation(line: 149, column: 34, scope: !1154)
!1174 = !DILocation(line: 150, column: 13, scope: !1154)
!1175 = !DILocation(line: 150, column: 19, scope: !1154)
!1176 = !DILocation(line: 150, column: 24, scope: !1154)
!1177 = !DILocation(line: 150, column: 6, scope: !1154)
!1178 = !DILocation(line: 151, column: 3, scope: !1154)
!1179 = distinct !DISubprogram(name: "set_quoting_flags", scope: !234, file: !234, line: 159, type: !1180, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!30, !1119, !30}
!1182 = !{!1183, !1184, !1185}
!1183 = !DILocalVariable(name: "o", arg: 1, scope: !1179, file: !234, line: 159, type: !1119)
!1184 = !DILocalVariable(name: "i", arg: 2, scope: !1179, file: !234, line: 159, type: !30)
!1185 = !DILocalVariable(name: "r", scope: !1179, file: !234, line: 163, type: !30)
!1186 = !DILocation(line: 0, scope: !1179)
!1187 = !DILocation(line: 161, column: 8, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1179, file: !234, line: 161, column: 7)
!1189 = !DILocation(line: 161, column: 7, scope: !1179)
!1190 = !DILocation(line: 163, column: 14, scope: !1179)
!1191 = !{!1141, !516, i64 4}
!1192 = !DILocation(line: 164, column: 12, scope: !1179)
!1193 = !DILocation(line: 165, column: 3, scope: !1179)
!1194 = distinct !DISubprogram(name: "set_custom_quoting", scope: !234, file: !234, line: 169, type: !1195, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1197)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !1119, !6, !6}
!1197 = !{!1198, !1199, !1200}
!1198 = !DILocalVariable(name: "o", arg: 1, scope: !1194, file: !234, line: 169, type: !1119)
!1199 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1194, file: !234, line: 170, type: !6)
!1200 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1194, file: !234, line: 170, type: !6)
!1201 = !DILocation(line: 0, scope: !1194)
!1202 = !DILocation(line: 172, column: 8, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1194, file: !234, line: 172, column: 7)
!1204 = !DILocation(line: 172, column: 7, scope: !1194)
!1205 = !DILocation(line: 174, column: 6, scope: !1194)
!1206 = !DILocation(line: 174, column: 12, scope: !1194)
!1207 = !DILocation(line: 175, column: 8, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1194, file: !234, line: 175, column: 7)
!1209 = !DILocation(line: 175, column: 19, scope: !1208)
!1210 = !DILocation(line: 176, column: 5, scope: !1208)
!1211 = !DILocation(line: 177, column: 6, scope: !1194)
!1212 = !DILocation(line: 177, column: 17, scope: !1194)
!1213 = !{!1141, !436, i64 40}
!1214 = !DILocation(line: 178, column: 6, scope: !1194)
!1215 = !DILocation(line: 178, column: 18, scope: !1194)
!1216 = !{!1141, !436, i64 48}
!1217 = !DILocation(line: 179, column: 1, scope: !1194)
!1218 = distinct !DISubprogram(name: "quotearg_buffer", scope: !234, file: !234, line: 774, type: !1219, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!32, !65, !32, !6, !32, !1133}
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1222 = !DILocalVariable(name: "buffer", arg: 1, scope: !1218, file: !234, line: 774, type: !65)
!1223 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1218, file: !234, line: 774, type: !32)
!1224 = !DILocalVariable(name: "arg", arg: 3, scope: !1218, file: !234, line: 775, type: !6)
!1225 = !DILocalVariable(name: "argsize", arg: 4, scope: !1218, file: !234, line: 775, type: !32)
!1226 = !DILocalVariable(name: "o", arg: 5, scope: !1218, file: !234, line: 776, type: !1133)
!1227 = !DILocalVariable(name: "p", scope: !1218, file: !234, line: 778, type: !1133)
!1228 = !DILocalVariable(name: "saved_errno", scope: !1218, file: !234, line: 779, type: !30)
!1229 = !DILocalVariable(name: "r", scope: !1218, file: !234, line: 780, type: !32)
!1230 = !DILocation(line: 0, scope: !1218)
!1231 = !DILocation(line: 778, column: 37, scope: !1218)
!1232 = !DILocation(line: 779, column: 21, scope: !1218)
!1233 = !DILocation(line: 781, column: 43, scope: !1218)
!1234 = !DILocation(line: 781, column: 53, scope: !1218)
!1235 = !DILocation(line: 781, column: 60, scope: !1218)
!1236 = !DILocation(line: 782, column: 43, scope: !1218)
!1237 = !DILocation(line: 782, column: 58, scope: !1218)
!1238 = !DILocation(line: 780, column: 14, scope: !1218)
!1239 = !DILocation(line: 783, column: 9, scope: !1218)
!1240 = !DILocation(line: 784, column: 3, scope: !1218)
!1241 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !234, file: !234, line: 251, type: !1242, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1246)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!32, !65, !32, !6, !32, !236, !30, !1244, !6, !6}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1271, !1273, !1276, !1277, !1278, !1279, !1282, !1283, !1286, !1290, !1291, !1299, !1302, !1303, !1305, !1306, !1307, !1308}
!1247 = !DILocalVariable(name: "buffer", arg: 1, scope: !1241, file: !234, line: 251, type: !65)
!1248 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1241, file: !234, line: 251, type: !32)
!1249 = !DILocalVariable(name: "arg", arg: 3, scope: !1241, file: !234, line: 252, type: !6)
!1250 = !DILocalVariable(name: "argsize", arg: 4, scope: !1241, file: !234, line: 252, type: !32)
!1251 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1241, file: !234, line: 253, type: !236)
!1252 = !DILocalVariable(name: "flags", arg: 6, scope: !1241, file: !234, line: 253, type: !30)
!1253 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1241, file: !234, line: 254, type: !1244)
!1254 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1241, file: !234, line: 255, type: !6)
!1255 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1241, file: !234, line: 256, type: !6)
!1256 = !DILocalVariable(name: "unibyte_locale", scope: !1241, file: !234, line: 258, type: !44)
!1257 = !DILocalVariable(name: "len", scope: !1241, file: !234, line: 260, type: !32)
!1258 = !DILocalVariable(name: "orig_buffersize", scope: !1241, file: !234, line: 261, type: !32)
!1259 = !DILocalVariable(name: "quote_string", scope: !1241, file: !234, line: 262, type: !6)
!1260 = !DILocalVariable(name: "quote_string_len", scope: !1241, file: !234, line: 263, type: !32)
!1261 = !DILocalVariable(name: "backslash_escapes", scope: !1241, file: !234, line: 264, type: !44)
!1262 = !DILocalVariable(name: "elide_outer_quotes", scope: !1241, file: !234, line: 265, type: !44)
!1263 = !DILocalVariable(name: "encountered_single_quote", scope: !1241, file: !234, line: 266, type: !44)
!1264 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1241, file: !234, line: 267, type: !44)
!1265 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1241, file: !234, line: 309, type: !44)
!1266 = !DILocalVariable(name: "lq", scope: !1267, file: !234, line: 361, type: !6)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !234, line: 361, column: 11)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !234, line: 360, column: 13)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !234, line: 333, column: 7)
!1270 = distinct !DILexicalBlock(scope: !1241, file: !234, line: 312, column: 5)
!1271 = !DILocalVariable(name: "i", scope: !1272, file: !234, line: 395, type: !32)
!1272 = distinct !DILexicalBlock(scope: !1241, file: !234, line: 395, column: 3)
!1273 = !DILocalVariable(name: "is_right_quote", scope: !1274, file: !234, line: 397, type: !44)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !234, line: 396, column: 5)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !234, line: 395, column: 3)
!1276 = !DILocalVariable(name: "escaping", scope: !1274, file: !234, line: 398, type: !44)
!1277 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1274, file: !234, line: 399, type: !44)
!1278 = !DILocalVariable(name: "c", scope: !1274, file: !234, line: 417, type: !35)
!1279 = !DILocalVariable(name: "m", scope: !1280, file: !234, line: 598, type: !32)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 596, column: 11)
!1281 = distinct !DILexicalBlock(scope: !1274, file: !234, line: 419, column: 9)
!1282 = !DILocalVariable(name: "printable", scope: !1280, file: !234, line: 600, type: !44)
!1283 = !DILocalVariable(name: "mbs", scope: !1284, file: !234, line: 609, type: !293)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !234, line: 608, column: 15)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !234, line: 602, column: 17)
!1286 = !DILocalVariable(name: "w", scope: !1287, file: !234, line: 618, type: !208)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !234, line: 617, column: 19)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !234, line: 616, column: 17)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !234, line: 616, column: 17)
!1290 = !DILocalVariable(name: "bytes", scope: !1287, file: !234, line: 619, type: !32)
!1291 = !DILocalVariable(name: "j", scope: !1292, file: !234, line: 648, type: !32)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !234, line: 648, column: 29)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !234, line: 647, column: 27)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !234, line: 645, column: 29)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !234, line: 636, column: 23)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !234, line: 628, column: 30)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !234, line: 623, column: 30)
!1298 = distinct !DILexicalBlock(scope: !1287, file: !234, line: 621, column: 25)
!1299 = !DILocalVariable(name: "ilim", scope: !1300, file: !234, line: 674, type: !32)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !234, line: 671, column: 15)
!1301 = distinct !DILexicalBlock(scope: !1280, file: !234, line: 670, column: 17)
!1302 = !DILabel(scope: !1241, name: "process_input", file: !234, line: 308)
!1303 = !DILabel(scope: !1304, name: "c_and_shell_escape", file: !234, line: 502)
!1304 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 478, column: 9)
!1305 = !DILabel(scope: !1304, name: "c_escape", file: !234, line: 507)
!1306 = !DILabel(scope: !1274, name: "store_escape", file: !234, line: 709)
!1307 = !DILabel(scope: !1274, name: "store_c", file: !234, line: 712)
!1308 = !DILabel(scope: !1241, name: "force_outer_quoting_style", file: !234, line: 753)
!1309 = !DILocation(line: 0, scope: !1241)
!1310 = !DILocation(line: 258, column: 25, scope: !1241)
!1311 = !DILocation(line: 258, column: 36, scope: !1241)
!1312 = !DILocation(line: 267, column: 3, scope: !1241)
!1313 = !DILocation(line: 261, column: 10, scope: !1241)
!1314 = !DILocation(line: 262, column: 15, scope: !1241)
!1315 = !DILocation(line: 263, column: 10, scope: !1241)
!1316 = !DILocation(line: 308, column: 2, scope: !1241)
!1317 = !DILocation(line: 311, column: 3, scope: !1241)
!1318 = !DILocation(line: 318, column: 11, scope: !1270)
!1319 = !DILocation(line: 319, column: 9, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !234, line: 319, column: 9)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !234, line: 319, column: 9)
!1322 = distinct !DILexicalBlock(scope: !1270, file: !234, line: 318, column: 11)
!1323 = !DILocation(line: 319, column: 9, scope: !1321)
!1324 = !DILocation(line: 0, scope: !284, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 357, column: 26, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !234, line: 335, column: 11)
!1327 = distinct !DILexicalBlock(scope: !1269, file: !234, line: 334, column: 13)
!1328 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1325)
!1329 = !DILocation(line: 201, column: 19, scope: !1330, inlinedAt: !1325)
!1330 = distinct !DILexicalBlock(scope: !284, file: !234, line: 201, column: 7)
!1331 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1325)
!1332 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1325)
!1333 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1325)
!1334 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1325)
!1335 = !DILocalVariable(name: "ps", arg: 1, scope: !1336, file: !1087, line: 1135, type: !1339)
!1336 = distinct !DISubprogram(name: "mbszero", scope: !1087, file: !1087, line: 1135, type: !1337, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1340)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{null, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1340 = !{!1335}
!1341 = !DILocation(line: 0, scope: !1336, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1325)
!1343 = !DILocalVariable(name: "__dest", arg: 1, scope: !1344, file: !1096, line: 57, type: !29)
!1344 = distinct !DISubprogram(name: "memset", scope: !1096, file: !1096, line: 57, type: !1097, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1345)
!1345 = !{!1343, !1346, !1347}
!1346 = !DILocalVariable(name: "__ch", arg: 2, scope: !1344, file: !1096, line: 57, type: !30)
!1347 = !DILocalVariable(name: "__len", arg: 3, scope: !1344, file: !1096, line: 57, type: !32)
!1348 = !DILocation(line: 0, scope: !1344, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 1137, column: 3, scope: !1336, inlinedAt: !1342)
!1350 = !DILocation(line: 59, column: 10, scope: !1344, inlinedAt: !1349)
!1351 = !DILocation(line: 231, column: 7, scope: !1352, inlinedAt: !1325)
!1352 = distinct !DILexicalBlock(scope: !284, file: !234, line: 231, column: 7)
!1353 = !DILocation(line: 231, column: 40, scope: !1352, inlinedAt: !1325)
!1354 = !DILocation(line: 231, column: 45, scope: !1352, inlinedAt: !1325)
!1355 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1325)
!1356 = !DILocation(line: 0, scope: !284, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 358, column: 27, scope: !1326)
!1358 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1357)
!1359 = !DILocation(line: 201, column: 19, scope: !1330, inlinedAt: !1357)
!1360 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1357)
!1361 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1357)
!1362 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1357)
!1363 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1357)
!1364 = !DILocation(line: 0, scope: !1336, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1357)
!1366 = !DILocation(line: 0, scope: !1344, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 1137, column: 3, scope: !1336, inlinedAt: !1365)
!1368 = !DILocation(line: 59, column: 10, scope: !1344, inlinedAt: !1367)
!1369 = !DILocation(line: 231, column: 7, scope: !1352, inlinedAt: !1357)
!1370 = !DILocation(line: 231, column: 40, scope: !1352, inlinedAt: !1357)
!1371 = !DILocation(line: 231, column: 45, scope: !1352, inlinedAt: !1357)
!1372 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1357)
!1373 = !DILocation(line: 360, column: 13, scope: !1269)
!1374 = !DILocation(line: 0, scope: !1267)
!1375 = !DILocation(line: 361, column: 45, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1267, file: !234, line: 361, column: 11)
!1377 = !DILocation(line: 361, column: 11, scope: !1267)
!1378 = !DILocation(line: 362, column: 13, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !234, line: 362, column: 13)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !234, line: 362, column: 13)
!1381 = !DILocation(line: 362, column: 13, scope: !1380)
!1382 = !DILocation(line: 361, column: 52, scope: !1376)
!1383 = distinct !{!1383, !1377, !1384, !486}
!1384 = !DILocation(line: 362, column: 13, scope: !1267)
!1385 = !DILocation(line: 260, column: 10, scope: !1241)
!1386 = !DILocation(line: 365, column: 28, scope: !1269)
!1387 = !DILocation(line: 367, column: 7, scope: !1270)
!1388 = !DILocation(line: 370, column: 7, scope: !1270)
!1389 = !DILocation(line: 376, column: 11, scope: !1270)
!1390 = !DILocation(line: 381, column: 11, scope: !1270)
!1391 = !DILocation(line: 382, column: 9, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !234, line: 382, column: 9)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !234, line: 382, column: 9)
!1394 = distinct !DILexicalBlock(scope: !1270, file: !234, line: 381, column: 11)
!1395 = !DILocation(line: 382, column: 9, scope: !1393)
!1396 = !DILocation(line: 389, column: 7, scope: !1270)
!1397 = !DILocation(line: 392, column: 7, scope: !1270)
!1398 = !DILocation(line: 0, scope: !1272)
!1399 = !DILocation(line: 395, column: 8, scope: !1272)
!1400 = !DILocation(line: 395, column: 34, scope: !1275)
!1401 = !DILocation(line: 395, column: 26, scope: !1275)
!1402 = !DILocation(line: 395, column: 48, scope: !1275)
!1403 = !DILocation(line: 395, column: 55, scope: !1275)
!1404 = !DILocation(line: 395, column: 3, scope: !1272)
!1405 = !DILocation(line: 395, column: 67, scope: !1275)
!1406 = !DILocation(line: 0, scope: !1274)
!1407 = !DILocation(line: 402, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1274, file: !234, line: 401, column: 11)
!1409 = !DILocation(line: 404, column: 17, scope: !1408)
!1410 = !DILocation(line: 405, column: 39, scope: !1408)
!1411 = !DILocation(line: 409, column: 32, scope: !1408)
!1412 = !DILocation(line: 405, column: 19, scope: !1408)
!1413 = !DILocation(line: 405, column: 15, scope: !1408)
!1414 = !DILocation(line: 410, column: 11, scope: !1408)
!1415 = !DILocation(line: 410, column: 25, scope: !1408)
!1416 = !DILocalVariable(name: "__s1", arg: 1, scope: !1417, file: !470, line: 974, type: !638)
!1417 = distinct !DISubprogram(name: "memeq", scope: !470, file: !470, line: 974, type: !1058, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1418)
!1418 = !{!1416, !1419, !1420}
!1419 = !DILocalVariable(name: "__s2", arg: 2, scope: !1417, file: !470, line: 974, type: !638)
!1420 = !DILocalVariable(name: "__n", arg: 3, scope: !1417, file: !470, line: 974, type: !32)
!1421 = !DILocation(line: 0, scope: !1417, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 410, column: 14, scope: !1408)
!1423 = !DILocation(line: 976, column: 11, scope: !1417, inlinedAt: !1422)
!1424 = !DILocation(line: 976, column: 10, scope: !1417, inlinedAt: !1422)
!1425 = !DILocation(line: 401, column: 11, scope: !1274)
!1426 = !DILocation(line: 417, column: 25, scope: !1274)
!1427 = !DILocation(line: 418, column: 7, scope: !1274)
!1428 = !DILocation(line: 421, column: 15, scope: !1281)
!1429 = !DILocation(line: 423, column: 15, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !234, line: 423, column: 15)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !234, line: 422, column: 13)
!1432 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 421, column: 15)
!1433 = !DILocation(line: 423, column: 15, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !234, line: 423, column: 15)
!1435 = !DILocation(line: 423, column: 15, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !234, line: 423, column: 15)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !234, line: 423, column: 15)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !234, line: 423, column: 15)
!1439 = !DILocation(line: 423, column: 15, scope: !1437)
!1440 = !DILocation(line: 423, column: 15, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !234, line: 423, column: 15)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !234, line: 423, column: 15)
!1443 = !DILocation(line: 423, column: 15, scope: !1442)
!1444 = !DILocation(line: 423, column: 15, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !234, line: 423, column: 15)
!1446 = distinct !DILexicalBlock(scope: !1438, file: !234, line: 423, column: 15)
!1447 = !DILocation(line: 423, column: 15, scope: !1446)
!1448 = !DILocation(line: 423, column: 15, scope: !1438)
!1449 = !DILocation(line: 423, column: 15, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !234, line: 423, column: 15)
!1451 = distinct !DILexicalBlock(scope: !1430, file: !234, line: 423, column: 15)
!1452 = !DILocation(line: 423, column: 15, scope: !1451)
!1453 = !DILocation(line: 431, column: 19, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1431, file: !234, line: 430, column: 19)
!1455 = !DILocation(line: 431, column: 24, scope: !1454)
!1456 = !DILocation(line: 431, column: 28, scope: !1454)
!1457 = !DILocation(line: 431, column: 38, scope: !1454)
!1458 = !DILocation(line: 431, column: 48, scope: !1454)
!1459 = !DILocation(line: 431, column: 59, scope: !1454)
!1460 = !DILocation(line: 433, column: 19, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !234, line: 433, column: 19)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !234, line: 433, column: 19)
!1463 = distinct !DILexicalBlock(scope: !1454, file: !234, line: 432, column: 17)
!1464 = !DILocation(line: 433, column: 19, scope: !1462)
!1465 = !DILocation(line: 434, column: 19, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !234, line: 434, column: 19)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !234, line: 434, column: 19)
!1468 = !DILocation(line: 434, column: 19, scope: !1467)
!1469 = !DILocation(line: 435, column: 17, scope: !1463)
!1470 = !DILocation(line: 442, column: 20, scope: !1432)
!1471 = !DILocation(line: 447, column: 11, scope: !1281)
!1472 = !DILocation(line: 450, column: 19, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 448, column: 13)
!1474 = !DILocation(line: 456, column: 19, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1473, file: !234, line: 455, column: 19)
!1476 = !DILocation(line: 456, column: 24, scope: !1475)
!1477 = !DILocation(line: 456, column: 28, scope: !1475)
!1478 = !DILocation(line: 456, column: 38, scope: !1475)
!1479 = !DILocation(line: 456, column: 47, scope: !1475)
!1480 = !DILocation(line: 456, column: 41, scope: !1475)
!1481 = !DILocation(line: 456, column: 52, scope: !1475)
!1482 = !DILocation(line: 455, column: 19, scope: !1473)
!1483 = !DILocation(line: 457, column: 25, scope: !1475)
!1484 = !DILocation(line: 457, column: 17, scope: !1475)
!1485 = !DILocation(line: 464, column: 25, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1475, file: !234, line: 458, column: 19)
!1487 = !DILocation(line: 468, column: 21, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !234, line: 468, column: 21)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !234, line: 468, column: 21)
!1490 = !DILocation(line: 468, column: 21, scope: !1489)
!1491 = !DILocation(line: 469, column: 21, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !234, line: 469, column: 21)
!1493 = distinct !DILexicalBlock(scope: !1486, file: !234, line: 469, column: 21)
!1494 = !DILocation(line: 469, column: 21, scope: !1493)
!1495 = !DILocation(line: 470, column: 21, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !234, line: 470, column: 21)
!1497 = distinct !DILexicalBlock(scope: !1486, file: !234, line: 470, column: 21)
!1498 = !DILocation(line: 470, column: 21, scope: !1497)
!1499 = !DILocation(line: 471, column: 21, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !234, line: 471, column: 21)
!1501 = distinct !DILexicalBlock(scope: !1486, file: !234, line: 471, column: 21)
!1502 = !DILocation(line: 471, column: 21, scope: !1501)
!1503 = !DILocation(line: 472, column: 21, scope: !1486)
!1504 = !DILocation(line: 482, column: 33, scope: !1304)
!1505 = !DILocation(line: 483, column: 33, scope: !1304)
!1506 = !DILocation(line: 485, column: 33, scope: !1304)
!1507 = !DILocation(line: 486, column: 33, scope: !1304)
!1508 = !DILocation(line: 487, column: 33, scope: !1304)
!1509 = !DILocation(line: 490, column: 17, scope: !1304)
!1510 = !DILocation(line: 492, column: 21, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !234, line: 491, column: 15)
!1512 = distinct !DILexicalBlock(scope: !1304, file: !234, line: 490, column: 17)
!1513 = !DILocation(line: 499, column: 35, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1304, file: !234, line: 499, column: 17)
!1515 = !DILocation(line: 499, column: 57, scope: !1514)
!1516 = !DILocation(line: 0, scope: !1304)
!1517 = !DILocation(line: 502, column: 11, scope: !1304)
!1518 = !DILocation(line: 504, column: 17, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1304, file: !234, line: 503, column: 17)
!1520 = !DILocation(line: 507, column: 11, scope: !1304)
!1521 = !DILocation(line: 508, column: 17, scope: !1304)
!1522 = !DILocation(line: 517, column: 15, scope: !1281)
!1523 = !DILocation(line: 517, column: 40, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 517, column: 15)
!1525 = !DILocation(line: 517, column: 47, scope: !1524)
!1526 = !DILocation(line: 517, column: 18, scope: !1524)
!1527 = !DILocation(line: 521, column: 17, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 521, column: 15)
!1529 = !DILocation(line: 521, column: 15, scope: !1281)
!1530 = !DILocation(line: 525, column: 11, scope: !1281)
!1531 = !DILocation(line: 537, column: 15, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 536, column: 15)
!1533 = !DILocation(line: 536, column: 15, scope: !1281)
!1534 = !DILocation(line: 544, column: 15, scope: !1281)
!1535 = !DILocation(line: 546, column: 19, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !234, line: 545, column: 13)
!1537 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 544, column: 15)
!1538 = !DILocation(line: 549, column: 19, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !234, line: 549, column: 19)
!1540 = !DILocation(line: 549, column: 30, scope: !1539)
!1541 = !DILocation(line: 558, column: 15, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !234, line: 558, column: 15)
!1543 = distinct !DILexicalBlock(scope: !1536, file: !234, line: 558, column: 15)
!1544 = !DILocation(line: 558, column: 15, scope: !1543)
!1545 = !DILocation(line: 559, column: 15, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !234, line: 559, column: 15)
!1547 = distinct !DILexicalBlock(scope: !1536, file: !234, line: 559, column: 15)
!1548 = !DILocation(line: 559, column: 15, scope: !1547)
!1549 = !DILocation(line: 560, column: 15, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !234, line: 560, column: 15)
!1551 = distinct !DILexicalBlock(scope: !1536, file: !234, line: 560, column: 15)
!1552 = !DILocation(line: 560, column: 15, scope: !1551)
!1553 = !DILocation(line: 562, column: 13, scope: !1536)
!1554 = !DILocation(line: 602, column: 17, scope: !1280)
!1555 = !DILocation(line: 0, scope: !1280)
!1556 = !DILocation(line: 605, column: 29, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1285, file: !234, line: 603, column: 15)
!1558 = !DILocation(line: 605, column: 41, scope: !1557)
!1559 = !DILocation(line: 670, column: 23, scope: !1301)
!1560 = !DILocation(line: 609, column: 17, scope: !1284)
!1561 = !DILocation(line: 609, column: 27, scope: !1284)
!1562 = !DILocation(line: 0, scope: !1336, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 609, column: 32, scope: !1284)
!1564 = !DILocation(line: 0, scope: !1344, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 1137, column: 3, scope: !1336, inlinedAt: !1563)
!1566 = !DILocation(line: 59, column: 10, scope: !1344, inlinedAt: !1565)
!1567 = !DILocation(line: 613, column: 29, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1284, file: !234, line: 613, column: 21)
!1569 = !DILocation(line: 613, column: 21, scope: !1284)
!1570 = !DILocation(line: 614, column: 29, scope: !1568)
!1571 = !DILocation(line: 614, column: 19, scope: !1568)
!1572 = !DILocation(line: 618, column: 21, scope: !1287)
!1573 = !DILocation(line: 620, column: 54, scope: !1287)
!1574 = !DILocation(line: 0, scope: !1287)
!1575 = !DILocation(line: 619, column: 36, scope: !1287)
!1576 = !DILocation(line: 621, column: 25, scope: !1287)
!1577 = !DILocation(line: 631, column: 38, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1296, file: !234, line: 629, column: 23)
!1579 = !DILocation(line: 631, column: 48, scope: !1578)
!1580 = !DILocation(line: 665, column: 19, scope: !1288)
!1581 = !DILocation(line: 666, column: 15, scope: !1285)
!1582 = !DILocation(line: 626, column: 25, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1297, file: !234, line: 624, column: 23)
!1584 = !DILocation(line: 631, column: 51, scope: !1578)
!1585 = !DILocation(line: 631, column: 25, scope: !1578)
!1586 = !DILocation(line: 632, column: 28, scope: !1578)
!1587 = !DILocation(line: 631, column: 34, scope: !1578)
!1588 = distinct !{!1588, !1585, !1586, !486}
!1589 = !DILocation(line: 646, column: 29, scope: !1294)
!1590 = !DILocation(line: 0, scope: !1292)
!1591 = !DILocation(line: 649, column: 49, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1292, file: !234, line: 648, column: 29)
!1593 = !DILocation(line: 649, column: 39, scope: !1592)
!1594 = !DILocation(line: 649, column: 31, scope: !1592)
!1595 = !DILocation(line: 648, column: 60, scope: !1592)
!1596 = !DILocation(line: 648, column: 50, scope: !1592)
!1597 = !DILocation(line: 648, column: 29, scope: !1292)
!1598 = distinct !{!1598, !1597, !1599, !486}
!1599 = !DILocation(line: 654, column: 33, scope: !1292)
!1600 = !DILocation(line: 657, column: 43, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1295, file: !234, line: 657, column: 29)
!1602 = !DILocalVariable(name: "wc", arg: 1, scope: !1603, file: !1604, line: 865, type: !1607)
!1603 = distinct !DISubprogram(name: "c32isprint", scope: !1604, file: !1604, line: 865, type: !1605, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1609)
!1604 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!30, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1608, line: 20, baseType: !14)
!1608 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1609 = !{!1602}
!1610 = !DILocation(line: 0, scope: !1603, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 657, column: 31, scope: !1601)
!1612 = !DILocation(line: 871, column: 10, scope: !1603, inlinedAt: !1611)
!1613 = !DILocation(line: 657, column: 31, scope: !1601)
!1614 = !DILocation(line: 664, column: 23, scope: !1287)
!1615 = !DILocation(line: 753, column: 2, scope: !1241)
!1616 = !DILocation(line: 756, column: 51, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1241, file: !234, line: 756, column: 7)
!1618 = !DILocation(line: 670, column: 19, scope: !1301)
!1619 = !DILocation(line: 670, column: 45, scope: !1301)
!1620 = !DILocation(line: 674, column: 33, scope: !1300)
!1621 = !DILocation(line: 0, scope: !1300)
!1622 = !DILocation(line: 676, column: 17, scope: !1300)
!1623 = !DILocation(line: 398, column: 12, scope: !1274)
!1624 = !DILocation(line: 678, column: 43, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !234, line: 678, column: 25)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !234, line: 677, column: 19)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !234, line: 676, column: 17)
!1628 = distinct !DILexicalBlock(scope: !1300, file: !234, line: 676, column: 17)
!1629 = !DILocation(line: 680, column: 25, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !234, line: 680, column: 25)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !234, line: 679, column: 23)
!1632 = !DILocation(line: 680, column: 25, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1630, file: !234, line: 680, column: 25)
!1634 = !DILocation(line: 680, column: 25, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !234, line: 680, column: 25)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !234, line: 680, column: 25)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !234, line: 680, column: 25)
!1638 = !DILocation(line: 680, column: 25, scope: !1636)
!1639 = !DILocation(line: 680, column: 25, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !234, line: 680, column: 25)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !234, line: 680, column: 25)
!1642 = !DILocation(line: 680, column: 25, scope: !1641)
!1643 = !DILocation(line: 680, column: 25, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !234, line: 680, column: 25)
!1645 = distinct !DILexicalBlock(scope: !1637, file: !234, line: 680, column: 25)
!1646 = !DILocation(line: 680, column: 25, scope: !1645)
!1647 = !DILocation(line: 680, column: 25, scope: !1637)
!1648 = !DILocation(line: 680, column: 25, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !234, line: 680, column: 25)
!1650 = distinct !DILexicalBlock(scope: !1630, file: !234, line: 680, column: 25)
!1651 = !DILocation(line: 680, column: 25, scope: !1650)
!1652 = !DILocation(line: 681, column: 25, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !234, line: 681, column: 25)
!1654 = distinct !DILexicalBlock(scope: !1631, file: !234, line: 681, column: 25)
!1655 = !DILocation(line: 681, column: 25, scope: !1654)
!1656 = !DILocation(line: 682, column: 25, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !234, line: 682, column: 25)
!1658 = distinct !DILexicalBlock(scope: !1631, file: !234, line: 682, column: 25)
!1659 = !DILocation(line: 682, column: 25, scope: !1658)
!1660 = !DILocation(line: 683, column: 38, scope: !1631)
!1661 = !DILocation(line: 683, column: 33, scope: !1631)
!1662 = !DILocation(line: 684, column: 23, scope: !1631)
!1663 = !DILocation(line: 685, column: 30, scope: !1625)
!1664 = !DILocation(line: 687, column: 25, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !234, line: 687, column: 25)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !234, line: 687, column: 25)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !234, line: 686, column: 23)
!1668 = distinct !DILexicalBlock(scope: !1625, file: !234, line: 685, column: 30)
!1669 = !DILocation(line: 687, column: 25, scope: !1666)
!1670 = !DILocation(line: 689, column: 23, scope: !1667)
!1671 = !DILocation(line: 690, column: 35, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1626, file: !234, line: 690, column: 25)
!1673 = !DILocation(line: 690, column: 30, scope: !1672)
!1674 = !DILocation(line: 690, column: 25, scope: !1626)
!1675 = !DILocation(line: 692, column: 21, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !234, line: 692, column: 21)
!1677 = distinct !DILexicalBlock(scope: !1626, file: !234, line: 692, column: 21)
!1678 = !DILocation(line: 692, column: 21, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !234, line: 692, column: 21)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !234, line: 692, column: 21)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !234, line: 692, column: 21)
!1682 = !DILocation(line: 692, column: 21, scope: !1680)
!1683 = !DILocation(line: 692, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !234, line: 692, column: 21)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !234, line: 692, column: 21)
!1686 = !DILocation(line: 692, column: 21, scope: !1685)
!1687 = !DILocation(line: 692, column: 21, scope: !1681)
!1688 = !DILocation(line: 0, scope: !1626)
!1689 = !DILocation(line: 693, column: 21, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !234, line: 693, column: 21)
!1691 = distinct !DILexicalBlock(scope: !1626, file: !234, line: 693, column: 21)
!1692 = !DILocation(line: 693, column: 21, scope: !1691)
!1693 = !DILocation(line: 694, column: 25, scope: !1626)
!1694 = !DILocation(line: 676, column: 17, scope: !1627)
!1695 = distinct !{!1695, !1696, !1697}
!1696 = !DILocation(line: 676, column: 17, scope: !1628)
!1697 = !DILocation(line: 695, column: 19, scope: !1628)
!1698 = !DILocation(line: 409, column: 30, scope: !1408)
!1699 = !DILocation(line: 702, column: 34, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1274, file: !234, line: 702, column: 11)
!1701 = !DILocation(line: 704, column: 14, scope: !1700)
!1702 = !DILocation(line: 705, column: 14, scope: !1700)
!1703 = !DILocation(line: 705, column: 35, scope: !1700)
!1704 = !DILocation(line: 705, column: 17, scope: !1700)
!1705 = !DILocation(line: 705, column: 47, scope: !1700)
!1706 = !DILocation(line: 705, column: 65, scope: !1700)
!1707 = !DILocation(line: 706, column: 11, scope: !1700)
!1708 = !DILocation(line: 702, column: 11, scope: !1274)
!1709 = !DILocation(line: 395, column: 15, scope: !1272)
!1710 = !DILocation(line: 709, column: 5, scope: !1274)
!1711 = !DILocation(line: 710, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1274, file: !234, line: 710, column: 7)
!1713 = !DILocation(line: 710, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1712, file: !234, line: 710, column: 7)
!1715 = !DILocation(line: 710, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !234, line: 710, column: 7)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !234, line: 710, column: 7)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !234, line: 710, column: 7)
!1719 = !DILocation(line: 710, column: 7, scope: !1717)
!1720 = !DILocation(line: 710, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !234, line: 710, column: 7)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !234, line: 710, column: 7)
!1723 = !DILocation(line: 710, column: 7, scope: !1722)
!1724 = !DILocation(line: 710, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !234, line: 710, column: 7)
!1726 = distinct !DILexicalBlock(scope: !1718, file: !234, line: 710, column: 7)
!1727 = !DILocation(line: 710, column: 7, scope: !1726)
!1728 = !DILocation(line: 710, column: 7, scope: !1718)
!1729 = !DILocation(line: 710, column: 7, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !234, line: 710, column: 7)
!1731 = distinct !DILexicalBlock(scope: !1712, file: !234, line: 710, column: 7)
!1732 = !DILocation(line: 710, column: 7, scope: !1731)
!1733 = !DILocation(line: 712, column: 5, scope: !1274)
!1734 = !DILocation(line: 713, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !234, line: 713, column: 7)
!1736 = distinct !DILexicalBlock(scope: !1274, file: !234, line: 713, column: 7)
!1737 = !DILocation(line: 417, column: 21, scope: !1274)
!1738 = !DILocation(line: 713, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !234, line: 713, column: 7)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !234, line: 713, column: 7)
!1741 = distinct !DILexicalBlock(scope: !1735, file: !234, line: 713, column: 7)
!1742 = !DILocation(line: 713, column: 7, scope: !1740)
!1743 = !DILocation(line: 713, column: 7, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !234, line: 713, column: 7)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !234, line: 713, column: 7)
!1746 = !DILocation(line: 713, column: 7, scope: !1745)
!1747 = !DILocation(line: 713, column: 7, scope: !1741)
!1748 = !DILocation(line: 714, column: 7, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !234, line: 714, column: 7)
!1750 = distinct !DILexicalBlock(scope: !1274, file: !234, line: 714, column: 7)
!1751 = !DILocation(line: 714, column: 7, scope: !1750)
!1752 = !DILocation(line: 716, column: 11, scope: !1274)
!1753 = !DILocation(line: 718, column: 5, scope: !1275)
!1754 = !DILocation(line: 395, column: 82, scope: !1275)
!1755 = !DILocation(line: 395, column: 3, scope: !1275)
!1756 = distinct !{!1756, !1404, !1757, !486}
!1757 = !DILocation(line: 718, column: 5, scope: !1272)
!1758 = !DILocation(line: 720, column: 11, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1241, file: !234, line: 720, column: 7)
!1760 = !DILocation(line: 720, column: 16, scope: !1759)
!1761 = !DILocation(line: 728, column: 51, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1241, file: !234, line: 728, column: 7)
!1763 = !DILocation(line: 731, column: 11, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1762, file: !234, line: 730, column: 5)
!1765 = !DILocation(line: 732, column: 16, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1764, file: !234, line: 731, column: 11)
!1767 = !DILocation(line: 732, column: 9, scope: !1766)
!1768 = !DILocation(line: 736, column: 18, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1766, file: !234, line: 736, column: 16)
!1770 = !DILocation(line: 736, column: 29, scope: !1769)
!1771 = !DILocation(line: 745, column: 7, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1241, file: !234, line: 745, column: 7)
!1773 = !DILocation(line: 745, column: 20, scope: !1772)
!1774 = !DILocation(line: 746, column: 12, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !234, line: 746, column: 5)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !234, line: 746, column: 5)
!1777 = !DILocation(line: 746, column: 5, scope: !1776)
!1778 = !DILocation(line: 747, column: 7, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !234, line: 747, column: 7)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !234, line: 747, column: 7)
!1781 = !DILocation(line: 747, column: 7, scope: !1780)
!1782 = !DILocation(line: 746, column: 39, scope: !1775)
!1783 = distinct !{!1783, !1777, !1784, !486}
!1784 = !DILocation(line: 747, column: 7, scope: !1776)
!1785 = !DILocation(line: 749, column: 11, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1241, file: !234, line: 749, column: 7)
!1787 = !DILocation(line: 749, column: 7, scope: !1241)
!1788 = !DILocation(line: 750, column: 5, scope: !1786)
!1789 = !DILocation(line: 750, column: 17, scope: !1786)
!1790 = !DILocation(line: 756, column: 21, scope: !1617)
!1791 = !DILocation(line: 760, column: 42, scope: !1241)
!1792 = !DILocation(line: 758, column: 10, scope: !1241)
!1793 = !DILocation(line: 758, column: 3, scope: !1241)
!1794 = !DILocation(line: 762, column: 1, scope: !1241)
!1795 = !DISubprogram(name: "iswprint", scope: !1796, file: !1796, line: 120, type: !1605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!1796 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1797 = distinct !DISubprogram(name: "quotearg_alloc", scope: !234, file: !234, line: 788, type: !1798, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!65, !6, !32, !1133}
!1800 = !{!1801, !1802, !1803}
!1801 = !DILocalVariable(name: "arg", arg: 1, scope: !1797, file: !234, line: 788, type: !6)
!1802 = !DILocalVariable(name: "argsize", arg: 2, scope: !1797, file: !234, line: 788, type: !32)
!1803 = !DILocalVariable(name: "o", arg: 3, scope: !1797, file: !234, line: 789, type: !1133)
!1804 = !DILocation(line: 0, scope: !1797)
!1805 = !DILocalVariable(name: "arg", arg: 1, scope: !1806, file: !234, line: 801, type: !6)
!1806 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !234, file: !234, line: 801, type: !1807, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!65, !6, !32, !366, !1133}
!1809 = !{!1805, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1810 = !DILocalVariable(name: "argsize", arg: 2, scope: !1806, file: !234, line: 801, type: !32)
!1811 = !DILocalVariable(name: "size", arg: 3, scope: !1806, file: !234, line: 801, type: !366)
!1812 = !DILocalVariable(name: "o", arg: 4, scope: !1806, file: !234, line: 802, type: !1133)
!1813 = !DILocalVariable(name: "p", scope: !1806, file: !234, line: 804, type: !1133)
!1814 = !DILocalVariable(name: "saved_errno", scope: !1806, file: !234, line: 805, type: !30)
!1815 = !DILocalVariable(name: "flags", scope: !1806, file: !234, line: 807, type: !30)
!1816 = !DILocalVariable(name: "bufsize", scope: !1806, file: !234, line: 808, type: !32)
!1817 = !DILocalVariable(name: "buf", scope: !1806, file: !234, line: 812, type: !65)
!1818 = !DILocation(line: 0, scope: !1806, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 791, column: 10, scope: !1797)
!1820 = !DILocation(line: 804, column: 37, scope: !1806, inlinedAt: !1819)
!1821 = !DILocation(line: 805, column: 21, scope: !1806, inlinedAt: !1819)
!1822 = !DILocation(line: 807, column: 18, scope: !1806, inlinedAt: !1819)
!1823 = !DILocation(line: 807, column: 24, scope: !1806, inlinedAt: !1819)
!1824 = !DILocation(line: 808, column: 72, scope: !1806, inlinedAt: !1819)
!1825 = !DILocation(line: 809, column: 53, scope: !1806, inlinedAt: !1819)
!1826 = !DILocation(line: 810, column: 49, scope: !1806, inlinedAt: !1819)
!1827 = !DILocation(line: 811, column: 49, scope: !1806, inlinedAt: !1819)
!1828 = !DILocation(line: 808, column: 20, scope: !1806, inlinedAt: !1819)
!1829 = !DILocation(line: 811, column: 62, scope: !1806, inlinedAt: !1819)
!1830 = !DILocation(line: 812, column: 15, scope: !1806, inlinedAt: !1819)
!1831 = !DILocation(line: 813, column: 60, scope: !1806, inlinedAt: !1819)
!1832 = !DILocation(line: 815, column: 32, scope: !1806, inlinedAt: !1819)
!1833 = !DILocation(line: 815, column: 47, scope: !1806, inlinedAt: !1819)
!1834 = !DILocation(line: 813, column: 3, scope: !1806, inlinedAt: !1819)
!1835 = !DILocation(line: 816, column: 9, scope: !1806, inlinedAt: !1819)
!1836 = !DILocation(line: 791, column: 3, scope: !1797)
!1837 = !DILocation(line: 0, scope: !1806)
!1838 = !DILocation(line: 804, column: 37, scope: !1806)
!1839 = !DILocation(line: 805, column: 21, scope: !1806)
!1840 = !DILocation(line: 807, column: 18, scope: !1806)
!1841 = !DILocation(line: 807, column: 27, scope: !1806)
!1842 = !DILocation(line: 807, column: 24, scope: !1806)
!1843 = !DILocation(line: 808, column: 72, scope: !1806)
!1844 = !DILocation(line: 809, column: 53, scope: !1806)
!1845 = !DILocation(line: 810, column: 49, scope: !1806)
!1846 = !DILocation(line: 811, column: 49, scope: !1806)
!1847 = !DILocation(line: 808, column: 20, scope: !1806)
!1848 = !DILocation(line: 811, column: 62, scope: !1806)
!1849 = !DILocation(line: 812, column: 15, scope: !1806)
!1850 = !DILocation(line: 813, column: 60, scope: !1806)
!1851 = !DILocation(line: 815, column: 32, scope: !1806)
!1852 = !DILocation(line: 815, column: 47, scope: !1806)
!1853 = !DILocation(line: 813, column: 3, scope: !1806)
!1854 = !DILocation(line: 816, column: 9, scope: !1806)
!1855 = !DILocation(line: 817, column: 7, scope: !1806)
!1856 = !DILocation(line: 818, column: 11, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1806, file: !234, line: 817, column: 7)
!1858 = !{!863, !863, i64 0}
!1859 = !DILocation(line: 818, column: 5, scope: !1857)
!1860 = !DILocation(line: 819, column: 3, scope: !1806)
!1861 = distinct !DISubprogram(name: "quotearg_free", scope: !234, file: !234, line: 837, type: !170, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1862)
!1862 = !{!1863, !1864}
!1863 = !DILocalVariable(name: "sv", scope: !1861, file: !234, line: 839, type: !307)
!1864 = !DILocalVariable(name: "i", scope: !1865, file: !234, line: 840, type: !30)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !234, line: 840, column: 3)
!1866 = !DILocation(line: 839, column: 24, scope: !1861)
!1867 = !DILocation(line: 0, scope: !1861)
!1868 = !DILocation(line: 0, scope: !1865)
!1869 = !DILocation(line: 840, column: 21, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !234, line: 840, column: 3)
!1871 = !DILocation(line: 840, column: 3, scope: !1865)
!1872 = !DILocation(line: 842, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1861, file: !234, line: 842, column: 7)
!1874 = !{!1875, !436, i64 8}
!1875 = !{!"slotvec", !863, i64 0, !436, i64 8}
!1876 = !DILocation(line: 842, column: 17, scope: !1873)
!1877 = !DILocation(line: 842, column: 7, scope: !1861)
!1878 = !DILocation(line: 841, column: 17, scope: !1870)
!1879 = !DILocation(line: 841, column: 5, scope: !1870)
!1880 = !DILocation(line: 840, column: 32, scope: !1870)
!1881 = distinct !{!1881, !1871, !1882, !486}
!1882 = !DILocation(line: 841, column: 20, scope: !1865)
!1883 = !DILocation(line: 844, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1873, file: !234, line: 843, column: 5)
!1885 = !DILocation(line: 845, column: 21, scope: !1884)
!1886 = !{!1875, !863, i64 0}
!1887 = !DILocation(line: 846, column: 20, scope: !1884)
!1888 = !DILocation(line: 847, column: 5, scope: !1884)
!1889 = !DILocation(line: 848, column: 10, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1861, file: !234, line: 848, column: 7)
!1891 = !DILocation(line: 848, column: 7, scope: !1861)
!1892 = !DILocation(line: 850, column: 13, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !234, line: 849, column: 5)
!1894 = !DILocation(line: 850, column: 7, scope: !1893)
!1895 = !DILocation(line: 851, column: 15, scope: !1893)
!1896 = !DILocation(line: 852, column: 5, scope: !1893)
!1897 = !DILocation(line: 853, column: 10, scope: !1861)
!1898 = !DILocation(line: 854, column: 1, scope: !1861)
!1899 = distinct !DISubprogram(name: "quotearg_n", scope: !234, file: !234, line: 919, type: !623, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1900)
!1900 = !{!1901, !1902}
!1901 = !DILocalVariable(name: "n", arg: 1, scope: !1899, file: !234, line: 919, type: !30)
!1902 = !DILocalVariable(name: "arg", arg: 2, scope: !1899, file: !234, line: 919, type: !6)
!1903 = !DILocation(line: 0, scope: !1899)
!1904 = !DILocation(line: 921, column: 10, scope: !1899)
!1905 = !DILocation(line: 921, column: 3, scope: !1899)
!1906 = distinct !DISubprogram(name: "quotearg_n_options", scope: !234, file: !234, line: 866, type: !1907, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!65, !30, !6, !32, !1133}
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1920, !1921, !1923, !1924, !1925}
!1910 = !DILocalVariable(name: "n", arg: 1, scope: !1906, file: !234, line: 866, type: !30)
!1911 = !DILocalVariable(name: "arg", arg: 2, scope: !1906, file: !234, line: 866, type: !6)
!1912 = !DILocalVariable(name: "argsize", arg: 3, scope: !1906, file: !234, line: 866, type: !32)
!1913 = !DILocalVariable(name: "options", arg: 4, scope: !1906, file: !234, line: 867, type: !1133)
!1914 = !DILocalVariable(name: "saved_errno", scope: !1906, file: !234, line: 869, type: !30)
!1915 = !DILocalVariable(name: "sv", scope: !1906, file: !234, line: 871, type: !307)
!1916 = !DILocalVariable(name: "nslots_max", scope: !1906, file: !234, line: 873, type: !30)
!1917 = !DILocalVariable(name: "preallocated", scope: !1918, file: !234, line: 879, type: !44)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !234, line: 878, column: 5)
!1919 = distinct !DILexicalBlock(scope: !1906, file: !234, line: 877, column: 7)
!1920 = !DILocalVariable(name: "new_nslots", scope: !1918, file: !234, line: 880, type: !379)
!1921 = !DILocalVariable(name: "size", scope: !1922, file: !234, line: 891, type: !32)
!1922 = distinct !DILexicalBlock(scope: !1906, file: !234, line: 890, column: 3)
!1923 = !DILocalVariable(name: "val", scope: !1922, file: !234, line: 892, type: !65)
!1924 = !DILocalVariable(name: "flags", scope: !1922, file: !234, line: 894, type: !30)
!1925 = !DILocalVariable(name: "qsize", scope: !1922, file: !234, line: 895, type: !32)
!1926 = !DILocation(line: 0, scope: !1906)
!1927 = !DILocation(line: 869, column: 21, scope: !1906)
!1928 = !DILocation(line: 871, column: 24, scope: !1906)
!1929 = !DILocation(line: 874, column: 17, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1906, file: !234, line: 874, column: 7)
!1931 = !DILocation(line: 875, column: 5, scope: !1930)
!1932 = !DILocation(line: 877, column: 7, scope: !1919)
!1933 = !DILocation(line: 877, column: 14, scope: !1919)
!1934 = !DILocation(line: 877, column: 7, scope: !1906)
!1935 = !DILocation(line: 879, column: 31, scope: !1918)
!1936 = !DILocation(line: 0, scope: !1918)
!1937 = !DILocation(line: 880, column: 7, scope: !1918)
!1938 = !DILocation(line: 880, column: 26, scope: !1918)
!1939 = !DILocation(line: 880, column: 13, scope: !1918)
!1940 = !DILocation(line: 882, column: 31, scope: !1918)
!1941 = !DILocation(line: 883, column: 33, scope: !1918)
!1942 = !DILocation(line: 883, column: 42, scope: !1918)
!1943 = !DILocation(line: 883, column: 31, scope: !1918)
!1944 = !DILocation(line: 882, column: 22, scope: !1918)
!1945 = !DILocation(line: 882, column: 15, scope: !1918)
!1946 = !DILocation(line: 884, column: 11, scope: !1918)
!1947 = !DILocation(line: 885, column: 15, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1918, file: !234, line: 884, column: 11)
!1949 = !{i64 0, i64 8, !1858, i64 8, i64 8, !435}
!1950 = !DILocation(line: 885, column: 9, scope: !1948)
!1951 = !DILocation(line: 886, column: 20, scope: !1918)
!1952 = !DILocation(line: 886, column: 18, scope: !1918)
!1953 = !DILocation(line: 886, column: 15, scope: !1918)
!1954 = !DILocation(line: 886, column: 32, scope: !1918)
!1955 = !DILocation(line: 886, column: 43, scope: !1918)
!1956 = !DILocation(line: 886, column: 53, scope: !1918)
!1957 = !DILocation(line: 0, scope: !1344, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 886, column: 7, scope: !1918)
!1959 = !DILocation(line: 59, column: 10, scope: !1344, inlinedAt: !1958)
!1960 = !DILocation(line: 887, column: 16, scope: !1918)
!1961 = !DILocation(line: 887, column: 14, scope: !1918)
!1962 = !DILocation(line: 888, column: 5, scope: !1919)
!1963 = !DILocation(line: 888, column: 5, scope: !1918)
!1964 = !DILocation(line: 891, column: 19, scope: !1922)
!1965 = !DILocation(line: 891, column: 25, scope: !1922)
!1966 = !DILocation(line: 0, scope: !1922)
!1967 = !DILocation(line: 892, column: 23, scope: !1922)
!1968 = !DILocation(line: 894, column: 26, scope: !1922)
!1969 = !DILocation(line: 894, column: 32, scope: !1922)
!1970 = !DILocation(line: 896, column: 55, scope: !1922)
!1971 = !DILocation(line: 897, column: 46, scope: !1922)
!1972 = !DILocation(line: 898, column: 55, scope: !1922)
!1973 = !DILocation(line: 899, column: 55, scope: !1922)
!1974 = !DILocation(line: 895, column: 20, scope: !1922)
!1975 = !DILocation(line: 901, column: 14, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1922, file: !234, line: 901, column: 9)
!1977 = !DILocation(line: 901, column: 9, scope: !1922)
!1978 = !DILocation(line: 903, column: 35, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !234, line: 902, column: 7)
!1980 = !DILocation(line: 903, column: 20, scope: !1979)
!1981 = !DILocation(line: 904, column: 17, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !234, line: 904, column: 13)
!1983 = !DILocation(line: 904, column: 13, scope: !1979)
!1984 = !DILocation(line: 905, column: 11, scope: !1982)
!1985 = !DILocation(line: 906, column: 27, scope: !1979)
!1986 = !DILocation(line: 906, column: 19, scope: !1979)
!1987 = !DILocation(line: 907, column: 69, scope: !1979)
!1988 = !DILocation(line: 909, column: 44, scope: !1979)
!1989 = !DILocation(line: 910, column: 44, scope: !1979)
!1990 = !DILocation(line: 907, column: 9, scope: !1979)
!1991 = !DILocation(line: 911, column: 7, scope: !1979)
!1992 = !DILocation(line: 913, column: 11, scope: !1922)
!1993 = !DILocation(line: 914, column: 5, scope: !1922)
!1994 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !234, file: !234, line: 925, type: !1995, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!65, !30, !6, !32}
!1997 = !{!1998, !1999, !2000}
!1998 = !DILocalVariable(name: "n", arg: 1, scope: !1994, file: !234, line: 925, type: !30)
!1999 = !DILocalVariable(name: "arg", arg: 2, scope: !1994, file: !234, line: 925, type: !6)
!2000 = !DILocalVariable(name: "argsize", arg: 3, scope: !1994, file: !234, line: 925, type: !32)
!2001 = !DILocation(line: 0, scope: !1994)
!2002 = !DILocation(line: 927, column: 10, scope: !1994)
!2003 = !DILocation(line: 927, column: 3, scope: !1994)
!2004 = distinct !DISubprogram(name: "quotearg", scope: !234, file: !234, line: 931, type: !632, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2005)
!2005 = !{!2006}
!2006 = !DILocalVariable(name: "arg", arg: 1, scope: !2004, file: !234, line: 931, type: !6)
!2007 = !DILocation(line: 0, scope: !2004)
!2008 = !DILocation(line: 0, scope: !1899, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 933, column: 10, scope: !2004)
!2010 = !DILocation(line: 921, column: 10, scope: !1899, inlinedAt: !2009)
!2011 = !DILocation(line: 933, column: 3, scope: !2004)
!2012 = distinct !DISubprogram(name: "quotearg_mem", scope: !234, file: !234, line: 937, type: !2013, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!65, !6, !32}
!2015 = !{!2016, !2017}
!2016 = !DILocalVariable(name: "arg", arg: 1, scope: !2012, file: !234, line: 937, type: !6)
!2017 = !DILocalVariable(name: "argsize", arg: 2, scope: !2012, file: !234, line: 937, type: !32)
!2018 = !DILocation(line: 0, scope: !2012)
!2019 = !DILocation(line: 0, scope: !1994, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 939, column: 10, scope: !2012)
!2021 = !DILocation(line: 927, column: 10, scope: !1994, inlinedAt: !2020)
!2022 = !DILocation(line: 939, column: 3, scope: !2012)
!2023 = distinct !DISubprogram(name: "quotearg_n_style", scope: !234, file: !234, line: 943, type: !2024, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!65, !30, !236, !6}
!2026 = !{!2027, !2028, !2029, !2030}
!2027 = !DILocalVariable(name: "n", arg: 1, scope: !2023, file: !234, line: 943, type: !30)
!2028 = !DILocalVariable(name: "s", arg: 2, scope: !2023, file: !234, line: 943, type: !236)
!2029 = !DILocalVariable(name: "arg", arg: 3, scope: !2023, file: !234, line: 943, type: !6)
!2030 = !DILocalVariable(name: "o", scope: !2023, file: !234, line: 945, type: !1134)
!2031 = !DILocation(line: 0, scope: !2023)
!2032 = !DILocation(line: 945, column: 3, scope: !2023)
!2033 = !DILocation(line: 945, column: 32, scope: !2023)
!2034 = !{!2035}
!2035 = distinct !{!2035, !2036, !"quoting_options_from_style: argument 0"}
!2036 = distinct !{!2036, !"quoting_options_from_style"}
!2037 = !DILocation(line: 945, column: 36, scope: !2023)
!2038 = !DILocalVariable(name: "style", arg: 1, scope: !2039, file: !234, line: 183, type: !236)
!2039 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !234, file: !234, line: 183, type: !2040, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!265, !236}
!2042 = !{!2038, !2043}
!2043 = !DILocalVariable(name: "o", scope: !2039, file: !234, line: 185, type: !265)
!2044 = !DILocation(line: 0, scope: !2039, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 945, column: 36, scope: !2023)
!2046 = !DILocation(line: 185, column: 26, scope: !2039, inlinedAt: !2045)
!2047 = !DILocation(line: 186, column: 13, scope: !2048, inlinedAt: !2045)
!2048 = distinct !DILexicalBlock(scope: !2039, file: !234, line: 186, column: 7)
!2049 = !DILocation(line: 186, column: 7, scope: !2039, inlinedAt: !2045)
!2050 = !DILocation(line: 187, column: 5, scope: !2048, inlinedAt: !2045)
!2051 = !DILocation(line: 188, column: 5, scope: !2039, inlinedAt: !2045)
!2052 = !DILocation(line: 188, column: 11, scope: !2039, inlinedAt: !2045)
!2053 = !DILocation(line: 946, column: 10, scope: !2023)
!2054 = !DILocation(line: 947, column: 1, scope: !2023)
!2055 = !DILocation(line: 946, column: 3, scope: !2023)
!2056 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !234, file: !234, line: 950, type: !2057, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!65, !30, !236, !6, !32}
!2059 = !{!2060, !2061, !2062, !2063, !2064}
!2060 = !DILocalVariable(name: "n", arg: 1, scope: !2056, file: !234, line: 950, type: !30)
!2061 = !DILocalVariable(name: "s", arg: 2, scope: !2056, file: !234, line: 950, type: !236)
!2062 = !DILocalVariable(name: "arg", arg: 3, scope: !2056, file: !234, line: 951, type: !6)
!2063 = !DILocalVariable(name: "argsize", arg: 4, scope: !2056, file: !234, line: 951, type: !32)
!2064 = !DILocalVariable(name: "o", scope: !2056, file: !234, line: 953, type: !1134)
!2065 = !DILocation(line: 0, scope: !2056)
!2066 = !DILocation(line: 953, column: 3, scope: !2056)
!2067 = !DILocation(line: 953, column: 32, scope: !2056)
!2068 = !{!2069}
!2069 = distinct !{!2069, !2070, !"quoting_options_from_style: argument 0"}
!2070 = distinct !{!2070, !"quoting_options_from_style"}
!2071 = !DILocation(line: 953, column: 36, scope: !2056)
!2072 = !DILocation(line: 0, scope: !2039, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 953, column: 36, scope: !2056)
!2074 = !DILocation(line: 185, column: 26, scope: !2039, inlinedAt: !2073)
!2075 = !DILocation(line: 186, column: 13, scope: !2048, inlinedAt: !2073)
!2076 = !DILocation(line: 186, column: 7, scope: !2039, inlinedAt: !2073)
!2077 = !DILocation(line: 187, column: 5, scope: !2048, inlinedAt: !2073)
!2078 = !DILocation(line: 188, column: 5, scope: !2039, inlinedAt: !2073)
!2079 = !DILocation(line: 188, column: 11, scope: !2039, inlinedAt: !2073)
!2080 = !DILocation(line: 954, column: 10, scope: !2056)
!2081 = !DILocation(line: 955, column: 1, scope: !2056)
!2082 = !DILocation(line: 954, column: 3, scope: !2056)
!2083 = distinct !DISubprogram(name: "quotearg_style", scope: !234, file: !234, line: 958, type: !2084, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!65, !236, !6}
!2086 = !{!2087, !2088}
!2087 = !DILocalVariable(name: "s", arg: 1, scope: !2083, file: !234, line: 958, type: !236)
!2088 = !DILocalVariable(name: "arg", arg: 2, scope: !2083, file: !234, line: 958, type: !6)
!2089 = !DILocation(line: 0, scope: !2083)
!2090 = !DILocation(line: 0, scope: !2023, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 960, column: 10, scope: !2083)
!2092 = !DILocation(line: 945, column: 3, scope: !2023, inlinedAt: !2091)
!2093 = !DILocation(line: 945, column: 32, scope: !2023, inlinedAt: !2091)
!2094 = !{!2095}
!2095 = distinct !{!2095, !2096, !"quoting_options_from_style: argument 0"}
!2096 = distinct !{!2096, !"quoting_options_from_style"}
!2097 = !DILocation(line: 945, column: 36, scope: !2023, inlinedAt: !2091)
!2098 = !DILocation(line: 0, scope: !2039, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 945, column: 36, scope: !2023, inlinedAt: !2091)
!2100 = !DILocation(line: 185, column: 26, scope: !2039, inlinedAt: !2099)
!2101 = !DILocation(line: 186, column: 13, scope: !2048, inlinedAt: !2099)
!2102 = !DILocation(line: 186, column: 7, scope: !2039, inlinedAt: !2099)
!2103 = !DILocation(line: 187, column: 5, scope: !2048, inlinedAt: !2099)
!2104 = !DILocation(line: 188, column: 5, scope: !2039, inlinedAt: !2099)
!2105 = !DILocation(line: 188, column: 11, scope: !2039, inlinedAt: !2099)
!2106 = !DILocation(line: 946, column: 10, scope: !2023, inlinedAt: !2091)
!2107 = !DILocation(line: 947, column: 1, scope: !2023, inlinedAt: !2091)
!2108 = !DILocation(line: 960, column: 3, scope: !2083)
!2109 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !234, file: !234, line: 964, type: !2110, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2112)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!65, !236, !6, !32}
!2112 = !{!2113, !2114, !2115}
!2113 = !DILocalVariable(name: "s", arg: 1, scope: !2109, file: !234, line: 964, type: !236)
!2114 = !DILocalVariable(name: "arg", arg: 2, scope: !2109, file: !234, line: 964, type: !6)
!2115 = !DILocalVariable(name: "argsize", arg: 3, scope: !2109, file: !234, line: 964, type: !32)
!2116 = !DILocation(line: 0, scope: !2109)
!2117 = !DILocation(line: 0, scope: !2056, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 966, column: 10, scope: !2109)
!2119 = !DILocation(line: 953, column: 3, scope: !2056, inlinedAt: !2118)
!2120 = !DILocation(line: 953, column: 32, scope: !2056, inlinedAt: !2118)
!2121 = !{!2122}
!2122 = distinct !{!2122, !2123, !"quoting_options_from_style: argument 0"}
!2123 = distinct !{!2123, !"quoting_options_from_style"}
!2124 = !DILocation(line: 953, column: 36, scope: !2056, inlinedAt: !2118)
!2125 = !DILocation(line: 0, scope: !2039, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 953, column: 36, scope: !2056, inlinedAt: !2118)
!2127 = !DILocation(line: 185, column: 26, scope: !2039, inlinedAt: !2126)
!2128 = !DILocation(line: 186, column: 13, scope: !2048, inlinedAt: !2126)
!2129 = !DILocation(line: 186, column: 7, scope: !2039, inlinedAt: !2126)
!2130 = !DILocation(line: 187, column: 5, scope: !2048, inlinedAt: !2126)
!2131 = !DILocation(line: 188, column: 5, scope: !2039, inlinedAt: !2126)
!2132 = !DILocation(line: 188, column: 11, scope: !2039, inlinedAt: !2126)
!2133 = !DILocation(line: 954, column: 10, scope: !2056, inlinedAt: !2118)
!2134 = !DILocation(line: 955, column: 1, scope: !2056, inlinedAt: !2118)
!2135 = !DILocation(line: 966, column: 3, scope: !2109)
!2136 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !234, file: !234, line: 970, type: !2137, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!65, !6, !32, !8}
!2139 = !{!2140, !2141, !2142, !2143}
!2140 = !DILocalVariable(name: "arg", arg: 1, scope: !2136, file: !234, line: 970, type: !6)
!2141 = !DILocalVariable(name: "argsize", arg: 2, scope: !2136, file: !234, line: 970, type: !32)
!2142 = !DILocalVariable(name: "ch", arg: 3, scope: !2136, file: !234, line: 970, type: !8)
!2143 = !DILocalVariable(name: "options", scope: !2136, file: !234, line: 972, type: !265)
!2144 = !DILocation(line: 0, scope: !2136)
!2145 = !DILocation(line: 972, column: 3, scope: !2136)
!2146 = !DILocation(line: 972, column: 26, scope: !2136)
!2147 = !DILocation(line: 973, column: 13, scope: !2136)
!2148 = !{i64 0, i64 4, !524, i64 4, i64 4, !515, i64 8, i64 32, !524, i64 40, i64 8, !435, i64 48, i64 8, !435}
!2149 = !DILocation(line: 0, scope: !1154, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 974, column: 3, scope: !2136)
!2151 = !DILocation(line: 147, column: 62, scope: !1154, inlinedAt: !2150)
!2152 = !DILocation(line: 147, column: 57, scope: !1154, inlinedAt: !2150)
!2153 = !DILocation(line: 148, column: 15, scope: !1154, inlinedAt: !2150)
!2154 = !DILocation(line: 149, column: 21, scope: !1154, inlinedAt: !2150)
!2155 = !DILocation(line: 149, column: 24, scope: !1154, inlinedAt: !2150)
!2156 = !DILocation(line: 149, column: 34, scope: !1154, inlinedAt: !2150)
!2157 = !DILocation(line: 150, column: 19, scope: !1154, inlinedAt: !2150)
!2158 = !DILocation(line: 150, column: 24, scope: !1154, inlinedAt: !2150)
!2159 = !DILocation(line: 150, column: 6, scope: !1154, inlinedAt: !2150)
!2160 = !DILocation(line: 975, column: 10, scope: !2136)
!2161 = !DILocation(line: 976, column: 1, scope: !2136)
!2162 = !DILocation(line: 975, column: 3, scope: !2136)
!2163 = distinct !DISubprogram(name: "quotearg_char", scope: !234, file: !234, line: 979, type: !2164, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!65, !6, !8}
!2166 = !{!2167, !2168}
!2167 = !DILocalVariable(name: "arg", arg: 1, scope: !2163, file: !234, line: 979, type: !6)
!2168 = !DILocalVariable(name: "ch", arg: 2, scope: !2163, file: !234, line: 979, type: !8)
!2169 = !DILocation(line: 0, scope: !2163)
!2170 = !DILocation(line: 0, scope: !2136, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 981, column: 10, scope: !2163)
!2172 = !DILocation(line: 972, column: 3, scope: !2136, inlinedAt: !2171)
!2173 = !DILocation(line: 972, column: 26, scope: !2136, inlinedAt: !2171)
!2174 = !DILocation(line: 973, column: 13, scope: !2136, inlinedAt: !2171)
!2175 = !DILocation(line: 0, scope: !1154, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 974, column: 3, scope: !2136, inlinedAt: !2171)
!2177 = !DILocation(line: 147, column: 62, scope: !1154, inlinedAt: !2176)
!2178 = !DILocation(line: 147, column: 57, scope: !1154, inlinedAt: !2176)
!2179 = !DILocation(line: 148, column: 15, scope: !1154, inlinedAt: !2176)
!2180 = !DILocation(line: 149, column: 21, scope: !1154, inlinedAt: !2176)
!2181 = !DILocation(line: 149, column: 24, scope: !1154, inlinedAt: !2176)
!2182 = !DILocation(line: 149, column: 34, scope: !1154, inlinedAt: !2176)
!2183 = !DILocation(line: 150, column: 19, scope: !1154, inlinedAt: !2176)
!2184 = !DILocation(line: 150, column: 24, scope: !1154, inlinedAt: !2176)
!2185 = !DILocation(line: 150, column: 6, scope: !1154, inlinedAt: !2176)
!2186 = !DILocation(line: 975, column: 10, scope: !2136, inlinedAt: !2171)
!2187 = !DILocation(line: 976, column: 1, scope: !2136, inlinedAt: !2171)
!2188 = !DILocation(line: 981, column: 3, scope: !2163)
!2189 = distinct !DISubprogram(name: "quotearg_colon", scope: !234, file: !234, line: 985, type: !632, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2190)
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "arg", arg: 1, scope: !2189, file: !234, line: 985, type: !6)
!2192 = !DILocation(line: 0, scope: !2189)
!2193 = !DILocation(line: 0, scope: !2163, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 987, column: 10, scope: !2189)
!2195 = !DILocation(line: 0, scope: !2136, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 981, column: 10, scope: !2163, inlinedAt: !2194)
!2197 = !DILocation(line: 972, column: 3, scope: !2136, inlinedAt: !2196)
!2198 = !DILocation(line: 972, column: 26, scope: !2136, inlinedAt: !2196)
!2199 = !DILocation(line: 973, column: 13, scope: !2136, inlinedAt: !2196)
!2200 = !DILocation(line: 0, scope: !1154, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 974, column: 3, scope: !2136, inlinedAt: !2196)
!2202 = !DILocation(line: 147, column: 57, scope: !1154, inlinedAt: !2201)
!2203 = !DILocation(line: 149, column: 21, scope: !1154, inlinedAt: !2201)
!2204 = !DILocation(line: 150, column: 6, scope: !1154, inlinedAt: !2201)
!2205 = !DILocation(line: 975, column: 10, scope: !2136, inlinedAt: !2196)
!2206 = !DILocation(line: 976, column: 1, scope: !2136, inlinedAt: !2196)
!2207 = !DILocation(line: 987, column: 3, scope: !2189)
!2208 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !234, file: !234, line: 991, type: !2013, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2209)
!2209 = !{!2210, !2211}
!2210 = !DILocalVariable(name: "arg", arg: 1, scope: !2208, file: !234, line: 991, type: !6)
!2211 = !DILocalVariable(name: "argsize", arg: 2, scope: !2208, file: !234, line: 991, type: !32)
!2212 = !DILocation(line: 0, scope: !2208)
!2213 = !DILocation(line: 0, scope: !2136, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 993, column: 10, scope: !2208)
!2215 = !DILocation(line: 972, column: 3, scope: !2136, inlinedAt: !2214)
!2216 = !DILocation(line: 972, column: 26, scope: !2136, inlinedAt: !2214)
!2217 = !DILocation(line: 973, column: 13, scope: !2136, inlinedAt: !2214)
!2218 = !DILocation(line: 0, scope: !1154, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 974, column: 3, scope: !2136, inlinedAt: !2214)
!2220 = !DILocation(line: 147, column: 57, scope: !1154, inlinedAt: !2219)
!2221 = !DILocation(line: 149, column: 21, scope: !1154, inlinedAt: !2219)
!2222 = !DILocation(line: 150, column: 6, scope: !1154, inlinedAt: !2219)
!2223 = !DILocation(line: 975, column: 10, scope: !2136, inlinedAt: !2214)
!2224 = !DILocation(line: 976, column: 1, scope: !2136, inlinedAt: !2214)
!2225 = !DILocation(line: 993, column: 3, scope: !2208)
!2226 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !234, file: !234, line: 997, type: !2024, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2227)
!2227 = !{!2228, !2229, !2230, !2231}
!2228 = !DILocalVariable(name: "n", arg: 1, scope: !2226, file: !234, line: 997, type: !30)
!2229 = !DILocalVariable(name: "s", arg: 2, scope: !2226, file: !234, line: 997, type: !236)
!2230 = !DILocalVariable(name: "arg", arg: 3, scope: !2226, file: !234, line: 997, type: !6)
!2231 = !DILocalVariable(name: "options", scope: !2226, file: !234, line: 999, type: !265)
!2232 = !DILocation(line: 0, scope: !2226)
!2233 = !DILocation(line: 999, column: 3, scope: !2226)
!2234 = !DILocation(line: 999, column: 26, scope: !2226)
!2235 = !DILocation(line: 0, scope: !2039, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 1000, column: 13, scope: !2226)
!2237 = !DILocation(line: 186, column: 13, scope: !2048, inlinedAt: !2236)
!2238 = !DILocation(line: 186, column: 7, scope: !2039, inlinedAt: !2236)
!2239 = !DILocation(line: 187, column: 5, scope: !2048, inlinedAt: !2236)
!2240 = !{!2241}
!2241 = distinct !{!2241, !2242, !"quoting_options_from_style: argument 0"}
!2242 = distinct !{!2242, !"quoting_options_from_style"}
!2243 = !DILocation(line: 1000, column: 13, scope: !2226)
!2244 = !DILocation(line: 0, scope: !1154, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 1001, column: 3, scope: !2226)
!2246 = !DILocation(line: 147, column: 57, scope: !1154, inlinedAt: !2245)
!2247 = !DILocation(line: 149, column: 21, scope: !1154, inlinedAt: !2245)
!2248 = !DILocation(line: 150, column: 6, scope: !1154, inlinedAt: !2245)
!2249 = !DILocation(line: 1002, column: 10, scope: !2226)
!2250 = !DILocation(line: 1003, column: 1, scope: !2226)
!2251 = !DILocation(line: 1002, column: 3, scope: !2226)
!2252 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !234, file: !234, line: 1006, type: !2253, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!65, !30, !6, !6, !6}
!2255 = !{!2256, !2257, !2258, !2259}
!2256 = !DILocalVariable(name: "n", arg: 1, scope: !2252, file: !234, line: 1006, type: !30)
!2257 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2252, file: !234, line: 1006, type: !6)
!2258 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2252, file: !234, line: 1007, type: !6)
!2259 = !DILocalVariable(name: "arg", arg: 4, scope: !2252, file: !234, line: 1007, type: !6)
!2260 = !DILocation(line: 0, scope: !2252)
!2261 = !DILocalVariable(name: "n", arg: 1, scope: !2262, file: !234, line: 1014, type: !30)
!2262 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !234, file: !234, line: 1014, type: !2263, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!65, !30, !6, !6, !6, !32}
!2265 = !{!2261, !2266, !2267, !2268, !2269, !2270}
!2266 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2262, file: !234, line: 1014, type: !6)
!2267 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2262, file: !234, line: 1015, type: !6)
!2268 = !DILocalVariable(name: "arg", arg: 4, scope: !2262, file: !234, line: 1016, type: !6)
!2269 = !DILocalVariable(name: "argsize", arg: 5, scope: !2262, file: !234, line: 1016, type: !32)
!2270 = !DILocalVariable(name: "o", scope: !2262, file: !234, line: 1018, type: !265)
!2271 = !DILocation(line: 0, scope: !2262, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 1009, column: 10, scope: !2252)
!2273 = !DILocation(line: 1018, column: 3, scope: !2262, inlinedAt: !2272)
!2274 = !DILocation(line: 1018, column: 26, scope: !2262, inlinedAt: !2272)
!2275 = !DILocation(line: 1018, column: 30, scope: !2262, inlinedAt: !2272)
!2276 = !DILocation(line: 0, scope: !1194, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 1019, column: 3, scope: !2262, inlinedAt: !2272)
!2278 = !DILocation(line: 174, column: 6, scope: !1194, inlinedAt: !2277)
!2279 = !DILocation(line: 174, column: 12, scope: !1194, inlinedAt: !2277)
!2280 = !DILocation(line: 175, column: 8, scope: !1208, inlinedAt: !2277)
!2281 = !DILocation(line: 175, column: 19, scope: !1208, inlinedAt: !2277)
!2282 = !DILocation(line: 176, column: 5, scope: !1208, inlinedAt: !2277)
!2283 = !DILocation(line: 177, column: 6, scope: !1194, inlinedAt: !2277)
!2284 = !DILocation(line: 177, column: 17, scope: !1194, inlinedAt: !2277)
!2285 = !DILocation(line: 178, column: 6, scope: !1194, inlinedAt: !2277)
!2286 = !DILocation(line: 178, column: 18, scope: !1194, inlinedAt: !2277)
!2287 = !DILocation(line: 1020, column: 10, scope: !2262, inlinedAt: !2272)
!2288 = !DILocation(line: 1021, column: 1, scope: !2262, inlinedAt: !2272)
!2289 = !DILocation(line: 1009, column: 3, scope: !2252)
!2290 = !DILocation(line: 0, scope: !2262)
!2291 = !DILocation(line: 1018, column: 3, scope: !2262)
!2292 = !DILocation(line: 1018, column: 26, scope: !2262)
!2293 = !DILocation(line: 1018, column: 30, scope: !2262)
!2294 = !DILocation(line: 0, scope: !1194, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 1019, column: 3, scope: !2262)
!2296 = !DILocation(line: 174, column: 6, scope: !1194, inlinedAt: !2295)
!2297 = !DILocation(line: 174, column: 12, scope: !1194, inlinedAt: !2295)
!2298 = !DILocation(line: 175, column: 8, scope: !1208, inlinedAt: !2295)
!2299 = !DILocation(line: 175, column: 19, scope: !1208, inlinedAt: !2295)
!2300 = !DILocation(line: 176, column: 5, scope: !1208, inlinedAt: !2295)
!2301 = !DILocation(line: 177, column: 6, scope: !1194, inlinedAt: !2295)
!2302 = !DILocation(line: 177, column: 17, scope: !1194, inlinedAt: !2295)
!2303 = !DILocation(line: 178, column: 6, scope: !1194, inlinedAt: !2295)
!2304 = !DILocation(line: 178, column: 18, scope: !1194, inlinedAt: !2295)
!2305 = !DILocation(line: 1020, column: 10, scope: !2262)
!2306 = !DILocation(line: 1021, column: 1, scope: !2262)
!2307 = !DILocation(line: 1020, column: 3, scope: !2262)
!2308 = distinct !DISubprogram(name: "quotearg_custom", scope: !234, file: !234, line: 1024, type: !2309, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!65, !6, !6, !6}
!2311 = !{!2312, !2313, !2314}
!2312 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2308, file: !234, line: 1024, type: !6)
!2313 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2308, file: !234, line: 1024, type: !6)
!2314 = !DILocalVariable(name: "arg", arg: 3, scope: !2308, file: !234, line: 1025, type: !6)
!2315 = !DILocation(line: 0, scope: !2308)
!2316 = !DILocation(line: 0, scope: !2252, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 1027, column: 10, scope: !2308)
!2318 = !DILocation(line: 0, scope: !2262, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 1009, column: 10, scope: !2252, inlinedAt: !2317)
!2320 = !DILocation(line: 1018, column: 3, scope: !2262, inlinedAt: !2319)
!2321 = !DILocation(line: 1018, column: 26, scope: !2262, inlinedAt: !2319)
!2322 = !DILocation(line: 1018, column: 30, scope: !2262, inlinedAt: !2319)
!2323 = !DILocation(line: 0, scope: !1194, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 1019, column: 3, scope: !2262, inlinedAt: !2319)
!2325 = !DILocation(line: 174, column: 6, scope: !1194, inlinedAt: !2324)
!2326 = !DILocation(line: 174, column: 12, scope: !1194, inlinedAt: !2324)
!2327 = !DILocation(line: 175, column: 8, scope: !1208, inlinedAt: !2324)
!2328 = !DILocation(line: 175, column: 19, scope: !1208, inlinedAt: !2324)
!2329 = !DILocation(line: 176, column: 5, scope: !1208, inlinedAt: !2324)
!2330 = !DILocation(line: 177, column: 6, scope: !1194, inlinedAt: !2324)
!2331 = !DILocation(line: 177, column: 17, scope: !1194, inlinedAt: !2324)
!2332 = !DILocation(line: 178, column: 6, scope: !1194, inlinedAt: !2324)
!2333 = !DILocation(line: 178, column: 18, scope: !1194, inlinedAt: !2324)
!2334 = !DILocation(line: 1020, column: 10, scope: !2262, inlinedAt: !2319)
!2335 = !DILocation(line: 1021, column: 1, scope: !2262, inlinedAt: !2319)
!2336 = !DILocation(line: 1027, column: 3, scope: !2308)
!2337 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !234, file: !234, line: 1031, type: !2338, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!65, !6, !6, !6, !32}
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2337, file: !234, line: 1031, type: !6)
!2342 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2337, file: !234, line: 1031, type: !6)
!2343 = !DILocalVariable(name: "arg", arg: 3, scope: !2337, file: !234, line: 1032, type: !6)
!2344 = !DILocalVariable(name: "argsize", arg: 4, scope: !2337, file: !234, line: 1032, type: !32)
!2345 = !DILocation(line: 0, scope: !2337)
!2346 = !DILocation(line: 0, scope: !2262, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 1034, column: 10, scope: !2337)
!2348 = !DILocation(line: 1018, column: 3, scope: !2262, inlinedAt: !2347)
!2349 = !DILocation(line: 1018, column: 26, scope: !2262, inlinedAt: !2347)
!2350 = !DILocation(line: 1018, column: 30, scope: !2262, inlinedAt: !2347)
!2351 = !DILocation(line: 0, scope: !1194, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 1019, column: 3, scope: !2262, inlinedAt: !2347)
!2353 = !DILocation(line: 174, column: 6, scope: !1194, inlinedAt: !2352)
!2354 = !DILocation(line: 174, column: 12, scope: !1194, inlinedAt: !2352)
!2355 = !DILocation(line: 175, column: 8, scope: !1208, inlinedAt: !2352)
!2356 = !DILocation(line: 175, column: 19, scope: !1208, inlinedAt: !2352)
!2357 = !DILocation(line: 176, column: 5, scope: !1208, inlinedAt: !2352)
!2358 = !DILocation(line: 177, column: 6, scope: !1194, inlinedAt: !2352)
!2359 = !DILocation(line: 177, column: 17, scope: !1194, inlinedAt: !2352)
!2360 = !DILocation(line: 178, column: 6, scope: !1194, inlinedAt: !2352)
!2361 = !DILocation(line: 178, column: 18, scope: !1194, inlinedAt: !2352)
!2362 = !DILocation(line: 1020, column: 10, scope: !2262, inlinedAt: !2347)
!2363 = !DILocation(line: 1021, column: 1, scope: !2262, inlinedAt: !2347)
!2364 = !DILocation(line: 1034, column: 3, scope: !2337)
!2365 = distinct !DISubprogram(name: "quote_n_mem", scope: !234, file: !234, line: 1049, type: !2366, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!6, !30, !6, !32}
!2368 = !{!2369, !2370, !2371}
!2369 = !DILocalVariable(name: "n", arg: 1, scope: !2365, file: !234, line: 1049, type: !30)
!2370 = !DILocalVariable(name: "arg", arg: 2, scope: !2365, file: !234, line: 1049, type: !6)
!2371 = !DILocalVariable(name: "argsize", arg: 3, scope: !2365, file: !234, line: 1049, type: !32)
!2372 = !DILocation(line: 0, scope: !2365)
!2373 = !DILocation(line: 1051, column: 10, scope: !2365)
!2374 = !DILocation(line: 1051, column: 3, scope: !2365)
!2375 = distinct !DISubprogram(name: "quote_mem", scope: !234, file: !234, line: 1055, type: !2376, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!6, !6, !32}
!2378 = !{!2379, !2380}
!2379 = !DILocalVariable(name: "arg", arg: 1, scope: !2375, file: !234, line: 1055, type: !6)
!2380 = !DILocalVariable(name: "argsize", arg: 2, scope: !2375, file: !234, line: 1055, type: !32)
!2381 = !DILocation(line: 0, scope: !2375)
!2382 = !DILocation(line: 0, scope: !2365, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 1057, column: 10, scope: !2375)
!2384 = !DILocation(line: 1051, column: 10, scope: !2365, inlinedAt: !2383)
!2385 = !DILocation(line: 1057, column: 3, scope: !2375)
!2386 = distinct !DISubprogram(name: "quote_n", scope: !234, file: !234, line: 1061, type: !2387, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!6, !30, !6}
!2389 = !{!2390, !2391}
!2390 = !DILocalVariable(name: "n", arg: 1, scope: !2386, file: !234, line: 1061, type: !30)
!2391 = !DILocalVariable(name: "arg", arg: 2, scope: !2386, file: !234, line: 1061, type: !6)
!2392 = !DILocation(line: 0, scope: !2386)
!2393 = !DILocation(line: 0, scope: !2365, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 1063, column: 10, scope: !2386)
!2395 = !DILocation(line: 1051, column: 10, scope: !2365, inlinedAt: !2394)
!2396 = !DILocation(line: 1063, column: 3, scope: !2386)
!2397 = distinct !DISubprogram(name: "quote", scope: !234, file: !234, line: 1067, type: !2398, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!6, !6}
!2400 = !{!2401}
!2401 = !DILocalVariable(name: "arg", arg: 1, scope: !2397, file: !234, line: 1067, type: !6)
!2402 = !DILocation(line: 0, scope: !2397)
!2403 = !DILocation(line: 0, scope: !2386, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 1069, column: 10, scope: !2397)
!2405 = !DILocation(line: 0, scope: !2365, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 1063, column: 10, scope: !2386, inlinedAt: !2404)
!2407 = !DILocation(line: 1051, column: 10, scope: !2365, inlinedAt: !2406)
!2408 = !DILocation(line: 1069, column: 3, scope: !2397)
!2409 = distinct !DISubprogram(name: "version_etc_arn", scope: !353, file: !353, line: 61, type: !2410, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2447)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2412, !6, !6, !6, !2446, !32}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !2414)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !2415)
!2415 = !{!2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2414, file: !61, line: 51, baseType: !30, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2414, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2414, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2414, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2414, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2414, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2414, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2414, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2414, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2414, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2414, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2414, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2414, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2414, file: !61, line: 70, baseType: !2430, size: 64, offset: 832)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2414, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2414, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2414, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2414, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2414, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2414, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2414, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2414, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2414, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2414, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2414, file: !61, line: 93, baseType: !2430, size: 64, offset: 1344)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2414, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2414, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2414, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2414, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2447 = !{!2448, !2449, !2450, !2451, !2452, !2453}
!2448 = !DILocalVariable(name: "stream", arg: 1, scope: !2409, file: !353, line: 61, type: !2412)
!2449 = !DILocalVariable(name: "command_name", arg: 2, scope: !2409, file: !353, line: 62, type: !6)
!2450 = !DILocalVariable(name: "package", arg: 3, scope: !2409, file: !353, line: 62, type: !6)
!2451 = !DILocalVariable(name: "version", arg: 4, scope: !2409, file: !353, line: 63, type: !6)
!2452 = !DILocalVariable(name: "authors", arg: 5, scope: !2409, file: !353, line: 64, type: !2446)
!2453 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2409, file: !353, line: 64, type: !32)
!2454 = !DILocation(line: 0, scope: !2409)
!2455 = !DILocation(line: 66, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2409, file: !353, line: 66, column: 7)
!2457 = !DILocation(line: 66, column: 7, scope: !2409)
!2458 = !DILocation(line: 67, column: 5, scope: !2456)
!2459 = !DILocation(line: 69, column: 5, scope: !2456)
!2460 = !DILocation(line: 83, column: 3, scope: !2409)
!2461 = !DILocation(line: 85, column: 3, scope: !2409)
!2462 = !DILocation(line: 88, column: 3, scope: !2409)
!2463 = !DILocation(line: 95, column: 3, scope: !2409)
!2464 = !DILocation(line: 97, column: 3, scope: !2409)
!2465 = !DILocation(line: 105, column: 7, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2409, file: !353, line: 98, column: 5)
!2467 = !DILocation(line: 106, column: 7, scope: !2466)
!2468 = !DILocation(line: 109, column: 7, scope: !2466)
!2469 = !DILocation(line: 110, column: 7, scope: !2466)
!2470 = !DILocation(line: 113, column: 7, scope: !2466)
!2471 = !DILocation(line: 115, column: 7, scope: !2466)
!2472 = !DILocation(line: 120, column: 7, scope: !2466)
!2473 = !DILocation(line: 122, column: 7, scope: !2466)
!2474 = !DILocation(line: 127, column: 7, scope: !2466)
!2475 = !DILocation(line: 129, column: 7, scope: !2466)
!2476 = !DILocation(line: 134, column: 7, scope: !2466)
!2477 = !DILocation(line: 137, column: 7, scope: !2466)
!2478 = !DILocation(line: 142, column: 7, scope: !2466)
!2479 = !DILocation(line: 145, column: 7, scope: !2466)
!2480 = !DILocation(line: 150, column: 7, scope: !2466)
!2481 = !DILocation(line: 154, column: 7, scope: !2466)
!2482 = !DILocation(line: 159, column: 7, scope: !2466)
!2483 = !DILocation(line: 163, column: 7, scope: !2466)
!2484 = !DILocation(line: 170, column: 7, scope: !2466)
!2485 = !DILocation(line: 174, column: 7, scope: !2466)
!2486 = !DILocation(line: 176, column: 1, scope: !2409)
!2487 = distinct !DISubprogram(name: "version_etc_ar", scope: !353, file: !353, line: 183, type: !2488, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !2412, !6, !6, !6, !2446}
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2496}
!2491 = !DILocalVariable(name: "stream", arg: 1, scope: !2487, file: !353, line: 183, type: !2412)
!2492 = !DILocalVariable(name: "command_name", arg: 2, scope: !2487, file: !353, line: 184, type: !6)
!2493 = !DILocalVariable(name: "package", arg: 3, scope: !2487, file: !353, line: 184, type: !6)
!2494 = !DILocalVariable(name: "version", arg: 4, scope: !2487, file: !353, line: 185, type: !6)
!2495 = !DILocalVariable(name: "authors", arg: 5, scope: !2487, file: !353, line: 185, type: !2446)
!2496 = !DILocalVariable(name: "n_authors", scope: !2487, file: !353, line: 187, type: !32)
!2497 = !DILocation(line: 0, scope: !2487)
!2498 = !DILocation(line: 189, column: 8, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2487, file: !353, line: 189, column: 3)
!2500 = !DILocation(line: 0, scope: !2499)
!2501 = !DILocation(line: 189, column: 23, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2499, file: !353, line: 189, column: 3)
!2503 = !DILocation(line: 189, column: 3, scope: !2499)
!2504 = !DILocation(line: 189, column: 52, scope: !2502)
!2505 = distinct !{!2505, !2503, !2506, !486}
!2506 = !DILocation(line: 190, column: 5, scope: !2499)
!2507 = !DILocation(line: 191, column: 3, scope: !2487)
!2508 = !DILocation(line: 192, column: 1, scope: !2487)
!2509 = distinct !DISubprogram(name: "version_etc_va", scope: !353, file: !353, line: 199, type: !2510, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2523)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{null, !2412, !6, !6, !6, !2512}
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 52, baseType: !2513)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !145, line: 32, baseType: !2514)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2515, baseType: !2516)
!2515 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !149, size: 256, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2522}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2516, file: !2515, line: 192, baseType: !29, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2516, file: !2515, line: 192, baseType: !29, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2516, file: !2515, line: 192, baseType: !29, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2516, file: !2515, line: 192, baseType: !30, size: 32, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2516, file: !2515, line: 192, baseType: !30, size: 32, offset: 224)
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529, !2530}
!2524 = !DILocalVariable(name: "stream", arg: 1, scope: !2509, file: !353, line: 199, type: !2412)
!2525 = !DILocalVariable(name: "command_name", arg: 2, scope: !2509, file: !353, line: 200, type: !6)
!2526 = !DILocalVariable(name: "package", arg: 3, scope: !2509, file: !353, line: 200, type: !6)
!2527 = !DILocalVariable(name: "version", arg: 4, scope: !2509, file: !353, line: 201, type: !6)
!2528 = !DILocalVariable(name: "authors", arg: 5, scope: !2509, file: !353, line: 201, type: !2512)
!2529 = !DILocalVariable(name: "n_authors", scope: !2509, file: !353, line: 203, type: !32)
!2530 = !DILocalVariable(name: "authtab", scope: !2509, file: !353, line: 204, type: !2531)
!2531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !261)
!2532 = !DILocation(line: 0, scope: !2509)
!2533 = !DILocation(line: 201, column: 46, scope: !2509)
!2534 = !DILocation(line: 204, column: 3, scope: !2509)
!2535 = !DILocation(line: 204, column: 15, scope: !2509)
!2536 = !DILocation(line: 208, column: 35, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !353, line: 206, column: 3)
!2538 = distinct !DILexicalBlock(scope: !2509, file: !353, line: 206, column: 3)
!2539 = !DILocation(line: 208, column: 14, scope: !2537)
!2540 = !DILocation(line: 208, column: 33, scope: !2537)
!2541 = !DILocation(line: 208, column: 67, scope: !2537)
!2542 = !DILocation(line: 206, column: 3, scope: !2538)
!2543 = !DILocation(line: 0, scope: !2538)
!2544 = !DILocation(line: 211, column: 3, scope: !2509)
!2545 = !DILocation(line: 213, column: 1, scope: !2509)
!2546 = distinct !DISubprogram(name: "version_etc", scope: !353, file: !353, line: 230, type: !2547, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2549)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{null, !2412, !6, !6, !6, null}
!2549 = !{!2550, !2551, !2552, !2553, !2554}
!2550 = !DILocalVariable(name: "stream", arg: 1, scope: !2546, file: !353, line: 230, type: !2412)
!2551 = !DILocalVariable(name: "command_name", arg: 2, scope: !2546, file: !353, line: 231, type: !6)
!2552 = !DILocalVariable(name: "package", arg: 3, scope: !2546, file: !353, line: 231, type: !6)
!2553 = !DILocalVariable(name: "version", arg: 4, scope: !2546, file: !353, line: 232, type: !6)
!2554 = !DILocalVariable(name: "authors", scope: !2546, file: !353, line: 234, type: !2512)
!2555 = !DILocation(line: 0, scope: !2546)
!2556 = !DILocation(line: 234, column: 3, scope: !2546)
!2557 = !DILocation(line: 234, column: 11, scope: !2546)
!2558 = !DILocation(line: 235, column: 3, scope: !2546)
!2559 = !DILocation(line: 236, column: 3, scope: !2546)
!2560 = !DILocation(line: 237, column: 3, scope: !2546)
!2561 = !DILocation(line: 238, column: 1, scope: !2546)
!2562 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !353, file: !353, line: 241, type: !170, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !512)
!2563 = !DILocation(line: 243, column: 3, scope: !2562)
!2564 = !DILocation(line: 248, column: 3, scope: !2562)
!2565 = !DILocation(line: 254, column: 3, scope: !2562)
!2566 = !DILocation(line: 259, column: 3, scope: !2562)
!2567 = !DILocation(line: 261, column: 1, scope: !2562)
!2568 = distinct !DISubprogram(name: "xnrealloc", scope: !2569, file: !2569, line: 147, type: !2570, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2572)
!2569 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!29, !29, !32, !32}
!2572 = !{!2573, !2574, !2575}
!2573 = !DILocalVariable(name: "p", arg: 1, scope: !2568, file: !2569, line: 147, type: !29)
!2574 = !DILocalVariable(name: "n", arg: 2, scope: !2568, file: !2569, line: 147, type: !32)
!2575 = !DILocalVariable(name: "s", arg: 3, scope: !2568, file: !2569, line: 147, type: !32)
!2576 = !DILocation(line: 0, scope: !2568)
!2577 = !DILocalVariable(name: "p", arg: 1, scope: !2578, file: !360, line: 83, type: !29)
!2578 = distinct !DISubprogram(name: "xreallocarray", scope: !360, file: !360, line: 83, type: !2570, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2579)
!2579 = !{!2577, !2580, !2581}
!2580 = !DILocalVariable(name: "n", arg: 2, scope: !2578, file: !360, line: 83, type: !32)
!2581 = !DILocalVariable(name: "s", arg: 3, scope: !2578, file: !360, line: 83, type: !32)
!2582 = !DILocation(line: 0, scope: !2578, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 149, column: 10, scope: !2568)
!2584 = !DILocation(line: 85, column: 25, scope: !2578, inlinedAt: !2583)
!2585 = !DILocalVariable(name: "p", arg: 1, scope: !2586, file: !360, line: 37, type: !29)
!2586 = distinct !DISubprogram(name: "check_nonnull", scope: !360, file: !360, line: 37, type: !2587, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!29, !29}
!2589 = !{!2585}
!2590 = !DILocation(line: 0, scope: !2586, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 85, column: 10, scope: !2578, inlinedAt: !2583)
!2592 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2591)
!2593 = distinct !DILexicalBlock(scope: !2586, file: !360, line: 39, column: 7)
!2594 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2591)
!2595 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2591)
!2596 = !DILocation(line: 149, column: 3, scope: !2568)
!2597 = !DILocation(line: 0, scope: !2578)
!2598 = !DILocation(line: 85, column: 25, scope: !2578)
!2599 = !DILocation(line: 0, scope: !2586, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 85, column: 10, scope: !2578)
!2601 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2600)
!2602 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2600)
!2603 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2600)
!2604 = !DILocation(line: 85, column: 3, scope: !2578)
!2605 = distinct !DISubprogram(name: "xmalloc", scope: !360, file: !360, line: 47, type: !2606, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!29, !32}
!2608 = !{!2609}
!2609 = !DILocalVariable(name: "s", arg: 1, scope: !2605, file: !360, line: 47, type: !32)
!2610 = !DILocation(line: 0, scope: !2605)
!2611 = !DILocation(line: 49, column: 25, scope: !2605)
!2612 = !DILocation(line: 0, scope: !2586, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 49, column: 10, scope: !2605)
!2614 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2613)
!2615 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2613)
!2616 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2613)
!2617 = !DILocation(line: 49, column: 3, scope: !2605)
!2618 = distinct !DISubprogram(name: "ximalloc", scope: !360, file: !360, line: 53, type: !2619, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!29, !379}
!2621 = !{!2622}
!2622 = !DILocalVariable(name: "s", arg: 1, scope: !2618, file: !360, line: 53, type: !379)
!2623 = !DILocation(line: 0, scope: !2618)
!2624 = !DILocalVariable(name: "s", arg: 1, scope: !2625, file: !2626, line: 55, type: !379)
!2625 = distinct !DISubprogram(name: "imalloc", scope: !2626, file: !2626, line: 55, type: !2619, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2627)
!2626 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2627 = !{!2624}
!2628 = !DILocation(line: 0, scope: !2625, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 55, column: 25, scope: !2618)
!2630 = !DILocation(line: 57, column: 26, scope: !2625, inlinedAt: !2629)
!2631 = !DILocation(line: 0, scope: !2586, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 55, column: 10, scope: !2618)
!2633 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2632)
!2634 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2632)
!2635 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2632)
!2636 = !DILocation(line: 55, column: 3, scope: !2618)
!2637 = distinct !DISubprogram(name: "xcharalloc", scope: !360, file: !360, line: 59, type: !2638, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!65, !32}
!2640 = !{!2641}
!2641 = !DILocalVariable(name: "n", arg: 1, scope: !2637, file: !360, line: 59, type: !32)
!2642 = !DILocation(line: 0, scope: !2637)
!2643 = !DILocation(line: 0, scope: !2605, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 61, column: 10, scope: !2637)
!2645 = !DILocation(line: 49, column: 25, scope: !2605, inlinedAt: !2644)
!2646 = !DILocation(line: 0, scope: !2586, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 49, column: 10, scope: !2605, inlinedAt: !2644)
!2648 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2647)
!2649 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2647)
!2650 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2647)
!2651 = !DILocation(line: 61, column: 3, scope: !2637)
!2652 = distinct !DISubprogram(name: "xrealloc", scope: !360, file: !360, line: 68, type: !2653, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!29, !29, !32}
!2655 = !{!2656, !2657}
!2656 = !DILocalVariable(name: "p", arg: 1, scope: !2652, file: !360, line: 68, type: !29)
!2657 = !DILocalVariable(name: "s", arg: 2, scope: !2652, file: !360, line: 68, type: !32)
!2658 = !DILocation(line: 0, scope: !2652)
!2659 = !DILocalVariable(name: "ptr", arg: 1, scope: !2660, file: !2661, line: 2057, type: !29)
!2660 = distinct !DISubprogram(name: "rpl_realloc", scope: !2661, file: !2661, line: 2057, type: !2653, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2662)
!2661 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2662 = !{!2659, !2663}
!2663 = !DILocalVariable(name: "size", arg: 2, scope: !2660, file: !2661, line: 2057, type: !32)
!2664 = !DILocation(line: 0, scope: !2660, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 70, column: 25, scope: !2652)
!2666 = !DILocation(line: 2059, column: 24, scope: !2660, inlinedAt: !2665)
!2667 = !DILocation(line: 2059, column: 10, scope: !2660, inlinedAt: !2665)
!2668 = !DILocation(line: 0, scope: !2586, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 70, column: 10, scope: !2652)
!2670 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2669)
!2671 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2669)
!2672 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2669)
!2673 = !DILocation(line: 70, column: 3, scope: !2652)
!2674 = distinct !DISubprogram(name: "xirealloc", scope: !360, file: !360, line: 74, type: !2675, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!29, !29, !379}
!2677 = !{!2678, !2679}
!2678 = !DILocalVariable(name: "p", arg: 1, scope: !2674, file: !360, line: 74, type: !29)
!2679 = !DILocalVariable(name: "s", arg: 2, scope: !2674, file: !360, line: 74, type: !379)
!2680 = !DILocation(line: 0, scope: !2674)
!2681 = !DILocalVariable(name: "p", arg: 1, scope: !2682, file: !2626, line: 66, type: !29)
!2682 = distinct !DISubprogram(name: "irealloc", scope: !2626, file: !2626, line: 66, type: !2675, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2683)
!2683 = !{!2681, !2684}
!2684 = !DILocalVariable(name: "s", arg: 2, scope: !2682, file: !2626, line: 66, type: !379)
!2685 = !DILocation(line: 0, scope: !2682, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 76, column: 25, scope: !2674)
!2687 = !DILocation(line: 0, scope: !2660, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 68, column: 26, scope: !2682, inlinedAt: !2686)
!2689 = !DILocation(line: 2059, column: 24, scope: !2660, inlinedAt: !2688)
!2690 = !DILocation(line: 2059, column: 10, scope: !2660, inlinedAt: !2688)
!2691 = !DILocation(line: 0, scope: !2586, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 76, column: 10, scope: !2674)
!2693 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2692)
!2694 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2692)
!2695 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2692)
!2696 = !DILocation(line: 76, column: 3, scope: !2674)
!2697 = distinct !DISubprogram(name: "xireallocarray", scope: !360, file: !360, line: 89, type: !2698, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!29, !29, !379, !379}
!2700 = !{!2701, !2702, !2703}
!2701 = !DILocalVariable(name: "p", arg: 1, scope: !2697, file: !360, line: 89, type: !29)
!2702 = !DILocalVariable(name: "n", arg: 2, scope: !2697, file: !360, line: 89, type: !379)
!2703 = !DILocalVariable(name: "s", arg: 3, scope: !2697, file: !360, line: 89, type: !379)
!2704 = !DILocation(line: 0, scope: !2697)
!2705 = !DILocalVariable(name: "p", arg: 1, scope: !2706, file: !2626, line: 98, type: !29)
!2706 = distinct !DISubprogram(name: "ireallocarray", scope: !2626, file: !2626, line: 98, type: !2698, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2707)
!2707 = !{!2705, !2708, !2709}
!2708 = !DILocalVariable(name: "n", arg: 2, scope: !2706, file: !2626, line: 98, type: !379)
!2709 = !DILocalVariable(name: "s", arg: 3, scope: !2706, file: !2626, line: 98, type: !379)
!2710 = !DILocation(line: 0, scope: !2706, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 91, column: 25, scope: !2697)
!2712 = !DILocation(line: 101, column: 13, scope: !2706, inlinedAt: !2711)
!2713 = !DILocation(line: 0, scope: !2586, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 91, column: 10, scope: !2697)
!2715 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2714)
!2716 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2714)
!2717 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2714)
!2718 = !DILocation(line: 91, column: 3, scope: !2697)
!2719 = distinct !DISubprogram(name: "xnmalloc", scope: !360, file: !360, line: 98, type: !2720, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!29, !32, !32}
!2722 = !{!2723, !2724}
!2723 = !DILocalVariable(name: "n", arg: 1, scope: !2719, file: !360, line: 98, type: !32)
!2724 = !DILocalVariable(name: "s", arg: 2, scope: !2719, file: !360, line: 98, type: !32)
!2725 = !DILocation(line: 0, scope: !2719)
!2726 = !DILocation(line: 0, scope: !2578, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 100, column: 10, scope: !2719)
!2728 = !DILocation(line: 85, column: 25, scope: !2578, inlinedAt: !2727)
!2729 = !DILocation(line: 0, scope: !2586, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 85, column: 10, scope: !2578, inlinedAt: !2727)
!2731 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2730)
!2732 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2730)
!2733 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2730)
!2734 = !DILocation(line: 100, column: 3, scope: !2719)
!2735 = distinct !DISubprogram(name: "xinmalloc", scope: !360, file: !360, line: 104, type: !2736, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!29, !379, !379}
!2738 = !{!2739, !2740}
!2739 = !DILocalVariable(name: "n", arg: 1, scope: !2735, file: !360, line: 104, type: !379)
!2740 = !DILocalVariable(name: "s", arg: 2, scope: !2735, file: !360, line: 104, type: !379)
!2741 = !DILocation(line: 0, scope: !2735)
!2742 = !DILocation(line: 0, scope: !2697, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 106, column: 10, scope: !2735)
!2744 = !DILocation(line: 0, scope: !2706, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 91, column: 25, scope: !2697, inlinedAt: !2743)
!2746 = !DILocation(line: 101, column: 13, scope: !2706, inlinedAt: !2745)
!2747 = !DILocation(line: 0, scope: !2586, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 91, column: 10, scope: !2697, inlinedAt: !2743)
!2749 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2748)
!2750 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2748)
!2751 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2748)
!2752 = !DILocation(line: 106, column: 3, scope: !2735)
!2753 = distinct !DISubprogram(name: "x2realloc", scope: !360, file: !360, line: 116, type: !2754, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!29, !29, !366}
!2756 = !{!2757, !2758}
!2757 = !DILocalVariable(name: "p", arg: 1, scope: !2753, file: !360, line: 116, type: !29)
!2758 = !DILocalVariable(name: "ps", arg: 2, scope: !2753, file: !360, line: 116, type: !366)
!2759 = !DILocation(line: 0, scope: !2753)
!2760 = !DILocation(line: 0, scope: !363, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 118, column: 10, scope: !2753)
!2762 = !DILocation(line: 178, column: 14, scope: !363, inlinedAt: !2761)
!2763 = !DILocation(line: 180, column: 9, scope: !2764, inlinedAt: !2761)
!2764 = distinct !DILexicalBlock(scope: !363, file: !360, line: 180, column: 7)
!2765 = !DILocation(line: 180, column: 7, scope: !363, inlinedAt: !2761)
!2766 = !DILocation(line: 182, column: 13, scope: !2767, inlinedAt: !2761)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !360, line: 182, column: 11)
!2768 = distinct !DILexicalBlock(scope: !2764, file: !360, line: 181, column: 5)
!2769 = !DILocation(line: 182, column: 11, scope: !2768, inlinedAt: !2761)
!2770 = !DILocation(line: 197, column: 11, scope: !2771, inlinedAt: !2761)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !360, line: 197, column: 11)
!2772 = distinct !DILexicalBlock(scope: !2764, file: !360, line: 195, column: 5)
!2773 = !DILocation(line: 197, column: 11, scope: !2772, inlinedAt: !2761)
!2774 = !DILocation(line: 198, column: 9, scope: !2771, inlinedAt: !2761)
!2775 = !DILocation(line: 0, scope: !2578, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 201, column: 7, scope: !363, inlinedAt: !2761)
!2777 = !DILocation(line: 85, column: 25, scope: !2578, inlinedAt: !2776)
!2778 = !DILocation(line: 0, scope: !2586, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 85, column: 10, scope: !2578, inlinedAt: !2776)
!2780 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2779)
!2781 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2779)
!2782 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2779)
!2783 = !DILocation(line: 202, column: 7, scope: !363, inlinedAt: !2761)
!2784 = !DILocation(line: 118, column: 3, scope: !2753)
!2785 = !DILocation(line: 0, scope: !363)
!2786 = !DILocation(line: 178, column: 14, scope: !363)
!2787 = !DILocation(line: 180, column: 9, scope: !2764)
!2788 = !DILocation(line: 180, column: 7, scope: !363)
!2789 = !DILocation(line: 182, column: 13, scope: !2767)
!2790 = !DILocation(line: 182, column: 11, scope: !2768)
!2791 = !DILocation(line: 190, column: 30, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2767, file: !360, line: 183, column: 9)
!2793 = !DILocation(line: 191, column: 16, scope: !2792)
!2794 = !DILocation(line: 191, column: 13, scope: !2792)
!2795 = !DILocation(line: 192, column: 9, scope: !2792)
!2796 = !DILocation(line: 197, column: 11, scope: !2771)
!2797 = !DILocation(line: 197, column: 11, scope: !2772)
!2798 = !DILocation(line: 198, column: 9, scope: !2771)
!2799 = !DILocation(line: 0, scope: !2578, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 201, column: 7, scope: !363)
!2801 = !DILocation(line: 85, column: 25, scope: !2578, inlinedAt: !2800)
!2802 = !DILocation(line: 0, scope: !2586, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 85, column: 10, scope: !2578, inlinedAt: !2800)
!2804 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2803)
!2805 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2803)
!2806 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2803)
!2807 = !DILocation(line: 202, column: 7, scope: !363)
!2808 = !DILocation(line: 203, column: 3, scope: !363)
!2809 = !DILocation(line: 0, scope: !375)
!2810 = !DILocation(line: 230, column: 14, scope: !375)
!2811 = !DILocation(line: 238, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !375, file: !360, line: 238, column: 7)
!2813 = !DILocation(line: 238, column: 7, scope: !375)
!2814 = !DILocation(line: 240, column: 9, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !375, file: !360, line: 240, column: 7)
!2816 = !DILocation(line: 240, column: 18, scope: !2815)
!2817 = !DILocation(line: 253, column: 8, scope: !375)
!2818 = !DILocation(line: 258, column: 27, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !360, line: 257, column: 5)
!2820 = distinct !DILexicalBlock(scope: !375, file: !360, line: 256, column: 7)
!2821 = !DILocation(line: 259, column: 32, scope: !2819)
!2822 = !DILocation(line: 260, column: 5, scope: !2819)
!2823 = !DILocation(line: 262, column: 9, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !375, file: !360, line: 262, column: 7)
!2825 = !DILocation(line: 262, column: 7, scope: !375)
!2826 = !DILocation(line: 263, column: 9, scope: !2824)
!2827 = !DILocation(line: 263, column: 5, scope: !2824)
!2828 = !DILocation(line: 264, column: 9, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !375, file: !360, line: 264, column: 7)
!2830 = !DILocation(line: 264, column: 14, scope: !2829)
!2831 = !DILocation(line: 265, column: 7, scope: !2829)
!2832 = !DILocation(line: 265, column: 11, scope: !2829)
!2833 = !DILocation(line: 266, column: 11, scope: !2829)
!2834 = !DILocation(line: 266, column: 26, scope: !2829)
!2835 = !DILocation(line: 267, column: 14, scope: !2829)
!2836 = !DILocation(line: 264, column: 7, scope: !375)
!2837 = !DILocation(line: 268, column: 5, scope: !2829)
!2838 = !DILocation(line: 0, scope: !2652, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 269, column: 8, scope: !375)
!2840 = !DILocation(line: 0, scope: !2660, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 70, column: 25, scope: !2652, inlinedAt: !2839)
!2842 = !DILocation(line: 2059, column: 24, scope: !2660, inlinedAt: !2841)
!2843 = !DILocation(line: 2059, column: 10, scope: !2660, inlinedAt: !2841)
!2844 = !DILocation(line: 0, scope: !2586, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 70, column: 10, scope: !2652, inlinedAt: !2839)
!2846 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2845)
!2847 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2845)
!2848 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2845)
!2849 = !DILocation(line: 270, column: 7, scope: !375)
!2850 = !DILocation(line: 271, column: 3, scope: !375)
!2851 = distinct !DISubprogram(name: "xzalloc", scope: !360, file: !360, line: 279, type: !2606, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2852)
!2852 = !{!2853}
!2853 = !DILocalVariable(name: "s", arg: 1, scope: !2851, file: !360, line: 279, type: !32)
!2854 = !DILocation(line: 0, scope: !2851)
!2855 = !DILocalVariable(name: "n", arg: 1, scope: !2856, file: !360, line: 294, type: !32)
!2856 = distinct !DISubprogram(name: "xcalloc", scope: !360, file: !360, line: 294, type: !2720, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2857)
!2857 = !{!2855, !2858}
!2858 = !DILocalVariable(name: "s", arg: 2, scope: !2856, file: !360, line: 294, type: !32)
!2859 = !DILocation(line: 0, scope: !2856, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 281, column: 10, scope: !2851)
!2861 = !DILocation(line: 296, column: 25, scope: !2856, inlinedAt: !2860)
!2862 = !DILocation(line: 0, scope: !2586, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 296, column: 10, scope: !2856, inlinedAt: !2860)
!2864 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2863)
!2865 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2863)
!2866 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2863)
!2867 = !DILocation(line: 281, column: 3, scope: !2851)
!2868 = !DILocation(line: 0, scope: !2856)
!2869 = !DILocation(line: 296, column: 25, scope: !2856)
!2870 = !DILocation(line: 0, scope: !2586, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 296, column: 10, scope: !2856)
!2872 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2871)
!2873 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2871)
!2874 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2871)
!2875 = !DILocation(line: 296, column: 3, scope: !2856)
!2876 = distinct !DISubprogram(name: "xizalloc", scope: !360, file: !360, line: 285, type: !2619, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2877)
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "s", arg: 1, scope: !2876, file: !360, line: 285, type: !379)
!2879 = !DILocation(line: 0, scope: !2876)
!2880 = !DILocalVariable(name: "n", arg: 1, scope: !2881, file: !360, line: 300, type: !379)
!2881 = distinct !DISubprogram(name: "xicalloc", scope: !360, file: !360, line: 300, type: !2736, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2882)
!2882 = !{!2880, !2883}
!2883 = !DILocalVariable(name: "s", arg: 2, scope: !2881, file: !360, line: 300, type: !379)
!2884 = !DILocation(line: 0, scope: !2881, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 287, column: 10, scope: !2876)
!2886 = !DILocalVariable(name: "n", arg: 1, scope: !2887, file: !2626, line: 77, type: !379)
!2887 = distinct !DISubprogram(name: "icalloc", scope: !2626, file: !2626, line: 77, type: !2736, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2888)
!2888 = !{!2886, !2889}
!2889 = !DILocalVariable(name: "s", arg: 2, scope: !2887, file: !2626, line: 77, type: !379)
!2890 = !DILocation(line: 0, scope: !2887, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 302, column: 25, scope: !2881, inlinedAt: !2885)
!2892 = !DILocation(line: 91, column: 10, scope: !2887, inlinedAt: !2891)
!2893 = !DILocation(line: 0, scope: !2586, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 302, column: 10, scope: !2881, inlinedAt: !2885)
!2895 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2894)
!2896 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2894)
!2897 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2894)
!2898 = !DILocation(line: 287, column: 3, scope: !2876)
!2899 = !DILocation(line: 0, scope: !2881)
!2900 = !DILocation(line: 0, scope: !2887, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 302, column: 25, scope: !2881)
!2902 = !DILocation(line: 91, column: 10, scope: !2887, inlinedAt: !2901)
!2903 = !DILocation(line: 0, scope: !2586, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 302, column: 10, scope: !2881)
!2905 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2904)
!2906 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2904)
!2907 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2904)
!2908 = !DILocation(line: 302, column: 3, scope: !2881)
!2909 = distinct !DISubprogram(name: "xmemdup", scope: !360, file: !360, line: 310, type: !2910, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!29, !638, !32}
!2912 = !{!2913, !2914}
!2913 = !DILocalVariable(name: "p", arg: 1, scope: !2909, file: !360, line: 310, type: !638)
!2914 = !DILocalVariable(name: "s", arg: 2, scope: !2909, file: !360, line: 310, type: !32)
!2915 = !DILocation(line: 0, scope: !2909)
!2916 = !DILocation(line: 0, scope: !2605, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 312, column: 18, scope: !2909)
!2918 = !DILocation(line: 49, column: 25, scope: !2605, inlinedAt: !2917)
!2919 = !DILocation(line: 0, scope: !2586, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 49, column: 10, scope: !2605, inlinedAt: !2917)
!2921 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2920)
!2922 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2920)
!2923 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2920)
!2924 = !DILocalVariable(name: "__dest", arg: 1, scope: !2925, file: !1096, line: 26, type: !2928)
!2925 = distinct !DISubprogram(name: "memcpy", scope: !1096, file: !1096, line: 26, type: !2926, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2929)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!29, !2928, !637, !32}
!2928 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!2929 = !{!2924, !2930, !2931}
!2930 = !DILocalVariable(name: "__src", arg: 2, scope: !2925, file: !1096, line: 26, type: !637)
!2931 = !DILocalVariable(name: "__len", arg: 3, scope: !2925, file: !1096, line: 26, type: !32)
!2932 = !DILocation(line: 0, scope: !2925, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 312, column: 10, scope: !2909)
!2934 = !DILocation(line: 29, column: 10, scope: !2925, inlinedAt: !2933)
!2935 = !DILocation(line: 312, column: 3, scope: !2909)
!2936 = distinct !DISubprogram(name: "ximemdup", scope: !360, file: !360, line: 316, type: !2937, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!29, !638, !379}
!2939 = !{!2940, !2941}
!2940 = !DILocalVariable(name: "p", arg: 1, scope: !2936, file: !360, line: 316, type: !638)
!2941 = !DILocalVariable(name: "s", arg: 2, scope: !2936, file: !360, line: 316, type: !379)
!2942 = !DILocation(line: 0, scope: !2936)
!2943 = !DILocation(line: 0, scope: !2618, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 318, column: 18, scope: !2936)
!2945 = !DILocation(line: 0, scope: !2625, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 55, column: 25, scope: !2618, inlinedAt: !2944)
!2947 = !DILocation(line: 57, column: 26, scope: !2625, inlinedAt: !2946)
!2948 = !DILocation(line: 0, scope: !2586, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 55, column: 10, scope: !2618, inlinedAt: !2944)
!2950 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2949)
!2951 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2949)
!2952 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2949)
!2953 = !DILocation(line: 0, scope: !2925, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 318, column: 10, scope: !2936)
!2955 = !DILocation(line: 29, column: 10, scope: !2925, inlinedAt: !2954)
!2956 = !DILocation(line: 318, column: 3, scope: !2936)
!2957 = distinct !DISubprogram(name: "ximemdup0", scope: !360, file: !360, line: 325, type: !2958, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!65, !638, !379}
!2960 = !{!2961, !2962, !2963}
!2961 = !DILocalVariable(name: "p", arg: 1, scope: !2957, file: !360, line: 325, type: !638)
!2962 = !DILocalVariable(name: "s", arg: 2, scope: !2957, file: !360, line: 325, type: !379)
!2963 = !DILocalVariable(name: "result", scope: !2957, file: !360, line: 327, type: !65)
!2964 = !DILocation(line: 0, scope: !2957)
!2965 = !DILocation(line: 327, column: 30, scope: !2957)
!2966 = !DILocation(line: 0, scope: !2618, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 327, column: 18, scope: !2957)
!2968 = !DILocation(line: 0, scope: !2625, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 55, column: 25, scope: !2618, inlinedAt: !2967)
!2970 = !DILocation(line: 57, column: 26, scope: !2625, inlinedAt: !2969)
!2971 = !DILocation(line: 0, scope: !2586, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 55, column: 10, scope: !2618, inlinedAt: !2967)
!2973 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2972)
!2974 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2972)
!2975 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2972)
!2976 = !DILocation(line: 328, column: 3, scope: !2957)
!2977 = !DILocation(line: 328, column: 13, scope: !2957)
!2978 = !DILocation(line: 0, scope: !2925, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 329, column: 10, scope: !2957)
!2980 = !DILocation(line: 29, column: 10, scope: !2925, inlinedAt: !2979)
!2981 = !DILocation(line: 329, column: 3, scope: !2957)
!2982 = distinct !DISubprogram(name: "xstrdup", scope: !360, file: !360, line: 335, type: !632, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2983)
!2983 = !{!2984}
!2984 = !DILocalVariable(name: "string", arg: 1, scope: !2982, file: !360, line: 335, type: !6)
!2985 = !DILocation(line: 0, scope: !2982)
!2986 = !DILocation(line: 337, column: 27, scope: !2982)
!2987 = !DILocation(line: 337, column: 43, scope: !2982)
!2988 = !DILocation(line: 0, scope: !2909, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 337, column: 10, scope: !2982)
!2990 = !DILocation(line: 0, scope: !2605, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 312, column: 18, scope: !2909, inlinedAt: !2989)
!2992 = !DILocation(line: 49, column: 25, scope: !2605, inlinedAt: !2991)
!2993 = !DILocation(line: 0, scope: !2586, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 49, column: 10, scope: !2605, inlinedAt: !2991)
!2995 = !DILocation(line: 39, column: 8, scope: !2593, inlinedAt: !2994)
!2996 = !DILocation(line: 39, column: 7, scope: !2586, inlinedAt: !2994)
!2997 = !DILocation(line: 40, column: 5, scope: !2593, inlinedAt: !2994)
!2998 = !DILocation(line: 0, scope: !2925, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 312, column: 10, scope: !2909, inlinedAt: !2989)
!3000 = !DILocation(line: 29, column: 10, scope: !2925, inlinedAt: !2999)
!3001 = !DILocation(line: 337, column: 3, scope: !2982)
!3002 = distinct !DISubprogram(name: "xalloc_die", scope: !394, file: !394, line: 32, type: !170, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3003)
!3003 = !{!3004}
!3004 = !DILocalVariable(name: "__errstatus", scope: !3005, file: !394, line: 34, type: !3006)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !394, line: 34, column: 3)
!3006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!3007 = !DILocation(line: 34, column: 3, scope: !3005)
!3008 = !DILocation(line: 0, scope: !3005)
!3009 = !DILocation(line: 40, column: 3, scope: !3002)
!3010 = distinct !DISubprogram(name: "close_stream", scope: !396, file: !396, line: 55, type: !3011, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3047)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!30, !3013}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3015)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3016)
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3015, file: !61, line: 51, baseType: !30, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3015, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3015, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3015, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3015, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3015, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3015, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3015, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3015, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3015, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3015, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3015, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3015, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3015, file: !61, line: 70, baseType: !3031, size: 64, offset: 832)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3015, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3015, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3015, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3015, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3015, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3015, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3015, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3015, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3015, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3015, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3015, file: !61, line: 93, baseType: !3031, size: 64, offset: 1344)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3015, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3015, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3015, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3015, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3047 = !{!3048, !3049, !3051, !3052}
!3048 = !DILocalVariable(name: "stream", arg: 1, scope: !3010, file: !396, line: 55, type: !3013)
!3049 = !DILocalVariable(name: "some_pending", scope: !3010, file: !396, line: 57, type: !3050)
!3050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3051 = !DILocalVariable(name: "prev_fail", scope: !3010, file: !396, line: 58, type: !3050)
!3052 = !DILocalVariable(name: "fclose_fail", scope: !3010, file: !396, line: 59, type: !3050)
!3053 = !DILocation(line: 0, scope: !3010)
!3054 = !DILocation(line: 57, column: 30, scope: !3010)
!3055 = !DILocalVariable(name: "__stream", arg: 1, scope: !3056, file: !853, line: 135, type: !3013)
!3056 = distinct !DISubprogram(name: "ferror_unlocked", scope: !853, file: !853, line: 135, type: !3011, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3057)
!3057 = !{!3055}
!3058 = !DILocation(line: 0, scope: !3056, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 58, column: 27, scope: !3010)
!3060 = !DILocation(line: 137, column: 10, scope: !3056, inlinedAt: !3059)
!3061 = !{!862, !516, i64 0}
!3062 = !DILocation(line: 58, column: 43, scope: !3010)
!3063 = !DILocation(line: 59, column: 29, scope: !3010)
!3064 = !DILocation(line: 59, column: 45, scope: !3010)
!3065 = !DILocation(line: 69, column: 17, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3010, file: !396, line: 69, column: 7)
!3067 = !DILocation(line: 57, column: 50, scope: !3010)
!3068 = !DILocation(line: 69, column: 33, scope: !3066)
!3069 = !DILocation(line: 69, column: 53, scope: !3066)
!3070 = !DILocation(line: 69, column: 59, scope: !3066)
!3071 = !DILocation(line: 69, column: 7, scope: !3010)
!3072 = !DILocation(line: 71, column: 11, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3066, file: !396, line: 70, column: 5)
!3074 = !DILocation(line: 72, column: 9, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3073, file: !396, line: 71, column: 11)
!3076 = !DILocation(line: 72, column: 15, scope: !3075)
!3077 = !DILocation(line: 77, column: 1, scope: !3010)
!3078 = distinct !DISubprogram(name: "rpl_fclose", scope: !398, file: !398, line: 58, type: !3079, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3115)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!30, !3081}
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3083)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3083, file: !61, line: 51, baseType: !30, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3083, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3083, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3083, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3083, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3083, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3083, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3083, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3083, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3083, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3083, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3083, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3083, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3083, file: !61, line: 70, baseType: !3099, size: 64, offset: 832)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3083, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3083, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3083, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3083, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3083, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3083, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3083, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3083, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3083, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3083, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3083, file: !61, line: 93, baseType: !3099, size: 64, offset: 1344)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3083, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3083, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3083, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3083, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3115 = !{!3116, !3117, !3118, !3119}
!3116 = !DILocalVariable(name: "fp", arg: 1, scope: !3078, file: !398, line: 58, type: !3081)
!3117 = !DILocalVariable(name: "saved_errno", scope: !3078, file: !398, line: 60, type: !30)
!3118 = !DILocalVariable(name: "fd", scope: !3078, file: !398, line: 63, type: !30)
!3119 = !DILocalVariable(name: "result", scope: !3078, file: !398, line: 74, type: !30)
!3120 = !DILocation(line: 0, scope: !3078)
!3121 = !DILocation(line: 63, column: 12, scope: !3078)
!3122 = !DILocation(line: 64, column: 10, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3078, file: !398, line: 64, column: 7)
!3124 = !DILocation(line: 64, column: 7, scope: !3078)
!3125 = !DILocation(line: 65, column: 12, scope: !3123)
!3126 = !DILocation(line: 65, column: 5, scope: !3123)
!3127 = !DILocation(line: 70, column: 9, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3078, file: !398, line: 70, column: 7)
!3129 = !DILocation(line: 70, column: 23, scope: !3128)
!3130 = !DILocation(line: 70, column: 33, scope: !3128)
!3131 = !DILocation(line: 70, column: 26, scope: !3128)
!3132 = !DILocation(line: 70, column: 59, scope: !3128)
!3133 = !DILocation(line: 71, column: 7, scope: !3128)
!3134 = !DILocation(line: 71, column: 10, scope: !3128)
!3135 = !DILocation(line: 70, column: 7, scope: !3078)
!3136 = !DILocation(line: 100, column: 12, scope: !3078)
!3137 = !DILocation(line: 105, column: 7, scope: !3078)
!3138 = !DILocation(line: 72, column: 19, scope: !3128)
!3139 = !DILocation(line: 105, column: 19, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3078, file: !398, line: 105, column: 7)
!3141 = !DILocation(line: 107, column: 13, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3140, file: !398, line: 106, column: 5)
!3143 = !DILocation(line: 109, column: 5, scope: !3142)
!3144 = !DILocation(line: 112, column: 1, scope: !3078)
!3145 = !DISubprogram(name: "fileno", scope: !143, file: !143, line: 809, type: !3079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3146 = !DISubprogram(name: "fclose", scope: !143, file: !143, line: 178, type: !3079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3147 = !DISubprogram(name: "lseek", scope: !676, file: !676, line: 339, type: !3148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!84, !30, !84, !30}
!3150 = distinct !DISubprogram(name: "rpl_fflush", scope: !400, file: !400, line: 130, type: !3151, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3187)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!30, !3153}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3155)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3155, file: !61, line: 51, baseType: !30, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3155, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3155, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3155, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3155, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3155, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3155, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3155, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3155, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3155, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3155, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3155, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3155, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3155, file: !61, line: 70, baseType: !3171, size: 64, offset: 832)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3155, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3155, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3155, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3155, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3155, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3155, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3155, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3155, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3155, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3155, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3155, file: !61, line: 93, baseType: !3171, size: 64, offset: 1344)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3155, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3155, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3155, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3155, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3187 = !{!3188}
!3188 = !DILocalVariable(name: "stream", arg: 1, scope: !3150, file: !400, line: 130, type: !3153)
!3189 = !DILocation(line: 0, scope: !3150)
!3190 = !DILocation(line: 151, column: 14, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3150, file: !400, line: 151, column: 7)
!3192 = !DILocation(line: 151, column: 22, scope: !3191)
!3193 = !DILocation(line: 151, column: 27, scope: !3191)
!3194 = !DILocation(line: 151, column: 7, scope: !3150)
!3195 = !DILocation(line: 152, column: 12, scope: !3191)
!3196 = !DILocation(line: 152, column: 5, scope: !3191)
!3197 = !DILocalVariable(name: "fp", arg: 1, scope: !3198, file: !400, line: 42, type: !3153)
!3198 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !400, file: !400, line: 42, type: !3199, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !3153}
!3201 = !{!3197}
!3202 = !DILocation(line: 0, scope: !3198, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 157, column: 3, scope: !3150)
!3204 = !DILocation(line: 44, column: 12, scope: !3205, inlinedAt: !3203)
!3205 = distinct !DILexicalBlock(scope: !3198, file: !400, line: 44, column: 7)
!3206 = !DILocation(line: 44, column: 19, scope: !3205, inlinedAt: !3203)
!3207 = !DILocation(line: 44, column: 7, scope: !3198, inlinedAt: !3203)
!3208 = !DILocation(line: 46, column: 5, scope: !3205, inlinedAt: !3203)
!3209 = !DILocation(line: 159, column: 10, scope: !3150)
!3210 = !DILocation(line: 159, column: 3, scope: !3150)
!3211 = !DILocation(line: 236, column: 1, scope: !3150)
!3212 = !DISubprogram(name: "fflush", scope: !143, file: !143, line: 230, type: !3151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3213 = distinct !DISubprogram(name: "rpl_fseeko", scope: !402, file: !402, line: 28, type: !3214, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3251)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!30, !3216, !3250, !30}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3218)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3219)
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3218, file: !61, line: 51, baseType: !30, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3218, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3218, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3218, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3218, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3218, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3218, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3218, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3218, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3218, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3218, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3218, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3218, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3218, file: !61, line: 70, baseType: !3234, size: 64, offset: 832)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3218, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3218, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3218, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3218, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3218, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3218, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3218, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3218, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3218, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3218, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3218, file: !61, line: 93, baseType: !3234, size: 64, offset: 1344)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3218, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3218, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3218, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3218, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !143, line: 63, baseType: !84)
!3251 = !{!3252, !3253, !3254, !3255}
!3252 = !DILocalVariable(name: "fp", arg: 1, scope: !3213, file: !402, line: 28, type: !3216)
!3253 = !DILocalVariable(name: "offset", arg: 2, scope: !3213, file: !402, line: 28, type: !3250)
!3254 = !DILocalVariable(name: "whence", arg: 3, scope: !3213, file: !402, line: 28, type: !30)
!3255 = !DILocalVariable(name: "pos", scope: !3256, file: !402, line: 123, type: !3250)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !402, line: 119, column: 5)
!3257 = distinct !DILexicalBlock(scope: !3213, file: !402, line: 55, column: 7)
!3258 = !DILocation(line: 0, scope: !3213)
!3259 = !DILocation(line: 55, column: 12, scope: !3257)
!3260 = !{!862, !436, i64 16}
!3261 = !DILocation(line: 55, column: 33, scope: !3257)
!3262 = !{!862, !436, i64 8}
!3263 = !DILocation(line: 55, column: 25, scope: !3257)
!3264 = !DILocation(line: 56, column: 7, scope: !3257)
!3265 = !DILocation(line: 56, column: 15, scope: !3257)
!3266 = !DILocation(line: 56, column: 37, scope: !3257)
!3267 = !{!862, !436, i64 32}
!3268 = !DILocation(line: 56, column: 29, scope: !3257)
!3269 = !DILocation(line: 57, column: 7, scope: !3257)
!3270 = !DILocation(line: 57, column: 15, scope: !3257)
!3271 = !{!862, !436, i64 72}
!3272 = !DILocation(line: 57, column: 29, scope: !3257)
!3273 = !DILocation(line: 55, column: 7, scope: !3213)
!3274 = !DILocation(line: 123, column: 26, scope: !3256)
!3275 = !DILocation(line: 123, column: 19, scope: !3256)
!3276 = !DILocation(line: 0, scope: !3256)
!3277 = !DILocation(line: 124, column: 15, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3256, file: !402, line: 124, column: 11)
!3279 = !DILocation(line: 124, column: 11, scope: !3256)
!3280 = !DILocation(line: 135, column: 12, scope: !3256)
!3281 = !DILocation(line: 135, column: 19, scope: !3256)
!3282 = !DILocation(line: 136, column: 12, scope: !3256)
!3283 = !DILocation(line: 136, column: 20, scope: !3256)
!3284 = !{!862, !863, i64 144}
!3285 = !DILocation(line: 167, column: 7, scope: !3256)
!3286 = !DILocation(line: 169, column: 10, scope: !3213)
!3287 = !DILocation(line: 169, column: 3, scope: !3213)
!3288 = !DILocation(line: 170, column: 1, scope: !3213)
!3289 = !DISubprogram(name: "fseeko", scope: !143, file: !143, line: 736, type: !3290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!30, !3216, !84, !30}
!3292 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !337, file: !337, line: 100, type: !3293, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3296)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!32, !1114, !6, !32, !3295}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3296 = !{!3297, !3298, !3299, !3300, !3301}
!3297 = !DILocalVariable(name: "pwc", arg: 1, scope: !3292, file: !337, line: 100, type: !1114)
!3298 = !DILocalVariable(name: "s", arg: 2, scope: !3292, file: !337, line: 100, type: !6)
!3299 = !DILocalVariable(name: "n", arg: 3, scope: !3292, file: !337, line: 100, type: !32)
!3300 = !DILocalVariable(name: "ps", arg: 4, scope: !3292, file: !337, line: 100, type: !3295)
!3301 = !DILocalVariable(name: "ret", scope: !3292, file: !337, line: 130, type: !32)
!3302 = !DILocation(line: 0, scope: !3292)
!3303 = !DILocation(line: 105, column: 9, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3292, file: !337, line: 105, column: 7)
!3305 = !DILocation(line: 105, column: 7, scope: !3292)
!3306 = !DILocation(line: 117, column: 10, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3292, file: !337, line: 117, column: 7)
!3308 = !DILocation(line: 117, column: 7, scope: !3292)
!3309 = !DILocation(line: 130, column: 16, scope: !3292)
!3310 = !DILocation(line: 135, column: 11, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3292, file: !337, line: 135, column: 7)
!3312 = !DILocation(line: 135, column: 25, scope: !3311)
!3313 = !DILocation(line: 135, column: 30, scope: !3311)
!3314 = !DILocation(line: 135, column: 7, scope: !3292)
!3315 = !DILocalVariable(name: "ps", arg: 1, scope: !3316, file: !1087, line: 1135, type: !3295)
!3316 = distinct !DISubprogram(name: "mbszero", scope: !1087, file: !1087, line: 1135, type: !3317, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{null, !3295}
!3319 = !{!3315}
!3320 = !DILocation(line: 0, scope: !3316, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 137, column: 5, scope: !3311)
!3322 = !DILocalVariable(name: "__dest", arg: 1, scope: !3323, file: !1096, line: 57, type: !29)
!3323 = distinct !DISubprogram(name: "memset", scope: !1096, file: !1096, line: 57, type: !1097, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3324)
!3324 = !{!3322, !3325, !3326}
!3325 = !DILocalVariable(name: "__ch", arg: 2, scope: !3323, file: !1096, line: 57, type: !30)
!3326 = !DILocalVariable(name: "__len", arg: 3, scope: !3323, file: !1096, line: 57, type: !32)
!3327 = !DILocation(line: 0, scope: !3323, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 1137, column: 3, scope: !3316, inlinedAt: !3321)
!3329 = !DILocation(line: 59, column: 10, scope: !3323, inlinedAt: !3328)
!3330 = !DILocation(line: 137, column: 5, scope: !3311)
!3331 = !DILocation(line: 138, column: 11, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3292, file: !337, line: 138, column: 7)
!3333 = !DILocation(line: 138, column: 7, scope: !3292)
!3334 = !DILocation(line: 139, column: 5, scope: !3332)
!3335 = !DILocation(line: 143, column: 26, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3292, file: !337, line: 143, column: 7)
!3337 = !DILocation(line: 143, column: 41, scope: !3336)
!3338 = !DILocation(line: 143, column: 7, scope: !3292)
!3339 = !DILocation(line: 145, column: 15, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !337, line: 145, column: 11)
!3341 = distinct !DILexicalBlock(scope: !3336, file: !337, line: 144, column: 5)
!3342 = !DILocation(line: 145, column: 11, scope: !3341)
!3343 = !DILocation(line: 146, column: 32, scope: !3340)
!3344 = !DILocation(line: 146, column: 16, scope: !3340)
!3345 = !DILocation(line: 146, column: 14, scope: !3340)
!3346 = !DILocation(line: 146, column: 9, scope: !3340)
!3347 = !DILocation(line: 286, column: 1, scope: !3292)
!3348 = !DISubprogram(name: "mbsinit", scope: !3349, file: !3349, line: 293, type: !3350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !512)
!3349 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!30, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!3354 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !404, file: !404, line: 27, type: !2570, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3355)
!3355 = !{!3356, !3357, !3358, !3359}
!3356 = !DILocalVariable(name: "ptr", arg: 1, scope: !3354, file: !404, line: 27, type: !29)
!3357 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3354, file: !404, line: 27, type: !32)
!3358 = !DILocalVariable(name: "size", arg: 3, scope: !3354, file: !404, line: 27, type: !32)
!3359 = !DILocalVariable(name: "nbytes", scope: !3354, file: !404, line: 29, type: !32)
!3360 = !DILocation(line: 0, scope: !3354)
!3361 = !DILocation(line: 30, column: 7, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3354, file: !404, line: 30, column: 7)
!3363 = !DILocalVariable(name: "ptr", arg: 1, scope: !3364, file: !2661, line: 2057, type: !29)
!3364 = distinct !DISubprogram(name: "rpl_realloc", scope: !2661, file: !2661, line: 2057, type: !2653, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3365)
!3365 = !{!3363, !3366}
!3366 = !DILocalVariable(name: "size", arg: 2, scope: !3364, file: !2661, line: 2057, type: !32)
!3367 = !DILocation(line: 0, scope: !3364, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 37, column: 10, scope: !3354)
!3369 = !DILocation(line: 2059, column: 24, scope: !3364, inlinedAt: !3368)
!3370 = !DILocation(line: 2059, column: 10, scope: !3364, inlinedAt: !3368)
!3371 = !DILocation(line: 37, column: 3, scope: !3354)
!3372 = !DILocation(line: 32, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3362, file: !404, line: 31, column: 5)
!3374 = !DILocation(line: 32, column: 13, scope: !3373)
!3375 = !DILocation(line: 33, column: 7, scope: !3373)
!3376 = !DILocation(line: 38, column: 1, scope: !3354)
!3377 = distinct !DISubprogram(name: "hard_locale", scope: !407, file: !407, line: 28, type: !3378, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!44, !30}
!3380 = !{!3381, !3382}
!3381 = !DILocalVariable(name: "category", arg: 1, scope: !3377, file: !407, line: 28, type: !30)
!3382 = !DILocalVariable(name: "locale", scope: !3377, file: !407, line: 30, type: !3383)
!3383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3384)
!3384 = !{!3385}
!3385 = !DISubrange(count: 257)
!3386 = !DILocation(line: 0, scope: !3377)
!3387 = !DILocation(line: 30, column: 3, scope: !3377)
!3388 = !DILocation(line: 30, column: 8, scope: !3377)
!3389 = !DILocation(line: 32, column: 7, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3377, file: !407, line: 32, column: 7)
!3391 = !DILocation(line: 32, column: 7, scope: !3377)
!3392 = !DILocalVariable(name: "__s1", arg: 1, scope: !3393, file: !470, line: 1359, type: !6)
!3393 = distinct !DISubprogram(name: "streq", scope: !470, file: !470, line: 1359, type: !471, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3394)
!3394 = !{!3392, !3395}
!3395 = !DILocalVariable(name: "__s2", arg: 2, scope: !3393, file: !470, line: 1359, type: !6)
!3396 = !DILocation(line: 0, scope: !3393, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 35, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3377, file: !407, line: 35, column: 7)
!3399 = !DILocation(line: 1361, column: 11, scope: !3393, inlinedAt: !3397)
!3400 = !DILocation(line: 1361, column: 10, scope: !3393, inlinedAt: !3397)
!3401 = !DILocation(line: 35, column: 29, scope: !3398)
!3402 = !DILocation(line: 0, scope: !3393, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 35, column: 32, scope: !3398)
!3404 = !DILocation(line: 1361, column: 11, scope: !3393, inlinedAt: !3403)
!3405 = !DILocation(line: 1361, column: 10, scope: !3393, inlinedAt: !3403)
!3406 = !DILocation(line: 35, column: 7, scope: !3377)
!3407 = !DILocation(line: 46, column: 3, scope: !3377)
!3408 = !DILocation(line: 47, column: 1, scope: !3377)
!3409 = distinct !DISubprogram(name: "setlocale_null_r", scope: !409, file: !409, line: 154, type: !3410, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!30, !30, !65, !32}
!3412 = !{!3413, !3414, !3415}
!3413 = !DILocalVariable(name: "category", arg: 1, scope: !3409, file: !409, line: 154, type: !30)
!3414 = !DILocalVariable(name: "buf", arg: 2, scope: !3409, file: !409, line: 154, type: !65)
!3415 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3409, file: !409, line: 154, type: !32)
!3416 = !DILocation(line: 0, scope: !3409)
!3417 = !DILocation(line: 159, column: 10, scope: !3409)
!3418 = !DILocation(line: 159, column: 3, scope: !3409)
!3419 = distinct !DISubprogram(name: "setlocale_null", scope: !409, file: !409, line: 186, type: !3420, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!6, !30}
!3422 = !{!3423}
!3423 = !DILocalVariable(name: "category", arg: 1, scope: !3419, file: !409, line: 186, type: !30)
!3424 = !DILocation(line: 0, scope: !3419)
!3425 = !DILocation(line: 189, column: 10, scope: !3419)
!3426 = !DILocation(line: 189, column: 3, scope: !3419)
!3427 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !411, file: !411, line: 35, type: !3420, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3428)
!3428 = !{!3429, !3430}
!3429 = !DILocalVariable(name: "category", arg: 1, scope: !3427, file: !411, line: 35, type: !30)
!3430 = !DILocalVariable(name: "result", scope: !3427, file: !411, line: 37, type: !6)
!3431 = !DILocation(line: 0, scope: !3427)
!3432 = !DILocation(line: 37, column: 24, scope: !3427)
!3433 = !DILocation(line: 62, column: 3, scope: !3427)
!3434 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !411, file: !411, line: 66, type: !3410, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3435)
!3435 = !{!3436, !3437, !3438, !3439, !3440}
!3436 = !DILocalVariable(name: "category", arg: 1, scope: !3434, file: !411, line: 66, type: !30)
!3437 = !DILocalVariable(name: "buf", arg: 2, scope: !3434, file: !411, line: 66, type: !65)
!3438 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3434, file: !411, line: 66, type: !32)
!3439 = !DILocalVariable(name: "result", scope: !3434, file: !411, line: 111, type: !6)
!3440 = !DILocalVariable(name: "length", scope: !3441, file: !411, line: 125, type: !32)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !411, line: 124, column: 5)
!3442 = distinct !DILexicalBlock(scope: !3434, file: !411, line: 113, column: 7)
!3443 = !DILocation(line: 0, scope: !3434)
!3444 = !DILocation(line: 0, scope: !3427, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 111, column: 24, scope: !3434)
!3446 = !DILocation(line: 37, column: 24, scope: !3427, inlinedAt: !3445)
!3447 = !DILocation(line: 113, column: 14, scope: !3442)
!3448 = !DILocation(line: 113, column: 7, scope: !3434)
!3449 = !DILocation(line: 116, column: 19, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !411, line: 116, column: 11)
!3451 = distinct !DILexicalBlock(scope: !3442, file: !411, line: 114, column: 5)
!3452 = !DILocation(line: 116, column: 11, scope: !3451)
!3453 = !DILocation(line: 120, column: 16, scope: !3450)
!3454 = !DILocation(line: 120, column: 9, scope: !3450)
!3455 = !DILocation(line: 125, column: 23, scope: !3441)
!3456 = !DILocation(line: 0, scope: !3441)
!3457 = !DILocation(line: 126, column: 18, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3441, file: !411, line: 126, column: 11)
!3459 = !DILocation(line: 126, column: 11, scope: !3441)
!3460 = !DILocation(line: 128, column: 39, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !411, line: 127, column: 9)
!3462 = !DILocalVariable(name: "__dest", arg: 1, scope: !3463, file: !1096, line: 26, type: !2928)
!3463 = distinct !DISubprogram(name: "memcpy", scope: !1096, file: !1096, line: 26, type: !2926, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3464)
!3464 = !{!3462, !3465, !3466}
!3465 = !DILocalVariable(name: "__src", arg: 2, scope: !3463, file: !1096, line: 26, type: !637)
!3466 = !DILocalVariable(name: "__len", arg: 3, scope: !3463, file: !1096, line: 26, type: !32)
!3467 = !DILocation(line: 0, scope: !3463, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 128, column: 11, scope: !3461)
!3469 = !DILocation(line: 29, column: 10, scope: !3463, inlinedAt: !3468)
!3470 = !DILocation(line: 129, column: 11, scope: !3461)
!3471 = !DILocation(line: 133, column: 23, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !411, line: 133, column: 15)
!3473 = distinct !DILexicalBlock(scope: !3458, file: !411, line: 132, column: 9)
!3474 = !DILocation(line: 133, column: 15, scope: !3473)
!3475 = !DILocation(line: 138, column: 44, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3472, file: !411, line: 134, column: 13)
!3477 = !DILocation(line: 0, scope: !3463, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 138, column: 15, scope: !3476)
!3479 = !DILocation(line: 29, column: 10, scope: !3463, inlinedAt: !3478)
!3480 = !DILocation(line: 139, column: 15, scope: !3476)
!3481 = !DILocation(line: 139, column: 32, scope: !3476)
!3482 = !DILocation(line: 140, column: 13, scope: !3476)
!3483 = !DILocation(line: 0, scope: !3442)
!3484 = !DILocation(line: 145, column: 1, scope: !3434)
