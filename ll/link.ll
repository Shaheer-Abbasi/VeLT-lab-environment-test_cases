; ModuleID = 'src/link.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s FILE1 FILE2\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Call the link function to create a link named FILE2 to an existing FILE1.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"cannot create link %s to %s\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !0
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), align 8, !dbg !133
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !138
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !143
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !145
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !181
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !151
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !177
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !179
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.50 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.51, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.52, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !186
@optind = external local_unnamed_addr global i32, align 4
@.str.1.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.51 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.52 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !203
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !209
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 8, !dbg !245
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !257
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !275
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !305
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !312
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !277
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !314
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !263
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !282
@.str.84 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.85 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.87 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.88 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.89 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.90 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.105 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.106 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.107 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.108 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.109 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !320
@exit_failure = dso_local global i32 1, align 4, !dbg !328
@.str.122 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.120 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.121 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.133 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !334
@.str.138 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.139 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

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
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !439
  %11 = load i8*, i8** @program_name, align 8, !dbg !439, !tbaa !435
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11, i8* noundef %11) #32, !dbg !439
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !441
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !441, !tbaa !435
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !441
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !442
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !442
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !443
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !443
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !444, metadata !DIExpression()) #32, !dbg !463
  %18 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !465
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %18) #32, !dbg !465
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !449, metadata !DIExpression()) #32, !dbg !466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %18, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !466
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !458, metadata !DIExpression()) #32, !dbg !463
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !459, metadata !DIExpression()) #32, !dbg !463
  %19 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !467
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !459, metadata !DIExpression()) #32, !dbg !463
  br label %20, !dbg !468

20:                                               ; preds = %25, %9
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %22 = phi %struct.infomap* [ %26, %25 ], [ %19, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !459, metadata !DIExpression()) #32, !dbg !463
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !476
  call void @llvm.dbg.value(metadata i8* %21, metadata !475, metadata !DIExpression()) #32, !dbg !476
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %21) #33, !dbg !478
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
  %35 = select i1 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %33, !dbg !492
  call void @llvm.dbg.value(metadata i8* %35, metadata !458, metadata !DIExpression()) #32, !dbg !463
  tail call void @emit_bug_reporting_address() #32, !dbg !493
  %36 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !494
  call void @llvm.dbg.value(metadata i8* %36, metadata !461, metadata !DIExpression()) #32, !dbg !463
  %37 = icmp eq i8* %36, null, !dbg !495
  br i1 %37, label %45, label %38, !dbg !497

38:                                               ; preds = %30
  %39 = tail call i32 @strncmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 noundef 3) #33, !dbg !498
  %40 = icmp eq i32 %39, 0, !dbg !498
  br i1 %40, label %45, label %41, !dbg !499

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #32, !dbg !500
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !500, !tbaa !435
  %44 = tail call i32 @fputs_unlocked(i8* noundef %42, %struct._IO_FILE* noundef %43) #32, !dbg !500
  br label %45, !dbg !502

45:                                               ; preds = %30, %38, %41
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !503
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !475, metadata !DIExpression()) #32, !dbg !503
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !462, metadata !DIExpression()) #32, !dbg !463
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i32 noundef 5) #32, !dbg !505
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %46, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !505
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #32, !dbg !506
  %49 = icmp eq i8* %35, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), !dbg !506
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !506
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
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !52, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %0, metadata !53, metadata !DIExpression()), !dbg !519
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !520, !tbaa !521
  %3 = icmp eq i32 %2, -1, !dbg !523
  br i1 %3, label %4, label %16, !dbg !524

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #32, !dbg !525
  call void @llvm.dbg.value(metadata i8* %5, metadata !54, metadata !DIExpression()), !dbg !526
  %6 = icmp eq i8* %5, null, !dbg !527
  br i1 %6, label %14, label %7, !dbg !528

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !529, !tbaa !530
  %9 = icmp eq i8 %8, 0, !dbg !529
  br i1 %9, label %14, label %10, !dbg !531

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !469, metadata !DIExpression()) #32, !dbg !532
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), metadata !475, metadata !DIExpression()) #32, !dbg !532
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #33, !dbg !534
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
  call void @llvm.dbg.value(metadata i8 1, metadata !57, metadata !DIExpression()), !dbg !519
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #33, !dbg !544
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !545
  call void @llvm.dbg.value(metadata i8* %24, metadata !59, metadata !DIExpression()), !dbg !519
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !546
  call void @llvm.dbg.value(metadata i8* %25, metadata !60, metadata !DIExpression()), !dbg !519
  %26 = icmp eq i8* %25, null, !dbg !547
  br i1 %26, label %53, label %27, !dbg !548

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !549
  br i1 %28, label %53, label %29, !dbg !550

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !61, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i64 0, metadata !65, metadata !DIExpression()), !dbg !551
  %30 = icmp ult i8* %24, %25, !dbg !552
  br i1 %30, label %31, label %53, !dbg !553

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !519
  %33 = load i16*, i16** %32, align 8, !tbaa !435
  br label %34, !dbg !553

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !61, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i64 %36, metadata !65, metadata !DIExpression()), !dbg !551
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !554
  call void @llvm.dbg.value(metadata i8* %37, metadata !61, metadata !DIExpression()), !dbg !551
  %38 = load i8, i8* %35, align 1, !dbg !554, !tbaa !530
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !554
  %41 = load i16, i16* %40, align 2, !dbg !554, !tbaa !555
  %42 = lshr i16 %41, 13, !dbg !557
  %43 = and i16 %42, 1, !dbg !557
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !558
  call void @llvm.dbg.value(metadata i64 %45, metadata !65, metadata !DIExpression()), !dbg !551
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
  call void @llvm.dbg.value(metadata i8 poison, metadata !57, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %54, metadata !60, metadata !DIExpression()), !dbg !519
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #33, !dbg !564
  call void @llvm.dbg.value(metadata i64 %56, metadata !66, metadata !DIExpression()), !dbg !519
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !565
  call void @llvm.dbg.value(metadata i8* %57, metadata !67, metadata !DIExpression()), !dbg !519
  br label %58, !dbg !566

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !519
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !57, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %59, metadata !67, metadata !DIExpression()), !dbg !519
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
  call void @llvm.dbg.value(metadata i8 poison, metadata !57, metadata !DIExpression()), !dbg !519
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
  call void @llvm.dbg.value(metadata i8* %90, metadata !67, metadata !DIExpression()), !dbg !519
  br label %58, !dbg !566, !llvm.loop !587

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !589
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !435
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !589
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !475, metadata !DIExpression()) #32, !dbg !590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !594
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !596
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !128, metadata !DIExpression()), !dbg !519
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 noundef 6) #33, !dbg !610
  %96 = icmp eq i32 %95, 0, !dbg !610
  br i1 %96, label %100, label %97, !dbg !612

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i64 noundef 9) #33, !dbg !613
  %99 = icmp eq i32 %98, 0, !dbg !613
  br i1 %99, label %100, label %103, !dbg !614

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !615
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !615
  br label %106, !dbg !617

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !618
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !618
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !435
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !620
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !435
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !621
  %111 = ptrtoint i8* %59 to i64, !dbg !622
  %112 = sub i64 %111, %92, !dbg !622
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !435
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !622
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !435
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !623
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !435
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !624
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !646, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i8** %1, metadata !647, metadata !DIExpression()), !dbg !648
  %3 = load i8*, i8** %1, align 8, !dbg !649, !tbaa !435
  tail call void @set_program_name(i8* noundef %3) #32, !dbg !650
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #32, !dbg !651
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #32, !dbg !652
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !653
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !654
  %8 = load i8*, i8** @Version, align 8, !dbg !655, !tbaa !435
  %9 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)) #32, !dbg !656
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %8, i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %9, i8* noundef null) #32, !dbg !657
  %10 = load i32, i32* @optind, align 4, !dbg !658, !tbaa !521
  %11 = add nsw i32 %10, 2, !dbg !660
  %12 = icmp sgt i32 %11, %0, !dbg !661
  br i1 %12, label %13, label %25, !dbg !662

13:                                               ; preds = %2
  %14 = icmp slt i32 %10, %0, !dbg !663
  br i1 %14, label %17, label %15, !dbg !666

15:                                               ; preds = %13
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #32, !dbg !667
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %16) #32, !dbg !667
  br label %24, !dbg !667

17:                                               ; preds = %13
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #32, !dbg !668
  %19 = load i32, i32* @optind, align 4, !dbg !668, !tbaa !521
  %20 = sext i32 %19 to i64, !dbg !668
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20, !dbg !668
  %22 = load i8*, i8** %21, align 8, !dbg !668, !tbaa !435
  %23 = tail call i8* @quote(i8* noundef %22) #32, !dbg !668
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %18, i8* noundef %23) #32, !dbg !668
  br label %24

24:                                               ; preds = %17, %15
  tail call void @usage(i32 noundef 1) #36, !dbg !669
  unreachable, !dbg !669

25:                                               ; preds = %2
  %26 = icmp slt i32 %11, %0, !dbg !670
  br i1 %26, label %27, label %35, !dbg !672

27:                                               ; preds = %25
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #32, !dbg !673
  %29 = load i32, i32* @optind, align 4, !dbg !673, !tbaa !521
  %30 = add nsw i32 %29, 2, !dbg !673
  %31 = sext i32 %30 to i64, !dbg !673
  %32 = getelementptr inbounds i8*, i8** %1, i64 %31, !dbg !673
  %33 = load i8*, i8** %32, align 8, !dbg !673, !tbaa !435
  %34 = tail call i8* @quote(i8* noundef %33) #32, !dbg !673
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %28, i8* noundef %34) #32, !dbg !673
  tail call void @usage(i32 noundef 1) #36, !dbg !675
  unreachable, !dbg !675

35:                                               ; preds = %25
  %36 = sext i32 %10 to i64, !dbg !676
  %37 = getelementptr inbounds i8*, i8** %1, i64 %36, !dbg !676
  %38 = load i8*, i8** %37, align 8, !dbg !676, !tbaa !435
  %39 = add nsw i32 %10, 1, !dbg !678
  %40 = sext i32 %39 to i64, !dbg !679
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !679
  %42 = load i8*, i8** %41, align 8, !dbg !679, !tbaa !435
  %43 = tail call i32 @link(i8* noundef %38, i8* noundef %42) #32, !dbg !680
  %44 = icmp eq i32 %43, 0, !dbg !681
  br i1 %44, label %60, label %45, !dbg !682

45:                                               ; preds = %35
  %46 = tail call i32* @__errno_location() #35, !dbg !683
  %47 = load i32, i32* %46, align 4, !dbg !683, !tbaa !521
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #32, !dbg !683
  %49 = load i32, i32* @optind, align 4, !dbg !683, !tbaa !521
  %50 = add nsw i32 %49, 1, !dbg !683
  %51 = sext i32 %50 to i64, !dbg !683
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !683
  %53 = load i8*, i8** %52, align 8, !dbg !683, !tbaa !435
  %54 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef %53) #32, !dbg !683
  %55 = load i32, i32* @optind, align 4, !dbg !683, !tbaa !521
  %56 = sext i32 %55 to i64, !dbg !683
  %57 = getelementptr inbounds i8*, i8** %1, i64 %56, !dbg !683
  %58 = load i8*, i8** %57, align 8, !dbg !683, !tbaa !435
  %59 = tail call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 4, i8* noundef %58) #32, !dbg !683
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %47, i8* noundef %48, i8* noundef %54, i8* noundef %59) #32, !dbg !683
  unreachable, !dbg !683

60:                                               ; preds = %35
  ret i32 0, !dbg !684
}

; Function Attrs: nounwind
declare !dbg !685 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !688 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !689 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !692 i32 @link(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !696 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !698, metadata !DIExpression()), !dbg !699
  store i8* %0, i8** @file_name, align 8, !dbg !700, !tbaa !435
  ret void, !dbg !701
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !702 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !706, metadata !DIExpression()), !dbg !707
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !708, !tbaa !709
  ret void, !dbg !711
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !712 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717, !tbaa !435
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !718
  %3 = icmp eq i32 %2, 0, !dbg !719
  br i1 %3, label %22, label %4, !dbg !720

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !721, !tbaa !709, !range !722
  %6 = icmp eq i8 %5, 0, !dbg !721
  br i1 %6, label %11, label %7, !dbg !723

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !724
  %9 = load i32, i32* %8, align 4, !dbg !724, !tbaa !521
  %10 = icmp eq i32 %9, 32, !dbg !725
  br i1 %10, label %22, label %11, !dbg !726

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.24, i64 0, i64 0), i32 noundef 5) #32, !dbg !727
  call void @llvm.dbg.value(metadata i8* %12, metadata !714, metadata !DIExpression()), !dbg !728
  %13 = load i8*, i8** @file_name, align 8, !dbg !729, !tbaa !435
  %14 = icmp eq i8* %13, null, !dbg !729
  %15 = tail call i32* @__errno_location() #35, !dbg !731
  %16 = load i32, i32* %15, align 4, !dbg !731, !tbaa !521
  br i1 %14, label %19, label %17, !dbg !732

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !733
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.25, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !733
  br label %20, !dbg !733

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.26, i64 0, i64 0), i8* noundef %12) #32, !dbg !734
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !735, !tbaa !521
  tail call void @_exit(i32 noundef %21) #34, !dbg !736
  unreachable, !dbg !736

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !737, !tbaa !435
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !739
  %25 = icmp eq i32 %24, 0, !dbg !740
  br i1 %25, label %28, label %26, !dbg !741

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !742, !tbaa !521
  tail call void @_exit(i32 noundef %27) #34, !dbg !743
  unreachable, !dbg !743

28:                                               ; preds = %22
  ret void, !dbg !744
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !745 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !749, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.value(metadata i32 %1, metadata !750, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.value(metadata i8* %2, metadata !751, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !752, metadata !DIExpression()), !dbg !754
  tail call fastcc void @flush_stdout(), !dbg !755
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !756, !tbaa !435
  %7 = icmp eq void ()* %6, null, !dbg !756
  br i1 %7, label %9, label %8, !dbg !758

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !759
  br label %13, !dbg !759

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !760, !tbaa !435
  %11 = tail call i8* @getprogname() #33, !dbg !760
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* noundef %11) #32, !dbg !760
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !762
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !762
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !762, !tbaa.struct !763
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !762
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !762
  ret void, !dbg !764
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !765 {
  call void @llvm.dbg.value(metadata i32 1, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i32 1, metadata !769, metadata !DIExpression()) #32, !dbg !774
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !777
  %2 = icmp slt i32 %1, 0, !dbg !778
  br i1 %2, label %6, label %3, !dbg !779

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !780, !tbaa !435
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !780
  br label %6, !dbg !780

6:                                                ; preds = %3, %0
  ret void, !dbg !781
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !782 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !784, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i32 %1, metadata !785, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8* %2, metadata !786, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !787, metadata !DIExpression()), !dbg !789
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !790, !tbaa !435
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !791
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !792, metadata !DIExpression()) #32, !dbg !835
  call void @llvm.dbg.value(metadata i8* %2, metadata !833, metadata !DIExpression()) #32, !dbg !835
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !837
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !837, !noalias !838
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !837
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !837
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !837, !noalias !838
  %11 = load i32, i32* @error_message_count, align 4, !dbg !842, !tbaa !521
  %12 = add i32 %11, 1, !dbg !842
  store i32 %12, i32* @error_message_count, align 4, !dbg !842, !tbaa !521
  %13 = icmp eq i32 %1, 0, !dbg !843
  br i1 %13, label %24, label %14, !dbg !845

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !846, metadata !DIExpression()) #32, !dbg !854
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !856
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !856
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !850, metadata !DIExpression()) #32, !dbg !857
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !858
  call void @llvm.dbg.value(metadata i8* %16, metadata !849, metadata !DIExpression()) #32, !dbg !854
  %17 = icmp eq i8* %16, null, !dbg !859
  br i1 %17, label %18, label %20, !dbg !861

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.29, i64 0, i64 0), i32 noundef 5) #32, !dbg !862
  call void @llvm.dbg.value(metadata i8* %19, metadata !849, metadata !DIExpression()) #32, !dbg !854
  br label %20, !dbg !863

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !854
  call void @llvm.dbg.value(metadata i8* %21, metadata !849, metadata !DIExpression()) #32, !dbg !854
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !864, !tbaa !435
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.30, i64 0, i64 0), i8* noundef %21) #32, !dbg !864
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !865
  br label %24, !dbg !866

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !867, !tbaa !435
  call void @llvm.dbg.value(metadata i32 10, metadata !868, metadata !DIExpression()) #32, !dbg !875
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !874, metadata !DIExpression()) #32, !dbg !875
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !877
  %27 = load i8*, i8** %26, align 8, !dbg !877, !tbaa !878
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !877
  %29 = load i8*, i8** %28, align 8, !dbg !877, !tbaa !881
  %30 = icmp ult i8* %27, %29, !dbg !877
  br i1 %30, label %33, label %31, !dbg !877, !prof !882

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !877
  br label %35, !dbg !877

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !877
  store i8* %34, i8** %26, align 8, !dbg !877, !tbaa !878
  store i8 10, i8* %27, align 1, !dbg !877, !tbaa !530
  br label %35, !dbg !877

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !883, !tbaa !435
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !883
  %38 = icmp eq i32 %0, 0, !dbg !884
  br i1 %38, label %40, label %39, !dbg !886

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !887
  unreachable, !dbg !887

40:                                               ; preds = %35
  ret void, !dbg !888
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !889 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !893 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !896 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !900 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !904, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 %1, metadata !905, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i8* %2, metadata !906, metadata !DIExpression()), !dbg !908
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !909
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !909
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !907, metadata !DIExpression()), !dbg !910
  call void @llvm.va_start(i8* nonnull %6), !dbg !911
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !912
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !912
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !912, !tbaa.struct !763
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !912
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !912
  call void @llvm.va_end(i8* nonnull %6), !dbg !913
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !914
  ret void, !dbg !914
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !153 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !171, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i32 %1, metadata !172, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i8* %2, metadata !173, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i32 %3, metadata !174, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i8* %4, metadata !175, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !176, metadata !DIExpression()), !dbg !916
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !917, !tbaa !521
  %9 = icmp eq i32 %8, 0, !dbg !917
  br i1 %9, label %24, label %10, !dbg !919

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !920, !tbaa !521
  %12 = icmp eq i32 %11, %3, !dbg !923
  br i1 %12, label %13, label %23, !dbg !924

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !925, !tbaa !435
  %15 = icmp eq i8* %14, %2, !dbg !926
  br i1 %15, label %39, label %16, !dbg !927

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !928
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !929
  br i1 %19, label %20, label %23, !dbg !929

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !930
  %22 = icmp eq i32 %21, 0, !dbg !931
  br i1 %22, label %39, label %23, !dbg !932

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !933, !tbaa !435
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !934, !tbaa !521
  br label %24, !dbg !935

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !936
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !937, !tbaa !435
  %26 = icmp eq void ()* %25, null, !dbg !937
  br i1 %26, label %28, label %27, !dbg !939

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !940
  br label %32, !dbg !940

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !941, !tbaa !435
  %30 = tail call i8* @getprogname() #33, !dbg !941
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.33, i64 0, i64 0), i8* noundef %30) #32, !dbg !941
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !943, !tbaa !435
  %34 = icmp eq i8* %2, null, !dbg !943
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.34, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.35, i64 0, i64 0), !dbg !943
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !943
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !944
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !944
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !944
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !944, !tbaa.struct !763
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !944
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !944
  br label %39, !dbg !945

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !945
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !946 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !950, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 %1, metadata !951, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* %2, metadata !952, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 %3, metadata !953, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* %4, metadata !954, metadata !DIExpression()), !dbg !956
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !957
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !955, metadata !DIExpression()), !dbg !958
  call void @llvm.va_start(i8* nonnull %8), !dbg !959
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !960
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !960, !tbaa.struct !763
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !960
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !960
  call void @llvm.va_end(i8* nonnull %8), !dbg !961
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !962
  ret void, !dbg !962
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !963 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !966, !tbaa !435
  ret i8* %1, !dbg !967
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #12 !dbg !968 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !973, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8** %1, metadata !974, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8* %2, metadata !975, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8* %3, metadata !976, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i8* %4, metadata !977, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !978, metadata !DIExpression()), !dbg !999
  %9 = load i32, i32* @opterr, align 4, !dbg !1000, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %9, metadata !979, metadata !DIExpression()), !dbg !999
  store i32 0, i32* @opterr, align 4, !dbg !1001, !tbaa !521
  %10 = icmp eq i32 %0, 2, !dbg !1002
  br i1 %10, label %11, label %18, !dbg !1003

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %12, metadata !980, metadata !DIExpression()), !dbg !1005
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1006

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #32, !dbg !1007
  br label %18, !dbg !1008

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1009
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #32, !dbg !1009
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !983, metadata !DIExpression()), !dbg !1010
  call void @llvm.va_start(i8* nonnull %15), !dbg !1011
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1012, !tbaa !435
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1013
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #32, !dbg !1013
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1013, !tbaa.struct !763
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #32, !dbg !1013
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #32, !dbg !1013
  call void @exit(i32 noundef 0) #34, !dbg !1014
  unreachable, !dbg !1014

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !1015, !tbaa !521
  store i32 0, i32* @optind, align 4, !dbg !1016, !tbaa !521
  ret void, !dbg !1017
}

; Function Attrs: nounwind
declare !dbg !1018 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #12 !dbg !1024 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1028, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8** %1, metadata !1029, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %2, metadata !1030, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %3, metadata !1031, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %4, metadata !1032, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i1 %5, metadata !1033, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1043
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1034, metadata !DIExpression()), !dbg !1043
  %10 = load i32, i32* @opterr, align 4, !dbg !1044, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %10, metadata !1035, metadata !DIExpression()), !dbg !1043
  store i32 1, i32* @opterr, align 4, !dbg !1045, !tbaa !521
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.55, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %11, metadata !1036, metadata !DIExpression()), !dbg !1043
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %12, metadata !1037, metadata !DIExpression()), !dbg !1043
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !1048

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1049
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1049
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !1038, metadata !DIExpression()), !dbg !1050
  call void @llvm.va_start(i8* nonnull %14), !dbg !1051
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1052, !tbaa !435
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !1053
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #32, !dbg !1053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !1053, !tbaa.struct !763
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #32, !dbg !1053
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #32, !dbg !1053
  call void @exit(i32 noundef 0) #34, !dbg !1054
  unreachable, !dbg !1054

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !1055, !tbaa !521
  br label %19, !dbg !1056

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #32, !dbg !1057
  br label %21, !dbg !1058

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !1058, !tbaa !521
  ret void, !dbg !1059
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !1060 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1062, metadata !DIExpression()), !dbg !1065
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1066
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
  call void @llvm.dbg.value(metadata i8* %11, metadata !1073, metadata !DIExpression()) #32, !dbg !1080
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), metadata !1078, metadata !DIExpression()) #32, !dbg !1080
  call void @llvm.dbg.value(metadata i64 7, metadata !1079, metadata !DIExpression()) #32, !dbg !1080
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), i64 7) #32, !dbg !1082
  %13 = icmp eq i32 %12, 0, !dbg !1083
  br i1 %13, label %14, label %19, !dbg !1084

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1062, metadata !DIExpression()), !dbg !1065
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.61, i64 0, i64 0), i64 noundef 3) #33, !dbg !1085
  %16 = icmp eq i32 %15, 0, !dbg !1088
  %17 = select i1 %16, i64 3, i64 0, !dbg !1089
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1089
  br label %19, !dbg !1089

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1065
  call void @llvm.dbg.value(metadata i8* %21, metadata !1064, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8* %20, metadata !1062, metadata !DIExpression()), !dbg !1065
  store i8* %20, i8** @program_name, align 8, !dbg !1090, !tbaa !435
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1091, !tbaa !435
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1092, !tbaa !435
  ret void, !dbg !1093
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !211 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !218, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %1, metadata !219, metadata !DIExpression()), !dbg !1094
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %5, metadata !220, metadata !DIExpression()), !dbg !1094
  %6 = icmp eq i8* %5, %0, !dbg !1096
  br i1 %6, label %7, label %17, !dbg !1098

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1099
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1099
  %10 = bitcast i64* %4 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1100
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !226, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1102, metadata !DIExpression()) #32, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %10, metadata !1111, metadata !DIExpression()) #32, !dbg !1119
  call void @llvm.dbg.value(metadata i32 0, metadata !1117, metadata !DIExpression()) #32, !dbg !1119
  call void @llvm.dbg.value(metadata i64 8, metadata !1118, metadata !DIExpression()) #32, !dbg !1119
  store i64 0, i64* %4, align 8, !dbg !1121
  call void @llvm.dbg.value(metadata i32* %3, metadata !221, metadata !DIExpression(DW_OP_deref)), !dbg !1094
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1122
  %12 = icmp eq i64 %11, 2, !dbg !1124
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !221, metadata !DIExpression()), !dbg !1094
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1125
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1094
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1126
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1094
  ret i8* %18, !dbg !1126
}

; Function Attrs: nounwind
declare !dbg !1127 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1133 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1138, metadata !DIExpression()), !dbg !1141
  %2 = tail call i32* @__errno_location() #35, !dbg !1142
  %3 = load i32, i32* %2, align 4, !dbg !1142, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %3, metadata !1139, metadata !DIExpression()), !dbg !1141
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1143
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1143
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1143
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1144
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1144
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1140, metadata !DIExpression()), !dbg !1141
  store i32 %3, i32* %2, align 4, !dbg !1145, !tbaa !521
  ret %struct.quoting_options* %8, !dbg !1146
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1147 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1153, metadata !DIExpression()), !dbg !1154
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1155
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1155
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1156
  %5 = load i32, i32* %4, align 8, !dbg !1156, !tbaa !1157
  ret i32 %5, !dbg !1159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1160 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1164, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %1, metadata !1165, metadata !DIExpression()), !dbg !1166
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1167
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1167
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1168
  store i32 %1, i32* %5, align 8, !dbg !1169, !tbaa !1157
  ret void, !dbg !1170
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1171 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1175, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %1, metadata !1176, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i32 %2, metadata !1177, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %1, metadata !1178, metadata !DIExpression()), !dbg !1183
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1184
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1184
  %6 = lshr i8 %1, 5, !dbg !1185
  %7 = zext i8 %6 to i64, !dbg !1185
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1186
  call void @llvm.dbg.value(metadata i32* %8, metadata !1179, metadata !DIExpression()), !dbg !1183
  %9 = and i8 %1, 31, !dbg !1187
  %10 = zext i8 %9 to i32, !dbg !1187
  call void @llvm.dbg.value(metadata i32 %10, metadata !1181, metadata !DIExpression()), !dbg !1183
  %11 = load i32, i32* %8, align 4, !dbg !1188, !tbaa !521
  %12 = lshr i32 %11, %10, !dbg !1189
  %13 = and i32 %12, 1, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %13, metadata !1182, metadata !DIExpression()), !dbg !1183
  %14 = and i32 %2, 1, !dbg !1191
  %15 = xor i32 %13, %14, !dbg !1192
  %16 = shl i32 %15, %10, !dbg !1193
  %17 = xor i32 %16, %11, !dbg !1194
  store i32 %17, i32* %8, align 4, !dbg !1194, !tbaa !521
  ret i32 %13, !dbg !1195
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1196 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1200, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i32 %1, metadata !1201, metadata !DIExpression()), !dbg !1203
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1204
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1206
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1200, metadata !DIExpression()), !dbg !1203
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1207
  %6 = load i32, i32* %5, align 4, !dbg !1207, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %6, metadata !1202, metadata !DIExpression()), !dbg !1203
  store i32 %1, i32* %5, align 4, !dbg !1209, !tbaa !1208
  ret i32 %6, !dbg !1210
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1211 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1215, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i8* %2, metadata !1217, metadata !DIExpression()), !dbg !1218
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1219
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1215, metadata !DIExpression()), !dbg !1218
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1222
  store i32 10, i32* %6, align 8, !dbg !1223, !tbaa !1157
  %7 = icmp ne i8* %1, null, !dbg !1224
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1226
  br i1 %9, label %11, label %10, !dbg !1226

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1227
  unreachable, !dbg !1227

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1228
  store i8* %1, i8** %12, align 8, !dbg !1229, !tbaa !1230
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1231
  store i8* %2, i8** %13, align 8, !dbg !1232, !tbaa !1233
  ret void, !dbg !1234
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1235 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1239, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %1, metadata !1240, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8* %2, metadata !1241, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %3, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1243, metadata !DIExpression()), !dbg !1247
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1248
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1244, metadata !DIExpression()), !dbg !1247
  %8 = tail call i32* @__errno_location() #35, !dbg !1249
  %9 = load i32, i32* %8, align 4, !dbg !1249, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %9, metadata !1245, metadata !DIExpression()), !dbg !1247
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1250
  %11 = load i32, i32* %10, align 8, !dbg !1250, !tbaa !1157
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1251
  %13 = load i32, i32* %12, align 4, !dbg !1251, !tbaa !1208
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1252
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1253
  %16 = load i8*, i8** %15, align 8, !dbg !1253, !tbaa !1230
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1254
  %18 = load i8*, i8** %17, align 8, !dbg !1254, !tbaa !1233
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %19, metadata !1246, metadata !DIExpression()), !dbg !1247
  store i32 %9, i32* %8, align 4, !dbg !1256, !tbaa !521
  ret i64 %19, !dbg !1257
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1258 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1264, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %1, metadata !1265, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %2, metadata !1266, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %3, metadata !1267, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 %4, metadata !1268, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 %5, metadata !1269, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32* %6, metadata !1270, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %7, metadata !1271, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %8, metadata !1272, metadata !DIExpression()), !dbg !1326
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1327
  %18 = icmp eq i64 %17, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i1 %18, metadata !1273, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1326
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 0, metadata !1275, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* null, metadata !1276, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 0, metadata !1277, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 0, metadata !1278, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 %5, metadata !1279, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1326
  call void @llvm.dbg.value(metadata i8 0, metadata !1280, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 1, metadata !1281, metadata !DIExpression()), !dbg !1326
  %19 = and i32 %5, 2, !dbg !1329
  %20 = icmp ne i32 %19, 0, !dbg !1329
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
  br label %36, !dbg !1329

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1330
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1331
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1332
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1265, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %43, metadata !1277, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %42, metadata !1276, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %41, metadata !1275, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %40, metadata !1267, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %39, metadata !1272, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %38, metadata !1271, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 %37, metadata !1268, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.label(metadata !1319), !dbg !1333
  call void @llvm.dbg.value(metadata i8 0, metadata !1282, metadata !DIExpression()), !dbg !1326
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
  ], !dbg !1334

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 5, metadata !1268, metadata !DIExpression()), !dbg !1326
  br label %111, !dbg !1335

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 5, metadata !1268, metadata !DIExpression()), !dbg !1326
  br i1 %45, label %111, label %51, !dbg !1335

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1336
  br i1 %52, label %111, label %53, !dbg !1340

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1336, !tbaa !530
  br label %111, !dbg !1336

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), metadata !288, metadata !DIExpression()) #32, !dbg !1341
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #32, !dbg !1341
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 noundef 5) #32, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %55, metadata !290, metadata !DIExpression()) #32, !dbg !1341
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), !dbg !1346
  br i1 %56, label %57, label %66, !dbg !1348

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1349
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1350
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !292, metadata !DIExpression()) #32, !dbg !1351
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1352, metadata !DIExpression()) #32, !dbg !1358
  call void @llvm.dbg.value(metadata i8* %23, metadata !1360, metadata !DIExpression()) #32, !dbg !1365
  call void @llvm.dbg.value(metadata i32 0, metadata !1363, metadata !DIExpression()) #32, !dbg !1365
  call void @llvm.dbg.value(metadata i64 8, metadata !1364, metadata !DIExpression()) #32, !dbg !1365
  store i64 0, i64* %13, align 8, !dbg !1367
  call void @llvm.dbg.value(metadata i32* %12, metadata !291, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1341
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1368
  %59 = icmp eq i64 %58, 3, !dbg !1370
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !291, metadata !DIExpression()) #32, !dbg !1341
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1371
  %63 = icmp eq i32 %37, 9, !dbg !1371
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1371
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1371
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1372
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1372
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1341
  call void @llvm.dbg.value(metadata i8* %67, metadata !1271, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), metadata !288, metadata !DIExpression()) #32, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #32, !dbg !1373
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), i32 noundef 5) #32, !dbg !1375
  call void @llvm.dbg.value(metadata i8* %68, metadata !290, metadata !DIExpression()) #32, !dbg !1373
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1376
  br i1 %69, label %70, label %79, !dbg !1377

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1378
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1379
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !292, metadata !DIExpression()) #32, !dbg !1380
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1352, metadata !DIExpression()) #32, !dbg !1381
  call void @llvm.dbg.value(metadata i8* %26, metadata !1360, metadata !DIExpression()) #32, !dbg !1383
  call void @llvm.dbg.value(metadata i32 0, metadata !1363, metadata !DIExpression()) #32, !dbg !1383
  call void @llvm.dbg.value(metadata i64 8, metadata !1364, metadata !DIExpression()) #32, !dbg !1383
  store i64 0, i64* %11, align 8, !dbg !1385
  call void @llvm.dbg.value(metadata i32* %10, metadata !291, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1373
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1386
  %72 = icmp eq i64 %71, 3, !dbg !1387
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !291, metadata !DIExpression()) #32, !dbg !1373
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1388
  %76 = icmp eq i32 %37, 9, !dbg !1388
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1388
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1389
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1389
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1272, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %80, metadata !1271, metadata !DIExpression()), !dbg !1326
  br i1 %45, label %97, label %82, !dbg !1390

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1283, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !1326
  %83 = load i8, i8* %80, align 1, !dbg !1392, !tbaa !530
  %84 = icmp eq i8 %83, 0, !dbg !1394
  br i1 %84, label %97, label %85, !dbg !1394

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1283, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %88, metadata !1274, metadata !DIExpression()), !dbg !1326
  %89 = icmp ult i64 %88, %48, !dbg !1395
  br i1 %89, label %90, label %92, !dbg !1398

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1395
  store i8 %86, i8* %91, align 1, !dbg !1395, !tbaa !530
  br label %92, !dbg !1395

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %93, metadata !1274, metadata !DIExpression()), !dbg !1326
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1399
  call void @llvm.dbg.value(metadata i8* %94, metadata !1283, metadata !DIExpression()), !dbg !1391
  %95 = load i8, i8* %94, align 1, !dbg !1392, !tbaa !530
  %96 = icmp eq i8 %95, 0, !dbg !1394
  br i1 %96, label %97, label %85, !dbg !1394, !llvm.loop !1400

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1402
  call void @llvm.dbg.value(metadata i64 %98, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 1, metadata !1278, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %81, metadata !1276, metadata !DIExpression()), !dbg !1326
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %99, metadata !1277, metadata !DIExpression()), !dbg !1326
  br label %111, !dbg !1404

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1278, metadata !DIExpression()), !dbg !1326
  br label %102, !dbg !1405

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1326
  br i1 %45, label %102, label %105, !dbg !1406

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 2, metadata !1268, metadata !DIExpression()), !dbg !1326
  br label %111, !dbg !1407

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 2, metadata !1268, metadata !DIExpression()), !dbg !1326
  br i1 %45, label %111, label %105, !dbg !1407

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1408
  br i1 %107, label %111, label %108, !dbg !1412

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1408, !tbaa !530
  br label %111, !dbg !1408

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1279, metadata !DIExpression()), !dbg !1326
  br label %111, !dbg !1413

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1414
  unreachable, !dbg !1414

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1402
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %102 ], !dbg !1326
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1326
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1279, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1278, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %117, metadata !1277, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %116, metadata !1276, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %115, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %114, metadata !1272, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %113, metadata !1271, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 %112, metadata !1268, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 0, metadata !1288, metadata !DIExpression()), !dbg !1415
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
  br label %132, !dbg !1416

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1402
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1330
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1415
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1265, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %139, metadata !1288, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %135, metadata !1275, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %134, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %133, metadata !1267, metadata !DIExpression()), !dbg !1326
  %141 = icmp eq i64 %133, -1, !dbg !1417
  br i1 %141, label %142, label %146, !dbg !1418

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1419
  %144 = load i8, i8* %143, align 1, !dbg !1419, !tbaa !530
  %145 = icmp eq i8 %144, 0, !dbg !1420
  br i1 %145, label %596, label %148, !dbg !1421

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1422
  br i1 %147, label %596, label %148, !dbg !1421

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1290, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 0, metadata !1293, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 0, metadata !1294, metadata !DIExpression()), !dbg !1423
  br i1 %123, label %149, label %163, !dbg !1424

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1426
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1427
  br i1 %151, label %152, label %154, !dbg !1427

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %153, metadata !1267, metadata !DIExpression()), !dbg !1326
  br label %154, !dbg !1429

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1429
  call void @llvm.dbg.value(metadata i64 %155, metadata !1267, metadata !DIExpression()), !dbg !1326
  %156 = icmp ugt i64 %150, %155, !dbg !1430
  br i1 %156, label %163, label %157, !dbg !1431

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %158, metadata !1433, metadata !DIExpression()) #32, !dbg !1438
  call void @llvm.dbg.value(metadata i8* %116, metadata !1436, metadata !DIExpression()) #32, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %117, metadata !1437, metadata !DIExpression()) #32, !dbg !1438
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1440
  %160 = icmp ne i32 %159, 0, !dbg !1441
  %161 = or i1 %160, %125, !dbg !1442
  %162 = xor i1 %160, true, !dbg !1442
  br i1 %161, label %163, label %647, !dbg !1442

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1290, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %164, metadata !1267, metadata !DIExpression()), !dbg !1326
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1443
  %167 = load i8, i8* %166, align 1, !dbg !1443, !tbaa !530
  call void @llvm.dbg.value(metadata i8 %167, metadata !1295, metadata !DIExpression()), !dbg !1423
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
  ], !dbg !1444

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1445

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1446

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1293, metadata !DIExpression()), !dbg !1423
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1450
  br i1 %171, label %188, label %172, !dbg !1450

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1452
  br i1 %173, label %174, label %176, !dbg !1456

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1452
  store i8 39, i8* %175, align 1, !dbg !1452, !tbaa !530
  br label %176, !dbg !1452

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %177, metadata !1274, metadata !DIExpression()), !dbg !1326
  %178 = icmp ult i64 %177, %140, !dbg !1457
  br i1 %178, label %179, label %181, !dbg !1460

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1457
  store i8 36, i8* %180, align 1, !dbg !1457, !tbaa !530
  br label %181, !dbg !1457

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %182, metadata !1274, metadata !DIExpression()), !dbg !1326
  %183 = icmp ult i64 %182, %140, !dbg !1461
  br i1 %183, label %184, label %186, !dbg !1464

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1461
  store i8 39, i8* %185, align 1, !dbg !1461, !tbaa !530
  br label %186, !dbg !1461

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %187, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 1, metadata !1282, metadata !DIExpression()), !dbg !1326
  br label %188, !dbg !1465

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1326
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %189, metadata !1274, metadata !DIExpression()), !dbg !1326
  %191 = icmp ult i64 %189, %140, !dbg !1466
  br i1 %191, label %192, label %194, !dbg !1469

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1466
  store i8 92, i8* %193, align 1, !dbg !1466, !tbaa !530
  br label %194, !dbg !1466

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %195, metadata !1274, metadata !DIExpression()), !dbg !1326
  br i1 %120, label %196, label %499, !dbg !1470

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1472
  %198 = icmp ult i64 %197, %164, !dbg !1473
  br i1 %198, label %199, label %456, !dbg !1474

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1475
  %201 = load i8, i8* %200, align 1, !dbg !1475, !tbaa !530
  %202 = add i8 %201, -48, !dbg !1476
  %203 = icmp ult i8 %202, 10, !dbg !1476
  br i1 %203, label %204, label %456, !dbg !1476

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1477
  br i1 %205, label %206, label %208, !dbg !1481

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1477
  store i8 48, i8* %207, align 1, !dbg !1477, !tbaa !530
  br label %208, !dbg !1477

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %209, metadata !1274, metadata !DIExpression()), !dbg !1326
  %210 = icmp ult i64 %209, %140, !dbg !1482
  br i1 %210, label %211, label %213, !dbg !1485

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1482
  store i8 48, i8* %212, align 1, !dbg !1482, !tbaa !530
  br label %213, !dbg !1482

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %214, metadata !1274, metadata !DIExpression()), !dbg !1326
  br label %456, !dbg !1486

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1487

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1488

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1489

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1491

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1493
  %221 = icmp ult i64 %220, %164, !dbg !1494
  br i1 %221, label %222, label %456, !dbg !1495

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1496
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1497
  %225 = load i8, i8* %224, align 1, !dbg !1497, !tbaa !530
  %226 = icmp eq i8 %225, 63, !dbg !1498
  br i1 %226, label %227, label %456, !dbg !1499

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1500
  %229 = load i8, i8* %228, align 1, !dbg !1500, !tbaa !530
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
  ], !dbg !1501

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1502

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1295, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %220, metadata !1288, metadata !DIExpression()), !dbg !1415
  %232 = icmp ult i64 %134, %140, !dbg !1504
  br i1 %232, label %233, label %235, !dbg !1507

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1504
  store i8 63, i8* %234, align 1, !dbg !1504, !tbaa !530
  br label %235, !dbg !1504

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %236, metadata !1274, metadata !DIExpression()), !dbg !1326
  %237 = icmp ult i64 %236, %140, !dbg !1508
  br i1 %237, label %238, label %240, !dbg !1511

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1508
  store i8 34, i8* %239, align 1, !dbg !1508, !tbaa !530
  br label %240, !dbg !1508

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %241, metadata !1274, metadata !DIExpression()), !dbg !1326
  %242 = icmp ult i64 %241, %140, !dbg !1512
  br i1 %242, label %243, label %245, !dbg !1515

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1512
  store i8 34, i8* %244, align 1, !dbg !1512, !tbaa !530
  br label %245, !dbg !1512

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %246, metadata !1274, metadata !DIExpression()), !dbg !1326
  %247 = icmp ult i64 %246, %140, !dbg !1516
  br i1 %247, label %248, label %250, !dbg !1519

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1516
  store i8 63, i8* %249, align 1, !dbg !1516, !tbaa !530
  br label %250, !dbg !1516

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %251, metadata !1274, metadata !DIExpression()), !dbg !1326
  br label %456, !dbg !1520

252:                                              ; preds = %163
  br label %263, !dbg !1521

253:                                              ; preds = %163
  br label %263, !dbg !1522

254:                                              ; preds = %163
  br label %261, !dbg !1523

255:                                              ; preds = %163
  br label %261, !dbg !1524

256:                                              ; preds = %163
  br label %263, !dbg !1525

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1526

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1527

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1530

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1532

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1533
  call void @llvm.dbg.label(metadata !1320), !dbg !1534
  br i1 %128, label %263, label %638, !dbg !1535

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1533
  call void @llvm.dbg.label(metadata !1322), !dbg !1537
  br i1 %118, label %510, label %467, !dbg !1538

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1539

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1540, !tbaa !530
  %268 = icmp eq i8 %267, 0, !dbg !1542
  br i1 %268, label %269, label %456, !dbg !1543

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1544
  br i1 %270, label %271, label %456, !dbg !1546

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1294, metadata !DIExpression()), !dbg !1423
  br label %272, !dbg !1547

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1294, metadata !DIExpression()), !dbg !1423
  br i1 %126, label %274, label %456, !dbg !1548

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1550

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1280, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 1, metadata !1294, metadata !DIExpression()), !dbg !1423
  br i1 %126, label %276, label %456, !dbg !1551

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1552

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1555
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1557
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1557
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %282, metadata !1265, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %281, metadata !1275, metadata !DIExpression()), !dbg !1326
  %283 = icmp ult i64 %134, %282, !dbg !1558
  br i1 %283, label %284, label %286, !dbg !1561

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1558
  store i8 39, i8* %285, align 1, !dbg !1558, !tbaa !530
  br label %286, !dbg !1558

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %287, metadata !1274, metadata !DIExpression()), !dbg !1326
  %288 = icmp ult i64 %287, %282, !dbg !1562
  br i1 %288, label %289, label %291, !dbg !1565

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1562
  store i8 92, i8* %290, align 1, !dbg !1562, !tbaa !530
  br label %291, !dbg !1562

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %292, metadata !1274, metadata !DIExpression()), !dbg !1326
  %293 = icmp ult i64 %292, %282, !dbg !1566
  br i1 %293, label %294, label %296, !dbg !1569

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1566
  store i8 39, i8* %295, align 1, !dbg !1566, !tbaa !530
  br label %296, !dbg !1566

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %297, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 0, metadata !1282, metadata !DIExpression()), !dbg !1326
  br label %456, !dbg !1570

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1571

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1296, metadata !DIExpression()), !dbg !1572
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1573
  %301 = load i16*, i16** %300, align 8, !dbg !1573, !tbaa !435
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1573
  %304 = load i16, i16* %303, align 2, !dbg !1573, !tbaa !555
  %305 = and i16 %304, 16384, !dbg !1573
  %306 = icmp ne i16 %305, 0, !dbg !1575
  call void @llvm.dbg.value(metadata i8 poison, metadata !1299, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %349, metadata !1296, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %312, metadata !1267, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i1 %350, metadata !1294, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1423
  br label %352, !dbg !1576

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1577
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1300, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1352, metadata !DIExpression()) #32, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %32, metadata !1360, metadata !DIExpression()) #32, !dbg !1581
  call void @llvm.dbg.value(metadata i32 0, metadata !1363, metadata !DIExpression()) #32, !dbg !1581
  call void @llvm.dbg.value(metadata i64 8, metadata !1364, metadata !DIExpression()) #32, !dbg !1581
  store i64 0, i64* %14, align 8, !dbg !1583
  call void @llvm.dbg.value(metadata i64 0, metadata !1296, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8 1, metadata !1299, metadata !DIExpression()), !dbg !1572
  %308 = icmp eq i64 %164, -1, !dbg !1584
  br i1 %308, label %309, label %311, !dbg !1586

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %310, metadata !1267, metadata !DIExpression()), !dbg !1326
  br label %311, !dbg !1588

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1423
  call void @llvm.dbg.value(metadata i64 %312, metadata !1267, metadata !DIExpression()), !dbg !1326
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1589
  %313 = sub i64 %312, %139, !dbg !1590
  call void @llvm.dbg.value(metadata i32* %16, metadata !1303, metadata !DIExpression(DW_OP_deref)), !dbg !1591
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %314, metadata !1307, metadata !DIExpression()), !dbg !1591
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1593

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1296, metadata !DIExpression()), !dbg !1572
  %316 = icmp ugt i64 %312, %139, !dbg !1594
  br i1 %316, label %319, label %317, !dbg !1596

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1299, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 0, metadata !1296, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1597
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %349, metadata !1296, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %312, metadata !1267, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i1 %350, metadata !1294, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1423
  br label %352, !dbg !1576

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1299, metadata !DIExpression()), !dbg !1572
  br label %346, !dbg !1599

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1296, metadata !DIExpression()), !dbg !1572
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1601
  %323 = load i8, i8* %322, align 1, !dbg !1601, !tbaa !530
  %324 = icmp eq i8 %323, 0, !dbg !1596
  br i1 %324, label %348, label %325, !dbg !1602

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %326, metadata !1296, metadata !DIExpression()), !dbg !1572
  %327 = add i64 %326, %139, !dbg !1604
  %328 = icmp eq i64 %326, %313, !dbg !1594
  br i1 %328, label %348, label %319, !dbg !1596, !llvm.loop !1605

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1606
  call void @llvm.dbg.value(metadata i64 1, metadata !1308, metadata !DIExpression()), !dbg !1607
  br i1 %331, label %332, label %340, !dbg !1606

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1308, metadata !DIExpression()), !dbg !1607
  %334 = add i64 %333, %139, !dbg !1608
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1610
  %336 = load i8, i8* %335, align 1, !dbg !1610, !tbaa !530
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1611

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %338, metadata !1308, metadata !DIExpression()), !dbg !1607
  %339 = icmp eq i64 %338, %314, !dbg !1613
  br i1 %339, label %340, label %332, !dbg !1614, !llvm.loop !1615

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1617, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %341, metadata !1303, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i32 %341, metadata !1619, metadata !DIExpression()) #32, !dbg !1627
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1629
  %343 = icmp ne i32 %342, 0, !dbg !1630
  call void @llvm.dbg.value(metadata i8 poison, metadata !1299, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %314, metadata !1296, metadata !DIExpression()), !dbg !1572
  br label %348, !dbg !1631

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1299, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 0, metadata !1296, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1597
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1598
  call void @llvm.dbg.label(metadata !1325), !dbg !1632
  %345 = select i1 %118, i32 4, i32 2, !dbg !1633
  br label %643, !dbg !1633

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1299, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 0, metadata !1296, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1597
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %349, metadata !1296, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %312, metadata !1267, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i1 %350, metadata !1294, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1423
  br label %352, !dbg !1576

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1299, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 0, metadata !1296, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1597
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %349, metadata !1296, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %312, metadata !1267, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i1 %350, metadata !1294, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1423
  %351 = icmp ugt i64 %349, 1, !dbg !1635
  br i1 %351, label %357, label %352, !dbg !1576

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1636
  br i1 %356, label %456, label %357, !dbg !1636

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %361, metadata !1316, metadata !DIExpression()), !dbg !1638
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1639

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1326
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1415
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1640
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1423
  call void @llvm.dbg.value(metadata i8 %369, metadata !1295, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %368, metadata !1293, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1290, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %366, metadata !1288, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %364, metadata !1274, metadata !DIExpression()), !dbg !1326
  br i1 %362, label %414, label %370, !dbg !1641

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1646

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1293, metadata !DIExpression()), !dbg !1423
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1649
  br i1 %372, label %389, label %373, !dbg !1649

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1651
  br i1 %374, label %375, label %377, !dbg !1655

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1651
  store i8 39, i8* %376, align 1, !dbg !1651, !tbaa !530
  br label %377, !dbg !1651

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %378, metadata !1274, metadata !DIExpression()), !dbg !1326
  %379 = icmp ult i64 %378, %140, !dbg !1656
  br i1 %379, label %380, label %382, !dbg !1659

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1656
  store i8 36, i8* %381, align 1, !dbg !1656, !tbaa !530
  br label %382, !dbg !1656

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %383, metadata !1274, metadata !DIExpression()), !dbg !1326
  %384 = icmp ult i64 %383, %140, !dbg !1660
  br i1 %384, label %385, label %387, !dbg !1663

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1660
  store i8 39, i8* %386, align 1, !dbg !1660, !tbaa !530
  br label %387, !dbg !1660

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %388, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 1, metadata !1282, metadata !DIExpression()), !dbg !1326
  br label %389, !dbg !1664

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1326
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %390, metadata !1274, metadata !DIExpression()), !dbg !1326
  %392 = icmp ult i64 %390, %140, !dbg !1665
  br i1 %392, label %393, label %395, !dbg !1668

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1665
  store i8 92, i8* %394, align 1, !dbg !1665, !tbaa !530
  br label %395, !dbg !1665

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %396, metadata !1274, metadata !DIExpression()), !dbg !1326
  %397 = icmp ult i64 %396, %140, !dbg !1669
  br i1 %397, label %398, label %402, !dbg !1672

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1669
  %400 = or i8 %399, 48, !dbg !1669
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1669
  store i8 %400, i8* %401, align 1, !dbg !1669, !tbaa !530
  br label %402, !dbg !1669

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %403, metadata !1274, metadata !DIExpression()), !dbg !1326
  %404 = icmp ult i64 %403, %140, !dbg !1673
  br i1 %404, label %405, label %410, !dbg !1676

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1673
  %407 = and i8 %406, 7, !dbg !1673
  %408 = or i8 %407, 48, !dbg !1673
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1673
  store i8 %408, i8* %409, align 1, !dbg !1673, !tbaa !530
  br label %410, !dbg !1673

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %411, metadata !1274, metadata !DIExpression()), !dbg !1326
  %412 = and i8 %369, 7, !dbg !1677
  %413 = or i8 %412, 48, !dbg !1678
  call void @llvm.dbg.value(metadata i8 %413, metadata !1295, metadata !DIExpression()), !dbg !1423
  br label %421, !dbg !1679

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1680

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1681
  br i1 %416, label %417, label %419, !dbg !1686

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1681
  store i8 92, i8* %418, align 1, !dbg !1681, !tbaa !530
  br label %419, !dbg !1681

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %420, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 0, metadata !1290, metadata !DIExpression()), !dbg !1423
  br label %421, !dbg !1687

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1326
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1423
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1423
  call void @llvm.dbg.value(metadata i8 %426, metadata !1295, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %425, metadata !1293, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1290, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %422, metadata !1274, metadata !DIExpression()), !dbg !1326
  %427 = add i64 %366, 1, !dbg !1688
  %428 = icmp ugt i64 %361, %427, !dbg !1690
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1691

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1692
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1692
  br i1 %432, label %433, label %444, !dbg !1692

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1695
  br i1 %434, label %435, label %437, !dbg !1699

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1695
  store i8 39, i8* %436, align 1, !dbg !1695, !tbaa !530
  br label %437, !dbg !1695

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %438, metadata !1274, metadata !DIExpression()), !dbg !1326
  %439 = icmp ult i64 %438, %140, !dbg !1700
  br i1 %439, label %440, label %442, !dbg !1703

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1700
  store i8 39, i8* %441, align 1, !dbg !1700, !tbaa !530
  br label %442, !dbg !1700

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %443, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 0, metadata !1282, metadata !DIExpression()), !dbg !1326
  br label %444, !dbg !1704

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1705
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %445, metadata !1274, metadata !DIExpression()), !dbg !1326
  %447 = icmp ult i64 %445, %140, !dbg !1706
  br i1 %447, label %448, label %450, !dbg !1709

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1706
  store i8 %426, i8* %449, align 1, !dbg !1706, !tbaa !530
  br label %450, !dbg !1706

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %451, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %427, metadata !1288, metadata !DIExpression()), !dbg !1415
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1710
  %453 = load i8, i8* %452, align 1, !dbg !1710, !tbaa !530
  call void @llvm.dbg.value(metadata i8 %453, metadata !1295, metadata !DIExpression()), !dbg !1423
  br label %363, !dbg !1711, !llvm.loop !1712

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1295, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i1 %358, metadata !1294, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %425, metadata !1293, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1290, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %366, metadata !1288, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %422, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %360, metadata !1267, metadata !DIExpression()), !dbg !1326
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1715
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1326
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1330
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1415
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1423
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1265, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %465, metadata !1295, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1294, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1290, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %462, metadata !1288, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %459, metadata !1275, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %458, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %457, metadata !1267, metadata !DIExpression()), !dbg !1326
  br i1 %121, label %478, label %467, !dbg !1716

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
  br i1 %131, label %479, label %499, !dbg !1718

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1719

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
  %490 = lshr i8 %481, 5, !dbg !1720
  %491 = zext i8 %490 to i64, !dbg !1720
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1721
  %493 = load i32, i32* %492, align 4, !dbg !1721, !tbaa !521
  %494 = and i8 %481, 31, !dbg !1722
  %495 = zext i8 %494 to i32, !dbg !1722
  %496 = shl nuw i32 1, %495, !dbg !1723
  %497 = and i32 %493, %496, !dbg !1723
  %498 = icmp eq i32 %497, 0, !dbg !1723
  br i1 %498, label %499, label %510, !dbg !1724

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
  br i1 %165, label %510, label %546, !dbg !1725

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1715
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1326
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1330
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1726
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1423
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1265, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %518, metadata !1295, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1294, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %516, metadata !1288, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %513, metadata !1275, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %512, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %511, metadata !1267, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.label(metadata !1323), !dbg !1727
  br i1 %119, label %638, label %520, !dbg !1728

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1293, metadata !DIExpression()), !dbg !1423
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1730
  br i1 %521, label %538, label %522, !dbg !1730

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1732
  br i1 %523, label %524, label %526, !dbg !1736

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1732
  store i8 39, i8* %525, align 1, !dbg !1732, !tbaa !530
  br label %526, !dbg !1732

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %527, metadata !1274, metadata !DIExpression()), !dbg !1326
  %528 = icmp ult i64 %527, %519, !dbg !1737
  br i1 %528, label %529, label %531, !dbg !1740

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1737
  store i8 36, i8* %530, align 1, !dbg !1737, !tbaa !530
  br label %531, !dbg !1737

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %532, metadata !1274, metadata !DIExpression()), !dbg !1326
  %533 = icmp ult i64 %532, %519, !dbg !1741
  br i1 %533, label %534, label %536, !dbg !1744

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1741
  store i8 39, i8* %535, align 1, !dbg !1741, !tbaa !530
  br label %536, !dbg !1741

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %537, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 1, metadata !1282, metadata !DIExpression()), !dbg !1326
  br label %538, !dbg !1745

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1423
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %539, metadata !1274, metadata !DIExpression()), !dbg !1326
  %541 = icmp ult i64 %539, %519, !dbg !1746
  br i1 %541, label %542, label %544, !dbg !1749

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1746
  store i8 92, i8* %543, align 1, !dbg !1746, !tbaa !530
  br label %544, !dbg !1746

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %556, metadata !1265, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %555, metadata !1295, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1294, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %552, metadata !1288, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %549, metadata !1275, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %548, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %547, metadata !1267, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.label(metadata !1324), !dbg !1750
  br label %570, !dbg !1751

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1715
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1326
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1330
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1726
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1754
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1265, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 %555, metadata !1295, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1294, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %552, metadata !1288, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %549, metadata !1275, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %548, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %547, metadata !1267, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.label(metadata !1324), !dbg !1750
  %557 = xor i1 %551, true, !dbg !1751
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1751
  br i1 %558, label %570, label %559, !dbg !1751

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1755
  br i1 %560, label %561, label %563, !dbg !1759

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1755
  store i8 39, i8* %562, align 1, !dbg !1755, !tbaa !530
  br label %563, !dbg !1755

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %564, metadata !1274, metadata !DIExpression()), !dbg !1326
  %565 = icmp ult i64 %564, %556, !dbg !1760
  br i1 %565, label %566, label %568, !dbg !1763

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1760
  store i8 39, i8* %567, align 1, !dbg !1760, !tbaa !530
  br label %568, !dbg !1760

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %569, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 0, metadata !1282, metadata !DIExpression()), !dbg !1326
  br label %570, !dbg !1764

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1423
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %578, metadata !1274, metadata !DIExpression()), !dbg !1326
  %580 = icmp ult i64 %578, %571, !dbg !1765
  br i1 %580, label %581, label %583, !dbg !1768

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1765
  store i8 %572, i8* %582, align 1, !dbg !1765, !tbaa !530
  br label %583, !dbg !1765

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %584, metadata !1274, metadata !DIExpression()), !dbg !1326
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1769
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1326
  br label %586, !dbg !1770

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1715
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1326
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1330
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1726
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1265, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %593, metadata !1288, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 poison, metadata !1282, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %589, metadata !1275, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %588, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %587, metadata !1267, metadata !DIExpression()), !dbg !1326
  %595 = add i64 %593, 1, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %595, metadata !1288, metadata !DIExpression()), !dbg !1415
  br label %132, !dbg !1772, !llvm.loop !1773

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1265, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1281, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8 poison, metadata !1280, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 undef, metadata !1275, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 undef, metadata !1274, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 undef, metadata !1267, metadata !DIExpression()), !dbg !1326
  %597 = icmp eq i64 %134, 0, !dbg !1775
  %598 = and i1 %126, %597, !dbg !1777
  %599 = and i1 %598, %119, !dbg !1777
  br i1 %599, label %638, label %600, !dbg !1777

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1778
  %602 = or i1 %119, %601, !dbg !1778
  %603 = xor i1 %136, true, !dbg !1778
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1778
  br i1 %604, label %612, label %605, !dbg !1778

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1780

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1782
  br label %653, !dbg !1784

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1785
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1787
  br i1 %611, label %36, label %612, !dbg !1787

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1788
  %615 = or i1 %614, %613, !dbg !1790
  br i1 %615, label %631, label %616, !dbg !1790

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1276, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %134, metadata !1274, metadata !DIExpression()), !dbg !1326
  %617 = load i8, i8* %116, align 1, !dbg !1791, !tbaa !530
  %618 = icmp eq i8 %617, 0, !dbg !1794
  br i1 %618, label %631, label %619, !dbg !1794

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1276, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %622, metadata !1274, metadata !DIExpression()), !dbg !1326
  %623 = icmp ult i64 %622, %140, !dbg !1795
  br i1 %623, label %624, label %626, !dbg !1798

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1795
  store i8 %620, i8* %625, align 1, !dbg !1795, !tbaa !530
  br label %626, !dbg !1795

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %627, metadata !1274, metadata !DIExpression()), !dbg !1326
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1799
  call void @llvm.dbg.value(metadata i8* %628, metadata !1276, metadata !DIExpression()), !dbg !1326
  %629 = load i8, i8* %628, align 1, !dbg !1791, !tbaa !530
  %630 = icmp eq i8 %629, 0, !dbg !1794
  br i1 %630, label %631, label %619, !dbg !1794, !llvm.loop !1800

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1402
  call void @llvm.dbg.value(metadata i64 %632, metadata !1274, metadata !DIExpression()), !dbg !1326
  %633 = icmp ult i64 %632, %140, !dbg !1802
  br i1 %633, label %634, label %653, !dbg !1804

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1805
  store i8 0, i8* %635, align 1, !dbg !1806, !tbaa !530
  br label %653, !dbg !1805

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1325), !dbg !1632
  %637 = icmp eq i32 %112, 2, !dbg !1807
  br i1 %637, label %643, label %647, !dbg !1633

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1325), !dbg !1632
  %641 = icmp eq i32 %112, 2, !dbg !1807
  %642 = select i1 %118, i32 4, i32 2, !dbg !1633
  br i1 %641, label %643, label %647, !dbg !1633

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1633

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1268, metadata !DIExpression()), !dbg !1326
  %651 = and i32 %5, -3, !dbg !1808
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1809
  br label %653, !dbg !1810

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1811
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1812 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1814 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1818, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i64 %1, metadata !1819, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1820, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8* %0, metadata !1822, metadata !DIExpression()) #32, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %1, metadata !1827, metadata !DIExpression()) #32, !dbg !1835
  call void @llvm.dbg.value(metadata i64* null, metadata !1828, metadata !DIExpression()) #32, !dbg !1835
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1829, metadata !DIExpression()) #32, !dbg !1835
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1837
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1837
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1830, metadata !DIExpression()) #32, !dbg !1835
  %6 = tail call i32* @__errno_location() #35, !dbg !1838
  %7 = load i32, i32* %6, align 4, !dbg !1838, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %7, metadata !1831, metadata !DIExpression()) #32, !dbg !1835
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1839
  %9 = load i32, i32* %8, align 4, !dbg !1839, !tbaa !1208
  %10 = or i32 %9, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %10, metadata !1832, metadata !DIExpression()) #32, !dbg !1835
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1841
  %12 = load i32, i32* %11, align 8, !dbg !1841, !tbaa !1157
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1842
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1843
  %15 = load i8*, i8** %14, align 8, !dbg !1843, !tbaa !1230
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1844
  %17 = load i8*, i8** %16, align 8, !dbg !1844, !tbaa !1233
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !1845
  %19 = add i64 %18, 1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %19, metadata !1833, metadata !DIExpression()) #32, !dbg !1835
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !1847
  call void @llvm.dbg.value(metadata i8* %20, metadata !1834, metadata !DIExpression()) #32, !dbg !1835
  %21 = load i32, i32* %11, align 8, !dbg !1848, !tbaa !1157
  %22 = load i8*, i8** %14, align 8, !dbg !1849, !tbaa !1230
  %23 = load i8*, i8** %16, align 8, !dbg !1850, !tbaa !1233
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !1851
  store i32 %7, i32* %6, align 4, !dbg !1852, !tbaa !521
  ret i8* %20, !dbg !1853
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1822, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %1, metadata !1827, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64* %2, metadata !1828, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1829, metadata !DIExpression()), !dbg !1854
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1855
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1855
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1830, metadata !DIExpression()), !dbg !1854
  %7 = tail call i32* @__errno_location() #35, !dbg !1856
  %8 = load i32, i32* %7, align 4, !dbg !1856, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %8, metadata !1831, metadata !DIExpression()), !dbg !1854
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1857
  %10 = load i32, i32* %9, align 4, !dbg !1857, !tbaa !1208
  %11 = icmp eq i64* %2, null, !dbg !1858
  %12 = zext i1 %11 to i32, !dbg !1858
  %13 = or i32 %10, %12, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %13, metadata !1832, metadata !DIExpression()), !dbg !1854
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1860
  %15 = load i32, i32* %14, align 8, !dbg !1860, !tbaa !1157
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1861
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1862
  %18 = load i8*, i8** %17, align 8, !dbg !1862, !tbaa !1230
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1863
  %20 = load i8*, i8** %19, align 8, !dbg !1863, !tbaa !1233
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1864
  %22 = add i64 %21, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %22, metadata !1833, metadata !DIExpression()), !dbg !1854
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !1866
  call void @llvm.dbg.value(metadata i8* %23, metadata !1834, metadata !DIExpression()), !dbg !1854
  %24 = load i32, i32* %14, align 8, !dbg !1867, !tbaa !1157
  %25 = load i8*, i8** %17, align 8, !dbg !1868, !tbaa !1230
  %26 = load i8*, i8** %19, align 8, !dbg !1869, !tbaa !1233
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1870
  store i32 %8, i32* %7, align 4, !dbg !1871, !tbaa !521
  br i1 %11, label %29, label %28, !dbg !1872

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1873, !tbaa !1875
  br label %29, !dbg !1876

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1877
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1878 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1883, !tbaa !435
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1880, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i32 1, metadata !1881, metadata !DIExpression()), !dbg !1885
  %2 = load i32, i32* @nslots, align 4, !tbaa !521
  call void @llvm.dbg.value(metadata i32 1, metadata !1881, metadata !DIExpression()), !dbg !1885
  %3 = icmp sgt i32 %2, 1, !dbg !1886
  br i1 %3, label %4, label %6, !dbg !1888

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1886
  br label %10, !dbg !1888

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1889
  %8 = load i8*, i8** %7, align 8, !dbg !1889, !tbaa !1891
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1893
  br i1 %9, label %17, label %16, !dbg !1894

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1881, metadata !DIExpression()), !dbg !1885
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1895
  %13 = load i8*, i8** %12, align 8, !dbg !1895, !tbaa !1891
  tail call void @free(i8* noundef %13) #32, !dbg !1896
  %14 = add nuw nsw i64 %11, 1, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %14, metadata !1881, metadata !DIExpression()), !dbg !1885
  %15 = icmp eq i64 %14, %5, !dbg !1886
  br i1 %15, label %6, label %10, !dbg !1888, !llvm.loop !1898

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !1900
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1902, !tbaa !1903
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1904, !tbaa !1891
  br label %17, !dbg !1905

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1906
  br i1 %18, label %21, label %19, !dbg !1908

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1909
  tail call void @free(i8* noundef %20) #32, !dbg !1911
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1912, !tbaa !435
  br label %21, !dbg !1913

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1914, !tbaa !521
  ret void, !dbg !1915
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1918, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8* %1, metadata !1919, metadata !DIExpression()), !dbg !1920
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1921
  ret i8* %3, !dbg !1922
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1923 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1927, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8* %1, metadata !1928, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i64 %2, metadata !1929, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1930, metadata !DIExpression()), !dbg !1943
  %6 = tail call i32* @__errno_location() #35, !dbg !1944
  %7 = load i32, i32* %6, align 4, !dbg !1944, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %7, metadata !1931, metadata !DIExpression()), !dbg !1943
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1945, !tbaa !435
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1932, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1933, metadata !DIExpression()), !dbg !1943
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1946
  br i1 %9, label %10, label %11, !dbg !1946

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !1948
  unreachable, !dbg !1948

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1949, !tbaa !521
  %13 = icmp sgt i32 %12, %0, !dbg !1950
  br i1 %13, label %36, label %14, !dbg !1951

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1952
  call void @llvm.dbg.value(metadata i1 %15, metadata !1934, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1953
  %16 = bitcast i64* %5 to i8*, !dbg !1954
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1954
  %17 = sext i32 %12 to i64, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %17, metadata !1937, metadata !DIExpression()), !dbg !1953
  store i64 %17, i64* %5, align 8, !dbg !1956, !tbaa !1875
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !1957
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1957
  %20 = add nuw nsw i32 %0, 1, !dbg !1958
  %21 = sub i32 %20, %12, !dbg !1959
  %22 = sext i32 %21 to i64, !dbg !1960
  call void @llvm.dbg.value(metadata i64* %5, metadata !1937, metadata !DIExpression(DW_OP_deref)), !dbg !1953
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !1961
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1961
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1932, metadata !DIExpression()), !dbg !1943
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1962, !tbaa !435
  br i1 %15, label %25, label %26, !dbg !1963

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1964, !tbaa.struct !1966
  br label %26, !dbg !1967

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !1968, !tbaa !521
  %28 = sext i32 %27 to i64, !dbg !1969
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1969
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1970
  %31 = load i64, i64* %5, align 8, !dbg !1971, !tbaa !1875
  call void @llvm.dbg.value(metadata i64 %31, metadata !1937, metadata !DIExpression()), !dbg !1953
  %32 = sub nsw i64 %31, %28, !dbg !1972
  %33 = shl i64 %32, 4, !dbg !1973
  call void @llvm.dbg.value(metadata i8* %30, metadata !1360, metadata !DIExpression()) #32, !dbg !1974
  call void @llvm.dbg.value(metadata i32 0, metadata !1363, metadata !DIExpression()) #32, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %33, metadata !1364, metadata !DIExpression()) #32, !dbg !1974
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !1976
  %34 = load i64, i64* %5, align 8, !dbg !1977, !tbaa !1875
  call void @llvm.dbg.value(metadata i64 %34, metadata !1937, metadata !DIExpression()), !dbg !1953
  %35 = trunc i64 %34 to i32, !dbg !1977
  store i32 %35, i32* @nslots, align 4, !dbg !1978, !tbaa !521
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1979
  br label %36, !dbg !1980

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1943
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1932, metadata !DIExpression()), !dbg !1943
  %38 = zext i32 %0 to i64, !dbg !1981
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !1982
  %40 = load i64, i64* %39, align 8, !dbg !1982, !tbaa !1903
  call void @llvm.dbg.value(metadata i64 %40, metadata !1938, metadata !DIExpression()), !dbg !1983
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !1984
  %42 = load i8*, i8** %41, align 8, !dbg !1984, !tbaa !1891
  call void @llvm.dbg.value(metadata i8* %42, metadata !1940, metadata !DIExpression()), !dbg !1983
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1985
  %44 = load i32, i32* %43, align 4, !dbg !1985, !tbaa !1208
  %45 = or i32 %44, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %45, metadata !1941, metadata !DIExpression()), !dbg !1983
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1987
  %47 = load i32, i32* %46, align 8, !dbg !1987, !tbaa !1157
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1988
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1989
  %50 = load i8*, i8** %49, align 8, !dbg !1989, !tbaa !1230
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1990
  %52 = load i8*, i8** %51, align 8, !dbg !1990, !tbaa !1233
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %53, metadata !1942, metadata !DIExpression()), !dbg !1983
  %54 = icmp ugt i64 %40, %53, !dbg !1992
  br i1 %54, label %65, label %55, !dbg !1994

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %56, metadata !1938, metadata !DIExpression()), !dbg !1983
  store i64 %56, i64* %39, align 8, !dbg !1997, !tbaa !1903
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1998
  br i1 %57, label %59, label %58, !dbg !2000

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !2001
  br label %59, !dbg !2001

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !2002
  call void @llvm.dbg.value(metadata i8* %60, metadata !1940, metadata !DIExpression()), !dbg !1983
  store i8* %60, i8** %41, align 8, !dbg !2003, !tbaa !1891
  %61 = load i32, i32* %46, align 8, !dbg !2004, !tbaa !1157
  %62 = load i8*, i8** %49, align 8, !dbg !2005, !tbaa !1230
  %63 = load i8*, i8** %51, align 8, !dbg !2006, !tbaa !1233
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2007
  br label %65, !dbg !2008

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !1983
  call void @llvm.dbg.value(metadata i8* %66, metadata !1940, metadata !DIExpression()), !dbg !1983
  store i32 %7, i32* %6, align 4, !dbg !2009, !tbaa !521
  ret i8* %66, !dbg !2010
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2011 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2015, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8* %1, metadata !2016, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i64 %2, metadata !2017, metadata !DIExpression()), !dbg !2018
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2019
  ret i8* %4, !dbg !2020
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2021 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2023, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i32 0, metadata !1918, metadata !DIExpression()) #32, !dbg !2025
  call void @llvm.dbg.value(metadata i8* %0, metadata !1919, metadata !DIExpression()) #32, !dbg !2025
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2027
  ret i8* %2, !dbg !2028
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2029 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2033, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i64 %1, metadata !2034, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i32 0, metadata !2015, metadata !DIExpression()) #32, !dbg !2036
  call void @llvm.dbg.value(metadata i8* %0, metadata !2016, metadata !DIExpression()) #32, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %1, metadata !2017, metadata !DIExpression()) #32, !dbg !2036
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2038
  ret i8* %3, !dbg !2039
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2040 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2044, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 %1, metadata !2045, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %2, metadata !2046, metadata !DIExpression()), !dbg !2048
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2049
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2049
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2047, metadata !DIExpression()), !dbg !2050
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2051), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %1, metadata !2055, metadata !DIExpression()) #32, !dbg !2061
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2060, metadata !DIExpression()) #32, !dbg !2063
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2063, !alias.scope !2051
  %6 = icmp eq i32 %1, 10, !dbg !2064
  br i1 %6, label %7, label %8, !dbg !2066

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2067, !noalias !2051
  unreachable, !dbg !2067

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2068
  store i32 %1, i32* %9, align 8, !dbg !2069, !tbaa !1157, !alias.scope !2051
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2070
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2071
  ret i8* %10, !dbg !2072
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2073 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2077, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 %1, metadata !2078, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %2, metadata !2079, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %3, metadata !2080, metadata !DIExpression()), !dbg !2082
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2083
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2083
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2081, metadata !DIExpression()), !dbg !2084
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2085), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %1, metadata !2055, metadata !DIExpression()) #32, !dbg !2089
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2060, metadata !DIExpression()) #32, !dbg !2091
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2091, !alias.scope !2085
  %7 = icmp eq i32 %1, 10, !dbg !2092
  br i1 %7, label %8, label %9, !dbg !2093

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2094, !noalias !2085
  unreachable, !dbg !2094

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2095
  store i32 %1, i32* %10, align 8, !dbg !2096, !tbaa !1157, !alias.scope !2085
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2098
  ret i8* %11, !dbg !2099
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2100 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2104, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %1, metadata !2105, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 0, metadata !2044, metadata !DIExpression()) #32, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %0, metadata !2045, metadata !DIExpression()) #32, !dbg !2107
  call void @llvm.dbg.value(metadata i8* %1, metadata !2046, metadata !DIExpression()) #32, !dbg !2107
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2109
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2109
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2047, metadata !DIExpression()) #32, !dbg !2110
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111) #32, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %0, metadata !2055, metadata !DIExpression()) #32, !dbg !2115
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2060, metadata !DIExpression()) #32, !dbg !2117
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2117, !alias.scope !2111
  %5 = icmp eq i32 %0, 10, !dbg !2118
  br i1 %5, label %6, label %7, !dbg !2119

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2120, !noalias !2111
  unreachable, !dbg !2120

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2121
  store i32 %0, i32* %8, align 8, !dbg !2122, !tbaa !1157, !alias.scope !2111
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2123
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2124
  ret i8* %9, !dbg !2125
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2126 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2130, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8* %1, metadata !2131, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %2, metadata !2132, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 0, metadata !2077, metadata !DIExpression()) #32, !dbg !2134
  call void @llvm.dbg.value(metadata i32 %0, metadata !2078, metadata !DIExpression()) #32, !dbg !2134
  call void @llvm.dbg.value(metadata i8* %1, metadata !2079, metadata !DIExpression()) #32, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %2, metadata !2080, metadata !DIExpression()) #32, !dbg !2134
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2136
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2136
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2081, metadata !DIExpression()) #32, !dbg !2137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2138) #32, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %0, metadata !2055, metadata !DIExpression()) #32, !dbg !2142
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2060, metadata !DIExpression()) #32, !dbg !2144
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2144, !alias.scope !2138
  %6 = icmp eq i32 %0, 10, !dbg !2145
  br i1 %6, label %7, label %8, !dbg !2146

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2147, !noalias !2138
  unreachable, !dbg !2147

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2148
  store i32 %0, i32* %9, align 8, !dbg !2149, !tbaa !1157, !alias.scope !2138
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2150
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2151
  ret i8* %10, !dbg !2152
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2153 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2157, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %1, metadata !2158, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8 %2, metadata !2159, metadata !DIExpression()), !dbg !2161
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2162
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2162
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2160, metadata !DIExpression()), !dbg !2163
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2164, !tbaa.struct !2165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1175, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 %2, metadata !1176, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i32 1, metadata !1177, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 %2, metadata !1178, metadata !DIExpression()), !dbg !2166
  %6 = lshr i8 %2, 5, !dbg !2168
  %7 = zext i8 %6 to i64, !dbg !2168
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2169
  call void @llvm.dbg.value(metadata i32* %8, metadata !1179, metadata !DIExpression()), !dbg !2166
  %9 = and i8 %2, 31, !dbg !2170
  %10 = zext i8 %9 to i32, !dbg !2170
  call void @llvm.dbg.value(metadata i32 %10, metadata !1181, metadata !DIExpression()), !dbg !2166
  %11 = load i32, i32* %8, align 4, !dbg !2171, !tbaa !521
  %12 = lshr i32 %11, %10, !dbg !2172
  %13 = and i32 %12, 1, !dbg !2173
  call void @llvm.dbg.value(metadata i32 %13, metadata !1182, metadata !DIExpression()), !dbg !2166
  %14 = xor i32 %13, 1, !dbg !2174
  %15 = shl i32 %14, %10, !dbg !2175
  %16 = xor i32 %15, %11, !dbg !2176
  store i32 %16, i32* %8, align 4, !dbg !2176, !tbaa !521
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2177
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2178
  ret i8* %17, !dbg !2179
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2180 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2184, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i8 %1, metadata !2185, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i8* %0, metadata !2157, metadata !DIExpression()) #32, !dbg !2187
  call void @llvm.dbg.value(metadata i64 -1, metadata !2158, metadata !DIExpression()) #32, !dbg !2187
  call void @llvm.dbg.value(metadata i8 %1, metadata !2159, metadata !DIExpression()) #32, !dbg !2187
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2189
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2189
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2160, metadata !DIExpression()) #32, !dbg !2190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2191, !tbaa.struct !2165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1175, metadata !DIExpression()) #32, !dbg !2192
  call void @llvm.dbg.value(metadata i8 %1, metadata !1176, metadata !DIExpression()) #32, !dbg !2192
  call void @llvm.dbg.value(metadata i32 1, metadata !1177, metadata !DIExpression()) #32, !dbg !2192
  call void @llvm.dbg.value(metadata i8 %1, metadata !1178, metadata !DIExpression()) #32, !dbg !2192
  %5 = lshr i8 %1, 5, !dbg !2194
  %6 = zext i8 %5 to i64, !dbg !2194
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2195
  call void @llvm.dbg.value(metadata i32* %7, metadata !1179, metadata !DIExpression()) #32, !dbg !2192
  %8 = and i8 %1, 31, !dbg !2196
  %9 = zext i8 %8 to i32, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %9, metadata !1181, metadata !DIExpression()) #32, !dbg !2192
  %10 = load i32, i32* %7, align 4, !dbg !2197, !tbaa !521
  %11 = lshr i32 %10, %9, !dbg !2198
  %12 = and i32 %11, 1, !dbg !2199
  call void @llvm.dbg.value(metadata i32 %12, metadata !1182, metadata !DIExpression()) #32, !dbg !2192
  %13 = xor i32 %12, 1, !dbg !2200
  %14 = shl i32 %13, %9, !dbg !2201
  %15 = xor i32 %14, %10, !dbg !2202
  store i32 %15, i32* %7, align 4, !dbg !2202, !tbaa !521
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2203
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2204
  ret i8* %16, !dbg !2205
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2206 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2208, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8* %0, metadata !2184, metadata !DIExpression()) #32, !dbg !2210
  call void @llvm.dbg.value(metadata i8 58, metadata !2185, metadata !DIExpression()) #32, !dbg !2210
  call void @llvm.dbg.value(metadata i8* %0, metadata !2157, metadata !DIExpression()) #32, !dbg !2212
  call void @llvm.dbg.value(metadata i64 -1, metadata !2158, metadata !DIExpression()) #32, !dbg !2212
  call void @llvm.dbg.value(metadata i8 58, metadata !2159, metadata !DIExpression()) #32, !dbg !2212
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2214
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2214
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2160, metadata !DIExpression()) #32, !dbg !2215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2216, !tbaa.struct !2165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1175, metadata !DIExpression()) #32, !dbg !2217
  call void @llvm.dbg.value(metadata i8 58, metadata !1176, metadata !DIExpression()) #32, !dbg !2217
  call void @llvm.dbg.value(metadata i32 1, metadata !1177, metadata !DIExpression()) #32, !dbg !2217
  call void @llvm.dbg.value(metadata i8 58, metadata !1178, metadata !DIExpression()) #32, !dbg !2217
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2219
  call void @llvm.dbg.value(metadata i32* %4, metadata !1179, metadata !DIExpression()) #32, !dbg !2217
  call void @llvm.dbg.value(metadata i32 26, metadata !1181, metadata !DIExpression()) #32, !dbg !2217
  %5 = load i32, i32* %4, align 4, !dbg !2220, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %5, metadata !1182, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2217
  %6 = or i32 %5, 67108864, !dbg !2221
  store i32 %6, i32* %4, align 4, !dbg !2221, !tbaa !521
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2222
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2223
  ret i8* %7, !dbg !2224
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2225 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2227, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i64 %1, metadata !2228, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8* %0, metadata !2157, metadata !DIExpression()) #32, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %1, metadata !2158, metadata !DIExpression()) #32, !dbg !2230
  call void @llvm.dbg.value(metadata i8 58, metadata !2159, metadata !DIExpression()) #32, !dbg !2230
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2232
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2232
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2160, metadata !DIExpression()) #32, !dbg !2233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2234, !tbaa.struct !2165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1175, metadata !DIExpression()) #32, !dbg !2235
  call void @llvm.dbg.value(metadata i8 58, metadata !1176, metadata !DIExpression()) #32, !dbg !2235
  call void @llvm.dbg.value(metadata i32 1, metadata !1177, metadata !DIExpression()) #32, !dbg !2235
  call void @llvm.dbg.value(metadata i8 58, metadata !1178, metadata !DIExpression()) #32, !dbg !2235
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2237
  call void @llvm.dbg.value(metadata i32* %5, metadata !1179, metadata !DIExpression()) #32, !dbg !2235
  call void @llvm.dbg.value(metadata i32 26, metadata !1181, metadata !DIExpression()) #32, !dbg !2235
  %6 = load i32, i32* %5, align 4, !dbg !2238, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %6, metadata !1182, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2235
  %7 = or i32 %6, 67108864, !dbg !2239
  store i32 %7, i32* %5, align 4, !dbg !2239, !tbaa !521
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2241
  ret i8* %8, !dbg !2242
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2243 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2245, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 %1, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8* %2, metadata !2247, metadata !DIExpression()), !dbg !2249
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2250
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2250
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2248, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i32 %1, metadata !2055, metadata !DIExpression()) #32, !dbg !2252
  call void @llvm.dbg.value(metadata i32 0, metadata !2060, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2252
  %6 = icmp eq i32 %1, 10, !dbg !2254
  br i1 %6, label %7, label %8, !dbg !2255

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2256, !noalias !2257
  unreachable, !dbg !2256

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2060, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2252
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2260
  store i32 %1, i32* %9, align 8, !dbg !2260, !tbaa.struct !2165
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2260
  %11 = bitcast i32* %10 to i8*, !dbg !2260
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1175, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 58, metadata !1176, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 1, metadata !1177, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8 58, metadata !1178, metadata !DIExpression()), !dbg !2261
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2263
  call void @llvm.dbg.value(metadata i32* %12, metadata !1179, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 26, metadata !1181, metadata !DIExpression()), !dbg !2261
  %13 = load i32, i32* %12, align 4, !dbg !2264, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %13, metadata !1182, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2261
  %14 = or i32 %13, 67108864, !dbg !2265
  store i32 %14, i32* %12, align 4, !dbg !2265, !tbaa !521
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2266
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2267
  ret i8* %15, !dbg !2268
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2269 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2273, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %1, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %2, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %3, metadata !2276, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 %0, metadata !2278, metadata !DIExpression()) #32, !dbg !2288
  call void @llvm.dbg.value(metadata i8* %1, metadata !2283, metadata !DIExpression()) #32, !dbg !2288
  call void @llvm.dbg.value(metadata i8* %2, metadata !2284, metadata !DIExpression()) #32, !dbg !2288
  call void @llvm.dbg.value(metadata i8* %3, metadata !2285, metadata !DIExpression()) #32, !dbg !2288
  call void @llvm.dbg.value(metadata i64 -1, metadata !2286, metadata !DIExpression()) #32, !dbg !2288
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2290
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2290
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2287, metadata !DIExpression()) #32, !dbg !2291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2292, !tbaa.struct !2165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1215, metadata !DIExpression()) #32, !dbg !2293
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()) #32, !dbg !2293
  call void @llvm.dbg.value(metadata i8* %2, metadata !1217, metadata !DIExpression()) #32, !dbg !2293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1215, metadata !DIExpression()) #32, !dbg !2293
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2295
  store i32 10, i32* %7, align 8, !dbg !2296, !tbaa !1157
  %8 = icmp ne i8* %1, null, !dbg !2297
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2298
  br i1 %10, label %12, label %11, !dbg !2298

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2299
  unreachable, !dbg !2299

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2300
  store i8* %1, i8** %13, align 8, !dbg !2301, !tbaa !1230
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2302
  store i8* %2, i8** %14, align 8, !dbg !2303, !tbaa !1233
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2304
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2305
  ret i8* %15, !dbg !2306
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2279 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2278, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* %1, metadata !2283, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* %2, metadata !2284, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* %3, metadata !2285, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %4, metadata !2286, metadata !DIExpression()), !dbg !2307
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2308
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2308
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2287, metadata !DIExpression()), !dbg !2309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2310, !tbaa.struct !2165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1215, metadata !DIExpression()) #32, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()) #32, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %2, metadata !1217, metadata !DIExpression()) #32, !dbg !2311
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1215, metadata !DIExpression()) #32, !dbg !2311
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2313
  store i32 10, i32* %8, align 8, !dbg !2314, !tbaa !1157
  %9 = icmp ne i8* %1, null, !dbg !2315
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2316
  br i1 %11, label %13, label %12, !dbg !2316

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2317
  unreachable, !dbg !2317

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2318
  store i8* %1, i8** %14, align 8, !dbg !2319, !tbaa !1230
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2320
  store i8* %2, i8** %15, align 8, !dbg !2321, !tbaa !1233
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2322
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2323
  ret i8* %16, !dbg !2324
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2325 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2329, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8* %1, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8* %2, metadata !2331, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 0, metadata !2273, metadata !DIExpression()) #32, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %0, metadata !2274, metadata !DIExpression()) #32, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %1, metadata !2275, metadata !DIExpression()) #32, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %2, metadata !2276, metadata !DIExpression()) #32, !dbg !2333
  call void @llvm.dbg.value(metadata i32 0, metadata !2278, metadata !DIExpression()) #32, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %0, metadata !2283, metadata !DIExpression()) #32, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %1, metadata !2284, metadata !DIExpression()) #32, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %2, metadata !2285, metadata !DIExpression()) #32, !dbg !2335
  call void @llvm.dbg.value(metadata i64 -1, metadata !2286, metadata !DIExpression()) #32, !dbg !2335
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2337
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2337
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2287, metadata !DIExpression()) #32, !dbg !2338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2339, !tbaa.struct !2165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1215, metadata !DIExpression()) #32, !dbg !2340
  call void @llvm.dbg.value(metadata i8* %0, metadata !1216, metadata !DIExpression()) #32, !dbg !2340
  call void @llvm.dbg.value(metadata i8* %1, metadata !1217, metadata !DIExpression()) #32, !dbg !2340
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1215, metadata !DIExpression()) #32, !dbg !2340
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2342
  store i32 10, i32* %6, align 8, !dbg !2343, !tbaa !1157
  %7 = icmp ne i8* %0, null, !dbg !2344
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2345
  br i1 %9, label %11, label %10, !dbg !2345

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2346
  unreachable, !dbg !2346

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2347
  store i8* %0, i8** %12, align 8, !dbg !2348, !tbaa !1230
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2349
  store i8* %1, i8** %13, align 8, !dbg !2350, !tbaa !1233
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2351
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2352
  ret i8* %14, !dbg !2353
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2354 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2358, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %1, metadata !2359, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %2, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %3, metadata !2361, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 0, metadata !2278, metadata !DIExpression()) #32, !dbg !2363
  call void @llvm.dbg.value(metadata i8* %0, metadata !2283, metadata !DIExpression()) #32, !dbg !2363
  call void @llvm.dbg.value(metadata i8* %1, metadata !2284, metadata !DIExpression()) #32, !dbg !2363
  call void @llvm.dbg.value(metadata i8* %2, metadata !2285, metadata !DIExpression()) #32, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %3, metadata !2286, metadata !DIExpression()) #32, !dbg !2363
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2365
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2365
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2287, metadata !DIExpression()) #32, !dbg !2366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2367, !tbaa.struct !2165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1215, metadata !DIExpression()) #32, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %0, metadata !1216, metadata !DIExpression()) #32, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %1, metadata !1217, metadata !DIExpression()) #32, !dbg !2368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1215, metadata !DIExpression()) #32, !dbg !2368
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2370
  store i32 10, i32* %7, align 8, !dbg !2371, !tbaa !1157
  %8 = icmp ne i8* %0, null, !dbg !2372
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2373
  br i1 %10, label %12, label %11, !dbg !2373

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2374
  unreachable, !dbg !2374

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2375
  store i8* %0, i8** %13, align 8, !dbg !2376, !tbaa !1230
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2377
  store i8* %1, i8** %14, align 8, !dbg !2378, !tbaa !1233
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2379
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2380
  ret i8* %15, !dbg !2381
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2382 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2386, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %1, metadata !2387, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %2, metadata !2388, metadata !DIExpression()), !dbg !2389
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2390
  ret i8* %4, !dbg !2391
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2396, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i64 %1, metadata !2397, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 0, metadata !2386, metadata !DIExpression()) #32, !dbg !2399
  call void @llvm.dbg.value(metadata i8* %0, metadata !2387, metadata !DIExpression()) #32, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %1, metadata !2388, metadata !DIExpression()) #32, !dbg !2399
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2401
  ret i8* %3, !dbg !2402
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2403 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* %1, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %0, metadata !2386, metadata !DIExpression()) #32, !dbg !2410
  call void @llvm.dbg.value(metadata i8* %1, metadata !2387, metadata !DIExpression()) #32, !dbg !2410
  call void @llvm.dbg.value(metadata i64 -1, metadata !2388, metadata !DIExpression()) #32, !dbg !2410
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2412
  ret i8* %3, !dbg !2413
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 0, metadata !2407, metadata !DIExpression()) #32, !dbg !2420
  call void @llvm.dbg.value(metadata i8* %0, metadata !2408, metadata !DIExpression()) #32, !dbg !2420
  call void @llvm.dbg.value(metadata i32 0, metadata !2386, metadata !DIExpression()) #32, !dbg !2422
  call void @llvm.dbg.value(metadata i8* %0, metadata !2387, metadata !DIExpression()) #32, !dbg !2422
  call void @llvm.dbg.value(metadata i64 -1, metadata !2388, metadata !DIExpression()) #32, !dbg !2422
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2424
  ret i8* %2, !dbg !2425
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2426 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2465, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %1, metadata !2466, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %2, metadata !2467, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %3, metadata !2468, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8** %4, metadata !2469, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %5, metadata !2470, metadata !DIExpression()), !dbg !2471
  %7 = icmp eq i8* %1, null, !dbg !2472
  br i1 %7, label %10, label %8, !dbg !2474

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2475
  br label %12, !dbg !2475

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.85, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2476
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.87, i64 0, i64 0), i32 noundef 5) #32, !dbg !2477
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2477
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.88, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2478
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.89, i64 0, i64 0), i32 noundef 5) #32, !dbg !2479
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.90, i64 0, i64 0)) #32, !dbg !2479
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.88, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2480
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
  ], !dbg !2481

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !2482
  %21 = load i8*, i8** %4, align 8, !dbg !2482, !tbaa !435
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2482
  br label %147, !dbg !2484

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.92, i64 0, i64 0), i32 noundef 5) #32, !dbg !2485
  %25 = load i8*, i8** %4, align 8, !dbg !2485, !tbaa !435
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2485
  %27 = load i8*, i8** %26, align 8, !dbg !2485, !tbaa !435
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2485
  br label %147, !dbg !2486

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.93, i64 0, i64 0), i32 noundef 5) #32, !dbg !2487
  %31 = load i8*, i8** %4, align 8, !dbg !2487, !tbaa !435
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2487
  %33 = load i8*, i8** %32, align 8, !dbg !2487, !tbaa !435
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2487
  %35 = load i8*, i8** %34, align 8, !dbg !2487, !tbaa !435
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2487
  br label %147, !dbg !2488

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.94, i64 0, i64 0), i32 noundef 5) #32, !dbg !2489
  %39 = load i8*, i8** %4, align 8, !dbg !2489, !tbaa !435
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2489
  %41 = load i8*, i8** %40, align 8, !dbg !2489, !tbaa !435
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2489
  %43 = load i8*, i8** %42, align 8, !dbg !2489, !tbaa !435
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2489
  %45 = load i8*, i8** %44, align 8, !dbg !2489, !tbaa !435
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2489
  br label %147, !dbg !2490

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.95, i64 0, i64 0), i32 noundef 5) #32, !dbg !2491
  %49 = load i8*, i8** %4, align 8, !dbg !2491, !tbaa !435
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2491
  %51 = load i8*, i8** %50, align 8, !dbg !2491, !tbaa !435
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2491
  %53 = load i8*, i8** %52, align 8, !dbg !2491, !tbaa !435
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2491
  %55 = load i8*, i8** %54, align 8, !dbg !2491, !tbaa !435
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2491
  %57 = load i8*, i8** %56, align 8, !dbg !2491, !tbaa !435
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2491
  br label %147, !dbg !2492

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.96, i64 0, i64 0), i32 noundef 5) #32, !dbg !2493
  %61 = load i8*, i8** %4, align 8, !dbg !2493, !tbaa !435
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2493
  %63 = load i8*, i8** %62, align 8, !dbg !2493, !tbaa !435
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2493
  %65 = load i8*, i8** %64, align 8, !dbg !2493, !tbaa !435
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2493
  %67 = load i8*, i8** %66, align 8, !dbg !2493, !tbaa !435
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2493
  %69 = load i8*, i8** %68, align 8, !dbg !2493, !tbaa !435
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2493
  %71 = load i8*, i8** %70, align 8, !dbg !2493, !tbaa !435
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2493
  br label %147, !dbg !2494

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.97, i64 0, i64 0), i32 noundef 5) #32, !dbg !2495
  %75 = load i8*, i8** %4, align 8, !dbg !2495, !tbaa !435
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2495
  %77 = load i8*, i8** %76, align 8, !dbg !2495, !tbaa !435
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2495
  %79 = load i8*, i8** %78, align 8, !dbg !2495, !tbaa !435
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2495
  %81 = load i8*, i8** %80, align 8, !dbg !2495, !tbaa !435
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2495
  %83 = load i8*, i8** %82, align 8, !dbg !2495, !tbaa !435
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2495
  %85 = load i8*, i8** %84, align 8, !dbg !2495, !tbaa !435
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2495
  %87 = load i8*, i8** %86, align 8, !dbg !2495, !tbaa !435
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2495
  br label %147, !dbg !2496

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.98, i64 0, i64 0), i32 noundef 5) #32, !dbg !2497
  %91 = load i8*, i8** %4, align 8, !dbg !2497, !tbaa !435
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2497
  %93 = load i8*, i8** %92, align 8, !dbg !2497, !tbaa !435
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2497
  %95 = load i8*, i8** %94, align 8, !dbg !2497, !tbaa !435
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2497
  %97 = load i8*, i8** %96, align 8, !dbg !2497, !tbaa !435
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2497
  %99 = load i8*, i8** %98, align 8, !dbg !2497, !tbaa !435
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2497
  %101 = load i8*, i8** %100, align 8, !dbg !2497, !tbaa !435
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2497
  %103 = load i8*, i8** %102, align 8, !dbg !2497, !tbaa !435
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2497
  %105 = load i8*, i8** %104, align 8, !dbg !2497, !tbaa !435
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2497
  br label %147, !dbg !2498

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.99, i64 0, i64 0), i32 noundef 5) #32, !dbg !2499
  %109 = load i8*, i8** %4, align 8, !dbg !2499, !tbaa !435
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2499
  %111 = load i8*, i8** %110, align 8, !dbg !2499, !tbaa !435
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2499
  %113 = load i8*, i8** %112, align 8, !dbg !2499, !tbaa !435
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2499
  %115 = load i8*, i8** %114, align 8, !dbg !2499, !tbaa !435
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2499
  %117 = load i8*, i8** %116, align 8, !dbg !2499, !tbaa !435
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2499
  %119 = load i8*, i8** %118, align 8, !dbg !2499, !tbaa !435
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2499
  %121 = load i8*, i8** %120, align 8, !dbg !2499, !tbaa !435
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2499
  %123 = load i8*, i8** %122, align 8, !dbg !2499, !tbaa !435
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2499
  %125 = load i8*, i8** %124, align 8, !dbg !2499, !tbaa !435
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2499
  br label %147, !dbg !2500

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.100, i64 0, i64 0), i32 noundef 5) #32, !dbg !2501
  %129 = load i8*, i8** %4, align 8, !dbg !2501, !tbaa !435
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2501
  %131 = load i8*, i8** %130, align 8, !dbg !2501, !tbaa !435
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2501
  %133 = load i8*, i8** %132, align 8, !dbg !2501, !tbaa !435
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2501
  %135 = load i8*, i8** %134, align 8, !dbg !2501, !tbaa !435
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2501
  %137 = load i8*, i8** %136, align 8, !dbg !2501, !tbaa !435
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2501
  %139 = load i8*, i8** %138, align 8, !dbg !2501, !tbaa !435
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2501
  %141 = load i8*, i8** %140, align 8, !dbg !2501, !tbaa !435
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2501
  %143 = load i8*, i8** %142, align 8, !dbg !2501, !tbaa !435
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2501
  %145 = load i8*, i8** %144, align 8, !dbg !2501, !tbaa !435
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2501
  br label %147, !dbg !2502

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2503
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2504 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2508, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8* %1, metadata !2509, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8* %2, metadata !2510, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8* %3, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8** %4, metadata !2512, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 0, metadata !2513, metadata !DIExpression()), !dbg !2514
  br label %6, !dbg !2515

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2517
  call void @llvm.dbg.value(metadata i64 %7, metadata !2513, metadata !DIExpression()), !dbg !2514
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2518
  %9 = load i8*, i8** %8, align 8, !dbg !2518, !tbaa !435
  %10 = icmp eq i8* %9, null, !dbg !2520
  %11 = add i64 %7, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %11, metadata !2513, metadata !DIExpression()), !dbg !2514
  br i1 %10, label %12, label %6, !dbg !2520, !llvm.loop !2522

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2524
  ret void, !dbg !2525
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2526 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2541, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8* %1, metadata !2542, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8* %2, metadata !2543, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8* %3, metadata !2544, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2545, metadata !DIExpression()), !dbg !2550
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2551
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2551
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2547, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 0, metadata !2546, metadata !DIExpression()), !dbg !2549
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2546, metadata !DIExpression()), !dbg !2549
  %11 = load i32, i32* %8, align 8, !dbg !2553
  %12 = icmp sgt i32 %11, -1, !dbg !2553
  br i1 %12, label %20, label %13, !dbg !2553

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2553
  store i32 %14, i32* %8, align 8, !dbg !2553
  %15 = icmp ult i32 %11, -7, !dbg !2553
  br i1 %15, label %16, label %20, !dbg !2553

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2553
  %18 = sext i32 %11 to i64, !dbg !2553
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2553
  br label %24, !dbg !2553

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2553
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2553
  store i8* %23, i8** %10, align 8, !dbg !2553
  br label %24, !dbg !2553

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2553
  %28 = load i8*, i8** %27, align 8, !dbg !2553
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2556
  store i8* %28, i8** %29, align 8, !dbg !2557, !tbaa !435
  %30 = icmp eq i8* %28, null, !dbg !2558
  br i1 %30, label %210, label %31, !dbg !2559

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 1, metadata !2546, metadata !DIExpression()), !dbg !2549
  %32 = icmp sgt i32 %25, -1, !dbg !2553
  br i1 %32, label %40, label %33, !dbg !2553

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2553
  store i32 %34, i32* %8, align 8, !dbg !2553
  %35 = icmp ult i32 %25, -7, !dbg !2553
  br i1 %35, label %36, label %40, !dbg !2553

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2553
  %38 = sext i32 %25 to i64, !dbg !2553
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2553
  br label %44, !dbg !2553

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2553
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2553
  store i8* %43, i8** %10, align 8, !dbg !2553
  br label %44, !dbg !2553

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2553
  %48 = load i8*, i8** %47, align 8, !dbg !2553
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2556
  store i8* %48, i8** %49, align 8, !dbg !2557, !tbaa !435
  %50 = icmp eq i8* %48, null, !dbg !2558
  br i1 %50, label %210, label %51, !dbg !2559

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 2, metadata !2546, metadata !DIExpression()), !dbg !2549
  %52 = icmp sgt i32 %45, -1, !dbg !2553
  br i1 %52, label %60, label %53, !dbg !2553

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2553
  store i32 %54, i32* %8, align 8, !dbg !2553
  %55 = icmp ult i32 %45, -7, !dbg !2553
  br i1 %55, label %56, label %60, !dbg !2553

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2553
  %58 = sext i32 %45 to i64, !dbg !2553
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2553
  br label %64, !dbg !2553

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2553
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2553
  store i8* %63, i8** %10, align 8, !dbg !2553
  br label %64, !dbg !2553

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2553
  %68 = load i8*, i8** %67, align 8, !dbg !2553
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2556
  store i8* %68, i8** %69, align 8, !dbg !2557, !tbaa !435
  %70 = icmp eq i8* %68, null, !dbg !2558
  br i1 %70, label %210, label %71, !dbg !2559

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 3, metadata !2546, metadata !DIExpression()), !dbg !2549
  %72 = icmp sgt i32 %65, -1, !dbg !2553
  br i1 %72, label %80, label %73, !dbg !2553

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2553
  store i32 %74, i32* %8, align 8, !dbg !2553
  %75 = icmp ult i32 %65, -7, !dbg !2553
  br i1 %75, label %76, label %80, !dbg !2553

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2553
  %78 = sext i32 %65 to i64, !dbg !2553
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2553
  br label %84, !dbg !2553

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2553
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2553
  store i8* %83, i8** %10, align 8, !dbg !2553
  br label %84, !dbg !2553

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2553
  %88 = load i8*, i8** %87, align 8, !dbg !2553
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2556
  store i8* %88, i8** %89, align 8, !dbg !2557, !tbaa !435
  %90 = icmp eq i8* %88, null, !dbg !2558
  br i1 %90, label %210, label %91, !dbg !2559

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 4, metadata !2546, metadata !DIExpression()), !dbg !2549
  %92 = icmp sgt i32 %85, -1, !dbg !2553
  br i1 %92, label %100, label %93, !dbg !2553

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2553
  store i32 %94, i32* %8, align 8, !dbg !2553
  %95 = icmp ult i32 %85, -7, !dbg !2553
  br i1 %95, label %96, label %100, !dbg !2553

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2553
  %98 = sext i32 %85 to i64, !dbg !2553
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2553
  br label %104, !dbg !2553

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2553
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2553
  store i8* %103, i8** %10, align 8, !dbg !2553
  br label %104, !dbg !2553

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2553
  %108 = load i8*, i8** %107, align 8, !dbg !2553
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2556
  store i8* %108, i8** %109, align 8, !dbg !2557, !tbaa !435
  %110 = icmp eq i8* %108, null, !dbg !2558
  br i1 %110, label %210, label %111, !dbg !2559

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 5, metadata !2546, metadata !DIExpression()), !dbg !2549
  %112 = icmp sgt i32 %105, -1, !dbg !2553
  br i1 %112, label %120, label %113, !dbg !2553

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2553
  store i32 %114, i32* %8, align 8, !dbg !2553
  %115 = icmp ult i32 %105, -7, !dbg !2553
  br i1 %115, label %116, label %120, !dbg !2553

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2553
  %118 = sext i32 %105 to i64, !dbg !2553
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2553
  br label %124, !dbg !2553

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2553
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2553
  store i8* %123, i8** %10, align 8, !dbg !2553
  br label %124, !dbg !2553

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2553
  %128 = load i8*, i8** %127, align 8, !dbg !2553
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2556
  store i8* %128, i8** %129, align 8, !dbg !2557, !tbaa !435
  %130 = icmp eq i8* %128, null, !dbg !2558
  br i1 %130, label %210, label %131, !dbg !2559

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 6, metadata !2546, metadata !DIExpression()), !dbg !2549
  %132 = icmp sgt i32 %125, -1, !dbg !2553
  br i1 %132, label %140, label %133, !dbg !2553

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2553
  store i32 %134, i32* %8, align 8, !dbg !2553
  %135 = icmp ult i32 %125, -7, !dbg !2553
  br i1 %135, label %136, label %140, !dbg !2553

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2553
  %138 = sext i32 %125 to i64, !dbg !2553
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2553
  br label %144, !dbg !2553

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2553
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2553
  store i8* %143, i8** %10, align 8, !dbg !2553
  br label %144, !dbg !2553

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2553
  %148 = load i8*, i8** %147, align 8, !dbg !2553
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2556
  store i8* %148, i8** %149, align 8, !dbg !2557, !tbaa !435
  %150 = icmp eq i8* %148, null, !dbg !2558
  br i1 %150, label %210, label %151, !dbg !2559

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 7, metadata !2546, metadata !DIExpression()), !dbg !2549
  %152 = icmp sgt i32 %145, -1, !dbg !2553
  br i1 %152, label %160, label %153, !dbg !2553

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2553
  store i32 %154, i32* %8, align 8, !dbg !2553
  %155 = icmp ult i32 %145, -7, !dbg !2553
  br i1 %155, label %156, label %160, !dbg !2553

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2553
  %158 = sext i32 %145 to i64, !dbg !2553
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2553
  br label %164, !dbg !2553

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2553
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2553
  store i8* %163, i8** %10, align 8, !dbg !2553
  br label %164, !dbg !2553

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2553
  %168 = load i8*, i8** %167, align 8, !dbg !2553
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2556
  store i8* %168, i8** %169, align 8, !dbg !2557, !tbaa !435
  %170 = icmp eq i8* %168, null, !dbg !2558
  br i1 %170, label %210, label %171, !dbg !2559

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 8, metadata !2546, metadata !DIExpression()), !dbg !2549
  %172 = icmp sgt i32 %165, -1, !dbg !2553
  br i1 %172, label %180, label %173, !dbg !2553

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2553
  store i32 %174, i32* %8, align 8, !dbg !2553
  %175 = icmp ult i32 %165, -7, !dbg !2553
  br i1 %175, label %176, label %180, !dbg !2553

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2553
  %178 = sext i32 %165 to i64, !dbg !2553
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2553
  br label %184, !dbg !2553

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2553
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2553
  store i8* %183, i8** %10, align 8, !dbg !2553
  br label %184, !dbg !2553

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2553
  %188 = load i8*, i8** %187, align 8, !dbg !2553
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2556
  store i8* %188, i8** %189, align 8, !dbg !2557, !tbaa !435
  %190 = icmp eq i8* %188, null, !dbg !2558
  br i1 %190, label %210, label %191, !dbg !2559

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 9, metadata !2546, metadata !DIExpression()), !dbg !2549
  %192 = icmp sgt i32 %185, -1, !dbg !2553
  br i1 %192, label %200, label %193, !dbg !2553

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2553
  store i32 %194, i32* %8, align 8, !dbg !2553
  %195 = icmp ult i32 %185, -7, !dbg !2553
  br i1 %195, label %196, label %200, !dbg !2553

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2553
  %198 = sext i32 %185 to i64, !dbg !2553
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2553
  br label %203, !dbg !2553

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2553
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2553
  store i8* %202, i8** %10, align 8, !dbg !2553
  br label %203, !dbg !2553

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2553
  %206 = load i8*, i8** %205, align 8, !dbg !2553
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2556
  store i8* %206, i8** %207, align 8, !dbg !2557, !tbaa !435
  %208 = icmp eq i8* %206, null, !dbg !2558
  %209 = select i1 %208, i64 9, i64 10, !dbg !2559
  br label %210, !dbg !2559

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2560
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2561
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2562
  ret void, !dbg !2562
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2563 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2567, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %2, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %3, metadata !2570, metadata !DIExpression()), !dbg !2572
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2573
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2573
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2571, metadata !DIExpression()), !dbg !2574
  call void @llvm.va_start(i8* nonnull %7), !dbg !2575
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2576, !tbaa.struct !763
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2576
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2576
  call void @llvm.va_end(i8* nonnull %7), !dbg !2577
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2578
  ret void, !dbg !2578
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2579 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2580, !tbaa !435
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.88, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2580
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.105, i64 0, i64 0), i32 noundef 5) #32, !dbg !2581
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.106, i64 0, i64 0)) #32, !dbg !2581
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.107, i64 0, i64 0), i32 noundef 5) #32, !dbg !2582
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #32, !dbg !2582
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !2583
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.109, i64 0, i64 0)) #32, !dbg !2583
  ret void, !dbg !2584
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2585 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2590, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %1, metadata !2591, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %2, metadata !2592, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %0, metadata !2594, metadata !DIExpression()) #32, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %1, metadata !2597, metadata !DIExpression()) #32, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %2, metadata !2598, metadata !DIExpression()) #32, !dbg !2599
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %4, metadata !2602, metadata !DIExpression()) #32, !dbg !2607
  %5 = icmp eq i8* %4, null, !dbg !2609
  br i1 %5, label %6, label %7, !dbg !2611

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2612
  unreachable, !dbg !2612

7:                                                ; preds = %3
  ret i8* %4, !dbg !2613
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2595 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2594, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %1, metadata !2597, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %2, metadata !2598, metadata !DIExpression()), !dbg !2614
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2615
  call void @llvm.dbg.value(metadata i8* %4, metadata !2602, metadata !DIExpression()) #32, !dbg !2616
  %5 = icmp eq i8* %4, null, !dbg !2618
  br i1 %5, label %6, label %7, !dbg !2619

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2620
  unreachable, !dbg !2620

7:                                                ; preds = %3
  ret i8* %4, !dbg !2621
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2622 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2626, metadata !DIExpression()), !dbg !2627
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2628
  call void @llvm.dbg.value(metadata i8* %2, metadata !2602, metadata !DIExpression()) #32, !dbg !2629
  %3 = icmp eq i8* %2, null, !dbg !2631
  br i1 %3, label %4, label %5, !dbg !2632

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2633
  unreachable, !dbg !2633

5:                                                ; preds = %1
  ret i8* %2, !dbg !2634
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2635 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %0, metadata !2641, metadata !DIExpression()) #32, !dbg !2645
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %2, metadata !2602, metadata !DIExpression()) #32, !dbg !2648
  %3 = icmp eq i8* %2, null, !dbg !2650
  br i1 %3, label %4, label %5, !dbg !2651

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2652
  unreachable, !dbg !2652

5:                                                ; preds = %1
  ret i8* %2, !dbg !2653
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2654 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2658, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %0, metadata !2626, metadata !DIExpression()) #32, !dbg !2660
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %2, metadata !2602, metadata !DIExpression()) #32, !dbg !2663
  %3 = icmp eq i8* %2, null, !dbg !2665
  br i1 %3, label %4, label %5, !dbg !2666

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2667
  unreachable, !dbg !2667

5:                                                ; preds = %1
  ret i8* %2, !dbg !2668
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2669 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2674, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %0, metadata !2676, metadata !DIExpression()) #32, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()) #32, !dbg !2681
  %3 = icmp eq i64 %1, 0, !dbg !2683
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2683
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2684
  call void @llvm.dbg.value(metadata i8* %5, metadata !2602, metadata !DIExpression()) #32, !dbg !2685
  %6 = icmp eq i8* %5, null, !dbg !2687
  br i1 %6, label %7, label %8, !dbg !2688

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2689
  unreachable, !dbg !2689

8:                                                ; preds = %2
  ret i8* %5, !dbg !2690
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2691 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %1, metadata !2696, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %0, metadata !2698, metadata !DIExpression()) #32, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %1, metadata !2701, metadata !DIExpression()) #32, !dbg !2702
  call void @llvm.dbg.value(metadata i8* %0, metadata !2676, metadata !DIExpression()) #32, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()) #32, !dbg !2704
  %3 = icmp eq i64 %1, 0, !dbg !2706
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2706
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %5, metadata !2602, metadata !DIExpression()) #32, !dbg !2708
  %6 = icmp eq i8* %5, null, !dbg !2710
  br i1 %6, label %7, label %8, !dbg !2711

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2712
  unreachable, !dbg !2712

8:                                                ; preds = %2
  ret i8* %5, !dbg !2713
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2714 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2718, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 %1, metadata !2719, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 %2, metadata !2720, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8* %0, metadata !2722, metadata !DIExpression()) #32, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %1, metadata !2725, metadata !DIExpression()) #32, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %2, metadata !2726, metadata !DIExpression()) #32, !dbg !2727
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2729
  call void @llvm.dbg.value(metadata i8* %4, metadata !2602, metadata !DIExpression()) #32, !dbg !2730
  %5 = icmp eq i8* %4, null, !dbg !2732
  br i1 %5, label %6, label %7, !dbg !2733

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2734
  unreachable, !dbg !2734

7:                                                ; preds = %3
  ret i8* %4, !dbg !2735
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2736 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2740, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %1, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8* null, metadata !2594, metadata !DIExpression()) #32, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %0, metadata !2597, metadata !DIExpression()) #32, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %1, metadata !2598, metadata !DIExpression()) #32, !dbg !2743
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2745
  call void @llvm.dbg.value(metadata i8* %3, metadata !2602, metadata !DIExpression()) #32, !dbg !2746
  %4 = icmp eq i8* %3, null, !dbg !2748
  br i1 %4, label %5, label %6, !dbg !2749

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2750
  unreachable, !dbg !2750

6:                                                ; preds = %2
  ret i8* %3, !dbg !2751
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2752 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %1, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* null, metadata !2718, metadata !DIExpression()) #32, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %0, metadata !2719, metadata !DIExpression()) #32, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %1, metadata !2720, metadata !DIExpression()) #32, !dbg !2759
  call void @llvm.dbg.value(metadata i8* null, metadata !2722, metadata !DIExpression()) #32, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %0, metadata !2725, metadata !DIExpression()) #32, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %1, metadata !2726, metadata !DIExpression()) #32, !dbg !2761
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2763
  call void @llvm.dbg.value(metadata i8* %3, metadata !2602, metadata !DIExpression()) #32, !dbg !2764
  %4 = icmp eq i8* %3, null, !dbg !2766
  br i1 %4, label %5, label %6, !dbg !2767

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2768
  unreachable, !dbg !2768

6:                                                ; preds = %2
  ret i8* %3, !dbg !2769
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2770 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64* %1, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()) #32, !dbg !2777
  call void @llvm.dbg.value(metadata i64* %1, metadata !369, metadata !DIExpression()) #32, !dbg !2777
  call void @llvm.dbg.value(metadata i64 1, metadata !370, metadata !DIExpression()) #32, !dbg !2777
  %3 = load i64, i64* %1, align 8, !dbg !2779, !tbaa !1875
  call void @llvm.dbg.value(metadata i64 %3, metadata !371, metadata !DIExpression()) #32, !dbg !2777
  %4 = icmp eq i8* %0, null, !dbg !2780
  br i1 %4, label %5, label %8, !dbg !2782

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2783
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2786
  br label %15, !dbg !2786

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2787
  %10 = add nuw i64 %9, 1, !dbg !2787
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !2787
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2787
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %13, metadata !371, metadata !DIExpression()) #32, !dbg !2777
  br i1 %12, label %14, label %15, !dbg !2790

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !2791
  unreachable, !dbg !2791

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2777
  call void @llvm.dbg.value(metadata i64 %16, metadata !371, metadata !DIExpression()) #32, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %0, metadata !2594, metadata !DIExpression()) #32, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %16, metadata !2597, metadata !DIExpression()) #32, !dbg !2792
  call void @llvm.dbg.value(metadata i64 1, metadata !2598, metadata !DIExpression()) #32, !dbg !2792
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %17, metadata !2602, metadata !DIExpression()) #32, !dbg !2795
  %18 = icmp eq i8* %17, null, !dbg !2797
  br i1 %18, label %19, label %20, !dbg !2798

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !2799
  unreachable, !dbg !2799

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !368, metadata !DIExpression()) #32, !dbg !2777
  store i64 %16, i64* %1, align 8, !dbg !2800, !tbaa !1875
  ret i8* %17, !dbg !2801
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i64* %1, metadata !369, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i64 %2, metadata !370, metadata !DIExpression()), !dbg !2802
  %4 = load i64, i64* %1, align 8, !dbg !2803, !tbaa !1875
  call void @llvm.dbg.value(metadata i64 %4, metadata !371, metadata !DIExpression()), !dbg !2802
  %5 = icmp eq i8* %0, null, !dbg !2804
  br i1 %5, label %6, label %13, !dbg !2805

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2806
  br i1 %7, label %8, label %20, !dbg !2807

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %9, metadata !371, metadata !DIExpression()), !dbg !2802
  %10 = icmp ugt i64 %2, 128, !dbg !2810
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %12, metadata !371, metadata !DIExpression()), !dbg !2802
  br label %20, !dbg !2812

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2813
  %15 = add nuw i64 %14, 1, !dbg !2813
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2813
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2813
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %18, metadata !371, metadata !DIExpression()), !dbg !2802
  br i1 %17, label %19, label %20, !dbg !2814

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !2815
  unreachable, !dbg !2815

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2802
  call void @llvm.dbg.value(metadata i64 %21, metadata !371, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8* %0, metadata !2594, metadata !DIExpression()) #32, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %21, metadata !2597, metadata !DIExpression()) #32, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %2, metadata !2598, metadata !DIExpression()) #32, !dbg !2816
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %22, metadata !2602, metadata !DIExpression()) #32, !dbg !2819
  %23 = icmp eq i8* %22, null, !dbg !2821
  br i1 %23, label %24, label %25, !dbg !2822

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !2823
  unreachable, !dbg !2823

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !368, metadata !DIExpression()), !dbg !2802
  store i64 %21, i64* %1, align 8, !dbg !2824, !tbaa !1875
  ret i8* %22, !dbg !2825
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !383, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64* %1, metadata !384, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %2, metadata !385, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %3, metadata !386, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %4, metadata !387, metadata !DIExpression()), !dbg !2826
  %6 = load i64, i64* %1, align 8, !dbg !2827, !tbaa !1875
  call void @llvm.dbg.value(metadata i64 %6, metadata !388, metadata !DIExpression()), !dbg !2826
  %7 = ashr i64 %6, 1, !dbg !2828
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2828
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2828
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %10, metadata !389, metadata !DIExpression()), !dbg !2826
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %11, metadata !389, metadata !DIExpression()), !dbg !2826
  %12 = icmp sgt i64 %3, -1, !dbg !2831
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2833
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %15, metadata !389, metadata !DIExpression()), !dbg !2826
  %16 = icmp slt i64 %4, 0, !dbg !2834
  br i1 %16, label %17, label %30, !dbg !2834

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2834
  br i1 %18, label %19, label %24, !dbg !2834

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2834
  %21 = udiv i64 9223372036854775807, %20, !dbg !2834
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2834
  br i1 %23, label %46, label %43, !dbg !2834

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2834
  br i1 %25, label %43, label %26, !dbg !2834

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2834
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2834
  %29 = icmp ult i64 %28, %15, !dbg !2834
  br i1 %29, label %46, label %43, !dbg !2834

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2834
  br i1 %31, label %43, label %32, !dbg !2834

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2834
  br i1 %33, label %34, label %40, !dbg !2834

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2834
  br i1 %35, label %43, label %36, !dbg !2834

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2834
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2834
  %39 = icmp ult i64 %38, %4, !dbg !2834
  br i1 %39, label %46, label %43, !dbg !2834

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2834
  %42 = icmp ult i64 %41, %15, !dbg !2834
  br i1 %42, label %46, label %43, !dbg !2834

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2826
  %44 = mul i64 %15, %4, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %44, metadata !390, metadata !DIExpression()), !dbg !2826
  %45 = icmp slt i64 %44, 128, !dbg !2834
  br i1 %45, label %46, label %52, !dbg !2834

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !391, metadata !DIExpression()), !dbg !2826
  %48 = sdiv i64 %47, %4, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %48, metadata !389, metadata !DIExpression()), !dbg !2826
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %51, metadata !390, metadata !DIExpression()), !dbg !2826
  br label %52, !dbg !2839

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2826
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2826
  call void @llvm.dbg.value(metadata i64 %54, metadata !390, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %53, metadata !389, metadata !DIExpression()), !dbg !2826
  %55 = icmp eq i8* %0, null, !dbg !2840
  br i1 %55, label %56, label %57, !dbg !2842

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2843, !tbaa !1875
  br label %57, !dbg !2844

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2845
  %59 = icmp slt i64 %58, %2, !dbg !2847
  br i1 %59, label %60, label %97, !dbg !2848

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2849
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2849
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %63, metadata !389, metadata !DIExpression()), !dbg !2826
  br i1 %62, label %96, label %64, !dbg !2850

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2851
  br i1 %66, label %96, label %67, !dbg !2851

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2852

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2852
  br i1 %69, label %70, label %75, !dbg !2852

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2852
  %72 = udiv i64 9223372036854775807, %71, !dbg !2852
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2852
  br i1 %74, label %96, label %94, !dbg !2852

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2852
  br i1 %76, label %94, label %77, !dbg !2852

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2852
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2852
  %80 = icmp ult i64 %79, %63, !dbg !2852
  br i1 %80, label %96, label %94, !dbg !2852

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2852
  br i1 %82, label %94, label %83, !dbg !2852

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2852
  br i1 %84, label %85, label %91, !dbg !2852

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2852
  br i1 %86, label %94, label %87, !dbg !2852

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2852
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2852
  %90 = icmp ult i64 %89, %4, !dbg !2852
  br i1 %90, label %96, label %94, !dbg !2852

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2852
  %93 = icmp ult i64 %92, %63, !dbg !2852
  br i1 %93, label %96, label %94, !dbg !2852

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2826
  %95 = mul i64 %63, %4, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %95, metadata !390, metadata !DIExpression()), !dbg !2826
  br label %97, !dbg !2853

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !2854
  unreachable, !dbg !2854

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2826
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2826
  call void @llvm.dbg.value(metadata i64 %99, metadata !390, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %98, metadata !389, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()) #32, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %99, metadata !2674, metadata !DIExpression()) #32, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %0, metadata !2676, metadata !DIExpression()) #32, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %99, metadata !2680, metadata !DIExpression()) #32, !dbg !2857
  %100 = icmp eq i64 %99, 0, !dbg !2859
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2859
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !2860
  call void @llvm.dbg.value(metadata i8* %102, metadata !2602, metadata !DIExpression()) #32, !dbg !2861
  %103 = icmp eq i8* %102, null, !dbg !2863
  br i1 %103, label %104, label %105, !dbg !2864

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !2865
  unreachable, !dbg !2865

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !383, metadata !DIExpression()), !dbg !2826
  store i64 %98, i64* %1, align 8, !dbg !2866, !tbaa !1875
  ret i8* %102, !dbg !2867
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2868 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2870, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %0, metadata !2872, metadata !DIExpression()) #32, !dbg !2876
  call void @llvm.dbg.value(metadata i64 1, metadata !2875, metadata !DIExpression()) #32, !dbg !2876
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %2, metadata !2602, metadata !DIExpression()) #32, !dbg !2879
  %3 = icmp eq i8* %2, null, !dbg !2881
  br i1 %3, label %4, label %5, !dbg !2882

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2883
  unreachable, !dbg !2883

5:                                                ; preds = %1
  ret i8* %2, !dbg !2884
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2873 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2872, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %1, metadata !2875, metadata !DIExpression()), !dbg !2885
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %3, metadata !2602, metadata !DIExpression()) #32, !dbg !2887
  %4 = icmp eq i8* %3, null, !dbg !2889
  br i1 %4, label %5, label %6, !dbg !2890

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2891
  unreachable, !dbg !2891

6:                                                ; preds = %2
  ret i8* %3, !dbg !2892
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2893 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2895, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()) #32, !dbg !2901
  call void @llvm.dbg.value(metadata i64 1, metadata !2900, metadata !DIExpression()) #32, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %0, metadata !2903, metadata !DIExpression()) #32, !dbg !2907
  call void @llvm.dbg.value(metadata i64 1, metadata !2906, metadata !DIExpression()) #32, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %0, metadata !2903, metadata !DIExpression()) #32, !dbg !2907
  call void @llvm.dbg.value(metadata i64 1, metadata !2906, metadata !DIExpression()) #32, !dbg !2907
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %2, metadata !2602, metadata !DIExpression()) #32, !dbg !2910
  %3 = icmp eq i8* %2, null, !dbg !2912
  br i1 %3, label %4, label %5, !dbg !2913

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2914
  unreachable, !dbg !2914

5:                                                ; preds = %1
  ret i8* %2, !dbg !2915
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2898 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %1, metadata !2900, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %0, metadata !2903, metadata !DIExpression()) #32, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %1, metadata !2906, metadata !DIExpression()) #32, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %0, metadata !2903, metadata !DIExpression()) #32, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %1, metadata !2906, metadata !DIExpression()) #32, !dbg !2917
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2919
  call void @llvm.dbg.value(metadata i8* %3, metadata !2602, metadata !DIExpression()) #32, !dbg !2920
  %4 = icmp eq i8* %3, null, !dbg !2922
  br i1 %4, label %5, label %6, !dbg !2923

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2924
  unreachable, !dbg !2924

6:                                                ; preds = %2
  ret i8* %3, !dbg !2925
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2926 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2626, metadata !DIExpression()) #32, !dbg !2933
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %3, metadata !2602, metadata !DIExpression()) #32, !dbg !2936
  %4 = icmp eq i8* %3, null, !dbg !2938
  br i1 %4, label %5, label %6, !dbg !2939

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2940
  unreachable, !dbg !2940

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2941, metadata !DIExpression()) #32, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %0, metadata !2947, metadata !DIExpression()) #32, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %1, metadata !2948, metadata !DIExpression()) #32, !dbg !2949
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2951
  ret i8* %3, !dbg !2952
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2953 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2957, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %1, metadata !2958, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %1, metadata !2639, metadata !DIExpression()) #32, !dbg !2960
  call void @llvm.dbg.value(metadata i64 %1, metadata !2641, metadata !DIExpression()) #32, !dbg !2962
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %3, metadata !2602, metadata !DIExpression()) #32, !dbg !2965
  %4 = icmp eq i8* %3, null, !dbg !2967
  br i1 %4, label %5, label %6, !dbg !2968

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2969
  unreachable, !dbg !2969

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2941, metadata !DIExpression()) #32, !dbg !2970
  call void @llvm.dbg.value(metadata i8* %0, metadata !2947, metadata !DIExpression()) #32, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %1, metadata !2948, metadata !DIExpression()) #32, !dbg !2970
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2972
  ret i8* %3, !dbg !2973
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2974 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %1, metadata !2979, metadata !DIExpression()), !dbg !2981
  %3 = add nsw i64 %1, 1, !dbg !2982
  call void @llvm.dbg.value(metadata i64 %3, metadata !2639, metadata !DIExpression()) #32, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %3, metadata !2641, metadata !DIExpression()) #32, !dbg !2985
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %4, metadata !2602, metadata !DIExpression()) #32, !dbg !2988
  %5 = icmp eq i8* %4, null, !dbg !2990
  br i1 %5, label %6, label %7, !dbg !2991

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2992
  unreachable, !dbg !2992

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !2980, metadata !DIExpression()), !dbg !2981
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2993
  store i8 0, i8* %8, align 1, !dbg !2994, !tbaa !530
  call void @llvm.dbg.value(metadata i8* %4, metadata !2941, metadata !DIExpression()) #32, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %0, metadata !2947, metadata !DIExpression()) #32, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %1, metadata !2948, metadata !DIExpression()) #32, !dbg !2995
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2997
  ret i8* %4, !dbg !2998
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !2999 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3001, metadata !DIExpression()), !dbg !3002
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !3003
  %3 = add i64 %2, 1, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()) #32, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %3, metadata !2931, metadata !DIExpression()) #32, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %3, metadata !2626, metadata !DIExpression()) #32, !dbg !3007
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3009
  call void @llvm.dbg.value(metadata i8* %4, metadata !2602, metadata !DIExpression()) #32, !dbg !3010
  %5 = icmp eq i8* %4, null, !dbg !3012
  br i1 %5, label %6, label %7, !dbg !3013

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3014
  unreachable, !dbg !3014

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2941, metadata !DIExpression()) #32, !dbg !3015
  call void @llvm.dbg.value(metadata i8* %0, metadata !2947, metadata !DIExpression()) #32, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %3, metadata !2948, metadata !DIExpression()) #32, !dbg !3015
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3017
  ret i8* %4, !dbg !3018
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3019 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3024, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %1, metadata !3021, metadata !DIExpression()), !dbg !3025
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.121, i64 0, i64 0), i32 noundef 5) #32, !dbg !3024
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* noundef %2) #32, !dbg !3024
  %3 = icmp eq i32 %1, 0, !dbg !3024
  tail call void @llvm.assume(i1 %3), !dbg !3024
  tail call void @abort() #34, !dbg !3026
  unreachable, !dbg !3026
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3027 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3065, metadata !DIExpression()), !dbg !3070
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3071
  call void @llvm.dbg.value(metadata i1 undef, metadata !3066, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3070
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3072, metadata !DIExpression()), !dbg !3075
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3077
  %4 = load i32, i32* %3, align 8, !dbg !3077, !tbaa !3078
  %5 = and i32 %4, 32, !dbg !3079
  %6 = icmp eq i32 %5, 0, !dbg !3079
  call void @llvm.dbg.value(metadata i1 %6, metadata !3068, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3070
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3080
  %8 = icmp eq i32 %7, 0, !dbg !3081
  call void @llvm.dbg.value(metadata i1 %8, metadata !3069, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3070
  br i1 %6, label %9, label %19, !dbg !3082

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3084
  call void @llvm.dbg.value(metadata i1 %10, metadata !3066, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3070
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3085
  %12 = xor i1 %8, true, !dbg !3085
  %13 = sext i1 %12 to i32, !dbg !3085
  br i1 %11, label %22, label %14, !dbg !3085

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3086
  %16 = load i32, i32* %15, align 4, !dbg !3086, !tbaa !521
  %17 = icmp ne i32 %16, 9, !dbg !3087
  %18 = sext i1 %17 to i32, !dbg !3088
  br label %22, !dbg !3088

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3089

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3091
  store i32 0, i32* %21, align 4, !dbg !3093, !tbaa !521
  br label %22, !dbg !3091

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3070
  ret i32 %23, !dbg !3094
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3095 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3133, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i32 0, metadata !3134, metadata !DIExpression()), !dbg !3137
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3138
  call void @llvm.dbg.value(metadata i32 %2, metadata !3135, metadata !DIExpression()), !dbg !3137
  %3 = icmp slt i32 %2, 0, !dbg !3139
  br i1 %3, label %4, label %6, !dbg !3141

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3142
  br label %24, !dbg !3143

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3144
  %8 = icmp eq i32 %7, 0, !dbg !3144
  br i1 %8, label %13, label %9, !dbg !3146

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3147
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3148
  %12 = icmp eq i64 %11, -1, !dbg !3149
  br i1 %12, label %16, label %13, !dbg !3150

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3151
  %15 = icmp eq i32 %14, 0, !dbg !3151
  br i1 %15, label %16, label %18, !dbg !3152

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3134, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i32 0, metadata !3136, metadata !DIExpression()), !dbg !3137
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %21, metadata !3136, metadata !DIExpression()), !dbg !3137
  br label %24, !dbg !3154

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3155
  %20 = load i32, i32* %19, align 4, !dbg !3155, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %20, metadata !3134, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i32 0, metadata !3136, metadata !DIExpression()), !dbg !3137
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %21, metadata !3136, metadata !DIExpression()), !dbg !3137
  %22 = icmp eq i32 %20, 0, !dbg !3156
  br i1 %22, label %24, label %23, !dbg !3154

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3158, !tbaa !521
  call void @llvm.dbg.value(metadata i32 -1, metadata !3136, metadata !DIExpression()), !dbg !3137
  br label %24, !dbg !3160

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3137
  ret i32 %25, !dbg !3161
}

; Function Attrs: nofree nounwind
declare !dbg !3162 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3163 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3164 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3167 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3205, metadata !DIExpression()), !dbg !3206
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3207
  br i1 %2, label %6, label %3, !dbg !3209

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3210
  %5 = icmp eq i32 %4, 0, !dbg !3210
  br i1 %5, label %6, label %8, !dbg !3211

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3212
  br label %17, !dbg !3213

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3214, metadata !DIExpression()) #32, !dbg !3219
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3221
  %10 = load i32, i32* %9, align 8, !dbg !3221, !tbaa !3078
  %11 = and i32 %10, 256, !dbg !3223
  %12 = icmp eq i32 %11, 0, !dbg !3223
  br i1 %12, label %15, label %13, !dbg !3224

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3225
  br label %15, !dbg !3225

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3226
  br label %17, !dbg !3227

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3206
  ret i32 %18, !dbg !3228
}

; Function Attrs: nofree nounwind
declare !dbg !3229 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3230 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3269, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 %2, metadata !3271, metadata !DIExpression()), !dbg !3275
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3276
  %5 = load i8*, i8** %4, align 8, !dbg !3276, !tbaa !3277
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3278
  %7 = load i8*, i8** %6, align 8, !dbg !3278, !tbaa !3279
  %8 = icmp eq i8* %5, %7, !dbg !3280
  br i1 %8, label %9, label %28, !dbg !3281

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3282
  %11 = load i8*, i8** %10, align 8, !dbg !3282, !tbaa !878
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3283
  %13 = load i8*, i8** %12, align 8, !dbg !3283, !tbaa !3284
  %14 = icmp eq i8* %11, %13, !dbg !3285
  br i1 %14, label %15, label %28, !dbg !3286

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3287
  %17 = load i8*, i8** %16, align 8, !dbg !3287, !tbaa !3288
  %18 = icmp eq i8* %17, null, !dbg !3289
  br i1 %18, label %19, label %28, !dbg !3290

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3291
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %21, metadata !3272, metadata !DIExpression()), !dbg !3293
  %22 = icmp eq i64 %21, -1, !dbg !3294
  br i1 %22, label %30, label %23, !dbg !3296

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3297
  %25 = load i32, i32* %24, align 8, !dbg !3298, !tbaa !3078
  %26 = and i32 %25, -17, !dbg !3298
  store i32 %26, i32* %24, align 8, !dbg !3298, !tbaa !3078
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3299
  store i64 %21, i64* %27, align 8, !dbg !3300, !tbaa !3301
  br label %30, !dbg !3302

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3303
  br label %30, !dbg !3304

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3275
  ret i32 %31, !dbg !3305
}

; Function Attrs: nofree nounwind
declare !dbg !3306 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3309 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3314, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i8* %1, metadata !3315, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %2, metadata !3316, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3317, metadata !DIExpression()), !dbg !3319
  %5 = icmp eq i8* %1, null, !dbg !3320
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3322
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.133, i64 0, i64 0), i8* %1, !dbg !3322
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %8, metadata !3316, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i8* %7, metadata !3315, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i32* %6, metadata !3314, metadata !DIExpression()), !dbg !3319
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3323
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3325
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3317, metadata !DIExpression()), !dbg !3319
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3326
  call void @llvm.dbg.value(metadata i64 %11, metadata !3318, metadata !DIExpression()), !dbg !3319
  %12 = icmp ult i64 %11, -3, !dbg !3327
  br i1 %12, label %13, label %18, !dbg !3329

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3330
  %15 = icmp eq i32 %14, 0, !dbg !3330
  br i1 %15, label %16, label %30, !dbg !3331

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3332, metadata !DIExpression()) #32, !dbg !3337
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3339, metadata !DIExpression()) #32, !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3342, metadata !DIExpression()) #32, !dbg !3344
  call void @llvm.dbg.value(metadata i64 8, metadata !3343, metadata !DIExpression()) #32, !dbg !3344
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3346
  store i64 0, i64* %17, align 1, !dbg !3346
  br label %30, !dbg !3347

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3348
  br i1 %19, label %20, label %21, !dbg !3350

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3351
  unreachable, !dbg !3351

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3352

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3354
  br i1 %24, label %30, label %25, !dbg !3355

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3356
  br i1 %26, label %30, label %27, !dbg !3359

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3360, !tbaa !530
  %29 = zext i8 %28 to i32, !dbg !3361
  store i32 %29, i32* %6, align 4, !dbg !3362, !tbaa !521
  br label %30, !dbg !3363

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3319
  ret i64 %31, !dbg !3364
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3365 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3373, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %1, metadata !3374, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %2, metadata !3375, metadata !DIExpression()), !dbg !3377
  %4 = icmp eq i64 %2, 0, !dbg !3378
  br i1 %4, label %8, label %5, !dbg !3378

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3378
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3378
  br i1 %7, label %13, label %8, !dbg !3378

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3376, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3377
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3376, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3377
  %9 = mul i64 %2, %1, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %9, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %0, metadata !3380, metadata !DIExpression()) #32, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %9, metadata !3383, metadata !DIExpression()) #32, !dbg !3384
  %10 = icmp eq i64 %9, 0, !dbg !3386
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3386
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3387
  br label %15, !dbg !3388

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3376, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3377
  %14 = tail call i32* @__errno_location() #35, !dbg !3389
  store i32 12, i32* %14, align 4, !dbg !3391, !tbaa !521
  br label %15, !dbg !3392

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3377
  ret i8* %16, !dbg !3393
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3394 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3398, metadata !DIExpression()), !dbg !3403
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3404
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3404
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3399, metadata !DIExpression()), !dbg !3405
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3406
  %5 = icmp eq i32 %4, 0, !dbg !3406
  br i1 %5, label %6, label %13, !dbg !3408

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3409, metadata !DIExpression()) #32, !dbg !3413
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138, i64 0, i64 0), metadata !3412, metadata !DIExpression()) #32, !dbg !3413
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138, i64 0, i64 0), i64 2), !dbg !3416
  %8 = icmp eq i32 %7, 0, !dbg !3417
  br i1 %8, label %12, label %9, !dbg !3418

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3409, metadata !DIExpression()) #32, !dbg !3419
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i64 0, i64 0), metadata !3412, metadata !DIExpression()) #32, !dbg !3419
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i64 0, i64 0), i64 6), !dbg !3421
  %11 = icmp eq i32 %10, 0, !dbg !3422
  br i1 %11, label %12, label %13, !dbg !3423

12:                                               ; preds = %9, %6
  br label %13, !dbg !3424

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3403
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3425
  ret i1 %14, !dbg !3425
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3430, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i8* %1, metadata !3431, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %2, metadata !3432, metadata !DIExpression()), !dbg !3433
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3434
  ret i32 %4, !dbg !3435
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3441
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3442
  ret i8* %2, !dbg !3443
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3444 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3446, metadata !DIExpression()), !dbg !3448
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3449
  call void @llvm.dbg.value(metadata i8* %2, metadata !3447, metadata !DIExpression()), !dbg !3448
  ret i8* %2, !dbg !3450
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3451 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3453, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i8* %1, metadata !3454, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %2, metadata !3455, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i32 %0, metadata !3446, metadata !DIExpression()) #32, !dbg !3461
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %4, metadata !3447, metadata !DIExpression()) #32, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %4, metadata !3456, metadata !DIExpression()), !dbg !3460
  %5 = icmp eq i8* %4, null, !dbg !3464
  br i1 %5, label %6, label %9, !dbg !3465

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3466
  br i1 %7, label %19, label %8, !dbg !3469

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3470, !tbaa !530
  br label %19, !dbg !3471

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %10, metadata !3457, metadata !DIExpression()), !dbg !3473
  %11 = icmp ult i64 %10, %2, !dbg !3474
  br i1 %11, label %12, label %14, !dbg !3476

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3477
  call void @llvm.dbg.value(metadata i8* %1, metadata !3479, metadata !DIExpression()) #32, !dbg !3484
  call void @llvm.dbg.value(metadata i8* %4, metadata !3482, metadata !DIExpression()) #32, !dbg !3484
  call void @llvm.dbg.value(metadata i64 %13, metadata !3483, metadata !DIExpression()) #32, !dbg !3484
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3486
  br label %19, !dbg !3487

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3488
  br i1 %15, label %19, label %16, !dbg !3491

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3492
  call void @llvm.dbg.value(metadata i8* %1, metadata !3479, metadata !DIExpression()) #32, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %4, metadata !3482, metadata !DIExpression()) #32, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %17, metadata !3483, metadata !DIExpression()) #32, !dbg !3494
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3496
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3497
  store i8 0, i8* %18, align 1, !dbg !3498, !tbaa !530
  br label %19, !dbg !3499

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3500
  ret i32 %20, !dbg !3501
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

!llvm.dbg.cu = !{!9, !135, !140, !147, !330, !350, !188, !205, !215, !247, !352, !322, !359, !393, !395, !397, !399, !401, !336, !403, !406, !408, !410}
!llvm.ident = !{!412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412, !412}
!llvm.module.flags = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !51)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !42, globals: !50, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/link.c", directory: "/src", checksumkind: CSK_MD5, checksum: "355a8a3740f0720795f10b09973f5dbc")
!11 = !{!12, !27}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 42, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 46, baseType: !14, size: 32, elements: !29)
!28 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!30 = !DIEnumerator(name: "_ISupper", value: 256)
!31 = !DIEnumerator(name: "_ISlower", value: 512)
!32 = !DIEnumerator(name: "_ISalpha", value: 1024)
!33 = !DIEnumerator(name: "_ISdigit", value: 2048)
!34 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!35 = !DIEnumerator(name: "_ISspace", value: 8192)
!36 = !DIEnumerator(name: "_ISprint", value: 16384)
!37 = !DIEnumerator(name: "_ISgraph", value: 32768)
!38 = !DIEnumerator(name: "_ISblank", value: 1)
!39 = !DIEnumerator(name: "_IScntrl", value: 2)
!40 = !DIEnumerator(name: "_ISpunct", value: 4)
!41 = !DIEnumerator(name: "_ISalnum", value: 8)
!42 = !{!6, !43, !44, !45, !46, !49}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !{!0}
!51 = !{!52, !53, !54, !57, !59, !60, !61, !65, !66, !67, !68, !70, !127, !128, !129, !131, !132}
!52 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!53 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!54 = !DILocalVariable(name: "term", scope: !55, file: !3, line: 585, type: !6)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 582, column: 5)
!56 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!57 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !58)
!58 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!59 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!60 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!61 = !DILocalVariable(name: "s", scope: !62, file: !3, line: 608, type: !6)
!62 = distinct !DILexicalBlock(scope: !63, file: !3, line: 605, column: 5)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 604, column: 12)
!64 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!65 = !DILocalVariable(name: "spaces", scope: !62, file: !3, line: 609, type: !46)
!66 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !46)
!67 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!68 = !DILocalVariable(name: "__ptr", scope: !69, file: !3, line: 644, type: !6)
!69 = distinct !DILexicalBlock(scope: !2, file: !3, line: 644, column: 3)
!70 = !DILocalVariable(name: "__stream", scope: !69, file: !3, line: 644, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !74)
!73 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !76)
!75 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!76 = !{!77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !93, !95, !96, !97, !101, !102, !104, !108, !111, !113, !116, !119, !120, !121, !122, !123}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 51, baseType: !44, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 36, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 70, baseType: !94, size: 64, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !99, line: 152, baseType: !100)
!99 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!100 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!103 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 1)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 43, baseType: null)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !99, line: 153, baseType: !100)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !74, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !75, line: 37, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !74, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !75, line: 38, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !74, file: !75, line: 93, baseType: !94, size: 64, offset: 1344)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !74, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 20)
!127 = !DILocalVariable(name: "__cnt", scope: !69, file: !3, line: 644, type: !46)
!128 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!129 = !DILocalVariable(name: "__ptr", scope: !130, file: !3, line: 686, type: !6)
!130 = distinct !DILexicalBlock(scope: !2, file: !3, line: 686, column: 3)
!131 = !DILocalVariable(name: "__stream", scope: !130, file: !3, line: 686, type: !71)
!132 = !DILocalVariable(name: "__cnt", scope: !130, file: !3, line: 686, type: !46)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "Version", scope: !135, file: !136, line: 3, type: !6, isLocal: false, isDefinition: true)
!135 = distinct !DICompileUnit(language: DW_LANG_C99, file: !136, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !137, splitDebugInlining: false, nameTableKind: None)
!136 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!137 = !{!133}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "file_name", scope: !140, file: !141, line: 45, type: !6, isLocal: true, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !142, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!142 = !{!138, !143}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !140, file: !141, line: 55, type: !58, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !147, file: !148, line: 66, type: !183, isLocal: false, isDefinition: true)
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !149, globals: !150, splitDebugInlining: false, nameTableKind: None)
!148 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!149 = !{!43, !49}
!150 = !{!151, !177, !145, !179, !181}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "old_file_name", scope: !153, file: !148, line: 304, type: !6, isLocal: true, isDefinition: true)
!153 = distinct !DISubprogram(name: "verror_at_line", scope: !148, file: !148, line: 298, type: !154, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !170)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !44, !44, !6, !14, !6, !156}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !158)
!157 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !160)
!159 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !161, baseType: !162)
!161 = !DIFile(filename: "lib/error.c", directory: "/src")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !163, size: 256, elements: !164)
!163 = !DINamespace(name: "std", scope: null)
!164 = !{!165, !166, !167, !168, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !162, file: !161, baseType: !43, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !162, file: !161, baseType: !43, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !162, file: !161, baseType: !43, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !162, file: !161, baseType: !44, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !162, file: !161, baseType: !44, size: 32, offset: 224)
!170 = !{!171, !172, !173, !174, !175, !176}
!171 = !DILocalVariable(name: "status", arg: 1, scope: !153, file: !148, line: 298, type: !44)
!172 = !DILocalVariable(name: "errnum", arg: 2, scope: !153, file: !148, line: 298, type: !44)
!173 = !DILocalVariable(name: "file_name", arg: 3, scope: !153, file: !148, line: 298, type: !6)
!174 = !DILocalVariable(name: "line_number", arg: 4, scope: !153, file: !148, line: 298, type: !14)
!175 = !DILocalVariable(name: "message", arg: 5, scope: !153, file: !148, line: 298, type: !6)
!176 = !DILocalVariable(name: "args", arg: 6, scope: !153, file: !148, line: 298, type: !156)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "old_line_number", scope: !153, file: !148, line: 305, type: !14, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "error_message_count", scope: !147, file: !148, line: 69, type: !14, isLocal: false, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !147, file: !148, line: 295, type: !44, isLocal: false, isDefinition: true)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null}
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "long_options", scope: !188, file: !189, line: 34, type: !191, isLocal: true, isDefinition: true)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !190, splitDebugInlining: false, nameTableKind: None)
!189 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!190 = !{!186}
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 768, elements: !201)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !194, line: 50, size: 256, elements: !195)
!194 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!195 = !{!196, !197, !198, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !194, line: 52, baseType: !6, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !193, file: !194, line: 55, baseType: !44, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !193, file: !194, line: 56, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !193, file: !194, line: 57, baseType: !44, size: 32, offset: 192)
!201 = !{!202}
!202 = !DISubrange(count: 3)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "program_name", scope: !205, file: !206, line: 31, type: !6, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !207, globals: !208, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!207 = !{!79}
!208 = !{!203}
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "utf07FF", scope: !211, file: !212, line: 46, type: !242, isLocal: true, isDefinition: true)
!211 = distinct !DISubprogram(name: "proper_name_lite", scope: !212, file: !212, line: 38, type: !213, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !217)
!212 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!213 = !DISubroutineType(types: !214)
!214 = !{!6, !6, !6}
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !216, splitDebugInlining: false, nameTableKind: None)
!216 = !{!209}
!217 = !{!218, !219, !220, !221, !226}
!218 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !211, file: !212, line: 38, type: !6)
!219 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !211, file: !212, line: 38, type: !6)
!220 = !DILocalVariable(name: "translation", scope: !211, file: !212, line: 40, type: !6)
!221 = !DILocalVariable(name: "w", scope: !211, file: !212, line: 47, type: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !223, line: 37, baseType: !224)
!223 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !99, line: 57, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !99, line: 42, baseType: !14)
!226 = !DILocalVariable(name: "mbs", scope: !211, file: !212, line: 48, type: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !229)
!228 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !231)
!230 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !231, file: !230, line: 15, baseType: !44, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !231, file: !230, line: 20, baseType: !235, size: 32, offset: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !230, line: 16, size: 32, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !235, file: !230, line: 18, baseType: !14, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !235, file: !230, line: 19, baseType: !239, size: 32)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 4)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 2)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !247, file: !248, line: 76, type: !316, isLocal: false, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249, retainedTypes: !255, globals: !256, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!249 = !{!12, !250, !27}
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 254, baseType: !14, size: 32, elements: !251)
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!253 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!254 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!255 = !{!44, !45, !46}
!256 = !{!245, !257, !263, !275, !277, !282, !305, !312, !314}
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !247, file: !248, line: 92, type: !259, isLocal: false, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 320, elements: !261)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!261 = !{!262}
!262 = !DISubrange(count: 10)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !247, file: !248, line: 1040, type: !265, isLocal: false, isDefinition: true)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !248, line: 56, size: 448, elements: !266)
!266 = !{!267, !268, !269, !273, !274}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !265, file: !248, line: 59, baseType: !12, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !248, line: 62, baseType: !44, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !265, file: !248, line: 66, baseType: !270, size: 256, offset: 64)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !265, file: !248, line: 69, baseType: !6, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !265, file: !248, line: 72, baseType: !6, size: 64, offset: 384)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !247, file: !248, line: 107, type: !265, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "slot0", scope: !247, file: !248, line: 831, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 256)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "quote", scope: !284, file: !248, line: 228, type: !303, isLocal: true, isDefinition: true)
!284 = distinct !DISubprogram(name: "gettext_quote", scope: !248, file: !248, line: 197, type: !285, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!6, !6, !12}
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(name: "msgid", arg: 1, scope: !284, file: !248, line: 197, type: !6)
!289 = !DILocalVariable(name: "s", arg: 2, scope: !284, file: !248, line: 197, type: !12)
!290 = !DILocalVariable(name: "translation", scope: !284, file: !248, line: 199, type: !6)
!291 = !DILocalVariable(name: "w", scope: !284, file: !248, line: 229, type: !222)
!292 = !DILocalVariable(name: "mbs", scope: !284, file: !248, line: 230, type: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !295, file: !230, line: 15, baseType: !44, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !295, file: !230, line: 20, baseType: !299, size: 32, offset: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !230, line: 16, size: 32, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !299, file: !230, line: 18, baseType: !14, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !299, file: !230, line: 19, baseType: !239, size: 32)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !304)
!304 = !{!244, !241}
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "slotvec", scope: !247, file: !248, line: 834, type: !307, isLocal: true, isDefinition: true)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !248, line: 823, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !308, file: !248, line: 825, baseType: !46, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !248, line: 826, baseType: !79, size: 64, offset: 64)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "nslots", scope: !247, file: !248, line: 832, type: !44, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "slotvec0", scope: !247, file: !248, line: 833, type: !308, isLocal: true, isDefinition: true)
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
!333 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "internal_state", scope: !336, file: !337, line: 97, type: !340, isLocal: true, isDefinition: true)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !338, globals: !339, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!338 = !{!43, !46, !49}
!339 = !{!334}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !342, file: !230, line: 15, baseType: !44, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !342, file: !230, line: 20, baseType: !346, size: 32, offset: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !230, line: 16, size: 32, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !346, file: !230, line: 18, baseType: !14, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !346, file: !230, line: 19, baseType: !239, size: 32)
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !354, retainedTypes: !358, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!354 = !{!355}
!355 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !353, line: 40, baseType: !14, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!358 = !{!43}
!359 = distinct !DICompileUnit(language: DW_LANG_C99, file: !360, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !361, retainedTypes: !392, splitDebugInlining: false, nameTableKind: None)
!360 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!361 = !{!362, !374}
!362 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !363, file: !360, line: 188, baseType: !14, size: 32, elements: !372)
!363 = distinct !DISubprogram(name: "x2nrealloc", scope: !360, file: !360, line: 176, type: !364, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !367)
!364 = !DISubroutineType(types: !365)
!365 = !{!43, !43, !366, !46}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!367 = !{!368, !369, !370, !371}
!368 = !DILocalVariable(name: "p", arg: 1, scope: !363, file: !360, line: 176, type: !43)
!369 = !DILocalVariable(name: "pn", arg: 2, scope: !363, file: !360, line: 176, type: !366)
!370 = !DILocalVariable(name: "s", arg: 3, scope: !363, file: !360, line: 176, type: !46)
!371 = !DILocalVariable(name: "n", scope: !363, file: !360, line: 178, type: !46)
!372 = !{!373}
!373 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!374 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !375, file: !360, line: 228, baseType: !14, size: 32, elements: !372)
!375 = distinct !DISubprogram(name: "xpalloc", scope: !360, file: !360, line: 223, type: !376, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !382)
!376 = !DISubroutineType(types: !377)
!377 = !{!43, !43, !378, !379, !381, !379}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !380, line: 130, baseType: !381)
!380 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !47, line: 35, baseType: !100)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391}
!383 = !DILocalVariable(name: "pa", arg: 1, scope: !375, file: !360, line: 223, type: !43)
!384 = !DILocalVariable(name: "pn", arg: 2, scope: !375, file: !360, line: 223, type: !378)
!385 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !375, file: !360, line: 223, type: !379)
!386 = !DILocalVariable(name: "n_max", arg: 4, scope: !375, file: !360, line: 223, type: !381)
!387 = !DILocalVariable(name: "s", arg: 5, scope: !375, file: !360, line: 223, type: !379)
!388 = !DILocalVariable(name: "n0", scope: !375, file: !360, line: 230, type: !379)
!389 = !DILocalVariable(name: "n", scope: !375, file: !360, line: 237, type: !379)
!390 = !DILocalVariable(name: "nbytes", scope: !375, file: !360, line: 248, type: !379)
!391 = !DILocalVariable(name: "adjusted_nbytes", scope: !375, file: !360, line: 252, type: !379)
!392 = !{!79, !43, !58, !100, !48}
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
!405 = !{!58, !48, !43}
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
!424 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 37, type: !425, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !44}
!427 = !{!428}
!428 = !DILocalVariable(name: "status", arg: 1, scope: !424, file: !10, line: 37, type: !44)
!429 = !DILocation(line: 0, scope: !424)
!430 = !DILocation(line: 39, column: 14, scope: !431)
!431 = distinct !DILexicalBlock(scope: !424, file: !10, line: 39, column: 7)
!432 = !DILocation(line: 39, column: 7, scope: !424)
!433 = !DILocation(line: 40, column: 5, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !10, line: 40, column: 5)
!435 = !{!436, !436, i64 0}
!436 = !{!"any pointer", !437, i64 0}
!437 = !{!"omnipotent char", !438, i64 0}
!438 = !{!"Simple C/C++ TBAA"}
!439 = !DILocation(line: 43, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !431, file: !10, line: 42, column: 5)
!441 = !DILocation(line: 46, column: 7, scope: !440)
!442 = !DILocation(line: 49, column: 7, scope: !440)
!443 = !DILocation(line: 50, column: 7, scope: !440)
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
!464 = distinct !DILocation(line: 51, column: 7, scope: !440)
!465 = !DILocation(line: 838, column: 3, scope: !445, inlinedAt: !464)
!466 = !DILocation(line: 838, column: 67, scope: !445, inlinedAt: !464)
!467 = !DILocation(line: 849, column: 36, scope: !445, inlinedAt: !464)
!468 = !DILocation(line: 851, column: 3, scope: !445, inlinedAt: !464)
!469 = !DILocalVariable(name: "__s1", arg: 1, scope: !470, file: !471, line: 1359, type: !6)
!470 = distinct !DISubprogram(name: "streq", scope: !471, file: !471, line: 1359, type: !472, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !474)
!471 = !DIFile(filename: "./lib/string.h", directory: "/src")
!472 = !DISubroutineType(types: !473)
!473 = !{!58, !6, !6}
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
!508 = !DILocation(line: 53, column: 3, scope: !424)
!509 = !DISubprogram(name: "dcgettext", scope: !510, file: !510, line: 51, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!510 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!511 = !DISubroutineType(types: !512)
!512 = !{!79, !6, !6, !44}
!513 = !{}
!514 = !DISubprogram(name: "fputs_unlocked", scope: !157, file: !157, line: 691, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!515 = !DISubroutineType(types: !516)
!516 = !{!44, !517, !518}
!517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!519 = !DILocation(line: 0, scope: !2)
!520 = !DILocation(line: 581, column: 7, scope: !56)
!521 = !{!522, !522, i64 0}
!522 = !{!"int", !437, i64 0}
!523 = !DILocation(line: 581, column: 19, scope: !56)
!524 = !DILocation(line: 581, column: 7, scope: !2)
!525 = !DILocation(line: 585, column: 26, scope: !55)
!526 = !DILocation(line: 0, scope: !55)
!527 = !DILocation(line: 586, column: 23, scope: !55)
!528 = !DILocation(line: 586, column: 28, scope: !55)
!529 = !DILocation(line: 586, column: 32, scope: !55)
!530 = !{!437, !437, i64 0}
!531 = !DILocation(line: 586, column: 38, scope: !55)
!532 = !DILocation(line: 0, scope: !470, inlinedAt: !533)
!533 = distinct !DILocation(line: 586, column: 41, scope: !55)
!534 = !DILocation(line: 1361, column: 11, scope: !470, inlinedAt: !533)
!535 = !DILocation(line: 1361, column: 10, scope: !470, inlinedAt: !533)
!536 = !DILocation(line: 586, column: 19, scope: !55)
!537 = !DILocation(line: 587, column: 5, scope: !55)
!538 = !DILocation(line: 588, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!540 = !DILocation(line: 588, column: 7, scope: !2)
!541 = !DILocation(line: 590, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !3, line: 589, column: 5)
!543 = !DILocation(line: 591, column: 7, scope: !542)
!544 = !DILocation(line: 595, column: 37, scope: !2)
!545 = !DILocation(line: 595, column: 35, scope: !2)
!546 = !DILocation(line: 596, column: 29, scope: !2)
!547 = !DILocation(line: 597, column: 8, scope: !64)
!548 = !DILocation(line: 597, column: 7, scope: !2)
!549 = !DILocation(line: 604, column: 24, scope: !63)
!550 = !DILocation(line: 604, column: 12, scope: !64)
!551 = !DILocation(line: 0, scope: !62)
!552 = !DILocation(line: 610, column: 16, scope: !62)
!553 = !DILocation(line: 610, column: 7, scope: !62)
!554 = !DILocation(line: 611, column: 21, scope: !62)
!555 = !{!556, !556, i64 0}
!556 = !{!"short", !437, i64 0}
!557 = !DILocation(line: 611, column: 19, scope: !62)
!558 = !DILocation(line: 611, column: 16, scope: !62)
!559 = !DILocation(line: 610, column: 30, scope: !62)
!560 = distinct !{!560, !553, !554, !487}
!561 = !DILocation(line: 612, column: 18, scope: !562)
!562 = distinct !DILexicalBlock(scope: !62, file: !3, line: 612, column: 11)
!563 = !DILocation(line: 612, column: 11, scope: !62)
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
!630 = !{!79, !44, !6}
!631 = !DISubprogram(name: "getenv", scope: !632, file: !632, line: 641, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!632 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!633 = !DISubroutineType(types: !634)
!634 = !{!79, !6}
!635 = !DISubprogram(name: "fwrite_unlocked", scope: !157, file: !157, line: 704, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!636 = !DISubroutineType(types: !637)
!637 = !{!46, !638, !46, !46, !518}
!638 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!641 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 57, type: !642, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !645)
!642 = !DISubroutineType(types: !643)
!643 = !{!44, !44, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!645 = !{!646, !647}
!646 = !DILocalVariable(name: "argc", arg: 1, scope: !641, file: !10, line: 57, type: !44)
!647 = !DILocalVariable(name: "argv", arg: 2, scope: !641, file: !10, line: 57, type: !644)
!648 = !DILocation(line: 0, scope: !641)
!649 = !DILocation(line: 60, column: 21, scope: !641)
!650 = !DILocation(line: 60, column: 3, scope: !641)
!651 = !DILocation(line: 61, column: 3, scope: !641)
!652 = !DILocation(line: 62, column: 3, scope: !641)
!653 = !DILocation(line: 63, column: 3, scope: !641)
!654 = !DILocation(line: 65, column: 3, scope: !641)
!655 = !DILocation(line: 68, column: 36, scope: !641)
!656 = !DILocation(line: 68, column: 58, scope: !641)
!657 = !DILocation(line: 67, column: 3, scope: !641)
!658 = !DILocation(line: 71, column: 14, scope: !659)
!659 = distinct !DILexicalBlock(scope: !641, file: !10, line: 71, column: 7)
!660 = !DILocation(line: 71, column: 21, scope: !659)
!661 = !DILocation(line: 71, column: 12, scope: !659)
!662 = !DILocation(line: 71, column: 7, scope: !641)
!663 = !DILocation(line: 73, column: 16, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !10, line: 73, column: 11)
!665 = distinct !DILexicalBlock(scope: !659, file: !10, line: 72, column: 5)
!666 = !DILocation(line: 73, column: 11, scope: !665)
!667 = !DILocation(line: 74, column: 9, scope: !664)
!668 = !DILocation(line: 76, column: 9, scope: !664)
!669 = !DILocation(line: 77, column: 7, scope: !665)
!670 = !DILocation(line: 80, column: 18, scope: !671)
!671 = distinct !DILexicalBlock(scope: !641, file: !10, line: 80, column: 7)
!672 = !DILocation(line: 80, column: 7, scope: !641)
!673 = !DILocation(line: 82, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !10, line: 81, column: 5)
!675 = !DILocation(line: 83, column: 7, scope: !674)
!676 = !DILocation(line: 86, column: 13, scope: !677)
!677 = distinct !DILexicalBlock(scope: !641, file: !10, line: 86, column: 7)
!678 = !DILocation(line: 86, column: 39, scope: !677)
!679 = !DILocation(line: 86, column: 27, scope: !677)
!680 = !DILocation(line: 86, column: 7, scope: !677)
!681 = !DILocation(line: 86, column: 45, scope: !677)
!682 = !DILocation(line: 86, column: 7, scope: !641)
!683 = !DILocation(line: 87, column: 5, scope: !677)
!684 = !DILocation(line: 90, column: 3, scope: !641)
!685 = !DISubprogram(name: "bindtextdomain", scope: !510, file: !510, line: 86, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!686 = !DISubroutineType(types: !687)
!687 = !{!79, !6, !6}
!688 = !DISubprogram(name: "textdomain", scope: !510, file: !510, line: 82, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!689 = !DISubprogram(name: "atexit", scope: !632, file: !632, line: 602, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!690 = !DISubroutineType(types: !691)
!691 = !{!44, !183}
!692 = !DISubprogram(name: "link", scope: !693, file: !693, line: 819, type: !694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!693 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!694 = !DISubroutineType(types: !695)
!695 = !{!44, !6, !6}
!696 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !141, file: !141, line: 50, type: !446, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !697)
!697 = !{!698}
!698 = !DILocalVariable(name: "file", arg: 1, scope: !696, file: !141, line: 50, type: !6)
!699 = !DILocation(line: 0, scope: !696)
!700 = !DILocation(line: 52, column: 13, scope: !696)
!701 = !DILocation(line: 53, column: 1, scope: !696)
!702 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !141, file: !141, line: 87, type: !703, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !58}
!705 = !{!706}
!706 = !DILocalVariable(name: "ignore", arg: 1, scope: !702, file: !141, line: 87, type: !58)
!707 = !DILocation(line: 0, scope: !702)
!708 = !DILocation(line: 89, column: 16, scope: !702)
!709 = !{!710, !710, i64 0}
!710 = !{!"_Bool", !437, i64 0}
!711 = !DILocation(line: 90, column: 1, scope: !702)
!712 = distinct !DISubprogram(name: "close_stdout", scope: !141, file: !141, line: 116, type: !184, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !713)
!713 = !{!714}
!714 = !DILocalVariable(name: "write_error", scope: !715, file: !141, line: 121, type: !6)
!715 = distinct !DILexicalBlock(scope: !716, file: !141, line: 120, column: 5)
!716 = distinct !DILexicalBlock(scope: !712, file: !141, line: 118, column: 7)
!717 = !DILocation(line: 118, column: 21, scope: !716)
!718 = !DILocation(line: 118, column: 7, scope: !716)
!719 = !DILocation(line: 118, column: 29, scope: !716)
!720 = !DILocation(line: 119, column: 7, scope: !716)
!721 = !DILocation(line: 119, column: 12, scope: !716)
!722 = !{i8 0, i8 2}
!723 = !DILocation(line: 119, column: 25, scope: !716)
!724 = !DILocation(line: 119, column: 28, scope: !716)
!725 = !DILocation(line: 119, column: 34, scope: !716)
!726 = !DILocation(line: 118, column: 7, scope: !712)
!727 = !DILocation(line: 121, column: 33, scope: !715)
!728 = !DILocation(line: 0, scope: !715)
!729 = !DILocation(line: 122, column: 11, scope: !730)
!730 = distinct !DILexicalBlock(scope: !715, file: !141, line: 122, column: 11)
!731 = !DILocation(line: 0, scope: !730)
!732 = !DILocation(line: 122, column: 11, scope: !715)
!733 = !DILocation(line: 123, column: 9, scope: !730)
!734 = !DILocation(line: 126, column: 9, scope: !730)
!735 = !DILocation(line: 128, column: 14, scope: !715)
!736 = !DILocation(line: 128, column: 7, scope: !715)
!737 = !DILocation(line: 133, column: 42, scope: !738)
!738 = distinct !DILexicalBlock(scope: !712, file: !141, line: 133, column: 7)
!739 = !DILocation(line: 133, column: 28, scope: !738)
!740 = !DILocation(line: 133, column: 50, scope: !738)
!741 = !DILocation(line: 133, column: 7, scope: !712)
!742 = !DILocation(line: 134, column: 12, scope: !738)
!743 = !DILocation(line: 134, column: 5, scope: !738)
!744 = !DILocation(line: 135, column: 1, scope: !712)
!745 = distinct !DISubprogram(name: "verror", scope: !148, file: !148, line: 251, type: !746, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !44, !44, !6, !156}
!748 = !{!749, !750, !751, !752}
!749 = !DILocalVariable(name: "status", arg: 1, scope: !745, file: !148, line: 251, type: !44)
!750 = !DILocalVariable(name: "errnum", arg: 2, scope: !745, file: !148, line: 251, type: !44)
!751 = !DILocalVariable(name: "message", arg: 3, scope: !745, file: !148, line: 251, type: !6)
!752 = !DILocalVariable(name: "args", arg: 4, scope: !745, file: !148, line: 251, type: !156)
!753 = !DILocation(line: 0, scope: !745)
!754 = !DILocation(line: 251, column: 1, scope: !745)
!755 = !DILocation(line: 261, column: 3, scope: !745)
!756 = !DILocation(line: 265, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !745, file: !148, line: 265, column: 7)
!758 = !DILocation(line: 265, column: 7, scope: !745)
!759 = !DILocation(line: 266, column: 5, scope: !757)
!760 = !DILocation(line: 272, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !757, file: !148, line: 268, column: 5)
!762 = !DILocation(line: 276, column: 3, scope: !745)
!763 = !{i64 0, i64 8, !435, i64 8, i64 8, !435, i64 16, i64 8, !435, i64 24, i64 4, !521, i64 28, i64 4, !521}
!764 = !DILocation(line: 282, column: 1, scope: !745)
!765 = distinct !DISubprogram(name: "flush_stdout", scope: !148, file: !148, line: 163, type: !184, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !766)
!766 = !{!767}
!767 = !DILocalVariable(name: "stdout_fd", scope: !765, file: !148, line: 166, type: !44)
!768 = !DILocation(line: 0, scope: !765)
!769 = !DILocalVariable(name: "fd", arg: 1, scope: !770, file: !148, line: 145, type: !44)
!770 = distinct !DISubprogram(name: "is_open", scope: !148, file: !148, line: 145, type: !771, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!44, !44}
!773 = !{!769}
!774 = !DILocation(line: 0, scope: !770, inlinedAt: !775)
!775 = distinct !DILocation(line: 182, column: 25, scope: !776)
!776 = distinct !DILexicalBlock(scope: !765, file: !148, line: 182, column: 7)
!777 = !DILocation(line: 157, column: 15, scope: !770, inlinedAt: !775)
!778 = !DILocation(line: 182, column: 25, scope: !776)
!779 = !DILocation(line: 182, column: 7, scope: !765)
!780 = !DILocation(line: 184, column: 5, scope: !776)
!781 = !DILocation(line: 185, column: 1, scope: !765)
!782 = distinct !DISubprogram(name: "error_tail", scope: !148, file: !148, line: 219, type: !746, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !783)
!783 = !{!784, !785, !786, !787}
!784 = !DILocalVariable(name: "status", arg: 1, scope: !782, file: !148, line: 219, type: !44)
!785 = !DILocalVariable(name: "errnum", arg: 2, scope: !782, file: !148, line: 219, type: !44)
!786 = !DILocalVariable(name: "message", arg: 3, scope: !782, file: !148, line: 219, type: !6)
!787 = !DILocalVariable(name: "args", arg: 4, scope: !782, file: !148, line: 219, type: !156)
!788 = !DILocation(line: 0, scope: !782)
!789 = !DILocation(line: 219, column: 1, scope: !782)
!790 = !DILocation(line: 229, column: 13, scope: !782)
!791 = !DILocation(line: 229, column: 3, scope: !782)
!792 = !DILocalVariable(name: "__stream", arg: 1, scope: !793, file: !794, line: 132, type: !797)
!793 = distinct !DISubprogram(name: "vfprintf", scope: !794, file: !794, line: 132, type: !795, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !832)
!794 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!795 = !DISubroutineType(types: !796)
!796 = !{!44, !797, !517, !158}
!797 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !800, file: !75, line: 51, baseType: !44, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !800, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !800, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !800, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !800, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !800, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !800, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !800, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !800, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !800, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !800, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !800, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !800, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !800, file: !75, line: 70, baseType: !816, size: 64, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !800, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !800, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !800, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !800, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !800, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !800, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !800, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !800, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !800, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !800, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !800, file: !75, line: 93, baseType: !816, size: 64, offset: 1344)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !800, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !800, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !800, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !800, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!832 = !{!792, !833, !834}
!833 = !DILocalVariable(name: "__fmt", arg: 2, scope: !793, file: !794, line: 133, type: !517)
!834 = !DILocalVariable(name: "__ap", arg: 3, scope: !793, file: !794, line: 133, type: !158)
!835 = !DILocation(line: 0, scope: !793, inlinedAt: !836)
!836 = distinct !DILocation(line: 229, column: 3, scope: !782)
!837 = !DILocation(line: 135, column: 10, scope: !793, inlinedAt: !836)
!838 = !{!839, !841}
!839 = distinct !{!839, !840, !"vfprintf.inline: argument 0"}
!840 = distinct !{!840, !"vfprintf.inline"}
!841 = distinct !{!841, !840, !"vfprintf.inline: argument 1"}
!842 = !DILocation(line: 232, column: 3, scope: !782)
!843 = !DILocation(line: 233, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !782, file: !148, line: 233, column: 7)
!845 = !DILocation(line: 233, column: 7, scope: !782)
!846 = !DILocalVariable(name: "errnum", arg: 1, scope: !847, file: !148, line: 188, type: !44)
!847 = distinct !DISubprogram(name: "print_errno_message", scope: !148, file: !148, line: 188, type: !425, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !848)
!848 = !{!846, !849, !850}
!849 = !DILocalVariable(name: "s", scope: !847, file: !148, line: 190, type: !6)
!850 = !DILocalVariable(name: "errbuf", scope: !847, file: !148, line: 193, type: !851)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 1024)
!854 = !DILocation(line: 0, scope: !847, inlinedAt: !855)
!855 = distinct !DILocation(line: 234, column: 5, scope: !844)
!856 = !DILocation(line: 193, column: 3, scope: !847, inlinedAt: !855)
!857 = !DILocation(line: 193, column: 8, scope: !847, inlinedAt: !855)
!858 = !DILocation(line: 195, column: 7, scope: !847, inlinedAt: !855)
!859 = !DILocation(line: 207, column: 9, scope: !860, inlinedAt: !855)
!860 = distinct !DILexicalBlock(scope: !847, file: !148, line: 207, column: 7)
!861 = !DILocation(line: 207, column: 7, scope: !847, inlinedAt: !855)
!862 = !DILocation(line: 208, column: 9, scope: !860, inlinedAt: !855)
!863 = !DILocation(line: 208, column: 5, scope: !860, inlinedAt: !855)
!864 = !DILocation(line: 214, column: 3, scope: !847, inlinedAt: !855)
!865 = !DILocation(line: 216, column: 1, scope: !847, inlinedAt: !855)
!866 = !DILocation(line: 234, column: 5, scope: !844)
!867 = !DILocation(line: 238, column: 3, scope: !782)
!868 = !DILocalVariable(name: "__c", arg: 1, scope: !869, file: !870, line: 101, type: !44)
!869 = distinct !DISubprogram(name: "putc_unlocked", scope: !870, file: !870, line: 101, type: !871, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !873)
!870 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!871 = !DISubroutineType(types: !872)
!872 = !{!44, !44, !798}
!873 = !{!868, !874}
!874 = !DILocalVariable(name: "__stream", arg: 2, scope: !869, file: !870, line: 101, type: !798)
!875 = !DILocation(line: 0, scope: !869, inlinedAt: !876)
!876 = distinct !DILocation(line: 238, column: 3, scope: !782)
!877 = !DILocation(line: 103, column: 10, scope: !869, inlinedAt: !876)
!878 = !{!879, !436, i64 40}
!879 = !{!"_IO_FILE", !522, i64 0, !436, i64 8, !436, i64 16, !436, i64 24, !436, i64 32, !436, i64 40, !436, i64 48, !436, i64 56, !436, i64 64, !436, i64 72, !436, i64 80, !436, i64 88, !436, i64 96, !436, i64 104, !522, i64 112, !522, i64 116, !880, i64 120, !556, i64 128, !437, i64 130, !437, i64 131, !436, i64 136, !880, i64 144, !436, i64 152, !436, i64 160, !436, i64 168, !436, i64 176, !880, i64 184, !522, i64 192, !437, i64 196}
!880 = !{!"long", !437, i64 0}
!881 = !{!879, !436, i64 48}
!882 = !{!"branch_weights", i32 2000, i32 1}
!883 = !DILocation(line: 240, column: 3, scope: !782)
!884 = !DILocation(line: 241, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !782, file: !148, line: 241, column: 7)
!886 = !DILocation(line: 241, column: 7, scope: !782)
!887 = !DILocation(line: 242, column: 5, scope: !885)
!888 = !DILocation(line: 243, column: 1, scope: !782)
!889 = !DISubprogram(name: "strerror_r", scope: !890, file: !890, line: 444, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!890 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!891 = !DISubroutineType(types: !892)
!892 = !{!79, !44, !79, !46}
!893 = !DISubprogram(name: "fflush_unlocked", scope: !157, file: !157, line: 239, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!894 = !DISubroutineType(types: !895)
!895 = !{!44, !798}
!896 = !DISubprogram(name: "fcntl", scope: !897, file: !897, line: 149, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!897 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!898 = !DISubroutineType(types: !899)
!899 = !{!44, !44, !44, null}
!900 = distinct !DISubprogram(name: "error", scope: !148, file: !148, line: 285, type: !901, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !44, !44, !6, null}
!903 = !{!904, !905, !906, !907}
!904 = !DILocalVariable(name: "status", arg: 1, scope: !900, file: !148, line: 285, type: !44)
!905 = !DILocalVariable(name: "errnum", arg: 2, scope: !900, file: !148, line: 285, type: !44)
!906 = !DILocalVariable(name: "message", arg: 3, scope: !900, file: !148, line: 285, type: !6)
!907 = !DILocalVariable(name: "ap", scope: !900, file: !148, line: 287, type: !156)
!908 = !DILocation(line: 0, scope: !900)
!909 = !DILocation(line: 287, column: 3, scope: !900)
!910 = !DILocation(line: 287, column: 11, scope: !900)
!911 = !DILocation(line: 288, column: 3, scope: !900)
!912 = !DILocation(line: 289, column: 3, scope: !900)
!913 = !DILocation(line: 290, column: 3, scope: !900)
!914 = !DILocation(line: 291, column: 1, scope: !900)
!915 = !DILocation(line: 0, scope: !153)
!916 = !DILocation(line: 298, column: 1, scope: !153)
!917 = !DILocation(line: 302, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !153, file: !148, line: 302, column: 7)
!919 = !DILocation(line: 302, column: 7, scope: !153)
!920 = !DILocation(line: 307, column: 11, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !148, line: 307, column: 11)
!922 = distinct !DILexicalBlock(scope: !918, file: !148, line: 303, column: 5)
!923 = !DILocation(line: 307, column: 27, scope: !921)
!924 = !DILocation(line: 308, column: 11, scope: !921)
!925 = !DILocation(line: 308, column: 28, scope: !921)
!926 = !DILocation(line: 308, column: 25, scope: !921)
!927 = !DILocation(line: 309, column: 15, scope: !921)
!928 = !DILocation(line: 309, column: 33, scope: !921)
!929 = !DILocation(line: 310, column: 19, scope: !921)
!930 = !DILocation(line: 311, column: 22, scope: !921)
!931 = !DILocation(line: 311, column: 56, scope: !921)
!932 = !DILocation(line: 307, column: 11, scope: !922)
!933 = !DILocation(line: 316, column: 21, scope: !922)
!934 = !DILocation(line: 317, column: 23, scope: !922)
!935 = !DILocation(line: 318, column: 5, scope: !922)
!936 = !DILocation(line: 327, column: 3, scope: !153)
!937 = !DILocation(line: 331, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !153, file: !148, line: 331, column: 7)
!939 = !DILocation(line: 331, column: 7, scope: !153)
!940 = !DILocation(line: 332, column: 5, scope: !938)
!941 = !DILocation(line: 338, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !148, line: 334, column: 5)
!943 = !DILocation(line: 346, column: 3, scope: !153)
!944 = !DILocation(line: 350, column: 3, scope: !153)
!945 = !DILocation(line: 356, column: 1, scope: !153)
!946 = distinct !DISubprogram(name: "error_at_line", scope: !148, file: !148, line: 359, type: !947, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !44, !44, !6, !14, !6, null}
!949 = !{!950, !951, !952, !953, !954, !955}
!950 = !DILocalVariable(name: "status", arg: 1, scope: !946, file: !148, line: 359, type: !44)
!951 = !DILocalVariable(name: "errnum", arg: 2, scope: !946, file: !148, line: 359, type: !44)
!952 = !DILocalVariable(name: "file_name", arg: 3, scope: !946, file: !148, line: 359, type: !6)
!953 = !DILocalVariable(name: "line_number", arg: 4, scope: !946, file: !148, line: 360, type: !14)
!954 = !DILocalVariable(name: "message", arg: 5, scope: !946, file: !148, line: 360, type: !6)
!955 = !DILocalVariable(name: "ap", scope: !946, file: !148, line: 362, type: !156)
!956 = !DILocation(line: 0, scope: !946)
!957 = !DILocation(line: 362, column: 3, scope: !946)
!958 = !DILocation(line: 362, column: 11, scope: !946)
!959 = !DILocation(line: 363, column: 3, scope: !946)
!960 = !DILocation(line: 364, column: 3, scope: !946)
!961 = !DILocation(line: 366, column: 3, scope: !946)
!962 = !DILocation(line: 367, column: 1, scope: !946)
!963 = distinct !DISubprogram(name: "getprogname", scope: !351, file: !351, line: 54, type: !964, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !513)
!964 = !DISubroutineType(types: !965)
!965 = !{!6}
!966 = !DILocation(line: 58, column: 10, scope: !963)
!967 = !DILocation(line: 58, column: 3, scope: !963)
!968 = distinct !DISubprogram(name: "parse_long_options", scope: !189, file: !189, line: 45, type: !969, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !972)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !44, !644, !6, !6, !6, !971, null}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!972 = !{!973, !974, !975, !976, !977, !978, !979, !980, !983}
!973 = !DILocalVariable(name: "argc", arg: 1, scope: !968, file: !189, line: 45, type: !44)
!974 = !DILocalVariable(name: "argv", arg: 2, scope: !968, file: !189, line: 46, type: !644)
!975 = !DILocalVariable(name: "command_name", arg: 3, scope: !968, file: !189, line: 47, type: !6)
!976 = !DILocalVariable(name: "package", arg: 4, scope: !968, file: !189, line: 48, type: !6)
!977 = !DILocalVariable(name: "version", arg: 5, scope: !968, file: !189, line: 49, type: !6)
!978 = !DILocalVariable(name: "usage_func", arg: 6, scope: !968, file: !189, line: 50, type: !971)
!979 = !DILocalVariable(name: "saved_opterr", scope: !968, file: !189, line: 53, type: !44)
!980 = !DILocalVariable(name: "c", scope: !981, file: !189, line: 60, type: !44)
!981 = distinct !DILexicalBlock(scope: !982, file: !189, line: 59, column: 5)
!982 = distinct !DILexicalBlock(scope: !968, file: !189, line: 58, column: 7)
!983 = !DILocalVariable(name: "authors", scope: !984, file: !189, line: 71, type: !988)
!984 = distinct !DILexicalBlock(scope: !985, file: !189, line: 70, column: 15)
!985 = distinct !DILexicalBlock(scope: !986, file: !189, line: 64, column: 13)
!986 = distinct !DILexicalBlock(scope: !987, file: !189, line: 62, column: 9)
!987 = distinct !DILexicalBlock(scope: !981, file: !189, line: 61, column: 11)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !991, baseType: !992)
!991 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !163, size: 256, elements: !993)
!993 = !{!994, !995, !996, !997, !998}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !992, file: !991, line: 71, baseType: !43, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !992, file: !991, line: 71, baseType: !43, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !992, file: !991, line: 71, baseType: !43, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !992, file: !991, line: 71, baseType: !44, size: 32, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !992, file: !991, line: 71, baseType: !44, size: 32, offset: 224)
!999 = !DILocation(line: 0, scope: !968)
!1000 = !DILocation(line: 53, column: 22, scope: !968)
!1001 = !DILocation(line: 56, column: 10, scope: !968)
!1002 = !DILocation(line: 58, column: 12, scope: !982)
!1003 = !DILocation(line: 58, column: 7, scope: !968)
!1004 = !DILocation(line: 60, column: 15, scope: !981)
!1005 = !DILocation(line: 0, scope: !981)
!1006 = !DILocation(line: 61, column: 11, scope: !981)
!1007 = !DILocation(line: 66, column: 15, scope: !985)
!1008 = !DILocation(line: 67, column: 15, scope: !985)
!1009 = !DILocation(line: 71, column: 17, scope: !984)
!1010 = !DILocation(line: 71, column: 25, scope: !984)
!1011 = !DILocation(line: 72, column: 17, scope: !984)
!1012 = !DILocation(line: 73, column: 33, scope: !984)
!1013 = !DILocation(line: 73, column: 17, scope: !984)
!1014 = !DILocation(line: 74, column: 17, scope: !984)
!1015 = !DILocation(line: 85, column: 10, scope: !968)
!1016 = !DILocation(line: 89, column: 10, scope: !968)
!1017 = !DILocation(line: 90, column: 1, scope: !968)
!1018 = !DISubprogram(name: "getopt_long", scope: !194, file: !194, line: 66, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!44, !44, !1021, !6, !1023, !199}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1024 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !189, file: !189, line: 98, type: !1025, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !44, !644, !6, !6, !6, !58, !971, null}
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038}
!1028 = !DILocalVariable(name: "argc", arg: 1, scope: !1024, file: !189, line: 98, type: !44)
!1029 = !DILocalVariable(name: "argv", arg: 2, scope: !1024, file: !189, line: 99, type: !644)
!1030 = !DILocalVariable(name: "command_name", arg: 3, scope: !1024, file: !189, line: 100, type: !6)
!1031 = !DILocalVariable(name: "package", arg: 4, scope: !1024, file: !189, line: 101, type: !6)
!1032 = !DILocalVariable(name: "version", arg: 5, scope: !1024, file: !189, line: 102, type: !6)
!1033 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1024, file: !189, line: 103, type: !58)
!1034 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1024, file: !189, line: 104, type: !971)
!1035 = !DILocalVariable(name: "saved_opterr", scope: !1024, file: !189, line: 107, type: !44)
!1036 = !DILocalVariable(name: "optstring", scope: !1024, file: !189, line: 112, type: !6)
!1037 = !DILocalVariable(name: "c", scope: !1024, file: !189, line: 114, type: !44)
!1038 = !DILocalVariable(name: "authors", scope: !1039, file: !189, line: 125, type: !988)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !189, line: 124, column: 11)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !189, line: 118, column: 9)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !189, line: 116, column: 5)
!1042 = distinct !DILexicalBlock(scope: !1024, file: !189, line: 115, column: 7)
!1043 = !DILocation(line: 0, scope: !1024)
!1044 = !DILocation(line: 107, column: 22, scope: !1024)
!1045 = !DILocation(line: 110, column: 10, scope: !1024)
!1046 = !DILocation(line: 112, column: 27, scope: !1024)
!1047 = !DILocation(line: 114, column: 11, scope: !1024)
!1048 = !DILocation(line: 115, column: 7, scope: !1024)
!1049 = !DILocation(line: 125, column: 13, scope: !1039)
!1050 = !DILocation(line: 125, column: 21, scope: !1039)
!1051 = !DILocation(line: 126, column: 13, scope: !1039)
!1052 = !DILocation(line: 127, column: 29, scope: !1039)
!1053 = !DILocation(line: 127, column: 13, scope: !1039)
!1054 = !DILocation(line: 128, column: 13, scope: !1039)
!1055 = !DILocation(line: 132, column: 26, scope: !1040)
!1056 = !DILocation(line: 133, column: 11, scope: !1040)
!1057 = !DILocation(line: 0, scope: !1040)
!1058 = !DILocation(line: 138, column: 10, scope: !1024)
!1059 = !DILocation(line: 139, column: 1, scope: !1024)
!1060 = distinct !DISubprogram(name: "set_program_name", scope: !206, file: !206, line: 37, type: !446, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DILocalVariable(name: "argv0", arg: 1, scope: !1060, file: !206, line: 37, type: !6)
!1063 = !DILocalVariable(name: "slash", scope: !1060, file: !206, line: 44, type: !6)
!1064 = !DILocalVariable(name: "base", scope: !1060, file: !206, line: 45, type: !6)
!1065 = !DILocation(line: 0, scope: !1060)
!1066 = !DILocation(line: 44, column: 23, scope: !1060)
!1067 = !DILocation(line: 45, column: 22, scope: !1060)
!1068 = !DILocation(line: 46, column: 17, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1060, file: !206, line: 46, column: 7)
!1070 = !DILocation(line: 46, column: 9, scope: !1069)
!1071 = !DILocation(line: 46, column: 25, scope: !1069)
!1072 = !DILocation(line: 46, column: 40, scope: !1069)
!1073 = !DILocalVariable(name: "__s1", arg: 1, scope: !1074, file: !471, line: 974, type: !639)
!1074 = distinct !DISubprogram(name: "memeq", scope: !471, file: !471, line: 974, type: !1075, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!58, !639, !639, !46}
!1077 = !{!1073, !1078, !1079}
!1078 = !DILocalVariable(name: "__s2", arg: 2, scope: !1074, file: !471, line: 974, type: !639)
!1079 = !DILocalVariable(name: "__n", arg: 3, scope: !1074, file: !471, line: 974, type: !46)
!1080 = !DILocation(line: 0, scope: !1074, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 46, column: 28, scope: !1069)
!1082 = !DILocation(line: 976, column: 11, scope: !1074, inlinedAt: !1081)
!1083 = !DILocation(line: 976, column: 10, scope: !1074, inlinedAt: !1081)
!1084 = !DILocation(line: 46, column: 7, scope: !1060)
!1085 = !DILocation(line: 49, column: 11, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !206, line: 49, column: 11)
!1087 = distinct !DILexicalBlock(scope: !1069, file: !206, line: 47, column: 5)
!1088 = !DILocation(line: 49, column: 36, scope: !1086)
!1089 = !DILocation(line: 49, column: 11, scope: !1087)
!1090 = !DILocation(line: 65, column: 16, scope: !1060)
!1091 = !DILocation(line: 71, column: 27, scope: !1060)
!1092 = !DILocation(line: 74, column: 33, scope: !1060)
!1093 = !DILocation(line: 76, column: 1, scope: !1060)
!1094 = !DILocation(line: 0, scope: !211)
!1095 = !DILocation(line: 40, column: 29, scope: !211)
!1096 = !DILocation(line: 41, column: 19, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !211, file: !212, line: 41, column: 7)
!1098 = !DILocation(line: 41, column: 7, scope: !211)
!1099 = !DILocation(line: 47, column: 3, scope: !211)
!1100 = !DILocation(line: 48, column: 3, scope: !211)
!1101 = !DILocation(line: 48, column: 13, scope: !211)
!1102 = !DILocalVariable(name: "ps", arg: 1, scope: !1103, file: !1104, line: 1135, type: !1107)
!1103 = distinct !DISubprogram(name: "mbszero", scope: !1104, file: !1104, line: 1135, type: !1105, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !1108)
!1104 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1108 = !{!1102}
!1109 = !DILocation(line: 0, scope: !1103, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 48, column: 18, scope: !211)
!1111 = !DILocalVariable(name: "__dest", arg: 1, scope: !1112, file: !1113, line: 57, type: !43)
!1112 = distinct !DISubprogram(name: "memset", scope: !1113, file: !1113, line: 57, type: !1114, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !1116)
!1113 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!43, !43, !44, !46}
!1116 = !{!1111, !1117, !1118}
!1117 = !DILocalVariable(name: "__ch", arg: 2, scope: !1112, file: !1113, line: 57, type: !44)
!1118 = !DILocalVariable(name: "__len", arg: 3, scope: !1112, file: !1113, line: 57, type: !46)
!1119 = !DILocation(line: 0, scope: !1112, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 1137, column: 3, scope: !1103, inlinedAt: !1110)
!1121 = !DILocation(line: 59, column: 10, scope: !1112, inlinedAt: !1120)
!1122 = !DILocation(line: 49, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !211, file: !212, line: 49, column: 7)
!1124 = !DILocation(line: 49, column: 39, scope: !1123)
!1125 = !DILocation(line: 49, column: 44, scope: !1123)
!1126 = !DILocation(line: 54, column: 1, scope: !211)
!1127 = !DISubprogram(name: "mbrtoc32", scope: !223, file: !223, line: 57, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!46, !1130, !517, !46, !1132}
!1130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1107)
!1133 = distinct !DISubprogram(name: "clone_quoting_options", scope: !248, file: !248, line: 113, type: !1134, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1137)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!1136, !1136}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1137 = !{!1138, !1139, !1140}
!1138 = !DILocalVariable(name: "o", arg: 1, scope: !1133, file: !248, line: 113, type: !1136)
!1139 = !DILocalVariable(name: "saved_errno", scope: !1133, file: !248, line: 115, type: !44)
!1140 = !DILocalVariable(name: "p", scope: !1133, file: !248, line: 116, type: !1136)
!1141 = !DILocation(line: 0, scope: !1133)
!1142 = !DILocation(line: 115, column: 21, scope: !1133)
!1143 = !DILocation(line: 116, column: 40, scope: !1133)
!1144 = !DILocation(line: 116, column: 31, scope: !1133)
!1145 = !DILocation(line: 118, column: 9, scope: !1133)
!1146 = !DILocation(line: 119, column: 3, scope: !1133)
!1147 = distinct !DISubprogram(name: "get_quoting_style", scope: !248, file: !248, line: 124, type: !1148, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1152)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!12, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1152 = !{!1153}
!1153 = !DILocalVariable(name: "o", arg: 1, scope: !1147, file: !248, line: 124, type: !1150)
!1154 = !DILocation(line: 0, scope: !1147)
!1155 = !DILocation(line: 126, column: 11, scope: !1147)
!1156 = !DILocation(line: 126, column: 46, scope: !1147)
!1157 = !{!1158, !437, i64 0}
!1158 = !{!"quoting_options", !437, i64 0, !522, i64 4, !437, i64 8, !436, i64 40, !436, i64 48}
!1159 = !DILocation(line: 126, column: 3, scope: !1147)
!1160 = distinct !DISubprogram(name: "set_quoting_style", scope: !248, file: !248, line: 132, type: !1161, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !1136, !12}
!1163 = !{!1164, !1165}
!1164 = !DILocalVariable(name: "o", arg: 1, scope: !1160, file: !248, line: 132, type: !1136)
!1165 = !DILocalVariable(name: "s", arg: 2, scope: !1160, file: !248, line: 132, type: !12)
!1166 = !DILocation(line: 0, scope: !1160)
!1167 = !DILocation(line: 134, column: 4, scope: !1160)
!1168 = !DILocation(line: 134, column: 39, scope: !1160)
!1169 = !DILocation(line: 134, column: 45, scope: !1160)
!1170 = !DILocation(line: 135, column: 1, scope: !1160)
!1171 = distinct !DISubprogram(name: "set_char_quoting", scope: !248, file: !248, line: 143, type: !1172, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1174)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!44, !1136, !8, !44}
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1181, !1182}
!1175 = !DILocalVariable(name: "o", arg: 1, scope: !1171, file: !248, line: 143, type: !1136)
!1176 = !DILocalVariable(name: "c", arg: 2, scope: !1171, file: !248, line: 143, type: !8)
!1177 = !DILocalVariable(name: "i", arg: 3, scope: !1171, file: !248, line: 143, type: !44)
!1178 = !DILocalVariable(name: "uc", scope: !1171, file: !248, line: 145, type: !49)
!1179 = !DILocalVariable(name: "p", scope: !1171, file: !248, line: 146, type: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1181 = !DILocalVariable(name: "shift", scope: !1171, file: !248, line: 148, type: !44)
!1182 = !DILocalVariable(name: "r", scope: !1171, file: !248, line: 149, type: !14)
!1183 = !DILocation(line: 0, scope: !1171)
!1184 = !DILocation(line: 147, column: 6, scope: !1171)
!1185 = !DILocation(line: 147, column: 62, scope: !1171)
!1186 = !DILocation(line: 147, column: 57, scope: !1171)
!1187 = !DILocation(line: 148, column: 15, scope: !1171)
!1188 = !DILocation(line: 149, column: 21, scope: !1171)
!1189 = !DILocation(line: 149, column: 24, scope: !1171)
!1190 = !DILocation(line: 149, column: 34, scope: !1171)
!1191 = !DILocation(line: 150, column: 13, scope: !1171)
!1192 = !DILocation(line: 150, column: 19, scope: !1171)
!1193 = !DILocation(line: 150, column: 24, scope: !1171)
!1194 = !DILocation(line: 150, column: 6, scope: !1171)
!1195 = !DILocation(line: 151, column: 3, scope: !1171)
!1196 = distinct !DISubprogram(name: "set_quoting_flags", scope: !248, file: !248, line: 159, type: !1197, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!44, !1136, !44}
!1199 = !{!1200, !1201, !1202}
!1200 = !DILocalVariable(name: "o", arg: 1, scope: !1196, file: !248, line: 159, type: !1136)
!1201 = !DILocalVariable(name: "i", arg: 2, scope: !1196, file: !248, line: 159, type: !44)
!1202 = !DILocalVariable(name: "r", scope: !1196, file: !248, line: 163, type: !44)
!1203 = !DILocation(line: 0, scope: !1196)
!1204 = !DILocation(line: 161, column: 8, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1196, file: !248, line: 161, column: 7)
!1206 = !DILocation(line: 161, column: 7, scope: !1196)
!1207 = !DILocation(line: 163, column: 14, scope: !1196)
!1208 = !{!1158, !522, i64 4}
!1209 = !DILocation(line: 164, column: 12, scope: !1196)
!1210 = !DILocation(line: 165, column: 3, scope: !1196)
!1211 = distinct !DISubprogram(name: "set_custom_quoting", scope: !248, file: !248, line: 169, type: !1212, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1214)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !1136, !6, !6}
!1214 = !{!1215, !1216, !1217}
!1215 = !DILocalVariable(name: "o", arg: 1, scope: !1211, file: !248, line: 169, type: !1136)
!1216 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1211, file: !248, line: 170, type: !6)
!1217 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1211, file: !248, line: 170, type: !6)
!1218 = !DILocation(line: 0, scope: !1211)
!1219 = !DILocation(line: 172, column: 8, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1211, file: !248, line: 172, column: 7)
!1221 = !DILocation(line: 172, column: 7, scope: !1211)
!1222 = !DILocation(line: 174, column: 6, scope: !1211)
!1223 = !DILocation(line: 174, column: 12, scope: !1211)
!1224 = !DILocation(line: 175, column: 8, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1211, file: !248, line: 175, column: 7)
!1226 = !DILocation(line: 175, column: 19, scope: !1225)
!1227 = !DILocation(line: 176, column: 5, scope: !1225)
!1228 = !DILocation(line: 177, column: 6, scope: !1211)
!1229 = !DILocation(line: 177, column: 17, scope: !1211)
!1230 = !{!1158, !436, i64 40}
!1231 = !DILocation(line: 178, column: 6, scope: !1211)
!1232 = !DILocation(line: 178, column: 18, scope: !1211)
!1233 = !{!1158, !436, i64 48}
!1234 = !DILocation(line: 179, column: 1, scope: !1211)
!1235 = distinct !DISubprogram(name: "quotearg_buffer", scope: !248, file: !248, line: 774, type: !1236, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!46, !79, !46, !6, !46, !1150}
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1239 = !DILocalVariable(name: "buffer", arg: 1, scope: !1235, file: !248, line: 774, type: !79)
!1240 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1235, file: !248, line: 774, type: !46)
!1241 = !DILocalVariable(name: "arg", arg: 3, scope: !1235, file: !248, line: 775, type: !6)
!1242 = !DILocalVariable(name: "argsize", arg: 4, scope: !1235, file: !248, line: 775, type: !46)
!1243 = !DILocalVariable(name: "o", arg: 5, scope: !1235, file: !248, line: 776, type: !1150)
!1244 = !DILocalVariable(name: "p", scope: !1235, file: !248, line: 778, type: !1150)
!1245 = !DILocalVariable(name: "saved_errno", scope: !1235, file: !248, line: 779, type: !44)
!1246 = !DILocalVariable(name: "r", scope: !1235, file: !248, line: 780, type: !46)
!1247 = !DILocation(line: 0, scope: !1235)
!1248 = !DILocation(line: 778, column: 37, scope: !1235)
!1249 = !DILocation(line: 779, column: 21, scope: !1235)
!1250 = !DILocation(line: 781, column: 43, scope: !1235)
!1251 = !DILocation(line: 781, column: 53, scope: !1235)
!1252 = !DILocation(line: 781, column: 60, scope: !1235)
!1253 = !DILocation(line: 782, column: 43, scope: !1235)
!1254 = !DILocation(line: 782, column: 58, scope: !1235)
!1255 = !DILocation(line: 780, column: 14, scope: !1235)
!1256 = !DILocation(line: 783, column: 9, scope: !1235)
!1257 = !DILocation(line: 784, column: 3, scope: !1235)
!1258 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !248, file: !248, line: 251, type: !1259, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1263)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!46, !79, !46, !6, !46, !12, !44, !1261, !6, !6}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1288, !1290, !1293, !1294, !1295, !1296, !1299, !1300, !1303, !1307, !1308, !1316, !1319, !1320, !1322, !1323, !1324, !1325}
!1264 = !DILocalVariable(name: "buffer", arg: 1, scope: !1258, file: !248, line: 251, type: !79)
!1265 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1258, file: !248, line: 251, type: !46)
!1266 = !DILocalVariable(name: "arg", arg: 3, scope: !1258, file: !248, line: 252, type: !6)
!1267 = !DILocalVariable(name: "argsize", arg: 4, scope: !1258, file: !248, line: 252, type: !46)
!1268 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1258, file: !248, line: 253, type: !12)
!1269 = !DILocalVariable(name: "flags", arg: 6, scope: !1258, file: !248, line: 253, type: !44)
!1270 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1258, file: !248, line: 254, type: !1261)
!1271 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1258, file: !248, line: 255, type: !6)
!1272 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1258, file: !248, line: 256, type: !6)
!1273 = !DILocalVariable(name: "unibyte_locale", scope: !1258, file: !248, line: 258, type: !58)
!1274 = !DILocalVariable(name: "len", scope: !1258, file: !248, line: 260, type: !46)
!1275 = !DILocalVariable(name: "orig_buffersize", scope: !1258, file: !248, line: 261, type: !46)
!1276 = !DILocalVariable(name: "quote_string", scope: !1258, file: !248, line: 262, type: !6)
!1277 = !DILocalVariable(name: "quote_string_len", scope: !1258, file: !248, line: 263, type: !46)
!1278 = !DILocalVariable(name: "backslash_escapes", scope: !1258, file: !248, line: 264, type: !58)
!1279 = !DILocalVariable(name: "elide_outer_quotes", scope: !1258, file: !248, line: 265, type: !58)
!1280 = !DILocalVariable(name: "encountered_single_quote", scope: !1258, file: !248, line: 266, type: !58)
!1281 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1258, file: !248, line: 267, type: !58)
!1282 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1258, file: !248, line: 309, type: !58)
!1283 = !DILocalVariable(name: "lq", scope: !1284, file: !248, line: 361, type: !6)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !248, line: 361, column: 11)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !248, line: 360, column: 13)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !248, line: 333, column: 7)
!1287 = distinct !DILexicalBlock(scope: !1258, file: !248, line: 312, column: 5)
!1288 = !DILocalVariable(name: "i", scope: !1289, file: !248, line: 395, type: !46)
!1289 = distinct !DILexicalBlock(scope: !1258, file: !248, line: 395, column: 3)
!1290 = !DILocalVariable(name: "is_right_quote", scope: !1291, file: !248, line: 397, type: !58)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !248, line: 396, column: 5)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !248, line: 395, column: 3)
!1293 = !DILocalVariable(name: "escaping", scope: !1291, file: !248, line: 398, type: !58)
!1294 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1291, file: !248, line: 399, type: !58)
!1295 = !DILocalVariable(name: "c", scope: !1291, file: !248, line: 417, type: !49)
!1296 = !DILocalVariable(name: "m", scope: !1297, file: !248, line: 598, type: !46)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 596, column: 11)
!1298 = distinct !DILexicalBlock(scope: !1291, file: !248, line: 419, column: 9)
!1299 = !DILocalVariable(name: "printable", scope: !1297, file: !248, line: 600, type: !58)
!1300 = !DILocalVariable(name: "mbs", scope: !1301, file: !248, line: 609, type: !293)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !248, line: 608, column: 15)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !248, line: 602, column: 17)
!1303 = !DILocalVariable(name: "w", scope: !1304, file: !248, line: 618, type: !222)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !248, line: 617, column: 19)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !248, line: 616, column: 17)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !248, line: 616, column: 17)
!1307 = !DILocalVariable(name: "bytes", scope: !1304, file: !248, line: 619, type: !46)
!1308 = !DILocalVariable(name: "j", scope: !1309, file: !248, line: 648, type: !46)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !248, line: 648, column: 29)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !248, line: 647, column: 27)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !248, line: 645, column: 29)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !248, line: 636, column: 23)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !248, line: 628, column: 30)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !248, line: 623, column: 30)
!1315 = distinct !DILexicalBlock(scope: !1304, file: !248, line: 621, column: 25)
!1316 = !DILocalVariable(name: "ilim", scope: !1317, file: !248, line: 674, type: !46)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !248, line: 671, column: 15)
!1318 = distinct !DILexicalBlock(scope: !1297, file: !248, line: 670, column: 17)
!1319 = !DILabel(scope: !1258, name: "process_input", file: !248, line: 308)
!1320 = !DILabel(scope: !1321, name: "c_and_shell_escape", file: !248, line: 502)
!1321 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 478, column: 9)
!1322 = !DILabel(scope: !1321, name: "c_escape", file: !248, line: 507)
!1323 = !DILabel(scope: !1291, name: "store_escape", file: !248, line: 709)
!1324 = !DILabel(scope: !1291, name: "store_c", file: !248, line: 712)
!1325 = !DILabel(scope: !1258, name: "force_outer_quoting_style", file: !248, line: 753)
!1326 = !DILocation(line: 0, scope: !1258)
!1327 = !DILocation(line: 258, column: 25, scope: !1258)
!1328 = !DILocation(line: 258, column: 36, scope: !1258)
!1329 = !DILocation(line: 267, column: 3, scope: !1258)
!1330 = !DILocation(line: 261, column: 10, scope: !1258)
!1331 = !DILocation(line: 262, column: 15, scope: !1258)
!1332 = !DILocation(line: 263, column: 10, scope: !1258)
!1333 = !DILocation(line: 308, column: 2, scope: !1258)
!1334 = !DILocation(line: 311, column: 3, scope: !1258)
!1335 = !DILocation(line: 318, column: 11, scope: !1287)
!1336 = !DILocation(line: 319, column: 9, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !248, line: 319, column: 9)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !248, line: 319, column: 9)
!1339 = distinct !DILexicalBlock(scope: !1287, file: !248, line: 318, column: 11)
!1340 = !DILocation(line: 319, column: 9, scope: !1338)
!1341 = !DILocation(line: 0, scope: !284, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 357, column: 26, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !248, line: 335, column: 11)
!1344 = distinct !DILexicalBlock(scope: !1286, file: !248, line: 334, column: 13)
!1345 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1342)
!1346 = !DILocation(line: 201, column: 19, scope: !1347, inlinedAt: !1342)
!1347 = distinct !DILexicalBlock(scope: !284, file: !248, line: 201, column: 7)
!1348 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1342)
!1349 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1342)
!1350 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1342)
!1351 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1342)
!1352 = !DILocalVariable(name: "ps", arg: 1, scope: !1353, file: !1104, line: 1135, type: !1356)
!1353 = distinct !DISubprogram(name: "mbszero", scope: !1104, file: !1104, line: 1135, type: !1354, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1357)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1357 = !{!1352}
!1358 = !DILocation(line: 0, scope: !1353, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1342)
!1360 = !DILocalVariable(name: "__dest", arg: 1, scope: !1361, file: !1113, line: 57, type: !43)
!1361 = distinct !DISubprogram(name: "memset", scope: !1113, file: !1113, line: 57, type: !1114, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1362)
!1362 = !{!1360, !1363, !1364}
!1363 = !DILocalVariable(name: "__ch", arg: 2, scope: !1361, file: !1113, line: 57, type: !44)
!1364 = !DILocalVariable(name: "__len", arg: 3, scope: !1361, file: !1113, line: 57, type: !46)
!1365 = !DILocation(line: 0, scope: !1361, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 1137, column: 3, scope: !1353, inlinedAt: !1359)
!1367 = !DILocation(line: 59, column: 10, scope: !1361, inlinedAt: !1366)
!1368 = !DILocation(line: 231, column: 7, scope: !1369, inlinedAt: !1342)
!1369 = distinct !DILexicalBlock(scope: !284, file: !248, line: 231, column: 7)
!1370 = !DILocation(line: 231, column: 40, scope: !1369, inlinedAt: !1342)
!1371 = !DILocation(line: 231, column: 45, scope: !1369, inlinedAt: !1342)
!1372 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1342)
!1373 = !DILocation(line: 0, scope: !284, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 358, column: 27, scope: !1343)
!1375 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1374)
!1376 = !DILocation(line: 201, column: 19, scope: !1347, inlinedAt: !1374)
!1377 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1374)
!1378 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1374)
!1379 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1374)
!1380 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1374)
!1381 = !DILocation(line: 0, scope: !1353, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1374)
!1383 = !DILocation(line: 0, scope: !1361, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 1137, column: 3, scope: !1353, inlinedAt: !1382)
!1385 = !DILocation(line: 59, column: 10, scope: !1361, inlinedAt: !1384)
!1386 = !DILocation(line: 231, column: 7, scope: !1369, inlinedAt: !1374)
!1387 = !DILocation(line: 231, column: 40, scope: !1369, inlinedAt: !1374)
!1388 = !DILocation(line: 231, column: 45, scope: !1369, inlinedAt: !1374)
!1389 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1374)
!1390 = !DILocation(line: 360, column: 13, scope: !1286)
!1391 = !DILocation(line: 0, scope: !1284)
!1392 = !DILocation(line: 361, column: 45, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1284, file: !248, line: 361, column: 11)
!1394 = !DILocation(line: 361, column: 11, scope: !1284)
!1395 = !DILocation(line: 362, column: 13, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !248, line: 362, column: 13)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !248, line: 362, column: 13)
!1398 = !DILocation(line: 362, column: 13, scope: !1397)
!1399 = !DILocation(line: 361, column: 52, scope: !1393)
!1400 = distinct !{!1400, !1394, !1401, !487}
!1401 = !DILocation(line: 362, column: 13, scope: !1284)
!1402 = !DILocation(line: 260, column: 10, scope: !1258)
!1403 = !DILocation(line: 365, column: 28, scope: !1286)
!1404 = !DILocation(line: 367, column: 7, scope: !1287)
!1405 = !DILocation(line: 370, column: 7, scope: !1287)
!1406 = !DILocation(line: 376, column: 11, scope: !1287)
!1407 = !DILocation(line: 381, column: 11, scope: !1287)
!1408 = !DILocation(line: 382, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !248, line: 382, column: 9)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !248, line: 382, column: 9)
!1411 = distinct !DILexicalBlock(scope: !1287, file: !248, line: 381, column: 11)
!1412 = !DILocation(line: 382, column: 9, scope: !1410)
!1413 = !DILocation(line: 389, column: 7, scope: !1287)
!1414 = !DILocation(line: 392, column: 7, scope: !1287)
!1415 = !DILocation(line: 0, scope: !1289)
!1416 = !DILocation(line: 395, column: 8, scope: !1289)
!1417 = !DILocation(line: 395, column: 34, scope: !1292)
!1418 = !DILocation(line: 395, column: 26, scope: !1292)
!1419 = !DILocation(line: 395, column: 48, scope: !1292)
!1420 = !DILocation(line: 395, column: 55, scope: !1292)
!1421 = !DILocation(line: 395, column: 3, scope: !1289)
!1422 = !DILocation(line: 395, column: 67, scope: !1292)
!1423 = !DILocation(line: 0, scope: !1291)
!1424 = !DILocation(line: 402, column: 11, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1291, file: !248, line: 401, column: 11)
!1426 = !DILocation(line: 404, column: 17, scope: !1425)
!1427 = !DILocation(line: 405, column: 39, scope: !1425)
!1428 = !DILocation(line: 409, column: 32, scope: !1425)
!1429 = !DILocation(line: 405, column: 19, scope: !1425)
!1430 = !DILocation(line: 405, column: 15, scope: !1425)
!1431 = !DILocation(line: 410, column: 11, scope: !1425)
!1432 = !DILocation(line: 410, column: 25, scope: !1425)
!1433 = !DILocalVariable(name: "__s1", arg: 1, scope: !1434, file: !471, line: 974, type: !639)
!1434 = distinct !DISubprogram(name: "memeq", scope: !471, file: !471, line: 974, type: !1075, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1435)
!1435 = !{!1433, !1436, !1437}
!1436 = !DILocalVariable(name: "__s2", arg: 2, scope: !1434, file: !471, line: 974, type: !639)
!1437 = !DILocalVariable(name: "__n", arg: 3, scope: !1434, file: !471, line: 974, type: !46)
!1438 = !DILocation(line: 0, scope: !1434, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 410, column: 14, scope: !1425)
!1440 = !DILocation(line: 976, column: 11, scope: !1434, inlinedAt: !1439)
!1441 = !DILocation(line: 976, column: 10, scope: !1434, inlinedAt: !1439)
!1442 = !DILocation(line: 401, column: 11, scope: !1291)
!1443 = !DILocation(line: 417, column: 25, scope: !1291)
!1444 = !DILocation(line: 418, column: 7, scope: !1291)
!1445 = !DILocation(line: 421, column: 15, scope: !1298)
!1446 = !DILocation(line: 423, column: 15, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !248, line: 423, column: 15)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !248, line: 422, column: 13)
!1449 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 421, column: 15)
!1450 = !DILocation(line: 423, column: 15, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !248, line: 423, column: 15)
!1452 = !DILocation(line: 423, column: 15, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !248, line: 423, column: 15)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !248, line: 423, column: 15)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !248, line: 423, column: 15)
!1456 = !DILocation(line: 423, column: 15, scope: !1454)
!1457 = !DILocation(line: 423, column: 15, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !248, line: 423, column: 15)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !248, line: 423, column: 15)
!1460 = !DILocation(line: 423, column: 15, scope: !1459)
!1461 = !DILocation(line: 423, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !248, line: 423, column: 15)
!1463 = distinct !DILexicalBlock(scope: !1455, file: !248, line: 423, column: 15)
!1464 = !DILocation(line: 423, column: 15, scope: !1463)
!1465 = !DILocation(line: 423, column: 15, scope: !1455)
!1466 = !DILocation(line: 423, column: 15, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !248, line: 423, column: 15)
!1468 = distinct !DILexicalBlock(scope: !1447, file: !248, line: 423, column: 15)
!1469 = !DILocation(line: 423, column: 15, scope: !1468)
!1470 = !DILocation(line: 431, column: 19, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1448, file: !248, line: 430, column: 19)
!1472 = !DILocation(line: 431, column: 24, scope: !1471)
!1473 = !DILocation(line: 431, column: 28, scope: !1471)
!1474 = !DILocation(line: 431, column: 38, scope: !1471)
!1475 = !DILocation(line: 431, column: 48, scope: !1471)
!1476 = !DILocation(line: 431, column: 59, scope: !1471)
!1477 = !DILocation(line: 433, column: 19, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !248, line: 433, column: 19)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !248, line: 433, column: 19)
!1480 = distinct !DILexicalBlock(scope: !1471, file: !248, line: 432, column: 17)
!1481 = !DILocation(line: 433, column: 19, scope: !1479)
!1482 = !DILocation(line: 434, column: 19, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !248, line: 434, column: 19)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !248, line: 434, column: 19)
!1485 = !DILocation(line: 434, column: 19, scope: !1484)
!1486 = !DILocation(line: 435, column: 17, scope: !1480)
!1487 = !DILocation(line: 442, column: 20, scope: !1449)
!1488 = !DILocation(line: 447, column: 11, scope: !1298)
!1489 = !DILocation(line: 450, column: 19, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 448, column: 13)
!1491 = !DILocation(line: 456, column: 19, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1490, file: !248, line: 455, column: 19)
!1493 = !DILocation(line: 456, column: 24, scope: !1492)
!1494 = !DILocation(line: 456, column: 28, scope: !1492)
!1495 = !DILocation(line: 456, column: 38, scope: !1492)
!1496 = !DILocation(line: 456, column: 47, scope: !1492)
!1497 = !DILocation(line: 456, column: 41, scope: !1492)
!1498 = !DILocation(line: 456, column: 52, scope: !1492)
!1499 = !DILocation(line: 455, column: 19, scope: !1490)
!1500 = !DILocation(line: 457, column: 25, scope: !1492)
!1501 = !DILocation(line: 457, column: 17, scope: !1492)
!1502 = !DILocation(line: 464, column: 25, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1492, file: !248, line: 458, column: 19)
!1504 = !DILocation(line: 468, column: 21, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !248, line: 468, column: 21)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !248, line: 468, column: 21)
!1507 = !DILocation(line: 468, column: 21, scope: !1506)
!1508 = !DILocation(line: 469, column: 21, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !248, line: 469, column: 21)
!1510 = distinct !DILexicalBlock(scope: !1503, file: !248, line: 469, column: 21)
!1511 = !DILocation(line: 469, column: 21, scope: !1510)
!1512 = !DILocation(line: 470, column: 21, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !248, line: 470, column: 21)
!1514 = distinct !DILexicalBlock(scope: !1503, file: !248, line: 470, column: 21)
!1515 = !DILocation(line: 470, column: 21, scope: !1514)
!1516 = !DILocation(line: 471, column: 21, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !248, line: 471, column: 21)
!1518 = distinct !DILexicalBlock(scope: !1503, file: !248, line: 471, column: 21)
!1519 = !DILocation(line: 471, column: 21, scope: !1518)
!1520 = !DILocation(line: 472, column: 21, scope: !1503)
!1521 = !DILocation(line: 482, column: 33, scope: !1321)
!1522 = !DILocation(line: 483, column: 33, scope: !1321)
!1523 = !DILocation(line: 485, column: 33, scope: !1321)
!1524 = !DILocation(line: 486, column: 33, scope: !1321)
!1525 = !DILocation(line: 487, column: 33, scope: !1321)
!1526 = !DILocation(line: 490, column: 17, scope: !1321)
!1527 = !DILocation(line: 492, column: 21, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !248, line: 491, column: 15)
!1529 = distinct !DILexicalBlock(scope: !1321, file: !248, line: 490, column: 17)
!1530 = !DILocation(line: 499, column: 35, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1321, file: !248, line: 499, column: 17)
!1532 = !DILocation(line: 499, column: 57, scope: !1531)
!1533 = !DILocation(line: 0, scope: !1321)
!1534 = !DILocation(line: 502, column: 11, scope: !1321)
!1535 = !DILocation(line: 504, column: 17, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1321, file: !248, line: 503, column: 17)
!1537 = !DILocation(line: 507, column: 11, scope: !1321)
!1538 = !DILocation(line: 508, column: 17, scope: !1321)
!1539 = !DILocation(line: 517, column: 15, scope: !1298)
!1540 = !DILocation(line: 517, column: 40, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 517, column: 15)
!1542 = !DILocation(line: 517, column: 47, scope: !1541)
!1543 = !DILocation(line: 517, column: 18, scope: !1541)
!1544 = !DILocation(line: 521, column: 17, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 521, column: 15)
!1546 = !DILocation(line: 521, column: 15, scope: !1298)
!1547 = !DILocation(line: 525, column: 11, scope: !1298)
!1548 = !DILocation(line: 537, column: 15, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 536, column: 15)
!1550 = !DILocation(line: 536, column: 15, scope: !1298)
!1551 = !DILocation(line: 544, column: 15, scope: !1298)
!1552 = !DILocation(line: 546, column: 19, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !248, line: 545, column: 13)
!1554 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 544, column: 15)
!1555 = !DILocation(line: 549, column: 19, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !248, line: 549, column: 19)
!1557 = !DILocation(line: 549, column: 30, scope: !1556)
!1558 = !DILocation(line: 558, column: 15, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !248, line: 558, column: 15)
!1560 = distinct !DILexicalBlock(scope: !1553, file: !248, line: 558, column: 15)
!1561 = !DILocation(line: 558, column: 15, scope: !1560)
!1562 = !DILocation(line: 559, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !248, line: 559, column: 15)
!1564 = distinct !DILexicalBlock(scope: !1553, file: !248, line: 559, column: 15)
!1565 = !DILocation(line: 559, column: 15, scope: !1564)
!1566 = !DILocation(line: 560, column: 15, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !248, line: 560, column: 15)
!1568 = distinct !DILexicalBlock(scope: !1553, file: !248, line: 560, column: 15)
!1569 = !DILocation(line: 560, column: 15, scope: !1568)
!1570 = !DILocation(line: 562, column: 13, scope: !1553)
!1571 = !DILocation(line: 602, column: 17, scope: !1297)
!1572 = !DILocation(line: 0, scope: !1297)
!1573 = !DILocation(line: 605, column: 29, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1302, file: !248, line: 603, column: 15)
!1575 = !DILocation(line: 605, column: 41, scope: !1574)
!1576 = !DILocation(line: 670, column: 23, scope: !1318)
!1577 = !DILocation(line: 609, column: 17, scope: !1301)
!1578 = !DILocation(line: 609, column: 27, scope: !1301)
!1579 = !DILocation(line: 0, scope: !1353, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 609, column: 32, scope: !1301)
!1581 = !DILocation(line: 0, scope: !1361, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 1137, column: 3, scope: !1353, inlinedAt: !1580)
!1583 = !DILocation(line: 59, column: 10, scope: !1361, inlinedAt: !1582)
!1584 = !DILocation(line: 613, column: 29, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1301, file: !248, line: 613, column: 21)
!1586 = !DILocation(line: 613, column: 21, scope: !1301)
!1587 = !DILocation(line: 614, column: 29, scope: !1585)
!1588 = !DILocation(line: 614, column: 19, scope: !1585)
!1589 = !DILocation(line: 618, column: 21, scope: !1304)
!1590 = !DILocation(line: 620, column: 54, scope: !1304)
!1591 = !DILocation(line: 0, scope: !1304)
!1592 = !DILocation(line: 619, column: 36, scope: !1304)
!1593 = !DILocation(line: 621, column: 25, scope: !1304)
!1594 = !DILocation(line: 631, column: 38, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1313, file: !248, line: 629, column: 23)
!1596 = !DILocation(line: 631, column: 48, scope: !1595)
!1597 = !DILocation(line: 665, column: 19, scope: !1305)
!1598 = !DILocation(line: 666, column: 15, scope: !1302)
!1599 = !DILocation(line: 626, column: 25, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1314, file: !248, line: 624, column: 23)
!1601 = !DILocation(line: 631, column: 51, scope: !1595)
!1602 = !DILocation(line: 631, column: 25, scope: !1595)
!1603 = !DILocation(line: 632, column: 28, scope: !1595)
!1604 = !DILocation(line: 631, column: 34, scope: !1595)
!1605 = distinct !{!1605, !1602, !1603, !487}
!1606 = !DILocation(line: 646, column: 29, scope: !1311)
!1607 = !DILocation(line: 0, scope: !1309)
!1608 = !DILocation(line: 649, column: 49, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1309, file: !248, line: 648, column: 29)
!1610 = !DILocation(line: 649, column: 39, scope: !1609)
!1611 = !DILocation(line: 649, column: 31, scope: !1609)
!1612 = !DILocation(line: 648, column: 60, scope: !1609)
!1613 = !DILocation(line: 648, column: 50, scope: !1609)
!1614 = !DILocation(line: 648, column: 29, scope: !1309)
!1615 = distinct !{!1615, !1614, !1616, !487}
!1616 = !DILocation(line: 654, column: 33, scope: !1309)
!1617 = !DILocation(line: 657, column: 43, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1312, file: !248, line: 657, column: 29)
!1619 = !DILocalVariable(name: "wc", arg: 1, scope: !1620, file: !1621, line: 865, type: !1624)
!1620 = distinct !DISubprogram(name: "c32isprint", scope: !1621, file: !1621, line: 865, type: !1622, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1626)
!1621 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!44, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1625, line: 20, baseType: !14)
!1625 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1626 = !{!1619}
!1627 = !DILocation(line: 0, scope: !1620, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 657, column: 31, scope: !1618)
!1629 = !DILocation(line: 871, column: 10, scope: !1620, inlinedAt: !1628)
!1630 = !DILocation(line: 657, column: 31, scope: !1618)
!1631 = !DILocation(line: 664, column: 23, scope: !1304)
!1632 = !DILocation(line: 753, column: 2, scope: !1258)
!1633 = !DILocation(line: 756, column: 51, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1258, file: !248, line: 756, column: 7)
!1635 = !DILocation(line: 670, column: 19, scope: !1318)
!1636 = !DILocation(line: 670, column: 45, scope: !1318)
!1637 = !DILocation(line: 674, column: 33, scope: !1317)
!1638 = !DILocation(line: 0, scope: !1317)
!1639 = !DILocation(line: 676, column: 17, scope: !1317)
!1640 = !DILocation(line: 398, column: 12, scope: !1291)
!1641 = !DILocation(line: 678, column: 43, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !248, line: 678, column: 25)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !248, line: 677, column: 19)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !248, line: 676, column: 17)
!1645 = distinct !DILexicalBlock(scope: !1317, file: !248, line: 676, column: 17)
!1646 = !DILocation(line: 680, column: 25, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !248, line: 680, column: 25)
!1648 = distinct !DILexicalBlock(scope: !1642, file: !248, line: 679, column: 23)
!1649 = !DILocation(line: 680, column: 25, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !248, line: 680, column: 25)
!1651 = !DILocation(line: 680, column: 25, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !248, line: 680, column: 25)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 680, column: 25)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !248, line: 680, column: 25)
!1655 = !DILocation(line: 680, column: 25, scope: !1653)
!1656 = !DILocation(line: 680, column: 25, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !248, line: 680, column: 25)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 680, column: 25)
!1659 = !DILocation(line: 680, column: 25, scope: !1658)
!1660 = !DILocation(line: 680, column: 25, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !248, line: 680, column: 25)
!1662 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 680, column: 25)
!1663 = !DILocation(line: 680, column: 25, scope: !1662)
!1664 = !DILocation(line: 680, column: 25, scope: !1654)
!1665 = !DILocation(line: 680, column: 25, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !248, line: 680, column: 25)
!1667 = distinct !DILexicalBlock(scope: !1647, file: !248, line: 680, column: 25)
!1668 = !DILocation(line: 680, column: 25, scope: !1667)
!1669 = !DILocation(line: 681, column: 25, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !248, line: 681, column: 25)
!1671 = distinct !DILexicalBlock(scope: !1648, file: !248, line: 681, column: 25)
!1672 = !DILocation(line: 681, column: 25, scope: !1671)
!1673 = !DILocation(line: 682, column: 25, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !248, line: 682, column: 25)
!1675 = distinct !DILexicalBlock(scope: !1648, file: !248, line: 682, column: 25)
!1676 = !DILocation(line: 682, column: 25, scope: !1675)
!1677 = !DILocation(line: 683, column: 38, scope: !1648)
!1678 = !DILocation(line: 683, column: 33, scope: !1648)
!1679 = !DILocation(line: 684, column: 23, scope: !1648)
!1680 = !DILocation(line: 685, column: 30, scope: !1642)
!1681 = !DILocation(line: 687, column: 25, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !248, line: 687, column: 25)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !248, line: 687, column: 25)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !248, line: 686, column: 23)
!1685 = distinct !DILexicalBlock(scope: !1642, file: !248, line: 685, column: 30)
!1686 = !DILocation(line: 687, column: 25, scope: !1683)
!1687 = !DILocation(line: 689, column: 23, scope: !1684)
!1688 = !DILocation(line: 690, column: 35, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1643, file: !248, line: 690, column: 25)
!1690 = !DILocation(line: 690, column: 30, scope: !1689)
!1691 = !DILocation(line: 690, column: 25, scope: !1643)
!1692 = !DILocation(line: 692, column: 21, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !248, line: 692, column: 21)
!1694 = distinct !DILexicalBlock(scope: !1643, file: !248, line: 692, column: 21)
!1695 = !DILocation(line: 692, column: 21, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !248, line: 692, column: 21)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !248, line: 692, column: 21)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !248, line: 692, column: 21)
!1699 = !DILocation(line: 692, column: 21, scope: !1697)
!1700 = !DILocation(line: 692, column: 21, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !248, line: 692, column: 21)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !248, line: 692, column: 21)
!1703 = !DILocation(line: 692, column: 21, scope: !1702)
!1704 = !DILocation(line: 692, column: 21, scope: !1698)
!1705 = !DILocation(line: 0, scope: !1643)
!1706 = !DILocation(line: 693, column: 21, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !248, line: 693, column: 21)
!1708 = distinct !DILexicalBlock(scope: !1643, file: !248, line: 693, column: 21)
!1709 = !DILocation(line: 693, column: 21, scope: !1708)
!1710 = !DILocation(line: 694, column: 25, scope: !1643)
!1711 = !DILocation(line: 676, column: 17, scope: !1644)
!1712 = distinct !{!1712, !1713, !1714}
!1713 = !DILocation(line: 676, column: 17, scope: !1645)
!1714 = !DILocation(line: 695, column: 19, scope: !1645)
!1715 = !DILocation(line: 409, column: 30, scope: !1425)
!1716 = !DILocation(line: 702, column: 34, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1291, file: !248, line: 702, column: 11)
!1718 = !DILocation(line: 704, column: 14, scope: !1717)
!1719 = !DILocation(line: 705, column: 14, scope: !1717)
!1720 = !DILocation(line: 705, column: 35, scope: !1717)
!1721 = !DILocation(line: 705, column: 17, scope: !1717)
!1722 = !DILocation(line: 705, column: 47, scope: !1717)
!1723 = !DILocation(line: 705, column: 65, scope: !1717)
!1724 = !DILocation(line: 706, column: 11, scope: !1717)
!1725 = !DILocation(line: 702, column: 11, scope: !1291)
!1726 = !DILocation(line: 395, column: 15, scope: !1289)
!1727 = !DILocation(line: 709, column: 5, scope: !1291)
!1728 = !DILocation(line: 710, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1291, file: !248, line: 710, column: 7)
!1730 = !DILocation(line: 710, column: 7, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1729, file: !248, line: 710, column: 7)
!1732 = !DILocation(line: 710, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !248, line: 710, column: 7)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !248, line: 710, column: 7)
!1735 = distinct !DILexicalBlock(scope: !1731, file: !248, line: 710, column: 7)
!1736 = !DILocation(line: 710, column: 7, scope: !1734)
!1737 = !DILocation(line: 710, column: 7, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !248, line: 710, column: 7)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !248, line: 710, column: 7)
!1740 = !DILocation(line: 710, column: 7, scope: !1739)
!1741 = !DILocation(line: 710, column: 7, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !248, line: 710, column: 7)
!1743 = distinct !DILexicalBlock(scope: !1735, file: !248, line: 710, column: 7)
!1744 = !DILocation(line: 710, column: 7, scope: !1743)
!1745 = !DILocation(line: 710, column: 7, scope: !1735)
!1746 = !DILocation(line: 710, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !248, line: 710, column: 7)
!1748 = distinct !DILexicalBlock(scope: !1729, file: !248, line: 710, column: 7)
!1749 = !DILocation(line: 710, column: 7, scope: !1748)
!1750 = !DILocation(line: 712, column: 5, scope: !1291)
!1751 = !DILocation(line: 713, column: 7, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !248, line: 713, column: 7)
!1753 = distinct !DILexicalBlock(scope: !1291, file: !248, line: 713, column: 7)
!1754 = !DILocation(line: 417, column: 21, scope: !1291)
!1755 = !DILocation(line: 713, column: 7, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !248, line: 713, column: 7)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !248, line: 713, column: 7)
!1758 = distinct !DILexicalBlock(scope: !1752, file: !248, line: 713, column: 7)
!1759 = !DILocation(line: 713, column: 7, scope: !1757)
!1760 = !DILocation(line: 713, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !248, line: 713, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !248, line: 713, column: 7)
!1763 = !DILocation(line: 713, column: 7, scope: !1762)
!1764 = !DILocation(line: 713, column: 7, scope: !1758)
!1765 = !DILocation(line: 714, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !248, line: 714, column: 7)
!1767 = distinct !DILexicalBlock(scope: !1291, file: !248, line: 714, column: 7)
!1768 = !DILocation(line: 714, column: 7, scope: !1767)
!1769 = !DILocation(line: 716, column: 11, scope: !1291)
!1770 = !DILocation(line: 718, column: 5, scope: !1292)
!1771 = !DILocation(line: 395, column: 82, scope: !1292)
!1772 = !DILocation(line: 395, column: 3, scope: !1292)
!1773 = distinct !{!1773, !1421, !1774, !487}
!1774 = !DILocation(line: 718, column: 5, scope: !1289)
!1775 = !DILocation(line: 720, column: 11, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1258, file: !248, line: 720, column: 7)
!1777 = !DILocation(line: 720, column: 16, scope: !1776)
!1778 = !DILocation(line: 728, column: 51, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1258, file: !248, line: 728, column: 7)
!1780 = !DILocation(line: 731, column: 11, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1779, file: !248, line: 730, column: 5)
!1782 = !DILocation(line: 732, column: 16, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1781, file: !248, line: 731, column: 11)
!1784 = !DILocation(line: 732, column: 9, scope: !1783)
!1785 = !DILocation(line: 736, column: 18, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !248, line: 736, column: 16)
!1787 = !DILocation(line: 736, column: 29, scope: !1786)
!1788 = !DILocation(line: 745, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1258, file: !248, line: 745, column: 7)
!1790 = !DILocation(line: 745, column: 20, scope: !1789)
!1791 = !DILocation(line: 746, column: 12, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !248, line: 746, column: 5)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !248, line: 746, column: 5)
!1794 = !DILocation(line: 746, column: 5, scope: !1793)
!1795 = !DILocation(line: 747, column: 7, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !248, line: 747, column: 7)
!1797 = distinct !DILexicalBlock(scope: !1792, file: !248, line: 747, column: 7)
!1798 = !DILocation(line: 747, column: 7, scope: !1797)
!1799 = !DILocation(line: 746, column: 39, scope: !1792)
!1800 = distinct !{!1800, !1794, !1801, !487}
!1801 = !DILocation(line: 747, column: 7, scope: !1793)
!1802 = !DILocation(line: 749, column: 11, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1258, file: !248, line: 749, column: 7)
!1804 = !DILocation(line: 749, column: 7, scope: !1258)
!1805 = !DILocation(line: 750, column: 5, scope: !1803)
!1806 = !DILocation(line: 750, column: 17, scope: !1803)
!1807 = !DILocation(line: 756, column: 21, scope: !1634)
!1808 = !DILocation(line: 760, column: 42, scope: !1258)
!1809 = !DILocation(line: 758, column: 10, scope: !1258)
!1810 = !DILocation(line: 758, column: 3, scope: !1258)
!1811 = !DILocation(line: 762, column: 1, scope: !1258)
!1812 = !DISubprogram(name: "iswprint", scope: !1813, file: !1813, line: 120, type: !1622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!1813 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1814 = distinct !DISubprogram(name: "quotearg_alloc", scope: !248, file: !248, line: 788, type: !1815, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!79, !6, !46, !1150}
!1817 = !{!1818, !1819, !1820}
!1818 = !DILocalVariable(name: "arg", arg: 1, scope: !1814, file: !248, line: 788, type: !6)
!1819 = !DILocalVariable(name: "argsize", arg: 2, scope: !1814, file: !248, line: 788, type: !46)
!1820 = !DILocalVariable(name: "o", arg: 3, scope: !1814, file: !248, line: 789, type: !1150)
!1821 = !DILocation(line: 0, scope: !1814)
!1822 = !DILocalVariable(name: "arg", arg: 1, scope: !1823, file: !248, line: 801, type: !6)
!1823 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !248, file: !248, line: 801, type: !1824, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!79, !6, !46, !366, !1150}
!1826 = !{!1822, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834}
!1827 = !DILocalVariable(name: "argsize", arg: 2, scope: !1823, file: !248, line: 801, type: !46)
!1828 = !DILocalVariable(name: "size", arg: 3, scope: !1823, file: !248, line: 801, type: !366)
!1829 = !DILocalVariable(name: "o", arg: 4, scope: !1823, file: !248, line: 802, type: !1150)
!1830 = !DILocalVariable(name: "p", scope: !1823, file: !248, line: 804, type: !1150)
!1831 = !DILocalVariable(name: "saved_errno", scope: !1823, file: !248, line: 805, type: !44)
!1832 = !DILocalVariable(name: "flags", scope: !1823, file: !248, line: 807, type: !44)
!1833 = !DILocalVariable(name: "bufsize", scope: !1823, file: !248, line: 808, type: !46)
!1834 = !DILocalVariable(name: "buf", scope: !1823, file: !248, line: 812, type: !79)
!1835 = !DILocation(line: 0, scope: !1823, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 791, column: 10, scope: !1814)
!1837 = !DILocation(line: 804, column: 37, scope: !1823, inlinedAt: !1836)
!1838 = !DILocation(line: 805, column: 21, scope: !1823, inlinedAt: !1836)
!1839 = !DILocation(line: 807, column: 18, scope: !1823, inlinedAt: !1836)
!1840 = !DILocation(line: 807, column: 24, scope: !1823, inlinedAt: !1836)
!1841 = !DILocation(line: 808, column: 72, scope: !1823, inlinedAt: !1836)
!1842 = !DILocation(line: 809, column: 53, scope: !1823, inlinedAt: !1836)
!1843 = !DILocation(line: 810, column: 49, scope: !1823, inlinedAt: !1836)
!1844 = !DILocation(line: 811, column: 49, scope: !1823, inlinedAt: !1836)
!1845 = !DILocation(line: 808, column: 20, scope: !1823, inlinedAt: !1836)
!1846 = !DILocation(line: 811, column: 62, scope: !1823, inlinedAt: !1836)
!1847 = !DILocation(line: 812, column: 15, scope: !1823, inlinedAt: !1836)
!1848 = !DILocation(line: 813, column: 60, scope: !1823, inlinedAt: !1836)
!1849 = !DILocation(line: 815, column: 32, scope: !1823, inlinedAt: !1836)
!1850 = !DILocation(line: 815, column: 47, scope: !1823, inlinedAt: !1836)
!1851 = !DILocation(line: 813, column: 3, scope: !1823, inlinedAt: !1836)
!1852 = !DILocation(line: 816, column: 9, scope: !1823, inlinedAt: !1836)
!1853 = !DILocation(line: 791, column: 3, scope: !1814)
!1854 = !DILocation(line: 0, scope: !1823)
!1855 = !DILocation(line: 804, column: 37, scope: !1823)
!1856 = !DILocation(line: 805, column: 21, scope: !1823)
!1857 = !DILocation(line: 807, column: 18, scope: !1823)
!1858 = !DILocation(line: 807, column: 27, scope: !1823)
!1859 = !DILocation(line: 807, column: 24, scope: !1823)
!1860 = !DILocation(line: 808, column: 72, scope: !1823)
!1861 = !DILocation(line: 809, column: 53, scope: !1823)
!1862 = !DILocation(line: 810, column: 49, scope: !1823)
!1863 = !DILocation(line: 811, column: 49, scope: !1823)
!1864 = !DILocation(line: 808, column: 20, scope: !1823)
!1865 = !DILocation(line: 811, column: 62, scope: !1823)
!1866 = !DILocation(line: 812, column: 15, scope: !1823)
!1867 = !DILocation(line: 813, column: 60, scope: !1823)
!1868 = !DILocation(line: 815, column: 32, scope: !1823)
!1869 = !DILocation(line: 815, column: 47, scope: !1823)
!1870 = !DILocation(line: 813, column: 3, scope: !1823)
!1871 = !DILocation(line: 816, column: 9, scope: !1823)
!1872 = !DILocation(line: 817, column: 7, scope: !1823)
!1873 = !DILocation(line: 818, column: 11, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1823, file: !248, line: 817, column: 7)
!1875 = !{!880, !880, i64 0}
!1876 = !DILocation(line: 818, column: 5, scope: !1874)
!1877 = !DILocation(line: 819, column: 3, scope: !1823)
!1878 = distinct !DISubprogram(name: "quotearg_free", scope: !248, file: !248, line: 837, type: !184, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1879)
!1879 = !{!1880, !1881}
!1880 = !DILocalVariable(name: "sv", scope: !1878, file: !248, line: 839, type: !307)
!1881 = !DILocalVariable(name: "i", scope: !1882, file: !248, line: 840, type: !44)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !248, line: 840, column: 3)
!1883 = !DILocation(line: 839, column: 24, scope: !1878)
!1884 = !DILocation(line: 0, scope: !1878)
!1885 = !DILocation(line: 0, scope: !1882)
!1886 = !DILocation(line: 840, column: 21, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !248, line: 840, column: 3)
!1888 = !DILocation(line: 840, column: 3, scope: !1882)
!1889 = !DILocation(line: 842, column: 13, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1878, file: !248, line: 842, column: 7)
!1891 = !{!1892, !436, i64 8}
!1892 = !{!"slotvec", !880, i64 0, !436, i64 8}
!1893 = !DILocation(line: 842, column: 17, scope: !1890)
!1894 = !DILocation(line: 842, column: 7, scope: !1878)
!1895 = !DILocation(line: 841, column: 17, scope: !1887)
!1896 = !DILocation(line: 841, column: 5, scope: !1887)
!1897 = !DILocation(line: 840, column: 32, scope: !1887)
!1898 = distinct !{!1898, !1888, !1899, !487}
!1899 = !DILocation(line: 841, column: 20, scope: !1882)
!1900 = !DILocation(line: 844, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1890, file: !248, line: 843, column: 5)
!1902 = !DILocation(line: 845, column: 21, scope: !1901)
!1903 = !{!1892, !880, i64 0}
!1904 = !DILocation(line: 846, column: 20, scope: !1901)
!1905 = !DILocation(line: 847, column: 5, scope: !1901)
!1906 = !DILocation(line: 848, column: 10, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1878, file: !248, line: 848, column: 7)
!1908 = !DILocation(line: 848, column: 7, scope: !1878)
!1909 = !DILocation(line: 850, column: 13, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1907, file: !248, line: 849, column: 5)
!1911 = !DILocation(line: 850, column: 7, scope: !1910)
!1912 = !DILocation(line: 851, column: 15, scope: !1910)
!1913 = !DILocation(line: 852, column: 5, scope: !1910)
!1914 = !DILocation(line: 853, column: 10, scope: !1878)
!1915 = !DILocation(line: 854, column: 1, scope: !1878)
!1916 = distinct !DISubprogram(name: "quotearg_n", scope: !248, file: !248, line: 919, type: !629, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1917)
!1917 = !{!1918, !1919}
!1918 = !DILocalVariable(name: "n", arg: 1, scope: !1916, file: !248, line: 919, type: !44)
!1919 = !DILocalVariable(name: "arg", arg: 2, scope: !1916, file: !248, line: 919, type: !6)
!1920 = !DILocation(line: 0, scope: !1916)
!1921 = !DILocation(line: 921, column: 10, scope: !1916)
!1922 = !DILocation(line: 921, column: 3, scope: !1916)
!1923 = distinct !DISubprogram(name: "quotearg_n_options", scope: !248, file: !248, line: 866, type: !1924, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!79, !44, !6, !46, !1150}
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1937, !1938, !1940, !1941, !1942}
!1927 = !DILocalVariable(name: "n", arg: 1, scope: !1923, file: !248, line: 866, type: !44)
!1928 = !DILocalVariable(name: "arg", arg: 2, scope: !1923, file: !248, line: 866, type: !6)
!1929 = !DILocalVariable(name: "argsize", arg: 3, scope: !1923, file: !248, line: 866, type: !46)
!1930 = !DILocalVariable(name: "options", arg: 4, scope: !1923, file: !248, line: 867, type: !1150)
!1931 = !DILocalVariable(name: "saved_errno", scope: !1923, file: !248, line: 869, type: !44)
!1932 = !DILocalVariable(name: "sv", scope: !1923, file: !248, line: 871, type: !307)
!1933 = !DILocalVariable(name: "nslots_max", scope: !1923, file: !248, line: 873, type: !44)
!1934 = !DILocalVariable(name: "preallocated", scope: !1935, file: !248, line: 879, type: !58)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !248, line: 878, column: 5)
!1936 = distinct !DILexicalBlock(scope: !1923, file: !248, line: 877, column: 7)
!1937 = !DILocalVariable(name: "new_nslots", scope: !1935, file: !248, line: 880, type: !379)
!1938 = !DILocalVariable(name: "size", scope: !1939, file: !248, line: 891, type: !46)
!1939 = distinct !DILexicalBlock(scope: !1923, file: !248, line: 890, column: 3)
!1940 = !DILocalVariable(name: "val", scope: !1939, file: !248, line: 892, type: !79)
!1941 = !DILocalVariable(name: "flags", scope: !1939, file: !248, line: 894, type: !44)
!1942 = !DILocalVariable(name: "qsize", scope: !1939, file: !248, line: 895, type: !46)
!1943 = !DILocation(line: 0, scope: !1923)
!1944 = !DILocation(line: 869, column: 21, scope: !1923)
!1945 = !DILocation(line: 871, column: 24, scope: !1923)
!1946 = !DILocation(line: 874, column: 17, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1923, file: !248, line: 874, column: 7)
!1948 = !DILocation(line: 875, column: 5, scope: !1947)
!1949 = !DILocation(line: 877, column: 7, scope: !1936)
!1950 = !DILocation(line: 877, column: 14, scope: !1936)
!1951 = !DILocation(line: 877, column: 7, scope: !1923)
!1952 = !DILocation(line: 879, column: 31, scope: !1935)
!1953 = !DILocation(line: 0, scope: !1935)
!1954 = !DILocation(line: 880, column: 7, scope: !1935)
!1955 = !DILocation(line: 880, column: 26, scope: !1935)
!1956 = !DILocation(line: 880, column: 13, scope: !1935)
!1957 = !DILocation(line: 882, column: 31, scope: !1935)
!1958 = !DILocation(line: 883, column: 33, scope: !1935)
!1959 = !DILocation(line: 883, column: 42, scope: !1935)
!1960 = !DILocation(line: 883, column: 31, scope: !1935)
!1961 = !DILocation(line: 882, column: 22, scope: !1935)
!1962 = !DILocation(line: 882, column: 15, scope: !1935)
!1963 = !DILocation(line: 884, column: 11, scope: !1935)
!1964 = !DILocation(line: 885, column: 15, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1935, file: !248, line: 884, column: 11)
!1966 = !{i64 0, i64 8, !1875, i64 8, i64 8, !435}
!1967 = !DILocation(line: 885, column: 9, scope: !1965)
!1968 = !DILocation(line: 886, column: 20, scope: !1935)
!1969 = !DILocation(line: 886, column: 18, scope: !1935)
!1970 = !DILocation(line: 886, column: 15, scope: !1935)
!1971 = !DILocation(line: 886, column: 32, scope: !1935)
!1972 = !DILocation(line: 886, column: 43, scope: !1935)
!1973 = !DILocation(line: 886, column: 53, scope: !1935)
!1974 = !DILocation(line: 0, scope: !1361, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 886, column: 7, scope: !1935)
!1976 = !DILocation(line: 59, column: 10, scope: !1361, inlinedAt: !1975)
!1977 = !DILocation(line: 887, column: 16, scope: !1935)
!1978 = !DILocation(line: 887, column: 14, scope: !1935)
!1979 = !DILocation(line: 888, column: 5, scope: !1936)
!1980 = !DILocation(line: 888, column: 5, scope: !1935)
!1981 = !DILocation(line: 891, column: 19, scope: !1939)
!1982 = !DILocation(line: 891, column: 25, scope: !1939)
!1983 = !DILocation(line: 0, scope: !1939)
!1984 = !DILocation(line: 892, column: 23, scope: !1939)
!1985 = !DILocation(line: 894, column: 26, scope: !1939)
!1986 = !DILocation(line: 894, column: 32, scope: !1939)
!1987 = !DILocation(line: 896, column: 55, scope: !1939)
!1988 = !DILocation(line: 897, column: 46, scope: !1939)
!1989 = !DILocation(line: 898, column: 55, scope: !1939)
!1990 = !DILocation(line: 899, column: 55, scope: !1939)
!1991 = !DILocation(line: 895, column: 20, scope: !1939)
!1992 = !DILocation(line: 901, column: 14, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1939, file: !248, line: 901, column: 9)
!1994 = !DILocation(line: 901, column: 9, scope: !1939)
!1995 = !DILocation(line: 903, column: 35, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !248, line: 902, column: 7)
!1997 = !DILocation(line: 903, column: 20, scope: !1996)
!1998 = !DILocation(line: 904, column: 17, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !248, line: 904, column: 13)
!2000 = !DILocation(line: 904, column: 13, scope: !1996)
!2001 = !DILocation(line: 905, column: 11, scope: !1999)
!2002 = !DILocation(line: 906, column: 27, scope: !1996)
!2003 = !DILocation(line: 906, column: 19, scope: !1996)
!2004 = !DILocation(line: 907, column: 69, scope: !1996)
!2005 = !DILocation(line: 909, column: 44, scope: !1996)
!2006 = !DILocation(line: 910, column: 44, scope: !1996)
!2007 = !DILocation(line: 907, column: 9, scope: !1996)
!2008 = !DILocation(line: 911, column: 7, scope: !1996)
!2009 = !DILocation(line: 913, column: 11, scope: !1939)
!2010 = !DILocation(line: 914, column: 5, scope: !1939)
!2011 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !248, file: !248, line: 925, type: !2012, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2014)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!79, !44, !6, !46}
!2014 = !{!2015, !2016, !2017}
!2015 = !DILocalVariable(name: "n", arg: 1, scope: !2011, file: !248, line: 925, type: !44)
!2016 = !DILocalVariable(name: "arg", arg: 2, scope: !2011, file: !248, line: 925, type: !6)
!2017 = !DILocalVariable(name: "argsize", arg: 3, scope: !2011, file: !248, line: 925, type: !46)
!2018 = !DILocation(line: 0, scope: !2011)
!2019 = !DILocation(line: 927, column: 10, scope: !2011)
!2020 = !DILocation(line: 927, column: 3, scope: !2011)
!2021 = distinct !DISubprogram(name: "quotearg", scope: !248, file: !248, line: 931, type: !633, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2022)
!2022 = !{!2023}
!2023 = !DILocalVariable(name: "arg", arg: 1, scope: !2021, file: !248, line: 931, type: !6)
!2024 = !DILocation(line: 0, scope: !2021)
!2025 = !DILocation(line: 0, scope: !1916, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 933, column: 10, scope: !2021)
!2027 = !DILocation(line: 921, column: 10, scope: !1916, inlinedAt: !2026)
!2028 = !DILocation(line: 933, column: 3, scope: !2021)
!2029 = distinct !DISubprogram(name: "quotearg_mem", scope: !248, file: !248, line: 937, type: !2030, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!79, !6, !46}
!2032 = !{!2033, !2034}
!2033 = !DILocalVariable(name: "arg", arg: 1, scope: !2029, file: !248, line: 937, type: !6)
!2034 = !DILocalVariable(name: "argsize", arg: 2, scope: !2029, file: !248, line: 937, type: !46)
!2035 = !DILocation(line: 0, scope: !2029)
!2036 = !DILocation(line: 0, scope: !2011, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 939, column: 10, scope: !2029)
!2038 = !DILocation(line: 927, column: 10, scope: !2011, inlinedAt: !2037)
!2039 = !DILocation(line: 939, column: 3, scope: !2029)
!2040 = distinct !DISubprogram(name: "quotearg_n_style", scope: !248, file: !248, line: 943, type: !2041, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!79, !44, !12, !6}
!2043 = !{!2044, !2045, !2046, !2047}
!2044 = !DILocalVariable(name: "n", arg: 1, scope: !2040, file: !248, line: 943, type: !44)
!2045 = !DILocalVariable(name: "s", arg: 2, scope: !2040, file: !248, line: 943, type: !12)
!2046 = !DILocalVariable(name: "arg", arg: 3, scope: !2040, file: !248, line: 943, type: !6)
!2047 = !DILocalVariable(name: "o", scope: !2040, file: !248, line: 945, type: !1151)
!2048 = !DILocation(line: 0, scope: !2040)
!2049 = !DILocation(line: 945, column: 3, scope: !2040)
!2050 = !DILocation(line: 945, column: 32, scope: !2040)
!2051 = !{!2052}
!2052 = distinct !{!2052, !2053, !"quoting_options_from_style: argument 0"}
!2053 = distinct !{!2053, !"quoting_options_from_style"}
!2054 = !DILocation(line: 945, column: 36, scope: !2040)
!2055 = !DILocalVariable(name: "style", arg: 1, scope: !2056, file: !248, line: 183, type: !12)
!2056 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !248, file: !248, line: 183, type: !2057, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!265, !12}
!2059 = !{!2055, !2060}
!2060 = !DILocalVariable(name: "o", scope: !2056, file: !248, line: 185, type: !265)
!2061 = !DILocation(line: 0, scope: !2056, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 945, column: 36, scope: !2040)
!2063 = !DILocation(line: 185, column: 26, scope: !2056, inlinedAt: !2062)
!2064 = !DILocation(line: 186, column: 13, scope: !2065, inlinedAt: !2062)
!2065 = distinct !DILexicalBlock(scope: !2056, file: !248, line: 186, column: 7)
!2066 = !DILocation(line: 186, column: 7, scope: !2056, inlinedAt: !2062)
!2067 = !DILocation(line: 187, column: 5, scope: !2065, inlinedAt: !2062)
!2068 = !DILocation(line: 188, column: 5, scope: !2056, inlinedAt: !2062)
!2069 = !DILocation(line: 188, column: 11, scope: !2056, inlinedAt: !2062)
!2070 = !DILocation(line: 946, column: 10, scope: !2040)
!2071 = !DILocation(line: 947, column: 1, scope: !2040)
!2072 = !DILocation(line: 946, column: 3, scope: !2040)
!2073 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !248, file: !248, line: 950, type: !2074, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!79, !44, !12, !6, !46}
!2076 = !{!2077, !2078, !2079, !2080, !2081}
!2077 = !DILocalVariable(name: "n", arg: 1, scope: !2073, file: !248, line: 950, type: !44)
!2078 = !DILocalVariable(name: "s", arg: 2, scope: !2073, file: !248, line: 950, type: !12)
!2079 = !DILocalVariable(name: "arg", arg: 3, scope: !2073, file: !248, line: 951, type: !6)
!2080 = !DILocalVariable(name: "argsize", arg: 4, scope: !2073, file: !248, line: 951, type: !46)
!2081 = !DILocalVariable(name: "o", scope: !2073, file: !248, line: 953, type: !1151)
!2082 = !DILocation(line: 0, scope: !2073)
!2083 = !DILocation(line: 953, column: 3, scope: !2073)
!2084 = !DILocation(line: 953, column: 32, scope: !2073)
!2085 = !{!2086}
!2086 = distinct !{!2086, !2087, !"quoting_options_from_style: argument 0"}
!2087 = distinct !{!2087, !"quoting_options_from_style"}
!2088 = !DILocation(line: 953, column: 36, scope: !2073)
!2089 = !DILocation(line: 0, scope: !2056, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 953, column: 36, scope: !2073)
!2091 = !DILocation(line: 185, column: 26, scope: !2056, inlinedAt: !2090)
!2092 = !DILocation(line: 186, column: 13, scope: !2065, inlinedAt: !2090)
!2093 = !DILocation(line: 186, column: 7, scope: !2056, inlinedAt: !2090)
!2094 = !DILocation(line: 187, column: 5, scope: !2065, inlinedAt: !2090)
!2095 = !DILocation(line: 188, column: 5, scope: !2056, inlinedAt: !2090)
!2096 = !DILocation(line: 188, column: 11, scope: !2056, inlinedAt: !2090)
!2097 = !DILocation(line: 954, column: 10, scope: !2073)
!2098 = !DILocation(line: 955, column: 1, scope: !2073)
!2099 = !DILocation(line: 954, column: 3, scope: !2073)
!2100 = distinct !DISubprogram(name: "quotearg_style", scope: !248, file: !248, line: 958, type: !2101, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!79, !12, !6}
!2103 = !{!2104, !2105}
!2104 = !DILocalVariable(name: "s", arg: 1, scope: !2100, file: !248, line: 958, type: !12)
!2105 = !DILocalVariable(name: "arg", arg: 2, scope: !2100, file: !248, line: 958, type: !6)
!2106 = !DILocation(line: 0, scope: !2100)
!2107 = !DILocation(line: 0, scope: !2040, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 960, column: 10, scope: !2100)
!2109 = !DILocation(line: 945, column: 3, scope: !2040, inlinedAt: !2108)
!2110 = !DILocation(line: 945, column: 32, scope: !2040, inlinedAt: !2108)
!2111 = !{!2112}
!2112 = distinct !{!2112, !2113, !"quoting_options_from_style: argument 0"}
!2113 = distinct !{!2113, !"quoting_options_from_style"}
!2114 = !DILocation(line: 945, column: 36, scope: !2040, inlinedAt: !2108)
!2115 = !DILocation(line: 0, scope: !2056, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 945, column: 36, scope: !2040, inlinedAt: !2108)
!2117 = !DILocation(line: 185, column: 26, scope: !2056, inlinedAt: !2116)
!2118 = !DILocation(line: 186, column: 13, scope: !2065, inlinedAt: !2116)
!2119 = !DILocation(line: 186, column: 7, scope: !2056, inlinedAt: !2116)
!2120 = !DILocation(line: 187, column: 5, scope: !2065, inlinedAt: !2116)
!2121 = !DILocation(line: 188, column: 5, scope: !2056, inlinedAt: !2116)
!2122 = !DILocation(line: 188, column: 11, scope: !2056, inlinedAt: !2116)
!2123 = !DILocation(line: 946, column: 10, scope: !2040, inlinedAt: !2108)
!2124 = !DILocation(line: 947, column: 1, scope: !2040, inlinedAt: !2108)
!2125 = !DILocation(line: 960, column: 3, scope: !2100)
!2126 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !248, file: !248, line: 964, type: !2127, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!79, !12, !6, !46}
!2129 = !{!2130, !2131, !2132}
!2130 = !DILocalVariable(name: "s", arg: 1, scope: !2126, file: !248, line: 964, type: !12)
!2131 = !DILocalVariable(name: "arg", arg: 2, scope: !2126, file: !248, line: 964, type: !6)
!2132 = !DILocalVariable(name: "argsize", arg: 3, scope: !2126, file: !248, line: 964, type: !46)
!2133 = !DILocation(line: 0, scope: !2126)
!2134 = !DILocation(line: 0, scope: !2073, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 966, column: 10, scope: !2126)
!2136 = !DILocation(line: 953, column: 3, scope: !2073, inlinedAt: !2135)
!2137 = !DILocation(line: 953, column: 32, scope: !2073, inlinedAt: !2135)
!2138 = !{!2139}
!2139 = distinct !{!2139, !2140, !"quoting_options_from_style: argument 0"}
!2140 = distinct !{!2140, !"quoting_options_from_style"}
!2141 = !DILocation(line: 953, column: 36, scope: !2073, inlinedAt: !2135)
!2142 = !DILocation(line: 0, scope: !2056, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 953, column: 36, scope: !2073, inlinedAt: !2135)
!2144 = !DILocation(line: 185, column: 26, scope: !2056, inlinedAt: !2143)
!2145 = !DILocation(line: 186, column: 13, scope: !2065, inlinedAt: !2143)
!2146 = !DILocation(line: 186, column: 7, scope: !2056, inlinedAt: !2143)
!2147 = !DILocation(line: 187, column: 5, scope: !2065, inlinedAt: !2143)
!2148 = !DILocation(line: 188, column: 5, scope: !2056, inlinedAt: !2143)
!2149 = !DILocation(line: 188, column: 11, scope: !2056, inlinedAt: !2143)
!2150 = !DILocation(line: 954, column: 10, scope: !2073, inlinedAt: !2135)
!2151 = !DILocation(line: 955, column: 1, scope: !2073, inlinedAt: !2135)
!2152 = !DILocation(line: 966, column: 3, scope: !2126)
!2153 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !248, file: !248, line: 970, type: !2154, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!79, !6, !46, !8}
!2156 = !{!2157, !2158, !2159, !2160}
!2157 = !DILocalVariable(name: "arg", arg: 1, scope: !2153, file: !248, line: 970, type: !6)
!2158 = !DILocalVariable(name: "argsize", arg: 2, scope: !2153, file: !248, line: 970, type: !46)
!2159 = !DILocalVariable(name: "ch", arg: 3, scope: !2153, file: !248, line: 970, type: !8)
!2160 = !DILocalVariable(name: "options", scope: !2153, file: !248, line: 972, type: !265)
!2161 = !DILocation(line: 0, scope: !2153)
!2162 = !DILocation(line: 972, column: 3, scope: !2153)
!2163 = !DILocation(line: 972, column: 26, scope: !2153)
!2164 = !DILocation(line: 973, column: 13, scope: !2153)
!2165 = !{i64 0, i64 4, !530, i64 4, i64 4, !521, i64 8, i64 32, !530, i64 40, i64 8, !435, i64 48, i64 8, !435}
!2166 = !DILocation(line: 0, scope: !1171, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 974, column: 3, scope: !2153)
!2168 = !DILocation(line: 147, column: 62, scope: !1171, inlinedAt: !2167)
!2169 = !DILocation(line: 147, column: 57, scope: !1171, inlinedAt: !2167)
!2170 = !DILocation(line: 148, column: 15, scope: !1171, inlinedAt: !2167)
!2171 = !DILocation(line: 149, column: 21, scope: !1171, inlinedAt: !2167)
!2172 = !DILocation(line: 149, column: 24, scope: !1171, inlinedAt: !2167)
!2173 = !DILocation(line: 149, column: 34, scope: !1171, inlinedAt: !2167)
!2174 = !DILocation(line: 150, column: 19, scope: !1171, inlinedAt: !2167)
!2175 = !DILocation(line: 150, column: 24, scope: !1171, inlinedAt: !2167)
!2176 = !DILocation(line: 150, column: 6, scope: !1171, inlinedAt: !2167)
!2177 = !DILocation(line: 975, column: 10, scope: !2153)
!2178 = !DILocation(line: 976, column: 1, scope: !2153)
!2179 = !DILocation(line: 975, column: 3, scope: !2153)
!2180 = distinct !DISubprogram(name: "quotearg_char", scope: !248, file: !248, line: 979, type: !2181, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2183)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!79, !6, !8}
!2183 = !{!2184, !2185}
!2184 = !DILocalVariable(name: "arg", arg: 1, scope: !2180, file: !248, line: 979, type: !6)
!2185 = !DILocalVariable(name: "ch", arg: 2, scope: !2180, file: !248, line: 979, type: !8)
!2186 = !DILocation(line: 0, scope: !2180)
!2187 = !DILocation(line: 0, scope: !2153, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 981, column: 10, scope: !2180)
!2189 = !DILocation(line: 972, column: 3, scope: !2153, inlinedAt: !2188)
!2190 = !DILocation(line: 972, column: 26, scope: !2153, inlinedAt: !2188)
!2191 = !DILocation(line: 973, column: 13, scope: !2153, inlinedAt: !2188)
!2192 = !DILocation(line: 0, scope: !1171, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 974, column: 3, scope: !2153, inlinedAt: !2188)
!2194 = !DILocation(line: 147, column: 62, scope: !1171, inlinedAt: !2193)
!2195 = !DILocation(line: 147, column: 57, scope: !1171, inlinedAt: !2193)
!2196 = !DILocation(line: 148, column: 15, scope: !1171, inlinedAt: !2193)
!2197 = !DILocation(line: 149, column: 21, scope: !1171, inlinedAt: !2193)
!2198 = !DILocation(line: 149, column: 24, scope: !1171, inlinedAt: !2193)
!2199 = !DILocation(line: 149, column: 34, scope: !1171, inlinedAt: !2193)
!2200 = !DILocation(line: 150, column: 19, scope: !1171, inlinedAt: !2193)
!2201 = !DILocation(line: 150, column: 24, scope: !1171, inlinedAt: !2193)
!2202 = !DILocation(line: 150, column: 6, scope: !1171, inlinedAt: !2193)
!2203 = !DILocation(line: 975, column: 10, scope: !2153, inlinedAt: !2188)
!2204 = !DILocation(line: 976, column: 1, scope: !2153, inlinedAt: !2188)
!2205 = !DILocation(line: 981, column: 3, scope: !2180)
!2206 = distinct !DISubprogram(name: "quotearg_colon", scope: !248, file: !248, line: 985, type: !633, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2207)
!2207 = !{!2208}
!2208 = !DILocalVariable(name: "arg", arg: 1, scope: !2206, file: !248, line: 985, type: !6)
!2209 = !DILocation(line: 0, scope: !2206)
!2210 = !DILocation(line: 0, scope: !2180, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 987, column: 10, scope: !2206)
!2212 = !DILocation(line: 0, scope: !2153, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 981, column: 10, scope: !2180, inlinedAt: !2211)
!2214 = !DILocation(line: 972, column: 3, scope: !2153, inlinedAt: !2213)
!2215 = !DILocation(line: 972, column: 26, scope: !2153, inlinedAt: !2213)
!2216 = !DILocation(line: 973, column: 13, scope: !2153, inlinedAt: !2213)
!2217 = !DILocation(line: 0, scope: !1171, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 974, column: 3, scope: !2153, inlinedAt: !2213)
!2219 = !DILocation(line: 147, column: 57, scope: !1171, inlinedAt: !2218)
!2220 = !DILocation(line: 149, column: 21, scope: !1171, inlinedAt: !2218)
!2221 = !DILocation(line: 150, column: 6, scope: !1171, inlinedAt: !2218)
!2222 = !DILocation(line: 975, column: 10, scope: !2153, inlinedAt: !2213)
!2223 = !DILocation(line: 976, column: 1, scope: !2153, inlinedAt: !2213)
!2224 = !DILocation(line: 987, column: 3, scope: !2206)
!2225 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !248, file: !248, line: 991, type: !2030, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2226)
!2226 = !{!2227, !2228}
!2227 = !DILocalVariable(name: "arg", arg: 1, scope: !2225, file: !248, line: 991, type: !6)
!2228 = !DILocalVariable(name: "argsize", arg: 2, scope: !2225, file: !248, line: 991, type: !46)
!2229 = !DILocation(line: 0, scope: !2225)
!2230 = !DILocation(line: 0, scope: !2153, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 993, column: 10, scope: !2225)
!2232 = !DILocation(line: 972, column: 3, scope: !2153, inlinedAt: !2231)
!2233 = !DILocation(line: 972, column: 26, scope: !2153, inlinedAt: !2231)
!2234 = !DILocation(line: 973, column: 13, scope: !2153, inlinedAt: !2231)
!2235 = !DILocation(line: 0, scope: !1171, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 974, column: 3, scope: !2153, inlinedAt: !2231)
!2237 = !DILocation(line: 147, column: 57, scope: !1171, inlinedAt: !2236)
!2238 = !DILocation(line: 149, column: 21, scope: !1171, inlinedAt: !2236)
!2239 = !DILocation(line: 150, column: 6, scope: !1171, inlinedAt: !2236)
!2240 = !DILocation(line: 975, column: 10, scope: !2153, inlinedAt: !2231)
!2241 = !DILocation(line: 976, column: 1, scope: !2153, inlinedAt: !2231)
!2242 = !DILocation(line: 993, column: 3, scope: !2225)
!2243 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !248, file: !248, line: 997, type: !2041, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2244)
!2244 = !{!2245, !2246, !2247, !2248}
!2245 = !DILocalVariable(name: "n", arg: 1, scope: !2243, file: !248, line: 997, type: !44)
!2246 = !DILocalVariable(name: "s", arg: 2, scope: !2243, file: !248, line: 997, type: !12)
!2247 = !DILocalVariable(name: "arg", arg: 3, scope: !2243, file: !248, line: 997, type: !6)
!2248 = !DILocalVariable(name: "options", scope: !2243, file: !248, line: 999, type: !265)
!2249 = !DILocation(line: 0, scope: !2243)
!2250 = !DILocation(line: 999, column: 3, scope: !2243)
!2251 = !DILocation(line: 999, column: 26, scope: !2243)
!2252 = !DILocation(line: 0, scope: !2056, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 1000, column: 13, scope: !2243)
!2254 = !DILocation(line: 186, column: 13, scope: !2065, inlinedAt: !2253)
!2255 = !DILocation(line: 186, column: 7, scope: !2056, inlinedAt: !2253)
!2256 = !DILocation(line: 187, column: 5, scope: !2065, inlinedAt: !2253)
!2257 = !{!2258}
!2258 = distinct !{!2258, !2259, !"quoting_options_from_style: argument 0"}
!2259 = distinct !{!2259, !"quoting_options_from_style"}
!2260 = !DILocation(line: 1000, column: 13, scope: !2243)
!2261 = !DILocation(line: 0, scope: !1171, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 1001, column: 3, scope: !2243)
!2263 = !DILocation(line: 147, column: 57, scope: !1171, inlinedAt: !2262)
!2264 = !DILocation(line: 149, column: 21, scope: !1171, inlinedAt: !2262)
!2265 = !DILocation(line: 150, column: 6, scope: !1171, inlinedAt: !2262)
!2266 = !DILocation(line: 1002, column: 10, scope: !2243)
!2267 = !DILocation(line: 1003, column: 1, scope: !2243)
!2268 = !DILocation(line: 1002, column: 3, scope: !2243)
!2269 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !248, file: !248, line: 1006, type: !2270, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!79, !44, !6, !6, !6}
!2272 = !{!2273, !2274, !2275, !2276}
!2273 = !DILocalVariable(name: "n", arg: 1, scope: !2269, file: !248, line: 1006, type: !44)
!2274 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2269, file: !248, line: 1006, type: !6)
!2275 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2269, file: !248, line: 1007, type: !6)
!2276 = !DILocalVariable(name: "arg", arg: 4, scope: !2269, file: !248, line: 1007, type: !6)
!2277 = !DILocation(line: 0, scope: !2269)
!2278 = !DILocalVariable(name: "n", arg: 1, scope: !2279, file: !248, line: 1014, type: !44)
!2279 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !248, file: !248, line: 1014, type: !2280, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!79, !44, !6, !6, !6, !46}
!2282 = !{!2278, !2283, !2284, !2285, !2286, !2287}
!2283 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2279, file: !248, line: 1014, type: !6)
!2284 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2279, file: !248, line: 1015, type: !6)
!2285 = !DILocalVariable(name: "arg", arg: 4, scope: !2279, file: !248, line: 1016, type: !6)
!2286 = !DILocalVariable(name: "argsize", arg: 5, scope: !2279, file: !248, line: 1016, type: !46)
!2287 = !DILocalVariable(name: "o", scope: !2279, file: !248, line: 1018, type: !265)
!2288 = !DILocation(line: 0, scope: !2279, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 1009, column: 10, scope: !2269)
!2290 = !DILocation(line: 1018, column: 3, scope: !2279, inlinedAt: !2289)
!2291 = !DILocation(line: 1018, column: 26, scope: !2279, inlinedAt: !2289)
!2292 = !DILocation(line: 1018, column: 30, scope: !2279, inlinedAt: !2289)
!2293 = !DILocation(line: 0, scope: !1211, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 1019, column: 3, scope: !2279, inlinedAt: !2289)
!2295 = !DILocation(line: 174, column: 6, scope: !1211, inlinedAt: !2294)
!2296 = !DILocation(line: 174, column: 12, scope: !1211, inlinedAt: !2294)
!2297 = !DILocation(line: 175, column: 8, scope: !1225, inlinedAt: !2294)
!2298 = !DILocation(line: 175, column: 19, scope: !1225, inlinedAt: !2294)
!2299 = !DILocation(line: 176, column: 5, scope: !1225, inlinedAt: !2294)
!2300 = !DILocation(line: 177, column: 6, scope: !1211, inlinedAt: !2294)
!2301 = !DILocation(line: 177, column: 17, scope: !1211, inlinedAt: !2294)
!2302 = !DILocation(line: 178, column: 6, scope: !1211, inlinedAt: !2294)
!2303 = !DILocation(line: 178, column: 18, scope: !1211, inlinedAt: !2294)
!2304 = !DILocation(line: 1020, column: 10, scope: !2279, inlinedAt: !2289)
!2305 = !DILocation(line: 1021, column: 1, scope: !2279, inlinedAt: !2289)
!2306 = !DILocation(line: 1009, column: 3, scope: !2269)
!2307 = !DILocation(line: 0, scope: !2279)
!2308 = !DILocation(line: 1018, column: 3, scope: !2279)
!2309 = !DILocation(line: 1018, column: 26, scope: !2279)
!2310 = !DILocation(line: 1018, column: 30, scope: !2279)
!2311 = !DILocation(line: 0, scope: !1211, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 1019, column: 3, scope: !2279)
!2313 = !DILocation(line: 174, column: 6, scope: !1211, inlinedAt: !2312)
!2314 = !DILocation(line: 174, column: 12, scope: !1211, inlinedAt: !2312)
!2315 = !DILocation(line: 175, column: 8, scope: !1225, inlinedAt: !2312)
!2316 = !DILocation(line: 175, column: 19, scope: !1225, inlinedAt: !2312)
!2317 = !DILocation(line: 176, column: 5, scope: !1225, inlinedAt: !2312)
!2318 = !DILocation(line: 177, column: 6, scope: !1211, inlinedAt: !2312)
!2319 = !DILocation(line: 177, column: 17, scope: !1211, inlinedAt: !2312)
!2320 = !DILocation(line: 178, column: 6, scope: !1211, inlinedAt: !2312)
!2321 = !DILocation(line: 178, column: 18, scope: !1211, inlinedAt: !2312)
!2322 = !DILocation(line: 1020, column: 10, scope: !2279)
!2323 = !DILocation(line: 1021, column: 1, scope: !2279)
!2324 = !DILocation(line: 1020, column: 3, scope: !2279)
!2325 = distinct !DISubprogram(name: "quotearg_custom", scope: !248, file: !248, line: 1024, type: !2326, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2328)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!79, !6, !6, !6}
!2328 = !{!2329, !2330, !2331}
!2329 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2325, file: !248, line: 1024, type: !6)
!2330 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2325, file: !248, line: 1024, type: !6)
!2331 = !DILocalVariable(name: "arg", arg: 3, scope: !2325, file: !248, line: 1025, type: !6)
!2332 = !DILocation(line: 0, scope: !2325)
!2333 = !DILocation(line: 0, scope: !2269, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 1027, column: 10, scope: !2325)
!2335 = !DILocation(line: 0, scope: !2279, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 1009, column: 10, scope: !2269, inlinedAt: !2334)
!2337 = !DILocation(line: 1018, column: 3, scope: !2279, inlinedAt: !2336)
!2338 = !DILocation(line: 1018, column: 26, scope: !2279, inlinedAt: !2336)
!2339 = !DILocation(line: 1018, column: 30, scope: !2279, inlinedAt: !2336)
!2340 = !DILocation(line: 0, scope: !1211, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 1019, column: 3, scope: !2279, inlinedAt: !2336)
!2342 = !DILocation(line: 174, column: 6, scope: !1211, inlinedAt: !2341)
!2343 = !DILocation(line: 174, column: 12, scope: !1211, inlinedAt: !2341)
!2344 = !DILocation(line: 175, column: 8, scope: !1225, inlinedAt: !2341)
!2345 = !DILocation(line: 175, column: 19, scope: !1225, inlinedAt: !2341)
!2346 = !DILocation(line: 176, column: 5, scope: !1225, inlinedAt: !2341)
!2347 = !DILocation(line: 177, column: 6, scope: !1211, inlinedAt: !2341)
!2348 = !DILocation(line: 177, column: 17, scope: !1211, inlinedAt: !2341)
!2349 = !DILocation(line: 178, column: 6, scope: !1211, inlinedAt: !2341)
!2350 = !DILocation(line: 178, column: 18, scope: !1211, inlinedAt: !2341)
!2351 = !DILocation(line: 1020, column: 10, scope: !2279, inlinedAt: !2336)
!2352 = !DILocation(line: 1021, column: 1, scope: !2279, inlinedAt: !2336)
!2353 = !DILocation(line: 1027, column: 3, scope: !2325)
!2354 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !248, file: !248, line: 1031, type: !2355, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!79, !6, !6, !6, !46}
!2357 = !{!2358, !2359, !2360, !2361}
!2358 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2354, file: !248, line: 1031, type: !6)
!2359 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2354, file: !248, line: 1031, type: !6)
!2360 = !DILocalVariable(name: "arg", arg: 3, scope: !2354, file: !248, line: 1032, type: !6)
!2361 = !DILocalVariable(name: "argsize", arg: 4, scope: !2354, file: !248, line: 1032, type: !46)
!2362 = !DILocation(line: 0, scope: !2354)
!2363 = !DILocation(line: 0, scope: !2279, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 1034, column: 10, scope: !2354)
!2365 = !DILocation(line: 1018, column: 3, scope: !2279, inlinedAt: !2364)
!2366 = !DILocation(line: 1018, column: 26, scope: !2279, inlinedAt: !2364)
!2367 = !DILocation(line: 1018, column: 30, scope: !2279, inlinedAt: !2364)
!2368 = !DILocation(line: 0, scope: !1211, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 1019, column: 3, scope: !2279, inlinedAt: !2364)
!2370 = !DILocation(line: 174, column: 6, scope: !1211, inlinedAt: !2369)
!2371 = !DILocation(line: 174, column: 12, scope: !1211, inlinedAt: !2369)
!2372 = !DILocation(line: 175, column: 8, scope: !1225, inlinedAt: !2369)
!2373 = !DILocation(line: 175, column: 19, scope: !1225, inlinedAt: !2369)
!2374 = !DILocation(line: 176, column: 5, scope: !1225, inlinedAt: !2369)
!2375 = !DILocation(line: 177, column: 6, scope: !1211, inlinedAt: !2369)
!2376 = !DILocation(line: 177, column: 17, scope: !1211, inlinedAt: !2369)
!2377 = !DILocation(line: 178, column: 6, scope: !1211, inlinedAt: !2369)
!2378 = !DILocation(line: 178, column: 18, scope: !1211, inlinedAt: !2369)
!2379 = !DILocation(line: 1020, column: 10, scope: !2279, inlinedAt: !2364)
!2380 = !DILocation(line: 1021, column: 1, scope: !2279, inlinedAt: !2364)
!2381 = !DILocation(line: 1034, column: 3, scope: !2354)
!2382 = distinct !DISubprogram(name: "quote_n_mem", scope: !248, file: !248, line: 1049, type: !2383, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!6, !44, !6, !46}
!2385 = !{!2386, !2387, !2388}
!2386 = !DILocalVariable(name: "n", arg: 1, scope: !2382, file: !248, line: 1049, type: !44)
!2387 = !DILocalVariable(name: "arg", arg: 2, scope: !2382, file: !248, line: 1049, type: !6)
!2388 = !DILocalVariable(name: "argsize", arg: 3, scope: !2382, file: !248, line: 1049, type: !46)
!2389 = !DILocation(line: 0, scope: !2382)
!2390 = !DILocation(line: 1051, column: 10, scope: !2382)
!2391 = !DILocation(line: 1051, column: 3, scope: !2382)
!2392 = distinct !DISubprogram(name: "quote_mem", scope: !248, file: !248, line: 1055, type: !2393, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!6, !6, !46}
!2395 = !{!2396, !2397}
!2396 = !DILocalVariable(name: "arg", arg: 1, scope: !2392, file: !248, line: 1055, type: !6)
!2397 = !DILocalVariable(name: "argsize", arg: 2, scope: !2392, file: !248, line: 1055, type: !46)
!2398 = !DILocation(line: 0, scope: !2392)
!2399 = !DILocation(line: 0, scope: !2382, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 1057, column: 10, scope: !2392)
!2401 = !DILocation(line: 1051, column: 10, scope: !2382, inlinedAt: !2400)
!2402 = !DILocation(line: 1057, column: 3, scope: !2392)
!2403 = distinct !DISubprogram(name: "quote_n", scope: !248, file: !248, line: 1061, type: !2404, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!6, !44, !6}
!2406 = !{!2407, !2408}
!2407 = !DILocalVariable(name: "n", arg: 1, scope: !2403, file: !248, line: 1061, type: !44)
!2408 = !DILocalVariable(name: "arg", arg: 2, scope: !2403, file: !248, line: 1061, type: !6)
!2409 = !DILocation(line: 0, scope: !2403)
!2410 = !DILocation(line: 0, scope: !2382, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1063, column: 10, scope: !2403)
!2412 = !DILocation(line: 1051, column: 10, scope: !2382, inlinedAt: !2411)
!2413 = !DILocation(line: 1063, column: 3, scope: !2403)
!2414 = distinct !DISubprogram(name: "quote", scope: !248, file: !248, line: 1067, type: !2415, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!6, !6}
!2417 = !{!2418}
!2418 = !DILocalVariable(name: "arg", arg: 1, scope: !2414, file: !248, line: 1067, type: !6)
!2419 = !DILocation(line: 0, scope: !2414)
!2420 = !DILocation(line: 0, scope: !2403, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 1069, column: 10, scope: !2414)
!2422 = !DILocation(line: 0, scope: !2382, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 1063, column: 10, scope: !2403, inlinedAt: !2421)
!2424 = !DILocation(line: 1051, column: 10, scope: !2382, inlinedAt: !2423)
!2425 = !DILocation(line: 1069, column: 3, scope: !2414)
!2426 = distinct !DISubprogram(name: "version_etc_arn", scope: !353, file: !353, line: 61, type: !2427, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2464)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null, !2429, !6, !6, !6, !2463, !46}
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !2431)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2431, file: !75, line: 51, baseType: !44, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2431, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2431, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2431, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2431, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2431, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2431, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2431, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2431, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2431, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2431, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2431, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2431, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2431, file: !75, line: 70, baseType: !2447, size: 64, offset: 832)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2431, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2431, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2431, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2431, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2431, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2431, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2431, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2431, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2431, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2431, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2431, file: !75, line: 93, baseType: !2447, size: 64, offset: 1344)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2431, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2431, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2431, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2431, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470}
!2465 = !DILocalVariable(name: "stream", arg: 1, scope: !2426, file: !353, line: 61, type: !2429)
!2466 = !DILocalVariable(name: "command_name", arg: 2, scope: !2426, file: !353, line: 62, type: !6)
!2467 = !DILocalVariable(name: "package", arg: 3, scope: !2426, file: !353, line: 62, type: !6)
!2468 = !DILocalVariable(name: "version", arg: 4, scope: !2426, file: !353, line: 63, type: !6)
!2469 = !DILocalVariable(name: "authors", arg: 5, scope: !2426, file: !353, line: 64, type: !2463)
!2470 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2426, file: !353, line: 64, type: !46)
!2471 = !DILocation(line: 0, scope: !2426)
!2472 = !DILocation(line: 66, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2426, file: !353, line: 66, column: 7)
!2474 = !DILocation(line: 66, column: 7, scope: !2426)
!2475 = !DILocation(line: 67, column: 5, scope: !2473)
!2476 = !DILocation(line: 69, column: 5, scope: !2473)
!2477 = !DILocation(line: 83, column: 3, scope: !2426)
!2478 = !DILocation(line: 85, column: 3, scope: !2426)
!2479 = !DILocation(line: 88, column: 3, scope: !2426)
!2480 = !DILocation(line: 95, column: 3, scope: !2426)
!2481 = !DILocation(line: 97, column: 3, scope: !2426)
!2482 = !DILocation(line: 105, column: 7, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2426, file: !353, line: 98, column: 5)
!2484 = !DILocation(line: 106, column: 7, scope: !2483)
!2485 = !DILocation(line: 109, column: 7, scope: !2483)
!2486 = !DILocation(line: 110, column: 7, scope: !2483)
!2487 = !DILocation(line: 113, column: 7, scope: !2483)
!2488 = !DILocation(line: 115, column: 7, scope: !2483)
!2489 = !DILocation(line: 120, column: 7, scope: !2483)
!2490 = !DILocation(line: 122, column: 7, scope: !2483)
!2491 = !DILocation(line: 127, column: 7, scope: !2483)
!2492 = !DILocation(line: 129, column: 7, scope: !2483)
!2493 = !DILocation(line: 134, column: 7, scope: !2483)
!2494 = !DILocation(line: 137, column: 7, scope: !2483)
!2495 = !DILocation(line: 142, column: 7, scope: !2483)
!2496 = !DILocation(line: 145, column: 7, scope: !2483)
!2497 = !DILocation(line: 150, column: 7, scope: !2483)
!2498 = !DILocation(line: 154, column: 7, scope: !2483)
!2499 = !DILocation(line: 159, column: 7, scope: !2483)
!2500 = !DILocation(line: 163, column: 7, scope: !2483)
!2501 = !DILocation(line: 170, column: 7, scope: !2483)
!2502 = !DILocation(line: 174, column: 7, scope: !2483)
!2503 = !DILocation(line: 176, column: 1, scope: !2426)
!2504 = distinct !DISubprogram(name: "version_etc_ar", scope: !353, file: !353, line: 183, type: !2505, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !2429, !6, !6, !6, !2463}
!2507 = !{!2508, !2509, !2510, !2511, !2512, !2513}
!2508 = !DILocalVariable(name: "stream", arg: 1, scope: !2504, file: !353, line: 183, type: !2429)
!2509 = !DILocalVariable(name: "command_name", arg: 2, scope: !2504, file: !353, line: 184, type: !6)
!2510 = !DILocalVariable(name: "package", arg: 3, scope: !2504, file: !353, line: 184, type: !6)
!2511 = !DILocalVariable(name: "version", arg: 4, scope: !2504, file: !353, line: 185, type: !6)
!2512 = !DILocalVariable(name: "authors", arg: 5, scope: !2504, file: !353, line: 185, type: !2463)
!2513 = !DILocalVariable(name: "n_authors", scope: !2504, file: !353, line: 187, type: !46)
!2514 = !DILocation(line: 0, scope: !2504)
!2515 = !DILocation(line: 189, column: 8, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2504, file: !353, line: 189, column: 3)
!2517 = !DILocation(line: 0, scope: !2516)
!2518 = !DILocation(line: 189, column: 23, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2516, file: !353, line: 189, column: 3)
!2520 = !DILocation(line: 189, column: 3, scope: !2516)
!2521 = !DILocation(line: 189, column: 52, scope: !2519)
!2522 = distinct !{!2522, !2520, !2523, !487}
!2523 = !DILocation(line: 190, column: 5, scope: !2516)
!2524 = !DILocation(line: 191, column: 3, scope: !2504)
!2525 = !DILocation(line: 192, column: 1, scope: !2504)
!2526 = distinct !DISubprogram(name: "version_etc_va", scope: !353, file: !353, line: 199, type: !2527, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2540)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{null, !2429, !6, !6, !6, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !2530)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !2531)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2532, baseType: !2533)
!2532 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !163, size: 256, elements: !2534)
!2534 = !{!2535, !2536, !2537, !2538, !2539}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2533, file: !2532, line: 192, baseType: !43, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2533, file: !2532, line: 192, baseType: !43, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2533, file: !2532, line: 192, baseType: !43, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2533, file: !2532, line: 192, baseType: !44, size: 32, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2533, file: !2532, line: 192, baseType: !44, size: 32, offset: 224)
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2541 = !DILocalVariable(name: "stream", arg: 1, scope: !2526, file: !353, line: 199, type: !2429)
!2542 = !DILocalVariable(name: "command_name", arg: 2, scope: !2526, file: !353, line: 200, type: !6)
!2543 = !DILocalVariable(name: "package", arg: 3, scope: !2526, file: !353, line: 200, type: !6)
!2544 = !DILocalVariable(name: "version", arg: 4, scope: !2526, file: !353, line: 201, type: !6)
!2545 = !DILocalVariable(name: "authors", arg: 5, scope: !2526, file: !353, line: 201, type: !2529)
!2546 = !DILocalVariable(name: "n_authors", scope: !2526, file: !353, line: 203, type: !46)
!2547 = !DILocalVariable(name: "authtab", scope: !2526, file: !353, line: 204, type: !2548)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !261)
!2549 = !DILocation(line: 0, scope: !2526)
!2550 = !DILocation(line: 201, column: 46, scope: !2526)
!2551 = !DILocation(line: 204, column: 3, scope: !2526)
!2552 = !DILocation(line: 204, column: 15, scope: !2526)
!2553 = !DILocation(line: 208, column: 35, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !353, line: 206, column: 3)
!2555 = distinct !DILexicalBlock(scope: !2526, file: !353, line: 206, column: 3)
!2556 = !DILocation(line: 208, column: 14, scope: !2554)
!2557 = !DILocation(line: 208, column: 33, scope: !2554)
!2558 = !DILocation(line: 208, column: 67, scope: !2554)
!2559 = !DILocation(line: 206, column: 3, scope: !2555)
!2560 = !DILocation(line: 0, scope: !2555)
!2561 = !DILocation(line: 211, column: 3, scope: !2526)
!2562 = !DILocation(line: 213, column: 1, scope: !2526)
!2563 = distinct !DISubprogram(name: "version_etc", scope: !353, file: !353, line: 230, type: !2564, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{null, !2429, !6, !6, !6, null}
!2566 = !{!2567, !2568, !2569, !2570, !2571}
!2567 = !DILocalVariable(name: "stream", arg: 1, scope: !2563, file: !353, line: 230, type: !2429)
!2568 = !DILocalVariable(name: "command_name", arg: 2, scope: !2563, file: !353, line: 231, type: !6)
!2569 = !DILocalVariable(name: "package", arg: 3, scope: !2563, file: !353, line: 231, type: !6)
!2570 = !DILocalVariable(name: "version", arg: 4, scope: !2563, file: !353, line: 232, type: !6)
!2571 = !DILocalVariable(name: "authors", scope: !2563, file: !353, line: 234, type: !2529)
!2572 = !DILocation(line: 0, scope: !2563)
!2573 = !DILocation(line: 234, column: 3, scope: !2563)
!2574 = !DILocation(line: 234, column: 11, scope: !2563)
!2575 = !DILocation(line: 235, column: 3, scope: !2563)
!2576 = !DILocation(line: 236, column: 3, scope: !2563)
!2577 = !DILocation(line: 237, column: 3, scope: !2563)
!2578 = !DILocation(line: 238, column: 1, scope: !2563)
!2579 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !353, file: !353, line: 241, type: !184, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !513)
!2580 = !DILocation(line: 243, column: 3, scope: !2579)
!2581 = !DILocation(line: 248, column: 3, scope: !2579)
!2582 = !DILocation(line: 254, column: 3, scope: !2579)
!2583 = !DILocation(line: 259, column: 3, scope: !2579)
!2584 = !DILocation(line: 261, column: 1, scope: !2579)
!2585 = distinct !DISubprogram(name: "xnrealloc", scope: !2586, file: !2586, line: 147, type: !2587, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2589)
!2586 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!43, !43, !46, !46}
!2589 = !{!2590, !2591, !2592}
!2590 = !DILocalVariable(name: "p", arg: 1, scope: !2585, file: !2586, line: 147, type: !43)
!2591 = !DILocalVariable(name: "n", arg: 2, scope: !2585, file: !2586, line: 147, type: !46)
!2592 = !DILocalVariable(name: "s", arg: 3, scope: !2585, file: !2586, line: 147, type: !46)
!2593 = !DILocation(line: 0, scope: !2585)
!2594 = !DILocalVariable(name: "p", arg: 1, scope: !2595, file: !360, line: 83, type: !43)
!2595 = distinct !DISubprogram(name: "xreallocarray", scope: !360, file: !360, line: 83, type: !2587, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2596)
!2596 = !{!2594, !2597, !2598}
!2597 = !DILocalVariable(name: "n", arg: 2, scope: !2595, file: !360, line: 83, type: !46)
!2598 = !DILocalVariable(name: "s", arg: 3, scope: !2595, file: !360, line: 83, type: !46)
!2599 = !DILocation(line: 0, scope: !2595, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 149, column: 10, scope: !2585)
!2601 = !DILocation(line: 85, column: 25, scope: !2595, inlinedAt: !2600)
!2602 = !DILocalVariable(name: "p", arg: 1, scope: !2603, file: !360, line: 37, type: !43)
!2603 = distinct !DISubprogram(name: "check_nonnull", scope: !360, file: !360, line: 37, type: !2604, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!43, !43}
!2606 = !{!2602}
!2607 = !DILocation(line: 0, scope: !2603, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 85, column: 10, scope: !2595, inlinedAt: !2600)
!2609 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2608)
!2610 = distinct !DILexicalBlock(scope: !2603, file: !360, line: 39, column: 7)
!2611 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2608)
!2612 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2608)
!2613 = !DILocation(line: 149, column: 3, scope: !2585)
!2614 = !DILocation(line: 0, scope: !2595)
!2615 = !DILocation(line: 85, column: 25, scope: !2595)
!2616 = !DILocation(line: 0, scope: !2603, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 85, column: 10, scope: !2595)
!2618 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2617)
!2619 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2617)
!2620 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2617)
!2621 = !DILocation(line: 85, column: 3, scope: !2595)
!2622 = distinct !DISubprogram(name: "xmalloc", scope: !360, file: !360, line: 47, type: !2623, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!43, !46}
!2625 = !{!2626}
!2626 = !DILocalVariable(name: "s", arg: 1, scope: !2622, file: !360, line: 47, type: !46)
!2627 = !DILocation(line: 0, scope: !2622)
!2628 = !DILocation(line: 49, column: 25, scope: !2622)
!2629 = !DILocation(line: 0, scope: !2603, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 49, column: 10, scope: !2622)
!2631 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2630)
!2632 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2630)
!2633 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2630)
!2634 = !DILocation(line: 49, column: 3, scope: !2622)
!2635 = distinct !DISubprogram(name: "ximalloc", scope: !360, file: !360, line: 53, type: !2636, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!43, !379}
!2638 = !{!2639}
!2639 = !DILocalVariable(name: "s", arg: 1, scope: !2635, file: !360, line: 53, type: !379)
!2640 = !DILocation(line: 0, scope: !2635)
!2641 = !DILocalVariable(name: "s", arg: 1, scope: !2642, file: !2643, line: 55, type: !379)
!2642 = distinct !DISubprogram(name: "imalloc", scope: !2643, file: !2643, line: 55, type: !2636, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2644)
!2643 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2644 = !{!2641}
!2645 = !DILocation(line: 0, scope: !2642, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 55, column: 25, scope: !2635)
!2647 = !DILocation(line: 57, column: 26, scope: !2642, inlinedAt: !2646)
!2648 = !DILocation(line: 0, scope: !2603, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 55, column: 10, scope: !2635)
!2650 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2649)
!2651 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2649)
!2652 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2649)
!2653 = !DILocation(line: 55, column: 3, scope: !2635)
!2654 = distinct !DISubprogram(name: "xcharalloc", scope: !360, file: !360, line: 59, type: !2655, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!79, !46}
!2657 = !{!2658}
!2658 = !DILocalVariable(name: "n", arg: 1, scope: !2654, file: !360, line: 59, type: !46)
!2659 = !DILocation(line: 0, scope: !2654)
!2660 = !DILocation(line: 0, scope: !2622, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 61, column: 10, scope: !2654)
!2662 = !DILocation(line: 49, column: 25, scope: !2622, inlinedAt: !2661)
!2663 = !DILocation(line: 0, scope: !2603, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 49, column: 10, scope: !2622, inlinedAt: !2661)
!2665 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2664)
!2666 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2664)
!2667 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2664)
!2668 = !DILocation(line: 61, column: 3, scope: !2654)
!2669 = distinct !DISubprogram(name: "xrealloc", scope: !360, file: !360, line: 68, type: !2670, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!43, !43, !46}
!2672 = !{!2673, !2674}
!2673 = !DILocalVariable(name: "p", arg: 1, scope: !2669, file: !360, line: 68, type: !43)
!2674 = !DILocalVariable(name: "s", arg: 2, scope: !2669, file: !360, line: 68, type: !46)
!2675 = !DILocation(line: 0, scope: !2669)
!2676 = !DILocalVariable(name: "ptr", arg: 1, scope: !2677, file: !2678, line: 2057, type: !43)
!2677 = distinct !DISubprogram(name: "rpl_realloc", scope: !2678, file: !2678, line: 2057, type: !2670, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2679)
!2678 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2679 = !{!2676, !2680}
!2680 = !DILocalVariable(name: "size", arg: 2, scope: !2677, file: !2678, line: 2057, type: !46)
!2681 = !DILocation(line: 0, scope: !2677, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 70, column: 25, scope: !2669)
!2683 = !DILocation(line: 2059, column: 24, scope: !2677, inlinedAt: !2682)
!2684 = !DILocation(line: 2059, column: 10, scope: !2677, inlinedAt: !2682)
!2685 = !DILocation(line: 0, scope: !2603, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 70, column: 10, scope: !2669)
!2687 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2686)
!2688 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2686)
!2689 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2686)
!2690 = !DILocation(line: 70, column: 3, scope: !2669)
!2691 = distinct !DISubprogram(name: "xirealloc", scope: !360, file: !360, line: 74, type: !2692, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!43, !43, !379}
!2694 = !{!2695, !2696}
!2695 = !DILocalVariable(name: "p", arg: 1, scope: !2691, file: !360, line: 74, type: !43)
!2696 = !DILocalVariable(name: "s", arg: 2, scope: !2691, file: !360, line: 74, type: !379)
!2697 = !DILocation(line: 0, scope: !2691)
!2698 = !DILocalVariable(name: "p", arg: 1, scope: !2699, file: !2643, line: 66, type: !43)
!2699 = distinct !DISubprogram(name: "irealloc", scope: !2643, file: !2643, line: 66, type: !2692, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2700)
!2700 = !{!2698, !2701}
!2701 = !DILocalVariable(name: "s", arg: 2, scope: !2699, file: !2643, line: 66, type: !379)
!2702 = !DILocation(line: 0, scope: !2699, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 76, column: 25, scope: !2691)
!2704 = !DILocation(line: 0, scope: !2677, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 68, column: 26, scope: !2699, inlinedAt: !2703)
!2706 = !DILocation(line: 2059, column: 24, scope: !2677, inlinedAt: !2705)
!2707 = !DILocation(line: 2059, column: 10, scope: !2677, inlinedAt: !2705)
!2708 = !DILocation(line: 0, scope: !2603, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 76, column: 10, scope: !2691)
!2710 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2709)
!2711 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2709)
!2712 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2709)
!2713 = !DILocation(line: 76, column: 3, scope: !2691)
!2714 = distinct !DISubprogram(name: "xireallocarray", scope: !360, file: !360, line: 89, type: !2715, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!43, !43, !379, !379}
!2717 = !{!2718, !2719, !2720}
!2718 = !DILocalVariable(name: "p", arg: 1, scope: !2714, file: !360, line: 89, type: !43)
!2719 = !DILocalVariable(name: "n", arg: 2, scope: !2714, file: !360, line: 89, type: !379)
!2720 = !DILocalVariable(name: "s", arg: 3, scope: !2714, file: !360, line: 89, type: !379)
!2721 = !DILocation(line: 0, scope: !2714)
!2722 = !DILocalVariable(name: "p", arg: 1, scope: !2723, file: !2643, line: 98, type: !43)
!2723 = distinct !DISubprogram(name: "ireallocarray", scope: !2643, file: !2643, line: 98, type: !2715, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2724)
!2724 = !{!2722, !2725, !2726}
!2725 = !DILocalVariable(name: "n", arg: 2, scope: !2723, file: !2643, line: 98, type: !379)
!2726 = !DILocalVariable(name: "s", arg: 3, scope: !2723, file: !2643, line: 98, type: !379)
!2727 = !DILocation(line: 0, scope: !2723, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 91, column: 25, scope: !2714)
!2729 = !DILocation(line: 101, column: 13, scope: !2723, inlinedAt: !2728)
!2730 = !DILocation(line: 0, scope: !2603, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 91, column: 10, scope: !2714)
!2732 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2731)
!2733 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2731)
!2734 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2731)
!2735 = !DILocation(line: 91, column: 3, scope: !2714)
!2736 = distinct !DISubprogram(name: "xnmalloc", scope: !360, file: !360, line: 98, type: !2737, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!43, !46, !46}
!2739 = !{!2740, !2741}
!2740 = !DILocalVariable(name: "n", arg: 1, scope: !2736, file: !360, line: 98, type: !46)
!2741 = !DILocalVariable(name: "s", arg: 2, scope: !2736, file: !360, line: 98, type: !46)
!2742 = !DILocation(line: 0, scope: !2736)
!2743 = !DILocation(line: 0, scope: !2595, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 100, column: 10, scope: !2736)
!2745 = !DILocation(line: 85, column: 25, scope: !2595, inlinedAt: !2744)
!2746 = !DILocation(line: 0, scope: !2603, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 85, column: 10, scope: !2595, inlinedAt: !2744)
!2748 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2747)
!2749 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2747)
!2750 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2747)
!2751 = !DILocation(line: 100, column: 3, scope: !2736)
!2752 = distinct !DISubprogram(name: "xinmalloc", scope: !360, file: !360, line: 104, type: !2753, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!43, !379, !379}
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "n", arg: 1, scope: !2752, file: !360, line: 104, type: !379)
!2757 = !DILocalVariable(name: "s", arg: 2, scope: !2752, file: !360, line: 104, type: !379)
!2758 = !DILocation(line: 0, scope: !2752)
!2759 = !DILocation(line: 0, scope: !2714, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 106, column: 10, scope: !2752)
!2761 = !DILocation(line: 0, scope: !2723, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 91, column: 25, scope: !2714, inlinedAt: !2760)
!2763 = !DILocation(line: 101, column: 13, scope: !2723, inlinedAt: !2762)
!2764 = !DILocation(line: 0, scope: !2603, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 91, column: 10, scope: !2714, inlinedAt: !2760)
!2766 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2765)
!2767 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2765)
!2768 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2765)
!2769 = !DILocation(line: 106, column: 3, scope: !2752)
!2770 = distinct !DISubprogram(name: "x2realloc", scope: !360, file: !360, line: 116, type: !2771, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!43, !43, !366}
!2773 = !{!2774, !2775}
!2774 = !DILocalVariable(name: "p", arg: 1, scope: !2770, file: !360, line: 116, type: !43)
!2775 = !DILocalVariable(name: "ps", arg: 2, scope: !2770, file: !360, line: 116, type: !366)
!2776 = !DILocation(line: 0, scope: !2770)
!2777 = !DILocation(line: 0, scope: !363, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 118, column: 10, scope: !2770)
!2779 = !DILocation(line: 178, column: 14, scope: !363, inlinedAt: !2778)
!2780 = !DILocation(line: 180, column: 9, scope: !2781, inlinedAt: !2778)
!2781 = distinct !DILexicalBlock(scope: !363, file: !360, line: 180, column: 7)
!2782 = !DILocation(line: 180, column: 7, scope: !363, inlinedAt: !2778)
!2783 = !DILocation(line: 182, column: 13, scope: !2784, inlinedAt: !2778)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !360, line: 182, column: 11)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !360, line: 181, column: 5)
!2786 = !DILocation(line: 182, column: 11, scope: !2785, inlinedAt: !2778)
!2787 = !DILocation(line: 197, column: 11, scope: !2788, inlinedAt: !2778)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !360, line: 197, column: 11)
!2789 = distinct !DILexicalBlock(scope: !2781, file: !360, line: 195, column: 5)
!2790 = !DILocation(line: 197, column: 11, scope: !2789, inlinedAt: !2778)
!2791 = !DILocation(line: 198, column: 9, scope: !2788, inlinedAt: !2778)
!2792 = !DILocation(line: 0, scope: !2595, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 201, column: 7, scope: !363, inlinedAt: !2778)
!2794 = !DILocation(line: 85, column: 25, scope: !2595, inlinedAt: !2793)
!2795 = !DILocation(line: 0, scope: !2603, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 85, column: 10, scope: !2595, inlinedAt: !2793)
!2797 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2796)
!2798 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2796)
!2799 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2796)
!2800 = !DILocation(line: 202, column: 7, scope: !363, inlinedAt: !2778)
!2801 = !DILocation(line: 118, column: 3, scope: !2770)
!2802 = !DILocation(line: 0, scope: !363)
!2803 = !DILocation(line: 178, column: 14, scope: !363)
!2804 = !DILocation(line: 180, column: 9, scope: !2781)
!2805 = !DILocation(line: 180, column: 7, scope: !363)
!2806 = !DILocation(line: 182, column: 13, scope: !2784)
!2807 = !DILocation(line: 182, column: 11, scope: !2785)
!2808 = !DILocation(line: 190, column: 30, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2784, file: !360, line: 183, column: 9)
!2810 = !DILocation(line: 191, column: 16, scope: !2809)
!2811 = !DILocation(line: 191, column: 13, scope: !2809)
!2812 = !DILocation(line: 192, column: 9, scope: !2809)
!2813 = !DILocation(line: 197, column: 11, scope: !2788)
!2814 = !DILocation(line: 197, column: 11, scope: !2789)
!2815 = !DILocation(line: 198, column: 9, scope: !2788)
!2816 = !DILocation(line: 0, scope: !2595, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 201, column: 7, scope: !363)
!2818 = !DILocation(line: 85, column: 25, scope: !2595, inlinedAt: !2817)
!2819 = !DILocation(line: 0, scope: !2603, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 85, column: 10, scope: !2595, inlinedAt: !2817)
!2821 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2820)
!2822 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2820)
!2823 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2820)
!2824 = !DILocation(line: 202, column: 7, scope: !363)
!2825 = !DILocation(line: 203, column: 3, scope: !363)
!2826 = !DILocation(line: 0, scope: !375)
!2827 = !DILocation(line: 230, column: 14, scope: !375)
!2828 = !DILocation(line: 238, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !375, file: !360, line: 238, column: 7)
!2830 = !DILocation(line: 238, column: 7, scope: !375)
!2831 = !DILocation(line: 240, column: 9, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !375, file: !360, line: 240, column: 7)
!2833 = !DILocation(line: 240, column: 18, scope: !2832)
!2834 = !DILocation(line: 253, column: 8, scope: !375)
!2835 = !DILocation(line: 258, column: 27, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !360, line: 257, column: 5)
!2837 = distinct !DILexicalBlock(scope: !375, file: !360, line: 256, column: 7)
!2838 = !DILocation(line: 259, column: 32, scope: !2836)
!2839 = !DILocation(line: 260, column: 5, scope: !2836)
!2840 = !DILocation(line: 262, column: 9, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !375, file: !360, line: 262, column: 7)
!2842 = !DILocation(line: 262, column: 7, scope: !375)
!2843 = !DILocation(line: 263, column: 9, scope: !2841)
!2844 = !DILocation(line: 263, column: 5, scope: !2841)
!2845 = !DILocation(line: 264, column: 9, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !375, file: !360, line: 264, column: 7)
!2847 = !DILocation(line: 264, column: 14, scope: !2846)
!2848 = !DILocation(line: 265, column: 7, scope: !2846)
!2849 = !DILocation(line: 265, column: 11, scope: !2846)
!2850 = !DILocation(line: 266, column: 11, scope: !2846)
!2851 = !DILocation(line: 266, column: 26, scope: !2846)
!2852 = !DILocation(line: 267, column: 14, scope: !2846)
!2853 = !DILocation(line: 264, column: 7, scope: !375)
!2854 = !DILocation(line: 268, column: 5, scope: !2846)
!2855 = !DILocation(line: 0, scope: !2669, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 269, column: 8, scope: !375)
!2857 = !DILocation(line: 0, scope: !2677, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 70, column: 25, scope: !2669, inlinedAt: !2856)
!2859 = !DILocation(line: 2059, column: 24, scope: !2677, inlinedAt: !2858)
!2860 = !DILocation(line: 2059, column: 10, scope: !2677, inlinedAt: !2858)
!2861 = !DILocation(line: 0, scope: !2603, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 70, column: 10, scope: !2669, inlinedAt: !2856)
!2863 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2862)
!2864 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2862)
!2865 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2862)
!2866 = !DILocation(line: 270, column: 7, scope: !375)
!2867 = !DILocation(line: 271, column: 3, scope: !375)
!2868 = distinct !DISubprogram(name: "xzalloc", scope: !360, file: !360, line: 279, type: !2623, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2869)
!2869 = !{!2870}
!2870 = !DILocalVariable(name: "s", arg: 1, scope: !2868, file: !360, line: 279, type: !46)
!2871 = !DILocation(line: 0, scope: !2868)
!2872 = !DILocalVariable(name: "n", arg: 1, scope: !2873, file: !360, line: 294, type: !46)
!2873 = distinct !DISubprogram(name: "xcalloc", scope: !360, file: !360, line: 294, type: !2737, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2874)
!2874 = !{!2872, !2875}
!2875 = !DILocalVariable(name: "s", arg: 2, scope: !2873, file: !360, line: 294, type: !46)
!2876 = !DILocation(line: 0, scope: !2873, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 281, column: 10, scope: !2868)
!2878 = !DILocation(line: 296, column: 25, scope: !2873, inlinedAt: !2877)
!2879 = !DILocation(line: 0, scope: !2603, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 296, column: 10, scope: !2873, inlinedAt: !2877)
!2881 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2880)
!2882 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2880)
!2883 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2880)
!2884 = !DILocation(line: 281, column: 3, scope: !2868)
!2885 = !DILocation(line: 0, scope: !2873)
!2886 = !DILocation(line: 296, column: 25, scope: !2873)
!2887 = !DILocation(line: 0, scope: !2603, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 296, column: 10, scope: !2873)
!2889 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2888)
!2890 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2888)
!2891 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2888)
!2892 = !DILocation(line: 296, column: 3, scope: !2873)
!2893 = distinct !DISubprogram(name: "xizalloc", scope: !360, file: !360, line: 285, type: !2636, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2894)
!2894 = !{!2895}
!2895 = !DILocalVariable(name: "s", arg: 1, scope: !2893, file: !360, line: 285, type: !379)
!2896 = !DILocation(line: 0, scope: !2893)
!2897 = !DILocalVariable(name: "n", arg: 1, scope: !2898, file: !360, line: 300, type: !379)
!2898 = distinct !DISubprogram(name: "xicalloc", scope: !360, file: !360, line: 300, type: !2753, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2899)
!2899 = !{!2897, !2900}
!2900 = !DILocalVariable(name: "s", arg: 2, scope: !2898, file: !360, line: 300, type: !379)
!2901 = !DILocation(line: 0, scope: !2898, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 287, column: 10, scope: !2893)
!2903 = !DILocalVariable(name: "n", arg: 1, scope: !2904, file: !2643, line: 77, type: !379)
!2904 = distinct !DISubprogram(name: "icalloc", scope: !2643, file: !2643, line: 77, type: !2753, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2905)
!2905 = !{!2903, !2906}
!2906 = !DILocalVariable(name: "s", arg: 2, scope: !2904, file: !2643, line: 77, type: !379)
!2907 = !DILocation(line: 0, scope: !2904, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 302, column: 25, scope: !2898, inlinedAt: !2902)
!2909 = !DILocation(line: 91, column: 10, scope: !2904, inlinedAt: !2908)
!2910 = !DILocation(line: 0, scope: !2603, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 302, column: 10, scope: !2898, inlinedAt: !2902)
!2912 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2911)
!2913 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2911)
!2914 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2911)
!2915 = !DILocation(line: 287, column: 3, scope: !2893)
!2916 = !DILocation(line: 0, scope: !2898)
!2917 = !DILocation(line: 0, scope: !2904, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 302, column: 25, scope: !2898)
!2919 = !DILocation(line: 91, column: 10, scope: !2904, inlinedAt: !2918)
!2920 = !DILocation(line: 0, scope: !2603, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 302, column: 10, scope: !2898)
!2922 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2921)
!2923 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2921)
!2924 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2921)
!2925 = !DILocation(line: 302, column: 3, scope: !2898)
!2926 = distinct !DISubprogram(name: "xmemdup", scope: !360, file: !360, line: 310, type: !2927, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!43, !639, !46}
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "p", arg: 1, scope: !2926, file: !360, line: 310, type: !639)
!2931 = !DILocalVariable(name: "s", arg: 2, scope: !2926, file: !360, line: 310, type: !46)
!2932 = !DILocation(line: 0, scope: !2926)
!2933 = !DILocation(line: 0, scope: !2622, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 312, column: 18, scope: !2926)
!2935 = !DILocation(line: 49, column: 25, scope: !2622, inlinedAt: !2934)
!2936 = !DILocation(line: 0, scope: !2603, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 49, column: 10, scope: !2622, inlinedAt: !2934)
!2938 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2937)
!2939 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2937)
!2940 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2937)
!2941 = !DILocalVariable(name: "__dest", arg: 1, scope: !2942, file: !1113, line: 26, type: !2945)
!2942 = distinct !DISubprogram(name: "memcpy", scope: !1113, file: !1113, line: 26, type: !2943, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2946)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!43, !2945, !638, !46}
!2945 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!2946 = !{!2941, !2947, !2948}
!2947 = !DILocalVariable(name: "__src", arg: 2, scope: !2942, file: !1113, line: 26, type: !638)
!2948 = !DILocalVariable(name: "__len", arg: 3, scope: !2942, file: !1113, line: 26, type: !46)
!2949 = !DILocation(line: 0, scope: !2942, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 312, column: 10, scope: !2926)
!2951 = !DILocation(line: 29, column: 10, scope: !2942, inlinedAt: !2950)
!2952 = !DILocation(line: 312, column: 3, scope: !2926)
!2953 = distinct !DISubprogram(name: "ximemdup", scope: !360, file: !360, line: 316, type: !2954, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!43, !639, !379}
!2956 = !{!2957, !2958}
!2957 = !DILocalVariable(name: "p", arg: 1, scope: !2953, file: !360, line: 316, type: !639)
!2958 = !DILocalVariable(name: "s", arg: 2, scope: !2953, file: !360, line: 316, type: !379)
!2959 = !DILocation(line: 0, scope: !2953)
!2960 = !DILocation(line: 0, scope: !2635, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 318, column: 18, scope: !2953)
!2962 = !DILocation(line: 0, scope: !2642, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 55, column: 25, scope: !2635, inlinedAt: !2961)
!2964 = !DILocation(line: 57, column: 26, scope: !2642, inlinedAt: !2963)
!2965 = !DILocation(line: 0, scope: !2603, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 55, column: 10, scope: !2635, inlinedAt: !2961)
!2967 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2966)
!2968 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2966)
!2969 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2966)
!2970 = !DILocation(line: 0, scope: !2942, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 318, column: 10, scope: !2953)
!2972 = !DILocation(line: 29, column: 10, scope: !2942, inlinedAt: !2971)
!2973 = !DILocation(line: 318, column: 3, scope: !2953)
!2974 = distinct !DISubprogram(name: "ximemdup0", scope: !360, file: !360, line: 325, type: !2975, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!79, !639, !379}
!2977 = !{!2978, !2979, !2980}
!2978 = !DILocalVariable(name: "p", arg: 1, scope: !2974, file: !360, line: 325, type: !639)
!2979 = !DILocalVariable(name: "s", arg: 2, scope: !2974, file: !360, line: 325, type: !379)
!2980 = !DILocalVariable(name: "result", scope: !2974, file: !360, line: 327, type: !79)
!2981 = !DILocation(line: 0, scope: !2974)
!2982 = !DILocation(line: 327, column: 30, scope: !2974)
!2983 = !DILocation(line: 0, scope: !2635, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 327, column: 18, scope: !2974)
!2985 = !DILocation(line: 0, scope: !2642, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 55, column: 25, scope: !2635, inlinedAt: !2984)
!2987 = !DILocation(line: 57, column: 26, scope: !2642, inlinedAt: !2986)
!2988 = !DILocation(line: 0, scope: !2603, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 55, column: 10, scope: !2635, inlinedAt: !2984)
!2990 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !2989)
!2991 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !2989)
!2992 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !2989)
!2993 = !DILocation(line: 328, column: 3, scope: !2974)
!2994 = !DILocation(line: 328, column: 13, scope: !2974)
!2995 = !DILocation(line: 0, scope: !2942, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 329, column: 10, scope: !2974)
!2997 = !DILocation(line: 29, column: 10, scope: !2942, inlinedAt: !2996)
!2998 = !DILocation(line: 329, column: 3, scope: !2974)
!2999 = distinct !DISubprogram(name: "xstrdup", scope: !360, file: !360, line: 335, type: !633, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !3000)
!3000 = !{!3001}
!3001 = !DILocalVariable(name: "string", arg: 1, scope: !2999, file: !360, line: 335, type: !6)
!3002 = !DILocation(line: 0, scope: !2999)
!3003 = !DILocation(line: 337, column: 27, scope: !2999)
!3004 = !DILocation(line: 337, column: 43, scope: !2999)
!3005 = !DILocation(line: 0, scope: !2926, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 337, column: 10, scope: !2999)
!3007 = !DILocation(line: 0, scope: !2622, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 312, column: 18, scope: !2926, inlinedAt: !3006)
!3009 = !DILocation(line: 49, column: 25, scope: !2622, inlinedAt: !3008)
!3010 = !DILocation(line: 0, scope: !2603, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 49, column: 10, scope: !2622, inlinedAt: !3008)
!3012 = !DILocation(line: 39, column: 8, scope: !2610, inlinedAt: !3011)
!3013 = !DILocation(line: 39, column: 7, scope: !2603, inlinedAt: !3011)
!3014 = !DILocation(line: 40, column: 5, scope: !2610, inlinedAt: !3011)
!3015 = !DILocation(line: 0, scope: !2942, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 312, column: 10, scope: !2926, inlinedAt: !3006)
!3017 = !DILocation(line: 29, column: 10, scope: !2942, inlinedAt: !3016)
!3018 = !DILocation(line: 337, column: 3, scope: !2999)
!3019 = distinct !DISubprogram(name: "xalloc_die", scope: !394, file: !394, line: 32, type: !184, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3020)
!3020 = !{!3021}
!3021 = !DILocalVariable(name: "__errstatus", scope: !3022, file: !394, line: 34, type: !3023)
!3022 = distinct !DILexicalBlock(scope: !3019, file: !394, line: 34, column: 3)
!3023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3024 = !DILocation(line: 34, column: 3, scope: !3022)
!3025 = !DILocation(line: 0, scope: !3022)
!3026 = !DILocation(line: 40, column: 3, scope: !3019)
!3027 = distinct !DISubprogram(name: "close_stream", scope: !396, file: !396, line: 55, type: !3028, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3064)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!44, !3030}
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !3033)
!3033 = !{!3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3032, file: !75, line: 51, baseType: !44, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3032, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3032, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3032, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3032, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3032, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3032, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3032, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3032, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3032, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3032, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3032, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3032, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3032, file: !75, line: 70, baseType: !3048, size: 64, offset: 832)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3032, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3032, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3032, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3032, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3032, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3032, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3032, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3032, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3032, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3032, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3032, file: !75, line: 93, baseType: !3048, size: 64, offset: 1344)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3032, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3032, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3032, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3032, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!3064 = !{!3065, !3066, !3068, !3069}
!3065 = !DILocalVariable(name: "stream", arg: 1, scope: !3027, file: !396, line: 55, type: !3030)
!3066 = !DILocalVariable(name: "some_pending", scope: !3027, file: !396, line: 57, type: !3067)
!3067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!3068 = !DILocalVariable(name: "prev_fail", scope: !3027, file: !396, line: 58, type: !3067)
!3069 = !DILocalVariable(name: "fclose_fail", scope: !3027, file: !396, line: 59, type: !3067)
!3070 = !DILocation(line: 0, scope: !3027)
!3071 = !DILocation(line: 57, column: 30, scope: !3027)
!3072 = !DILocalVariable(name: "__stream", arg: 1, scope: !3073, file: !870, line: 135, type: !3030)
!3073 = distinct !DISubprogram(name: "ferror_unlocked", scope: !870, file: !870, line: 135, type: !3028, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3074)
!3074 = !{!3072}
!3075 = !DILocation(line: 0, scope: !3073, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 58, column: 27, scope: !3027)
!3077 = !DILocation(line: 137, column: 10, scope: !3073, inlinedAt: !3076)
!3078 = !{!879, !522, i64 0}
!3079 = !DILocation(line: 58, column: 43, scope: !3027)
!3080 = !DILocation(line: 59, column: 29, scope: !3027)
!3081 = !DILocation(line: 59, column: 45, scope: !3027)
!3082 = !DILocation(line: 69, column: 17, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3027, file: !396, line: 69, column: 7)
!3084 = !DILocation(line: 57, column: 50, scope: !3027)
!3085 = !DILocation(line: 69, column: 33, scope: !3083)
!3086 = !DILocation(line: 69, column: 53, scope: !3083)
!3087 = !DILocation(line: 69, column: 59, scope: !3083)
!3088 = !DILocation(line: 69, column: 7, scope: !3027)
!3089 = !DILocation(line: 71, column: 11, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3083, file: !396, line: 70, column: 5)
!3091 = !DILocation(line: 72, column: 9, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3090, file: !396, line: 71, column: 11)
!3093 = !DILocation(line: 72, column: 15, scope: !3092)
!3094 = !DILocation(line: 77, column: 1, scope: !3027)
!3095 = distinct !DISubprogram(name: "rpl_fclose", scope: !398, file: !398, line: 58, type: !3096, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3132)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!44, !3098}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !3100)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3100, file: !75, line: 51, baseType: !44, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3100, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3100, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3100, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3100, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3100, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3100, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3100, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3100, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3100, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3100, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3100, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3100, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3100, file: !75, line: 70, baseType: !3116, size: 64, offset: 832)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3100, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3100, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3100, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3100, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3100, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3100, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3100, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3100, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3100, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3100, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3100, file: !75, line: 93, baseType: !3116, size: 64, offset: 1344)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3100, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3100, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3100, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3100, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!3132 = !{!3133, !3134, !3135, !3136}
!3133 = !DILocalVariable(name: "fp", arg: 1, scope: !3095, file: !398, line: 58, type: !3098)
!3134 = !DILocalVariable(name: "saved_errno", scope: !3095, file: !398, line: 60, type: !44)
!3135 = !DILocalVariable(name: "fd", scope: !3095, file: !398, line: 63, type: !44)
!3136 = !DILocalVariable(name: "result", scope: !3095, file: !398, line: 74, type: !44)
!3137 = !DILocation(line: 0, scope: !3095)
!3138 = !DILocation(line: 63, column: 12, scope: !3095)
!3139 = !DILocation(line: 64, column: 10, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3095, file: !398, line: 64, column: 7)
!3141 = !DILocation(line: 64, column: 7, scope: !3095)
!3142 = !DILocation(line: 65, column: 12, scope: !3140)
!3143 = !DILocation(line: 65, column: 5, scope: !3140)
!3144 = !DILocation(line: 70, column: 9, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3095, file: !398, line: 70, column: 7)
!3146 = !DILocation(line: 70, column: 23, scope: !3145)
!3147 = !DILocation(line: 70, column: 33, scope: !3145)
!3148 = !DILocation(line: 70, column: 26, scope: !3145)
!3149 = !DILocation(line: 70, column: 59, scope: !3145)
!3150 = !DILocation(line: 71, column: 7, scope: !3145)
!3151 = !DILocation(line: 71, column: 10, scope: !3145)
!3152 = !DILocation(line: 70, column: 7, scope: !3095)
!3153 = !DILocation(line: 100, column: 12, scope: !3095)
!3154 = !DILocation(line: 105, column: 7, scope: !3095)
!3155 = !DILocation(line: 72, column: 19, scope: !3145)
!3156 = !DILocation(line: 105, column: 19, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3095, file: !398, line: 105, column: 7)
!3158 = !DILocation(line: 107, column: 13, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3157, file: !398, line: 106, column: 5)
!3160 = !DILocation(line: 109, column: 5, scope: !3159)
!3161 = !DILocation(line: 112, column: 1, scope: !3095)
!3162 = !DISubprogram(name: "fileno", scope: !157, file: !157, line: 809, type: !3096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3163 = !DISubprogram(name: "fclose", scope: !157, file: !157, line: 178, type: !3096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3164 = !DISubprogram(name: "lseek", scope: !693, file: !693, line: 339, type: !3165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!98, !44, !98, !44}
!3167 = distinct !DISubprogram(name: "rpl_fflush", scope: !400, file: !400, line: 130, type: !3168, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3204)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!44, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !3172)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3172, file: !75, line: 51, baseType: !44, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3172, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3172, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3172, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3172, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3172, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3172, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3172, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3172, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3172, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3172, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3172, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3172, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3172, file: !75, line: 70, baseType: !3188, size: 64, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3172, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3172, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3172, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3172, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3172, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3172, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3172, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3172, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3172, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3172, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3172, file: !75, line: 93, baseType: !3188, size: 64, offset: 1344)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3172, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3172, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3172, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3172, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!3204 = !{!3205}
!3205 = !DILocalVariable(name: "stream", arg: 1, scope: !3167, file: !400, line: 130, type: !3170)
!3206 = !DILocation(line: 0, scope: !3167)
!3207 = !DILocation(line: 151, column: 14, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3167, file: !400, line: 151, column: 7)
!3209 = !DILocation(line: 151, column: 22, scope: !3208)
!3210 = !DILocation(line: 151, column: 27, scope: !3208)
!3211 = !DILocation(line: 151, column: 7, scope: !3167)
!3212 = !DILocation(line: 152, column: 12, scope: !3208)
!3213 = !DILocation(line: 152, column: 5, scope: !3208)
!3214 = !DILocalVariable(name: "fp", arg: 1, scope: !3215, file: !400, line: 42, type: !3170)
!3215 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !400, file: !400, line: 42, type: !3216, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !3170}
!3218 = !{!3214}
!3219 = !DILocation(line: 0, scope: !3215, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 157, column: 3, scope: !3167)
!3221 = !DILocation(line: 44, column: 12, scope: !3222, inlinedAt: !3220)
!3222 = distinct !DILexicalBlock(scope: !3215, file: !400, line: 44, column: 7)
!3223 = !DILocation(line: 44, column: 19, scope: !3222, inlinedAt: !3220)
!3224 = !DILocation(line: 44, column: 7, scope: !3215, inlinedAt: !3220)
!3225 = !DILocation(line: 46, column: 5, scope: !3222, inlinedAt: !3220)
!3226 = !DILocation(line: 159, column: 10, scope: !3167)
!3227 = !DILocation(line: 159, column: 3, scope: !3167)
!3228 = !DILocation(line: 236, column: 1, scope: !3167)
!3229 = !DISubprogram(name: "fflush", scope: !157, file: !157, line: 230, type: !3168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3230 = distinct !DISubprogram(name: "rpl_fseeko", scope: !402, file: !402, line: 28, type: !3231, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3268)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!44, !3233, !3267, !44}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !3235)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3235, file: !75, line: 51, baseType: !44, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3235, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3235, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3235, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3235, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3235, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3235, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3235, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3235, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3235, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3235, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3235, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3235, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3235, file: !75, line: 70, baseType: !3251, size: 64, offset: 832)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3235, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3235, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3235, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3235, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3235, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3235, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3235, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3235, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3235, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3235, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3235, file: !75, line: 93, baseType: !3251, size: 64, offset: 1344)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3235, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3235, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3235, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3235, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !157, line: 63, baseType: !98)
!3268 = !{!3269, !3270, !3271, !3272}
!3269 = !DILocalVariable(name: "fp", arg: 1, scope: !3230, file: !402, line: 28, type: !3233)
!3270 = !DILocalVariable(name: "offset", arg: 2, scope: !3230, file: !402, line: 28, type: !3267)
!3271 = !DILocalVariable(name: "whence", arg: 3, scope: !3230, file: !402, line: 28, type: !44)
!3272 = !DILocalVariable(name: "pos", scope: !3273, file: !402, line: 123, type: !3267)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !402, line: 119, column: 5)
!3274 = distinct !DILexicalBlock(scope: !3230, file: !402, line: 55, column: 7)
!3275 = !DILocation(line: 0, scope: !3230)
!3276 = !DILocation(line: 55, column: 12, scope: !3274)
!3277 = !{!879, !436, i64 16}
!3278 = !DILocation(line: 55, column: 33, scope: !3274)
!3279 = !{!879, !436, i64 8}
!3280 = !DILocation(line: 55, column: 25, scope: !3274)
!3281 = !DILocation(line: 56, column: 7, scope: !3274)
!3282 = !DILocation(line: 56, column: 15, scope: !3274)
!3283 = !DILocation(line: 56, column: 37, scope: !3274)
!3284 = !{!879, !436, i64 32}
!3285 = !DILocation(line: 56, column: 29, scope: !3274)
!3286 = !DILocation(line: 57, column: 7, scope: !3274)
!3287 = !DILocation(line: 57, column: 15, scope: !3274)
!3288 = !{!879, !436, i64 72}
!3289 = !DILocation(line: 57, column: 29, scope: !3274)
!3290 = !DILocation(line: 55, column: 7, scope: !3230)
!3291 = !DILocation(line: 123, column: 26, scope: !3273)
!3292 = !DILocation(line: 123, column: 19, scope: !3273)
!3293 = !DILocation(line: 0, scope: !3273)
!3294 = !DILocation(line: 124, column: 15, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3273, file: !402, line: 124, column: 11)
!3296 = !DILocation(line: 124, column: 11, scope: !3273)
!3297 = !DILocation(line: 135, column: 12, scope: !3273)
!3298 = !DILocation(line: 135, column: 19, scope: !3273)
!3299 = !DILocation(line: 136, column: 12, scope: !3273)
!3300 = !DILocation(line: 136, column: 20, scope: !3273)
!3301 = !{!879, !880, i64 144}
!3302 = !DILocation(line: 167, column: 7, scope: !3273)
!3303 = !DILocation(line: 169, column: 10, scope: !3230)
!3304 = !DILocation(line: 169, column: 3, scope: !3230)
!3305 = !DILocation(line: 170, column: 1, scope: !3230)
!3306 = !DISubprogram(name: "fseeko", scope: !157, file: !157, line: 736, type: !3307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!44, !3233, !98, !44}
!3309 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !337, file: !337, line: 100, type: !3310, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3313)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!46, !1131, !6, !46, !3312}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3313 = !{!3314, !3315, !3316, !3317, !3318}
!3314 = !DILocalVariable(name: "pwc", arg: 1, scope: !3309, file: !337, line: 100, type: !1131)
!3315 = !DILocalVariable(name: "s", arg: 2, scope: !3309, file: !337, line: 100, type: !6)
!3316 = !DILocalVariable(name: "n", arg: 3, scope: !3309, file: !337, line: 100, type: !46)
!3317 = !DILocalVariable(name: "ps", arg: 4, scope: !3309, file: !337, line: 100, type: !3312)
!3318 = !DILocalVariable(name: "ret", scope: !3309, file: !337, line: 130, type: !46)
!3319 = !DILocation(line: 0, scope: !3309)
!3320 = !DILocation(line: 105, column: 9, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3309, file: !337, line: 105, column: 7)
!3322 = !DILocation(line: 105, column: 7, scope: !3309)
!3323 = !DILocation(line: 117, column: 10, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3309, file: !337, line: 117, column: 7)
!3325 = !DILocation(line: 117, column: 7, scope: !3309)
!3326 = !DILocation(line: 130, column: 16, scope: !3309)
!3327 = !DILocation(line: 135, column: 11, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3309, file: !337, line: 135, column: 7)
!3329 = !DILocation(line: 135, column: 25, scope: !3328)
!3330 = !DILocation(line: 135, column: 30, scope: !3328)
!3331 = !DILocation(line: 135, column: 7, scope: !3309)
!3332 = !DILocalVariable(name: "ps", arg: 1, scope: !3333, file: !1104, line: 1135, type: !3312)
!3333 = distinct !DISubprogram(name: "mbszero", scope: !1104, file: !1104, line: 1135, type: !3334, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{null, !3312}
!3336 = !{!3332}
!3337 = !DILocation(line: 0, scope: !3333, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 137, column: 5, scope: !3328)
!3339 = !DILocalVariable(name: "__dest", arg: 1, scope: !3340, file: !1113, line: 57, type: !43)
!3340 = distinct !DISubprogram(name: "memset", scope: !1113, file: !1113, line: 57, type: !1114, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3341)
!3341 = !{!3339, !3342, !3343}
!3342 = !DILocalVariable(name: "__ch", arg: 2, scope: !3340, file: !1113, line: 57, type: !44)
!3343 = !DILocalVariable(name: "__len", arg: 3, scope: !3340, file: !1113, line: 57, type: !46)
!3344 = !DILocation(line: 0, scope: !3340, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 1137, column: 3, scope: !3333, inlinedAt: !3338)
!3346 = !DILocation(line: 59, column: 10, scope: !3340, inlinedAt: !3345)
!3347 = !DILocation(line: 137, column: 5, scope: !3328)
!3348 = !DILocation(line: 138, column: 11, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3309, file: !337, line: 138, column: 7)
!3350 = !DILocation(line: 138, column: 7, scope: !3309)
!3351 = !DILocation(line: 139, column: 5, scope: !3349)
!3352 = !DILocation(line: 143, column: 26, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3309, file: !337, line: 143, column: 7)
!3354 = !DILocation(line: 143, column: 41, scope: !3353)
!3355 = !DILocation(line: 143, column: 7, scope: !3309)
!3356 = !DILocation(line: 145, column: 15, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !337, line: 145, column: 11)
!3358 = distinct !DILexicalBlock(scope: !3353, file: !337, line: 144, column: 5)
!3359 = !DILocation(line: 145, column: 11, scope: !3358)
!3360 = !DILocation(line: 146, column: 32, scope: !3357)
!3361 = !DILocation(line: 146, column: 16, scope: !3357)
!3362 = !DILocation(line: 146, column: 14, scope: !3357)
!3363 = !DILocation(line: 146, column: 9, scope: !3357)
!3364 = !DILocation(line: 286, column: 1, scope: !3309)
!3365 = !DISubprogram(name: "mbsinit", scope: !3366, file: !3366, line: 293, type: !3367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3366 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!44, !3369}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!3371 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !404, file: !404, line: 27, type: !2587, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3372)
!3372 = !{!3373, !3374, !3375, !3376}
!3373 = !DILocalVariable(name: "ptr", arg: 1, scope: !3371, file: !404, line: 27, type: !43)
!3374 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3371, file: !404, line: 27, type: !46)
!3375 = !DILocalVariable(name: "size", arg: 3, scope: !3371, file: !404, line: 27, type: !46)
!3376 = !DILocalVariable(name: "nbytes", scope: !3371, file: !404, line: 29, type: !46)
!3377 = !DILocation(line: 0, scope: !3371)
!3378 = !DILocation(line: 30, column: 7, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3371, file: !404, line: 30, column: 7)
!3380 = !DILocalVariable(name: "ptr", arg: 1, scope: !3381, file: !2678, line: 2057, type: !43)
!3381 = distinct !DISubprogram(name: "rpl_realloc", scope: !2678, file: !2678, line: 2057, type: !2670, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3382)
!3382 = !{!3380, !3383}
!3383 = !DILocalVariable(name: "size", arg: 2, scope: !3381, file: !2678, line: 2057, type: !46)
!3384 = !DILocation(line: 0, scope: !3381, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 37, column: 10, scope: !3371)
!3386 = !DILocation(line: 2059, column: 24, scope: !3381, inlinedAt: !3385)
!3387 = !DILocation(line: 2059, column: 10, scope: !3381, inlinedAt: !3385)
!3388 = !DILocation(line: 37, column: 3, scope: !3371)
!3389 = !DILocation(line: 32, column: 7, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3379, file: !404, line: 31, column: 5)
!3391 = !DILocation(line: 32, column: 13, scope: !3390)
!3392 = !DILocation(line: 33, column: 7, scope: !3390)
!3393 = !DILocation(line: 38, column: 1, scope: !3371)
!3394 = distinct !DISubprogram(name: "hard_locale", scope: !407, file: !407, line: 28, type: !3395, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!58, !44}
!3397 = !{!3398, !3399}
!3398 = !DILocalVariable(name: "category", arg: 1, scope: !3394, file: !407, line: 28, type: !44)
!3399 = !DILocalVariable(name: "locale", scope: !3394, file: !407, line: 30, type: !3400)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3401)
!3401 = !{!3402}
!3402 = !DISubrange(count: 257)
!3403 = !DILocation(line: 0, scope: !3394)
!3404 = !DILocation(line: 30, column: 3, scope: !3394)
!3405 = !DILocation(line: 30, column: 8, scope: !3394)
!3406 = !DILocation(line: 32, column: 7, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3394, file: !407, line: 32, column: 7)
!3408 = !DILocation(line: 32, column: 7, scope: !3394)
!3409 = !DILocalVariable(name: "__s1", arg: 1, scope: !3410, file: !471, line: 1359, type: !6)
!3410 = distinct !DISubprogram(name: "streq", scope: !471, file: !471, line: 1359, type: !472, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3411)
!3411 = !{!3409, !3412}
!3412 = !DILocalVariable(name: "__s2", arg: 2, scope: !3410, file: !471, line: 1359, type: !6)
!3413 = !DILocation(line: 0, scope: !3410, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 35, column: 9, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3394, file: !407, line: 35, column: 7)
!3416 = !DILocation(line: 1361, column: 11, scope: !3410, inlinedAt: !3414)
!3417 = !DILocation(line: 1361, column: 10, scope: !3410, inlinedAt: !3414)
!3418 = !DILocation(line: 35, column: 29, scope: !3415)
!3419 = !DILocation(line: 0, scope: !3410, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 35, column: 32, scope: !3415)
!3421 = !DILocation(line: 1361, column: 11, scope: !3410, inlinedAt: !3420)
!3422 = !DILocation(line: 1361, column: 10, scope: !3410, inlinedAt: !3420)
!3423 = !DILocation(line: 35, column: 7, scope: !3394)
!3424 = !DILocation(line: 46, column: 3, scope: !3394)
!3425 = !DILocation(line: 47, column: 1, scope: !3394)
!3426 = distinct !DISubprogram(name: "setlocale_null_r", scope: !409, file: !409, line: 154, type: !3427, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!44, !44, !79, !46}
!3429 = !{!3430, !3431, !3432}
!3430 = !DILocalVariable(name: "category", arg: 1, scope: !3426, file: !409, line: 154, type: !44)
!3431 = !DILocalVariable(name: "buf", arg: 2, scope: !3426, file: !409, line: 154, type: !79)
!3432 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3426, file: !409, line: 154, type: !46)
!3433 = !DILocation(line: 0, scope: !3426)
!3434 = !DILocation(line: 159, column: 10, scope: !3426)
!3435 = !DILocation(line: 159, column: 3, scope: !3426)
!3436 = distinct !DISubprogram(name: "setlocale_null", scope: !409, file: !409, line: 186, type: !3437, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!6, !44}
!3439 = !{!3440}
!3440 = !DILocalVariable(name: "category", arg: 1, scope: !3436, file: !409, line: 186, type: !44)
!3441 = !DILocation(line: 0, scope: !3436)
!3442 = !DILocation(line: 189, column: 10, scope: !3436)
!3443 = !DILocation(line: 189, column: 3, scope: !3436)
!3444 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !411, file: !411, line: 35, type: !3437, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3445)
!3445 = !{!3446, !3447}
!3446 = !DILocalVariable(name: "category", arg: 1, scope: !3444, file: !411, line: 35, type: !44)
!3447 = !DILocalVariable(name: "result", scope: !3444, file: !411, line: 37, type: !6)
!3448 = !DILocation(line: 0, scope: !3444)
!3449 = !DILocation(line: 37, column: 24, scope: !3444)
!3450 = !DILocation(line: 62, column: 3, scope: !3444)
!3451 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !411, file: !411, line: 66, type: !3427, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457}
!3453 = !DILocalVariable(name: "category", arg: 1, scope: !3451, file: !411, line: 66, type: !44)
!3454 = !DILocalVariable(name: "buf", arg: 2, scope: !3451, file: !411, line: 66, type: !79)
!3455 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3451, file: !411, line: 66, type: !46)
!3456 = !DILocalVariable(name: "result", scope: !3451, file: !411, line: 111, type: !6)
!3457 = !DILocalVariable(name: "length", scope: !3458, file: !411, line: 125, type: !46)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !411, line: 124, column: 5)
!3459 = distinct !DILexicalBlock(scope: !3451, file: !411, line: 113, column: 7)
!3460 = !DILocation(line: 0, scope: !3451)
!3461 = !DILocation(line: 0, scope: !3444, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 111, column: 24, scope: !3451)
!3463 = !DILocation(line: 37, column: 24, scope: !3444, inlinedAt: !3462)
!3464 = !DILocation(line: 113, column: 14, scope: !3459)
!3465 = !DILocation(line: 113, column: 7, scope: !3451)
!3466 = !DILocation(line: 116, column: 19, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !411, line: 116, column: 11)
!3468 = distinct !DILexicalBlock(scope: !3459, file: !411, line: 114, column: 5)
!3469 = !DILocation(line: 116, column: 11, scope: !3468)
!3470 = !DILocation(line: 120, column: 16, scope: !3467)
!3471 = !DILocation(line: 120, column: 9, scope: !3467)
!3472 = !DILocation(line: 125, column: 23, scope: !3458)
!3473 = !DILocation(line: 0, scope: !3458)
!3474 = !DILocation(line: 126, column: 18, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3458, file: !411, line: 126, column: 11)
!3476 = !DILocation(line: 126, column: 11, scope: !3458)
!3477 = !DILocation(line: 128, column: 39, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3475, file: !411, line: 127, column: 9)
!3479 = !DILocalVariable(name: "__dest", arg: 1, scope: !3480, file: !1113, line: 26, type: !2945)
!3480 = distinct !DISubprogram(name: "memcpy", scope: !1113, file: !1113, line: 26, type: !2943, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3481)
!3481 = !{!3479, !3482, !3483}
!3482 = !DILocalVariable(name: "__src", arg: 2, scope: !3480, file: !1113, line: 26, type: !638)
!3483 = !DILocalVariable(name: "__len", arg: 3, scope: !3480, file: !1113, line: 26, type: !46)
!3484 = !DILocation(line: 0, scope: !3480, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 128, column: 11, scope: !3478)
!3486 = !DILocation(line: 29, column: 10, scope: !3480, inlinedAt: !3485)
!3487 = !DILocation(line: 129, column: 11, scope: !3478)
!3488 = !DILocation(line: 133, column: 23, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !411, line: 133, column: 15)
!3490 = distinct !DILexicalBlock(scope: !3475, file: !411, line: 132, column: 9)
!3491 = !DILocation(line: 133, column: 15, scope: !3490)
!3492 = !DILocation(line: 138, column: 44, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3489, file: !411, line: 134, column: 13)
!3494 = !DILocation(line: 0, scope: !3480, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 138, column: 15, scope: !3493)
!3496 = !DILocation(line: 29, column: 10, scope: !3480, inlinedAt: !3495)
!3497 = !DILocation(line: 139, column: 15, scope: !3493)
!3498 = !DILocation(line: 139, column: 32, scope: !3493)
!3499 = !DILocation(line: 140, column: 13, scope: !3493)
!3500 = !DILocation(line: 0, scope: !3459)
!3501 = !DILocation(line: 145, column: 1, scope: !3451)
