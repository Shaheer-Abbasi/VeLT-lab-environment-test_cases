; ModuleID = 'src/logname.bc'
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
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Print the user's login name.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"logname\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"no login name\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !0
@.str.13 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.44 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), align 8, !dbg !119
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !124
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !129
@.str.21 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !131
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !167
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !137
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !163
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !165
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.49, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.50, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !172
@optind = external local_unnamed_addr global i32, align 4
@.str.1.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.49 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.50 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !189
@.str.58 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.59 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !195
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 8, !dbg !231
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !257
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !275
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !305
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !312
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !277
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !314
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !263
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !282
@.str.80 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.85 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.86 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.87 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.88 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.89 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.90 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.91 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.92 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.93 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.94 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.95 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.96 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.101 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.102 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !320
@exit_failure = dso_local global i32 1, align 4, !dbg !328
@.str.116 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.114 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.115 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !334
@.str.132 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

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
  br label %52, !dbg !433

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !439
  %11 = load i8*, i8** @program_name, align 8, !dbg !439, !tbaa !435
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !439
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !441
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !441, !tbaa !435
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !441
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !442
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !442
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !443
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !443
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !444, metadata !DIExpression()) #32, !dbg !463
  %18 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !465
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %18) #32, !dbg !465
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !449, metadata !DIExpression()) #32, !dbg !466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %18, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !466
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !458, metadata !DIExpression()) #32, !dbg !463
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !459, metadata !DIExpression()) #32, !dbg !463
  %19 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !467
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !459, metadata !DIExpression()) #32, !dbg !463
  br label %20, !dbg !468

20:                                               ; preds = %25, %9
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %22 = phi %struct.infomap* [ %26, %25 ], [ %19, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !459, metadata !DIExpression()) #32, !dbg !463
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !476
  call void @llvm.dbg.value(metadata i8* %21, metadata !475, metadata !DIExpression()) #32, !dbg !476
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %21) #33, !dbg !478
  %24 = icmp eq i32 %23, 0, !dbg !479
  br i1 %24, label %30, label %25, !dbg !468

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.infomap, %struct.infomap* %22, i64 1, !dbg !480
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !459, metadata !DIExpression()) #32, !dbg !463
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 0, i32 0, !dbg !481
  %28 = load i8*, i8** %27, align 8, !dbg !481, !tbaa !482
  %29 = icmp eq i8* %28, null, !dbg !484
  br i1 %29, label %30, label %20, !dbg !485, !llvm.loop !486

30:                                               ; preds = %25, %20
  %31 = phi %struct.infomap* [ %22, %20 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 0, i32 1, !dbg !488
  %33 = load i8*, i8** %32, align 8, !dbg !488, !tbaa !490
  %34 = icmp eq i8* %33, null, !dbg !491
  %35 = select i1 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %33, !dbg !492
  call void @llvm.dbg.value(metadata i8* %35, metadata !458, metadata !DIExpression()) #32, !dbg !463
  tail call void @emit_bug_reporting_address() #32, !dbg !493
  %36 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !494
  call void @llvm.dbg.value(metadata i8* %36, metadata !461, metadata !DIExpression()) #32, !dbg !463
  %37 = icmp eq i8* %36, null, !dbg !495
  br i1 %37, label %45, label %38, !dbg !497

38:                                               ; preds = %30
  %39 = tail call i32 @strncmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 noundef 3) #33, !dbg !498
  %40 = icmp eq i32 %39, 0, !dbg !498
  br i1 %40, label %45, label %41, !dbg !499

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0), i32 noundef 5) #32, !dbg !500
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !500, !tbaa !435
  %44 = tail call i32 @fputs_unlocked(i8* noundef %42, %struct._IO_FILE* noundef %43) #32, !dbg !500
  br label %45, !dbg !502

45:                                               ; preds = %30, %38, %41
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !503
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !475, metadata !DIExpression()) #32, !dbg !503
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !462, metadata !DIExpression()) #32, !dbg !463
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #32, !dbg !505
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %46, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !505
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #32, !dbg !506
  %49 = icmp eq i8* %35, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), !dbg !506
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !506
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %48, i8* noundef %35, i8* noundef %50) #32, !dbg !506
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %18) #32, !dbg !507
  br label %52

52:                                               ; preds = %45, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !508
  unreachable, !dbg !508
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !509 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !514 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !38, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %0, metadata !39, metadata !DIExpression()), !dbg !519
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !520, !tbaa !521
  %3 = icmp eq i32 %2, -1, !dbg !523
  br i1 %3, label %4, label %16, !dbg !524

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #32, !dbg !525
  call void @llvm.dbg.value(metadata i8* %5, metadata !40, metadata !DIExpression()), !dbg !526
  %6 = icmp eq i8* %5, null, !dbg !527
  br i1 %6, label %14, label %7, !dbg !528

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !529, !tbaa !530
  %9 = icmp eq i8 %8, 0, !dbg !529
  br i1 %9, label %14, label %10, !dbg !531

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !469, metadata !DIExpression()) #32, !dbg !532
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !475, metadata !DIExpression()) #32, !dbg !532
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #33, !dbg !534
  %12 = icmp eq i32 %11, 0, !dbg !535
  %13 = zext i1 %12 to i32, !dbg !531
  br label %14, !dbg !531

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !536, !tbaa !521
  br label %16, !dbg !537

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !538
  %18 = icmp eq i32 %17, 0, !dbg !538
  br i1 %18, label %22, label %19, !dbg !540

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !541, !tbaa !435
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !541
  br label %121, !dbg !543

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !43, metadata !DIExpression()), !dbg !519
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #33, !dbg !544
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !545
  call void @llvm.dbg.value(metadata i8* %24, metadata !45, metadata !DIExpression()), !dbg !519
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !546
  call void @llvm.dbg.value(metadata i8* %25, metadata !46, metadata !DIExpression()), !dbg !519
  %26 = icmp eq i8* %25, null, !dbg !547
  br i1 %26, label %53, label %27, !dbg !548

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !549
  br i1 %28, label %53, label %29, !dbg !550

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !47, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()), !dbg !551
  %30 = icmp ult i8* %24, %25, !dbg !552
  br i1 %30, label %31, label %53, !dbg !553

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !519
  %33 = load i16*, i16** %32, align 8, !tbaa !435
  br label %34, !dbg !553

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !47, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i64 %36, metadata !51, metadata !DIExpression()), !dbg !551
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !554
  call void @llvm.dbg.value(metadata i8* %37, metadata !47, metadata !DIExpression()), !dbg !551
  %38 = load i8, i8* %35, align 1, !dbg !554, !tbaa !530
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !554
  %41 = load i16, i16* %40, align 2, !dbg !554, !tbaa !555
  %42 = lshr i16 %41, 13, !dbg !557
  %43 = and i16 %42, 1, !dbg !557
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !558
  call void @llvm.dbg.value(metadata i64 %45, metadata !51, metadata !DIExpression()), !dbg !551
  %46 = icmp ult i8* %37, %25, !dbg !552
  %47 = icmp ult i64 %45, 2, !dbg !559
  %48 = select i1 %46, i1 %47, i1 false, !dbg !559
  br i1 %48, label %34, label %49, !dbg !553, !llvm.loop !560

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !561
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !563
  %52 = xor i1 %50, true, !dbg !563
  br label %53, !dbg !563

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !519
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %54, metadata !46, metadata !DIExpression()), !dbg !519
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #33, !dbg !564
  call void @llvm.dbg.value(metadata i64 %56, metadata !52, metadata !DIExpression()), !dbg !519
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !565
  call void @llvm.dbg.value(metadata i8* %57, metadata !53, metadata !DIExpression()), !dbg !519
  br label %58, !dbg !566

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !519
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %59, metadata !53, metadata !DIExpression()), !dbg !519
  %61 = load i8, i8* %59, align 1, !dbg !567, !tbaa !530
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !568

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !569
  %64 = load i8, i8* %63, align 1, !dbg !572, !tbaa !530
  %65 = icmp ne i8 %64, 45, !dbg !573
  %66 = select i1 %65, i1 %60, i1 false, !dbg !574
  br label %67, !dbg !574

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !43, metadata !DIExpression()), !dbg !519
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !575
  %70 = load i16*, i16** %69, align 8, !dbg !575, !tbaa !435
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !575
  %73 = load i16, i16* %72, align 2, !dbg !575, !tbaa !555
  %74 = and i16 %73, 8192, !dbg !575
  %75 = icmp eq i16 %74, 0, !dbg !575
  br i1 %75, label %89, label %76, !dbg !577

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !578
  br i1 %77, label %91, label %78, !dbg !581

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !582
  %80 = load i8, i8* %79, align 1, !dbg !582, !tbaa !530
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !582
  %83 = load i16, i16* %82, align 2, !dbg !582, !tbaa !555
  %84 = and i16 %83, 8192, !dbg !582
  %85 = icmp eq i16 %84, 0, !dbg !582
  br i1 %85, label %86, label %91, !dbg !583

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !584
  br i1 %88, label %89, label %91, !dbg !584

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !586
  call void @llvm.dbg.value(metadata i8* %90, metadata !53, metadata !DIExpression()), !dbg !519
  br label %58, !dbg !566, !llvm.loop !587

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !589
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !435
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !589
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !475, metadata !DIExpression()) #32, !dbg !590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !594
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !596
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), metadata !114, metadata !DIExpression()), !dbg !519
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 noundef 6) #33, !dbg !610
  %96 = icmp eq i32 %95, 0, !dbg !610
  br i1 %96, label %100, label %97, !dbg !612

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 noundef 9) #33, !dbg !613
  %99 = icmp eq i32 %98, 0, !dbg !613
  br i1 %99, label %100, label %103, !dbg !614

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !615
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !615
  br label %106, !dbg !617

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !618
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !618
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !435
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !620
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !435
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !621
  %111 = ptrtoint i8* %59 to i64, !dbg !622
  %112 = sub i64 %111, %92, !dbg !622
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !435
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !622
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !435
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !623
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !435
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !624
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !625, !tbaa !435
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !625
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !626
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
declare !dbg !627 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !631 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !635 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !641 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !646, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i8** %1, metadata !647, metadata !DIExpression()), !dbg !649
  %3 = load i8*, i8** %1, align 8, !dbg !650, !tbaa !435
  tail call void @set_program_name(i8* noundef %3) #32, !dbg !651
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #32, !dbg !652
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #32, !dbg !653
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !654
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !655
  %8 = load i8*, i8** @Version, align 8, !dbg !656, !tbaa !435
  %9 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #32, !dbg !657
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %8, i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %9, i8* noundef null) #32, !dbg !658
  %10 = load i32, i32* @optind, align 4, !dbg !659, !tbaa !521
  %11 = icmp slt i32 %10, %0, !dbg !661
  br i1 %11, label %12, label %19, !dbg !662

12:                                               ; preds = %2
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #32, !dbg !663
  %14 = load i32, i32* @optind, align 4, !dbg !663, !tbaa !521
  %15 = sext i32 %14 to i64, !dbg !663
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !663
  %17 = load i8*, i8** %16, align 8, !dbg !663, !tbaa !435
  %18 = tail call i8* @quote(i8* noundef %17) #32, !dbg !663
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %13, i8* noundef %18) #32, !dbg !663
  tail call void @usage(i32 noundef 1) #36, !dbg !665
  unreachable, !dbg !665

19:                                               ; preds = %2
  %20 = tail call i8* @getlogin() #32, !dbg !666
  call void @llvm.dbg.value(metadata i8* %20, metadata !648, metadata !DIExpression()), !dbg !649
  %21 = icmp eq i8* %20, null, !dbg !667
  br i1 %21, label %22, label %24, !dbg !669

22:                                               ; preds = %19
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #32, !dbg !670
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %23) #32, !dbg !670
  unreachable, !dbg !670

24:                                               ; preds = %19
  %25 = tail call i32 @puts(i8* noundef nonnull %20), !dbg !671
  ret i32 0, !dbg !672
}

; Function Attrs: nounwind
declare !dbg !673 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !676 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !677 i32 @atexit(void ()* noundef) local_unnamed_addr #2

declare !dbg !680 i8* @getlogin() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !683 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !686 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !688, metadata !DIExpression()), !dbg !689
  store i8* %0, i8** @file_name, align 8, !dbg !690, !tbaa !435
  ret void, !dbg !691
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !692 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !696, metadata !DIExpression()), !dbg !697
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !698, !tbaa !699
  ret void, !dbg !701
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !702 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !435
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !708
  %3 = icmp eq i32 %2, 0, !dbg !709
  br i1 %3, label %22, label %4, !dbg !710

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !711, !tbaa !699, !range !712
  %6 = icmp eq i8 %5, 0, !dbg !711
  br i1 %6, label %11, label %7, !dbg !713

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !714
  %9 = load i32, i32* %8, align 4, !dbg !714, !tbaa !521
  %10 = icmp eq i32 %9, 32, !dbg !715
  br i1 %10, label %22, label %11, !dbg !716

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !717
  call void @llvm.dbg.value(metadata i8* %12, metadata !704, metadata !DIExpression()), !dbg !718
  %13 = load i8*, i8** @file_name, align 8, !dbg !719, !tbaa !435
  %14 = icmp eq i8* %13, null, !dbg !719
  %15 = tail call i32* @__errno_location() #35, !dbg !721
  %16 = load i32, i32* %15, align 4, !dbg !721, !tbaa !521
  br i1 %14, label %19, label %17, !dbg !722

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !723
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.23, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !723
  br label %20, !dbg !723

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.24, i64 0, i64 0), i8* noundef %12) #32, !dbg !724
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !725, !tbaa !521
  tail call void @_exit(i32 noundef %21) #34, !dbg !726
  unreachable, !dbg !726

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !727, !tbaa !435
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !729
  %25 = icmp eq i32 %24, 0, !dbg !730
  br i1 %25, label %28, label %26, !dbg !731

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !732, !tbaa !521
  tail call void @_exit(i32 noundef %27) #34, !dbg !733
  unreachable, !dbg !733

28:                                               ; preds = %22
  ret void, !dbg !734
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !735 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !739, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 %1, metadata !740, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i8* %2, metadata !741, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !742, metadata !DIExpression()), !dbg !744
  tail call fastcc void @flush_stdout(), !dbg !745
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !746, !tbaa !435
  %7 = icmp eq void ()* %6, null, !dbg !746
  br i1 %7, label %9, label %8, !dbg !748

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !749
  br label %13, !dbg !749

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !750, !tbaa !435
  %11 = tail call i8* @getprogname() #33, !dbg !750
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* noundef %11) #32, !dbg !750
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !752
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !752
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !752, !tbaa.struct !753
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !752
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !752
  ret void, !dbg !754
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !755 {
  call void @llvm.dbg.value(metadata i32 1, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i32 1, metadata !759, metadata !DIExpression()) #32, !dbg !764
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !767
  %2 = icmp slt i32 %1, 0, !dbg !768
  br i1 %2, label %6, label %3, !dbg !769

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !770, !tbaa !435
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !770
  br label %6, !dbg !770

6:                                                ; preds = %3, %0
  ret void, !dbg !771
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !772 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !774, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 %1, metadata !775, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8* %2, metadata !776, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !777, metadata !DIExpression()), !dbg !779
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !780, !tbaa !435
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !781
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !782, metadata !DIExpression()) #32, !dbg !825
  call void @llvm.dbg.value(metadata i8* %2, metadata !823, metadata !DIExpression()) #32, !dbg !825
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !827, !noalias !828
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !827
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !827
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !827, !noalias !828
  %11 = load i32, i32* @error_message_count, align 4, !dbg !832, !tbaa !521
  %12 = add i32 %11, 1, !dbg !832
  store i32 %12, i32* @error_message_count, align 4, !dbg !832, !tbaa !521
  %13 = icmp eq i32 %1, 0, !dbg !833
  br i1 %13, label %24, label %14, !dbg !835

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !836, metadata !DIExpression()) #32, !dbg !844
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !846
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !846
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !840, metadata !DIExpression()) #32, !dbg !847
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !848
  call void @llvm.dbg.value(metadata i8* %16, metadata !839, metadata !DIExpression()) #32, !dbg !844
  %17 = icmp eq i8* %16, null, !dbg !849
  br i1 %17, label %18, label %20, !dbg !851

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.27, i64 0, i64 0), i32 noundef 5) #32, !dbg !852
  call void @llvm.dbg.value(metadata i8* %19, metadata !839, metadata !DIExpression()) #32, !dbg !844
  br label %20, !dbg !853

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !844
  call void @llvm.dbg.value(metadata i8* %21, metadata !839, metadata !DIExpression()) #32, !dbg !844
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !854, !tbaa !435
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.28, i64 0, i64 0), i8* noundef %21) #32, !dbg !854
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !855
  br label %24, !dbg !856

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !857, !tbaa !435
  call void @llvm.dbg.value(metadata i32 10, metadata !858, metadata !DIExpression()) #32, !dbg !865
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !864, metadata !DIExpression()) #32, !dbg !865
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !867
  %27 = load i8*, i8** %26, align 8, !dbg !867, !tbaa !868
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !867
  %29 = load i8*, i8** %28, align 8, !dbg !867, !tbaa !871
  %30 = icmp ult i8* %27, %29, !dbg !867
  br i1 %30, label %33, label %31, !dbg !867, !prof !872

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !867
  br label %35, !dbg !867

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !867
  store i8* %34, i8** %26, align 8, !dbg !867, !tbaa !868
  store i8 10, i8* %27, align 1, !dbg !867, !tbaa !530
  br label %35, !dbg !867

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !873, !tbaa !435
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !873
  %38 = icmp eq i32 %0, 0, !dbg !874
  br i1 %38, label %40, label %39, !dbg !876

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !877
  unreachable, !dbg !877

40:                                               ; preds = %35
  ret void, !dbg !878
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !879 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !883 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !886 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !890 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !894, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %1, metadata !895, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i8* %2, metadata !896, metadata !DIExpression()), !dbg !898
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !899
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !899
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !897, metadata !DIExpression()), !dbg !900
  call void @llvm.va_start(i8* nonnull %6), !dbg !901
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !902
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !902
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !902, !tbaa.struct !753
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !902
  call void @llvm.va_end(i8* nonnull %6), !dbg !903
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !904
  ret void, !dbg !904
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !139 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !157, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i32 %1, metadata !158, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i8* %2, metadata !159, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i32 %3, metadata !160, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i8* %4, metadata !161, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !162, metadata !DIExpression()), !dbg !906
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !907, !tbaa !521
  %9 = icmp eq i32 %8, 0, !dbg !907
  br i1 %9, label %24, label %10, !dbg !909

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !910, !tbaa !521
  %12 = icmp eq i32 %11, %3, !dbg !913
  br i1 %12, label %13, label %23, !dbg !914

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !915, !tbaa !435
  %15 = icmp eq i8* %14, %2, !dbg !916
  br i1 %15, label %39, label %16, !dbg !917

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !918
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !919
  br i1 %19, label %20, label %23, !dbg !919

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !920
  %22 = icmp eq i32 %21, 0, !dbg !921
  br i1 %22, label %39, label %23, !dbg !922

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !923, !tbaa !435
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !924, !tbaa !521
  br label %24, !dbg !925

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !926
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !927, !tbaa !435
  %26 = icmp eq void ()* %25, null, !dbg !927
  br i1 %26, label %28, label %27, !dbg !929

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !930
  br label %32, !dbg !930

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !931, !tbaa !435
  %30 = tail call i8* @getprogname() #33, !dbg !931
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.31, i64 0, i64 0), i8* noundef %30) #32, !dbg !931
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !933, !tbaa !435
  %34 = icmp eq i8* %2, null, !dbg !933
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.32, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.33, i64 0, i64 0), !dbg !933
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !933
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !934
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !934
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !934, !tbaa.struct !753
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !934
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !934
  br label %39, !dbg !935

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !935
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !936 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !940, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i32 %1, metadata !941, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8* %2, metadata !942, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i32 %3, metadata !943, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8* %4, metadata !944, metadata !DIExpression()), !dbg !946
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !947
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !947
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !945, metadata !DIExpression()), !dbg !948
  call void @llvm.va_start(i8* nonnull %8), !dbg !949
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !950
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !950
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !950, !tbaa.struct !753
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !950
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !950
  call void @llvm.va_end(i8* nonnull %8), !dbg !951
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !952
  ret void, !dbg !952
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !953 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !956, !tbaa !435
  ret i8* %1, !dbg !957
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #12 !dbg !958 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !963, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8** %1, metadata !964, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %2, metadata !965, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %3, metadata !966, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i8* %4, metadata !967, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !968, metadata !DIExpression()), !dbg !989
  %9 = load i32, i32* @opterr, align 4, !dbg !990, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %9, metadata !969, metadata !DIExpression()), !dbg !989
  store i32 0, i32* @opterr, align 4, !dbg !991, !tbaa !521
  %10 = icmp eq i32 %0, 2, !dbg !992
  br i1 %10, label %11, label %18, !dbg !993

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !994
  call void @llvm.dbg.value(metadata i32 %12, metadata !970, metadata !DIExpression()), !dbg !995
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !996

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #32, !dbg !997
  br label %18, !dbg !998

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !999
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #32, !dbg !999
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !973, metadata !DIExpression()), !dbg !1000
  call void @llvm.va_start(i8* nonnull %15), !dbg !1001
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1002, !tbaa !435
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1003
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #32, !dbg !1003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1003, !tbaa.struct !753
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #32, !dbg !1003
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #32, !dbg !1003
  call void @exit(i32 noundef 0) #34, !dbg !1004
  unreachable, !dbg !1004

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !1005, !tbaa !521
  store i32 0, i32* @optind, align 4, !dbg !1006, !tbaa !521
  ret void, !dbg !1007
}

; Function Attrs: nounwind
declare !dbg !1008 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #12 !dbg !1014 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1018, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8** %1, metadata !1019, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8* %2, metadata !1020, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8* %3, metadata !1021, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8* %4, metadata !1022, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i1 %5, metadata !1023, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1033
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1024, metadata !DIExpression()), !dbg !1033
  %10 = load i32, i32* @opterr, align 4, !dbg !1034, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %10, metadata !1025, metadata !DIExpression()), !dbg !1033
  store i32 1, i32* @opterr, align 4, !dbg !1035, !tbaa !521
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %11, metadata !1026, metadata !DIExpression()), !dbg !1033
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %12, metadata !1027, metadata !DIExpression()), !dbg !1033
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !1038

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1039
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1039
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !1028, metadata !DIExpression()), !dbg !1040
  call void @llvm.va_start(i8* nonnull %14), !dbg !1041
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1042, !tbaa !435
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !1043
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #32, !dbg !1043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !1043, !tbaa.struct !753
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #32, !dbg !1043
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #32, !dbg !1043
  call void @exit(i32 noundef 0) #34, !dbg !1044
  unreachable, !dbg !1044

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !1045, !tbaa !521
  br label %19, !dbg !1046

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #32, !dbg !1047
  br label %21, !dbg !1048

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !1048, !tbaa !521
  ret void, !dbg !1049
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !1050 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()), !dbg !1055
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %2, metadata !1053, metadata !DIExpression()), !dbg !1055
  %3 = icmp eq i8* %2, null, !dbg !1057
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1057
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %5, metadata !1054, metadata !DIExpression()), !dbg !1055
  %6 = ptrtoint i8* %5 to i64, !dbg !1058
  %7 = ptrtoint i8* %0 to i64, !dbg !1058
  %8 = sub i64 %6, %7, !dbg !1058
  %9 = icmp sgt i64 %8, 6, !dbg !1060
  br i1 %9, label %10, label %19, !dbg !1061

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1062
  call void @llvm.dbg.value(metadata i8* %11, metadata !1063, metadata !DIExpression()) #32, !dbg !1070
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), metadata !1068, metadata !DIExpression()) #32, !dbg !1070
  call void @llvm.dbg.value(metadata i64 7, metadata !1069, metadata !DIExpression()) #32, !dbg !1070
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i64 7) #32, !dbg !1072
  %13 = icmp eq i32 %12, 0, !dbg !1073
  br i1 %13, label %14, label %19, !dbg !1074

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1052, metadata !DIExpression()), !dbg !1055
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.59, i64 0, i64 0), i64 noundef 3) #33, !dbg !1075
  %16 = icmp eq i32 %15, 0, !dbg !1078
  %17 = select i1 %16, i64 3, i64 0, !dbg !1079
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1079
  br label %19, !dbg !1079

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1055
  call void @llvm.dbg.value(metadata i8* %21, metadata !1054, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %20, metadata !1052, metadata !DIExpression()), !dbg !1055
  store i8* %20, i8** @program_name, align 8, !dbg !1080, !tbaa !435
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1081, !tbaa !435
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1082, !tbaa !435
  ret void, !dbg !1083
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !197 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !204, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %1, metadata !205, metadata !DIExpression()), !dbg !1084
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %5, metadata !206, metadata !DIExpression()), !dbg !1084
  %6 = icmp eq i8* %5, %0, !dbg !1086
  br i1 %6, label %7, label %17, !dbg !1088

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1089
  %10 = bitcast i64* %4 to i8*, !dbg !1090
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1090
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !212, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1092, metadata !DIExpression()) #32, !dbg !1099
  call void @llvm.dbg.value(metadata i8* %10, metadata !1101, metadata !DIExpression()) #32, !dbg !1109
  call void @llvm.dbg.value(metadata i32 0, metadata !1107, metadata !DIExpression()) #32, !dbg !1109
  call void @llvm.dbg.value(metadata i64 8, metadata !1108, metadata !DIExpression()) #32, !dbg !1109
  store i64 0, i64* %4, align 8, !dbg !1111
  call void @llvm.dbg.value(metadata i32* %3, metadata !207, metadata !DIExpression(DW_OP_deref)), !dbg !1084
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1112
  %12 = icmp eq i64 %11, 2, !dbg !1114
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !207, metadata !DIExpression()), !dbg !1084
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1115
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1084
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1116
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1084
  ret i8* %18, !dbg !1116
}

; Function Attrs: nounwind
declare !dbg !1117 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1123 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1128, metadata !DIExpression()), !dbg !1131
  %2 = tail call i32* @__errno_location() #35, !dbg !1132
  %3 = load i32, i32* %2, align 4, !dbg !1132, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %3, metadata !1129, metadata !DIExpression()), !dbg !1131
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1133
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1133
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1133
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1134
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1134
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1130, metadata !DIExpression()), !dbg !1131
  store i32 %3, i32* %2, align 4, !dbg !1135, !tbaa !521
  ret %struct.quoting_options* %8, !dbg !1136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1137 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1143, metadata !DIExpression()), !dbg !1144
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1145
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1145
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1146
  %5 = load i32, i32* %4, align 8, !dbg !1146, !tbaa !1147
  ret i32 %5, !dbg !1149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1150 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1154, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i32 %1, metadata !1155, metadata !DIExpression()), !dbg !1156
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1157
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1157
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1158
  store i32 %1, i32* %5, align 8, !dbg !1159, !tbaa !1147
  ret void, !dbg !1160
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1161 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1165, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %1, metadata !1166, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i32 %2, metadata !1167, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %1, metadata !1168, metadata !DIExpression()), !dbg !1173
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1174
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1174
  %6 = lshr i8 %1, 5, !dbg !1175
  %7 = zext i8 %6 to i64, !dbg !1175
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1176
  call void @llvm.dbg.value(metadata i32* %8, metadata !1169, metadata !DIExpression()), !dbg !1173
  %9 = and i8 %1, 31, !dbg !1177
  %10 = zext i8 %9 to i32, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %10, metadata !1171, metadata !DIExpression()), !dbg !1173
  %11 = load i32, i32* %8, align 4, !dbg !1178, !tbaa !521
  %12 = lshr i32 %11, %10, !dbg !1179
  %13 = and i32 %12, 1, !dbg !1180
  call void @llvm.dbg.value(metadata i32 %13, metadata !1172, metadata !DIExpression()), !dbg !1173
  %14 = and i32 %2, 1, !dbg !1181
  %15 = xor i32 %13, %14, !dbg !1182
  %16 = shl i32 %15, %10, !dbg !1183
  %17 = xor i32 %16, %11, !dbg !1184
  store i32 %17, i32* %8, align 4, !dbg !1184, !tbaa !521
  ret i32 %13, !dbg !1185
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1186 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1190, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 %1, metadata !1191, metadata !DIExpression()), !dbg !1193
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1194
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1196
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1190, metadata !DIExpression()), !dbg !1193
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1197
  %6 = load i32, i32* %5, align 4, !dbg !1197, !tbaa !1198
  call void @llvm.dbg.value(metadata i32 %6, metadata !1192, metadata !DIExpression()), !dbg !1193
  store i32 %1, i32* %5, align 4, !dbg !1199, !tbaa !1198
  ret i32 %6, !dbg !1200
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1201 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1205, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8* %1, metadata !1206, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8* %2, metadata !1207, metadata !DIExpression()), !dbg !1208
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1209
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1211
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1205, metadata !DIExpression()), !dbg !1208
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1212
  store i32 10, i32* %6, align 8, !dbg !1213, !tbaa !1147
  %7 = icmp ne i8* %1, null, !dbg !1214
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1216
  br i1 %9, label %11, label %10, !dbg !1216

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1217
  unreachable, !dbg !1217

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1218
  store i8* %1, i8** %12, align 8, !dbg !1219, !tbaa !1220
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1221
  store i8* %2, i8** %13, align 8, !dbg !1222, !tbaa !1223
  ret void, !dbg !1224
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1225 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1229, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %1, metadata !1230, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %2, metadata !1231, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %3, metadata !1232, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1233, metadata !DIExpression()), !dbg !1237
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1238
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1234, metadata !DIExpression()), !dbg !1237
  %8 = tail call i32* @__errno_location() #35, !dbg !1239
  %9 = load i32, i32* %8, align 4, !dbg !1239, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %9, metadata !1235, metadata !DIExpression()), !dbg !1237
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1240
  %11 = load i32, i32* %10, align 8, !dbg !1240, !tbaa !1147
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1241
  %13 = load i32, i32* %12, align 4, !dbg !1241, !tbaa !1198
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1242
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1243
  %16 = load i8*, i8** %15, align 8, !dbg !1243, !tbaa !1220
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1244
  %18 = load i8*, i8** %17, align 8, !dbg !1244, !tbaa !1223
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %19, metadata !1236, metadata !DIExpression()), !dbg !1237
  store i32 %9, i32* %8, align 4, !dbg !1246, !tbaa !521
  ret i64 %19, !dbg !1247
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1248 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1254, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %1, metadata !1255, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %2, metadata !1256, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %3, metadata !1257, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 %4, metadata !1258, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 %5, metadata !1259, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32* %6, metadata !1260, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %7, metadata !1261, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %8, metadata !1262, metadata !DIExpression()), !dbg !1316
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1317
  %18 = icmp eq i64 %17, 1, !dbg !1318
  call void @llvm.dbg.value(metadata i1 %18, metadata !1263, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1265, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* null, metadata !1266, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1267, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1268, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 %5, metadata !1269, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1270, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 1, metadata !1271, metadata !DIExpression()), !dbg !1316
  %19 = and i32 %5, 2, !dbg !1319
  %20 = icmp ne i32 %19, 0, !dbg !1319
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
  br label %36, !dbg !1319

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1320
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1321
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1322
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1255, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1271, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1270, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1269, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %43, metadata !1267, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %42, metadata !1266, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %41, metadata !1265, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %40, metadata !1257, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %39, metadata !1262, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %38, metadata !1261, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 %37, metadata !1258, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.label(metadata !1309), !dbg !1323
  call void @llvm.dbg.value(metadata i8 0, metadata !1272, metadata !DIExpression()), !dbg !1316
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
  ], !dbg !1324

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1269, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 5, metadata !1258, metadata !DIExpression()), !dbg !1316
  br label %111, !dbg !1325

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1269, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 5, metadata !1258, metadata !DIExpression()), !dbg !1316
  br i1 %45, label %111, label %51, !dbg !1325

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1326
  br i1 %52, label %111, label %53, !dbg !1330

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1326, !tbaa !530
  br label %111, !dbg !1326

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), metadata !288, metadata !DIExpression()) #32, !dbg !1331
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #32, !dbg !1331
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 noundef 5) #32, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %55, metadata !290, metadata !DIExpression()) #32, !dbg !1331
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), !dbg !1336
  br i1 %56, label %57, label %66, !dbg !1338

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1339
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1340
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !292, metadata !DIExpression()) #32, !dbg !1341
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1342, metadata !DIExpression()) #32, !dbg !1348
  call void @llvm.dbg.value(metadata i8* %23, metadata !1350, metadata !DIExpression()) #32, !dbg !1355
  call void @llvm.dbg.value(metadata i32 0, metadata !1353, metadata !DIExpression()) #32, !dbg !1355
  call void @llvm.dbg.value(metadata i64 8, metadata !1354, metadata !DIExpression()) #32, !dbg !1355
  store i64 0, i64* %13, align 8, !dbg !1357
  call void @llvm.dbg.value(metadata i32* %12, metadata !291, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1331
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1358
  %59 = icmp eq i64 %58, 3, !dbg !1360
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !291, metadata !DIExpression()) #32, !dbg !1331
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1361
  %63 = icmp eq i32 %37, 9, !dbg !1361
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !1361
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1361
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1362
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1362
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1331
  call void @llvm.dbg.value(metadata i8* %67, metadata !1261, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), metadata !288, metadata !DIExpression()) #32, !dbg !1363
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #32, !dbg !1363
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 noundef 5) #32, !dbg !1365
  call void @llvm.dbg.value(metadata i8* %68, metadata !290, metadata !DIExpression()) #32, !dbg !1363
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !1366
  br i1 %69, label %70, label %79, !dbg !1367

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1368
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1369
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !292, metadata !DIExpression()) #32, !dbg !1370
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1342, metadata !DIExpression()) #32, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %26, metadata !1350, metadata !DIExpression()) #32, !dbg !1373
  call void @llvm.dbg.value(metadata i32 0, metadata !1353, metadata !DIExpression()) #32, !dbg !1373
  call void @llvm.dbg.value(metadata i64 8, metadata !1354, metadata !DIExpression()) #32, !dbg !1373
  store i64 0, i64* %11, align 8, !dbg !1375
  call void @llvm.dbg.value(metadata i32* %10, metadata !291, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1363
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1376
  %72 = icmp eq i64 %71, 3, !dbg !1377
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !291, metadata !DIExpression()) #32, !dbg !1363
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1378
  %76 = icmp eq i32 %37, 9, !dbg !1378
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !1378
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1378
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1379
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1262, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %80, metadata !1261, metadata !DIExpression()), !dbg !1316
  br i1 %45, label %97, label %82, !dbg !1380

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1273, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i64 0, metadata !1264, metadata !DIExpression()), !dbg !1316
  %83 = load i8, i8* %80, align 1, !dbg !1382, !tbaa !530
  %84 = icmp eq i8 %83, 0, !dbg !1384
  br i1 %84, label %97, label %85, !dbg !1384

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1273, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i64 %88, metadata !1264, metadata !DIExpression()), !dbg !1316
  %89 = icmp ult i64 %88, %48, !dbg !1385
  br i1 %89, label %90, label %92, !dbg !1388

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1385
  store i8 %86, i8* %91, align 1, !dbg !1385, !tbaa !530
  br label %92, !dbg !1385

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %93, metadata !1264, metadata !DIExpression()), !dbg !1316
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %94, metadata !1273, metadata !DIExpression()), !dbg !1381
  %95 = load i8, i8* %94, align 1, !dbg !1382, !tbaa !530
  %96 = icmp eq i8 %95, 0, !dbg !1384
  br i1 %96, label %97, label %85, !dbg !1384, !llvm.loop !1390

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1392
  call void @llvm.dbg.value(metadata i64 %98, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 1, metadata !1268, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %81, metadata !1266, metadata !DIExpression()), !dbg !1316
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %99, metadata !1267, metadata !DIExpression()), !dbg !1316
  br label %111, !dbg !1394

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1268, metadata !DIExpression()), !dbg !1316
  br label %102, !dbg !1395

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1269, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1316
  br i1 %45, label %102, label %105, !dbg !1396

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1269, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 2, metadata !1258, metadata !DIExpression()), !dbg !1316
  br label %111, !dbg !1397

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1269, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 2, metadata !1258, metadata !DIExpression()), !dbg !1316
  br i1 %45, label %111, label %105, !dbg !1397

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1398
  br i1 %107, label %111, label %108, !dbg !1402

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1398, !tbaa !530
  br label %111, !dbg !1398

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1269, metadata !DIExpression()), !dbg !1316
  br label %111, !dbg !1403

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1404
  unreachable, !dbg !1404

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1392
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %102 ], !dbg !1316
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1316
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1269, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %117, metadata !1267, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %116, metadata !1266, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %115, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %114, metadata !1262, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8* %113, metadata !1261, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 %112, metadata !1258, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1278, metadata !DIExpression()), !dbg !1405
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
  br label %132, !dbg !1406

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1392
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1320
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1405
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1255, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %139, metadata !1278, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1271, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1270, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %135, metadata !1265, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %134, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %133, metadata !1257, metadata !DIExpression()), !dbg !1316
  %141 = icmp eq i64 %133, -1, !dbg !1407
  br i1 %141, label %142, label %146, !dbg !1408

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1409
  %144 = load i8, i8* %143, align 1, !dbg !1409, !tbaa !530
  %145 = icmp eq i8 %144, 0, !dbg !1410
  br i1 %145, label %596, label %148, !dbg !1411

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1412
  br i1 %147, label %596, label %148, !dbg !1411

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1280, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 0, metadata !1283, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 0, metadata !1284, metadata !DIExpression()), !dbg !1413
  br i1 %123, label %149, label %163, !dbg !1414

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1416
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1417
  br i1 %151, label %152, label %154, !dbg !1417

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %153, metadata !1257, metadata !DIExpression()), !dbg !1316
  br label %154, !dbg !1419

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1419
  call void @llvm.dbg.value(metadata i64 %155, metadata !1257, metadata !DIExpression()), !dbg !1316
  %156 = icmp ugt i64 %150, %155, !dbg !1420
  br i1 %156, label %163, label %157, !dbg !1421

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1422
  call void @llvm.dbg.value(metadata i8* %158, metadata !1423, metadata !DIExpression()) #32, !dbg !1428
  call void @llvm.dbg.value(metadata i8* %116, metadata !1426, metadata !DIExpression()) #32, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %117, metadata !1427, metadata !DIExpression()) #32, !dbg !1428
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1430
  %160 = icmp ne i32 %159, 0, !dbg !1431
  %161 = or i1 %160, %125, !dbg !1432
  %162 = xor i1 %160, true, !dbg !1432
  br i1 %161, label %163, label %647, !dbg !1432

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %164, metadata !1257, metadata !DIExpression()), !dbg !1316
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1433
  %167 = load i8, i8* %166, align 1, !dbg !1433, !tbaa !530
  call void @llvm.dbg.value(metadata i8 %167, metadata !1285, metadata !DIExpression()), !dbg !1413
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
  ], !dbg !1434

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1435

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1436

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1283, metadata !DIExpression()), !dbg !1413
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1440
  br i1 %171, label %188, label %172, !dbg !1440

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1442
  br i1 %173, label %174, label %176, !dbg !1446

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1442
  store i8 39, i8* %175, align 1, !dbg !1442, !tbaa !530
  br label %176, !dbg !1442

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %177, metadata !1264, metadata !DIExpression()), !dbg !1316
  %178 = icmp ult i64 %177, %140, !dbg !1447
  br i1 %178, label %179, label %181, !dbg !1450

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1447
  store i8 36, i8* %180, align 1, !dbg !1447, !tbaa !530
  br label %181, !dbg !1447

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %182, metadata !1264, metadata !DIExpression()), !dbg !1316
  %183 = icmp ult i64 %182, %140, !dbg !1451
  br i1 %183, label %184, label %186, !dbg !1454

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1451
  store i8 39, i8* %185, align 1, !dbg !1451, !tbaa !530
  br label %186, !dbg !1451

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %187, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 1, metadata !1272, metadata !DIExpression()), !dbg !1316
  br label %188, !dbg !1455

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1316
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %189, metadata !1264, metadata !DIExpression()), !dbg !1316
  %191 = icmp ult i64 %189, %140, !dbg !1456
  br i1 %191, label %192, label %194, !dbg !1459

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1456
  store i8 92, i8* %193, align 1, !dbg !1456, !tbaa !530
  br label %194, !dbg !1456

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %195, metadata !1264, metadata !DIExpression()), !dbg !1316
  br i1 %120, label %196, label %499, !dbg !1460

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1462
  %198 = icmp ult i64 %197, %164, !dbg !1463
  br i1 %198, label %199, label %456, !dbg !1464

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1465
  %201 = load i8, i8* %200, align 1, !dbg !1465, !tbaa !530
  %202 = add i8 %201, -48, !dbg !1466
  %203 = icmp ult i8 %202, 10, !dbg !1466
  br i1 %203, label %204, label %456, !dbg !1466

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1467
  br i1 %205, label %206, label %208, !dbg !1471

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1467
  store i8 48, i8* %207, align 1, !dbg !1467, !tbaa !530
  br label %208, !dbg !1467

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1471
  call void @llvm.dbg.value(metadata i64 %209, metadata !1264, metadata !DIExpression()), !dbg !1316
  %210 = icmp ult i64 %209, %140, !dbg !1472
  br i1 %210, label %211, label %213, !dbg !1475

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1472
  store i8 48, i8* %212, align 1, !dbg !1472, !tbaa !530
  br label %213, !dbg !1472

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %214, metadata !1264, metadata !DIExpression()), !dbg !1316
  br label %456, !dbg !1476

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1477

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1478

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1479

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1481

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1483
  %221 = icmp ult i64 %220, %164, !dbg !1484
  br i1 %221, label %222, label %456, !dbg !1485

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1486
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1487
  %225 = load i8, i8* %224, align 1, !dbg !1487, !tbaa !530
  %226 = icmp eq i8 %225, 63, !dbg !1488
  br i1 %226, label %227, label %456, !dbg !1489

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1490
  %229 = load i8, i8* %228, align 1, !dbg !1490, !tbaa !530
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
  ], !dbg !1491

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1492

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1285, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %220, metadata !1278, metadata !DIExpression()), !dbg !1405
  %232 = icmp ult i64 %134, %140, !dbg !1494
  br i1 %232, label %233, label %235, !dbg !1497

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1494
  store i8 63, i8* %234, align 1, !dbg !1494, !tbaa !530
  br label %235, !dbg !1494

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %236, metadata !1264, metadata !DIExpression()), !dbg !1316
  %237 = icmp ult i64 %236, %140, !dbg !1498
  br i1 %237, label %238, label %240, !dbg !1501

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1498
  store i8 34, i8* %239, align 1, !dbg !1498, !tbaa !530
  br label %240, !dbg !1498

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %241, metadata !1264, metadata !DIExpression()), !dbg !1316
  %242 = icmp ult i64 %241, %140, !dbg !1502
  br i1 %242, label %243, label %245, !dbg !1505

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1502
  store i8 34, i8* %244, align 1, !dbg !1502, !tbaa !530
  br label %245, !dbg !1502

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %246, metadata !1264, metadata !DIExpression()), !dbg !1316
  %247 = icmp ult i64 %246, %140, !dbg !1506
  br i1 %247, label %248, label %250, !dbg !1509

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1506
  store i8 63, i8* %249, align 1, !dbg !1506, !tbaa !530
  br label %250, !dbg !1506

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %251, metadata !1264, metadata !DIExpression()), !dbg !1316
  br label %456, !dbg !1510

252:                                              ; preds = %163
  br label %263, !dbg !1511

253:                                              ; preds = %163
  br label %263, !dbg !1512

254:                                              ; preds = %163
  br label %261, !dbg !1513

255:                                              ; preds = %163
  br label %261, !dbg !1514

256:                                              ; preds = %163
  br label %263, !dbg !1515

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1516

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1517

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1520

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1522

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1523
  call void @llvm.dbg.label(metadata !1310), !dbg !1524
  br i1 %128, label %263, label %638, !dbg !1525

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1523
  call void @llvm.dbg.label(metadata !1312), !dbg !1527
  br i1 %118, label %510, label %467, !dbg !1528

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1529

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1530, !tbaa !530
  %268 = icmp eq i8 %267, 0, !dbg !1532
  br i1 %268, label %269, label %456, !dbg !1533

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1534
  br i1 %270, label %271, label %456, !dbg !1536

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1284, metadata !DIExpression()), !dbg !1413
  br label %272, !dbg !1537

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1284, metadata !DIExpression()), !dbg !1413
  br i1 %126, label %274, label %456, !dbg !1538

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1540

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1270, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 1, metadata !1284, metadata !DIExpression()), !dbg !1413
  br i1 %126, label %276, label %456, !dbg !1541

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1542

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1545
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1547
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1547
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %282, metadata !1255, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %281, metadata !1265, metadata !DIExpression()), !dbg !1316
  %283 = icmp ult i64 %134, %282, !dbg !1548
  br i1 %283, label %284, label %286, !dbg !1551

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1548
  store i8 39, i8* %285, align 1, !dbg !1548, !tbaa !530
  br label %286, !dbg !1548

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %287, metadata !1264, metadata !DIExpression()), !dbg !1316
  %288 = icmp ult i64 %287, %282, !dbg !1552
  br i1 %288, label %289, label %291, !dbg !1555

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1552
  store i8 92, i8* %290, align 1, !dbg !1552, !tbaa !530
  br label %291, !dbg !1552

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %292, metadata !1264, metadata !DIExpression()), !dbg !1316
  %293 = icmp ult i64 %292, %282, !dbg !1556
  br i1 %293, label %294, label %296, !dbg !1559

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1556
  store i8 39, i8* %295, align 1, !dbg !1556, !tbaa !530
  br label %296, !dbg !1556

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %297, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1272, metadata !DIExpression()), !dbg !1316
  br label %456, !dbg !1560

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1561

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1286, metadata !DIExpression()), !dbg !1562
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1563
  %301 = load i16*, i16** %300, align 8, !dbg !1563, !tbaa !435
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1563
  %304 = load i16, i16* %303, align 2, !dbg !1563, !tbaa !555
  %305 = and i16 %304, 16384, !dbg !1563
  %306 = icmp ne i16 %305, 0, !dbg !1565
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 %349, metadata !1286, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 %312, metadata !1257, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i1 %350, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1413
  br label %352, !dbg !1566

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1567
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1290, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1342, metadata !DIExpression()) #32, !dbg !1569
  call void @llvm.dbg.value(metadata i8* %32, metadata !1350, metadata !DIExpression()) #32, !dbg !1571
  call void @llvm.dbg.value(metadata i32 0, metadata !1353, metadata !DIExpression()) #32, !dbg !1571
  call void @llvm.dbg.value(metadata i64 8, metadata !1354, metadata !DIExpression()) #32, !dbg !1571
  store i64 0, i64* %14, align 8, !dbg !1573
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8 1, metadata !1289, metadata !DIExpression()), !dbg !1562
  %308 = icmp eq i64 %164, -1, !dbg !1574
  br i1 %308, label %309, label %311, !dbg !1576

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %310, metadata !1257, metadata !DIExpression()), !dbg !1316
  br label %311, !dbg !1578

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1413
  call void @llvm.dbg.value(metadata i64 %312, metadata !1257, metadata !DIExpression()), !dbg !1316
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1579
  %313 = sub i64 %312, %139, !dbg !1580
  call void @llvm.dbg.value(metadata i32* %16, metadata !1293, metadata !DIExpression(DW_OP_deref)), !dbg !1581
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %314, metadata !1297, metadata !DIExpression()), !dbg !1581
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1583

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression()), !dbg !1562
  %316 = icmp ugt i64 %312, %139, !dbg !1584
  br i1 %316, label %319, label %317, !dbg !1586

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1587
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %349, metadata !1286, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 %312, metadata !1257, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i1 %350, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1413
  br label %352, !dbg !1566

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1289, metadata !DIExpression()), !dbg !1562
  br label %346, !dbg !1589

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1286, metadata !DIExpression()), !dbg !1562
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1591
  %323 = load i8, i8* %322, align 1, !dbg !1591, !tbaa !530
  %324 = icmp eq i8 %323, 0, !dbg !1586
  br i1 %324, label %348, label %325, !dbg !1592

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1593
  call void @llvm.dbg.value(metadata i64 %326, metadata !1286, metadata !DIExpression()), !dbg !1562
  %327 = add i64 %326, %139, !dbg !1594
  %328 = icmp eq i64 %326, %313, !dbg !1584
  br i1 %328, label %348, label %319, !dbg !1586, !llvm.loop !1595

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1596
  call void @llvm.dbg.value(metadata i64 1, metadata !1298, metadata !DIExpression()), !dbg !1597
  br i1 %331, label %332, label %340, !dbg !1596

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1298, metadata !DIExpression()), !dbg !1597
  %334 = add i64 %333, %139, !dbg !1598
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1600
  %336 = load i8, i8* %335, align 1, !dbg !1600, !tbaa !530
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1601

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %338, metadata !1298, metadata !DIExpression()), !dbg !1597
  %339 = icmp eq i64 %338, %314, !dbg !1603
  br i1 %339, label %340, label %332, !dbg !1604, !llvm.loop !1605

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1607, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %341, metadata !1293, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i32 %341, metadata !1609, metadata !DIExpression()) #32, !dbg !1617
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1619
  %343 = icmp ne i32 %342, 0, !dbg !1620
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 %314, metadata !1286, metadata !DIExpression()), !dbg !1562
  br label %348, !dbg !1621

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1587
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1588
  call void @llvm.dbg.label(metadata !1315), !dbg !1622
  %345 = select i1 %118, i32 4, i32 2, !dbg !1623
  br label %643, !dbg !1623

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1587
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %349, metadata !1286, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 %312, metadata !1257, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i1 %350, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1413
  br label %352, !dbg !1566

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1289, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1587
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %349, metadata !1286, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 %312, metadata !1257, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i1 %350, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1413
  %351 = icmp ugt i64 %349, 1, !dbg !1625
  br i1 %351, label %357, label %352, !dbg !1566

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1626
  br i1 %356, label %456, label %357, !dbg !1626

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %361, metadata !1306, metadata !DIExpression()), !dbg !1628
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1629

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1316
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1405
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1630
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 %369, metadata !1285, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 %368, metadata !1283, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %366, metadata !1278, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %364, metadata !1264, metadata !DIExpression()), !dbg !1316
  br i1 %362, label %414, label %370, !dbg !1631

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1636

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1283, metadata !DIExpression()), !dbg !1413
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1639
  br i1 %372, label %389, label %373, !dbg !1639

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1641
  br i1 %374, label %375, label %377, !dbg !1645

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1641
  store i8 39, i8* %376, align 1, !dbg !1641, !tbaa !530
  br label %377, !dbg !1641

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %378, metadata !1264, metadata !DIExpression()), !dbg !1316
  %379 = icmp ult i64 %378, %140, !dbg !1646
  br i1 %379, label %380, label %382, !dbg !1649

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1646
  store i8 36, i8* %381, align 1, !dbg !1646, !tbaa !530
  br label %382, !dbg !1646

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %383, metadata !1264, metadata !DIExpression()), !dbg !1316
  %384 = icmp ult i64 %383, %140, !dbg !1650
  br i1 %384, label %385, label %387, !dbg !1653

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1650
  store i8 39, i8* %386, align 1, !dbg !1650, !tbaa !530
  br label %387, !dbg !1650

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %388, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 1, metadata !1272, metadata !DIExpression()), !dbg !1316
  br label %389, !dbg !1654

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1316
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %390, metadata !1264, metadata !DIExpression()), !dbg !1316
  %392 = icmp ult i64 %390, %140, !dbg !1655
  br i1 %392, label %393, label %395, !dbg !1658

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1655
  store i8 92, i8* %394, align 1, !dbg !1655, !tbaa !530
  br label %395, !dbg !1655

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %396, metadata !1264, metadata !DIExpression()), !dbg !1316
  %397 = icmp ult i64 %396, %140, !dbg !1659
  br i1 %397, label %398, label %402, !dbg !1662

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1659
  %400 = or i8 %399, 48, !dbg !1659
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1659
  store i8 %400, i8* %401, align 1, !dbg !1659, !tbaa !530
  br label %402, !dbg !1659

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %403, metadata !1264, metadata !DIExpression()), !dbg !1316
  %404 = icmp ult i64 %403, %140, !dbg !1663
  br i1 %404, label %405, label %410, !dbg !1666

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1663
  %407 = and i8 %406, 7, !dbg !1663
  %408 = or i8 %407, 48, !dbg !1663
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1663
  store i8 %408, i8* %409, align 1, !dbg !1663, !tbaa !530
  br label %410, !dbg !1663

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %411, metadata !1264, metadata !DIExpression()), !dbg !1316
  %412 = and i8 %369, 7, !dbg !1667
  %413 = or i8 %412, 48, !dbg !1668
  call void @llvm.dbg.value(metadata i8 %413, metadata !1285, metadata !DIExpression()), !dbg !1413
  br label %421, !dbg !1669

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1670

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1671
  br i1 %416, label %417, label %419, !dbg !1676

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1671
  store i8 92, i8* %418, align 1, !dbg !1671, !tbaa !530
  br label %419, !dbg !1671

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %420, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1280, metadata !DIExpression()), !dbg !1413
  br label %421, !dbg !1677

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1316
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1413
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 %426, metadata !1285, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 %425, metadata !1283, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %422, metadata !1264, metadata !DIExpression()), !dbg !1316
  %427 = add i64 %366, 1, !dbg !1678
  %428 = icmp ugt i64 %361, %427, !dbg !1680
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1681

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1682
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1682
  br i1 %432, label %433, label %444, !dbg !1682

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1685
  br i1 %434, label %435, label %437, !dbg !1689

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1685
  store i8 39, i8* %436, align 1, !dbg !1685, !tbaa !530
  br label %437, !dbg !1685

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %438, metadata !1264, metadata !DIExpression()), !dbg !1316
  %439 = icmp ult i64 %438, %140, !dbg !1690
  br i1 %439, label %440, label %442, !dbg !1693

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1690
  store i8 39, i8* %441, align 1, !dbg !1690, !tbaa !530
  br label %442, !dbg !1690

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %443, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1272, metadata !DIExpression()), !dbg !1316
  br label %444, !dbg !1694

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1695
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %445, metadata !1264, metadata !DIExpression()), !dbg !1316
  %447 = icmp ult i64 %445, %140, !dbg !1696
  br i1 %447, label %448, label %450, !dbg !1699

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1696
  store i8 %426, i8* %449, align 1, !dbg !1696, !tbaa !530
  br label %450, !dbg !1696

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %451, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %427, metadata !1278, metadata !DIExpression()), !dbg !1405
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1700
  %453 = load i8, i8* %452, align 1, !dbg !1700, !tbaa !530
  call void @llvm.dbg.value(metadata i8 %453, metadata !1285, metadata !DIExpression()), !dbg !1413
  br label %363, !dbg !1701, !llvm.loop !1702

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1285, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i1 %358, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1413
  call void @llvm.dbg.value(metadata i8 %425, metadata !1283, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %366, metadata !1278, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %422, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %360, metadata !1257, metadata !DIExpression()), !dbg !1316
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1705
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1316
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1320
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1405
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1413
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1255, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 %465, metadata !1285, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1284, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1283, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %462, metadata !1278, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1270, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %459, metadata !1265, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %458, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %457, metadata !1257, metadata !DIExpression()), !dbg !1316
  br i1 %121, label %478, label %467, !dbg !1706

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
  br i1 %131, label %479, label %499, !dbg !1708

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1709

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
  %490 = lshr i8 %481, 5, !dbg !1710
  %491 = zext i8 %490 to i64, !dbg !1710
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1711
  %493 = load i32, i32* %492, align 4, !dbg !1711, !tbaa !521
  %494 = and i8 %481, 31, !dbg !1712
  %495 = zext i8 %494 to i32, !dbg !1712
  %496 = shl nuw i32 1, %495, !dbg !1713
  %497 = and i32 %493, %496, !dbg !1713
  %498 = icmp eq i32 %497, 0, !dbg !1713
  br i1 %498, label %499, label %510, !dbg !1714

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
  br i1 %165, label %510, label %546, !dbg !1715

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1705
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1316
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1320
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1716
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1413
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1255, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 %518, metadata !1285, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1284, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %516, metadata !1278, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1270, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %513, metadata !1265, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %512, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %511, metadata !1257, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.label(metadata !1313), !dbg !1717
  br i1 %119, label %638, label %520, !dbg !1718

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1283, metadata !DIExpression()), !dbg !1413
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1720
  br i1 %521, label %538, label %522, !dbg !1720

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1722
  br i1 %523, label %524, label %526, !dbg !1726

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1722
  store i8 39, i8* %525, align 1, !dbg !1722, !tbaa !530
  br label %526, !dbg !1722

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %527, metadata !1264, metadata !DIExpression()), !dbg !1316
  %528 = icmp ult i64 %527, %519, !dbg !1727
  br i1 %528, label %529, label %531, !dbg !1730

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1727
  store i8 36, i8* %530, align 1, !dbg !1727, !tbaa !530
  br label %531, !dbg !1727

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %532, metadata !1264, metadata !DIExpression()), !dbg !1316
  %533 = icmp ult i64 %532, %519, !dbg !1731
  br i1 %533, label %534, label %536, !dbg !1734

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1731
  store i8 39, i8* %535, align 1, !dbg !1731, !tbaa !530
  br label %536, !dbg !1731

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %537, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 1, metadata !1272, metadata !DIExpression()), !dbg !1316
  br label %538, !dbg !1735

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1413
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %539, metadata !1264, metadata !DIExpression()), !dbg !1316
  %541 = icmp ult i64 %539, %519, !dbg !1736
  br i1 %541, label %542, label %544, !dbg !1739

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1736
  store i8 92, i8* %543, align 1, !dbg !1736, !tbaa !530
  br label %544, !dbg !1736

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %556, metadata !1255, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 %555, metadata !1285, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1284, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1283, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %552, metadata !1278, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1270, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %549, metadata !1265, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %548, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %547, metadata !1257, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.label(metadata !1314), !dbg !1740
  br label %570, !dbg !1741

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1705
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1316
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1320
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1716
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1744
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1255, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 %555, metadata !1285, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1284, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 poison, metadata !1283, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %552, metadata !1278, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1270, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %549, metadata !1265, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %548, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %547, metadata !1257, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.label(metadata !1314), !dbg !1740
  %557 = xor i1 %551, true, !dbg !1741
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1741
  br i1 %558, label %570, label %559, !dbg !1741

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1745
  br i1 %560, label %561, label %563, !dbg !1749

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1745
  store i8 39, i8* %562, align 1, !dbg !1745, !tbaa !530
  br label %563, !dbg !1745

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %564, metadata !1264, metadata !DIExpression()), !dbg !1316
  %565 = icmp ult i64 %564, %556, !dbg !1750
  br i1 %565, label %566, label %568, !dbg !1753

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1750
  store i8 39, i8* %567, align 1, !dbg !1750, !tbaa !530
  br label %568, !dbg !1750

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %569, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1272, metadata !DIExpression()), !dbg !1316
  br label %570, !dbg !1754

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1413
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %578, metadata !1264, metadata !DIExpression()), !dbg !1316
  %580 = icmp ult i64 %578, %571, !dbg !1755
  br i1 %580, label %581, label %583, !dbg !1758

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1755
  store i8 %572, i8* %582, align 1, !dbg !1755, !tbaa !530
  br label %583, !dbg !1755

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %584, metadata !1264, metadata !DIExpression()), !dbg !1316
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1759
  call void @llvm.dbg.value(metadata i8 poison, metadata !1271, metadata !DIExpression()), !dbg !1316
  br label %586, !dbg !1760

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1705
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1316
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1320
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1716
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1255, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %593, metadata !1278, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1271, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1270, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %589, metadata !1265, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %588, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %587, metadata !1257, metadata !DIExpression()), !dbg !1316
  %595 = add i64 %593, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %595, metadata !1278, metadata !DIExpression()), !dbg !1405
  br label %132, !dbg !1762, !llvm.loop !1763

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1255, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1271, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8 poison, metadata !1270, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 undef, metadata !1265, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 undef, metadata !1264, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 undef, metadata !1257, metadata !DIExpression()), !dbg !1316
  %597 = icmp eq i64 %134, 0, !dbg !1765
  %598 = and i1 %126, %597, !dbg !1767
  %599 = and i1 %598, %119, !dbg !1767
  br i1 %599, label %638, label %600, !dbg !1767

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1768
  %602 = or i1 %119, %601, !dbg !1768
  %603 = xor i1 %136, true, !dbg !1768
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1768
  br i1 %604, label %612, label %605, !dbg !1768

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1770

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1772
  br label %653, !dbg !1774

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1775
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1777
  br i1 %611, label %36, label %612, !dbg !1777

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1778
  %615 = or i1 %614, %613, !dbg !1780
  br i1 %615, label %631, label %616, !dbg !1780

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1266, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %134, metadata !1264, metadata !DIExpression()), !dbg !1316
  %617 = load i8, i8* %116, align 1, !dbg !1781, !tbaa !530
  %618 = icmp eq i8 %617, 0, !dbg !1784
  br i1 %618, label %631, label %619, !dbg !1784

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1266, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %622, metadata !1264, metadata !DIExpression()), !dbg !1316
  %623 = icmp ult i64 %622, %140, !dbg !1785
  br i1 %623, label %624, label %626, !dbg !1788

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1785
  store i8 %620, i8* %625, align 1, !dbg !1785, !tbaa !530
  br label %626, !dbg !1785

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %627, metadata !1264, metadata !DIExpression()), !dbg !1316
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1789
  call void @llvm.dbg.value(metadata i8* %628, metadata !1266, metadata !DIExpression()), !dbg !1316
  %629 = load i8, i8* %628, align 1, !dbg !1781, !tbaa !530
  %630 = icmp eq i8 %629, 0, !dbg !1784
  br i1 %630, label %631, label %619, !dbg !1784, !llvm.loop !1790

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1392
  call void @llvm.dbg.value(metadata i64 %632, metadata !1264, metadata !DIExpression()), !dbg !1316
  %633 = icmp ult i64 %632, %140, !dbg !1792
  br i1 %633, label %634, label %653, !dbg !1794

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1795
  store i8 0, i8* %635, align 1, !dbg !1796, !tbaa !530
  br label %653, !dbg !1795

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1315), !dbg !1622
  %637 = icmp eq i32 %112, 2, !dbg !1797
  br i1 %637, label %643, label %647, !dbg !1623

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1315), !dbg !1622
  %641 = icmp eq i32 %112, 2, !dbg !1797
  %642 = select i1 %118, i32 4, i32 2, !dbg !1623
  br i1 %641, label %643, label %647, !dbg !1623

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1623

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1258, metadata !DIExpression()), !dbg !1316
  %651 = and i32 %5, -3, !dbg !1798
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1799
  br label %653, !dbg !1800

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1801
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1802 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1804 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1808, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i64 %1, metadata !1809, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1810, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8* %0, metadata !1812, metadata !DIExpression()) #32, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %1, metadata !1817, metadata !DIExpression()) #32, !dbg !1825
  call void @llvm.dbg.value(metadata i64* null, metadata !1818, metadata !DIExpression()) #32, !dbg !1825
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1819, metadata !DIExpression()) #32, !dbg !1825
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1827
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1827
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1820, metadata !DIExpression()) #32, !dbg !1825
  %6 = tail call i32* @__errno_location() #35, !dbg !1828
  %7 = load i32, i32* %6, align 4, !dbg !1828, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %7, metadata !1821, metadata !DIExpression()) #32, !dbg !1825
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1829
  %9 = load i32, i32* %8, align 4, !dbg !1829, !tbaa !1198
  %10 = or i32 %9, 1, !dbg !1830
  call void @llvm.dbg.value(metadata i32 %10, metadata !1822, metadata !DIExpression()) #32, !dbg !1825
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1831
  %12 = load i32, i32* %11, align 8, !dbg !1831, !tbaa !1147
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1832
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1833
  %15 = load i8*, i8** %14, align 8, !dbg !1833, !tbaa !1220
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1834
  %17 = load i8*, i8** %16, align 8, !dbg !1834, !tbaa !1223
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !1835
  %19 = add i64 %18, 1, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %19, metadata !1823, metadata !DIExpression()) #32, !dbg !1825
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !1837
  call void @llvm.dbg.value(metadata i8* %20, metadata !1824, metadata !DIExpression()) #32, !dbg !1825
  %21 = load i32, i32* %11, align 8, !dbg !1838, !tbaa !1147
  %22 = load i8*, i8** %14, align 8, !dbg !1839, !tbaa !1220
  %23 = load i8*, i8** %16, align 8, !dbg !1840, !tbaa !1223
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !1841
  store i32 %7, i32* %6, align 4, !dbg !1842, !tbaa !521
  ret i8* %20, !dbg !1843
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1813 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1812, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %1, metadata !1817, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64* %2, metadata !1818, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1819, metadata !DIExpression()), !dbg !1844
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1845
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1820, metadata !DIExpression()), !dbg !1844
  %7 = tail call i32* @__errno_location() #35, !dbg !1846
  %8 = load i32, i32* %7, align 4, !dbg !1846, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %8, metadata !1821, metadata !DIExpression()), !dbg !1844
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1847
  %10 = load i32, i32* %9, align 4, !dbg !1847, !tbaa !1198
  %11 = icmp eq i64* %2, null, !dbg !1848
  %12 = zext i1 %11 to i32, !dbg !1848
  %13 = or i32 %10, %12, !dbg !1849
  call void @llvm.dbg.value(metadata i32 %13, metadata !1822, metadata !DIExpression()), !dbg !1844
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1850
  %15 = load i32, i32* %14, align 8, !dbg !1850, !tbaa !1147
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1851
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1852
  %18 = load i8*, i8** %17, align 8, !dbg !1852, !tbaa !1220
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1853
  %20 = load i8*, i8** %19, align 8, !dbg !1853, !tbaa !1223
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1854
  %22 = add i64 %21, 1, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %22, metadata !1823, metadata !DIExpression()), !dbg !1844
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !1856
  call void @llvm.dbg.value(metadata i8* %23, metadata !1824, metadata !DIExpression()), !dbg !1844
  %24 = load i32, i32* %14, align 8, !dbg !1857, !tbaa !1147
  %25 = load i8*, i8** %17, align 8, !dbg !1858, !tbaa !1220
  %26 = load i8*, i8** %19, align 8, !dbg !1859, !tbaa !1223
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1860
  store i32 %8, i32* %7, align 4, !dbg !1861, !tbaa !521
  br i1 %11, label %29, label %28, !dbg !1862

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1863, !tbaa !1865
  br label %29, !dbg !1866

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1867
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1868 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1873, !tbaa !435
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1870, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !1875
  %2 = load i32, i32* @nslots, align 4, !tbaa !521
  call void @llvm.dbg.value(metadata i32 1, metadata !1871, metadata !DIExpression()), !dbg !1875
  %3 = icmp sgt i32 %2, 1, !dbg !1876
  br i1 %3, label %4, label %6, !dbg !1878

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1876
  br label %10, !dbg !1878

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1879
  %8 = load i8*, i8** %7, align 8, !dbg !1879, !tbaa !1881
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1883
  br i1 %9, label %17, label %16, !dbg !1884

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1871, metadata !DIExpression()), !dbg !1875
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1885
  %13 = load i8*, i8** %12, align 8, !dbg !1885, !tbaa !1881
  tail call void @free(i8* noundef %13) #32, !dbg !1886
  %14 = add nuw nsw i64 %11, 1, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %14, metadata !1871, metadata !DIExpression()), !dbg !1875
  %15 = icmp eq i64 %14, %5, !dbg !1876
  br i1 %15, label %6, label %10, !dbg !1878, !llvm.loop !1888

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !1890
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1892, !tbaa !1893
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1894, !tbaa !1881
  br label %17, !dbg !1895

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1896
  br i1 %18, label %21, label %19, !dbg !1898

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1899
  tail call void @free(i8* noundef %20) #32, !dbg !1901
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1902, !tbaa !435
  br label %21, !dbg !1903

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1904, !tbaa !521
  ret void, !dbg !1905
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1906 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1908, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8* %1, metadata !1909, metadata !DIExpression()), !dbg !1910
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1911
  ret i8* %3, !dbg !1912
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1913 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1917, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %1, metadata !1918, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %2, metadata !1919, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1920, metadata !DIExpression()), !dbg !1933
  %6 = tail call i32* @__errno_location() #35, !dbg !1934
  %7 = load i32, i32* %6, align 4, !dbg !1934, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %7, metadata !1921, metadata !DIExpression()), !dbg !1933
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1935, !tbaa !435
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1922, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1923, metadata !DIExpression()), !dbg !1933
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1936
  br i1 %9, label %10, label %11, !dbg !1936

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !1938
  unreachable, !dbg !1938

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1939, !tbaa !521
  %13 = icmp sgt i32 %12, %0, !dbg !1940
  br i1 %13, label %36, label %14, !dbg !1941

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1942
  call void @llvm.dbg.value(metadata i1 %15, metadata !1924, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1943
  %16 = bitcast i64* %5 to i8*, !dbg !1944
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1944
  %17 = sext i32 %12 to i64, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %17, metadata !1927, metadata !DIExpression()), !dbg !1943
  store i64 %17, i64* %5, align 8, !dbg !1946, !tbaa !1865
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !1947
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1947
  %20 = add nuw nsw i32 %0, 1, !dbg !1948
  %21 = sub i32 %20, %12, !dbg !1949
  %22 = sext i32 %21 to i64, !dbg !1950
  call void @llvm.dbg.value(metadata i64* %5, metadata !1927, metadata !DIExpression(DW_OP_deref)), !dbg !1943
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !1951
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1951
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1922, metadata !DIExpression()), !dbg !1933
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1952, !tbaa !435
  br i1 %15, label %25, label %26, !dbg !1953

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1954, !tbaa.struct !1956
  br label %26, !dbg !1957

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !1958, !tbaa !521
  %28 = sext i32 %27 to i64, !dbg !1959
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1959
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1960
  %31 = load i64, i64* %5, align 8, !dbg !1961, !tbaa !1865
  call void @llvm.dbg.value(metadata i64 %31, metadata !1927, metadata !DIExpression()), !dbg !1943
  %32 = sub nsw i64 %31, %28, !dbg !1962
  %33 = shl i64 %32, 4, !dbg !1963
  call void @llvm.dbg.value(metadata i8* %30, metadata !1350, metadata !DIExpression()) #32, !dbg !1964
  call void @llvm.dbg.value(metadata i32 0, metadata !1353, metadata !DIExpression()) #32, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %33, metadata !1354, metadata !DIExpression()) #32, !dbg !1964
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !1966
  %34 = load i64, i64* %5, align 8, !dbg !1967, !tbaa !1865
  call void @llvm.dbg.value(metadata i64 %34, metadata !1927, metadata !DIExpression()), !dbg !1943
  %35 = trunc i64 %34 to i32, !dbg !1967
  store i32 %35, i32* @nslots, align 4, !dbg !1968, !tbaa !521
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1969
  br label %36, !dbg !1970

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1933
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1922, metadata !DIExpression()), !dbg !1933
  %38 = zext i32 %0 to i64, !dbg !1971
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !1972
  %40 = load i64, i64* %39, align 8, !dbg !1972, !tbaa !1893
  call void @llvm.dbg.value(metadata i64 %40, metadata !1928, metadata !DIExpression()), !dbg !1973
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !1974
  %42 = load i8*, i8** %41, align 8, !dbg !1974, !tbaa !1881
  call void @llvm.dbg.value(metadata i8* %42, metadata !1930, metadata !DIExpression()), !dbg !1973
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1975
  %44 = load i32, i32* %43, align 4, !dbg !1975, !tbaa !1198
  %45 = or i32 %44, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i32 %45, metadata !1931, metadata !DIExpression()), !dbg !1973
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1977
  %47 = load i32, i32* %46, align 8, !dbg !1977, !tbaa !1147
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1978
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1979
  %50 = load i8*, i8** %49, align 8, !dbg !1979, !tbaa !1220
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1980
  %52 = load i8*, i8** %51, align 8, !dbg !1980, !tbaa !1223
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !1981
  call void @llvm.dbg.value(metadata i64 %53, metadata !1932, metadata !DIExpression()), !dbg !1973
  %54 = icmp ugt i64 %40, %53, !dbg !1982
  br i1 %54, label %65, label %55, !dbg !1984

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %56, metadata !1928, metadata !DIExpression()), !dbg !1973
  store i64 %56, i64* %39, align 8, !dbg !1987, !tbaa !1893
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1988
  br i1 %57, label %59, label %58, !dbg !1990

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !1991
  br label %59, !dbg !1991

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !1992
  call void @llvm.dbg.value(metadata i8* %60, metadata !1930, metadata !DIExpression()), !dbg !1973
  store i8* %60, i8** %41, align 8, !dbg !1993, !tbaa !1881
  %61 = load i32, i32* %46, align 8, !dbg !1994, !tbaa !1147
  %62 = load i8*, i8** %49, align 8, !dbg !1995, !tbaa !1220
  %63 = load i8*, i8** %51, align 8, !dbg !1996, !tbaa !1223
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !1997
  br label %65, !dbg !1998

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !1973
  call void @llvm.dbg.value(metadata i8* %66, metadata !1930, metadata !DIExpression()), !dbg !1973
  store i32 %7, i32* %6, align 4, !dbg !1999, !tbaa !521
  ret i8* %66, !dbg !2000
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2001 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %1, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %2, metadata !2007, metadata !DIExpression()), !dbg !2008
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2009
  ret i8* %4, !dbg !2010
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2011 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2013, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 0, metadata !1908, metadata !DIExpression()) #32, !dbg !2015
  call void @llvm.dbg.value(metadata i8* %0, metadata !1909, metadata !DIExpression()) #32, !dbg !2015
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2017
  ret i8* %2, !dbg !2018
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2019 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %1, metadata !2024, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 0, metadata !2005, metadata !DIExpression()) #32, !dbg !2026
  call void @llvm.dbg.value(metadata i8* %0, metadata !2006, metadata !DIExpression()) #32, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %1, metadata !2007, metadata !DIExpression()) #32, !dbg !2026
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2028
  ret i8* %3, !dbg !2029
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2030 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2034, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i32 %1, metadata !2035, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8* %2, metadata !2036, metadata !DIExpression()), !dbg !2038
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2039
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2039
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2037, metadata !DIExpression()), !dbg !2040
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041), !dbg !2044
  call void @llvm.dbg.value(metadata i32 %1, metadata !2045, metadata !DIExpression()) #32, !dbg !2051
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2050, metadata !DIExpression()) #32, !dbg !2053
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2053, !alias.scope !2041
  %6 = icmp eq i32 %1, 10, !dbg !2054
  br i1 %6, label %7, label %8, !dbg !2056

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2057, !noalias !2041
  unreachable, !dbg !2057

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2058
  store i32 %1, i32* %9, align 8, !dbg !2059, !tbaa !1147, !alias.scope !2041
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2060
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2061
  ret i8* %10, !dbg !2062
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2063 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2067, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %1, metadata !2068, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %2, metadata !2069, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %3, metadata !2070, metadata !DIExpression()), !dbg !2072
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2073
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2073
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2071, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %1, metadata !2045, metadata !DIExpression()) #32, !dbg !2079
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2050, metadata !DIExpression()) #32, !dbg !2081
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2081, !alias.scope !2075
  %7 = icmp eq i32 %1, 10, !dbg !2082
  br i1 %7, label %8, label %9, !dbg !2083

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2084, !noalias !2075
  unreachable, !dbg !2084

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2085
  store i32 %1, i32* %10, align 8, !dbg !2086, !tbaa !1147, !alias.scope !2075
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2087
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2088
  ret i8* %11, !dbg !2089
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2090 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2094, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8* %1, metadata !2095, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i32 0, metadata !2034, metadata !DIExpression()) #32, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %0, metadata !2035, metadata !DIExpression()) #32, !dbg !2097
  call void @llvm.dbg.value(metadata i8* %1, metadata !2036, metadata !DIExpression()) #32, !dbg !2097
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2099
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2099
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2037, metadata !DIExpression()) #32, !dbg !2100
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2101) #32, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %0, metadata !2045, metadata !DIExpression()) #32, !dbg !2105
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2050, metadata !DIExpression()) #32, !dbg !2107
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2107, !alias.scope !2101
  %5 = icmp eq i32 %0, 10, !dbg !2108
  br i1 %5, label %6, label %7, !dbg !2109

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2110, !noalias !2101
  unreachable, !dbg !2110

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2111
  store i32 %0, i32* %8, align 8, !dbg !2112, !tbaa !1147, !alias.scope !2101
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2113
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2114
  ret i8* %9, !dbg !2115
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2116 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2120, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %1, metadata !2121, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %2, metadata !2122, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32 0, metadata !2067, metadata !DIExpression()) #32, !dbg !2124
  call void @llvm.dbg.value(metadata i32 %0, metadata !2068, metadata !DIExpression()) #32, !dbg !2124
  call void @llvm.dbg.value(metadata i8* %1, metadata !2069, metadata !DIExpression()) #32, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %2, metadata !2070, metadata !DIExpression()) #32, !dbg !2124
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2126
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2126
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2071, metadata !DIExpression()) #32, !dbg !2127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2128) #32, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %0, metadata !2045, metadata !DIExpression()) #32, !dbg !2132
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2050, metadata !DIExpression()) #32, !dbg !2134
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2134, !alias.scope !2128
  %6 = icmp eq i32 %0, 10, !dbg !2135
  br i1 %6, label %7, label %8, !dbg !2136

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2137, !noalias !2128
  unreachable, !dbg !2137

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2138
  store i32 %0, i32* %9, align 8, !dbg !2139, !tbaa !1147, !alias.scope !2128
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2140
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2141
  ret i8* %10, !dbg !2142
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2143 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2147, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i64 %1, metadata !2148, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8 %2, metadata !2149, metadata !DIExpression()), !dbg !2151
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2152
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2152
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2150, metadata !DIExpression()), !dbg !2153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2154, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1165, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 %2, metadata !1166, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 1, metadata !1167, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 %2, metadata !1168, metadata !DIExpression()), !dbg !2156
  %6 = lshr i8 %2, 5, !dbg !2158
  %7 = zext i8 %6 to i64, !dbg !2158
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2159
  call void @llvm.dbg.value(metadata i32* %8, metadata !1169, metadata !DIExpression()), !dbg !2156
  %9 = and i8 %2, 31, !dbg !2160
  %10 = zext i8 %9 to i32, !dbg !2160
  call void @llvm.dbg.value(metadata i32 %10, metadata !1171, metadata !DIExpression()), !dbg !2156
  %11 = load i32, i32* %8, align 4, !dbg !2161, !tbaa !521
  %12 = lshr i32 %11, %10, !dbg !2162
  %13 = and i32 %12, 1, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %13, metadata !1172, metadata !DIExpression()), !dbg !2156
  %14 = xor i32 %13, 1, !dbg !2164
  %15 = shl i32 %14, %10, !dbg !2165
  %16 = xor i32 %15, %11, !dbg !2166
  store i32 %16, i32* %8, align 4, !dbg !2166, !tbaa !521
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2167
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2168
  ret i8* %17, !dbg !2169
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2170 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2174, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %1, metadata !2175, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %0, metadata !2147, metadata !DIExpression()) #32, !dbg !2177
  call void @llvm.dbg.value(metadata i64 -1, metadata !2148, metadata !DIExpression()) #32, !dbg !2177
  call void @llvm.dbg.value(metadata i8 %1, metadata !2149, metadata !DIExpression()) #32, !dbg !2177
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2179
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2179
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2150, metadata !DIExpression()) #32, !dbg !2180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2181, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1165, metadata !DIExpression()) #32, !dbg !2182
  call void @llvm.dbg.value(metadata i8 %1, metadata !1166, metadata !DIExpression()) #32, !dbg !2182
  call void @llvm.dbg.value(metadata i32 1, metadata !1167, metadata !DIExpression()) #32, !dbg !2182
  call void @llvm.dbg.value(metadata i8 %1, metadata !1168, metadata !DIExpression()) #32, !dbg !2182
  %5 = lshr i8 %1, 5, !dbg !2184
  %6 = zext i8 %5 to i64, !dbg !2184
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2185
  call void @llvm.dbg.value(metadata i32* %7, metadata !1169, metadata !DIExpression()) #32, !dbg !2182
  %8 = and i8 %1, 31, !dbg !2186
  %9 = zext i8 %8 to i32, !dbg !2186
  call void @llvm.dbg.value(metadata i32 %9, metadata !1171, metadata !DIExpression()) #32, !dbg !2182
  %10 = load i32, i32* %7, align 4, !dbg !2187, !tbaa !521
  %11 = lshr i32 %10, %9, !dbg !2188
  %12 = and i32 %11, 1, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %12, metadata !1172, metadata !DIExpression()) #32, !dbg !2182
  %13 = xor i32 %12, 1, !dbg !2190
  %14 = shl i32 %13, %9, !dbg !2191
  %15 = xor i32 %14, %10, !dbg !2192
  store i32 %15, i32* %7, align 4, !dbg !2192, !tbaa !521
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2193
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2194
  ret i8* %16, !dbg !2195
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2196 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2198, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* %0, metadata !2174, metadata !DIExpression()) #32, !dbg !2200
  call void @llvm.dbg.value(metadata i8 58, metadata !2175, metadata !DIExpression()) #32, !dbg !2200
  call void @llvm.dbg.value(metadata i8* %0, metadata !2147, metadata !DIExpression()) #32, !dbg !2202
  call void @llvm.dbg.value(metadata i64 -1, metadata !2148, metadata !DIExpression()) #32, !dbg !2202
  call void @llvm.dbg.value(metadata i8 58, metadata !2149, metadata !DIExpression()) #32, !dbg !2202
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2204
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2204
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2150, metadata !DIExpression()) #32, !dbg !2205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2206, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1165, metadata !DIExpression()) #32, !dbg !2207
  call void @llvm.dbg.value(metadata i8 58, metadata !1166, metadata !DIExpression()) #32, !dbg !2207
  call void @llvm.dbg.value(metadata i32 1, metadata !1167, metadata !DIExpression()) #32, !dbg !2207
  call void @llvm.dbg.value(metadata i8 58, metadata !1168, metadata !DIExpression()) #32, !dbg !2207
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2209
  call void @llvm.dbg.value(metadata i32* %4, metadata !1169, metadata !DIExpression()) #32, !dbg !2207
  call void @llvm.dbg.value(metadata i32 26, metadata !1171, metadata !DIExpression()) #32, !dbg !2207
  %5 = load i32, i32* %4, align 4, !dbg !2210, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %5, metadata !1172, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2207
  %6 = or i32 %5, 67108864, !dbg !2211
  store i32 %6, i32* %4, align 4, !dbg !2211, !tbaa !521
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2213
  ret i8* %7, !dbg !2214
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2215 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2217, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i64 %1, metadata !2218, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8* %0, metadata !2147, metadata !DIExpression()) #32, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %1, metadata !2148, metadata !DIExpression()) #32, !dbg !2220
  call void @llvm.dbg.value(metadata i8 58, metadata !2149, metadata !DIExpression()) #32, !dbg !2220
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2222
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2222
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2150, metadata !DIExpression()) #32, !dbg !2223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2224, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1165, metadata !DIExpression()) #32, !dbg !2225
  call void @llvm.dbg.value(metadata i8 58, metadata !1166, metadata !DIExpression()) #32, !dbg !2225
  call void @llvm.dbg.value(metadata i32 1, metadata !1167, metadata !DIExpression()) #32, !dbg !2225
  call void @llvm.dbg.value(metadata i8 58, metadata !1168, metadata !DIExpression()) #32, !dbg !2225
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2227
  call void @llvm.dbg.value(metadata i32* %5, metadata !1169, metadata !DIExpression()) #32, !dbg !2225
  call void @llvm.dbg.value(metadata i32 26, metadata !1171, metadata !DIExpression()) #32, !dbg !2225
  %6 = load i32, i32* %5, align 4, !dbg !2228, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %6, metadata !1172, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2225
  %7 = or i32 %6, 67108864, !dbg !2229
  store i32 %7, i32* %5, align 4, !dbg !2229, !tbaa !521
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2230
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2231
  ret i8* %8, !dbg !2232
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2233 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %1, metadata !2236, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8* %2, metadata !2237, metadata !DIExpression()), !dbg !2239
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2240
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2240
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2238, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i32 %1, metadata !2045, metadata !DIExpression()) #32, !dbg !2242
  call void @llvm.dbg.value(metadata i32 0, metadata !2050, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2242
  %6 = icmp eq i32 %1, 10, !dbg !2244
  br i1 %6, label %7, label %8, !dbg !2245

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2246, !noalias !2247
  unreachable, !dbg !2246

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2050, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2242
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2250
  store i32 %1, i32* %9, align 8, !dbg !2250, !tbaa.struct !2155
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2250
  %11 = bitcast i32* %10 to i8*, !dbg !2250
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2250
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1165, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 58, metadata !1166, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i32 1, metadata !1167, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 58, metadata !1168, metadata !DIExpression()), !dbg !2251
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2253
  call void @llvm.dbg.value(metadata i32* %12, metadata !1169, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i32 26, metadata !1171, metadata !DIExpression()), !dbg !2251
  %13 = load i32, i32* %12, align 4, !dbg !2254, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %13, metadata !1172, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2251
  %14 = or i32 %13, 67108864, !dbg !2255
  store i32 %14, i32* %12, align 4, !dbg !2255, !tbaa !521
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2256
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2257
  ret i8* %15, !dbg !2258
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2259 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2263, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %1, metadata !2264, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %2, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %3, metadata !2266, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %0, metadata !2268, metadata !DIExpression()) #32, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %1, metadata !2273, metadata !DIExpression()) #32, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %2, metadata !2274, metadata !DIExpression()) #32, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %3, metadata !2275, metadata !DIExpression()) #32, !dbg !2278
  call void @llvm.dbg.value(metadata i64 -1, metadata !2276, metadata !DIExpression()) #32, !dbg !2278
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2280
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2280
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2277, metadata !DIExpression()) #32, !dbg !2281
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2282, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1205, metadata !DIExpression()) #32, !dbg !2283
  call void @llvm.dbg.value(metadata i8* %1, metadata !1206, metadata !DIExpression()) #32, !dbg !2283
  call void @llvm.dbg.value(metadata i8* %2, metadata !1207, metadata !DIExpression()) #32, !dbg !2283
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1205, metadata !DIExpression()) #32, !dbg !2283
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2285
  store i32 10, i32* %7, align 8, !dbg !2286, !tbaa !1147
  %8 = icmp ne i8* %1, null, !dbg !2287
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2288
  br i1 %10, label %12, label %11, !dbg !2288

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2289
  unreachable, !dbg !2289

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2290
  store i8* %1, i8** %13, align 8, !dbg !2291, !tbaa !1220
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2292
  store i8* %2, i8** %14, align 8, !dbg !2293, !tbaa !1223
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2294
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2295
  ret i8* %15, !dbg !2296
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2269 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2268, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8* %1, metadata !2273, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8* %2, metadata !2274, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8* %3, metadata !2275, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i64 %4, metadata !2276, metadata !DIExpression()), !dbg !2297
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2298
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2298
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2277, metadata !DIExpression()), !dbg !2299
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2300, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1205, metadata !DIExpression()) #32, !dbg !2301
  call void @llvm.dbg.value(metadata i8* %1, metadata !1206, metadata !DIExpression()) #32, !dbg !2301
  call void @llvm.dbg.value(metadata i8* %2, metadata !1207, metadata !DIExpression()) #32, !dbg !2301
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1205, metadata !DIExpression()) #32, !dbg !2301
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2303
  store i32 10, i32* %8, align 8, !dbg !2304, !tbaa !1147
  %9 = icmp ne i8* %1, null, !dbg !2305
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2306
  br i1 %11, label %13, label %12, !dbg !2306

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2307
  unreachable, !dbg !2307

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2308
  store i8* %1, i8** %14, align 8, !dbg !2309, !tbaa !1220
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2310
  store i8* %2, i8** %15, align 8, !dbg !2311, !tbaa !1223
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2312
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2313
  ret i8* %16, !dbg !2314
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2315 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2319, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* %1, metadata !2320, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* %2, metadata !2321, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 0, metadata !2263, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %0, metadata !2264, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %1, metadata !2265, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %2, metadata !2266, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.dbg.value(metadata i32 0, metadata !2268, metadata !DIExpression()) #32, !dbg !2325
  call void @llvm.dbg.value(metadata i8* %0, metadata !2273, metadata !DIExpression()) #32, !dbg !2325
  call void @llvm.dbg.value(metadata i8* %1, metadata !2274, metadata !DIExpression()) #32, !dbg !2325
  call void @llvm.dbg.value(metadata i8* %2, metadata !2275, metadata !DIExpression()) #32, !dbg !2325
  call void @llvm.dbg.value(metadata i64 -1, metadata !2276, metadata !DIExpression()) #32, !dbg !2325
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2327
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2277, metadata !DIExpression()) #32, !dbg !2328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2329, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1205, metadata !DIExpression()) #32, !dbg !2330
  call void @llvm.dbg.value(metadata i8* %0, metadata !1206, metadata !DIExpression()) #32, !dbg !2330
  call void @llvm.dbg.value(metadata i8* %1, metadata !1207, metadata !DIExpression()) #32, !dbg !2330
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1205, metadata !DIExpression()) #32, !dbg !2330
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2332
  store i32 10, i32* %6, align 8, !dbg !2333, !tbaa !1147
  %7 = icmp ne i8* %0, null, !dbg !2334
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2335
  br i1 %9, label %11, label %10, !dbg !2335

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2336
  unreachable, !dbg !2336

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2337
  store i8* %0, i8** %12, align 8, !dbg !2338, !tbaa !1220
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2339
  store i8* %1, i8** %13, align 8, !dbg !2340, !tbaa !1223
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2341
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2342
  ret i8* %14, !dbg !2343
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2344 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2348, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %1, metadata !2349, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %2, metadata !2350, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %3, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i32 0, metadata !2268, metadata !DIExpression()) #32, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %0, metadata !2273, metadata !DIExpression()) #32, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %1, metadata !2274, metadata !DIExpression()) #32, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %2, metadata !2275, metadata !DIExpression()) #32, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %3, metadata !2276, metadata !DIExpression()) #32, !dbg !2353
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2355
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2355
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2277, metadata !DIExpression()) #32, !dbg !2356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2357, !tbaa.struct !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1205, metadata !DIExpression()) #32, !dbg !2358
  call void @llvm.dbg.value(metadata i8* %0, metadata !1206, metadata !DIExpression()) #32, !dbg !2358
  call void @llvm.dbg.value(metadata i8* %1, metadata !1207, metadata !DIExpression()) #32, !dbg !2358
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1205, metadata !DIExpression()) #32, !dbg !2358
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2360
  store i32 10, i32* %7, align 8, !dbg !2361, !tbaa !1147
  %8 = icmp ne i8* %0, null, !dbg !2362
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2363
  br i1 %10, label %12, label %11, !dbg !2363

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2364
  unreachable, !dbg !2364

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2365
  store i8* %0, i8** %13, align 8, !dbg !2366, !tbaa !1220
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2367
  store i8* %1, i8** %14, align 8, !dbg !2368, !tbaa !1223
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2369
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2370
  ret i8* %15, !dbg !2371
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2372 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2376, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8* %1, metadata !2377, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %2, metadata !2378, metadata !DIExpression()), !dbg !2379
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2380
  ret i8* %4, !dbg !2381
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2382 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2386, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %1, metadata !2387, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 0, metadata !2376, metadata !DIExpression()) #32, !dbg !2389
  call void @llvm.dbg.value(metadata i8* %0, metadata !2377, metadata !DIExpression()) #32, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %1, metadata !2378, metadata !DIExpression()) #32, !dbg !2389
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2391
  ret i8* %3, !dbg !2392
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8* %1, metadata !2398, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i32 %0, metadata !2376, metadata !DIExpression()) #32, !dbg !2400
  call void @llvm.dbg.value(metadata i8* %1, metadata !2377, metadata !DIExpression()) #32, !dbg !2400
  call void @llvm.dbg.value(metadata i64 -1, metadata !2378, metadata !DIExpression()) #32, !dbg !2400
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2402
  ret i8* %3, !dbg !2403
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2404 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 0, metadata !2397, metadata !DIExpression()) #32, !dbg !2410
  call void @llvm.dbg.value(metadata i8* %0, metadata !2398, metadata !DIExpression()) #32, !dbg !2410
  call void @llvm.dbg.value(metadata i32 0, metadata !2376, metadata !DIExpression()) #32, !dbg !2412
  call void @llvm.dbg.value(metadata i8* %0, metadata !2377, metadata !DIExpression()) #32, !dbg !2412
  call void @llvm.dbg.value(metadata i64 -1, metadata !2378, metadata !DIExpression()) #32, !dbg !2412
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2414
  ret i8* %2, !dbg !2415
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2416 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2455, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* %1, metadata !2456, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* %2, metadata !2457, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* %3, metadata !2458, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8** %4, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %5, metadata !2460, metadata !DIExpression()), !dbg !2461
  %7 = icmp eq i8* %1, null, !dbg !2462
  br i1 %7, label %10, label %8, !dbg !2464

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2465
  br label %12, !dbg !2465

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.81, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2466
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.83, i64 0, i64 0), i32 noundef 5) #32, !dbg !2467
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2467
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.84, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2468
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.85, i64 0, i64 0), i32 noundef 5) #32, !dbg !2469
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.86, i64 0, i64 0)) #32, !dbg !2469
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.84, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2470
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
  ], !dbg !2471

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.87, i64 0, i64 0), i32 noundef 5) #32, !dbg !2472
  %21 = load i8*, i8** %4, align 8, !dbg !2472, !tbaa !435
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2472
  br label %147, !dbg !2474

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !2475
  %25 = load i8*, i8** %4, align 8, !dbg !2475, !tbaa !435
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2475
  %27 = load i8*, i8** %26, align 8, !dbg !2475, !tbaa !435
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2475
  br label %147, !dbg !2476

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.89, i64 0, i64 0), i32 noundef 5) #32, !dbg !2477
  %31 = load i8*, i8** %4, align 8, !dbg !2477, !tbaa !435
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2477
  %33 = load i8*, i8** %32, align 8, !dbg !2477, !tbaa !435
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2477
  %35 = load i8*, i8** %34, align 8, !dbg !2477, !tbaa !435
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2477
  br label %147, !dbg !2478

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.90, i64 0, i64 0), i32 noundef 5) #32, !dbg !2479
  %39 = load i8*, i8** %4, align 8, !dbg !2479, !tbaa !435
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2479
  %41 = load i8*, i8** %40, align 8, !dbg !2479, !tbaa !435
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2479
  %43 = load i8*, i8** %42, align 8, !dbg !2479, !tbaa !435
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2479
  %45 = load i8*, i8** %44, align 8, !dbg !2479, !tbaa !435
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2479
  br label %147, !dbg !2480

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !2481
  %49 = load i8*, i8** %4, align 8, !dbg !2481, !tbaa !435
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2481
  %51 = load i8*, i8** %50, align 8, !dbg !2481, !tbaa !435
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2481
  %53 = load i8*, i8** %52, align 8, !dbg !2481, !tbaa !435
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2481
  %55 = load i8*, i8** %54, align 8, !dbg !2481, !tbaa !435
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2481
  %57 = load i8*, i8** %56, align 8, !dbg !2481, !tbaa !435
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2481
  br label %147, !dbg !2482

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.92, i64 0, i64 0), i32 noundef 5) #32, !dbg !2483
  %61 = load i8*, i8** %4, align 8, !dbg !2483, !tbaa !435
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2483
  %63 = load i8*, i8** %62, align 8, !dbg !2483, !tbaa !435
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2483
  %65 = load i8*, i8** %64, align 8, !dbg !2483, !tbaa !435
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2483
  %67 = load i8*, i8** %66, align 8, !dbg !2483, !tbaa !435
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2483
  %69 = load i8*, i8** %68, align 8, !dbg !2483, !tbaa !435
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2483
  %71 = load i8*, i8** %70, align 8, !dbg !2483, !tbaa !435
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2483
  br label %147, !dbg !2484

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.93, i64 0, i64 0), i32 noundef 5) #32, !dbg !2485
  %75 = load i8*, i8** %4, align 8, !dbg !2485, !tbaa !435
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2485
  %77 = load i8*, i8** %76, align 8, !dbg !2485, !tbaa !435
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2485
  %79 = load i8*, i8** %78, align 8, !dbg !2485, !tbaa !435
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2485
  %81 = load i8*, i8** %80, align 8, !dbg !2485, !tbaa !435
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2485
  %83 = load i8*, i8** %82, align 8, !dbg !2485, !tbaa !435
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2485
  %85 = load i8*, i8** %84, align 8, !dbg !2485, !tbaa !435
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2485
  %87 = load i8*, i8** %86, align 8, !dbg !2485, !tbaa !435
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2485
  br label %147, !dbg !2486

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.94, i64 0, i64 0), i32 noundef 5) #32, !dbg !2487
  %91 = load i8*, i8** %4, align 8, !dbg !2487, !tbaa !435
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2487
  %93 = load i8*, i8** %92, align 8, !dbg !2487, !tbaa !435
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2487
  %95 = load i8*, i8** %94, align 8, !dbg !2487, !tbaa !435
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2487
  %97 = load i8*, i8** %96, align 8, !dbg !2487, !tbaa !435
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2487
  %99 = load i8*, i8** %98, align 8, !dbg !2487, !tbaa !435
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2487
  %101 = load i8*, i8** %100, align 8, !dbg !2487, !tbaa !435
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2487
  %103 = load i8*, i8** %102, align 8, !dbg !2487, !tbaa !435
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2487
  %105 = load i8*, i8** %104, align 8, !dbg !2487, !tbaa !435
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2487
  br label %147, !dbg !2488

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.95, i64 0, i64 0), i32 noundef 5) #32, !dbg !2489
  %109 = load i8*, i8** %4, align 8, !dbg !2489, !tbaa !435
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2489
  %111 = load i8*, i8** %110, align 8, !dbg !2489, !tbaa !435
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2489
  %113 = load i8*, i8** %112, align 8, !dbg !2489, !tbaa !435
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2489
  %115 = load i8*, i8** %114, align 8, !dbg !2489, !tbaa !435
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2489
  %117 = load i8*, i8** %116, align 8, !dbg !2489, !tbaa !435
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2489
  %119 = load i8*, i8** %118, align 8, !dbg !2489, !tbaa !435
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2489
  %121 = load i8*, i8** %120, align 8, !dbg !2489, !tbaa !435
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2489
  %123 = load i8*, i8** %122, align 8, !dbg !2489, !tbaa !435
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2489
  %125 = load i8*, i8** %124, align 8, !dbg !2489, !tbaa !435
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2489
  br label %147, !dbg !2490

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.96, i64 0, i64 0), i32 noundef 5) #32, !dbg !2491
  %129 = load i8*, i8** %4, align 8, !dbg !2491, !tbaa !435
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2491
  %131 = load i8*, i8** %130, align 8, !dbg !2491, !tbaa !435
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2491
  %133 = load i8*, i8** %132, align 8, !dbg !2491, !tbaa !435
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2491
  %135 = load i8*, i8** %134, align 8, !dbg !2491, !tbaa !435
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2491
  %137 = load i8*, i8** %136, align 8, !dbg !2491, !tbaa !435
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2491
  %139 = load i8*, i8** %138, align 8, !dbg !2491, !tbaa !435
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2491
  %141 = load i8*, i8** %140, align 8, !dbg !2491, !tbaa !435
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2491
  %143 = load i8*, i8** %142, align 8, !dbg !2491, !tbaa !435
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2491
  %145 = load i8*, i8** %144, align 8, !dbg !2491, !tbaa !435
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2491
  br label %147, !dbg !2492

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2493
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2494 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2498, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8* %1, metadata !2499, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8* %2, metadata !2500, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8* %3, metadata !2501, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8** %4, metadata !2502, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i64 0, metadata !2503, metadata !DIExpression()), !dbg !2504
  br label %6, !dbg !2505

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2507
  call void @llvm.dbg.value(metadata i64 %7, metadata !2503, metadata !DIExpression()), !dbg !2504
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2508
  %9 = load i8*, i8** %8, align 8, !dbg !2508, !tbaa !435
  %10 = icmp eq i8* %9, null, !dbg !2510
  %11 = add i64 %7, 1, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %11, metadata !2503, metadata !DIExpression()), !dbg !2504
  br i1 %10, label %12, label %6, !dbg !2510, !llvm.loop !2512

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2514
  ret void, !dbg !2515
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2516 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2531, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* %2, metadata !2533, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* %3, metadata !2534, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2535, metadata !DIExpression()), !dbg !2540
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2541
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2537, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2539
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2536, metadata !DIExpression()), !dbg !2539
  %11 = load i32, i32* %8, align 8, !dbg !2543
  %12 = icmp sgt i32 %11, -1, !dbg !2543
  br i1 %12, label %20, label %13, !dbg !2543

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2543
  store i32 %14, i32* %8, align 8, !dbg !2543
  %15 = icmp ult i32 %11, -7, !dbg !2543
  br i1 %15, label %16, label %20, !dbg !2543

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2543
  %18 = sext i32 %11 to i64, !dbg !2543
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2543
  br label %24, !dbg !2543

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2543
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2543
  store i8* %23, i8** %10, align 8, !dbg !2543
  br label %24, !dbg !2543

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2543
  %28 = load i8*, i8** %27, align 8, !dbg !2543
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2546
  store i8* %28, i8** %29, align 8, !dbg !2547, !tbaa !435
  %30 = icmp eq i8* %28, null, !dbg !2548
  br i1 %30, label %210, label %31, !dbg !2549

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 1, metadata !2536, metadata !DIExpression()), !dbg !2539
  %32 = icmp sgt i32 %25, -1, !dbg !2543
  br i1 %32, label %40, label %33, !dbg !2543

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2543
  store i32 %34, i32* %8, align 8, !dbg !2543
  %35 = icmp ult i32 %25, -7, !dbg !2543
  br i1 %35, label %36, label %40, !dbg !2543

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2543
  %38 = sext i32 %25 to i64, !dbg !2543
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2543
  br label %44, !dbg !2543

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2543
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2543
  store i8* %43, i8** %10, align 8, !dbg !2543
  br label %44, !dbg !2543

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2543
  %48 = load i8*, i8** %47, align 8, !dbg !2543
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2546
  store i8* %48, i8** %49, align 8, !dbg !2547, !tbaa !435
  %50 = icmp eq i8* %48, null, !dbg !2548
  br i1 %50, label %210, label %51, !dbg !2549

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 2, metadata !2536, metadata !DIExpression()), !dbg !2539
  %52 = icmp sgt i32 %45, -1, !dbg !2543
  br i1 %52, label %60, label %53, !dbg !2543

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2543
  store i32 %54, i32* %8, align 8, !dbg !2543
  %55 = icmp ult i32 %45, -7, !dbg !2543
  br i1 %55, label %56, label %60, !dbg !2543

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2543
  %58 = sext i32 %45 to i64, !dbg !2543
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2543
  br label %64, !dbg !2543

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2543
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2543
  store i8* %63, i8** %10, align 8, !dbg !2543
  br label %64, !dbg !2543

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2543
  %68 = load i8*, i8** %67, align 8, !dbg !2543
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2546
  store i8* %68, i8** %69, align 8, !dbg !2547, !tbaa !435
  %70 = icmp eq i8* %68, null, !dbg !2548
  br i1 %70, label %210, label %71, !dbg !2549

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 3, metadata !2536, metadata !DIExpression()), !dbg !2539
  %72 = icmp sgt i32 %65, -1, !dbg !2543
  br i1 %72, label %80, label %73, !dbg !2543

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2543
  store i32 %74, i32* %8, align 8, !dbg !2543
  %75 = icmp ult i32 %65, -7, !dbg !2543
  br i1 %75, label %76, label %80, !dbg !2543

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2543
  %78 = sext i32 %65 to i64, !dbg !2543
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2543
  br label %84, !dbg !2543

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2543
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2543
  store i8* %83, i8** %10, align 8, !dbg !2543
  br label %84, !dbg !2543

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2543
  %88 = load i8*, i8** %87, align 8, !dbg !2543
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2546
  store i8* %88, i8** %89, align 8, !dbg !2547, !tbaa !435
  %90 = icmp eq i8* %88, null, !dbg !2548
  br i1 %90, label %210, label %91, !dbg !2549

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 4, metadata !2536, metadata !DIExpression()), !dbg !2539
  %92 = icmp sgt i32 %85, -1, !dbg !2543
  br i1 %92, label %100, label %93, !dbg !2543

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2543
  store i32 %94, i32* %8, align 8, !dbg !2543
  %95 = icmp ult i32 %85, -7, !dbg !2543
  br i1 %95, label %96, label %100, !dbg !2543

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2543
  %98 = sext i32 %85 to i64, !dbg !2543
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2543
  br label %104, !dbg !2543

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2543
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2543
  store i8* %103, i8** %10, align 8, !dbg !2543
  br label %104, !dbg !2543

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2543
  %108 = load i8*, i8** %107, align 8, !dbg !2543
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2546
  store i8* %108, i8** %109, align 8, !dbg !2547, !tbaa !435
  %110 = icmp eq i8* %108, null, !dbg !2548
  br i1 %110, label %210, label %111, !dbg !2549

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 5, metadata !2536, metadata !DIExpression()), !dbg !2539
  %112 = icmp sgt i32 %105, -1, !dbg !2543
  br i1 %112, label %120, label %113, !dbg !2543

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2543
  store i32 %114, i32* %8, align 8, !dbg !2543
  %115 = icmp ult i32 %105, -7, !dbg !2543
  br i1 %115, label %116, label %120, !dbg !2543

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2543
  %118 = sext i32 %105 to i64, !dbg !2543
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2543
  br label %124, !dbg !2543

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2543
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2543
  store i8* %123, i8** %10, align 8, !dbg !2543
  br label %124, !dbg !2543

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2543
  %128 = load i8*, i8** %127, align 8, !dbg !2543
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2546
  store i8* %128, i8** %129, align 8, !dbg !2547, !tbaa !435
  %130 = icmp eq i8* %128, null, !dbg !2548
  br i1 %130, label %210, label %131, !dbg !2549

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 6, metadata !2536, metadata !DIExpression()), !dbg !2539
  %132 = icmp sgt i32 %125, -1, !dbg !2543
  br i1 %132, label %140, label %133, !dbg !2543

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2543
  store i32 %134, i32* %8, align 8, !dbg !2543
  %135 = icmp ult i32 %125, -7, !dbg !2543
  br i1 %135, label %136, label %140, !dbg !2543

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2543
  %138 = sext i32 %125 to i64, !dbg !2543
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2543
  br label %144, !dbg !2543

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2543
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2543
  store i8* %143, i8** %10, align 8, !dbg !2543
  br label %144, !dbg !2543

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2543
  %148 = load i8*, i8** %147, align 8, !dbg !2543
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2546
  store i8* %148, i8** %149, align 8, !dbg !2547, !tbaa !435
  %150 = icmp eq i8* %148, null, !dbg !2548
  br i1 %150, label %210, label %151, !dbg !2549

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 7, metadata !2536, metadata !DIExpression()), !dbg !2539
  %152 = icmp sgt i32 %145, -1, !dbg !2543
  br i1 %152, label %160, label %153, !dbg !2543

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2543
  store i32 %154, i32* %8, align 8, !dbg !2543
  %155 = icmp ult i32 %145, -7, !dbg !2543
  br i1 %155, label %156, label %160, !dbg !2543

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2543
  %158 = sext i32 %145 to i64, !dbg !2543
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2543
  br label %164, !dbg !2543

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2543
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2543
  store i8* %163, i8** %10, align 8, !dbg !2543
  br label %164, !dbg !2543

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2543
  %168 = load i8*, i8** %167, align 8, !dbg !2543
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2546
  store i8* %168, i8** %169, align 8, !dbg !2547, !tbaa !435
  %170 = icmp eq i8* %168, null, !dbg !2548
  br i1 %170, label %210, label %171, !dbg !2549

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 8, metadata !2536, metadata !DIExpression()), !dbg !2539
  %172 = icmp sgt i32 %165, -1, !dbg !2543
  br i1 %172, label %180, label %173, !dbg !2543

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2543
  store i32 %174, i32* %8, align 8, !dbg !2543
  %175 = icmp ult i32 %165, -7, !dbg !2543
  br i1 %175, label %176, label %180, !dbg !2543

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2543
  %178 = sext i32 %165 to i64, !dbg !2543
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2543
  br label %184, !dbg !2543

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2543
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2543
  store i8* %183, i8** %10, align 8, !dbg !2543
  br label %184, !dbg !2543

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2543
  %188 = load i8*, i8** %187, align 8, !dbg !2543
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2546
  store i8* %188, i8** %189, align 8, !dbg !2547, !tbaa !435
  %190 = icmp eq i8* %188, null, !dbg !2548
  br i1 %190, label %210, label %191, !dbg !2549

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 9, metadata !2536, metadata !DIExpression()), !dbg !2539
  %192 = icmp sgt i32 %185, -1, !dbg !2543
  br i1 %192, label %200, label %193, !dbg !2543

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2543
  store i32 %194, i32* %8, align 8, !dbg !2543
  %195 = icmp ult i32 %185, -7, !dbg !2543
  br i1 %195, label %196, label %200, !dbg !2543

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2543
  %198 = sext i32 %185 to i64, !dbg !2543
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2543
  br label %203, !dbg !2543

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2543
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2543
  store i8* %202, i8** %10, align 8, !dbg !2543
  br label %203, !dbg !2543

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2543
  %206 = load i8*, i8** %205, align 8, !dbg !2543
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2546
  store i8* %206, i8** %207, align 8, !dbg !2547, !tbaa !435
  %208 = icmp eq i8* %206, null, !dbg !2548
  %209 = select i1 %208, i64 9, i64 10, !dbg !2549
  br label %210, !dbg !2549

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2550
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2551
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2552
  ret void, !dbg !2552
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2553 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2557, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8* %1, metadata !2558, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8* %2, metadata !2559, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8* %3, metadata !2560, metadata !DIExpression()), !dbg !2562
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2563
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2563
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2561, metadata !DIExpression()), !dbg !2564
  call void @llvm.va_start(i8* nonnull %7), !dbg !2565
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2566
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2566, !tbaa.struct !753
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2566
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2566
  call void @llvm.va_end(i8* nonnull %7), !dbg !2567
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2568
  ret void, !dbg !2568
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2569 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2570, !tbaa !435
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.84, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2570
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.101, i64 0, i64 0), i32 noundef 5) #32, !dbg !2571
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.102, i64 0, i64 0)) #32, !dbg !2571
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #32, !dbg !2572
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.103, i64 0, i64 0)) #32, !dbg !2572
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !2573
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !2573
  ret void, !dbg !2574
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2575 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2580, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i64 %1, metadata !2581, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i64 %2, metadata !2582, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %0, metadata !2584, metadata !DIExpression()) #32, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %1, metadata !2587, metadata !DIExpression()) #32, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %2, metadata !2588, metadata !DIExpression()) #32, !dbg !2589
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2591
  call void @llvm.dbg.value(metadata i8* %4, metadata !2592, metadata !DIExpression()) #32, !dbg !2597
  %5 = icmp eq i8* %4, null, !dbg !2599
  br i1 %5, label %6, label %7, !dbg !2601

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2602
  unreachable, !dbg !2602

7:                                                ; preds = %3
  ret i8* %4, !dbg !2603
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2585 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2584, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i64 %1, metadata !2587, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i64 %2, metadata !2588, metadata !DIExpression()), !dbg !2604
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2605
  call void @llvm.dbg.value(metadata i8* %4, metadata !2592, metadata !DIExpression()) #32, !dbg !2606
  %5 = icmp eq i8* %4, null, !dbg !2608
  br i1 %5, label %6, label %7, !dbg !2609

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2610
  unreachable, !dbg !2610

7:                                                ; preds = %3
  ret i8* %4, !dbg !2611
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2612 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2616, metadata !DIExpression()), !dbg !2617
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2618
  call void @llvm.dbg.value(metadata i8* %2, metadata !2592, metadata !DIExpression()) #32, !dbg !2619
  %3 = icmp eq i8* %2, null, !dbg !2621
  br i1 %3, label %4, label %5, !dbg !2622

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2623
  unreachable, !dbg !2623

5:                                                ; preds = %1
  ret i8* %2, !dbg !2624
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2625 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2629, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %0, metadata !2631, metadata !DIExpression()) #32, !dbg !2635
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %2, metadata !2592, metadata !DIExpression()) #32, !dbg !2638
  %3 = icmp eq i8* %2, null, !dbg !2640
  br i1 %3, label %4, label %5, !dbg !2641

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2642
  unreachable, !dbg !2642

5:                                                ; preds = %1
  ret i8* %2, !dbg !2643
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2644 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2648, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %0, metadata !2616, metadata !DIExpression()) #32, !dbg !2650
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %2, metadata !2592, metadata !DIExpression()) #32, !dbg !2653
  %3 = icmp eq i8* %2, null, !dbg !2655
  br i1 %3, label %4, label %5, !dbg !2656

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2657
  unreachable, !dbg !2657

5:                                                ; preds = %1
  ret i8* %2, !dbg !2658
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2659 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 %1, metadata !2664, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()) #32, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %1, metadata !2670, metadata !DIExpression()) #32, !dbg !2671
  %3 = icmp eq i64 %1, 0, !dbg !2673
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2673
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2674
  call void @llvm.dbg.value(metadata i8* %5, metadata !2592, metadata !DIExpression()) #32, !dbg !2675
  %6 = icmp eq i8* %5, null, !dbg !2677
  br i1 %6, label %7, label %8, !dbg !2678

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2679
  unreachable, !dbg !2679

8:                                                ; preds = %2
  ret i8* %5, !dbg !2680
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2681 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2685, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %1, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %0, metadata !2688, metadata !DIExpression()) #32, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %1, metadata !2691, metadata !DIExpression()) #32, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()) #32, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %1, metadata !2670, metadata !DIExpression()) #32, !dbg !2694
  %3 = icmp eq i64 %1, 0, !dbg !2696
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2696
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2697
  call void @llvm.dbg.value(metadata i8* %5, metadata !2592, metadata !DIExpression()) #32, !dbg !2698
  %6 = icmp eq i8* %5, null, !dbg !2700
  br i1 %6, label %7, label %8, !dbg !2701

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2702
  unreachable, !dbg !2702

8:                                                ; preds = %2
  ret i8* %5, !dbg !2703
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2704 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2708, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i64 %1, metadata !2709, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i64 %2, metadata !2710, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i8* %0, metadata !2712, metadata !DIExpression()) #32, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()) #32, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %2, metadata !2716, metadata !DIExpression()) #32, !dbg !2717
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %4, metadata !2592, metadata !DIExpression()) #32, !dbg !2720
  %5 = icmp eq i8* %4, null, !dbg !2722
  br i1 %5, label %6, label %7, !dbg !2723

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2724
  unreachable, !dbg !2724

7:                                                ; preds = %3
  ret i8* %4, !dbg !2725
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2726 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i64 %1, metadata !2731, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* null, metadata !2584, metadata !DIExpression()) #32, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %0, metadata !2587, metadata !DIExpression()) #32, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %1, metadata !2588, metadata !DIExpression()) #32, !dbg !2733
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %3, metadata !2592, metadata !DIExpression()) #32, !dbg !2736
  %4 = icmp eq i8* %3, null, !dbg !2738
  br i1 %4, label %5, label %6, !dbg !2739

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2740
  unreachable, !dbg !2740

6:                                                ; preds = %2
  ret i8* %3, !dbg !2741
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2742 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2746, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %1, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* null, metadata !2708, metadata !DIExpression()) #32, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %0, metadata !2709, metadata !DIExpression()) #32, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %1, metadata !2710, metadata !DIExpression()) #32, !dbg !2749
  call void @llvm.dbg.value(metadata i8* null, metadata !2712, metadata !DIExpression()) #32, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %0, metadata !2715, metadata !DIExpression()) #32, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %1, metadata !2716, metadata !DIExpression()) #32, !dbg !2751
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2753
  call void @llvm.dbg.value(metadata i8* %3, metadata !2592, metadata !DIExpression()) #32, !dbg !2754
  %4 = icmp eq i8* %3, null, !dbg !2756
  br i1 %4, label %5, label %6, !dbg !2757

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2758
  unreachable, !dbg !2758

6:                                                ; preds = %2
  ret i8* %3, !dbg !2759
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2760 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64* %1, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()) #32, !dbg !2767
  call void @llvm.dbg.value(metadata i64* %1, metadata !369, metadata !DIExpression()) #32, !dbg !2767
  call void @llvm.dbg.value(metadata i64 1, metadata !370, metadata !DIExpression()) #32, !dbg !2767
  %3 = load i64, i64* %1, align 8, !dbg !2769, !tbaa !1865
  call void @llvm.dbg.value(metadata i64 %3, metadata !371, metadata !DIExpression()) #32, !dbg !2767
  %4 = icmp eq i8* %0, null, !dbg !2770
  br i1 %4, label %5, label %8, !dbg !2772

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2773
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2776
  br label %15, !dbg !2776

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2777
  %10 = add nuw i64 %9, 1, !dbg !2777
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !2777
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2777
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %13, metadata !371, metadata !DIExpression()) #32, !dbg !2767
  br i1 %12, label %14, label %15, !dbg !2780

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !2781
  unreachable, !dbg !2781

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2767
  call void @llvm.dbg.value(metadata i64 %16, metadata !371, metadata !DIExpression()) #32, !dbg !2767
  call void @llvm.dbg.value(metadata i8* %0, metadata !2584, metadata !DIExpression()) #32, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %16, metadata !2587, metadata !DIExpression()) #32, !dbg !2782
  call void @llvm.dbg.value(metadata i64 1, metadata !2588, metadata !DIExpression()) #32, !dbg !2782
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !2784
  call void @llvm.dbg.value(metadata i8* %17, metadata !2592, metadata !DIExpression()) #32, !dbg !2785
  %18 = icmp eq i8* %17, null, !dbg !2787
  br i1 %18, label %19, label %20, !dbg !2788

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !2789
  unreachable, !dbg !2789

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !368, metadata !DIExpression()) #32, !dbg !2767
  store i64 %16, i64* %1, align 8, !dbg !2790, !tbaa !1865
  ret i8* %17, !dbg !2791
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64* %1, metadata !369, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %2, metadata !370, metadata !DIExpression()), !dbg !2792
  %4 = load i64, i64* %1, align 8, !dbg !2793, !tbaa !1865
  call void @llvm.dbg.value(metadata i64 %4, metadata !371, metadata !DIExpression()), !dbg !2792
  %5 = icmp eq i8* %0, null, !dbg !2794
  br i1 %5, label %6, label %13, !dbg !2795

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2796
  br i1 %7, label %8, label %20, !dbg !2797

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %9, metadata !371, metadata !DIExpression()), !dbg !2792
  %10 = icmp ugt i64 %2, 128, !dbg !2800
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %12, metadata !371, metadata !DIExpression()), !dbg !2792
  br label %20, !dbg !2802

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2803
  %15 = add nuw i64 %14, 1, !dbg !2803
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2803
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2803
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %18, metadata !371, metadata !DIExpression()), !dbg !2792
  br i1 %17, label %19, label %20, !dbg !2804

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !2805
  unreachable, !dbg !2805

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2792
  call void @llvm.dbg.value(metadata i64 %21, metadata !371, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8* %0, metadata !2584, metadata !DIExpression()) #32, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %21, metadata !2587, metadata !DIExpression()) #32, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %2, metadata !2588, metadata !DIExpression()) #32, !dbg !2806
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !2808
  call void @llvm.dbg.value(metadata i8* %22, metadata !2592, metadata !DIExpression()) #32, !dbg !2809
  %23 = icmp eq i8* %22, null, !dbg !2811
  br i1 %23, label %24, label %25, !dbg !2812

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !2813
  unreachable, !dbg !2813

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !368, metadata !DIExpression()), !dbg !2792
  store i64 %21, i64* %1, align 8, !dbg !2814, !tbaa !1865
  ret i8* %22, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !383, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64* %1, metadata !384, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %2, metadata !385, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %3, metadata !386, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %4, metadata !387, metadata !DIExpression()), !dbg !2816
  %6 = load i64, i64* %1, align 8, !dbg !2817, !tbaa !1865
  call void @llvm.dbg.value(metadata i64 %6, metadata !388, metadata !DIExpression()), !dbg !2816
  %7 = ashr i64 %6, 1, !dbg !2818
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2818
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2818
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %10, metadata !389, metadata !DIExpression()), !dbg !2816
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %11, metadata !389, metadata !DIExpression()), !dbg !2816
  %12 = icmp sgt i64 %3, -1, !dbg !2821
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2823
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %15, metadata !389, metadata !DIExpression()), !dbg !2816
  %16 = icmp slt i64 %4, 0, !dbg !2824
  br i1 %16, label %17, label %30, !dbg !2824

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2824
  br i1 %18, label %19, label %24, !dbg !2824

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2824
  %21 = udiv i64 9223372036854775807, %20, !dbg !2824
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2824
  br i1 %23, label %46, label %43, !dbg !2824

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2824
  br i1 %25, label %43, label %26, !dbg !2824

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2824
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2824
  %29 = icmp ult i64 %28, %15, !dbg !2824
  br i1 %29, label %46, label %43, !dbg !2824

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2824
  br i1 %31, label %43, label %32, !dbg !2824

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2824
  br i1 %33, label %34, label %40, !dbg !2824

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2824
  br i1 %35, label %43, label %36, !dbg !2824

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2824
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2824
  %39 = icmp ult i64 %38, %4, !dbg !2824
  br i1 %39, label %46, label %43, !dbg !2824

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2824
  %42 = icmp ult i64 %41, %15, !dbg !2824
  br i1 %42, label %46, label %43, !dbg !2824

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2816
  %44 = mul i64 %15, %4, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %44, metadata !390, metadata !DIExpression()), !dbg !2816
  %45 = icmp slt i64 %44, 128, !dbg !2824
  br i1 %45, label %46, label %52, !dbg !2824

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !391, metadata !DIExpression()), !dbg !2816
  %48 = sdiv i64 %47, %4, !dbg !2825
  call void @llvm.dbg.value(metadata i64 %48, metadata !389, metadata !DIExpression()), !dbg !2816
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %51, metadata !390, metadata !DIExpression()), !dbg !2816
  br label %52, !dbg !2829

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2816
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2816
  call void @llvm.dbg.value(metadata i64 %54, metadata !390, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %53, metadata !389, metadata !DIExpression()), !dbg !2816
  %55 = icmp eq i8* %0, null, !dbg !2830
  br i1 %55, label %56, label %57, !dbg !2832

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2833, !tbaa !1865
  br label %57, !dbg !2834

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2835
  %59 = icmp slt i64 %58, %2, !dbg !2837
  br i1 %59, label %60, label %97, !dbg !2838

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2839
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2839
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %63, metadata !389, metadata !DIExpression()), !dbg !2816
  br i1 %62, label %96, label %64, !dbg !2840

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2841
  br i1 %66, label %96, label %67, !dbg !2841

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2842

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2842
  br i1 %69, label %70, label %75, !dbg !2842

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2842
  %72 = udiv i64 9223372036854775807, %71, !dbg !2842
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2842
  br i1 %74, label %96, label %94, !dbg !2842

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2842
  br i1 %76, label %94, label %77, !dbg !2842

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2842
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2842
  %80 = icmp ult i64 %79, %63, !dbg !2842
  br i1 %80, label %96, label %94, !dbg !2842

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2842
  br i1 %82, label %94, label %83, !dbg !2842

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2842
  br i1 %84, label %85, label %91, !dbg !2842

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2842
  br i1 %86, label %94, label %87, !dbg !2842

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2842
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2842
  %90 = icmp ult i64 %89, %4, !dbg !2842
  br i1 %90, label %96, label %94, !dbg !2842

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2842
  %93 = icmp ult i64 %92, %63, !dbg !2842
  br i1 %93, label %96, label %94, !dbg !2842

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2816
  %95 = mul i64 %63, %4, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %95, metadata !390, metadata !DIExpression()), !dbg !2816
  br label %97, !dbg !2843

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !2844
  unreachable, !dbg !2844

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2816
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2816
  call void @llvm.dbg.value(metadata i64 %99, metadata !390, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %98, metadata !389, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8* %0, metadata !2663, metadata !DIExpression()) #32, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %99, metadata !2664, metadata !DIExpression()) #32, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()) #32, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %99, metadata !2670, metadata !DIExpression()) #32, !dbg !2847
  %100 = icmp eq i64 %99, 0, !dbg !2849
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2849
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !2850
  call void @llvm.dbg.value(metadata i8* %102, metadata !2592, metadata !DIExpression()) #32, !dbg !2851
  %103 = icmp eq i8* %102, null, !dbg !2853
  br i1 %103, label %104, label %105, !dbg !2854

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !2855
  unreachable, !dbg !2855

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !383, metadata !DIExpression()), !dbg !2816
  store i64 %98, i64* %1, align 8, !dbg !2856, !tbaa !1865
  ret i8* %102, !dbg !2857
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2858 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %0, metadata !2862, metadata !DIExpression()) #32, !dbg !2866
  call void @llvm.dbg.value(metadata i64 1, metadata !2865, metadata !DIExpression()) #32, !dbg !2866
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %2, metadata !2592, metadata !DIExpression()) #32, !dbg !2869
  %3 = icmp eq i8* %2, null, !dbg !2871
  br i1 %3, label %4, label %5, !dbg !2872

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2873
  unreachable, !dbg !2873

5:                                                ; preds = %1
  ret i8* %2, !dbg !2874
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2863 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2862, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1, metadata !2865, metadata !DIExpression()), !dbg !2875
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2876
  call void @llvm.dbg.value(metadata i8* %3, metadata !2592, metadata !DIExpression()) #32, !dbg !2877
  %4 = icmp eq i8* %3, null, !dbg !2879
  br i1 %4, label %5, label %6, !dbg !2880

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2881
  unreachable, !dbg !2881

6:                                                ; preds = %2
  ret i8* %3, !dbg !2882
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2883 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2885, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %0, metadata !2887, metadata !DIExpression()) #32, !dbg !2891
  call void @llvm.dbg.value(metadata i64 1, metadata !2890, metadata !DIExpression()) #32, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()) #32, !dbg !2897
  call void @llvm.dbg.value(metadata i64 1, metadata !2896, metadata !DIExpression()) #32, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()) #32, !dbg !2897
  call void @llvm.dbg.value(metadata i64 1, metadata !2896, metadata !DIExpression()) #32, !dbg !2897
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %2, metadata !2592, metadata !DIExpression()) #32, !dbg !2900
  %3 = icmp eq i8* %2, null, !dbg !2902
  br i1 %3, label %4, label %5, !dbg !2903

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2904
  unreachable, !dbg !2904

5:                                                ; preds = %1
  ret i8* %2, !dbg !2905
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2888 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2887, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2890, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()) #32, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %1, metadata !2896, metadata !DIExpression()) #32, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()) #32, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %1, metadata !2896, metadata !DIExpression()) #32, !dbg !2907
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %3, metadata !2592, metadata !DIExpression()) #32, !dbg !2910
  %4 = icmp eq i8* %3, null, !dbg !2912
  br i1 %4, label %5, label %6, !dbg !2913

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2914
  unreachable, !dbg !2914

6:                                                ; preds = %2
  ret i8* %3, !dbg !2915
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2916 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %1, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %1, metadata !2616, metadata !DIExpression()) #32, !dbg !2923
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %3, metadata !2592, metadata !DIExpression()) #32, !dbg !2926
  %4 = icmp eq i8* %3, null, !dbg !2928
  br i1 %4, label %5, label %6, !dbg !2929

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2930
  unreachable, !dbg !2930

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2931, metadata !DIExpression()) #32, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #32, !dbg !2939
  call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()) #32, !dbg !2939
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2941
  ret i8* %3, !dbg !2942
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2943 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2947, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %1, metadata !2948, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %1, metadata !2629, metadata !DIExpression()) #32, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %1, metadata !2631, metadata !DIExpression()) #32, !dbg !2952
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2954
  call void @llvm.dbg.value(metadata i8* %3, metadata !2592, metadata !DIExpression()) #32, !dbg !2955
  %4 = icmp eq i8* %3, null, !dbg !2957
  br i1 %4, label %5, label %6, !dbg !2958

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2959
  unreachable, !dbg !2959

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2931, metadata !DIExpression()) #32, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #32, !dbg !2960
  call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()) #32, !dbg !2960
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2962
  ret i8* %3, !dbg !2963
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2968, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %1, metadata !2969, metadata !DIExpression()), !dbg !2971
  %3 = add nsw i64 %1, 1, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %3, metadata !2629, metadata !DIExpression()) #32, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %3, metadata !2631, metadata !DIExpression()) #32, !dbg !2975
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %4, metadata !2592, metadata !DIExpression()) #32, !dbg !2978
  %5 = icmp eq i8* %4, null, !dbg !2980
  br i1 %5, label %6, label %7, !dbg !2981

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2982
  unreachable, !dbg !2982

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !2970, metadata !DIExpression()), !dbg !2971
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2983
  store i8 0, i8* %8, align 1, !dbg !2984, !tbaa !530
  call void @llvm.dbg.value(metadata i8* %4, metadata !2931, metadata !DIExpression()) #32, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #32, !dbg !2985
  call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()) #32, !dbg !2985
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2987
  ret i8* %4, !dbg !2988
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !2989 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2991, metadata !DIExpression()), !dbg !2992
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !2993
  %3 = add i64 %2, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %0, metadata !2920, metadata !DIExpression()) #32, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %3, metadata !2921, metadata !DIExpression()) #32, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %3, metadata !2616, metadata !DIExpression()) #32, !dbg !2997
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2999
  call void @llvm.dbg.value(metadata i8* %4, metadata !2592, metadata !DIExpression()) #32, !dbg !3000
  %5 = icmp eq i8* %4, null, !dbg !3002
  br i1 %5, label %6, label %7, !dbg !3003

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3004
  unreachable, !dbg !3004

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2931, metadata !DIExpression()) #32, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %0, metadata !2937, metadata !DIExpression()) #32, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %3, metadata !2938, metadata !DIExpression()) #32, !dbg !3005
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3007
  ret i8* %4, !dbg !3008
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3009 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3014, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %1, metadata !3011, metadata !DIExpression()), !dbg !3015
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.115, i64 0, i64 0), i32 noundef 5) #32, !dbg !3014
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i64 0, i64 0), i8* noundef %2) #32, !dbg !3014
  %3 = icmp eq i32 %1, 0, !dbg !3014
  tail call void @llvm.assume(i1 %3), !dbg !3014
  tail call void @abort() #34, !dbg !3016
  unreachable, !dbg !3016
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3017 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3055, metadata !DIExpression()), !dbg !3060
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3061
  call void @llvm.dbg.value(metadata i1 undef, metadata !3056, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3060
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3062, metadata !DIExpression()), !dbg !3065
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3067
  %4 = load i32, i32* %3, align 8, !dbg !3067, !tbaa !3068
  %5 = and i32 %4, 32, !dbg !3069
  %6 = icmp eq i32 %5, 0, !dbg !3069
  call void @llvm.dbg.value(metadata i1 %6, metadata !3058, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3060
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3070
  %8 = icmp eq i32 %7, 0, !dbg !3071
  call void @llvm.dbg.value(metadata i1 %8, metadata !3059, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3060
  br i1 %6, label %9, label %19, !dbg !3072

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3074
  call void @llvm.dbg.value(metadata i1 %10, metadata !3056, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3060
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3075
  %12 = xor i1 %8, true, !dbg !3075
  %13 = sext i1 %12 to i32, !dbg !3075
  br i1 %11, label %22, label %14, !dbg !3075

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3076
  %16 = load i32, i32* %15, align 4, !dbg !3076, !tbaa !521
  %17 = icmp ne i32 %16, 9, !dbg !3077
  %18 = sext i1 %17 to i32, !dbg !3078
  br label %22, !dbg !3078

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3079

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3081
  store i32 0, i32* %21, align 4, !dbg !3083, !tbaa !521
  br label %22, !dbg !3081

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3060
  ret i32 %23, !dbg !3084
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3085 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3123, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 0, metadata !3124, metadata !DIExpression()), !dbg !3127
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %2, metadata !3125, metadata !DIExpression()), !dbg !3127
  %3 = icmp slt i32 %2, 0, !dbg !3129
  br i1 %3, label %4, label %6, !dbg !3131

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3132
  br label %24, !dbg !3133

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3134
  %8 = icmp eq i32 %7, 0, !dbg !3134
  br i1 %8, label %13, label %9, !dbg !3136

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3137
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3138
  %12 = icmp eq i64 %11, -1, !dbg !3139
  br i1 %12, label %16, label %13, !dbg !3140

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3141
  %15 = icmp eq i32 %14, 0, !dbg !3141
  br i1 %15, label %16, label %18, !dbg !3142

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 0, metadata !3126, metadata !DIExpression()), !dbg !3127
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %21, metadata !3126, metadata !DIExpression()), !dbg !3127
  br label %24, !dbg !3144

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3145
  %20 = load i32, i32* %19, align 4, !dbg !3145, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %20, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 0, metadata !3126, metadata !DIExpression()), !dbg !3127
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %21, metadata !3126, metadata !DIExpression()), !dbg !3127
  %22 = icmp eq i32 %20, 0, !dbg !3146
  br i1 %22, label %24, label %23, !dbg !3144

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3148, !tbaa !521
  call void @llvm.dbg.value(metadata i32 -1, metadata !3126, metadata !DIExpression()), !dbg !3127
  br label %24, !dbg !3150

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3127
  ret i32 %25, !dbg !3151
}

; Function Attrs: nofree nounwind
declare !dbg !3152 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3153 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3154 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3157 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3195, metadata !DIExpression()), !dbg !3196
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3197
  br i1 %2, label %6, label %3, !dbg !3199

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3200
  %5 = icmp eq i32 %4, 0, !dbg !3200
  br i1 %5, label %6, label %8, !dbg !3201

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3202
  br label %17, !dbg !3203

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3204, metadata !DIExpression()) #32, !dbg !3209
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3211
  %10 = load i32, i32* %9, align 8, !dbg !3211, !tbaa !3068
  %11 = and i32 %10, 256, !dbg !3213
  %12 = icmp eq i32 %11, 0, !dbg !3213
  br i1 %12, label %15, label %13, !dbg !3214

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3215
  br label %15, !dbg !3215

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3216
  br label %17, !dbg !3217

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3196
  ret i32 %18, !dbg !3218
}

; Function Attrs: nofree nounwind
declare !dbg !3219 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3220 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3259, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3260, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 %2, metadata !3261, metadata !DIExpression()), !dbg !3265
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3266
  %5 = load i8*, i8** %4, align 8, !dbg !3266, !tbaa !3267
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3268
  %7 = load i8*, i8** %6, align 8, !dbg !3268, !tbaa !3269
  %8 = icmp eq i8* %5, %7, !dbg !3270
  br i1 %8, label %9, label %28, !dbg !3271

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3272
  %11 = load i8*, i8** %10, align 8, !dbg !3272, !tbaa !868
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3273
  %13 = load i8*, i8** %12, align 8, !dbg !3273, !tbaa !3274
  %14 = icmp eq i8* %11, %13, !dbg !3275
  br i1 %14, label %15, label %28, !dbg !3276

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3277
  %17 = load i8*, i8** %16, align 8, !dbg !3277, !tbaa !3278
  %18 = icmp eq i8* %17, null, !dbg !3279
  br i1 %18, label %19, label %28, !dbg !3280

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3281
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %21, metadata !3262, metadata !DIExpression()), !dbg !3283
  %22 = icmp eq i64 %21, -1, !dbg !3284
  br i1 %22, label %30, label %23, !dbg !3286

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3287
  %25 = load i32, i32* %24, align 8, !dbg !3288, !tbaa !3068
  %26 = and i32 %25, -17, !dbg !3288
  store i32 %26, i32* %24, align 8, !dbg !3288, !tbaa !3068
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3289
  store i64 %21, i64* %27, align 8, !dbg !3290, !tbaa !3291
  br label %30, !dbg !3292

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3293
  br label %30, !dbg !3294

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3265
  ret i32 %31, !dbg !3295
}

; Function Attrs: nofree nounwind
declare !dbg !3296 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3299 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3304, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %1, metadata !3305, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i64 %2, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3307, metadata !DIExpression()), !dbg !3309
  %5 = icmp eq i8* %1, null, !dbg !3310
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3312
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), i8* %1, !dbg !3312
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %8, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %7, metadata !3305, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32* %6, metadata !3304, metadata !DIExpression()), !dbg !3309
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3313
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3315
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3307, metadata !DIExpression()), !dbg !3309
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %11, metadata !3308, metadata !DIExpression()), !dbg !3309
  %12 = icmp ult i64 %11, -3, !dbg !3317
  br i1 %12, label %13, label %18, !dbg !3319

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3320
  %15 = icmp eq i32 %14, 0, !dbg !3320
  br i1 %15, label %16, label %30, !dbg !3321

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3322, metadata !DIExpression()) #32, !dbg !3327
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3329, metadata !DIExpression()) #32, !dbg !3334
  call void @llvm.dbg.value(metadata i32 0, metadata !3332, metadata !DIExpression()) #32, !dbg !3334
  call void @llvm.dbg.value(metadata i64 8, metadata !3333, metadata !DIExpression()) #32, !dbg !3334
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3336
  store i64 0, i64* %17, align 1, !dbg !3336
  br label %30, !dbg !3337

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3338
  br i1 %19, label %20, label %21, !dbg !3340

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3341
  unreachable, !dbg !3341

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3342

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3344
  br i1 %24, label %30, label %25, !dbg !3345

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3346
  br i1 %26, label %30, label %27, !dbg !3349

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3350, !tbaa !530
  %29 = zext i8 %28 to i32, !dbg !3351
  store i32 %29, i32* %6, align 4, !dbg !3352, !tbaa !521
  br label %30, !dbg !3353

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3309
  ret i64 %31, !dbg !3354
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3355 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3361 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %1, metadata !3364, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %2, metadata !3365, metadata !DIExpression()), !dbg !3367
  %4 = icmp eq i64 %2, 0, !dbg !3368
  br i1 %4, label %8, label %5, !dbg !3368

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3368
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3368
  br i1 %7, label %13, label %8, !dbg !3368

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3366, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3367
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3366, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3367
  %9 = mul i64 %2, %1, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %9, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8* %0, metadata !3370, metadata !DIExpression()) #32, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %9, metadata !3373, metadata !DIExpression()) #32, !dbg !3374
  %10 = icmp eq i64 %9, 0, !dbg !3376
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3376
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3377
  br label %15, !dbg !3378

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3366, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3367
  %14 = tail call i32* @__errno_location() #35, !dbg !3379
  store i32 12, i32* %14, align 4, !dbg !3381, !tbaa !521
  br label %15, !dbg !3382

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3367
  ret i8* %16, !dbg !3383
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3384 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3388, metadata !DIExpression()), !dbg !3393
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3394
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3394
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3389, metadata !DIExpression()), !dbg !3395
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3396
  %5 = icmp eq i32 %4, 0, !dbg !3396
  br i1 %5, label %6, label %13, !dbg !3398

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3399, metadata !DIExpression()) #32, !dbg !3403
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i64 0, i64 0), metadata !3402, metadata !DIExpression()) #32, !dbg !3403
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i64 0, i64 0), i64 2), !dbg !3406
  %8 = icmp eq i32 %7, 0, !dbg !3407
  br i1 %8, label %12, label %9, !dbg !3408

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3399, metadata !DIExpression()) #32, !dbg !3409
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0), metadata !3402, metadata !DIExpression()) #32, !dbg !3409
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0), i64 6), !dbg !3411
  %11 = icmp eq i32 %10, 0, !dbg !3412
  br i1 %11, label %12, label %13, !dbg !3413

12:                                               ; preds = %9, %6
  br label %13, !dbg !3414

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3393
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3415
  ret i1 %14, !dbg !3415
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3420, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i8* %1, metadata !3421, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %2, metadata !3422, metadata !DIExpression()), !dbg !3423
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3424
  ret i32 %4, !dbg !3425
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3430, metadata !DIExpression()), !dbg !3431
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3432
  ret i8* %2, !dbg !3433
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3434 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3436, metadata !DIExpression()), !dbg !3438
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3439
  call void @llvm.dbg.value(metadata i8* %2, metadata !3437, metadata !DIExpression()), !dbg !3438
  ret i8* %2, !dbg !3440
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3441 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3443, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8* %1, metadata !3444, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %2, metadata !3445, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 %0, metadata !3436, metadata !DIExpression()) #32, !dbg !3451
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3453
  call void @llvm.dbg.value(metadata i8* %4, metadata !3437, metadata !DIExpression()) #32, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %4, metadata !3446, metadata !DIExpression()), !dbg !3450
  %5 = icmp eq i8* %4, null, !dbg !3454
  br i1 %5, label %6, label %9, !dbg !3455

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3456
  br i1 %7, label %19, label %8, !dbg !3459

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3460, !tbaa !530
  br label %19, !dbg !3461

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %10, metadata !3447, metadata !DIExpression()), !dbg !3463
  %11 = icmp ult i64 %10, %2, !dbg !3464
  br i1 %11, label %12, label %14, !dbg !3466

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3467
  call void @llvm.dbg.value(metadata i8* %1, metadata !3469, metadata !DIExpression()) #32, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %4, metadata !3472, metadata !DIExpression()) #32, !dbg !3474
  call void @llvm.dbg.value(metadata i64 %13, metadata !3473, metadata !DIExpression()) #32, !dbg !3474
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3476
  br label %19, !dbg !3477

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3478
  br i1 %15, label %19, label %16, !dbg !3481

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %1, metadata !3469, metadata !DIExpression()) #32, !dbg !3484
  call void @llvm.dbg.value(metadata i8* %4, metadata !3472, metadata !DIExpression()) #32, !dbg !3484
  call void @llvm.dbg.value(metadata i64 %17, metadata !3473, metadata !DIExpression()) #32, !dbg !3484
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3486
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3487
  store i8 0, i8* %18, align 1, !dbg !3488, !tbaa !530
  br label %19, !dbg !3489

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3490
  ret i32 %20, !dbg !3491
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
!10 = !DIFile(filename: "src/logname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "be0652542a48a595035eed51530c903c")
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
!424 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 31, type: !425, scopeLine: 32, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !30}
!427 = !{!428}
!428 = !DILocalVariable(name: "status", arg: 1, scope: !424, file: !10, line: 31, type: !30)
!429 = !DILocation(line: 0, scope: !424)
!430 = !DILocation(line: 33, column: 14, scope: !431)
!431 = distinct !DILexicalBlock(scope: !424, file: !10, line: 33, column: 7)
!432 = !DILocation(line: 33, column: 7, scope: !424)
!433 = !DILocation(line: 34, column: 5, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !10, line: 34, column: 5)
!435 = !{!436, !436, i64 0}
!436 = !{!"any pointer", !437, i64 0}
!437 = !{!"omnipotent char", !438, i64 0}
!438 = !{!"Simple C/C++ TBAA"}
!439 = !DILocation(line: 37, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !431, file: !10, line: 36, column: 5)
!441 = !DILocation(line: 38, column: 7, scope: !440)
!442 = !DILocation(line: 42, column: 7, scope: !440)
!443 = !DILocation(line: 43, column: 7, scope: !440)
!444 = !DILocalVariable(name: "program", arg: 1, scope: !445, file: !3, line: 836, type: !6)
!445 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !446, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !448)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !6}
!448 = !{!444, !449, !458, !459, !461, !462}
!449 = !DILocalVariable(name: "infomap", scope: !445, file: !3, line: 838, type: !450)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 896, elements: !456)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !445, file: !3, line: 838, size: 128, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !452, file: !3, line: 838, baseType: !6, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!456 = !{!457}
!457 = !DISubrange(count: 7)
!458 = !DILocalVariable(name: "node", scope: !445, file: !3, line: 848, type: !6)
!459 = !DILocalVariable(name: "map_prog", scope: !445, file: !3, line: 849, type: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!461 = !DILocalVariable(name: "lc_messages", scope: !445, file: !3, line: 861, type: !6)
!462 = !DILocalVariable(name: "url_program", scope: !445, file: !3, line: 874, type: !6)
!463 = !DILocation(line: 0, scope: !445, inlinedAt: !464)
!464 = distinct !DILocation(line: 44, column: 7, scope: !440)
!465 = !DILocation(line: 838, column: 3, scope: !445, inlinedAt: !464)
!466 = !DILocation(line: 838, column: 67, scope: !445, inlinedAt: !464)
!467 = !DILocation(line: 849, column: 36, scope: !445, inlinedAt: !464)
!468 = !DILocation(line: 851, column: 3, scope: !445, inlinedAt: !464)
!469 = !DILocalVariable(name: "__s1", arg: 1, scope: !470, file: !471, line: 1359, type: !6)
!470 = distinct !DISubprogram(name: "streq", scope: !471, file: !471, line: 1359, type: !472, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !474)
!471 = !DIFile(filename: "./lib/string.h", directory: "/src")
!472 = !DISubroutineType(types: !473)
!473 = !{!44, !6, !6}
!474 = !{!469, !475}
!475 = !DILocalVariable(name: "__s2", arg: 2, scope: !470, file: !471, line: 1359, type: !6)
!476 = !DILocation(line: 0, scope: !470, inlinedAt: !477)
!477 = distinct !DILocation(line: 851, column: 33, scope: !445, inlinedAt: !464)
!478 = !DILocation(line: 1361, column: 11, scope: !470, inlinedAt: !477)
!479 = !DILocation(line: 1361, column: 10, scope: !470, inlinedAt: !477)
!480 = !DILocation(line: 852, column: 13, scope: !445, inlinedAt: !464)
!481 = !DILocation(line: 851, column: 20, scope: !445, inlinedAt: !464)
!482 = !{!483, !436, i64 0}
!483 = !{!"infomap", !436, i64 0, !436, i64 8}
!484 = !DILocation(line: 851, column: 10, scope: !445, inlinedAt: !464)
!485 = !DILocation(line: 851, column: 28, scope: !445, inlinedAt: !464)
!486 = distinct !{!486, !468, !480, !487}
!487 = !{!"llvm.loop.mustprogress"}
!488 = !DILocation(line: 854, column: 17, scope: !489, inlinedAt: !464)
!489 = distinct !DILexicalBlock(scope: !445, file: !3, line: 854, column: 7)
!490 = !{!483, !436, i64 8}
!491 = !DILocation(line: 854, column: 7, scope: !489, inlinedAt: !464)
!492 = !DILocation(line: 854, column: 7, scope: !445, inlinedAt: !464)
!493 = !DILocation(line: 857, column: 3, scope: !445, inlinedAt: !464)
!494 = !DILocation(line: 861, column: 29, scope: !445, inlinedAt: !464)
!495 = !DILocation(line: 862, column: 7, scope: !496, inlinedAt: !464)
!496 = distinct !DILexicalBlock(scope: !445, file: !3, line: 862, column: 7)
!497 = !DILocation(line: 862, column: 19, scope: !496, inlinedAt: !464)
!498 = !DILocation(line: 862, column: 22, scope: !496, inlinedAt: !464)
!499 = !DILocation(line: 862, column: 7, scope: !445, inlinedAt: !464)
!500 = !DILocation(line: 868, column: 7, scope: !501, inlinedAt: !464)
!501 = distinct !DILexicalBlock(scope: !496, file: !3, line: 863, column: 5)
!502 = !DILocation(line: 870, column: 5, scope: !501, inlinedAt: !464)
!503 = !DILocation(line: 0, scope: !470, inlinedAt: !504)
!504 = distinct !DILocation(line: 874, column: 29, scope: !445, inlinedAt: !464)
!505 = !DILocation(line: 875, column: 3, scope: !445, inlinedAt: !464)
!506 = !DILocation(line: 877, column: 3, scope: !445, inlinedAt: !464)
!507 = !DILocation(line: 879, column: 1, scope: !445, inlinedAt: !464)
!508 = !DILocation(line: 46, column: 3, scope: !424)
!509 = !DISubprogram(name: "dcgettext", scope: !510, file: !510, line: 51, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!510 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!511 = !DISubroutineType(types: !512)
!512 = !{!65, !6, !6, !30}
!513 = !{}
!514 = !DISubprogram(name: "fputs_unlocked", scope: !143, file: !143, line: 691, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!515 = !DISubroutineType(types: !516)
!516 = !{!30, !517, !518}
!517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!519 = !DILocation(line: 0, scope: !2)
!520 = !DILocation(line: 581, column: 7, scope: !42)
!521 = !{!522, !522, i64 0}
!522 = !{!"int", !437, i64 0}
!523 = !DILocation(line: 581, column: 19, scope: !42)
!524 = !DILocation(line: 581, column: 7, scope: !2)
!525 = !DILocation(line: 585, column: 26, scope: !41)
!526 = !DILocation(line: 0, scope: !41)
!527 = !DILocation(line: 586, column: 23, scope: !41)
!528 = !DILocation(line: 586, column: 28, scope: !41)
!529 = !DILocation(line: 586, column: 32, scope: !41)
!530 = !{!437, !437, i64 0}
!531 = !DILocation(line: 586, column: 38, scope: !41)
!532 = !DILocation(line: 0, scope: !470, inlinedAt: !533)
!533 = distinct !DILocation(line: 586, column: 41, scope: !41)
!534 = !DILocation(line: 1361, column: 11, scope: !470, inlinedAt: !533)
!535 = !DILocation(line: 1361, column: 10, scope: !470, inlinedAt: !533)
!536 = !DILocation(line: 586, column: 19, scope: !41)
!537 = !DILocation(line: 587, column: 5, scope: !41)
!538 = !DILocation(line: 588, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!540 = !DILocation(line: 588, column: 7, scope: !2)
!541 = !DILocation(line: 590, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !3, line: 589, column: 5)
!543 = !DILocation(line: 591, column: 7, scope: !542)
!544 = !DILocation(line: 595, column: 37, scope: !2)
!545 = !DILocation(line: 595, column: 35, scope: !2)
!546 = !DILocation(line: 596, column: 29, scope: !2)
!547 = !DILocation(line: 597, column: 8, scope: !50)
!548 = !DILocation(line: 597, column: 7, scope: !2)
!549 = !DILocation(line: 604, column: 24, scope: !49)
!550 = !DILocation(line: 604, column: 12, scope: !50)
!551 = !DILocation(line: 0, scope: !48)
!552 = !DILocation(line: 610, column: 16, scope: !48)
!553 = !DILocation(line: 610, column: 7, scope: !48)
!554 = !DILocation(line: 611, column: 21, scope: !48)
!555 = !{!556, !556, i64 0}
!556 = !{!"short", !437, i64 0}
!557 = !DILocation(line: 611, column: 19, scope: !48)
!558 = !DILocation(line: 611, column: 16, scope: !48)
!559 = !DILocation(line: 610, column: 30, scope: !48)
!560 = distinct !{!560, !553, !554, !487}
!561 = !DILocation(line: 612, column: 18, scope: !562)
!562 = distinct !DILexicalBlock(scope: !48, file: !3, line: 612, column: 11)
!563 = !DILocation(line: 612, column: 11, scope: !48)
!564 = !DILocation(line: 620, column: 23, scope: !2)
!565 = !DILocation(line: 625, column: 39, scope: !2)
!566 = !DILocation(line: 626, column: 3, scope: !2)
!567 = !DILocation(line: 626, column: 10, scope: !2)
!568 = !DILocation(line: 626, column: 21, scope: !2)
!569 = !DILocation(line: 628, column: 44, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 628, column: 11)
!571 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!572 = !DILocation(line: 628, column: 32, scope: !570)
!573 = !DILocation(line: 628, column: 49, scope: !570)
!574 = !DILocation(line: 628, column: 11, scope: !571)
!575 = !DILocation(line: 630, column: 11, scope: !576)
!576 = distinct !DILexicalBlock(scope: !571, file: !3, line: 630, column: 11)
!577 = !DILocation(line: 630, column: 11, scope: !571)
!578 = !DILocation(line: 632, column: 26, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 632, column: 15)
!580 = distinct !DILexicalBlock(scope: !576, file: !3, line: 631, column: 9)
!581 = !DILocation(line: 632, column: 34, scope: !579)
!582 = !DILocation(line: 632, column: 37, scope: !579)
!583 = !DILocation(line: 632, column: 15, scope: !580)
!584 = !DILocation(line: 636, column: 29, scope: !585)
!585 = distinct !DILexicalBlock(scope: !580, file: !3, line: 636, column: 15)
!586 = !DILocation(line: 640, column: 16, scope: !571)
!587 = distinct !{!587, !566, !588, !487}
!588 = !DILocation(line: 641, column: 5, scope: !2)
!589 = !DILocation(line: 644, column: 3, scope: !2)
!590 = !DILocation(line: 0, scope: !470, inlinedAt: !591)
!591 = distinct !DILocation(line: 648, column: 31, scope: !2)
!592 = !DILocation(line: 0, scope: !470, inlinedAt: !593)
!593 = distinct !DILocation(line: 649, column: 31, scope: !2)
!594 = !DILocation(line: 0, scope: !470, inlinedAt: !595)
!595 = distinct !DILocation(line: 650, column: 31, scope: !2)
!596 = !DILocation(line: 0, scope: !470, inlinedAt: !597)
!597 = distinct !DILocation(line: 651, column: 31, scope: !2)
!598 = !DILocation(line: 0, scope: !470, inlinedAt: !599)
!599 = distinct !DILocation(line: 652, column: 31, scope: !2)
!600 = !DILocation(line: 0, scope: !470, inlinedAt: !601)
!601 = distinct !DILocation(line: 653, column: 31, scope: !2)
!602 = !DILocation(line: 0, scope: !470, inlinedAt: !603)
!603 = distinct !DILocation(line: 654, column: 31, scope: !2)
!604 = !DILocation(line: 0, scope: !470, inlinedAt: !605)
!605 = distinct !DILocation(line: 655, column: 31, scope: !2)
!606 = !DILocation(line: 0, scope: !470, inlinedAt: !607)
!607 = distinct !DILocation(line: 656, column: 31, scope: !2)
!608 = !DILocation(line: 0, scope: !470, inlinedAt: !609)
!609 = distinct !DILocation(line: 657, column: 31, scope: !2)
!610 = !DILocation(line: 663, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!612 = !DILocation(line: 664, column: 7, scope: !611)
!613 = !DILocation(line: 664, column: 10, scope: !611)
!614 = !DILocation(line: 663, column: 7, scope: !2)
!615 = !DILocation(line: 669, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !3, line: 665, column: 5)
!617 = !DILocation(line: 671, column: 5, scope: !616)
!618 = !DILocation(line: 676, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !611, file: !3, line: 673, column: 5)
!620 = !DILocation(line: 679, column: 3, scope: !2)
!621 = !DILocation(line: 683, column: 3, scope: !2)
!622 = !DILocation(line: 686, column: 3, scope: !2)
!623 = !DILocation(line: 688, column: 3, scope: !2)
!624 = !DILocation(line: 691, column: 3, scope: !2)
!625 = !DILocation(line: 695, column: 3, scope: !2)
!626 = !DILocation(line: 696, column: 1, scope: !2)
!627 = !DISubprogram(name: "setlocale", scope: !628, file: !628, line: 122, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!628 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!629 = !DISubroutineType(types: !630)
!630 = !{!65, !30, !6}
!631 = !DISubprogram(name: "getenv", scope: !632, file: !632, line: 641, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!632 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!633 = !DISubroutineType(types: !634)
!634 = !{!65, !6}
!635 = !DISubprogram(name: "fwrite_unlocked", scope: !143, file: !143, line: 704, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!636 = !DISubroutineType(types: !637)
!637 = !{!32, !638, !32, !32, !518}
!638 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!641 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 50, type: !642, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !645)
!642 = !DISubroutineType(types: !643)
!643 = !{!30, !30, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!645 = !{!646, !647, !648}
!646 = !DILocalVariable(name: "argc", arg: 1, scope: !641, file: !10, line: 50, type: !30)
!647 = !DILocalVariable(name: "argv", arg: 2, scope: !641, file: !10, line: 50, type: !644)
!648 = !DILocalVariable(name: "cp", scope: !641, file: !10, line: 72, type: !6)
!649 = !DILocation(line: 0, scope: !641)
!650 = !DILocation(line: 53, column: 21, scope: !641)
!651 = !DILocation(line: 53, column: 3, scope: !641)
!652 = !DILocation(line: 54, column: 3, scope: !641)
!653 = !DILocation(line: 55, column: 3, scope: !641)
!654 = !DILocation(line: 56, column: 3, scope: !641)
!655 = !DILocation(line: 58, column: 3, scope: !641)
!656 = !DILocation(line: 61, column: 36, scope: !641)
!657 = !DILocation(line: 61, column: 58, scope: !641)
!658 = !DILocation(line: 60, column: 3, scope: !641)
!659 = !DILocation(line: 64, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !641, file: !10, line: 64, column: 7)
!661 = !DILocation(line: 64, column: 14, scope: !660)
!662 = !DILocation(line: 64, column: 7, scope: !641)
!663 = !DILocation(line: 66, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !10, line: 65, column: 5)
!665 = !DILocation(line: 67, column: 7, scope: !664)
!666 = !DILocation(line: 72, column: 20, scope: !641)
!667 = !DILocation(line: 73, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !641, file: !10, line: 73, column: 7)
!669 = !DILocation(line: 73, column: 7, scope: !641)
!670 = !DILocation(line: 74, column: 5, scope: !668)
!671 = !DILocation(line: 76, column: 3, scope: !641)
!672 = !DILocation(line: 77, column: 3, scope: !641)
!673 = !DISubprogram(name: "bindtextdomain", scope: !510, file: !510, line: 86, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!674 = !DISubroutineType(types: !675)
!675 = !{!65, !6, !6}
!676 = !DISubprogram(name: "textdomain", scope: !510, file: !510, line: 82, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!677 = !DISubprogram(name: "atexit", scope: !632, file: !632, line: 602, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!678 = !DISubroutineType(types: !679)
!679 = !{!30, !169}
!680 = !DISubprogram(name: "getlogin", scope: !681, file: !681, line: 881, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!681 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!682 = !DISubroutineType(types: !193)
!683 = !DISubprogram(name: "puts", scope: !143, file: !143, line: 661, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!684 = !DISubroutineType(types: !685)
!685 = !{!30, !6}
!686 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !127, file: !127, line: 50, type: !446, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !687)
!687 = !{!688}
!688 = !DILocalVariable(name: "file", arg: 1, scope: !686, file: !127, line: 50, type: !6)
!689 = !DILocation(line: 0, scope: !686)
!690 = !DILocation(line: 52, column: 13, scope: !686)
!691 = !DILocation(line: 53, column: 1, scope: !686)
!692 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !127, file: !127, line: 87, type: !693, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !44}
!695 = !{!696}
!696 = !DILocalVariable(name: "ignore", arg: 1, scope: !692, file: !127, line: 87, type: !44)
!697 = !DILocation(line: 0, scope: !692)
!698 = !DILocation(line: 89, column: 16, scope: !692)
!699 = !{!700, !700, i64 0}
!700 = !{!"_Bool", !437, i64 0}
!701 = !DILocation(line: 90, column: 1, scope: !692)
!702 = distinct !DISubprogram(name: "close_stdout", scope: !127, file: !127, line: 116, type: !170, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !703)
!703 = !{!704}
!704 = !DILocalVariable(name: "write_error", scope: !705, file: !127, line: 121, type: !6)
!705 = distinct !DILexicalBlock(scope: !706, file: !127, line: 120, column: 5)
!706 = distinct !DILexicalBlock(scope: !702, file: !127, line: 118, column: 7)
!707 = !DILocation(line: 118, column: 21, scope: !706)
!708 = !DILocation(line: 118, column: 7, scope: !706)
!709 = !DILocation(line: 118, column: 29, scope: !706)
!710 = !DILocation(line: 119, column: 7, scope: !706)
!711 = !DILocation(line: 119, column: 12, scope: !706)
!712 = !{i8 0, i8 2}
!713 = !DILocation(line: 119, column: 25, scope: !706)
!714 = !DILocation(line: 119, column: 28, scope: !706)
!715 = !DILocation(line: 119, column: 34, scope: !706)
!716 = !DILocation(line: 118, column: 7, scope: !702)
!717 = !DILocation(line: 121, column: 33, scope: !705)
!718 = !DILocation(line: 0, scope: !705)
!719 = !DILocation(line: 122, column: 11, scope: !720)
!720 = distinct !DILexicalBlock(scope: !705, file: !127, line: 122, column: 11)
!721 = !DILocation(line: 0, scope: !720)
!722 = !DILocation(line: 122, column: 11, scope: !705)
!723 = !DILocation(line: 123, column: 9, scope: !720)
!724 = !DILocation(line: 126, column: 9, scope: !720)
!725 = !DILocation(line: 128, column: 14, scope: !705)
!726 = !DILocation(line: 128, column: 7, scope: !705)
!727 = !DILocation(line: 133, column: 42, scope: !728)
!728 = distinct !DILexicalBlock(scope: !702, file: !127, line: 133, column: 7)
!729 = !DILocation(line: 133, column: 28, scope: !728)
!730 = !DILocation(line: 133, column: 50, scope: !728)
!731 = !DILocation(line: 133, column: 7, scope: !702)
!732 = !DILocation(line: 134, column: 12, scope: !728)
!733 = !DILocation(line: 134, column: 5, scope: !728)
!734 = !DILocation(line: 135, column: 1, scope: !702)
!735 = distinct !DISubprogram(name: "verror", scope: !134, file: !134, line: 251, type: !736, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !30, !30, !6, !142}
!738 = !{!739, !740, !741, !742}
!739 = !DILocalVariable(name: "status", arg: 1, scope: !735, file: !134, line: 251, type: !30)
!740 = !DILocalVariable(name: "errnum", arg: 2, scope: !735, file: !134, line: 251, type: !30)
!741 = !DILocalVariable(name: "message", arg: 3, scope: !735, file: !134, line: 251, type: !6)
!742 = !DILocalVariable(name: "args", arg: 4, scope: !735, file: !134, line: 251, type: !142)
!743 = !DILocation(line: 0, scope: !735)
!744 = !DILocation(line: 251, column: 1, scope: !735)
!745 = !DILocation(line: 261, column: 3, scope: !735)
!746 = !DILocation(line: 265, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !735, file: !134, line: 265, column: 7)
!748 = !DILocation(line: 265, column: 7, scope: !735)
!749 = !DILocation(line: 266, column: 5, scope: !747)
!750 = !DILocation(line: 272, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !747, file: !134, line: 268, column: 5)
!752 = !DILocation(line: 276, column: 3, scope: !735)
!753 = !{i64 0, i64 8, !435, i64 8, i64 8, !435, i64 16, i64 8, !435, i64 24, i64 4, !521, i64 28, i64 4, !521}
!754 = !DILocation(line: 282, column: 1, scope: !735)
!755 = distinct !DISubprogram(name: "flush_stdout", scope: !134, file: !134, line: 163, type: !170, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !756)
!756 = !{!757}
!757 = !DILocalVariable(name: "stdout_fd", scope: !755, file: !134, line: 166, type: !30)
!758 = !DILocation(line: 0, scope: !755)
!759 = !DILocalVariable(name: "fd", arg: 1, scope: !760, file: !134, line: 145, type: !30)
!760 = distinct !DISubprogram(name: "is_open", scope: !134, file: !134, line: 145, type: !761, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!30, !30}
!763 = !{!759}
!764 = !DILocation(line: 0, scope: !760, inlinedAt: !765)
!765 = distinct !DILocation(line: 182, column: 25, scope: !766)
!766 = distinct !DILexicalBlock(scope: !755, file: !134, line: 182, column: 7)
!767 = !DILocation(line: 157, column: 15, scope: !760, inlinedAt: !765)
!768 = !DILocation(line: 182, column: 25, scope: !766)
!769 = !DILocation(line: 182, column: 7, scope: !755)
!770 = !DILocation(line: 184, column: 5, scope: !766)
!771 = !DILocation(line: 185, column: 1, scope: !755)
!772 = distinct !DISubprogram(name: "error_tail", scope: !134, file: !134, line: 219, type: !736, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !773)
!773 = !{!774, !775, !776, !777}
!774 = !DILocalVariable(name: "status", arg: 1, scope: !772, file: !134, line: 219, type: !30)
!775 = !DILocalVariable(name: "errnum", arg: 2, scope: !772, file: !134, line: 219, type: !30)
!776 = !DILocalVariable(name: "message", arg: 3, scope: !772, file: !134, line: 219, type: !6)
!777 = !DILocalVariable(name: "args", arg: 4, scope: !772, file: !134, line: 219, type: !142)
!778 = !DILocation(line: 0, scope: !772)
!779 = !DILocation(line: 219, column: 1, scope: !772)
!780 = !DILocation(line: 229, column: 13, scope: !772)
!781 = !DILocation(line: 229, column: 3, scope: !772)
!782 = !DILocalVariable(name: "__stream", arg: 1, scope: !783, file: !784, line: 132, type: !787)
!783 = distinct !DISubprogram(name: "vfprintf", scope: !784, file: !784, line: 132, type: !785, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !822)
!784 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!785 = !DISubroutineType(types: !786)
!786 = !{!30, !787, !517, !144}
!787 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !790, file: !61, line: 51, baseType: !30, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !790, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !790, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !790, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !790, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !790, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !790, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !790, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !790, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !790, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !790, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !790, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !790, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !790, file: !61, line: 70, baseType: !806, size: 64, offset: 832)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !790, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !790, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !790, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !790, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !790, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !790, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !790, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !790, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !790, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !790, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !790, file: !61, line: 93, baseType: !806, size: 64, offset: 1344)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !790, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !790, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !790, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !790, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!822 = !{!782, !823, !824}
!823 = !DILocalVariable(name: "__fmt", arg: 2, scope: !783, file: !784, line: 133, type: !517)
!824 = !DILocalVariable(name: "__ap", arg: 3, scope: !783, file: !784, line: 133, type: !144)
!825 = !DILocation(line: 0, scope: !783, inlinedAt: !826)
!826 = distinct !DILocation(line: 229, column: 3, scope: !772)
!827 = !DILocation(line: 135, column: 10, scope: !783, inlinedAt: !826)
!828 = !{!829, !831}
!829 = distinct !{!829, !830, !"vfprintf.inline: argument 0"}
!830 = distinct !{!830, !"vfprintf.inline"}
!831 = distinct !{!831, !830, !"vfprintf.inline: argument 1"}
!832 = !DILocation(line: 232, column: 3, scope: !772)
!833 = !DILocation(line: 233, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !772, file: !134, line: 233, column: 7)
!835 = !DILocation(line: 233, column: 7, scope: !772)
!836 = !DILocalVariable(name: "errnum", arg: 1, scope: !837, file: !134, line: 188, type: !30)
!837 = distinct !DISubprogram(name: "print_errno_message", scope: !134, file: !134, line: 188, type: !425, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !838)
!838 = !{!836, !839, !840}
!839 = !DILocalVariable(name: "s", scope: !837, file: !134, line: 190, type: !6)
!840 = !DILocalVariable(name: "errbuf", scope: !837, file: !134, line: 193, type: !841)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 1024)
!844 = !DILocation(line: 0, scope: !837, inlinedAt: !845)
!845 = distinct !DILocation(line: 234, column: 5, scope: !834)
!846 = !DILocation(line: 193, column: 3, scope: !837, inlinedAt: !845)
!847 = !DILocation(line: 193, column: 8, scope: !837, inlinedAt: !845)
!848 = !DILocation(line: 195, column: 7, scope: !837, inlinedAt: !845)
!849 = !DILocation(line: 207, column: 9, scope: !850, inlinedAt: !845)
!850 = distinct !DILexicalBlock(scope: !837, file: !134, line: 207, column: 7)
!851 = !DILocation(line: 207, column: 7, scope: !837, inlinedAt: !845)
!852 = !DILocation(line: 208, column: 9, scope: !850, inlinedAt: !845)
!853 = !DILocation(line: 208, column: 5, scope: !850, inlinedAt: !845)
!854 = !DILocation(line: 214, column: 3, scope: !837, inlinedAt: !845)
!855 = !DILocation(line: 216, column: 1, scope: !837, inlinedAt: !845)
!856 = !DILocation(line: 234, column: 5, scope: !834)
!857 = !DILocation(line: 238, column: 3, scope: !772)
!858 = !DILocalVariable(name: "__c", arg: 1, scope: !859, file: !860, line: 101, type: !30)
!859 = distinct !DISubprogram(name: "putc_unlocked", scope: !860, file: !860, line: 101, type: !861, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !863)
!860 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!861 = !DISubroutineType(types: !862)
!862 = !{!30, !30, !788}
!863 = !{!858, !864}
!864 = !DILocalVariable(name: "__stream", arg: 2, scope: !859, file: !860, line: 101, type: !788)
!865 = !DILocation(line: 0, scope: !859, inlinedAt: !866)
!866 = distinct !DILocation(line: 238, column: 3, scope: !772)
!867 = !DILocation(line: 103, column: 10, scope: !859, inlinedAt: !866)
!868 = !{!869, !436, i64 40}
!869 = !{!"_IO_FILE", !522, i64 0, !436, i64 8, !436, i64 16, !436, i64 24, !436, i64 32, !436, i64 40, !436, i64 48, !436, i64 56, !436, i64 64, !436, i64 72, !436, i64 80, !436, i64 88, !436, i64 96, !436, i64 104, !522, i64 112, !522, i64 116, !870, i64 120, !556, i64 128, !437, i64 130, !437, i64 131, !436, i64 136, !870, i64 144, !436, i64 152, !436, i64 160, !436, i64 168, !436, i64 176, !870, i64 184, !522, i64 192, !437, i64 196}
!870 = !{!"long", !437, i64 0}
!871 = !{!869, !436, i64 48}
!872 = !{!"branch_weights", i32 2000, i32 1}
!873 = !DILocation(line: 240, column: 3, scope: !772)
!874 = !DILocation(line: 241, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !772, file: !134, line: 241, column: 7)
!876 = !DILocation(line: 241, column: 7, scope: !772)
!877 = !DILocation(line: 242, column: 5, scope: !875)
!878 = !DILocation(line: 243, column: 1, scope: !772)
!879 = !DISubprogram(name: "strerror_r", scope: !880, file: !880, line: 444, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!880 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!881 = !DISubroutineType(types: !882)
!882 = !{!65, !30, !65, !32}
!883 = !DISubprogram(name: "fflush_unlocked", scope: !143, file: !143, line: 239, type: !884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!884 = !DISubroutineType(types: !885)
!885 = !{!30, !788}
!886 = !DISubprogram(name: "fcntl", scope: !887, file: !887, line: 149, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!887 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!888 = !DISubroutineType(types: !889)
!889 = !{!30, !30, !30, null}
!890 = distinct !DISubprogram(name: "error", scope: !134, file: !134, line: 285, type: !891, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !30, !30, !6, null}
!893 = !{!894, !895, !896, !897}
!894 = !DILocalVariable(name: "status", arg: 1, scope: !890, file: !134, line: 285, type: !30)
!895 = !DILocalVariable(name: "errnum", arg: 2, scope: !890, file: !134, line: 285, type: !30)
!896 = !DILocalVariable(name: "message", arg: 3, scope: !890, file: !134, line: 285, type: !6)
!897 = !DILocalVariable(name: "ap", scope: !890, file: !134, line: 287, type: !142)
!898 = !DILocation(line: 0, scope: !890)
!899 = !DILocation(line: 287, column: 3, scope: !890)
!900 = !DILocation(line: 287, column: 11, scope: !890)
!901 = !DILocation(line: 288, column: 3, scope: !890)
!902 = !DILocation(line: 289, column: 3, scope: !890)
!903 = !DILocation(line: 290, column: 3, scope: !890)
!904 = !DILocation(line: 291, column: 1, scope: !890)
!905 = !DILocation(line: 0, scope: !139)
!906 = !DILocation(line: 298, column: 1, scope: !139)
!907 = !DILocation(line: 302, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !139, file: !134, line: 302, column: 7)
!909 = !DILocation(line: 302, column: 7, scope: !139)
!910 = !DILocation(line: 307, column: 11, scope: !911)
!911 = distinct !DILexicalBlock(scope: !912, file: !134, line: 307, column: 11)
!912 = distinct !DILexicalBlock(scope: !908, file: !134, line: 303, column: 5)
!913 = !DILocation(line: 307, column: 27, scope: !911)
!914 = !DILocation(line: 308, column: 11, scope: !911)
!915 = !DILocation(line: 308, column: 28, scope: !911)
!916 = !DILocation(line: 308, column: 25, scope: !911)
!917 = !DILocation(line: 309, column: 15, scope: !911)
!918 = !DILocation(line: 309, column: 33, scope: !911)
!919 = !DILocation(line: 310, column: 19, scope: !911)
!920 = !DILocation(line: 311, column: 22, scope: !911)
!921 = !DILocation(line: 311, column: 56, scope: !911)
!922 = !DILocation(line: 307, column: 11, scope: !912)
!923 = !DILocation(line: 316, column: 21, scope: !912)
!924 = !DILocation(line: 317, column: 23, scope: !912)
!925 = !DILocation(line: 318, column: 5, scope: !912)
!926 = !DILocation(line: 327, column: 3, scope: !139)
!927 = !DILocation(line: 331, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !139, file: !134, line: 331, column: 7)
!929 = !DILocation(line: 331, column: 7, scope: !139)
!930 = !DILocation(line: 332, column: 5, scope: !928)
!931 = !DILocation(line: 338, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !928, file: !134, line: 334, column: 5)
!933 = !DILocation(line: 346, column: 3, scope: !139)
!934 = !DILocation(line: 350, column: 3, scope: !139)
!935 = !DILocation(line: 356, column: 1, scope: !139)
!936 = distinct !DISubprogram(name: "error_at_line", scope: !134, file: !134, line: 359, type: !937, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !939)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !30, !30, !6, !14, !6, null}
!939 = !{!940, !941, !942, !943, !944, !945}
!940 = !DILocalVariable(name: "status", arg: 1, scope: !936, file: !134, line: 359, type: !30)
!941 = !DILocalVariable(name: "errnum", arg: 2, scope: !936, file: !134, line: 359, type: !30)
!942 = !DILocalVariable(name: "file_name", arg: 3, scope: !936, file: !134, line: 359, type: !6)
!943 = !DILocalVariable(name: "line_number", arg: 4, scope: !936, file: !134, line: 360, type: !14)
!944 = !DILocalVariable(name: "message", arg: 5, scope: !936, file: !134, line: 360, type: !6)
!945 = !DILocalVariable(name: "ap", scope: !936, file: !134, line: 362, type: !142)
!946 = !DILocation(line: 0, scope: !936)
!947 = !DILocation(line: 362, column: 3, scope: !936)
!948 = !DILocation(line: 362, column: 11, scope: !936)
!949 = !DILocation(line: 363, column: 3, scope: !936)
!950 = !DILocation(line: 364, column: 3, scope: !936)
!951 = !DILocation(line: 366, column: 3, scope: !936)
!952 = !DILocation(line: 367, column: 1, scope: !936)
!953 = distinct !DISubprogram(name: "getprogname", scope: !351, file: !351, line: 54, type: !954, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !513)
!954 = !DISubroutineType(types: !955)
!955 = !{!6}
!956 = !DILocation(line: 58, column: 10, scope: !953)
!957 = !DILocation(line: 58, column: 3, scope: !953)
!958 = distinct !DISubprogram(name: "parse_long_options", scope: !175, file: !175, line: 45, type: !959, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !962)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !30, !644, !6, !6, !6, !961, null}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970, !973}
!963 = !DILocalVariable(name: "argc", arg: 1, scope: !958, file: !175, line: 45, type: !30)
!964 = !DILocalVariable(name: "argv", arg: 2, scope: !958, file: !175, line: 46, type: !644)
!965 = !DILocalVariable(name: "command_name", arg: 3, scope: !958, file: !175, line: 47, type: !6)
!966 = !DILocalVariable(name: "package", arg: 4, scope: !958, file: !175, line: 48, type: !6)
!967 = !DILocalVariable(name: "version", arg: 5, scope: !958, file: !175, line: 49, type: !6)
!968 = !DILocalVariable(name: "usage_func", arg: 6, scope: !958, file: !175, line: 50, type: !961)
!969 = !DILocalVariable(name: "saved_opterr", scope: !958, file: !175, line: 53, type: !30)
!970 = !DILocalVariable(name: "c", scope: !971, file: !175, line: 60, type: !30)
!971 = distinct !DILexicalBlock(scope: !972, file: !175, line: 59, column: 5)
!972 = distinct !DILexicalBlock(scope: !958, file: !175, line: 58, column: 7)
!973 = !DILocalVariable(name: "authors", scope: !974, file: !175, line: 71, type: !978)
!974 = distinct !DILexicalBlock(scope: !975, file: !175, line: 70, column: 15)
!975 = distinct !DILexicalBlock(scope: !976, file: !175, line: 64, column: 13)
!976 = distinct !DILexicalBlock(scope: !977, file: !175, line: 62, column: 9)
!977 = distinct !DILexicalBlock(scope: !971, file: !175, line: 61, column: 11)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 52, baseType: !979)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !145, line: 32, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !981, baseType: !982)
!981 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !149, size: 256, elements: !983)
!983 = !{!984, !985, !986, !987, !988}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !982, file: !981, line: 71, baseType: !29, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !982, file: !981, line: 71, baseType: !29, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !982, file: !981, line: 71, baseType: !29, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !982, file: !981, line: 71, baseType: !30, size: 32, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !982, file: !981, line: 71, baseType: !30, size: 32, offset: 224)
!989 = !DILocation(line: 0, scope: !958)
!990 = !DILocation(line: 53, column: 22, scope: !958)
!991 = !DILocation(line: 56, column: 10, scope: !958)
!992 = !DILocation(line: 58, column: 12, scope: !972)
!993 = !DILocation(line: 58, column: 7, scope: !958)
!994 = !DILocation(line: 60, column: 15, scope: !971)
!995 = !DILocation(line: 0, scope: !971)
!996 = !DILocation(line: 61, column: 11, scope: !971)
!997 = !DILocation(line: 66, column: 15, scope: !975)
!998 = !DILocation(line: 67, column: 15, scope: !975)
!999 = !DILocation(line: 71, column: 17, scope: !974)
!1000 = !DILocation(line: 71, column: 25, scope: !974)
!1001 = !DILocation(line: 72, column: 17, scope: !974)
!1002 = !DILocation(line: 73, column: 33, scope: !974)
!1003 = !DILocation(line: 73, column: 17, scope: !974)
!1004 = !DILocation(line: 74, column: 17, scope: !974)
!1005 = !DILocation(line: 85, column: 10, scope: !958)
!1006 = !DILocation(line: 89, column: 10, scope: !958)
!1007 = !DILocation(line: 90, column: 1, scope: !958)
!1008 = !DISubprogram(name: "getopt_long", scope: !180, file: !180, line: 66, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!30, !30, !1011, !6, !1013, !185}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1014 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !175, file: !175, line: 98, type: !1015, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !30, !644, !6, !6, !6, !44, !961, null}
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}
!1018 = !DILocalVariable(name: "argc", arg: 1, scope: !1014, file: !175, line: 98, type: !30)
!1019 = !DILocalVariable(name: "argv", arg: 2, scope: !1014, file: !175, line: 99, type: !644)
!1020 = !DILocalVariable(name: "command_name", arg: 3, scope: !1014, file: !175, line: 100, type: !6)
!1021 = !DILocalVariable(name: "package", arg: 4, scope: !1014, file: !175, line: 101, type: !6)
!1022 = !DILocalVariable(name: "version", arg: 5, scope: !1014, file: !175, line: 102, type: !6)
!1023 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1014, file: !175, line: 103, type: !44)
!1024 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1014, file: !175, line: 104, type: !961)
!1025 = !DILocalVariable(name: "saved_opterr", scope: !1014, file: !175, line: 107, type: !30)
!1026 = !DILocalVariable(name: "optstring", scope: !1014, file: !175, line: 112, type: !6)
!1027 = !DILocalVariable(name: "c", scope: !1014, file: !175, line: 114, type: !30)
!1028 = !DILocalVariable(name: "authors", scope: !1029, file: !175, line: 125, type: !978)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !175, line: 124, column: 11)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !175, line: 118, column: 9)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !175, line: 116, column: 5)
!1032 = distinct !DILexicalBlock(scope: !1014, file: !175, line: 115, column: 7)
!1033 = !DILocation(line: 0, scope: !1014)
!1034 = !DILocation(line: 107, column: 22, scope: !1014)
!1035 = !DILocation(line: 110, column: 10, scope: !1014)
!1036 = !DILocation(line: 112, column: 27, scope: !1014)
!1037 = !DILocation(line: 114, column: 11, scope: !1014)
!1038 = !DILocation(line: 115, column: 7, scope: !1014)
!1039 = !DILocation(line: 125, column: 13, scope: !1029)
!1040 = !DILocation(line: 125, column: 21, scope: !1029)
!1041 = !DILocation(line: 126, column: 13, scope: !1029)
!1042 = !DILocation(line: 127, column: 29, scope: !1029)
!1043 = !DILocation(line: 127, column: 13, scope: !1029)
!1044 = !DILocation(line: 128, column: 13, scope: !1029)
!1045 = !DILocation(line: 132, column: 26, scope: !1030)
!1046 = !DILocation(line: 133, column: 11, scope: !1030)
!1047 = !DILocation(line: 0, scope: !1030)
!1048 = !DILocation(line: 138, column: 10, scope: !1014)
!1049 = !DILocation(line: 139, column: 1, scope: !1014)
!1050 = distinct !DISubprogram(name: "set_program_name", scope: !192, file: !192, line: 37, type: !446, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DILocalVariable(name: "argv0", arg: 1, scope: !1050, file: !192, line: 37, type: !6)
!1053 = !DILocalVariable(name: "slash", scope: !1050, file: !192, line: 44, type: !6)
!1054 = !DILocalVariable(name: "base", scope: !1050, file: !192, line: 45, type: !6)
!1055 = !DILocation(line: 0, scope: !1050)
!1056 = !DILocation(line: 44, column: 23, scope: !1050)
!1057 = !DILocation(line: 45, column: 22, scope: !1050)
!1058 = !DILocation(line: 46, column: 17, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !192, line: 46, column: 7)
!1060 = !DILocation(line: 46, column: 9, scope: !1059)
!1061 = !DILocation(line: 46, column: 25, scope: !1059)
!1062 = !DILocation(line: 46, column: 40, scope: !1059)
!1063 = !DILocalVariable(name: "__s1", arg: 1, scope: !1064, file: !471, line: 974, type: !639)
!1064 = distinct !DISubprogram(name: "memeq", scope: !471, file: !471, line: 974, type: !1065, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!44, !639, !639, !32}
!1067 = !{!1063, !1068, !1069}
!1068 = !DILocalVariable(name: "__s2", arg: 2, scope: !1064, file: !471, line: 974, type: !639)
!1069 = !DILocalVariable(name: "__n", arg: 3, scope: !1064, file: !471, line: 974, type: !32)
!1070 = !DILocation(line: 0, scope: !1064, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 46, column: 28, scope: !1059)
!1072 = !DILocation(line: 976, column: 11, scope: !1064, inlinedAt: !1071)
!1073 = !DILocation(line: 976, column: 10, scope: !1064, inlinedAt: !1071)
!1074 = !DILocation(line: 46, column: 7, scope: !1050)
!1075 = !DILocation(line: 49, column: 11, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !192, line: 49, column: 11)
!1077 = distinct !DILexicalBlock(scope: !1059, file: !192, line: 47, column: 5)
!1078 = !DILocation(line: 49, column: 36, scope: !1076)
!1079 = !DILocation(line: 49, column: 11, scope: !1077)
!1080 = !DILocation(line: 65, column: 16, scope: !1050)
!1081 = !DILocation(line: 71, column: 27, scope: !1050)
!1082 = !DILocation(line: 74, column: 33, scope: !1050)
!1083 = !DILocation(line: 76, column: 1, scope: !1050)
!1084 = !DILocation(line: 0, scope: !197)
!1085 = !DILocation(line: 40, column: 29, scope: !197)
!1086 = !DILocation(line: 41, column: 19, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !197, file: !198, line: 41, column: 7)
!1088 = !DILocation(line: 41, column: 7, scope: !197)
!1089 = !DILocation(line: 47, column: 3, scope: !197)
!1090 = !DILocation(line: 48, column: 3, scope: !197)
!1091 = !DILocation(line: 48, column: 13, scope: !197)
!1092 = !DILocalVariable(name: "ps", arg: 1, scope: !1093, file: !1094, line: 1135, type: !1097)
!1093 = distinct !DISubprogram(name: "mbszero", scope: !1094, file: !1094, line: 1135, type: !1095, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1098)
!1094 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!1098 = !{!1092}
!1099 = !DILocation(line: 0, scope: !1093, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 48, column: 18, scope: !197)
!1101 = !DILocalVariable(name: "__dest", arg: 1, scope: !1102, file: !1103, line: 57, type: !29)
!1102 = distinct !DISubprogram(name: "memset", scope: !1103, file: !1103, line: 57, type: !1104, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1106)
!1103 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!29, !29, !30, !32}
!1106 = !{!1101, !1107, !1108}
!1107 = !DILocalVariable(name: "__ch", arg: 2, scope: !1102, file: !1103, line: 57, type: !30)
!1108 = !DILocalVariable(name: "__len", arg: 3, scope: !1102, file: !1103, line: 57, type: !32)
!1109 = !DILocation(line: 0, scope: !1102, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 1137, column: 3, scope: !1093, inlinedAt: !1100)
!1111 = !DILocation(line: 59, column: 10, scope: !1102, inlinedAt: !1110)
!1112 = !DILocation(line: 49, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !197, file: !198, line: 49, column: 7)
!1114 = !DILocation(line: 49, column: 39, scope: !1113)
!1115 = !DILocation(line: 49, column: 44, scope: !1113)
!1116 = !DILocation(line: 54, column: 1, scope: !197)
!1117 = !DISubprogram(name: "mbrtoc32", scope: !209, file: !209, line: 57, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!32, !1120, !517, !32, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1097)
!1123 = distinct !DISubprogram(name: "clone_quoting_options", scope: !234, file: !234, line: 113, type: !1124, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1127)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!1126, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1127 = !{!1128, !1129, !1130}
!1128 = !DILocalVariable(name: "o", arg: 1, scope: !1123, file: !234, line: 113, type: !1126)
!1129 = !DILocalVariable(name: "saved_errno", scope: !1123, file: !234, line: 115, type: !30)
!1130 = !DILocalVariable(name: "p", scope: !1123, file: !234, line: 116, type: !1126)
!1131 = !DILocation(line: 0, scope: !1123)
!1132 = !DILocation(line: 115, column: 21, scope: !1123)
!1133 = !DILocation(line: 116, column: 40, scope: !1123)
!1134 = !DILocation(line: 116, column: 31, scope: !1123)
!1135 = !DILocation(line: 118, column: 9, scope: !1123)
!1136 = !DILocation(line: 119, column: 3, scope: !1123)
!1137 = distinct !DISubprogram(name: "get_quoting_style", scope: !234, file: !234, line: 124, type: !1138, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1142)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!236, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1142 = !{!1143}
!1143 = !DILocalVariable(name: "o", arg: 1, scope: !1137, file: !234, line: 124, type: !1140)
!1144 = !DILocation(line: 0, scope: !1137)
!1145 = !DILocation(line: 126, column: 11, scope: !1137)
!1146 = !DILocation(line: 126, column: 46, scope: !1137)
!1147 = !{!1148, !437, i64 0}
!1148 = !{!"quoting_options", !437, i64 0, !522, i64 4, !437, i64 8, !436, i64 40, !436, i64 48}
!1149 = !DILocation(line: 126, column: 3, scope: !1137)
!1150 = distinct !DISubprogram(name: "set_quoting_style", scope: !234, file: !234, line: 132, type: !1151, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !1126, !236}
!1153 = !{!1154, !1155}
!1154 = !DILocalVariable(name: "o", arg: 1, scope: !1150, file: !234, line: 132, type: !1126)
!1155 = !DILocalVariable(name: "s", arg: 2, scope: !1150, file: !234, line: 132, type: !236)
!1156 = !DILocation(line: 0, scope: !1150)
!1157 = !DILocation(line: 134, column: 4, scope: !1150)
!1158 = !DILocation(line: 134, column: 39, scope: !1150)
!1159 = !DILocation(line: 134, column: 45, scope: !1150)
!1160 = !DILocation(line: 135, column: 1, scope: !1150)
!1161 = distinct !DISubprogram(name: "set_char_quoting", scope: !234, file: !234, line: 143, type: !1162, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!30, !1126, !8, !30}
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1171, !1172}
!1165 = !DILocalVariable(name: "o", arg: 1, scope: !1161, file: !234, line: 143, type: !1126)
!1166 = !DILocalVariable(name: "c", arg: 2, scope: !1161, file: !234, line: 143, type: !8)
!1167 = !DILocalVariable(name: "i", arg: 3, scope: !1161, file: !234, line: 143, type: !30)
!1168 = !DILocalVariable(name: "uc", scope: !1161, file: !234, line: 145, type: !35)
!1169 = !DILocalVariable(name: "p", scope: !1161, file: !234, line: 146, type: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1171 = !DILocalVariable(name: "shift", scope: !1161, file: !234, line: 148, type: !30)
!1172 = !DILocalVariable(name: "r", scope: !1161, file: !234, line: 149, type: !14)
!1173 = !DILocation(line: 0, scope: !1161)
!1174 = !DILocation(line: 147, column: 6, scope: !1161)
!1175 = !DILocation(line: 147, column: 62, scope: !1161)
!1176 = !DILocation(line: 147, column: 57, scope: !1161)
!1177 = !DILocation(line: 148, column: 15, scope: !1161)
!1178 = !DILocation(line: 149, column: 21, scope: !1161)
!1179 = !DILocation(line: 149, column: 24, scope: !1161)
!1180 = !DILocation(line: 149, column: 34, scope: !1161)
!1181 = !DILocation(line: 150, column: 13, scope: !1161)
!1182 = !DILocation(line: 150, column: 19, scope: !1161)
!1183 = !DILocation(line: 150, column: 24, scope: !1161)
!1184 = !DILocation(line: 150, column: 6, scope: !1161)
!1185 = !DILocation(line: 151, column: 3, scope: !1161)
!1186 = distinct !DISubprogram(name: "set_quoting_flags", scope: !234, file: !234, line: 159, type: !1187, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!30, !1126, !30}
!1189 = !{!1190, !1191, !1192}
!1190 = !DILocalVariable(name: "o", arg: 1, scope: !1186, file: !234, line: 159, type: !1126)
!1191 = !DILocalVariable(name: "i", arg: 2, scope: !1186, file: !234, line: 159, type: !30)
!1192 = !DILocalVariable(name: "r", scope: !1186, file: !234, line: 163, type: !30)
!1193 = !DILocation(line: 0, scope: !1186)
!1194 = !DILocation(line: 161, column: 8, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1186, file: !234, line: 161, column: 7)
!1196 = !DILocation(line: 161, column: 7, scope: !1186)
!1197 = !DILocation(line: 163, column: 14, scope: !1186)
!1198 = !{!1148, !522, i64 4}
!1199 = !DILocation(line: 164, column: 12, scope: !1186)
!1200 = !DILocation(line: 165, column: 3, scope: !1186)
!1201 = distinct !DISubprogram(name: "set_custom_quoting", scope: !234, file: !234, line: 169, type: !1202, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1204)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{null, !1126, !6, !6}
!1204 = !{!1205, !1206, !1207}
!1205 = !DILocalVariable(name: "o", arg: 1, scope: !1201, file: !234, line: 169, type: !1126)
!1206 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1201, file: !234, line: 170, type: !6)
!1207 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1201, file: !234, line: 170, type: !6)
!1208 = !DILocation(line: 0, scope: !1201)
!1209 = !DILocation(line: 172, column: 8, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1201, file: !234, line: 172, column: 7)
!1211 = !DILocation(line: 172, column: 7, scope: !1201)
!1212 = !DILocation(line: 174, column: 6, scope: !1201)
!1213 = !DILocation(line: 174, column: 12, scope: !1201)
!1214 = !DILocation(line: 175, column: 8, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1201, file: !234, line: 175, column: 7)
!1216 = !DILocation(line: 175, column: 19, scope: !1215)
!1217 = !DILocation(line: 176, column: 5, scope: !1215)
!1218 = !DILocation(line: 177, column: 6, scope: !1201)
!1219 = !DILocation(line: 177, column: 17, scope: !1201)
!1220 = !{!1148, !436, i64 40}
!1221 = !DILocation(line: 178, column: 6, scope: !1201)
!1222 = !DILocation(line: 178, column: 18, scope: !1201)
!1223 = !{!1148, !436, i64 48}
!1224 = !DILocation(line: 179, column: 1, scope: !1201)
!1225 = distinct !DISubprogram(name: "quotearg_buffer", scope: !234, file: !234, line: 774, type: !1226, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!32, !65, !32, !6, !32, !1140}
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236}
!1229 = !DILocalVariable(name: "buffer", arg: 1, scope: !1225, file: !234, line: 774, type: !65)
!1230 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1225, file: !234, line: 774, type: !32)
!1231 = !DILocalVariable(name: "arg", arg: 3, scope: !1225, file: !234, line: 775, type: !6)
!1232 = !DILocalVariable(name: "argsize", arg: 4, scope: !1225, file: !234, line: 775, type: !32)
!1233 = !DILocalVariable(name: "o", arg: 5, scope: !1225, file: !234, line: 776, type: !1140)
!1234 = !DILocalVariable(name: "p", scope: !1225, file: !234, line: 778, type: !1140)
!1235 = !DILocalVariable(name: "saved_errno", scope: !1225, file: !234, line: 779, type: !30)
!1236 = !DILocalVariable(name: "r", scope: !1225, file: !234, line: 780, type: !32)
!1237 = !DILocation(line: 0, scope: !1225)
!1238 = !DILocation(line: 778, column: 37, scope: !1225)
!1239 = !DILocation(line: 779, column: 21, scope: !1225)
!1240 = !DILocation(line: 781, column: 43, scope: !1225)
!1241 = !DILocation(line: 781, column: 53, scope: !1225)
!1242 = !DILocation(line: 781, column: 60, scope: !1225)
!1243 = !DILocation(line: 782, column: 43, scope: !1225)
!1244 = !DILocation(line: 782, column: 58, scope: !1225)
!1245 = !DILocation(line: 780, column: 14, scope: !1225)
!1246 = !DILocation(line: 783, column: 9, scope: !1225)
!1247 = !DILocation(line: 784, column: 3, scope: !1225)
!1248 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !234, file: !234, line: 251, type: !1249, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1253)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!32, !65, !32, !6, !32, !236, !30, !1251, !6, !6}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1278, !1280, !1283, !1284, !1285, !1286, !1289, !1290, !1293, !1297, !1298, !1306, !1309, !1310, !1312, !1313, !1314, !1315}
!1254 = !DILocalVariable(name: "buffer", arg: 1, scope: !1248, file: !234, line: 251, type: !65)
!1255 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1248, file: !234, line: 251, type: !32)
!1256 = !DILocalVariable(name: "arg", arg: 3, scope: !1248, file: !234, line: 252, type: !6)
!1257 = !DILocalVariable(name: "argsize", arg: 4, scope: !1248, file: !234, line: 252, type: !32)
!1258 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1248, file: !234, line: 253, type: !236)
!1259 = !DILocalVariable(name: "flags", arg: 6, scope: !1248, file: !234, line: 253, type: !30)
!1260 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1248, file: !234, line: 254, type: !1251)
!1261 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1248, file: !234, line: 255, type: !6)
!1262 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1248, file: !234, line: 256, type: !6)
!1263 = !DILocalVariable(name: "unibyte_locale", scope: !1248, file: !234, line: 258, type: !44)
!1264 = !DILocalVariable(name: "len", scope: !1248, file: !234, line: 260, type: !32)
!1265 = !DILocalVariable(name: "orig_buffersize", scope: !1248, file: !234, line: 261, type: !32)
!1266 = !DILocalVariable(name: "quote_string", scope: !1248, file: !234, line: 262, type: !6)
!1267 = !DILocalVariable(name: "quote_string_len", scope: !1248, file: !234, line: 263, type: !32)
!1268 = !DILocalVariable(name: "backslash_escapes", scope: !1248, file: !234, line: 264, type: !44)
!1269 = !DILocalVariable(name: "elide_outer_quotes", scope: !1248, file: !234, line: 265, type: !44)
!1270 = !DILocalVariable(name: "encountered_single_quote", scope: !1248, file: !234, line: 266, type: !44)
!1271 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1248, file: !234, line: 267, type: !44)
!1272 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1248, file: !234, line: 309, type: !44)
!1273 = !DILocalVariable(name: "lq", scope: !1274, file: !234, line: 361, type: !6)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !234, line: 361, column: 11)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !234, line: 360, column: 13)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !234, line: 333, column: 7)
!1277 = distinct !DILexicalBlock(scope: !1248, file: !234, line: 312, column: 5)
!1278 = !DILocalVariable(name: "i", scope: !1279, file: !234, line: 395, type: !32)
!1279 = distinct !DILexicalBlock(scope: !1248, file: !234, line: 395, column: 3)
!1280 = !DILocalVariable(name: "is_right_quote", scope: !1281, file: !234, line: 397, type: !44)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !234, line: 396, column: 5)
!1282 = distinct !DILexicalBlock(scope: !1279, file: !234, line: 395, column: 3)
!1283 = !DILocalVariable(name: "escaping", scope: !1281, file: !234, line: 398, type: !44)
!1284 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1281, file: !234, line: 399, type: !44)
!1285 = !DILocalVariable(name: "c", scope: !1281, file: !234, line: 417, type: !35)
!1286 = !DILocalVariable(name: "m", scope: !1287, file: !234, line: 598, type: !32)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !234, line: 596, column: 11)
!1288 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 419, column: 9)
!1289 = !DILocalVariable(name: "printable", scope: !1287, file: !234, line: 600, type: !44)
!1290 = !DILocalVariable(name: "mbs", scope: !1291, file: !234, line: 609, type: !293)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !234, line: 608, column: 15)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !234, line: 602, column: 17)
!1293 = !DILocalVariable(name: "w", scope: !1294, file: !234, line: 618, type: !208)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !234, line: 617, column: 19)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !234, line: 616, column: 17)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !234, line: 616, column: 17)
!1297 = !DILocalVariable(name: "bytes", scope: !1294, file: !234, line: 619, type: !32)
!1298 = !DILocalVariable(name: "j", scope: !1299, file: !234, line: 648, type: !32)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !234, line: 648, column: 29)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !234, line: 647, column: 27)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !234, line: 645, column: 29)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !234, line: 636, column: 23)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !234, line: 628, column: 30)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !234, line: 623, column: 30)
!1305 = distinct !DILexicalBlock(scope: !1294, file: !234, line: 621, column: 25)
!1306 = !DILocalVariable(name: "ilim", scope: !1307, file: !234, line: 674, type: !32)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !234, line: 671, column: 15)
!1308 = distinct !DILexicalBlock(scope: !1287, file: !234, line: 670, column: 17)
!1309 = !DILabel(scope: !1248, name: "process_input", file: !234, line: 308)
!1310 = !DILabel(scope: !1311, name: "c_and_shell_escape", file: !234, line: 502)
!1311 = distinct !DILexicalBlock(scope: !1288, file: !234, line: 478, column: 9)
!1312 = !DILabel(scope: !1311, name: "c_escape", file: !234, line: 507)
!1313 = !DILabel(scope: !1281, name: "store_escape", file: !234, line: 709)
!1314 = !DILabel(scope: !1281, name: "store_c", file: !234, line: 712)
!1315 = !DILabel(scope: !1248, name: "force_outer_quoting_style", file: !234, line: 753)
!1316 = !DILocation(line: 0, scope: !1248)
!1317 = !DILocation(line: 258, column: 25, scope: !1248)
!1318 = !DILocation(line: 258, column: 36, scope: !1248)
!1319 = !DILocation(line: 267, column: 3, scope: !1248)
!1320 = !DILocation(line: 261, column: 10, scope: !1248)
!1321 = !DILocation(line: 262, column: 15, scope: !1248)
!1322 = !DILocation(line: 263, column: 10, scope: !1248)
!1323 = !DILocation(line: 308, column: 2, scope: !1248)
!1324 = !DILocation(line: 311, column: 3, scope: !1248)
!1325 = !DILocation(line: 318, column: 11, scope: !1277)
!1326 = !DILocation(line: 319, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !234, line: 319, column: 9)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !234, line: 319, column: 9)
!1329 = distinct !DILexicalBlock(scope: !1277, file: !234, line: 318, column: 11)
!1330 = !DILocation(line: 319, column: 9, scope: !1328)
!1331 = !DILocation(line: 0, scope: !284, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 357, column: 26, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !234, line: 335, column: 11)
!1334 = distinct !DILexicalBlock(scope: !1276, file: !234, line: 334, column: 13)
!1335 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1332)
!1336 = !DILocation(line: 201, column: 19, scope: !1337, inlinedAt: !1332)
!1337 = distinct !DILexicalBlock(scope: !284, file: !234, line: 201, column: 7)
!1338 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1332)
!1339 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1332)
!1340 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1332)
!1341 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1332)
!1342 = !DILocalVariable(name: "ps", arg: 1, scope: !1343, file: !1094, line: 1135, type: !1346)
!1343 = distinct !DISubprogram(name: "mbszero", scope: !1094, file: !1094, line: 1135, type: !1344, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1347)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1347 = !{!1342}
!1348 = !DILocation(line: 0, scope: !1343, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1332)
!1350 = !DILocalVariable(name: "__dest", arg: 1, scope: !1351, file: !1103, line: 57, type: !29)
!1351 = distinct !DISubprogram(name: "memset", scope: !1103, file: !1103, line: 57, type: !1104, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1352)
!1352 = !{!1350, !1353, !1354}
!1353 = !DILocalVariable(name: "__ch", arg: 2, scope: !1351, file: !1103, line: 57, type: !30)
!1354 = !DILocalVariable(name: "__len", arg: 3, scope: !1351, file: !1103, line: 57, type: !32)
!1355 = !DILocation(line: 0, scope: !1351, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 1137, column: 3, scope: !1343, inlinedAt: !1349)
!1357 = !DILocation(line: 59, column: 10, scope: !1351, inlinedAt: !1356)
!1358 = !DILocation(line: 231, column: 7, scope: !1359, inlinedAt: !1332)
!1359 = distinct !DILexicalBlock(scope: !284, file: !234, line: 231, column: 7)
!1360 = !DILocation(line: 231, column: 40, scope: !1359, inlinedAt: !1332)
!1361 = !DILocation(line: 231, column: 45, scope: !1359, inlinedAt: !1332)
!1362 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1332)
!1363 = !DILocation(line: 0, scope: !284, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 358, column: 27, scope: !1333)
!1365 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1364)
!1366 = !DILocation(line: 201, column: 19, scope: !1337, inlinedAt: !1364)
!1367 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1364)
!1368 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1364)
!1369 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1364)
!1370 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1364)
!1371 = !DILocation(line: 0, scope: !1343, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1364)
!1373 = !DILocation(line: 0, scope: !1351, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 1137, column: 3, scope: !1343, inlinedAt: !1372)
!1375 = !DILocation(line: 59, column: 10, scope: !1351, inlinedAt: !1374)
!1376 = !DILocation(line: 231, column: 7, scope: !1359, inlinedAt: !1364)
!1377 = !DILocation(line: 231, column: 40, scope: !1359, inlinedAt: !1364)
!1378 = !DILocation(line: 231, column: 45, scope: !1359, inlinedAt: !1364)
!1379 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1364)
!1380 = !DILocation(line: 360, column: 13, scope: !1276)
!1381 = !DILocation(line: 0, scope: !1274)
!1382 = !DILocation(line: 361, column: 45, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1274, file: !234, line: 361, column: 11)
!1384 = !DILocation(line: 361, column: 11, scope: !1274)
!1385 = !DILocation(line: 362, column: 13, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !234, line: 362, column: 13)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !234, line: 362, column: 13)
!1388 = !DILocation(line: 362, column: 13, scope: !1387)
!1389 = !DILocation(line: 361, column: 52, scope: !1383)
!1390 = distinct !{!1390, !1384, !1391, !487}
!1391 = !DILocation(line: 362, column: 13, scope: !1274)
!1392 = !DILocation(line: 260, column: 10, scope: !1248)
!1393 = !DILocation(line: 365, column: 28, scope: !1276)
!1394 = !DILocation(line: 367, column: 7, scope: !1277)
!1395 = !DILocation(line: 370, column: 7, scope: !1277)
!1396 = !DILocation(line: 376, column: 11, scope: !1277)
!1397 = !DILocation(line: 381, column: 11, scope: !1277)
!1398 = !DILocation(line: 382, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !234, line: 382, column: 9)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !234, line: 382, column: 9)
!1401 = distinct !DILexicalBlock(scope: !1277, file: !234, line: 381, column: 11)
!1402 = !DILocation(line: 382, column: 9, scope: !1400)
!1403 = !DILocation(line: 389, column: 7, scope: !1277)
!1404 = !DILocation(line: 392, column: 7, scope: !1277)
!1405 = !DILocation(line: 0, scope: !1279)
!1406 = !DILocation(line: 395, column: 8, scope: !1279)
!1407 = !DILocation(line: 395, column: 34, scope: !1282)
!1408 = !DILocation(line: 395, column: 26, scope: !1282)
!1409 = !DILocation(line: 395, column: 48, scope: !1282)
!1410 = !DILocation(line: 395, column: 55, scope: !1282)
!1411 = !DILocation(line: 395, column: 3, scope: !1279)
!1412 = !DILocation(line: 395, column: 67, scope: !1282)
!1413 = !DILocation(line: 0, scope: !1281)
!1414 = !DILocation(line: 402, column: 11, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 401, column: 11)
!1416 = !DILocation(line: 404, column: 17, scope: !1415)
!1417 = !DILocation(line: 405, column: 39, scope: !1415)
!1418 = !DILocation(line: 409, column: 32, scope: !1415)
!1419 = !DILocation(line: 405, column: 19, scope: !1415)
!1420 = !DILocation(line: 405, column: 15, scope: !1415)
!1421 = !DILocation(line: 410, column: 11, scope: !1415)
!1422 = !DILocation(line: 410, column: 25, scope: !1415)
!1423 = !DILocalVariable(name: "__s1", arg: 1, scope: !1424, file: !471, line: 974, type: !639)
!1424 = distinct !DISubprogram(name: "memeq", scope: !471, file: !471, line: 974, type: !1065, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1425)
!1425 = !{!1423, !1426, !1427}
!1426 = !DILocalVariable(name: "__s2", arg: 2, scope: !1424, file: !471, line: 974, type: !639)
!1427 = !DILocalVariable(name: "__n", arg: 3, scope: !1424, file: !471, line: 974, type: !32)
!1428 = !DILocation(line: 0, scope: !1424, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 410, column: 14, scope: !1415)
!1430 = !DILocation(line: 976, column: 11, scope: !1424, inlinedAt: !1429)
!1431 = !DILocation(line: 976, column: 10, scope: !1424, inlinedAt: !1429)
!1432 = !DILocation(line: 401, column: 11, scope: !1281)
!1433 = !DILocation(line: 417, column: 25, scope: !1281)
!1434 = !DILocation(line: 418, column: 7, scope: !1281)
!1435 = !DILocation(line: 421, column: 15, scope: !1288)
!1436 = !DILocation(line: 423, column: 15, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !234, line: 423, column: 15)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !234, line: 422, column: 13)
!1439 = distinct !DILexicalBlock(scope: !1288, file: !234, line: 421, column: 15)
!1440 = !DILocation(line: 423, column: 15, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !234, line: 423, column: 15)
!1442 = !DILocation(line: 423, column: 15, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !234, line: 423, column: 15)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !234, line: 423, column: 15)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !234, line: 423, column: 15)
!1446 = !DILocation(line: 423, column: 15, scope: !1444)
!1447 = !DILocation(line: 423, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !234, line: 423, column: 15)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !234, line: 423, column: 15)
!1450 = !DILocation(line: 423, column: 15, scope: !1449)
!1451 = !DILocation(line: 423, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !234, line: 423, column: 15)
!1453 = distinct !DILexicalBlock(scope: !1445, file: !234, line: 423, column: 15)
!1454 = !DILocation(line: 423, column: 15, scope: !1453)
!1455 = !DILocation(line: 423, column: 15, scope: !1445)
!1456 = !DILocation(line: 423, column: 15, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !234, line: 423, column: 15)
!1458 = distinct !DILexicalBlock(scope: !1437, file: !234, line: 423, column: 15)
!1459 = !DILocation(line: 423, column: 15, scope: !1458)
!1460 = !DILocation(line: 431, column: 19, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1438, file: !234, line: 430, column: 19)
!1462 = !DILocation(line: 431, column: 24, scope: !1461)
!1463 = !DILocation(line: 431, column: 28, scope: !1461)
!1464 = !DILocation(line: 431, column: 38, scope: !1461)
!1465 = !DILocation(line: 431, column: 48, scope: !1461)
!1466 = !DILocation(line: 431, column: 59, scope: !1461)
!1467 = !DILocation(line: 433, column: 19, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !234, line: 433, column: 19)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !234, line: 433, column: 19)
!1470 = distinct !DILexicalBlock(scope: !1461, file: !234, line: 432, column: 17)
!1471 = !DILocation(line: 433, column: 19, scope: !1469)
!1472 = !DILocation(line: 434, column: 19, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !234, line: 434, column: 19)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !234, line: 434, column: 19)
!1475 = !DILocation(line: 434, column: 19, scope: !1474)
!1476 = !DILocation(line: 435, column: 17, scope: !1470)
!1477 = !DILocation(line: 442, column: 20, scope: !1439)
!1478 = !DILocation(line: 447, column: 11, scope: !1288)
!1479 = !DILocation(line: 450, column: 19, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1288, file: !234, line: 448, column: 13)
!1481 = !DILocation(line: 456, column: 19, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1480, file: !234, line: 455, column: 19)
!1483 = !DILocation(line: 456, column: 24, scope: !1482)
!1484 = !DILocation(line: 456, column: 28, scope: !1482)
!1485 = !DILocation(line: 456, column: 38, scope: !1482)
!1486 = !DILocation(line: 456, column: 47, scope: !1482)
!1487 = !DILocation(line: 456, column: 41, scope: !1482)
!1488 = !DILocation(line: 456, column: 52, scope: !1482)
!1489 = !DILocation(line: 455, column: 19, scope: !1480)
!1490 = !DILocation(line: 457, column: 25, scope: !1482)
!1491 = !DILocation(line: 457, column: 17, scope: !1482)
!1492 = !DILocation(line: 464, column: 25, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1482, file: !234, line: 458, column: 19)
!1494 = !DILocation(line: 468, column: 21, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !234, line: 468, column: 21)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !234, line: 468, column: 21)
!1497 = !DILocation(line: 468, column: 21, scope: !1496)
!1498 = !DILocation(line: 469, column: 21, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !234, line: 469, column: 21)
!1500 = distinct !DILexicalBlock(scope: !1493, file: !234, line: 469, column: 21)
!1501 = !DILocation(line: 469, column: 21, scope: !1500)
!1502 = !DILocation(line: 470, column: 21, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !234, line: 470, column: 21)
!1504 = distinct !DILexicalBlock(scope: !1493, file: !234, line: 470, column: 21)
!1505 = !DILocation(line: 470, column: 21, scope: !1504)
!1506 = !DILocation(line: 471, column: 21, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !234, line: 471, column: 21)
!1508 = distinct !DILexicalBlock(scope: !1493, file: !234, line: 471, column: 21)
!1509 = !DILocation(line: 471, column: 21, scope: !1508)
!1510 = !DILocation(line: 472, column: 21, scope: !1493)
!1511 = !DILocation(line: 482, column: 33, scope: !1311)
!1512 = !DILocation(line: 483, column: 33, scope: !1311)
!1513 = !DILocation(line: 485, column: 33, scope: !1311)
!1514 = !DILocation(line: 486, column: 33, scope: !1311)
!1515 = !DILocation(line: 487, column: 33, scope: !1311)
!1516 = !DILocation(line: 490, column: 17, scope: !1311)
!1517 = !DILocation(line: 492, column: 21, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !234, line: 491, column: 15)
!1519 = distinct !DILexicalBlock(scope: !1311, file: !234, line: 490, column: 17)
!1520 = !DILocation(line: 499, column: 35, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1311, file: !234, line: 499, column: 17)
!1522 = !DILocation(line: 499, column: 57, scope: !1521)
!1523 = !DILocation(line: 0, scope: !1311)
!1524 = !DILocation(line: 502, column: 11, scope: !1311)
!1525 = !DILocation(line: 504, column: 17, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1311, file: !234, line: 503, column: 17)
!1527 = !DILocation(line: 507, column: 11, scope: !1311)
!1528 = !DILocation(line: 508, column: 17, scope: !1311)
!1529 = !DILocation(line: 517, column: 15, scope: !1288)
!1530 = !DILocation(line: 517, column: 40, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1288, file: !234, line: 517, column: 15)
!1532 = !DILocation(line: 517, column: 47, scope: !1531)
!1533 = !DILocation(line: 517, column: 18, scope: !1531)
!1534 = !DILocation(line: 521, column: 17, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1288, file: !234, line: 521, column: 15)
!1536 = !DILocation(line: 521, column: 15, scope: !1288)
!1537 = !DILocation(line: 525, column: 11, scope: !1288)
!1538 = !DILocation(line: 537, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1288, file: !234, line: 536, column: 15)
!1540 = !DILocation(line: 536, column: 15, scope: !1288)
!1541 = !DILocation(line: 544, column: 15, scope: !1288)
!1542 = !DILocation(line: 546, column: 19, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !234, line: 545, column: 13)
!1544 = distinct !DILexicalBlock(scope: !1288, file: !234, line: 544, column: 15)
!1545 = !DILocation(line: 549, column: 19, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !234, line: 549, column: 19)
!1547 = !DILocation(line: 549, column: 30, scope: !1546)
!1548 = !DILocation(line: 558, column: 15, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !234, line: 558, column: 15)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !234, line: 558, column: 15)
!1551 = !DILocation(line: 558, column: 15, scope: !1550)
!1552 = !DILocation(line: 559, column: 15, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !234, line: 559, column: 15)
!1554 = distinct !DILexicalBlock(scope: !1543, file: !234, line: 559, column: 15)
!1555 = !DILocation(line: 559, column: 15, scope: !1554)
!1556 = !DILocation(line: 560, column: 15, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !234, line: 560, column: 15)
!1558 = distinct !DILexicalBlock(scope: !1543, file: !234, line: 560, column: 15)
!1559 = !DILocation(line: 560, column: 15, scope: !1558)
!1560 = !DILocation(line: 562, column: 13, scope: !1543)
!1561 = !DILocation(line: 602, column: 17, scope: !1287)
!1562 = !DILocation(line: 0, scope: !1287)
!1563 = !DILocation(line: 605, column: 29, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1292, file: !234, line: 603, column: 15)
!1565 = !DILocation(line: 605, column: 41, scope: !1564)
!1566 = !DILocation(line: 670, column: 23, scope: !1308)
!1567 = !DILocation(line: 609, column: 17, scope: !1291)
!1568 = !DILocation(line: 609, column: 27, scope: !1291)
!1569 = !DILocation(line: 0, scope: !1343, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 609, column: 32, scope: !1291)
!1571 = !DILocation(line: 0, scope: !1351, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 1137, column: 3, scope: !1343, inlinedAt: !1570)
!1573 = !DILocation(line: 59, column: 10, scope: !1351, inlinedAt: !1572)
!1574 = !DILocation(line: 613, column: 29, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1291, file: !234, line: 613, column: 21)
!1576 = !DILocation(line: 613, column: 21, scope: !1291)
!1577 = !DILocation(line: 614, column: 29, scope: !1575)
!1578 = !DILocation(line: 614, column: 19, scope: !1575)
!1579 = !DILocation(line: 618, column: 21, scope: !1294)
!1580 = !DILocation(line: 620, column: 54, scope: !1294)
!1581 = !DILocation(line: 0, scope: !1294)
!1582 = !DILocation(line: 619, column: 36, scope: !1294)
!1583 = !DILocation(line: 621, column: 25, scope: !1294)
!1584 = !DILocation(line: 631, column: 38, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1303, file: !234, line: 629, column: 23)
!1586 = !DILocation(line: 631, column: 48, scope: !1585)
!1587 = !DILocation(line: 665, column: 19, scope: !1295)
!1588 = !DILocation(line: 666, column: 15, scope: !1292)
!1589 = !DILocation(line: 626, column: 25, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1304, file: !234, line: 624, column: 23)
!1591 = !DILocation(line: 631, column: 51, scope: !1585)
!1592 = !DILocation(line: 631, column: 25, scope: !1585)
!1593 = !DILocation(line: 632, column: 28, scope: !1585)
!1594 = !DILocation(line: 631, column: 34, scope: !1585)
!1595 = distinct !{!1595, !1592, !1593, !487}
!1596 = !DILocation(line: 646, column: 29, scope: !1301)
!1597 = !DILocation(line: 0, scope: !1299)
!1598 = !DILocation(line: 649, column: 49, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1299, file: !234, line: 648, column: 29)
!1600 = !DILocation(line: 649, column: 39, scope: !1599)
!1601 = !DILocation(line: 649, column: 31, scope: !1599)
!1602 = !DILocation(line: 648, column: 60, scope: !1599)
!1603 = !DILocation(line: 648, column: 50, scope: !1599)
!1604 = !DILocation(line: 648, column: 29, scope: !1299)
!1605 = distinct !{!1605, !1604, !1606, !487}
!1606 = !DILocation(line: 654, column: 33, scope: !1299)
!1607 = !DILocation(line: 657, column: 43, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1302, file: !234, line: 657, column: 29)
!1609 = !DILocalVariable(name: "wc", arg: 1, scope: !1610, file: !1611, line: 865, type: !1614)
!1610 = distinct !DISubprogram(name: "c32isprint", scope: !1611, file: !1611, line: 865, type: !1612, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1616)
!1611 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!30, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1615, line: 20, baseType: !14)
!1615 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1616 = !{!1609}
!1617 = !DILocation(line: 0, scope: !1610, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 657, column: 31, scope: !1608)
!1619 = !DILocation(line: 871, column: 10, scope: !1610, inlinedAt: !1618)
!1620 = !DILocation(line: 657, column: 31, scope: !1608)
!1621 = !DILocation(line: 664, column: 23, scope: !1294)
!1622 = !DILocation(line: 753, column: 2, scope: !1248)
!1623 = !DILocation(line: 756, column: 51, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1248, file: !234, line: 756, column: 7)
!1625 = !DILocation(line: 670, column: 19, scope: !1308)
!1626 = !DILocation(line: 670, column: 45, scope: !1308)
!1627 = !DILocation(line: 674, column: 33, scope: !1307)
!1628 = !DILocation(line: 0, scope: !1307)
!1629 = !DILocation(line: 676, column: 17, scope: !1307)
!1630 = !DILocation(line: 398, column: 12, scope: !1281)
!1631 = !DILocation(line: 678, column: 43, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !234, line: 678, column: 25)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !234, line: 677, column: 19)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !234, line: 676, column: 17)
!1635 = distinct !DILexicalBlock(scope: !1307, file: !234, line: 676, column: 17)
!1636 = !DILocation(line: 680, column: 25, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !234, line: 680, column: 25)
!1638 = distinct !DILexicalBlock(scope: !1632, file: !234, line: 679, column: 23)
!1639 = !DILocation(line: 680, column: 25, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !234, line: 680, column: 25)
!1641 = !DILocation(line: 680, column: 25, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !234, line: 680, column: 25)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !234, line: 680, column: 25)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !234, line: 680, column: 25)
!1645 = !DILocation(line: 680, column: 25, scope: !1643)
!1646 = !DILocation(line: 680, column: 25, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !234, line: 680, column: 25)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !234, line: 680, column: 25)
!1649 = !DILocation(line: 680, column: 25, scope: !1648)
!1650 = !DILocation(line: 680, column: 25, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !234, line: 680, column: 25)
!1652 = distinct !DILexicalBlock(scope: !1644, file: !234, line: 680, column: 25)
!1653 = !DILocation(line: 680, column: 25, scope: !1652)
!1654 = !DILocation(line: 680, column: 25, scope: !1644)
!1655 = !DILocation(line: 680, column: 25, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !234, line: 680, column: 25)
!1657 = distinct !DILexicalBlock(scope: !1637, file: !234, line: 680, column: 25)
!1658 = !DILocation(line: 680, column: 25, scope: !1657)
!1659 = !DILocation(line: 681, column: 25, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !234, line: 681, column: 25)
!1661 = distinct !DILexicalBlock(scope: !1638, file: !234, line: 681, column: 25)
!1662 = !DILocation(line: 681, column: 25, scope: !1661)
!1663 = !DILocation(line: 682, column: 25, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !234, line: 682, column: 25)
!1665 = distinct !DILexicalBlock(scope: !1638, file: !234, line: 682, column: 25)
!1666 = !DILocation(line: 682, column: 25, scope: !1665)
!1667 = !DILocation(line: 683, column: 38, scope: !1638)
!1668 = !DILocation(line: 683, column: 33, scope: !1638)
!1669 = !DILocation(line: 684, column: 23, scope: !1638)
!1670 = !DILocation(line: 685, column: 30, scope: !1632)
!1671 = !DILocation(line: 687, column: 25, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !234, line: 687, column: 25)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !234, line: 687, column: 25)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !234, line: 686, column: 23)
!1675 = distinct !DILexicalBlock(scope: !1632, file: !234, line: 685, column: 30)
!1676 = !DILocation(line: 687, column: 25, scope: !1673)
!1677 = !DILocation(line: 689, column: 23, scope: !1674)
!1678 = !DILocation(line: 690, column: 35, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1633, file: !234, line: 690, column: 25)
!1680 = !DILocation(line: 690, column: 30, scope: !1679)
!1681 = !DILocation(line: 690, column: 25, scope: !1633)
!1682 = !DILocation(line: 692, column: 21, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !234, line: 692, column: 21)
!1684 = distinct !DILexicalBlock(scope: !1633, file: !234, line: 692, column: 21)
!1685 = !DILocation(line: 692, column: 21, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !234, line: 692, column: 21)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !234, line: 692, column: 21)
!1688 = distinct !DILexicalBlock(scope: !1683, file: !234, line: 692, column: 21)
!1689 = !DILocation(line: 692, column: 21, scope: !1687)
!1690 = !DILocation(line: 692, column: 21, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !234, line: 692, column: 21)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !234, line: 692, column: 21)
!1693 = !DILocation(line: 692, column: 21, scope: !1692)
!1694 = !DILocation(line: 692, column: 21, scope: !1688)
!1695 = !DILocation(line: 0, scope: !1633)
!1696 = !DILocation(line: 693, column: 21, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !234, line: 693, column: 21)
!1698 = distinct !DILexicalBlock(scope: !1633, file: !234, line: 693, column: 21)
!1699 = !DILocation(line: 693, column: 21, scope: !1698)
!1700 = !DILocation(line: 694, column: 25, scope: !1633)
!1701 = !DILocation(line: 676, column: 17, scope: !1634)
!1702 = distinct !{!1702, !1703, !1704}
!1703 = !DILocation(line: 676, column: 17, scope: !1635)
!1704 = !DILocation(line: 695, column: 19, scope: !1635)
!1705 = !DILocation(line: 409, column: 30, scope: !1415)
!1706 = !DILocation(line: 702, column: 34, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 702, column: 11)
!1708 = !DILocation(line: 704, column: 14, scope: !1707)
!1709 = !DILocation(line: 705, column: 14, scope: !1707)
!1710 = !DILocation(line: 705, column: 35, scope: !1707)
!1711 = !DILocation(line: 705, column: 17, scope: !1707)
!1712 = !DILocation(line: 705, column: 47, scope: !1707)
!1713 = !DILocation(line: 705, column: 65, scope: !1707)
!1714 = !DILocation(line: 706, column: 11, scope: !1707)
!1715 = !DILocation(line: 702, column: 11, scope: !1281)
!1716 = !DILocation(line: 395, column: 15, scope: !1279)
!1717 = !DILocation(line: 709, column: 5, scope: !1281)
!1718 = !DILocation(line: 710, column: 7, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 710, column: 7)
!1720 = !DILocation(line: 710, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1719, file: !234, line: 710, column: 7)
!1722 = !DILocation(line: 710, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !234, line: 710, column: 7)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !234, line: 710, column: 7)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !234, line: 710, column: 7)
!1726 = !DILocation(line: 710, column: 7, scope: !1724)
!1727 = !DILocation(line: 710, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !234, line: 710, column: 7)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !234, line: 710, column: 7)
!1730 = !DILocation(line: 710, column: 7, scope: !1729)
!1731 = !DILocation(line: 710, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !234, line: 710, column: 7)
!1733 = distinct !DILexicalBlock(scope: !1725, file: !234, line: 710, column: 7)
!1734 = !DILocation(line: 710, column: 7, scope: !1733)
!1735 = !DILocation(line: 710, column: 7, scope: !1725)
!1736 = !DILocation(line: 710, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !234, line: 710, column: 7)
!1738 = distinct !DILexicalBlock(scope: !1719, file: !234, line: 710, column: 7)
!1739 = !DILocation(line: 710, column: 7, scope: !1738)
!1740 = !DILocation(line: 712, column: 5, scope: !1281)
!1741 = !DILocation(line: 713, column: 7, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !234, line: 713, column: 7)
!1743 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 713, column: 7)
!1744 = !DILocation(line: 417, column: 21, scope: !1281)
!1745 = !DILocation(line: 713, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !234, line: 713, column: 7)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !234, line: 713, column: 7)
!1748 = distinct !DILexicalBlock(scope: !1742, file: !234, line: 713, column: 7)
!1749 = !DILocation(line: 713, column: 7, scope: !1747)
!1750 = !DILocation(line: 713, column: 7, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !234, line: 713, column: 7)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !234, line: 713, column: 7)
!1753 = !DILocation(line: 713, column: 7, scope: !1752)
!1754 = !DILocation(line: 713, column: 7, scope: !1748)
!1755 = !DILocation(line: 714, column: 7, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !234, line: 714, column: 7)
!1757 = distinct !DILexicalBlock(scope: !1281, file: !234, line: 714, column: 7)
!1758 = !DILocation(line: 714, column: 7, scope: !1757)
!1759 = !DILocation(line: 716, column: 11, scope: !1281)
!1760 = !DILocation(line: 718, column: 5, scope: !1282)
!1761 = !DILocation(line: 395, column: 82, scope: !1282)
!1762 = !DILocation(line: 395, column: 3, scope: !1282)
!1763 = distinct !{!1763, !1411, !1764, !487}
!1764 = !DILocation(line: 718, column: 5, scope: !1279)
!1765 = !DILocation(line: 720, column: 11, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1248, file: !234, line: 720, column: 7)
!1767 = !DILocation(line: 720, column: 16, scope: !1766)
!1768 = !DILocation(line: 728, column: 51, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1248, file: !234, line: 728, column: 7)
!1770 = !DILocation(line: 731, column: 11, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1769, file: !234, line: 730, column: 5)
!1772 = !DILocation(line: 732, column: 16, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1771, file: !234, line: 731, column: 11)
!1774 = !DILocation(line: 732, column: 9, scope: !1773)
!1775 = !DILocation(line: 736, column: 18, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !234, line: 736, column: 16)
!1777 = !DILocation(line: 736, column: 29, scope: !1776)
!1778 = !DILocation(line: 745, column: 7, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1248, file: !234, line: 745, column: 7)
!1780 = !DILocation(line: 745, column: 20, scope: !1779)
!1781 = !DILocation(line: 746, column: 12, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !234, line: 746, column: 5)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !234, line: 746, column: 5)
!1784 = !DILocation(line: 746, column: 5, scope: !1783)
!1785 = !DILocation(line: 747, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !234, line: 747, column: 7)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !234, line: 747, column: 7)
!1788 = !DILocation(line: 747, column: 7, scope: !1787)
!1789 = !DILocation(line: 746, column: 39, scope: !1782)
!1790 = distinct !{!1790, !1784, !1791, !487}
!1791 = !DILocation(line: 747, column: 7, scope: !1783)
!1792 = !DILocation(line: 749, column: 11, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1248, file: !234, line: 749, column: 7)
!1794 = !DILocation(line: 749, column: 7, scope: !1248)
!1795 = !DILocation(line: 750, column: 5, scope: !1793)
!1796 = !DILocation(line: 750, column: 17, scope: !1793)
!1797 = !DILocation(line: 756, column: 21, scope: !1624)
!1798 = !DILocation(line: 760, column: 42, scope: !1248)
!1799 = !DILocation(line: 758, column: 10, scope: !1248)
!1800 = !DILocation(line: 758, column: 3, scope: !1248)
!1801 = !DILocation(line: 762, column: 1, scope: !1248)
!1802 = !DISubprogram(name: "iswprint", scope: !1803, file: !1803, line: 120, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!1803 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1804 = distinct !DISubprogram(name: "quotearg_alloc", scope: !234, file: !234, line: 788, type: !1805, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!65, !6, !32, !1140}
!1807 = !{!1808, !1809, !1810}
!1808 = !DILocalVariable(name: "arg", arg: 1, scope: !1804, file: !234, line: 788, type: !6)
!1809 = !DILocalVariable(name: "argsize", arg: 2, scope: !1804, file: !234, line: 788, type: !32)
!1810 = !DILocalVariable(name: "o", arg: 3, scope: !1804, file: !234, line: 789, type: !1140)
!1811 = !DILocation(line: 0, scope: !1804)
!1812 = !DILocalVariable(name: "arg", arg: 1, scope: !1813, file: !234, line: 801, type: !6)
!1813 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !234, file: !234, line: 801, type: !1814, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!65, !6, !32, !366, !1140}
!1816 = !{!1812, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824}
!1817 = !DILocalVariable(name: "argsize", arg: 2, scope: !1813, file: !234, line: 801, type: !32)
!1818 = !DILocalVariable(name: "size", arg: 3, scope: !1813, file: !234, line: 801, type: !366)
!1819 = !DILocalVariable(name: "o", arg: 4, scope: !1813, file: !234, line: 802, type: !1140)
!1820 = !DILocalVariable(name: "p", scope: !1813, file: !234, line: 804, type: !1140)
!1821 = !DILocalVariable(name: "saved_errno", scope: !1813, file: !234, line: 805, type: !30)
!1822 = !DILocalVariable(name: "flags", scope: !1813, file: !234, line: 807, type: !30)
!1823 = !DILocalVariable(name: "bufsize", scope: !1813, file: !234, line: 808, type: !32)
!1824 = !DILocalVariable(name: "buf", scope: !1813, file: !234, line: 812, type: !65)
!1825 = !DILocation(line: 0, scope: !1813, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 791, column: 10, scope: !1804)
!1827 = !DILocation(line: 804, column: 37, scope: !1813, inlinedAt: !1826)
!1828 = !DILocation(line: 805, column: 21, scope: !1813, inlinedAt: !1826)
!1829 = !DILocation(line: 807, column: 18, scope: !1813, inlinedAt: !1826)
!1830 = !DILocation(line: 807, column: 24, scope: !1813, inlinedAt: !1826)
!1831 = !DILocation(line: 808, column: 72, scope: !1813, inlinedAt: !1826)
!1832 = !DILocation(line: 809, column: 53, scope: !1813, inlinedAt: !1826)
!1833 = !DILocation(line: 810, column: 49, scope: !1813, inlinedAt: !1826)
!1834 = !DILocation(line: 811, column: 49, scope: !1813, inlinedAt: !1826)
!1835 = !DILocation(line: 808, column: 20, scope: !1813, inlinedAt: !1826)
!1836 = !DILocation(line: 811, column: 62, scope: !1813, inlinedAt: !1826)
!1837 = !DILocation(line: 812, column: 15, scope: !1813, inlinedAt: !1826)
!1838 = !DILocation(line: 813, column: 60, scope: !1813, inlinedAt: !1826)
!1839 = !DILocation(line: 815, column: 32, scope: !1813, inlinedAt: !1826)
!1840 = !DILocation(line: 815, column: 47, scope: !1813, inlinedAt: !1826)
!1841 = !DILocation(line: 813, column: 3, scope: !1813, inlinedAt: !1826)
!1842 = !DILocation(line: 816, column: 9, scope: !1813, inlinedAt: !1826)
!1843 = !DILocation(line: 791, column: 3, scope: !1804)
!1844 = !DILocation(line: 0, scope: !1813)
!1845 = !DILocation(line: 804, column: 37, scope: !1813)
!1846 = !DILocation(line: 805, column: 21, scope: !1813)
!1847 = !DILocation(line: 807, column: 18, scope: !1813)
!1848 = !DILocation(line: 807, column: 27, scope: !1813)
!1849 = !DILocation(line: 807, column: 24, scope: !1813)
!1850 = !DILocation(line: 808, column: 72, scope: !1813)
!1851 = !DILocation(line: 809, column: 53, scope: !1813)
!1852 = !DILocation(line: 810, column: 49, scope: !1813)
!1853 = !DILocation(line: 811, column: 49, scope: !1813)
!1854 = !DILocation(line: 808, column: 20, scope: !1813)
!1855 = !DILocation(line: 811, column: 62, scope: !1813)
!1856 = !DILocation(line: 812, column: 15, scope: !1813)
!1857 = !DILocation(line: 813, column: 60, scope: !1813)
!1858 = !DILocation(line: 815, column: 32, scope: !1813)
!1859 = !DILocation(line: 815, column: 47, scope: !1813)
!1860 = !DILocation(line: 813, column: 3, scope: !1813)
!1861 = !DILocation(line: 816, column: 9, scope: !1813)
!1862 = !DILocation(line: 817, column: 7, scope: !1813)
!1863 = !DILocation(line: 818, column: 11, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1813, file: !234, line: 817, column: 7)
!1865 = !{!870, !870, i64 0}
!1866 = !DILocation(line: 818, column: 5, scope: !1864)
!1867 = !DILocation(line: 819, column: 3, scope: !1813)
!1868 = distinct !DISubprogram(name: "quotearg_free", scope: !234, file: !234, line: 837, type: !170, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1869)
!1869 = !{!1870, !1871}
!1870 = !DILocalVariable(name: "sv", scope: !1868, file: !234, line: 839, type: !307)
!1871 = !DILocalVariable(name: "i", scope: !1872, file: !234, line: 840, type: !30)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !234, line: 840, column: 3)
!1873 = !DILocation(line: 839, column: 24, scope: !1868)
!1874 = !DILocation(line: 0, scope: !1868)
!1875 = !DILocation(line: 0, scope: !1872)
!1876 = !DILocation(line: 840, column: 21, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !234, line: 840, column: 3)
!1878 = !DILocation(line: 840, column: 3, scope: !1872)
!1879 = !DILocation(line: 842, column: 13, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1868, file: !234, line: 842, column: 7)
!1881 = !{!1882, !436, i64 8}
!1882 = !{!"slotvec", !870, i64 0, !436, i64 8}
!1883 = !DILocation(line: 842, column: 17, scope: !1880)
!1884 = !DILocation(line: 842, column: 7, scope: !1868)
!1885 = !DILocation(line: 841, column: 17, scope: !1877)
!1886 = !DILocation(line: 841, column: 5, scope: !1877)
!1887 = !DILocation(line: 840, column: 32, scope: !1877)
!1888 = distinct !{!1888, !1878, !1889, !487}
!1889 = !DILocation(line: 841, column: 20, scope: !1872)
!1890 = !DILocation(line: 844, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1880, file: !234, line: 843, column: 5)
!1892 = !DILocation(line: 845, column: 21, scope: !1891)
!1893 = !{!1882, !870, i64 0}
!1894 = !DILocation(line: 846, column: 20, scope: !1891)
!1895 = !DILocation(line: 847, column: 5, scope: !1891)
!1896 = !DILocation(line: 848, column: 10, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1868, file: !234, line: 848, column: 7)
!1898 = !DILocation(line: 848, column: 7, scope: !1868)
!1899 = !DILocation(line: 850, column: 13, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1897, file: !234, line: 849, column: 5)
!1901 = !DILocation(line: 850, column: 7, scope: !1900)
!1902 = !DILocation(line: 851, column: 15, scope: !1900)
!1903 = !DILocation(line: 852, column: 5, scope: !1900)
!1904 = !DILocation(line: 853, column: 10, scope: !1868)
!1905 = !DILocation(line: 854, column: 1, scope: !1868)
!1906 = distinct !DISubprogram(name: "quotearg_n", scope: !234, file: !234, line: 919, type: !629, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1907)
!1907 = !{!1908, !1909}
!1908 = !DILocalVariable(name: "n", arg: 1, scope: !1906, file: !234, line: 919, type: !30)
!1909 = !DILocalVariable(name: "arg", arg: 2, scope: !1906, file: !234, line: 919, type: !6)
!1910 = !DILocation(line: 0, scope: !1906)
!1911 = !DILocation(line: 921, column: 10, scope: !1906)
!1912 = !DILocation(line: 921, column: 3, scope: !1906)
!1913 = distinct !DISubprogram(name: "quotearg_n_options", scope: !234, file: !234, line: 866, type: !1914, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !1916)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!65, !30, !6, !32, !1140}
!1916 = !{!1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1927, !1928, !1930, !1931, !1932}
!1917 = !DILocalVariable(name: "n", arg: 1, scope: !1913, file: !234, line: 866, type: !30)
!1918 = !DILocalVariable(name: "arg", arg: 2, scope: !1913, file: !234, line: 866, type: !6)
!1919 = !DILocalVariable(name: "argsize", arg: 3, scope: !1913, file: !234, line: 866, type: !32)
!1920 = !DILocalVariable(name: "options", arg: 4, scope: !1913, file: !234, line: 867, type: !1140)
!1921 = !DILocalVariable(name: "saved_errno", scope: !1913, file: !234, line: 869, type: !30)
!1922 = !DILocalVariable(name: "sv", scope: !1913, file: !234, line: 871, type: !307)
!1923 = !DILocalVariable(name: "nslots_max", scope: !1913, file: !234, line: 873, type: !30)
!1924 = !DILocalVariable(name: "preallocated", scope: !1925, file: !234, line: 879, type: !44)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !234, line: 878, column: 5)
!1926 = distinct !DILexicalBlock(scope: !1913, file: !234, line: 877, column: 7)
!1927 = !DILocalVariable(name: "new_nslots", scope: !1925, file: !234, line: 880, type: !379)
!1928 = !DILocalVariable(name: "size", scope: !1929, file: !234, line: 891, type: !32)
!1929 = distinct !DILexicalBlock(scope: !1913, file: !234, line: 890, column: 3)
!1930 = !DILocalVariable(name: "val", scope: !1929, file: !234, line: 892, type: !65)
!1931 = !DILocalVariable(name: "flags", scope: !1929, file: !234, line: 894, type: !30)
!1932 = !DILocalVariable(name: "qsize", scope: !1929, file: !234, line: 895, type: !32)
!1933 = !DILocation(line: 0, scope: !1913)
!1934 = !DILocation(line: 869, column: 21, scope: !1913)
!1935 = !DILocation(line: 871, column: 24, scope: !1913)
!1936 = !DILocation(line: 874, column: 17, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1913, file: !234, line: 874, column: 7)
!1938 = !DILocation(line: 875, column: 5, scope: !1937)
!1939 = !DILocation(line: 877, column: 7, scope: !1926)
!1940 = !DILocation(line: 877, column: 14, scope: !1926)
!1941 = !DILocation(line: 877, column: 7, scope: !1913)
!1942 = !DILocation(line: 879, column: 31, scope: !1925)
!1943 = !DILocation(line: 0, scope: !1925)
!1944 = !DILocation(line: 880, column: 7, scope: !1925)
!1945 = !DILocation(line: 880, column: 26, scope: !1925)
!1946 = !DILocation(line: 880, column: 13, scope: !1925)
!1947 = !DILocation(line: 882, column: 31, scope: !1925)
!1948 = !DILocation(line: 883, column: 33, scope: !1925)
!1949 = !DILocation(line: 883, column: 42, scope: !1925)
!1950 = !DILocation(line: 883, column: 31, scope: !1925)
!1951 = !DILocation(line: 882, column: 22, scope: !1925)
!1952 = !DILocation(line: 882, column: 15, scope: !1925)
!1953 = !DILocation(line: 884, column: 11, scope: !1925)
!1954 = !DILocation(line: 885, column: 15, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1925, file: !234, line: 884, column: 11)
!1956 = !{i64 0, i64 8, !1865, i64 8, i64 8, !435}
!1957 = !DILocation(line: 885, column: 9, scope: !1955)
!1958 = !DILocation(line: 886, column: 20, scope: !1925)
!1959 = !DILocation(line: 886, column: 18, scope: !1925)
!1960 = !DILocation(line: 886, column: 15, scope: !1925)
!1961 = !DILocation(line: 886, column: 32, scope: !1925)
!1962 = !DILocation(line: 886, column: 43, scope: !1925)
!1963 = !DILocation(line: 886, column: 53, scope: !1925)
!1964 = !DILocation(line: 0, scope: !1351, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 886, column: 7, scope: !1925)
!1966 = !DILocation(line: 59, column: 10, scope: !1351, inlinedAt: !1965)
!1967 = !DILocation(line: 887, column: 16, scope: !1925)
!1968 = !DILocation(line: 887, column: 14, scope: !1925)
!1969 = !DILocation(line: 888, column: 5, scope: !1926)
!1970 = !DILocation(line: 888, column: 5, scope: !1925)
!1971 = !DILocation(line: 891, column: 19, scope: !1929)
!1972 = !DILocation(line: 891, column: 25, scope: !1929)
!1973 = !DILocation(line: 0, scope: !1929)
!1974 = !DILocation(line: 892, column: 23, scope: !1929)
!1975 = !DILocation(line: 894, column: 26, scope: !1929)
!1976 = !DILocation(line: 894, column: 32, scope: !1929)
!1977 = !DILocation(line: 896, column: 55, scope: !1929)
!1978 = !DILocation(line: 897, column: 46, scope: !1929)
!1979 = !DILocation(line: 898, column: 55, scope: !1929)
!1980 = !DILocation(line: 899, column: 55, scope: !1929)
!1981 = !DILocation(line: 895, column: 20, scope: !1929)
!1982 = !DILocation(line: 901, column: 14, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1929, file: !234, line: 901, column: 9)
!1984 = !DILocation(line: 901, column: 9, scope: !1929)
!1985 = !DILocation(line: 903, column: 35, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !234, line: 902, column: 7)
!1987 = !DILocation(line: 903, column: 20, scope: !1986)
!1988 = !DILocation(line: 904, column: 17, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !234, line: 904, column: 13)
!1990 = !DILocation(line: 904, column: 13, scope: !1986)
!1991 = !DILocation(line: 905, column: 11, scope: !1989)
!1992 = !DILocation(line: 906, column: 27, scope: !1986)
!1993 = !DILocation(line: 906, column: 19, scope: !1986)
!1994 = !DILocation(line: 907, column: 69, scope: !1986)
!1995 = !DILocation(line: 909, column: 44, scope: !1986)
!1996 = !DILocation(line: 910, column: 44, scope: !1986)
!1997 = !DILocation(line: 907, column: 9, scope: !1986)
!1998 = !DILocation(line: 911, column: 7, scope: !1986)
!1999 = !DILocation(line: 913, column: 11, scope: !1929)
!2000 = !DILocation(line: 914, column: 5, scope: !1929)
!2001 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !234, file: !234, line: 925, type: !2002, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!65, !30, !6, !32}
!2004 = !{!2005, !2006, !2007}
!2005 = !DILocalVariable(name: "n", arg: 1, scope: !2001, file: !234, line: 925, type: !30)
!2006 = !DILocalVariable(name: "arg", arg: 2, scope: !2001, file: !234, line: 925, type: !6)
!2007 = !DILocalVariable(name: "argsize", arg: 3, scope: !2001, file: !234, line: 925, type: !32)
!2008 = !DILocation(line: 0, scope: !2001)
!2009 = !DILocation(line: 927, column: 10, scope: !2001)
!2010 = !DILocation(line: 927, column: 3, scope: !2001)
!2011 = distinct !DISubprogram(name: "quotearg", scope: !234, file: !234, line: 931, type: !633, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2012)
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "arg", arg: 1, scope: !2011, file: !234, line: 931, type: !6)
!2014 = !DILocation(line: 0, scope: !2011)
!2015 = !DILocation(line: 0, scope: !1906, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 933, column: 10, scope: !2011)
!2017 = !DILocation(line: 921, column: 10, scope: !1906, inlinedAt: !2016)
!2018 = !DILocation(line: 933, column: 3, scope: !2011)
!2019 = distinct !DISubprogram(name: "quotearg_mem", scope: !234, file: !234, line: 937, type: !2020, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!65, !6, !32}
!2022 = !{!2023, !2024}
!2023 = !DILocalVariable(name: "arg", arg: 1, scope: !2019, file: !234, line: 937, type: !6)
!2024 = !DILocalVariable(name: "argsize", arg: 2, scope: !2019, file: !234, line: 937, type: !32)
!2025 = !DILocation(line: 0, scope: !2019)
!2026 = !DILocation(line: 0, scope: !2001, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 939, column: 10, scope: !2019)
!2028 = !DILocation(line: 927, column: 10, scope: !2001, inlinedAt: !2027)
!2029 = !DILocation(line: 939, column: 3, scope: !2019)
!2030 = distinct !DISubprogram(name: "quotearg_n_style", scope: !234, file: !234, line: 943, type: !2031, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2033)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!65, !30, !236, !6}
!2033 = !{!2034, !2035, !2036, !2037}
!2034 = !DILocalVariable(name: "n", arg: 1, scope: !2030, file: !234, line: 943, type: !30)
!2035 = !DILocalVariable(name: "s", arg: 2, scope: !2030, file: !234, line: 943, type: !236)
!2036 = !DILocalVariable(name: "arg", arg: 3, scope: !2030, file: !234, line: 943, type: !6)
!2037 = !DILocalVariable(name: "o", scope: !2030, file: !234, line: 945, type: !1141)
!2038 = !DILocation(line: 0, scope: !2030)
!2039 = !DILocation(line: 945, column: 3, scope: !2030)
!2040 = !DILocation(line: 945, column: 32, scope: !2030)
!2041 = !{!2042}
!2042 = distinct !{!2042, !2043, !"quoting_options_from_style: argument 0"}
!2043 = distinct !{!2043, !"quoting_options_from_style"}
!2044 = !DILocation(line: 945, column: 36, scope: !2030)
!2045 = !DILocalVariable(name: "style", arg: 1, scope: !2046, file: !234, line: 183, type: !236)
!2046 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !234, file: !234, line: 183, type: !2047, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!265, !236}
!2049 = !{!2045, !2050}
!2050 = !DILocalVariable(name: "o", scope: !2046, file: !234, line: 185, type: !265)
!2051 = !DILocation(line: 0, scope: !2046, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 945, column: 36, scope: !2030)
!2053 = !DILocation(line: 185, column: 26, scope: !2046, inlinedAt: !2052)
!2054 = !DILocation(line: 186, column: 13, scope: !2055, inlinedAt: !2052)
!2055 = distinct !DILexicalBlock(scope: !2046, file: !234, line: 186, column: 7)
!2056 = !DILocation(line: 186, column: 7, scope: !2046, inlinedAt: !2052)
!2057 = !DILocation(line: 187, column: 5, scope: !2055, inlinedAt: !2052)
!2058 = !DILocation(line: 188, column: 5, scope: !2046, inlinedAt: !2052)
!2059 = !DILocation(line: 188, column: 11, scope: !2046, inlinedAt: !2052)
!2060 = !DILocation(line: 946, column: 10, scope: !2030)
!2061 = !DILocation(line: 947, column: 1, scope: !2030)
!2062 = !DILocation(line: 946, column: 3, scope: !2030)
!2063 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !234, file: !234, line: 950, type: !2064, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!65, !30, !236, !6, !32}
!2066 = !{!2067, !2068, !2069, !2070, !2071}
!2067 = !DILocalVariable(name: "n", arg: 1, scope: !2063, file: !234, line: 950, type: !30)
!2068 = !DILocalVariable(name: "s", arg: 2, scope: !2063, file: !234, line: 950, type: !236)
!2069 = !DILocalVariable(name: "arg", arg: 3, scope: !2063, file: !234, line: 951, type: !6)
!2070 = !DILocalVariable(name: "argsize", arg: 4, scope: !2063, file: !234, line: 951, type: !32)
!2071 = !DILocalVariable(name: "o", scope: !2063, file: !234, line: 953, type: !1141)
!2072 = !DILocation(line: 0, scope: !2063)
!2073 = !DILocation(line: 953, column: 3, scope: !2063)
!2074 = !DILocation(line: 953, column: 32, scope: !2063)
!2075 = !{!2076}
!2076 = distinct !{!2076, !2077, !"quoting_options_from_style: argument 0"}
!2077 = distinct !{!2077, !"quoting_options_from_style"}
!2078 = !DILocation(line: 953, column: 36, scope: !2063)
!2079 = !DILocation(line: 0, scope: !2046, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 953, column: 36, scope: !2063)
!2081 = !DILocation(line: 185, column: 26, scope: !2046, inlinedAt: !2080)
!2082 = !DILocation(line: 186, column: 13, scope: !2055, inlinedAt: !2080)
!2083 = !DILocation(line: 186, column: 7, scope: !2046, inlinedAt: !2080)
!2084 = !DILocation(line: 187, column: 5, scope: !2055, inlinedAt: !2080)
!2085 = !DILocation(line: 188, column: 5, scope: !2046, inlinedAt: !2080)
!2086 = !DILocation(line: 188, column: 11, scope: !2046, inlinedAt: !2080)
!2087 = !DILocation(line: 954, column: 10, scope: !2063)
!2088 = !DILocation(line: 955, column: 1, scope: !2063)
!2089 = !DILocation(line: 954, column: 3, scope: !2063)
!2090 = distinct !DISubprogram(name: "quotearg_style", scope: !234, file: !234, line: 958, type: !2091, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!65, !236, !6}
!2093 = !{!2094, !2095}
!2094 = !DILocalVariable(name: "s", arg: 1, scope: !2090, file: !234, line: 958, type: !236)
!2095 = !DILocalVariable(name: "arg", arg: 2, scope: !2090, file: !234, line: 958, type: !6)
!2096 = !DILocation(line: 0, scope: !2090)
!2097 = !DILocation(line: 0, scope: !2030, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 960, column: 10, scope: !2090)
!2099 = !DILocation(line: 945, column: 3, scope: !2030, inlinedAt: !2098)
!2100 = !DILocation(line: 945, column: 32, scope: !2030, inlinedAt: !2098)
!2101 = !{!2102}
!2102 = distinct !{!2102, !2103, !"quoting_options_from_style: argument 0"}
!2103 = distinct !{!2103, !"quoting_options_from_style"}
!2104 = !DILocation(line: 945, column: 36, scope: !2030, inlinedAt: !2098)
!2105 = !DILocation(line: 0, scope: !2046, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 945, column: 36, scope: !2030, inlinedAt: !2098)
!2107 = !DILocation(line: 185, column: 26, scope: !2046, inlinedAt: !2106)
!2108 = !DILocation(line: 186, column: 13, scope: !2055, inlinedAt: !2106)
!2109 = !DILocation(line: 186, column: 7, scope: !2046, inlinedAt: !2106)
!2110 = !DILocation(line: 187, column: 5, scope: !2055, inlinedAt: !2106)
!2111 = !DILocation(line: 188, column: 5, scope: !2046, inlinedAt: !2106)
!2112 = !DILocation(line: 188, column: 11, scope: !2046, inlinedAt: !2106)
!2113 = !DILocation(line: 946, column: 10, scope: !2030, inlinedAt: !2098)
!2114 = !DILocation(line: 947, column: 1, scope: !2030, inlinedAt: !2098)
!2115 = !DILocation(line: 960, column: 3, scope: !2090)
!2116 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !234, file: !234, line: 964, type: !2117, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!65, !236, !6, !32}
!2119 = !{!2120, !2121, !2122}
!2120 = !DILocalVariable(name: "s", arg: 1, scope: !2116, file: !234, line: 964, type: !236)
!2121 = !DILocalVariable(name: "arg", arg: 2, scope: !2116, file: !234, line: 964, type: !6)
!2122 = !DILocalVariable(name: "argsize", arg: 3, scope: !2116, file: !234, line: 964, type: !32)
!2123 = !DILocation(line: 0, scope: !2116)
!2124 = !DILocation(line: 0, scope: !2063, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 966, column: 10, scope: !2116)
!2126 = !DILocation(line: 953, column: 3, scope: !2063, inlinedAt: !2125)
!2127 = !DILocation(line: 953, column: 32, scope: !2063, inlinedAt: !2125)
!2128 = !{!2129}
!2129 = distinct !{!2129, !2130, !"quoting_options_from_style: argument 0"}
!2130 = distinct !{!2130, !"quoting_options_from_style"}
!2131 = !DILocation(line: 953, column: 36, scope: !2063, inlinedAt: !2125)
!2132 = !DILocation(line: 0, scope: !2046, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 953, column: 36, scope: !2063, inlinedAt: !2125)
!2134 = !DILocation(line: 185, column: 26, scope: !2046, inlinedAt: !2133)
!2135 = !DILocation(line: 186, column: 13, scope: !2055, inlinedAt: !2133)
!2136 = !DILocation(line: 186, column: 7, scope: !2046, inlinedAt: !2133)
!2137 = !DILocation(line: 187, column: 5, scope: !2055, inlinedAt: !2133)
!2138 = !DILocation(line: 188, column: 5, scope: !2046, inlinedAt: !2133)
!2139 = !DILocation(line: 188, column: 11, scope: !2046, inlinedAt: !2133)
!2140 = !DILocation(line: 954, column: 10, scope: !2063, inlinedAt: !2125)
!2141 = !DILocation(line: 955, column: 1, scope: !2063, inlinedAt: !2125)
!2142 = !DILocation(line: 966, column: 3, scope: !2116)
!2143 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !234, file: !234, line: 970, type: !2144, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!65, !6, !32, !8}
!2146 = !{!2147, !2148, !2149, !2150}
!2147 = !DILocalVariable(name: "arg", arg: 1, scope: !2143, file: !234, line: 970, type: !6)
!2148 = !DILocalVariable(name: "argsize", arg: 2, scope: !2143, file: !234, line: 970, type: !32)
!2149 = !DILocalVariable(name: "ch", arg: 3, scope: !2143, file: !234, line: 970, type: !8)
!2150 = !DILocalVariable(name: "options", scope: !2143, file: !234, line: 972, type: !265)
!2151 = !DILocation(line: 0, scope: !2143)
!2152 = !DILocation(line: 972, column: 3, scope: !2143)
!2153 = !DILocation(line: 972, column: 26, scope: !2143)
!2154 = !DILocation(line: 973, column: 13, scope: !2143)
!2155 = !{i64 0, i64 4, !530, i64 4, i64 4, !521, i64 8, i64 32, !530, i64 40, i64 8, !435, i64 48, i64 8, !435}
!2156 = !DILocation(line: 0, scope: !1161, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 974, column: 3, scope: !2143)
!2158 = !DILocation(line: 147, column: 62, scope: !1161, inlinedAt: !2157)
!2159 = !DILocation(line: 147, column: 57, scope: !1161, inlinedAt: !2157)
!2160 = !DILocation(line: 148, column: 15, scope: !1161, inlinedAt: !2157)
!2161 = !DILocation(line: 149, column: 21, scope: !1161, inlinedAt: !2157)
!2162 = !DILocation(line: 149, column: 24, scope: !1161, inlinedAt: !2157)
!2163 = !DILocation(line: 149, column: 34, scope: !1161, inlinedAt: !2157)
!2164 = !DILocation(line: 150, column: 19, scope: !1161, inlinedAt: !2157)
!2165 = !DILocation(line: 150, column: 24, scope: !1161, inlinedAt: !2157)
!2166 = !DILocation(line: 150, column: 6, scope: !1161, inlinedAt: !2157)
!2167 = !DILocation(line: 975, column: 10, scope: !2143)
!2168 = !DILocation(line: 976, column: 1, scope: !2143)
!2169 = !DILocation(line: 975, column: 3, scope: !2143)
!2170 = distinct !DISubprogram(name: "quotearg_char", scope: !234, file: !234, line: 979, type: !2171, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!65, !6, !8}
!2173 = !{!2174, !2175}
!2174 = !DILocalVariable(name: "arg", arg: 1, scope: !2170, file: !234, line: 979, type: !6)
!2175 = !DILocalVariable(name: "ch", arg: 2, scope: !2170, file: !234, line: 979, type: !8)
!2176 = !DILocation(line: 0, scope: !2170)
!2177 = !DILocation(line: 0, scope: !2143, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 981, column: 10, scope: !2170)
!2179 = !DILocation(line: 972, column: 3, scope: !2143, inlinedAt: !2178)
!2180 = !DILocation(line: 972, column: 26, scope: !2143, inlinedAt: !2178)
!2181 = !DILocation(line: 973, column: 13, scope: !2143, inlinedAt: !2178)
!2182 = !DILocation(line: 0, scope: !1161, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 974, column: 3, scope: !2143, inlinedAt: !2178)
!2184 = !DILocation(line: 147, column: 62, scope: !1161, inlinedAt: !2183)
!2185 = !DILocation(line: 147, column: 57, scope: !1161, inlinedAt: !2183)
!2186 = !DILocation(line: 148, column: 15, scope: !1161, inlinedAt: !2183)
!2187 = !DILocation(line: 149, column: 21, scope: !1161, inlinedAt: !2183)
!2188 = !DILocation(line: 149, column: 24, scope: !1161, inlinedAt: !2183)
!2189 = !DILocation(line: 149, column: 34, scope: !1161, inlinedAt: !2183)
!2190 = !DILocation(line: 150, column: 19, scope: !1161, inlinedAt: !2183)
!2191 = !DILocation(line: 150, column: 24, scope: !1161, inlinedAt: !2183)
!2192 = !DILocation(line: 150, column: 6, scope: !1161, inlinedAt: !2183)
!2193 = !DILocation(line: 975, column: 10, scope: !2143, inlinedAt: !2178)
!2194 = !DILocation(line: 976, column: 1, scope: !2143, inlinedAt: !2178)
!2195 = !DILocation(line: 981, column: 3, scope: !2170)
!2196 = distinct !DISubprogram(name: "quotearg_colon", scope: !234, file: !234, line: 985, type: !633, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2197)
!2197 = !{!2198}
!2198 = !DILocalVariable(name: "arg", arg: 1, scope: !2196, file: !234, line: 985, type: !6)
!2199 = !DILocation(line: 0, scope: !2196)
!2200 = !DILocation(line: 0, scope: !2170, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 987, column: 10, scope: !2196)
!2202 = !DILocation(line: 0, scope: !2143, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 981, column: 10, scope: !2170, inlinedAt: !2201)
!2204 = !DILocation(line: 972, column: 3, scope: !2143, inlinedAt: !2203)
!2205 = !DILocation(line: 972, column: 26, scope: !2143, inlinedAt: !2203)
!2206 = !DILocation(line: 973, column: 13, scope: !2143, inlinedAt: !2203)
!2207 = !DILocation(line: 0, scope: !1161, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 974, column: 3, scope: !2143, inlinedAt: !2203)
!2209 = !DILocation(line: 147, column: 57, scope: !1161, inlinedAt: !2208)
!2210 = !DILocation(line: 149, column: 21, scope: !1161, inlinedAt: !2208)
!2211 = !DILocation(line: 150, column: 6, scope: !1161, inlinedAt: !2208)
!2212 = !DILocation(line: 975, column: 10, scope: !2143, inlinedAt: !2203)
!2213 = !DILocation(line: 976, column: 1, scope: !2143, inlinedAt: !2203)
!2214 = !DILocation(line: 987, column: 3, scope: !2196)
!2215 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !234, file: !234, line: 991, type: !2020, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2216)
!2216 = !{!2217, !2218}
!2217 = !DILocalVariable(name: "arg", arg: 1, scope: !2215, file: !234, line: 991, type: !6)
!2218 = !DILocalVariable(name: "argsize", arg: 2, scope: !2215, file: !234, line: 991, type: !32)
!2219 = !DILocation(line: 0, scope: !2215)
!2220 = !DILocation(line: 0, scope: !2143, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 993, column: 10, scope: !2215)
!2222 = !DILocation(line: 972, column: 3, scope: !2143, inlinedAt: !2221)
!2223 = !DILocation(line: 972, column: 26, scope: !2143, inlinedAt: !2221)
!2224 = !DILocation(line: 973, column: 13, scope: !2143, inlinedAt: !2221)
!2225 = !DILocation(line: 0, scope: !1161, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 974, column: 3, scope: !2143, inlinedAt: !2221)
!2227 = !DILocation(line: 147, column: 57, scope: !1161, inlinedAt: !2226)
!2228 = !DILocation(line: 149, column: 21, scope: !1161, inlinedAt: !2226)
!2229 = !DILocation(line: 150, column: 6, scope: !1161, inlinedAt: !2226)
!2230 = !DILocation(line: 975, column: 10, scope: !2143, inlinedAt: !2221)
!2231 = !DILocation(line: 976, column: 1, scope: !2143, inlinedAt: !2221)
!2232 = !DILocation(line: 993, column: 3, scope: !2215)
!2233 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !234, file: !234, line: 997, type: !2031, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2234)
!2234 = !{!2235, !2236, !2237, !2238}
!2235 = !DILocalVariable(name: "n", arg: 1, scope: !2233, file: !234, line: 997, type: !30)
!2236 = !DILocalVariable(name: "s", arg: 2, scope: !2233, file: !234, line: 997, type: !236)
!2237 = !DILocalVariable(name: "arg", arg: 3, scope: !2233, file: !234, line: 997, type: !6)
!2238 = !DILocalVariable(name: "options", scope: !2233, file: !234, line: 999, type: !265)
!2239 = !DILocation(line: 0, scope: !2233)
!2240 = !DILocation(line: 999, column: 3, scope: !2233)
!2241 = !DILocation(line: 999, column: 26, scope: !2233)
!2242 = !DILocation(line: 0, scope: !2046, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 1000, column: 13, scope: !2233)
!2244 = !DILocation(line: 186, column: 13, scope: !2055, inlinedAt: !2243)
!2245 = !DILocation(line: 186, column: 7, scope: !2046, inlinedAt: !2243)
!2246 = !DILocation(line: 187, column: 5, scope: !2055, inlinedAt: !2243)
!2247 = !{!2248}
!2248 = distinct !{!2248, !2249, !"quoting_options_from_style: argument 0"}
!2249 = distinct !{!2249, !"quoting_options_from_style"}
!2250 = !DILocation(line: 1000, column: 13, scope: !2233)
!2251 = !DILocation(line: 0, scope: !1161, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 1001, column: 3, scope: !2233)
!2253 = !DILocation(line: 147, column: 57, scope: !1161, inlinedAt: !2252)
!2254 = !DILocation(line: 149, column: 21, scope: !1161, inlinedAt: !2252)
!2255 = !DILocation(line: 150, column: 6, scope: !1161, inlinedAt: !2252)
!2256 = !DILocation(line: 1002, column: 10, scope: !2233)
!2257 = !DILocation(line: 1003, column: 1, scope: !2233)
!2258 = !DILocation(line: 1002, column: 3, scope: !2233)
!2259 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !234, file: !234, line: 1006, type: !2260, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!65, !30, !6, !6, !6}
!2262 = !{!2263, !2264, !2265, !2266}
!2263 = !DILocalVariable(name: "n", arg: 1, scope: !2259, file: !234, line: 1006, type: !30)
!2264 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2259, file: !234, line: 1006, type: !6)
!2265 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2259, file: !234, line: 1007, type: !6)
!2266 = !DILocalVariable(name: "arg", arg: 4, scope: !2259, file: !234, line: 1007, type: !6)
!2267 = !DILocation(line: 0, scope: !2259)
!2268 = !DILocalVariable(name: "n", arg: 1, scope: !2269, file: !234, line: 1014, type: !30)
!2269 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !234, file: !234, line: 1014, type: !2270, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!65, !30, !6, !6, !6, !32}
!2272 = !{!2268, !2273, !2274, !2275, !2276, !2277}
!2273 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2269, file: !234, line: 1014, type: !6)
!2274 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2269, file: !234, line: 1015, type: !6)
!2275 = !DILocalVariable(name: "arg", arg: 4, scope: !2269, file: !234, line: 1016, type: !6)
!2276 = !DILocalVariable(name: "argsize", arg: 5, scope: !2269, file: !234, line: 1016, type: !32)
!2277 = !DILocalVariable(name: "o", scope: !2269, file: !234, line: 1018, type: !265)
!2278 = !DILocation(line: 0, scope: !2269, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 1009, column: 10, scope: !2259)
!2280 = !DILocation(line: 1018, column: 3, scope: !2269, inlinedAt: !2279)
!2281 = !DILocation(line: 1018, column: 26, scope: !2269, inlinedAt: !2279)
!2282 = !DILocation(line: 1018, column: 30, scope: !2269, inlinedAt: !2279)
!2283 = !DILocation(line: 0, scope: !1201, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 1019, column: 3, scope: !2269, inlinedAt: !2279)
!2285 = !DILocation(line: 174, column: 6, scope: !1201, inlinedAt: !2284)
!2286 = !DILocation(line: 174, column: 12, scope: !1201, inlinedAt: !2284)
!2287 = !DILocation(line: 175, column: 8, scope: !1215, inlinedAt: !2284)
!2288 = !DILocation(line: 175, column: 19, scope: !1215, inlinedAt: !2284)
!2289 = !DILocation(line: 176, column: 5, scope: !1215, inlinedAt: !2284)
!2290 = !DILocation(line: 177, column: 6, scope: !1201, inlinedAt: !2284)
!2291 = !DILocation(line: 177, column: 17, scope: !1201, inlinedAt: !2284)
!2292 = !DILocation(line: 178, column: 6, scope: !1201, inlinedAt: !2284)
!2293 = !DILocation(line: 178, column: 18, scope: !1201, inlinedAt: !2284)
!2294 = !DILocation(line: 1020, column: 10, scope: !2269, inlinedAt: !2279)
!2295 = !DILocation(line: 1021, column: 1, scope: !2269, inlinedAt: !2279)
!2296 = !DILocation(line: 1009, column: 3, scope: !2259)
!2297 = !DILocation(line: 0, scope: !2269)
!2298 = !DILocation(line: 1018, column: 3, scope: !2269)
!2299 = !DILocation(line: 1018, column: 26, scope: !2269)
!2300 = !DILocation(line: 1018, column: 30, scope: !2269)
!2301 = !DILocation(line: 0, scope: !1201, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 1019, column: 3, scope: !2269)
!2303 = !DILocation(line: 174, column: 6, scope: !1201, inlinedAt: !2302)
!2304 = !DILocation(line: 174, column: 12, scope: !1201, inlinedAt: !2302)
!2305 = !DILocation(line: 175, column: 8, scope: !1215, inlinedAt: !2302)
!2306 = !DILocation(line: 175, column: 19, scope: !1215, inlinedAt: !2302)
!2307 = !DILocation(line: 176, column: 5, scope: !1215, inlinedAt: !2302)
!2308 = !DILocation(line: 177, column: 6, scope: !1201, inlinedAt: !2302)
!2309 = !DILocation(line: 177, column: 17, scope: !1201, inlinedAt: !2302)
!2310 = !DILocation(line: 178, column: 6, scope: !1201, inlinedAt: !2302)
!2311 = !DILocation(line: 178, column: 18, scope: !1201, inlinedAt: !2302)
!2312 = !DILocation(line: 1020, column: 10, scope: !2269)
!2313 = !DILocation(line: 1021, column: 1, scope: !2269)
!2314 = !DILocation(line: 1020, column: 3, scope: !2269)
!2315 = distinct !DISubprogram(name: "quotearg_custom", scope: !234, file: !234, line: 1024, type: !2316, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!65, !6, !6, !6}
!2318 = !{!2319, !2320, !2321}
!2319 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2315, file: !234, line: 1024, type: !6)
!2320 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2315, file: !234, line: 1024, type: !6)
!2321 = !DILocalVariable(name: "arg", arg: 3, scope: !2315, file: !234, line: 1025, type: !6)
!2322 = !DILocation(line: 0, scope: !2315)
!2323 = !DILocation(line: 0, scope: !2259, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 1027, column: 10, scope: !2315)
!2325 = !DILocation(line: 0, scope: !2269, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 1009, column: 10, scope: !2259, inlinedAt: !2324)
!2327 = !DILocation(line: 1018, column: 3, scope: !2269, inlinedAt: !2326)
!2328 = !DILocation(line: 1018, column: 26, scope: !2269, inlinedAt: !2326)
!2329 = !DILocation(line: 1018, column: 30, scope: !2269, inlinedAt: !2326)
!2330 = !DILocation(line: 0, scope: !1201, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 1019, column: 3, scope: !2269, inlinedAt: !2326)
!2332 = !DILocation(line: 174, column: 6, scope: !1201, inlinedAt: !2331)
!2333 = !DILocation(line: 174, column: 12, scope: !1201, inlinedAt: !2331)
!2334 = !DILocation(line: 175, column: 8, scope: !1215, inlinedAt: !2331)
!2335 = !DILocation(line: 175, column: 19, scope: !1215, inlinedAt: !2331)
!2336 = !DILocation(line: 176, column: 5, scope: !1215, inlinedAt: !2331)
!2337 = !DILocation(line: 177, column: 6, scope: !1201, inlinedAt: !2331)
!2338 = !DILocation(line: 177, column: 17, scope: !1201, inlinedAt: !2331)
!2339 = !DILocation(line: 178, column: 6, scope: !1201, inlinedAt: !2331)
!2340 = !DILocation(line: 178, column: 18, scope: !1201, inlinedAt: !2331)
!2341 = !DILocation(line: 1020, column: 10, scope: !2269, inlinedAt: !2326)
!2342 = !DILocation(line: 1021, column: 1, scope: !2269, inlinedAt: !2326)
!2343 = !DILocation(line: 1027, column: 3, scope: !2315)
!2344 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !234, file: !234, line: 1031, type: !2345, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!65, !6, !6, !6, !32}
!2347 = !{!2348, !2349, !2350, !2351}
!2348 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2344, file: !234, line: 1031, type: !6)
!2349 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2344, file: !234, line: 1031, type: !6)
!2350 = !DILocalVariable(name: "arg", arg: 3, scope: !2344, file: !234, line: 1032, type: !6)
!2351 = !DILocalVariable(name: "argsize", arg: 4, scope: !2344, file: !234, line: 1032, type: !32)
!2352 = !DILocation(line: 0, scope: !2344)
!2353 = !DILocation(line: 0, scope: !2269, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 1034, column: 10, scope: !2344)
!2355 = !DILocation(line: 1018, column: 3, scope: !2269, inlinedAt: !2354)
!2356 = !DILocation(line: 1018, column: 26, scope: !2269, inlinedAt: !2354)
!2357 = !DILocation(line: 1018, column: 30, scope: !2269, inlinedAt: !2354)
!2358 = !DILocation(line: 0, scope: !1201, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 1019, column: 3, scope: !2269, inlinedAt: !2354)
!2360 = !DILocation(line: 174, column: 6, scope: !1201, inlinedAt: !2359)
!2361 = !DILocation(line: 174, column: 12, scope: !1201, inlinedAt: !2359)
!2362 = !DILocation(line: 175, column: 8, scope: !1215, inlinedAt: !2359)
!2363 = !DILocation(line: 175, column: 19, scope: !1215, inlinedAt: !2359)
!2364 = !DILocation(line: 176, column: 5, scope: !1215, inlinedAt: !2359)
!2365 = !DILocation(line: 177, column: 6, scope: !1201, inlinedAt: !2359)
!2366 = !DILocation(line: 177, column: 17, scope: !1201, inlinedAt: !2359)
!2367 = !DILocation(line: 178, column: 6, scope: !1201, inlinedAt: !2359)
!2368 = !DILocation(line: 178, column: 18, scope: !1201, inlinedAt: !2359)
!2369 = !DILocation(line: 1020, column: 10, scope: !2269, inlinedAt: !2354)
!2370 = !DILocation(line: 1021, column: 1, scope: !2269, inlinedAt: !2354)
!2371 = !DILocation(line: 1034, column: 3, scope: !2344)
!2372 = distinct !DISubprogram(name: "quote_n_mem", scope: !234, file: !234, line: 1049, type: !2373, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!6, !30, !6, !32}
!2375 = !{!2376, !2377, !2378}
!2376 = !DILocalVariable(name: "n", arg: 1, scope: !2372, file: !234, line: 1049, type: !30)
!2377 = !DILocalVariable(name: "arg", arg: 2, scope: !2372, file: !234, line: 1049, type: !6)
!2378 = !DILocalVariable(name: "argsize", arg: 3, scope: !2372, file: !234, line: 1049, type: !32)
!2379 = !DILocation(line: 0, scope: !2372)
!2380 = !DILocation(line: 1051, column: 10, scope: !2372)
!2381 = !DILocation(line: 1051, column: 3, scope: !2372)
!2382 = distinct !DISubprogram(name: "quote_mem", scope: !234, file: !234, line: 1055, type: !2383, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!6, !6, !32}
!2385 = !{!2386, !2387}
!2386 = !DILocalVariable(name: "arg", arg: 1, scope: !2382, file: !234, line: 1055, type: !6)
!2387 = !DILocalVariable(name: "argsize", arg: 2, scope: !2382, file: !234, line: 1055, type: !32)
!2388 = !DILocation(line: 0, scope: !2382)
!2389 = !DILocation(line: 0, scope: !2372, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 1057, column: 10, scope: !2382)
!2391 = !DILocation(line: 1051, column: 10, scope: !2372, inlinedAt: !2390)
!2392 = !DILocation(line: 1057, column: 3, scope: !2382)
!2393 = distinct !DISubprogram(name: "quote_n", scope: !234, file: !234, line: 1061, type: !2394, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!6, !30, !6}
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "n", arg: 1, scope: !2393, file: !234, line: 1061, type: !30)
!2398 = !DILocalVariable(name: "arg", arg: 2, scope: !2393, file: !234, line: 1061, type: !6)
!2399 = !DILocation(line: 0, scope: !2393)
!2400 = !DILocation(line: 0, scope: !2372, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 1063, column: 10, scope: !2393)
!2402 = !DILocation(line: 1051, column: 10, scope: !2372, inlinedAt: !2401)
!2403 = !DILocation(line: 1063, column: 3, scope: !2393)
!2404 = distinct !DISubprogram(name: "quote", scope: !234, file: !234, line: 1067, type: !2405, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!6, !6}
!2407 = !{!2408}
!2408 = !DILocalVariable(name: "arg", arg: 1, scope: !2404, file: !234, line: 1067, type: !6)
!2409 = !DILocation(line: 0, scope: !2404)
!2410 = !DILocation(line: 0, scope: !2393, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1069, column: 10, scope: !2404)
!2412 = !DILocation(line: 0, scope: !2372, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 1063, column: 10, scope: !2393, inlinedAt: !2411)
!2414 = !DILocation(line: 1051, column: 10, scope: !2372, inlinedAt: !2413)
!2415 = !DILocation(line: 1069, column: 3, scope: !2404)
!2416 = distinct !DISubprogram(name: "version_etc_arn", scope: !353, file: !353, line: 61, type: !2417, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2454)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2419, !6, !6, !6, !2453, !32}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !2421)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2421, file: !61, line: 51, baseType: !30, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2421, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2421, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2421, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2421, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2421, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2421, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2421, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2421, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2421, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2421, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2421, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2421, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2421, file: !61, line: 70, baseType: !2437, size: 64, offset: 832)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2421, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2421, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2421, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2421, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2421, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2421, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2421, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2421, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2421, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2421, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2421, file: !61, line: 93, baseType: !2437, size: 64, offset: 1344)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2421, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2421, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2421, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2421, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460}
!2455 = !DILocalVariable(name: "stream", arg: 1, scope: !2416, file: !353, line: 61, type: !2419)
!2456 = !DILocalVariable(name: "command_name", arg: 2, scope: !2416, file: !353, line: 62, type: !6)
!2457 = !DILocalVariable(name: "package", arg: 3, scope: !2416, file: !353, line: 62, type: !6)
!2458 = !DILocalVariable(name: "version", arg: 4, scope: !2416, file: !353, line: 63, type: !6)
!2459 = !DILocalVariable(name: "authors", arg: 5, scope: !2416, file: !353, line: 64, type: !2453)
!2460 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2416, file: !353, line: 64, type: !32)
!2461 = !DILocation(line: 0, scope: !2416)
!2462 = !DILocation(line: 66, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2416, file: !353, line: 66, column: 7)
!2464 = !DILocation(line: 66, column: 7, scope: !2416)
!2465 = !DILocation(line: 67, column: 5, scope: !2463)
!2466 = !DILocation(line: 69, column: 5, scope: !2463)
!2467 = !DILocation(line: 83, column: 3, scope: !2416)
!2468 = !DILocation(line: 85, column: 3, scope: !2416)
!2469 = !DILocation(line: 88, column: 3, scope: !2416)
!2470 = !DILocation(line: 95, column: 3, scope: !2416)
!2471 = !DILocation(line: 97, column: 3, scope: !2416)
!2472 = !DILocation(line: 105, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2416, file: !353, line: 98, column: 5)
!2474 = !DILocation(line: 106, column: 7, scope: !2473)
!2475 = !DILocation(line: 109, column: 7, scope: !2473)
!2476 = !DILocation(line: 110, column: 7, scope: !2473)
!2477 = !DILocation(line: 113, column: 7, scope: !2473)
!2478 = !DILocation(line: 115, column: 7, scope: !2473)
!2479 = !DILocation(line: 120, column: 7, scope: !2473)
!2480 = !DILocation(line: 122, column: 7, scope: !2473)
!2481 = !DILocation(line: 127, column: 7, scope: !2473)
!2482 = !DILocation(line: 129, column: 7, scope: !2473)
!2483 = !DILocation(line: 134, column: 7, scope: !2473)
!2484 = !DILocation(line: 137, column: 7, scope: !2473)
!2485 = !DILocation(line: 142, column: 7, scope: !2473)
!2486 = !DILocation(line: 145, column: 7, scope: !2473)
!2487 = !DILocation(line: 150, column: 7, scope: !2473)
!2488 = !DILocation(line: 154, column: 7, scope: !2473)
!2489 = !DILocation(line: 159, column: 7, scope: !2473)
!2490 = !DILocation(line: 163, column: 7, scope: !2473)
!2491 = !DILocation(line: 170, column: 7, scope: !2473)
!2492 = !DILocation(line: 174, column: 7, scope: !2473)
!2493 = !DILocation(line: 176, column: 1, scope: !2416)
!2494 = distinct !DISubprogram(name: "version_etc_ar", scope: !353, file: !353, line: 183, type: !2495, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{null, !2419, !6, !6, !6, !2453}
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503}
!2498 = !DILocalVariable(name: "stream", arg: 1, scope: !2494, file: !353, line: 183, type: !2419)
!2499 = !DILocalVariable(name: "command_name", arg: 2, scope: !2494, file: !353, line: 184, type: !6)
!2500 = !DILocalVariable(name: "package", arg: 3, scope: !2494, file: !353, line: 184, type: !6)
!2501 = !DILocalVariable(name: "version", arg: 4, scope: !2494, file: !353, line: 185, type: !6)
!2502 = !DILocalVariable(name: "authors", arg: 5, scope: !2494, file: !353, line: 185, type: !2453)
!2503 = !DILocalVariable(name: "n_authors", scope: !2494, file: !353, line: 187, type: !32)
!2504 = !DILocation(line: 0, scope: !2494)
!2505 = !DILocation(line: 189, column: 8, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2494, file: !353, line: 189, column: 3)
!2507 = !DILocation(line: 0, scope: !2506)
!2508 = !DILocation(line: 189, column: 23, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2506, file: !353, line: 189, column: 3)
!2510 = !DILocation(line: 189, column: 3, scope: !2506)
!2511 = !DILocation(line: 189, column: 52, scope: !2509)
!2512 = distinct !{!2512, !2510, !2513, !487}
!2513 = !DILocation(line: 190, column: 5, scope: !2506)
!2514 = !DILocation(line: 191, column: 3, scope: !2494)
!2515 = !DILocation(line: 192, column: 1, scope: !2494)
!2516 = distinct !DISubprogram(name: "version_etc_va", scope: !353, file: !353, line: 199, type: !2517, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2530)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{null, !2419, !6, !6, !6, !2519}
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 52, baseType: !2520)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !145, line: 32, baseType: !2521)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2522, baseType: !2523)
!2522 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !149, size: 256, elements: !2524)
!2524 = !{!2525, !2526, !2527, !2528, !2529}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2523, file: !2522, line: 192, baseType: !29, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2523, file: !2522, line: 192, baseType: !29, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2523, file: !2522, line: 192, baseType: !29, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2523, file: !2522, line: 192, baseType: !30, size: 32, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2523, file: !2522, line: 192, baseType: !30, size: 32, offset: 224)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2531 = !DILocalVariable(name: "stream", arg: 1, scope: !2516, file: !353, line: 199, type: !2419)
!2532 = !DILocalVariable(name: "command_name", arg: 2, scope: !2516, file: !353, line: 200, type: !6)
!2533 = !DILocalVariable(name: "package", arg: 3, scope: !2516, file: !353, line: 200, type: !6)
!2534 = !DILocalVariable(name: "version", arg: 4, scope: !2516, file: !353, line: 201, type: !6)
!2535 = !DILocalVariable(name: "authors", arg: 5, scope: !2516, file: !353, line: 201, type: !2519)
!2536 = !DILocalVariable(name: "n_authors", scope: !2516, file: !353, line: 203, type: !32)
!2537 = !DILocalVariable(name: "authtab", scope: !2516, file: !353, line: 204, type: !2538)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !261)
!2539 = !DILocation(line: 0, scope: !2516)
!2540 = !DILocation(line: 201, column: 46, scope: !2516)
!2541 = !DILocation(line: 204, column: 3, scope: !2516)
!2542 = !DILocation(line: 204, column: 15, scope: !2516)
!2543 = !DILocation(line: 208, column: 35, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !353, line: 206, column: 3)
!2545 = distinct !DILexicalBlock(scope: !2516, file: !353, line: 206, column: 3)
!2546 = !DILocation(line: 208, column: 14, scope: !2544)
!2547 = !DILocation(line: 208, column: 33, scope: !2544)
!2548 = !DILocation(line: 208, column: 67, scope: !2544)
!2549 = !DILocation(line: 206, column: 3, scope: !2545)
!2550 = !DILocation(line: 0, scope: !2545)
!2551 = !DILocation(line: 211, column: 3, scope: !2516)
!2552 = !DILocation(line: 213, column: 1, scope: !2516)
!2553 = distinct !DISubprogram(name: "version_etc", scope: !353, file: !353, line: 230, type: !2554, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !2419, !6, !6, !6, null}
!2556 = !{!2557, !2558, !2559, !2560, !2561}
!2557 = !DILocalVariable(name: "stream", arg: 1, scope: !2553, file: !353, line: 230, type: !2419)
!2558 = !DILocalVariable(name: "command_name", arg: 2, scope: !2553, file: !353, line: 231, type: !6)
!2559 = !DILocalVariable(name: "package", arg: 3, scope: !2553, file: !353, line: 231, type: !6)
!2560 = !DILocalVariable(name: "version", arg: 4, scope: !2553, file: !353, line: 232, type: !6)
!2561 = !DILocalVariable(name: "authors", scope: !2553, file: !353, line: 234, type: !2519)
!2562 = !DILocation(line: 0, scope: !2553)
!2563 = !DILocation(line: 234, column: 3, scope: !2553)
!2564 = !DILocation(line: 234, column: 11, scope: !2553)
!2565 = !DILocation(line: 235, column: 3, scope: !2553)
!2566 = !DILocation(line: 236, column: 3, scope: !2553)
!2567 = !DILocation(line: 237, column: 3, scope: !2553)
!2568 = !DILocation(line: 238, column: 1, scope: !2553)
!2569 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !353, file: !353, line: 241, type: !170, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !513)
!2570 = !DILocation(line: 243, column: 3, scope: !2569)
!2571 = !DILocation(line: 248, column: 3, scope: !2569)
!2572 = !DILocation(line: 254, column: 3, scope: !2569)
!2573 = !DILocation(line: 259, column: 3, scope: !2569)
!2574 = !DILocation(line: 261, column: 1, scope: !2569)
!2575 = distinct !DISubprogram(name: "xnrealloc", scope: !2576, file: !2576, line: 147, type: !2577, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2579)
!2576 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!29, !29, !32, !32}
!2579 = !{!2580, !2581, !2582}
!2580 = !DILocalVariable(name: "p", arg: 1, scope: !2575, file: !2576, line: 147, type: !29)
!2581 = !DILocalVariable(name: "n", arg: 2, scope: !2575, file: !2576, line: 147, type: !32)
!2582 = !DILocalVariable(name: "s", arg: 3, scope: !2575, file: !2576, line: 147, type: !32)
!2583 = !DILocation(line: 0, scope: !2575)
!2584 = !DILocalVariable(name: "p", arg: 1, scope: !2585, file: !360, line: 83, type: !29)
!2585 = distinct !DISubprogram(name: "xreallocarray", scope: !360, file: !360, line: 83, type: !2577, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2586)
!2586 = !{!2584, !2587, !2588}
!2587 = !DILocalVariable(name: "n", arg: 2, scope: !2585, file: !360, line: 83, type: !32)
!2588 = !DILocalVariable(name: "s", arg: 3, scope: !2585, file: !360, line: 83, type: !32)
!2589 = !DILocation(line: 0, scope: !2585, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 149, column: 10, scope: !2575)
!2591 = !DILocation(line: 85, column: 25, scope: !2585, inlinedAt: !2590)
!2592 = !DILocalVariable(name: "p", arg: 1, scope: !2593, file: !360, line: 37, type: !29)
!2593 = distinct !DISubprogram(name: "check_nonnull", scope: !360, file: !360, line: 37, type: !2594, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!29, !29}
!2596 = !{!2592}
!2597 = !DILocation(line: 0, scope: !2593, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 85, column: 10, scope: !2585, inlinedAt: !2590)
!2599 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2598)
!2600 = distinct !DILexicalBlock(scope: !2593, file: !360, line: 39, column: 7)
!2601 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2598)
!2602 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2598)
!2603 = !DILocation(line: 149, column: 3, scope: !2575)
!2604 = !DILocation(line: 0, scope: !2585)
!2605 = !DILocation(line: 85, column: 25, scope: !2585)
!2606 = !DILocation(line: 0, scope: !2593, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 85, column: 10, scope: !2585)
!2608 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2607)
!2609 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2607)
!2610 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2607)
!2611 = !DILocation(line: 85, column: 3, scope: !2585)
!2612 = distinct !DISubprogram(name: "xmalloc", scope: !360, file: !360, line: 47, type: !2613, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!29, !32}
!2615 = !{!2616}
!2616 = !DILocalVariable(name: "s", arg: 1, scope: !2612, file: !360, line: 47, type: !32)
!2617 = !DILocation(line: 0, scope: !2612)
!2618 = !DILocation(line: 49, column: 25, scope: !2612)
!2619 = !DILocation(line: 0, scope: !2593, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 49, column: 10, scope: !2612)
!2621 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2620)
!2622 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2620)
!2623 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2620)
!2624 = !DILocation(line: 49, column: 3, scope: !2612)
!2625 = distinct !DISubprogram(name: "ximalloc", scope: !360, file: !360, line: 53, type: !2626, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!29, !379}
!2628 = !{!2629}
!2629 = !DILocalVariable(name: "s", arg: 1, scope: !2625, file: !360, line: 53, type: !379)
!2630 = !DILocation(line: 0, scope: !2625)
!2631 = !DILocalVariable(name: "s", arg: 1, scope: !2632, file: !2633, line: 55, type: !379)
!2632 = distinct !DISubprogram(name: "imalloc", scope: !2633, file: !2633, line: 55, type: !2626, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2634)
!2633 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2634 = !{!2631}
!2635 = !DILocation(line: 0, scope: !2632, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 55, column: 25, scope: !2625)
!2637 = !DILocation(line: 57, column: 26, scope: !2632, inlinedAt: !2636)
!2638 = !DILocation(line: 0, scope: !2593, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 55, column: 10, scope: !2625)
!2640 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2639)
!2641 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2639)
!2642 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2639)
!2643 = !DILocation(line: 55, column: 3, scope: !2625)
!2644 = distinct !DISubprogram(name: "xcharalloc", scope: !360, file: !360, line: 59, type: !2645, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!65, !32}
!2647 = !{!2648}
!2648 = !DILocalVariable(name: "n", arg: 1, scope: !2644, file: !360, line: 59, type: !32)
!2649 = !DILocation(line: 0, scope: !2644)
!2650 = !DILocation(line: 0, scope: !2612, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 61, column: 10, scope: !2644)
!2652 = !DILocation(line: 49, column: 25, scope: !2612, inlinedAt: !2651)
!2653 = !DILocation(line: 0, scope: !2593, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 49, column: 10, scope: !2612, inlinedAt: !2651)
!2655 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2654)
!2656 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2654)
!2657 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2654)
!2658 = !DILocation(line: 61, column: 3, scope: !2644)
!2659 = distinct !DISubprogram(name: "xrealloc", scope: !360, file: !360, line: 68, type: !2660, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!29, !29, !32}
!2662 = !{!2663, !2664}
!2663 = !DILocalVariable(name: "p", arg: 1, scope: !2659, file: !360, line: 68, type: !29)
!2664 = !DILocalVariable(name: "s", arg: 2, scope: !2659, file: !360, line: 68, type: !32)
!2665 = !DILocation(line: 0, scope: !2659)
!2666 = !DILocalVariable(name: "ptr", arg: 1, scope: !2667, file: !2668, line: 2057, type: !29)
!2667 = distinct !DISubprogram(name: "rpl_realloc", scope: !2668, file: !2668, line: 2057, type: !2660, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2669)
!2668 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2669 = !{!2666, !2670}
!2670 = !DILocalVariable(name: "size", arg: 2, scope: !2667, file: !2668, line: 2057, type: !32)
!2671 = !DILocation(line: 0, scope: !2667, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 70, column: 25, scope: !2659)
!2673 = !DILocation(line: 2059, column: 24, scope: !2667, inlinedAt: !2672)
!2674 = !DILocation(line: 2059, column: 10, scope: !2667, inlinedAt: !2672)
!2675 = !DILocation(line: 0, scope: !2593, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 70, column: 10, scope: !2659)
!2677 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2676)
!2678 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2676)
!2679 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2676)
!2680 = !DILocation(line: 70, column: 3, scope: !2659)
!2681 = distinct !DISubprogram(name: "xirealloc", scope: !360, file: !360, line: 74, type: !2682, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!29, !29, !379}
!2684 = !{!2685, !2686}
!2685 = !DILocalVariable(name: "p", arg: 1, scope: !2681, file: !360, line: 74, type: !29)
!2686 = !DILocalVariable(name: "s", arg: 2, scope: !2681, file: !360, line: 74, type: !379)
!2687 = !DILocation(line: 0, scope: !2681)
!2688 = !DILocalVariable(name: "p", arg: 1, scope: !2689, file: !2633, line: 66, type: !29)
!2689 = distinct !DISubprogram(name: "irealloc", scope: !2633, file: !2633, line: 66, type: !2682, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2690)
!2690 = !{!2688, !2691}
!2691 = !DILocalVariable(name: "s", arg: 2, scope: !2689, file: !2633, line: 66, type: !379)
!2692 = !DILocation(line: 0, scope: !2689, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 76, column: 25, scope: !2681)
!2694 = !DILocation(line: 0, scope: !2667, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 68, column: 26, scope: !2689, inlinedAt: !2693)
!2696 = !DILocation(line: 2059, column: 24, scope: !2667, inlinedAt: !2695)
!2697 = !DILocation(line: 2059, column: 10, scope: !2667, inlinedAt: !2695)
!2698 = !DILocation(line: 0, scope: !2593, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 76, column: 10, scope: !2681)
!2700 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2699)
!2701 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2699)
!2702 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2699)
!2703 = !DILocation(line: 76, column: 3, scope: !2681)
!2704 = distinct !DISubprogram(name: "xireallocarray", scope: !360, file: !360, line: 89, type: !2705, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!29, !29, !379, !379}
!2707 = !{!2708, !2709, !2710}
!2708 = !DILocalVariable(name: "p", arg: 1, scope: !2704, file: !360, line: 89, type: !29)
!2709 = !DILocalVariable(name: "n", arg: 2, scope: !2704, file: !360, line: 89, type: !379)
!2710 = !DILocalVariable(name: "s", arg: 3, scope: !2704, file: !360, line: 89, type: !379)
!2711 = !DILocation(line: 0, scope: !2704)
!2712 = !DILocalVariable(name: "p", arg: 1, scope: !2713, file: !2633, line: 98, type: !29)
!2713 = distinct !DISubprogram(name: "ireallocarray", scope: !2633, file: !2633, line: 98, type: !2705, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2714)
!2714 = !{!2712, !2715, !2716}
!2715 = !DILocalVariable(name: "n", arg: 2, scope: !2713, file: !2633, line: 98, type: !379)
!2716 = !DILocalVariable(name: "s", arg: 3, scope: !2713, file: !2633, line: 98, type: !379)
!2717 = !DILocation(line: 0, scope: !2713, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 91, column: 25, scope: !2704)
!2719 = !DILocation(line: 101, column: 13, scope: !2713, inlinedAt: !2718)
!2720 = !DILocation(line: 0, scope: !2593, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 91, column: 10, scope: !2704)
!2722 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2721)
!2723 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2721)
!2724 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2721)
!2725 = !DILocation(line: 91, column: 3, scope: !2704)
!2726 = distinct !DISubprogram(name: "xnmalloc", scope: !360, file: !360, line: 98, type: !2727, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!29, !32, !32}
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "n", arg: 1, scope: !2726, file: !360, line: 98, type: !32)
!2731 = !DILocalVariable(name: "s", arg: 2, scope: !2726, file: !360, line: 98, type: !32)
!2732 = !DILocation(line: 0, scope: !2726)
!2733 = !DILocation(line: 0, scope: !2585, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 100, column: 10, scope: !2726)
!2735 = !DILocation(line: 85, column: 25, scope: !2585, inlinedAt: !2734)
!2736 = !DILocation(line: 0, scope: !2593, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 85, column: 10, scope: !2585, inlinedAt: !2734)
!2738 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2737)
!2739 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2737)
!2740 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2737)
!2741 = !DILocation(line: 100, column: 3, scope: !2726)
!2742 = distinct !DISubprogram(name: "xinmalloc", scope: !360, file: !360, line: 104, type: !2743, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!29, !379, !379}
!2745 = !{!2746, !2747}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !360, line: 104, type: !379)
!2747 = !DILocalVariable(name: "s", arg: 2, scope: !2742, file: !360, line: 104, type: !379)
!2748 = !DILocation(line: 0, scope: !2742)
!2749 = !DILocation(line: 0, scope: !2704, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 106, column: 10, scope: !2742)
!2751 = !DILocation(line: 0, scope: !2713, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 91, column: 25, scope: !2704, inlinedAt: !2750)
!2753 = !DILocation(line: 101, column: 13, scope: !2713, inlinedAt: !2752)
!2754 = !DILocation(line: 0, scope: !2593, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 91, column: 10, scope: !2704, inlinedAt: !2750)
!2756 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2755)
!2757 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2755)
!2758 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2755)
!2759 = !DILocation(line: 106, column: 3, scope: !2742)
!2760 = distinct !DISubprogram(name: "x2realloc", scope: !360, file: !360, line: 116, type: !2761, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!29, !29, !366}
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "p", arg: 1, scope: !2760, file: !360, line: 116, type: !29)
!2765 = !DILocalVariable(name: "ps", arg: 2, scope: !2760, file: !360, line: 116, type: !366)
!2766 = !DILocation(line: 0, scope: !2760)
!2767 = !DILocation(line: 0, scope: !363, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 118, column: 10, scope: !2760)
!2769 = !DILocation(line: 178, column: 14, scope: !363, inlinedAt: !2768)
!2770 = !DILocation(line: 180, column: 9, scope: !2771, inlinedAt: !2768)
!2771 = distinct !DILexicalBlock(scope: !363, file: !360, line: 180, column: 7)
!2772 = !DILocation(line: 180, column: 7, scope: !363, inlinedAt: !2768)
!2773 = !DILocation(line: 182, column: 13, scope: !2774, inlinedAt: !2768)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !360, line: 182, column: 11)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !360, line: 181, column: 5)
!2776 = !DILocation(line: 182, column: 11, scope: !2775, inlinedAt: !2768)
!2777 = !DILocation(line: 197, column: 11, scope: !2778, inlinedAt: !2768)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !360, line: 197, column: 11)
!2779 = distinct !DILexicalBlock(scope: !2771, file: !360, line: 195, column: 5)
!2780 = !DILocation(line: 197, column: 11, scope: !2779, inlinedAt: !2768)
!2781 = !DILocation(line: 198, column: 9, scope: !2778, inlinedAt: !2768)
!2782 = !DILocation(line: 0, scope: !2585, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 201, column: 7, scope: !363, inlinedAt: !2768)
!2784 = !DILocation(line: 85, column: 25, scope: !2585, inlinedAt: !2783)
!2785 = !DILocation(line: 0, scope: !2593, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 85, column: 10, scope: !2585, inlinedAt: !2783)
!2787 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2786)
!2788 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2786)
!2789 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2786)
!2790 = !DILocation(line: 202, column: 7, scope: !363, inlinedAt: !2768)
!2791 = !DILocation(line: 118, column: 3, scope: !2760)
!2792 = !DILocation(line: 0, scope: !363)
!2793 = !DILocation(line: 178, column: 14, scope: !363)
!2794 = !DILocation(line: 180, column: 9, scope: !2771)
!2795 = !DILocation(line: 180, column: 7, scope: !363)
!2796 = !DILocation(line: 182, column: 13, scope: !2774)
!2797 = !DILocation(line: 182, column: 11, scope: !2775)
!2798 = !DILocation(line: 190, column: 30, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2774, file: !360, line: 183, column: 9)
!2800 = !DILocation(line: 191, column: 16, scope: !2799)
!2801 = !DILocation(line: 191, column: 13, scope: !2799)
!2802 = !DILocation(line: 192, column: 9, scope: !2799)
!2803 = !DILocation(line: 197, column: 11, scope: !2778)
!2804 = !DILocation(line: 197, column: 11, scope: !2779)
!2805 = !DILocation(line: 198, column: 9, scope: !2778)
!2806 = !DILocation(line: 0, scope: !2585, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 201, column: 7, scope: !363)
!2808 = !DILocation(line: 85, column: 25, scope: !2585, inlinedAt: !2807)
!2809 = !DILocation(line: 0, scope: !2593, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 85, column: 10, scope: !2585, inlinedAt: !2807)
!2811 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2810)
!2812 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2810)
!2813 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2810)
!2814 = !DILocation(line: 202, column: 7, scope: !363)
!2815 = !DILocation(line: 203, column: 3, scope: !363)
!2816 = !DILocation(line: 0, scope: !375)
!2817 = !DILocation(line: 230, column: 14, scope: !375)
!2818 = !DILocation(line: 238, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !375, file: !360, line: 238, column: 7)
!2820 = !DILocation(line: 238, column: 7, scope: !375)
!2821 = !DILocation(line: 240, column: 9, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !375, file: !360, line: 240, column: 7)
!2823 = !DILocation(line: 240, column: 18, scope: !2822)
!2824 = !DILocation(line: 253, column: 8, scope: !375)
!2825 = !DILocation(line: 258, column: 27, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !360, line: 257, column: 5)
!2827 = distinct !DILexicalBlock(scope: !375, file: !360, line: 256, column: 7)
!2828 = !DILocation(line: 259, column: 32, scope: !2826)
!2829 = !DILocation(line: 260, column: 5, scope: !2826)
!2830 = !DILocation(line: 262, column: 9, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !375, file: !360, line: 262, column: 7)
!2832 = !DILocation(line: 262, column: 7, scope: !375)
!2833 = !DILocation(line: 263, column: 9, scope: !2831)
!2834 = !DILocation(line: 263, column: 5, scope: !2831)
!2835 = !DILocation(line: 264, column: 9, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !375, file: !360, line: 264, column: 7)
!2837 = !DILocation(line: 264, column: 14, scope: !2836)
!2838 = !DILocation(line: 265, column: 7, scope: !2836)
!2839 = !DILocation(line: 265, column: 11, scope: !2836)
!2840 = !DILocation(line: 266, column: 11, scope: !2836)
!2841 = !DILocation(line: 266, column: 26, scope: !2836)
!2842 = !DILocation(line: 267, column: 14, scope: !2836)
!2843 = !DILocation(line: 264, column: 7, scope: !375)
!2844 = !DILocation(line: 268, column: 5, scope: !2836)
!2845 = !DILocation(line: 0, scope: !2659, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 269, column: 8, scope: !375)
!2847 = !DILocation(line: 0, scope: !2667, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 70, column: 25, scope: !2659, inlinedAt: !2846)
!2849 = !DILocation(line: 2059, column: 24, scope: !2667, inlinedAt: !2848)
!2850 = !DILocation(line: 2059, column: 10, scope: !2667, inlinedAt: !2848)
!2851 = !DILocation(line: 0, scope: !2593, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 70, column: 10, scope: !2659, inlinedAt: !2846)
!2853 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2852)
!2854 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2852)
!2855 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2852)
!2856 = !DILocation(line: 270, column: 7, scope: !375)
!2857 = !DILocation(line: 271, column: 3, scope: !375)
!2858 = distinct !DISubprogram(name: "xzalloc", scope: !360, file: !360, line: 279, type: !2613, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2859)
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "s", arg: 1, scope: !2858, file: !360, line: 279, type: !32)
!2861 = !DILocation(line: 0, scope: !2858)
!2862 = !DILocalVariable(name: "n", arg: 1, scope: !2863, file: !360, line: 294, type: !32)
!2863 = distinct !DISubprogram(name: "xcalloc", scope: !360, file: !360, line: 294, type: !2727, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2864)
!2864 = !{!2862, !2865}
!2865 = !DILocalVariable(name: "s", arg: 2, scope: !2863, file: !360, line: 294, type: !32)
!2866 = !DILocation(line: 0, scope: !2863, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 281, column: 10, scope: !2858)
!2868 = !DILocation(line: 296, column: 25, scope: !2863, inlinedAt: !2867)
!2869 = !DILocation(line: 0, scope: !2593, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 296, column: 10, scope: !2863, inlinedAt: !2867)
!2871 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2870)
!2872 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2870)
!2873 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2870)
!2874 = !DILocation(line: 281, column: 3, scope: !2858)
!2875 = !DILocation(line: 0, scope: !2863)
!2876 = !DILocation(line: 296, column: 25, scope: !2863)
!2877 = !DILocation(line: 0, scope: !2593, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 296, column: 10, scope: !2863)
!2879 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2878)
!2880 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2878)
!2881 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2878)
!2882 = !DILocation(line: 296, column: 3, scope: !2863)
!2883 = distinct !DISubprogram(name: "xizalloc", scope: !360, file: !360, line: 285, type: !2626, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2884)
!2884 = !{!2885}
!2885 = !DILocalVariable(name: "s", arg: 1, scope: !2883, file: !360, line: 285, type: !379)
!2886 = !DILocation(line: 0, scope: !2883)
!2887 = !DILocalVariable(name: "n", arg: 1, scope: !2888, file: !360, line: 300, type: !379)
!2888 = distinct !DISubprogram(name: "xicalloc", scope: !360, file: !360, line: 300, type: !2743, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2889)
!2889 = !{!2887, !2890}
!2890 = !DILocalVariable(name: "s", arg: 2, scope: !2888, file: !360, line: 300, type: !379)
!2891 = !DILocation(line: 0, scope: !2888, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 287, column: 10, scope: !2883)
!2893 = !DILocalVariable(name: "n", arg: 1, scope: !2894, file: !2633, line: 77, type: !379)
!2894 = distinct !DISubprogram(name: "icalloc", scope: !2633, file: !2633, line: 77, type: !2743, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2895)
!2895 = !{!2893, !2896}
!2896 = !DILocalVariable(name: "s", arg: 2, scope: !2894, file: !2633, line: 77, type: !379)
!2897 = !DILocation(line: 0, scope: !2894, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 302, column: 25, scope: !2888, inlinedAt: !2892)
!2899 = !DILocation(line: 91, column: 10, scope: !2894, inlinedAt: !2898)
!2900 = !DILocation(line: 0, scope: !2593, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 302, column: 10, scope: !2888, inlinedAt: !2892)
!2902 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2901)
!2903 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2901)
!2904 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2901)
!2905 = !DILocation(line: 287, column: 3, scope: !2883)
!2906 = !DILocation(line: 0, scope: !2888)
!2907 = !DILocation(line: 0, scope: !2894, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 302, column: 25, scope: !2888)
!2909 = !DILocation(line: 91, column: 10, scope: !2894, inlinedAt: !2908)
!2910 = !DILocation(line: 0, scope: !2593, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 302, column: 10, scope: !2888)
!2912 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2911)
!2913 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2911)
!2914 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2911)
!2915 = !DILocation(line: 302, column: 3, scope: !2888)
!2916 = distinct !DISubprogram(name: "xmemdup", scope: !360, file: !360, line: 310, type: !2917, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!29, !639, !32}
!2919 = !{!2920, !2921}
!2920 = !DILocalVariable(name: "p", arg: 1, scope: !2916, file: !360, line: 310, type: !639)
!2921 = !DILocalVariable(name: "s", arg: 2, scope: !2916, file: !360, line: 310, type: !32)
!2922 = !DILocation(line: 0, scope: !2916)
!2923 = !DILocation(line: 0, scope: !2612, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 312, column: 18, scope: !2916)
!2925 = !DILocation(line: 49, column: 25, scope: !2612, inlinedAt: !2924)
!2926 = !DILocation(line: 0, scope: !2593, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 49, column: 10, scope: !2612, inlinedAt: !2924)
!2928 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2927)
!2929 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2927)
!2930 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2927)
!2931 = !DILocalVariable(name: "__dest", arg: 1, scope: !2932, file: !1103, line: 26, type: !2935)
!2932 = distinct !DISubprogram(name: "memcpy", scope: !1103, file: !1103, line: 26, type: !2933, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2936)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!29, !2935, !638, !32}
!2935 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!2936 = !{!2931, !2937, !2938}
!2937 = !DILocalVariable(name: "__src", arg: 2, scope: !2932, file: !1103, line: 26, type: !638)
!2938 = !DILocalVariable(name: "__len", arg: 3, scope: !2932, file: !1103, line: 26, type: !32)
!2939 = !DILocation(line: 0, scope: !2932, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 312, column: 10, scope: !2916)
!2941 = !DILocation(line: 29, column: 10, scope: !2932, inlinedAt: !2940)
!2942 = !DILocation(line: 312, column: 3, scope: !2916)
!2943 = distinct !DISubprogram(name: "ximemdup", scope: !360, file: !360, line: 316, type: !2944, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2946)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!29, !639, !379}
!2946 = !{!2947, !2948}
!2947 = !DILocalVariable(name: "p", arg: 1, scope: !2943, file: !360, line: 316, type: !639)
!2948 = !DILocalVariable(name: "s", arg: 2, scope: !2943, file: !360, line: 316, type: !379)
!2949 = !DILocation(line: 0, scope: !2943)
!2950 = !DILocation(line: 0, scope: !2625, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 318, column: 18, scope: !2943)
!2952 = !DILocation(line: 0, scope: !2632, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 55, column: 25, scope: !2625, inlinedAt: !2951)
!2954 = !DILocation(line: 57, column: 26, scope: !2632, inlinedAt: !2953)
!2955 = !DILocation(line: 0, scope: !2593, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 55, column: 10, scope: !2625, inlinedAt: !2951)
!2957 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2956)
!2958 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2956)
!2959 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2956)
!2960 = !DILocation(line: 0, scope: !2932, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 318, column: 10, scope: !2943)
!2962 = !DILocation(line: 29, column: 10, scope: !2932, inlinedAt: !2961)
!2963 = !DILocation(line: 318, column: 3, scope: !2943)
!2964 = distinct !DISubprogram(name: "ximemdup0", scope: !360, file: !360, line: 325, type: !2965, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!65, !639, !379}
!2967 = !{!2968, !2969, !2970}
!2968 = !DILocalVariable(name: "p", arg: 1, scope: !2964, file: !360, line: 325, type: !639)
!2969 = !DILocalVariable(name: "s", arg: 2, scope: !2964, file: !360, line: 325, type: !379)
!2970 = !DILocalVariable(name: "result", scope: !2964, file: !360, line: 327, type: !65)
!2971 = !DILocation(line: 0, scope: !2964)
!2972 = !DILocation(line: 327, column: 30, scope: !2964)
!2973 = !DILocation(line: 0, scope: !2625, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 327, column: 18, scope: !2964)
!2975 = !DILocation(line: 0, scope: !2632, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 55, column: 25, scope: !2625, inlinedAt: !2974)
!2977 = !DILocation(line: 57, column: 26, scope: !2632, inlinedAt: !2976)
!2978 = !DILocation(line: 0, scope: !2593, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 55, column: 10, scope: !2625, inlinedAt: !2974)
!2980 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !2979)
!2981 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !2979)
!2982 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !2979)
!2983 = !DILocation(line: 328, column: 3, scope: !2964)
!2984 = !DILocation(line: 328, column: 13, scope: !2964)
!2985 = !DILocation(line: 0, scope: !2932, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 329, column: 10, scope: !2964)
!2987 = !DILocation(line: 29, column: 10, scope: !2932, inlinedAt: !2986)
!2988 = !DILocation(line: 329, column: 3, scope: !2964)
!2989 = distinct !DISubprogram(name: "xstrdup", scope: !360, file: !360, line: 335, type: !633, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2990)
!2990 = !{!2991}
!2991 = !DILocalVariable(name: "string", arg: 1, scope: !2989, file: !360, line: 335, type: !6)
!2992 = !DILocation(line: 0, scope: !2989)
!2993 = !DILocation(line: 337, column: 27, scope: !2989)
!2994 = !DILocation(line: 337, column: 43, scope: !2989)
!2995 = !DILocation(line: 0, scope: !2916, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 337, column: 10, scope: !2989)
!2997 = !DILocation(line: 0, scope: !2612, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 312, column: 18, scope: !2916, inlinedAt: !2996)
!2999 = !DILocation(line: 49, column: 25, scope: !2612, inlinedAt: !2998)
!3000 = !DILocation(line: 0, scope: !2593, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 49, column: 10, scope: !2612, inlinedAt: !2998)
!3002 = !DILocation(line: 39, column: 8, scope: !2600, inlinedAt: !3001)
!3003 = !DILocation(line: 39, column: 7, scope: !2593, inlinedAt: !3001)
!3004 = !DILocation(line: 40, column: 5, scope: !2600, inlinedAt: !3001)
!3005 = !DILocation(line: 0, scope: !2932, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 312, column: 10, scope: !2916, inlinedAt: !2996)
!3007 = !DILocation(line: 29, column: 10, scope: !2932, inlinedAt: !3006)
!3008 = !DILocation(line: 337, column: 3, scope: !2989)
!3009 = distinct !DISubprogram(name: "xalloc_die", scope: !394, file: !394, line: 32, type: !170, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3010)
!3010 = !{!3011}
!3011 = !DILocalVariable(name: "__errstatus", scope: !3012, file: !394, line: 34, type: !3013)
!3012 = distinct !DILexicalBlock(scope: !3009, file: !394, line: 34, column: 3)
!3013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!3014 = !DILocation(line: 34, column: 3, scope: !3012)
!3015 = !DILocation(line: 0, scope: !3012)
!3016 = !DILocation(line: 40, column: 3, scope: !3009)
!3017 = distinct !DISubprogram(name: "close_stream", scope: !396, file: !396, line: 55, type: !3018, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3054)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!30, !3020}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3022)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3023)
!3023 = !{!3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3022, file: !61, line: 51, baseType: !30, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3022, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3022, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3022, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3022, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3022, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3022, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3022, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3022, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3022, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3022, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3022, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3022, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3022, file: !61, line: 70, baseType: !3038, size: 64, offset: 832)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3022, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3022, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3022, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3022, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3022, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3022, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3022, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3022, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3022, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3022, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3022, file: !61, line: 93, baseType: !3038, size: 64, offset: 1344)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3022, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3022, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3022, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3022, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3054 = !{!3055, !3056, !3058, !3059}
!3055 = !DILocalVariable(name: "stream", arg: 1, scope: !3017, file: !396, line: 55, type: !3020)
!3056 = !DILocalVariable(name: "some_pending", scope: !3017, file: !396, line: 57, type: !3057)
!3057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3058 = !DILocalVariable(name: "prev_fail", scope: !3017, file: !396, line: 58, type: !3057)
!3059 = !DILocalVariable(name: "fclose_fail", scope: !3017, file: !396, line: 59, type: !3057)
!3060 = !DILocation(line: 0, scope: !3017)
!3061 = !DILocation(line: 57, column: 30, scope: !3017)
!3062 = !DILocalVariable(name: "__stream", arg: 1, scope: !3063, file: !860, line: 135, type: !3020)
!3063 = distinct !DISubprogram(name: "ferror_unlocked", scope: !860, file: !860, line: 135, type: !3018, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3064)
!3064 = !{!3062}
!3065 = !DILocation(line: 0, scope: !3063, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 58, column: 27, scope: !3017)
!3067 = !DILocation(line: 137, column: 10, scope: !3063, inlinedAt: !3066)
!3068 = !{!869, !522, i64 0}
!3069 = !DILocation(line: 58, column: 43, scope: !3017)
!3070 = !DILocation(line: 59, column: 29, scope: !3017)
!3071 = !DILocation(line: 59, column: 45, scope: !3017)
!3072 = !DILocation(line: 69, column: 17, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3017, file: !396, line: 69, column: 7)
!3074 = !DILocation(line: 57, column: 50, scope: !3017)
!3075 = !DILocation(line: 69, column: 33, scope: !3073)
!3076 = !DILocation(line: 69, column: 53, scope: !3073)
!3077 = !DILocation(line: 69, column: 59, scope: !3073)
!3078 = !DILocation(line: 69, column: 7, scope: !3017)
!3079 = !DILocation(line: 71, column: 11, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3073, file: !396, line: 70, column: 5)
!3081 = !DILocation(line: 72, column: 9, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3080, file: !396, line: 71, column: 11)
!3083 = !DILocation(line: 72, column: 15, scope: !3082)
!3084 = !DILocation(line: 77, column: 1, scope: !3017)
!3085 = distinct !DISubprogram(name: "rpl_fclose", scope: !398, file: !398, line: 58, type: !3086, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3122)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!30, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3090)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3090, file: !61, line: 51, baseType: !30, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3090, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3090, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3090, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3090, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3090, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3090, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3090, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3090, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3090, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3090, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3090, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3090, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3090, file: !61, line: 70, baseType: !3106, size: 64, offset: 832)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3090, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3090, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3090, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3090, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3090, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3090, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3090, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3090, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3090, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3090, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3090, file: !61, line: 93, baseType: !3106, size: 64, offset: 1344)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3090, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3090, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3090, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3090, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3122 = !{!3123, !3124, !3125, !3126}
!3123 = !DILocalVariable(name: "fp", arg: 1, scope: !3085, file: !398, line: 58, type: !3088)
!3124 = !DILocalVariable(name: "saved_errno", scope: !3085, file: !398, line: 60, type: !30)
!3125 = !DILocalVariable(name: "fd", scope: !3085, file: !398, line: 63, type: !30)
!3126 = !DILocalVariable(name: "result", scope: !3085, file: !398, line: 74, type: !30)
!3127 = !DILocation(line: 0, scope: !3085)
!3128 = !DILocation(line: 63, column: 12, scope: !3085)
!3129 = !DILocation(line: 64, column: 10, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3085, file: !398, line: 64, column: 7)
!3131 = !DILocation(line: 64, column: 7, scope: !3085)
!3132 = !DILocation(line: 65, column: 12, scope: !3130)
!3133 = !DILocation(line: 65, column: 5, scope: !3130)
!3134 = !DILocation(line: 70, column: 9, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3085, file: !398, line: 70, column: 7)
!3136 = !DILocation(line: 70, column: 23, scope: !3135)
!3137 = !DILocation(line: 70, column: 33, scope: !3135)
!3138 = !DILocation(line: 70, column: 26, scope: !3135)
!3139 = !DILocation(line: 70, column: 59, scope: !3135)
!3140 = !DILocation(line: 71, column: 7, scope: !3135)
!3141 = !DILocation(line: 71, column: 10, scope: !3135)
!3142 = !DILocation(line: 70, column: 7, scope: !3085)
!3143 = !DILocation(line: 100, column: 12, scope: !3085)
!3144 = !DILocation(line: 105, column: 7, scope: !3085)
!3145 = !DILocation(line: 72, column: 19, scope: !3135)
!3146 = !DILocation(line: 105, column: 19, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3085, file: !398, line: 105, column: 7)
!3148 = !DILocation(line: 107, column: 13, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3147, file: !398, line: 106, column: 5)
!3150 = !DILocation(line: 109, column: 5, scope: !3149)
!3151 = !DILocation(line: 112, column: 1, scope: !3085)
!3152 = !DISubprogram(name: "fileno", scope: !143, file: !143, line: 809, type: !3086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3153 = !DISubprogram(name: "fclose", scope: !143, file: !143, line: 178, type: !3086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3154 = !DISubprogram(name: "lseek", scope: !681, file: !681, line: 339, type: !3155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!84, !30, !84, !30}
!3157 = distinct !DISubprogram(name: "rpl_fflush", scope: !400, file: !400, line: 130, type: !3158, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3194)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!30, !3160}
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3162)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3162, file: !61, line: 51, baseType: !30, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3162, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3162, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3162, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3162, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3162, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3162, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3162, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3162, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3162, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3162, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3162, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3162, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3162, file: !61, line: 70, baseType: !3178, size: 64, offset: 832)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3162, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3162, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3162, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3162, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3162, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3162, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3162, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3162, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3162, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3162, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3162, file: !61, line: 93, baseType: !3178, size: 64, offset: 1344)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3162, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3162, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3162, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3162, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3194 = !{!3195}
!3195 = !DILocalVariable(name: "stream", arg: 1, scope: !3157, file: !400, line: 130, type: !3160)
!3196 = !DILocation(line: 0, scope: !3157)
!3197 = !DILocation(line: 151, column: 14, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3157, file: !400, line: 151, column: 7)
!3199 = !DILocation(line: 151, column: 22, scope: !3198)
!3200 = !DILocation(line: 151, column: 27, scope: !3198)
!3201 = !DILocation(line: 151, column: 7, scope: !3157)
!3202 = !DILocation(line: 152, column: 12, scope: !3198)
!3203 = !DILocation(line: 152, column: 5, scope: !3198)
!3204 = !DILocalVariable(name: "fp", arg: 1, scope: !3205, file: !400, line: 42, type: !3160)
!3205 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !400, file: !400, line: 42, type: !3206, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{null, !3160}
!3208 = !{!3204}
!3209 = !DILocation(line: 0, scope: !3205, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 157, column: 3, scope: !3157)
!3211 = !DILocation(line: 44, column: 12, scope: !3212, inlinedAt: !3210)
!3212 = distinct !DILexicalBlock(scope: !3205, file: !400, line: 44, column: 7)
!3213 = !DILocation(line: 44, column: 19, scope: !3212, inlinedAt: !3210)
!3214 = !DILocation(line: 44, column: 7, scope: !3205, inlinedAt: !3210)
!3215 = !DILocation(line: 46, column: 5, scope: !3212, inlinedAt: !3210)
!3216 = !DILocation(line: 159, column: 10, scope: !3157)
!3217 = !DILocation(line: 159, column: 3, scope: !3157)
!3218 = !DILocation(line: 236, column: 1, scope: !3157)
!3219 = !DISubprogram(name: "fflush", scope: !143, file: !143, line: 230, type: !3158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3220 = distinct !DISubprogram(name: "rpl_fseeko", scope: !402, file: !402, line: 28, type: !3221, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3258)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!30, !3223, !3257, !30}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !59, line: 7, baseType: !3225)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3225, file: !61, line: 51, baseType: !30, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3225, file: !61, line: 54, baseType: !65, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3225, file: !61, line: 55, baseType: !65, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3225, file: !61, line: 56, baseType: !65, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3225, file: !61, line: 57, baseType: !65, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3225, file: !61, line: 58, baseType: !65, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3225, file: !61, line: 59, baseType: !65, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3225, file: !61, line: 60, baseType: !65, size: 64, offset: 448)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3225, file: !61, line: 61, baseType: !65, size: 64, offset: 512)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3225, file: !61, line: 64, baseType: !65, size: 64, offset: 576)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3225, file: !61, line: 65, baseType: !65, size: 64, offset: 640)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3225, file: !61, line: 66, baseType: !65, size: 64, offset: 704)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3225, file: !61, line: 68, baseType: !77, size: 64, offset: 768)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3225, file: !61, line: 70, baseType: !3241, size: 64, offset: 832)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3225, file: !61, line: 72, baseType: !30, size: 32, offset: 896)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3225, file: !61, line: 73, baseType: !30, size: 32, offset: 928)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3225, file: !61, line: 74, baseType: !84, size: 64, offset: 960)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3225, file: !61, line: 77, baseType: !31, size: 16, offset: 1024)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3225, file: !61, line: 78, baseType: !89, size: 8, offset: 1040)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3225, file: !61, line: 79, baseType: !91, size: 8, offset: 1048)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3225, file: !61, line: 81, baseType: !95, size: 64, offset: 1088)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3225, file: !61, line: 89, baseType: !98, size: 64, offset: 1152)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3225, file: !61, line: 91, baseType: !100, size: 64, offset: 1216)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3225, file: !61, line: 92, baseType: !103, size: 64, offset: 1280)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3225, file: !61, line: 93, baseType: !3241, size: 64, offset: 1344)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3225, file: !61, line: 94, baseType: !29, size: 64, offset: 1408)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3225, file: !61, line: 95, baseType: !32, size: 64, offset: 1472)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3225, file: !61, line: 96, baseType: !30, size: 32, offset: 1536)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3225, file: !61, line: 98, baseType: !110, size: 160, offset: 1568)
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !143, line: 63, baseType: !84)
!3258 = !{!3259, !3260, !3261, !3262}
!3259 = !DILocalVariable(name: "fp", arg: 1, scope: !3220, file: !402, line: 28, type: !3223)
!3260 = !DILocalVariable(name: "offset", arg: 2, scope: !3220, file: !402, line: 28, type: !3257)
!3261 = !DILocalVariable(name: "whence", arg: 3, scope: !3220, file: !402, line: 28, type: !30)
!3262 = !DILocalVariable(name: "pos", scope: !3263, file: !402, line: 123, type: !3257)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !402, line: 119, column: 5)
!3264 = distinct !DILexicalBlock(scope: !3220, file: !402, line: 55, column: 7)
!3265 = !DILocation(line: 0, scope: !3220)
!3266 = !DILocation(line: 55, column: 12, scope: !3264)
!3267 = !{!869, !436, i64 16}
!3268 = !DILocation(line: 55, column: 33, scope: !3264)
!3269 = !{!869, !436, i64 8}
!3270 = !DILocation(line: 55, column: 25, scope: !3264)
!3271 = !DILocation(line: 56, column: 7, scope: !3264)
!3272 = !DILocation(line: 56, column: 15, scope: !3264)
!3273 = !DILocation(line: 56, column: 37, scope: !3264)
!3274 = !{!869, !436, i64 32}
!3275 = !DILocation(line: 56, column: 29, scope: !3264)
!3276 = !DILocation(line: 57, column: 7, scope: !3264)
!3277 = !DILocation(line: 57, column: 15, scope: !3264)
!3278 = !{!869, !436, i64 72}
!3279 = !DILocation(line: 57, column: 29, scope: !3264)
!3280 = !DILocation(line: 55, column: 7, scope: !3220)
!3281 = !DILocation(line: 123, column: 26, scope: !3263)
!3282 = !DILocation(line: 123, column: 19, scope: !3263)
!3283 = !DILocation(line: 0, scope: !3263)
!3284 = !DILocation(line: 124, column: 15, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3263, file: !402, line: 124, column: 11)
!3286 = !DILocation(line: 124, column: 11, scope: !3263)
!3287 = !DILocation(line: 135, column: 12, scope: !3263)
!3288 = !DILocation(line: 135, column: 19, scope: !3263)
!3289 = !DILocation(line: 136, column: 12, scope: !3263)
!3290 = !DILocation(line: 136, column: 20, scope: !3263)
!3291 = !{!869, !870, i64 144}
!3292 = !DILocation(line: 167, column: 7, scope: !3263)
!3293 = !DILocation(line: 169, column: 10, scope: !3220)
!3294 = !DILocation(line: 169, column: 3, scope: !3220)
!3295 = !DILocation(line: 170, column: 1, scope: !3220)
!3296 = !DISubprogram(name: "fseeko", scope: !143, file: !143, line: 736, type: !3297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!30, !3223, !84, !30}
!3299 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !337, file: !337, line: 100, type: !3300, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3303)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!32, !1121, !6, !32, !3302}
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3303 = !{!3304, !3305, !3306, !3307, !3308}
!3304 = !DILocalVariable(name: "pwc", arg: 1, scope: !3299, file: !337, line: 100, type: !1121)
!3305 = !DILocalVariable(name: "s", arg: 2, scope: !3299, file: !337, line: 100, type: !6)
!3306 = !DILocalVariable(name: "n", arg: 3, scope: !3299, file: !337, line: 100, type: !32)
!3307 = !DILocalVariable(name: "ps", arg: 4, scope: !3299, file: !337, line: 100, type: !3302)
!3308 = !DILocalVariable(name: "ret", scope: !3299, file: !337, line: 130, type: !32)
!3309 = !DILocation(line: 0, scope: !3299)
!3310 = !DILocation(line: 105, column: 9, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3299, file: !337, line: 105, column: 7)
!3312 = !DILocation(line: 105, column: 7, scope: !3299)
!3313 = !DILocation(line: 117, column: 10, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3299, file: !337, line: 117, column: 7)
!3315 = !DILocation(line: 117, column: 7, scope: !3299)
!3316 = !DILocation(line: 130, column: 16, scope: !3299)
!3317 = !DILocation(line: 135, column: 11, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3299, file: !337, line: 135, column: 7)
!3319 = !DILocation(line: 135, column: 25, scope: !3318)
!3320 = !DILocation(line: 135, column: 30, scope: !3318)
!3321 = !DILocation(line: 135, column: 7, scope: !3299)
!3322 = !DILocalVariable(name: "ps", arg: 1, scope: !3323, file: !1094, line: 1135, type: !3302)
!3323 = distinct !DISubprogram(name: "mbszero", scope: !1094, file: !1094, line: 1135, type: !3324, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !3302}
!3326 = !{!3322}
!3327 = !DILocation(line: 0, scope: !3323, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 137, column: 5, scope: !3318)
!3329 = !DILocalVariable(name: "__dest", arg: 1, scope: !3330, file: !1103, line: 57, type: !29)
!3330 = distinct !DISubprogram(name: "memset", scope: !1103, file: !1103, line: 57, type: !1104, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3331)
!3331 = !{!3329, !3332, !3333}
!3332 = !DILocalVariable(name: "__ch", arg: 2, scope: !3330, file: !1103, line: 57, type: !30)
!3333 = !DILocalVariable(name: "__len", arg: 3, scope: !3330, file: !1103, line: 57, type: !32)
!3334 = !DILocation(line: 0, scope: !3330, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 1137, column: 3, scope: !3323, inlinedAt: !3328)
!3336 = !DILocation(line: 59, column: 10, scope: !3330, inlinedAt: !3335)
!3337 = !DILocation(line: 137, column: 5, scope: !3318)
!3338 = !DILocation(line: 138, column: 11, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3299, file: !337, line: 138, column: 7)
!3340 = !DILocation(line: 138, column: 7, scope: !3299)
!3341 = !DILocation(line: 139, column: 5, scope: !3339)
!3342 = !DILocation(line: 143, column: 26, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3299, file: !337, line: 143, column: 7)
!3344 = !DILocation(line: 143, column: 41, scope: !3343)
!3345 = !DILocation(line: 143, column: 7, scope: !3299)
!3346 = !DILocation(line: 145, column: 15, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !337, line: 145, column: 11)
!3348 = distinct !DILexicalBlock(scope: !3343, file: !337, line: 144, column: 5)
!3349 = !DILocation(line: 145, column: 11, scope: !3348)
!3350 = !DILocation(line: 146, column: 32, scope: !3347)
!3351 = !DILocation(line: 146, column: 16, scope: !3347)
!3352 = !DILocation(line: 146, column: 14, scope: !3347)
!3353 = !DILocation(line: 146, column: 9, scope: !3347)
!3354 = !DILocation(line: 286, column: 1, scope: !3299)
!3355 = !DISubprogram(name: "mbsinit", scope: !3356, file: !3356, line: 293, type: !3357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3356 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!30, !3359}
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!3361 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !404, file: !404, line: 27, type: !2577, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3362)
!3362 = !{!3363, !3364, !3365, !3366}
!3363 = !DILocalVariable(name: "ptr", arg: 1, scope: !3361, file: !404, line: 27, type: !29)
!3364 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3361, file: !404, line: 27, type: !32)
!3365 = !DILocalVariable(name: "size", arg: 3, scope: !3361, file: !404, line: 27, type: !32)
!3366 = !DILocalVariable(name: "nbytes", scope: !3361, file: !404, line: 29, type: !32)
!3367 = !DILocation(line: 0, scope: !3361)
!3368 = !DILocation(line: 30, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3361, file: !404, line: 30, column: 7)
!3370 = !DILocalVariable(name: "ptr", arg: 1, scope: !3371, file: !2668, line: 2057, type: !29)
!3371 = distinct !DISubprogram(name: "rpl_realloc", scope: !2668, file: !2668, line: 2057, type: !2660, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3372)
!3372 = !{!3370, !3373}
!3373 = !DILocalVariable(name: "size", arg: 2, scope: !3371, file: !2668, line: 2057, type: !32)
!3374 = !DILocation(line: 0, scope: !3371, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 37, column: 10, scope: !3361)
!3376 = !DILocation(line: 2059, column: 24, scope: !3371, inlinedAt: !3375)
!3377 = !DILocation(line: 2059, column: 10, scope: !3371, inlinedAt: !3375)
!3378 = !DILocation(line: 37, column: 3, scope: !3361)
!3379 = !DILocation(line: 32, column: 7, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3369, file: !404, line: 31, column: 5)
!3381 = !DILocation(line: 32, column: 13, scope: !3380)
!3382 = !DILocation(line: 33, column: 7, scope: !3380)
!3383 = !DILocation(line: 38, column: 1, scope: !3361)
!3384 = distinct !DISubprogram(name: "hard_locale", scope: !407, file: !407, line: 28, type: !3385, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!44, !30}
!3387 = !{!3388, !3389}
!3388 = !DILocalVariable(name: "category", arg: 1, scope: !3384, file: !407, line: 28, type: !30)
!3389 = !DILocalVariable(name: "locale", scope: !3384, file: !407, line: 30, type: !3390)
!3390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3391)
!3391 = !{!3392}
!3392 = !DISubrange(count: 257)
!3393 = !DILocation(line: 0, scope: !3384)
!3394 = !DILocation(line: 30, column: 3, scope: !3384)
!3395 = !DILocation(line: 30, column: 8, scope: !3384)
!3396 = !DILocation(line: 32, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3384, file: !407, line: 32, column: 7)
!3398 = !DILocation(line: 32, column: 7, scope: !3384)
!3399 = !DILocalVariable(name: "__s1", arg: 1, scope: !3400, file: !471, line: 1359, type: !6)
!3400 = distinct !DISubprogram(name: "streq", scope: !471, file: !471, line: 1359, type: !472, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3401)
!3401 = !{!3399, !3402}
!3402 = !DILocalVariable(name: "__s2", arg: 2, scope: !3400, file: !471, line: 1359, type: !6)
!3403 = !DILocation(line: 0, scope: !3400, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 35, column: 9, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3384, file: !407, line: 35, column: 7)
!3406 = !DILocation(line: 1361, column: 11, scope: !3400, inlinedAt: !3404)
!3407 = !DILocation(line: 1361, column: 10, scope: !3400, inlinedAt: !3404)
!3408 = !DILocation(line: 35, column: 29, scope: !3405)
!3409 = !DILocation(line: 0, scope: !3400, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 35, column: 32, scope: !3405)
!3411 = !DILocation(line: 1361, column: 11, scope: !3400, inlinedAt: !3410)
!3412 = !DILocation(line: 1361, column: 10, scope: !3400, inlinedAt: !3410)
!3413 = !DILocation(line: 35, column: 7, scope: !3384)
!3414 = !DILocation(line: 46, column: 3, scope: !3384)
!3415 = !DILocation(line: 47, column: 1, scope: !3384)
!3416 = distinct !DISubprogram(name: "setlocale_null_r", scope: !409, file: !409, line: 154, type: !3417, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!30, !30, !65, !32}
!3419 = !{!3420, !3421, !3422}
!3420 = !DILocalVariable(name: "category", arg: 1, scope: !3416, file: !409, line: 154, type: !30)
!3421 = !DILocalVariable(name: "buf", arg: 2, scope: !3416, file: !409, line: 154, type: !65)
!3422 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3416, file: !409, line: 154, type: !32)
!3423 = !DILocation(line: 0, scope: !3416)
!3424 = !DILocation(line: 159, column: 10, scope: !3416)
!3425 = !DILocation(line: 159, column: 3, scope: !3416)
!3426 = distinct !DISubprogram(name: "setlocale_null", scope: !409, file: !409, line: 186, type: !3427, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!6, !30}
!3429 = !{!3430}
!3430 = !DILocalVariable(name: "category", arg: 1, scope: !3426, file: !409, line: 186, type: !30)
!3431 = !DILocation(line: 0, scope: !3426)
!3432 = !DILocation(line: 189, column: 10, scope: !3426)
!3433 = !DILocation(line: 189, column: 3, scope: !3426)
!3434 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !411, file: !411, line: 35, type: !3427, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3435)
!3435 = !{!3436, !3437}
!3436 = !DILocalVariable(name: "category", arg: 1, scope: !3434, file: !411, line: 35, type: !30)
!3437 = !DILocalVariable(name: "result", scope: !3434, file: !411, line: 37, type: !6)
!3438 = !DILocation(line: 0, scope: !3434)
!3439 = !DILocation(line: 37, column: 24, scope: !3434)
!3440 = !DILocation(line: 62, column: 3, scope: !3434)
!3441 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !411, file: !411, line: 66, type: !3417, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447}
!3443 = !DILocalVariable(name: "category", arg: 1, scope: !3441, file: !411, line: 66, type: !30)
!3444 = !DILocalVariable(name: "buf", arg: 2, scope: !3441, file: !411, line: 66, type: !65)
!3445 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3441, file: !411, line: 66, type: !32)
!3446 = !DILocalVariable(name: "result", scope: !3441, file: !411, line: 111, type: !6)
!3447 = !DILocalVariable(name: "length", scope: !3448, file: !411, line: 125, type: !32)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !411, line: 124, column: 5)
!3449 = distinct !DILexicalBlock(scope: !3441, file: !411, line: 113, column: 7)
!3450 = !DILocation(line: 0, scope: !3441)
!3451 = !DILocation(line: 0, scope: !3434, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 111, column: 24, scope: !3441)
!3453 = !DILocation(line: 37, column: 24, scope: !3434, inlinedAt: !3452)
!3454 = !DILocation(line: 113, column: 14, scope: !3449)
!3455 = !DILocation(line: 113, column: 7, scope: !3441)
!3456 = !DILocation(line: 116, column: 19, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !411, line: 116, column: 11)
!3458 = distinct !DILexicalBlock(scope: !3449, file: !411, line: 114, column: 5)
!3459 = !DILocation(line: 116, column: 11, scope: !3458)
!3460 = !DILocation(line: 120, column: 16, scope: !3457)
!3461 = !DILocation(line: 120, column: 9, scope: !3457)
!3462 = !DILocation(line: 125, column: 23, scope: !3448)
!3463 = !DILocation(line: 0, scope: !3448)
!3464 = !DILocation(line: 126, column: 18, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3448, file: !411, line: 126, column: 11)
!3466 = !DILocation(line: 126, column: 11, scope: !3448)
!3467 = !DILocation(line: 128, column: 39, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3465, file: !411, line: 127, column: 9)
!3469 = !DILocalVariable(name: "__dest", arg: 1, scope: !3470, file: !1103, line: 26, type: !2935)
!3470 = distinct !DISubprogram(name: "memcpy", scope: !1103, file: !1103, line: 26, type: !2933, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3471)
!3471 = !{!3469, !3472, !3473}
!3472 = !DILocalVariable(name: "__src", arg: 2, scope: !3470, file: !1103, line: 26, type: !638)
!3473 = !DILocalVariable(name: "__len", arg: 3, scope: !3470, file: !1103, line: 26, type: !32)
!3474 = !DILocation(line: 0, scope: !3470, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 128, column: 11, scope: !3468)
!3476 = !DILocation(line: 29, column: 10, scope: !3470, inlinedAt: !3475)
!3477 = !DILocation(line: 129, column: 11, scope: !3468)
!3478 = !DILocation(line: 133, column: 23, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !411, line: 133, column: 15)
!3480 = distinct !DILexicalBlock(scope: !3465, file: !411, line: 132, column: 9)
!3481 = !DILocation(line: 133, column: 15, scope: !3480)
!3482 = !DILocation(line: 138, column: 44, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3479, file: !411, line: 134, column: 13)
!3484 = !DILocation(line: 0, scope: !3470, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 138, column: 15, scope: !3483)
!3486 = !DILocation(line: 29, column: 10, scope: !3470, inlinedAt: !3485)
!3487 = !DILocation(line: 139, column: 15, scope: !3483)
!3488 = !DILocation(line: 139, column: 32, scope: !3483)
!3489 = !DILocation(line: 140, column: 13, scope: !3483)
!3490 = !DILocation(line: 0, scope: !3449)
!3491 = !DILocation(line: 145, column: 1, scope: !3441)
