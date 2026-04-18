; ModuleID = 'src/whoami.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Print the user name associated with the current effective user ID.\0ASame as id -un.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"whoami\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"cannot find name for user ID %ju\00", align 1
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), align 8, !dbg !122
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !127
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !132
@.str.21 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !134
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !170
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !140
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !166
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !168
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.49, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.50, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !175
@optind = external local_unnamed_addr global i32, align 4
@.str.1.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.49 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.50 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !192
@.str.58 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.59 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !198
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
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 8, !dbg !234
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !260
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !278
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !308
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !315
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !280
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !317
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !266
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !285
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !323
@exit_failure = dso_local global i32 1, align 4, !dbg !331
@.str.116 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.114 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.115 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !337
@.str.132 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !427 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !431, metadata !DIExpression()), !dbg !432
  %3 = icmp eq i32 %0, 0, !dbg !433
  br i1 %3, label %9, label %4, !dbg !435

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !436, !tbaa !438
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !436
  %7 = load i8*, i8** @program_name, align 8, !dbg !436, !tbaa !438
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !436
  br label %52, !dbg !436

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !442
  %11 = load i8*, i8** @program_name, align 8, !dbg !442, !tbaa !438
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !442
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !444
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !444, !tbaa !438
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !444
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !445
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !445
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !446
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !446
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !447, metadata !DIExpression()) #32, !dbg !466
  %18 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !468
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %18) #32, !dbg !468
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !452, metadata !DIExpression()) #32, !dbg !469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %18, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !469
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !461, metadata !DIExpression()) #32, !dbg !466
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !462, metadata !DIExpression()) #32, !dbg !466
  %19 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !470
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !462, metadata !DIExpression()) #32, !dbg !466
  br label %20, !dbg !471

20:                                               ; preds = %25, %9
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %22 = phi %struct.infomap* [ %26, %25 ], [ %19, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !462, metadata !DIExpression()) #32, !dbg !466
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !479
  call void @llvm.dbg.value(metadata i8* %21, metadata !478, metadata !DIExpression()) #32, !dbg !479
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %21) #33, !dbg !481
  %24 = icmp eq i32 %23, 0, !dbg !482
  br i1 %24, label %30, label %25, !dbg !471

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.infomap, %struct.infomap* %22, i64 1, !dbg !483
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !462, metadata !DIExpression()) #32, !dbg !466
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 0, i32 0, !dbg !484
  %28 = load i8*, i8** %27, align 8, !dbg !484, !tbaa !485
  %29 = icmp eq i8* %28, null, !dbg !487
  br i1 %29, label %30, label %20, !dbg !488, !llvm.loop !489

30:                                               ; preds = %25, %20
  %31 = phi %struct.infomap* [ %22, %20 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 0, i32 1, !dbg !491
  %33 = load i8*, i8** %32, align 8, !dbg !491, !tbaa !493
  %34 = icmp eq i8* %33, null, !dbg !494
  %35 = select i1 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %33, !dbg !495
  call void @llvm.dbg.value(metadata i8* %35, metadata !461, metadata !DIExpression()) #32, !dbg !466
  tail call void @emit_bug_reporting_address() #32, !dbg !496
  %36 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !497
  call void @llvm.dbg.value(metadata i8* %36, metadata !464, metadata !DIExpression()) #32, !dbg !466
  %37 = icmp eq i8* %36, null, !dbg !498
  br i1 %37, label %45, label %38, !dbg !500

38:                                               ; preds = %30
  %39 = tail call i32 @strncmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 noundef 3) #33, !dbg !501
  %40 = icmp eq i32 %39, 0, !dbg !501
  br i1 %40, label %45, label %41, !dbg !502

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0), i32 noundef 5) #32, !dbg !503
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !503, !tbaa !438
  %44 = tail call i32 @fputs_unlocked(i8* noundef %42, %struct._IO_FILE* noundef %43) #32, !dbg !503
  br label %45, !dbg !505

45:                                               ; preds = %30, %38, %41
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !506
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !478, metadata !DIExpression()) #32, !dbg !506
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !465, metadata !DIExpression()) #32, !dbg !466
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #32, !dbg !508
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %46, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !508
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #32, !dbg !509
  %49 = icmp eq i8* %35, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !509
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !509
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %48, i8* noundef %35, i8* noundef %50) #32, !dbg !509
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %18) #32, !dbg !510
  br label %52

52:                                               ; preds = %45, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !511
  unreachable, !dbg !511
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !512 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !517 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !42, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i8* %0, metadata !43, metadata !DIExpression()), !dbg !522
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !523, !tbaa !524
  %3 = icmp eq i32 %2, -1, !dbg !526
  br i1 %3, label %4, label %16, !dbg !527

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #32, !dbg !528
  call void @llvm.dbg.value(metadata i8* %5, metadata !44, metadata !DIExpression()), !dbg !529
  %6 = icmp eq i8* %5, null, !dbg !530
  br i1 %6, label %14, label %7, !dbg !531

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !532, !tbaa !533
  %9 = icmp eq i8 %8, 0, !dbg !532
  br i1 %9, label %14, label %10, !dbg !534

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !472, metadata !DIExpression()) #32, !dbg !535
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), metadata !478, metadata !DIExpression()) #32, !dbg !535
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #33, !dbg !537
  %12 = icmp eq i32 %11, 0, !dbg !538
  %13 = zext i1 %12 to i32, !dbg !534
  br label %14, !dbg !534

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !539, !tbaa !524
  br label %16, !dbg !540

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !541
  %18 = icmp eq i32 %17, 0, !dbg !541
  br i1 %18, label %22, label %19, !dbg !543

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !544, !tbaa !438
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !544
  br label %121, !dbg !546

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !47, metadata !DIExpression()), !dbg !522
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #33, !dbg !547
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !548
  call void @llvm.dbg.value(metadata i8* %24, metadata !49, metadata !DIExpression()), !dbg !522
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !549
  call void @llvm.dbg.value(metadata i8* %25, metadata !50, metadata !DIExpression()), !dbg !522
  %26 = icmp eq i8* %25, null, !dbg !550
  br i1 %26, label %53, label %27, !dbg !551

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !552
  br i1 %28, label %53, label %29, !dbg !553

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !51, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()), !dbg !554
  %30 = icmp ult i8* %24, %25, !dbg !555
  br i1 %30, label %31, label %53, !dbg !556

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !522
  %33 = load i16*, i16** %32, align 8, !tbaa !438
  br label %34, !dbg !556

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !51, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i64 %36, metadata !55, metadata !DIExpression()), !dbg !554
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !557
  call void @llvm.dbg.value(metadata i8* %37, metadata !51, metadata !DIExpression()), !dbg !554
  %38 = load i8, i8* %35, align 1, !dbg !557, !tbaa !533
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !557
  %41 = load i16, i16* %40, align 2, !dbg !557, !tbaa !558
  %42 = lshr i16 %41, 13, !dbg !560
  %43 = and i16 %42, 1, !dbg !560
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !561
  call void @llvm.dbg.value(metadata i64 %45, metadata !55, metadata !DIExpression()), !dbg !554
  %46 = icmp ult i8* %37, %25, !dbg !555
  %47 = icmp ult i64 %45, 2, !dbg !562
  %48 = select i1 %46, i1 %47, i1 false, !dbg !562
  br i1 %48, label %34, label %49, !dbg !556, !llvm.loop !563

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !564
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !566
  %52 = xor i1 %50, true, !dbg !566
  br label %53, !dbg !566

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !522
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i8* %54, metadata !50, metadata !DIExpression()), !dbg !522
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #33, !dbg !567
  call void @llvm.dbg.value(metadata i64 %56, metadata !56, metadata !DIExpression()), !dbg !522
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !568
  call void @llvm.dbg.value(metadata i8* %57, metadata !57, metadata !DIExpression()), !dbg !522
  br label %58, !dbg !569

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !522
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i8* %59, metadata !57, metadata !DIExpression()), !dbg !522
  %61 = load i8, i8* %59, align 1, !dbg !570, !tbaa !533
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !571

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !572
  %64 = load i8, i8* %63, align 1, !dbg !575, !tbaa !533
  %65 = icmp ne i8 %64, 45, !dbg !576
  %66 = select i1 %65, i1 %60, i1 false, !dbg !577
  br label %67, !dbg !577

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !47, metadata !DIExpression()), !dbg !522
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !578
  %70 = load i16*, i16** %69, align 8, !dbg !578, !tbaa !438
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !578
  %73 = load i16, i16* %72, align 2, !dbg !578, !tbaa !558
  %74 = and i16 %73, 8192, !dbg !578
  %75 = icmp eq i16 %74, 0, !dbg !578
  br i1 %75, label %89, label %76, !dbg !580

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !581
  br i1 %77, label %91, label %78, !dbg !584

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !585
  %80 = load i8, i8* %79, align 1, !dbg !585, !tbaa !533
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !585
  %83 = load i16, i16* %82, align 2, !dbg !585, !tbaa !558
  %84 = and i16 %83, 8192, !dbg !585
  %85 = icmp eq i16 %84, 0, !dbg !585
  br i1 %85, label %86, label %91, !dbg !586

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !587
  br i1 %88, label %89, label %91, !dbg !587

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !589
  call void @llvm.dbg.value(metadata i8* %90, metadata !57, metadata !DIExpression()), !dbg !522
  br label %58, !dbg !569, !llvm.loop !590

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !592
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !592, !tbaa !438
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !593
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !478, metadata !DIExpression()) #32, !dbg !593
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !595
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !597
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !599
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !601
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !603
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !605
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !607
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !609
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !472, metadata !DIExpression()) #32, !dbg !611
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !117, metadata !DIExpression()), !dbg !522
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i64 noundef 6) #33, !dbg !613
  %96 = icmp eq i32 %95, 0, !dbg !613
  br i1 %96, label %100, label %97, !dbg !615

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 noundef 9) #33, !dbg !616
  %99 = icmp eq i32 %98, 0, !dbg !616
  br i1 %99, label %100, label %103, !dbg !617

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !618
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !618
  br label %106, !dbg !620

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !621
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !621
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !438
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !623
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !438
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !624
  %111 = ptrtoint i8* %59 to i64, !dbg !625
  %112 = sub i64 %111, %92, !dbg !625
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !625, !tbaa !438
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !625
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !438
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !626
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !438
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !627
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !438
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !628
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !629
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
declare !dbg !630 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !634 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !638 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !644 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !649, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8** %1, metadata !650, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 -1, metadata !651, metadata !DIExpression()), !dbg !669
  %3 = load i8*, i8** %1, align 8, !dbg !670, !tbaa !438
  tail call void @set_program_name(i8* noundef %3) #32, !dbg !671
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #32, !dbg !672
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #32, !dbg !673
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !674
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !675
  %8 = load i8*, i8** @Version, align 8, !dbg !676, !tbaa !438
  %9 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0)) #32, !dbg !677
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %8, i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %9, i8* noundef null) #32, !dbg !678
  %10 = load i32, i32* @optind, align 4, !dbg !679, !tbaa !524
  %11 = icmp eq i32 %10, %0, !dbg !681
  br i1 %11, label %19, label %12, !dbg !682

12:                                               ; preds = %2
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #32, !dbg !683
  %14 = load i32, i32* @optind, align 4, !dbg !683, !tbaa !524
  %15 = sext i32 %14 to i64, !dbg !683
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !683
  %17 = load i8*, i8** %16, align 8, !dbg !683, !tbaa !438
  %18 = tail call i8* @quote(i8* noundef %17) #32, !dbg !683
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %13, i8* noundef %18) #32, !dbg !683
  tail call void @usage(i32 noundef 1) #36, !dbg !685
  unreachable, !dbg !685

19:                                               ; preds = %2
  %20 = tail call i32* @__errno_location() #35, !dbg !686
  store i32 0, i32* %20, align 4, !dbg !687, !tbaa !524
  %21 = tail call i32 @geteuid() #32, !dbg !688
  call void @llvm.dbg.value(metadata i32 %21, metadata !655, metadata !DIExpression()), !dbg !669
  %22 = icmp eq i32 %21, -1, !dbg !689
  br i1 %22, label %23, label %26, !dbg !690

23:                                               ; preds = %19
  %24 = load i32, i32* %20, align 4, !dbg !691, !tbaa !524
  %25 = icmp eq i32 %24, 0, !dbg !691
  br i1 %25, label %26, label %31, !dbg !692

26:                                               ; preds = %19, %23
  %27 = tail call %struct.passwd* @getpwuid(i32 noundef %21) #32, !dbg !693
  call void @llvm.dbg.value(metadata %struct.passwd* %27, metadata !656, metadata !DIExpression()), !dbg !669
  %28 = icmp eq %struct.passwd* %27, null, !dbg !694
  br i1 %28, label %29, label %35, !dbg !696

29:                                               ; preds = %26
  %30 = load i32, i32* %20, align 4, !dbg !697, !tbaa !524
  br label %31, !dbg !696

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %30, %29 ], [ %24, %23 ], !dbg !697
  %33 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #32, !dbg !697
  %34 = zext i32 %21 to i64, !dbg !697
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %32, i8* noundef %33, i64 noundef %34) #32, !dbg !697
  unreachable, !dbg !697

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i64 0, i32 0, !dbg !698
  %37 = load i8*, i8** %36, align 8, !dbg !698, !tbaa !699
  %38 = tail call i32 @puts(i8* noundef nonnull dereferenceable(1) %37), !dbg !701
  ret i32 0, !dbg !702
}

; Function Attrs: nounwind
declare !dbg !703 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !706 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !707 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !710 i32 @geteuid() local_unnamed_addr #2

declare !dbg !714 %struct.passwd* @getpwuid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !717 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !720 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !722, metadata !DIExpression()), !dbg !723
  store i8* %0, i8** @file_name, align 8, !dbg !724, !tbaa !438
  ret void, !dbg !725
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !726 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !730, metadata !DIExpression()), !dbg !731
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !732, !tbaa !733
  ret void, !dbg !735
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !736 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741, !tbaa !438
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !742
  %3 = icmp eq i32 %2, 0, !dbg !743
  br i1 %3, label %22, label %4, !dbg !744

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !745, !tbaa !733, !range !746
  %6 = icmp eq i8 %5, 0, !dbg !745
  br i1 %6, label %11, label %7, !dbg !747

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !748
  %9 = load i32, i32* %8, align 4, !dbg !748, !tbaa !524
  %10 = icmp eq i32 %9, 32, !dbg !749
  br i1 %10, label %22, label %11, !dbg !750

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !751
  call void @llvm.dbg.value(metadata i8* %12, metadata !738, metadata !DIExpression()), !dbg !752
  %13 = load i8*, i8** @file_name, align 8, !dbg !753, !tbaa !438
  %14 = icmp eq i8* %13, null, !dbg !753
  %15 = tail call i32* @__errno_location() #35, !dbg !755
  %16 = load i32, i32* %15, align 4, !dbg !755, !tbaa !524
  br i1 %14, label %19, label %17, !dbg !756

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !757
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.23, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !757
  br label %20, !dbg !757

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.24, i64 0, i64 0), i8* noundef %12) #32, !dbg !758
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !759, !tbaa !524
  tail call void @_exit(i32 noundef %21) #34, !dbg !760
  unreachable, !dbg !760

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !761, !tbaa !438
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !763
  %25 = icmp eq i32 %24, 0, !dbg !764
  br i1 %25, label %28, label %26, !dbg !765

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !766, !tbaa !524
  tail call void @_exit(i32 noundef %27) #34, !dbg !767
  unreachable, !dbg !767

28:                                               ; preds = %22
  ret void, !dbg !768
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !769 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !773, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i32 %1, metadata !774, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i8* %2, metadata !775, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !776, metadata !DIExpression()), !dbg !778
  tail call fastcc void @flush_stdout(), !dbg !779
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !780, !tbaa !438
  %7 = icmp eq void ()* %6, null, !dbg !780
  br i1 %7, label %9, label %8, !dbg !782

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !783
  br label %13, !dbg !783

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !784, !tbaa !438
  %11 = tail call i8* @getprogname() #33, !dbg !784
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* noundef %11) #32, !dbg !784
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !786
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !786
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !786
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !786, !tbaa.struct !787
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !786
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !786
  ret void, !dbg !788
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !789 {
  call void @llvm.dbg.value(metadata i32 1, metadata !791, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 1, metadata !793, metadata !DIExpression()) #32, !dbg !798
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !801
  %2 = icmp slt i32 %1, 0, !dbg !802
  br i1 %2, label %6, label %3, !dbg !803

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !804, !tbaa !438
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !804
  br label %6, !dbg !804

6:                                                ; preds = %3, %0
  ret void, !dbg !805
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !806 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !808, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i32 %1, metadata !809, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i8* %2, metadata !810, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !811, metadata !DIExpression()), !dbg !813
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !814, !tbaa !438
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !815
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !816, metadata !DIExpression()) #32, !dbg !859
  call void @llvm.dbg.value(metadata i8* %2, metadata !857, metadata !DIExpression()) #32, !dbg !859
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !861
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !861, !noalias !862
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !861
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !861
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !861, !noalias !862
  %11 = load i32, i32* @error_message_count, align 4, !dbg !866, !tbaa !524
  %12 = add i32 %11, 1, !dbg !866
  store i32 %12, i32* @error_message_count, align 4, !dbg !866, !tbaa !524
  %13 = icmp eq i32 %1, 0, !dbg !867
  br i1 %13, label %24, label %14, !dbg !869

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !870, metadata !DIExpression()) #32, !dbg !878
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !880
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !880
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !874, metadata !DIExpression()) #32, !dbg !881
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !882
  call void @llvm.dbg.value(metadata i8* %16, metadata !873, metadata !DIExpression()) #32, !dbg !878
  %17 = icmp eq i8* %16, null, !dbg !883
  br i1 %17, label %18, label %20, !dbg !885

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.27, i64 0, i64 0), i32 noundef 5) #32, !dbg !886
  call void @llvm.dbg.value(metadata i8* %19, metadata !873, metadata !DIExpression()) #32, !dbg !878
  br label %20, !dbg !887

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !878
  call void @llvm.dbg.value(metadata i8* %21, metadata !873, metadata !DIExpression()) #32, !dbg !878
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !888, !tbaa !438
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.28, i64 0, i64 0), i8* noundef %21) #32, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !889
  br label %24, !dbg !890

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !891, !tbaa !438
  call void @llvm.dbg.value(metadata i32 10, metadata !892, metadata !DIExpression()) #32, !dbg !899
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !898, metadata !DIExpression()) #32, !dbg !899
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !901
  %27 = load i8*, i8** %26, align 8, !dbg !901, !tbaa !902
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !901
  %29 = load i8*, i8** %28, align 8, !dbg !901, !tbaa !905
  %30 = icmp ult i8* %27, %29, !dbg !901
  br i1 %30, label %33, label %31, !dbg !901, !prof !906

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !901
  br label %35, !dbg !901

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !901
  store i8* %34, i8** %26, align 8, !dbg !901, !tbaa !902
  store i8 10, i8* %27, align 1, !dbg !901, !tbaa !533
  br label %35, !dbg !901

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !907, !tbaa !438
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !907
  %38 = icmp eq i32 %0, 0, !dbg !908
  br i1 %38, label %40, label %39, !dbg !910

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !911
  unreachable, !dbg !911

40:                                               ; preds = %35
  ret void, !dbg !912
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !913 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !917 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !920 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !924 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !928, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i32 %1, metadata !929, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i8* %2, metadata !930, metadata !DIExpression()), !dbg !932
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !933
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !933
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !931, metadata !DIExpression()), !dbg !934
  call void @llvm.va_start(i8* nonnull %6), !dbg !935
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !936
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !936, !tbaa.struct !787
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !936
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !936
  call void @llvm.va_end(i8* nonnull %6), !dbg !937
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !938
  ret void, !dbg !938
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !142 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %1, metadata !161, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8* %2, metadata !162, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %3, metadata !163, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8* %4, metadata !164, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !165, metadata !DIExpression()), !dbg !940
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !941, !tbaa !524
  %9 = icmp eq i32 %8, 0, !dbg !941
  br i1 %9, label %24, label %10, !dbg !943

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !944, !tbaa !524
  %12 = icmp eq i32 %11, %3, !dbg !947
  br i1 %12, label %13, label %23, !dbg !948

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !949, !tbaa !438
  %15 = icmp eq i8* %14, %2, !dbg !950
  br i1 %15, label %39, label %16, !dbg !951

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !952
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !953
  br i1 %19, label %20, label %23, !dbg !953

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !954
  %22 = icmp eq i32 %21, 0, !dbg !955
  br i1 %22, label %39, label %23, !dbg !956

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !957, !tbaa !438
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !958, !tbaa !524
  br label %24, !dbg !959

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !960
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !961, !tbaa !438
  %26 = icmp eq void ()* %25, null, !dbg !961
  br i1 %26, label %28, label %27, !dbg !963

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !964
  br label %32, !dbg !964

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !965, !tbaa !438
  %30 = tail call i8* @getprogname() #33, !dbg !965
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.31, i64 0, i64 0), i8* noundef %30) #32, !dbg !965
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !967, !tbaa !438
  %34 = icmp eq i8* %2, null, !dbg !967
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.32, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.33, i64 0, i64 0), !dbg !967
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !967
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !968
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !968
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !968
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !968, !tbaa.struct !787
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !968
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !968
  br label %39, !dbg !969

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !969
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !970 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !974, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata i32 %1, metadata !975, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata i8* %2, metadata !976, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata i32 %3, metadata !977, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata i8* %4, metadata !978, metadata !DIExpression()), !dbg !980
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !981
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !981
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !979, metadata !DIExpression()), !dbg !982
  call void @llvm.va_start(i8* nonnull %8), !dbg !983
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !984
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !984, !tbaa.struct !787
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !984
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !984
  call void @llvm.va_end(i8* nonnull %8), !dbg !985
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !986
  ret void, !dbg !986
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !987 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !990, !tbaa !438
  ret i8* %1, !dbg !991
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #12 !dbg !992 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !997, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8** %1, metadata !998, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8* %2, metadata !999, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8* %3, metadata !1000, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8* %4, metadata !1001, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1002, metadata !DIExpression()), !dbg !1023
  %9 = load i32, i32* @opterr, align 4, !dbg !1024, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %9, metadata !1003, metadata !DIExpression()), !dbg !1023
  store i32 0, i32* @opterr, align 4, !dbg !1025, !tbaa !524
  %10 = icmp eq i32 %0, 2, !dbg !1026
  br i1 %10, label %11, label %18, !dbg !1027

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !1028
  call void @llvm.dbg.value(metadata i32 %12, metadata !1004, metadata !DIExpression()), !dbg !1029
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1030

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #32, !dbg !1031
  br label %18, !dbg !1032

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1033
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #32, !dbg !1033
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1007, metadata !DIExpression()), !dbg !1034
  call void @llvm.va_start(i8* nonnull %15), !dbg !1035
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1036, !tbaa !438
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #32, !dbg !1037
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1037, !tbaa.struct !787
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #32, !dbg !1037
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #32, !dbg !1037
  call void @exit(i32 noundef 0) #34, !dbg !1038
  unreachable, !dbg !1038

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !1039, !tbaa !524
  store i32 0, i32* @optind, align 4, !dbg !1040, !tbaa !524
  ret void, !dbg !1041
}

; Function Attrs: nounwind
declare !dbg !1042 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #12 !dbg !1048 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1052, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8** %1, metadata !1053, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %2, metadata !1054, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %3, metadata !1055, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %4, metadata !1056, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i1 %5, metadata !1057, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1067
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1058, metadata !DIExpression()), !dbg !1067
  %10 = load i32, i32* @opterr, align 4, !dbg !1068, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %10, metadata !1059, metadata !DIExpression()), !dbg !1067
  store i32 1, i32* @opterr, align 4, !dbg !1069, !tbaa !524
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), !dbg !1070
  call void @llvm.dbg.value(metadata i8* %11, metadata !1060, metadata !DIExpression()), !dbg !1067
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %12, metadata !1061, metadata !DIExpression()), !dbg !1067
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !1072

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1073
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1073
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !1062, metadata !DIExpression()), !dbg !1074
  call void @llvm.va_start(i8* nonnull %14), !dbg !1075
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1076, !tbaa !438
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !1077
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #32, !dbg !1077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !1077, !tbaa.struct !787
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #32, !dbg !1077
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #32, !dbg !1077
  call void @exit(i32 noundef 0) #34, !dbg !1078
  unreachable, !dbg !1078

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !1079, !tbaa !524
  br label %19, !dbg !1080

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #32, !dbg !1081
  br label %21, !dbg !1082

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !1082, !tbaa !524
  ret void, !dbg !1083
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !1084 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1086, metadata !DIExpression()), !dbg !1089
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %2, metadata !1087, metadata !DIExpression()), !dbg !1089
  %3 = icmp eq i8* %2, null, !dbg !1091
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1091
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1091
  call void @llvm.dbg.value(metadata i8* %5, metadata !1088, metadata !DIExpression()), !dbg !1089
  %6 = ptrtoint i8* %5 to i64, !dbg !1092
  %7 = ptrtoint i8* %0 to i64, !dbg !1092
  %8 = sub i64 %6, %7, !dbg !1092
  %9 = icmp sgt i64 %8, 6, !dbg !1094
  br i1 %9, label %10, label %19, !dbg !1095

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %11, metadata !1097, metadata !DIExpression()) #32, !dbg !1104
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), metadata !1102, metadata !DIExpression()) #32, !dbg !1104
  call void @llvm.dbg.value(metadata i64 7, metadata !1103, metadata !DIExpression()) #32, !dbg !1104
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i64 7) #32, !dbg !1106
  %13 = icmp eq i32 %12, 0, !dbg !1107
  br i1 %13, label %14, label %19, !dbg !1108

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1086, metadata !DIExpression()), !dbg !1089
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.59, i64 0, i64 0), i64 noundef 3) #33, !dbg !1109
  %16 = icmp eq i32 %15, 0, !dbg !1112
  %17 = select i1 %16, i64 3, i64 0, !dbg !1113
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1113
  br label %19, !dbg !1113

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1089
  call void @llvm.dbg.value(metadata i8* %21, metadata !1088, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8* %20, metadata !1086, metadata !DIExpression()), !dbg !1089
  store i8* %20, i8** @program_name, align 8, !dbg !1114, !tbaa !438
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1115, !tbaa !438
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1116, !tbaa !438
  ret void, !dbg !1117
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !200 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !207, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %1, metadata !208, metadata !DIExpression()), !dbg !1118
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1119
  call void @llvm.dbg.value(metadata i8* %5, metadata !209, metadata !DIExpression()), !dbg !1118
  %6 = icmp eq i8* %5, %0, !dbg !1120
  br i1 %6, label %7, label %17, !dbg !1122

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1123
  %10 = bitcast i64* %4 to i8*, !dbg !1124
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1124
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !215, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1126, metadata !DIExpression()) #32, !dbg !1133
  call void @llvm.dbg.value(metadata i8* %10, metadata !1135, metadata !DIExpression()) #32, !dbg !1143
  call void @llvm.dbg.value(metadata i32 0, metadata !1141, metadata !DIExpression()) #32, !dbg !1143
  call void @llvm.dbg.value(metadata i64 8, metadata !1142, metadata !DIExpression()) #32, !dbg !1143
  store i64 0, i64* %4, align 8, !dbg !1145
  call void @llvm.dbg.value(metadata i32* %3, metadata !210, metadata !DIExpression(DW_OP_deref)), !dbg !1118
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1146
  %12 = icmp eq i64 %11, 2, !dbg !1148
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !210, metadata !DIExpression()), !dbg !1118
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1149
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1150
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1150
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1118
  ret i8* %18, !dbg !1150
}

; Function Attrs: nounwind
declare !dbg !1151 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1157 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1162, metadata !DIExpression()), !dbg !1165
  %2 = tail call i32* @__errno_location() #35, !dbg !1166
  %3 = load i32, i32* %2, align 4, !dbg !1166, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %3, metadata !1163, metadata !DIExpression()), !dbg !1165
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1167
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1167
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1167
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1168
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1164, metadata !DIExpression()), !dbg !1165
  store i32 %3, i32* %2, align 4, !dbg !1169, !tbaa !524
  ret %struct.quoting_options* %8, !dbg !1170
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1171 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1177, metadata !DIExpression()), !dbg !1178
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1179
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1179
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1180
  %5 = load i32, i32* %4, align 8, !dbg !1180, !tbaa !1181
  ret i32 %5, !dbg !1183
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1184 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1188, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 %1, metadata !1189, metadata !DIExpression()), !dbg !1190
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1191
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1191
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1192
  store i32 %1, i32* %5, align 8, !dbg !1193, !tbaa !1181
  ret void, !dbg !1194
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1195 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1199, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8 %1, metadata !1200, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %2, metadata !1201, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8 %1, metadata !1202, metadata !DIExpression()), !dbg !1207
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1208
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1208
  %6 = lshr i8 %1, 5, !dbg !1209
  %7 = zext i8 %6 to i64, !dbg !1209
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1210
  call void @llvm.dbg.value(metadata i32* %8, metadata !1203, metadata !DIExpression()), !dbg !1207
  %9 = and i8 %1, 31, !dbg !1211
  %10 = zext i8 %9 to i32, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %10, metadata !1205, metadata !DIExpression()), !dbg !1207
  %11 = load i32, i32* %8, align 4, !dbg !1212, !tbaa !524
  %12 = lshr i32 %11, %10, !dbg !1213
  %13 = and i32 %12, 1, !dbg !1214
  call void @llvm.dbg.value(metadata i32 %13, metadata !1206, metadata !DIExpression()), !dbg !1207
  %14 = and i32 %2, 1, !dbg !1215
  %15 = xor i32 %13, %14, !dbg !1216
  %16 = shl i32 %15, %10, !dbg !1217
  %17 = xor i32 %16, %11, !dbg !1218
  store i32 %17, i32* %8, align 4, !dbg !1218, !tbaa !524
  ret i32 %13, !dbg !1219
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1220 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1224, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 %1, metadata !1225, metadata !DIExpression()), !dbg !1227
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1228
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1230
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1224, metadata !DIExpression()), !dbg !1227
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1231
  %6 = load i32, i32* %5, align 4, !dbg !1231, !tbaa !1232
  call void @llvm.dbg.value(metadata i32 %6, metadata !1226, metadata !DIExpression()), !dbg !1227
  store i32 %1, i32* %5, align 4, !dbg !1233, !tbaa !1232
  ret i32 %6, !dbg !1234
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1235 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1239, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %1, metadata !1240, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8* %2, metadata !1241, metadata !DIExpression()), !dbg !1242
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1243
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1239, metadata !DIExpression()), !dbg !1242
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1246
  store i32 10, i32* %6, align 8, !dbg !1247, !tbaa !1181
  %7 = icmp ne i8* %1, null, !dbg !1248
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1250
  br i1 %9, label %11, label %10, !dbg !1250

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1251
  unreachable, !dbg !1251

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1252
  store i8* %1, i8** %12, align 8, !dbg !1253, !tbaa !1254
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1255
  store i8* %2, i8** %13, align 8, !dbg !1256, !tbaa !1257
  ret void, !dbg !1258
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1259 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1263, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %1, metadata !1264, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8* %2, metadata !1265, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %3, metadata !1266, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1267, metadata !DIExpression()), !dbg !1271
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1272
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1272
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1268, metadata !DIExpression()), !dbg !1271
  %8 = tail call i32* @__errno_location() #35, !dbg !1273
  %9 = load i32, i32* %8, align 4, !dbg !1273, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %9, metadata !1269, metadata !DIExpression()), !dbg !1271
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1274
  %11 = load i32, i32* %10, align 8, !dbg !1274, !tbaa !1181
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1275
  %13 = load i32, i32* %12, align 4, !dbg !1275, !tbaa !1232
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1276
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1277
  %16 = load i8*, i8** %15, align 8, !dbg !1277, !tbaa !1254
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1278
  %18 = load i8*, i8** %17, align 8, !dbg !1278, !tbaa !1257
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %19, metadata !1270, metadata !DIExpression()), !dbg !1271
  store i32 %9, i32* %8, align 4, !dbg !1280, !tbaa !524
  ret i64 %19, !dbg !1281
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1282 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1288, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %1, metadata !1289, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %2, metadata !1290, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %3, metadata !1291, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %4, metadata !1292, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %5, metadata !1293, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32* %6, metadata !1294, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %7, metadata !1295, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %8, metadata !1296, metadata !DIExpression()), !dbg !1350
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1351
  %18 = icmp eq i64 %17, 1, !dbg !1352
  call void @llvm.dbg.value(metadata i1 %18, metadata !1297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1350
  call void @llvm.dbg.value(metadata i64 0, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 0, metadata !1299, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* null, metadata !1300, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 0, metadata !1301, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 0, metadata !1302, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %5, metadata !1303, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1350
  call void @llvm.dbg.value(metadata i8 0, metadata !1304, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 1, metadata !1305, metadata !DIExpression()), !dbg !1350
  %19 = and i32 %5, 2, !dbg !1353
  %20 = icmp ne i32 %19, 0, !dbg !1353
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
  br label %36, !dbg !1353

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1354
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1355
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1356
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1289, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1305, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1304, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1303, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1302, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %43, metadata !1301, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %42, metadata !1300, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %41, metadata !1299, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 0, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %40, metadata !1291, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %39, metadata !1296, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %38, metadata !1295, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %37, metadata !1292, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.label(metadata !1343), !dbg !1357
  call void @llvm.dbg.value(metadata i8 0, metadata !1306, metadata !DIExpression()), !dbg !1350
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
  ], !dbg !1358

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1303, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 5, metadata !1292, metadata !DIExpression()), !dbg !1350
  br label %111, !dbg !1359

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1303, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 5, metadata !1292, metadata !DIExpression()), !dbg !1350
  br i1 %45, label %111, label %51, !dbg !1359

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1360
  br i1 %52, label %111, label %53, !dbg !1364

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1360, !tbaa !533
  br label %111, !dbg !1360

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), metadata !291, metadata !DIExpression()) #32, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %37, metadata !292, metadata !DIExpression()) #32, !dbg !1365
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 noundef 5) #32, !dbg !1369
  call void @llvm.dbg.value(metadata i8* %55, metadata !293, metadata !DIExpression()) #32, !dbg !1365
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), !dbg !1370
  br i1 %56, label %57, label %66, !dbg !1372

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1373
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1374
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !295, metadata !DIExpression()) #32, !dbg !1375
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1376, metadata !DIExpression()) #32, !dbg !1382
  call void @llvm.dbg.value(metadata i8* %23, metadata !1384, metadata !DIExpression()) #32, !dbg !1389
  call void @llvm.dbg.value(metadata i32 0, metadata !1387, metadata !DIExpression()) #32, !dbg !1389
  call void @llvm.dbg.value(metadata i64 8, metadata !1388, metadata !DIExpression()) #32, !dbg !1389
  store i64 0, i64* %13, align 8, !dbg !1391
  call void @llvm.dbg.value(metadata i32* %12, metadata !294, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1365
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1392
  %59 = icmp eq i64 %58, 3, !dbg !1394
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !294, metadata !DIExpression()) #32, !dbg !1365
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1395
  %63 = icmp eq i32 %37, 9, !dbg !1395
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !1395
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1396
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1396
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1365
  call void @llvm.dbg.value(metadata i8* %67, metadata !1295, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), metadata !291, metadata !DIExpression()) #32, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %37, metadata !292, metadata !DIExpression()) #32, !dbg !1397
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 noundef 5) #32, !dbg !1399
  call void @llvm.dbg.value(metadata i8* %68, metadata !293, metadata !DIExpression()) #32, !dbg !1397
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !1400
  br i1 %69, label %70, label %79, !dbg !1401

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1402
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1403
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !295, metadata !DIExpression()) #32, !dbg !1404
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1376, metadata !DIExpression()) #32, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %26, metadata !1384, metadata !DIExpression()) #32, !dbg !1407
  call void @llvm.dbg.value(metadata i32 0, metadata !1387, metadata !DIExpression()) #32, !dbg !1407
  call void @llvm.dbg.value(metadata i64 8, metadata !1388, metadata !DIExpression()) #32, !dbg !1407
  store i64 0, i64* %11, align 8, !dbg !1409
  call void @llvm.dbg.value(metadata i32* %10, metadata !294, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1397
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1410
  %72 = icmp eq i64 %71, 3, !dbg !1411
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !294, metadata !DIExpression()) #32, !dbg !1397
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1412
  %76 = icmp eq i32 %37, 9, !dbg !1412
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !1412
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1412
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1413
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1413
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1296, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %80, metadata !1295, metadata !DIExpression()), !dbg !1350
  br i1 %45, label %97, label %82, !dbg !1414

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1307, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 0, metadata !1298, metadata !DIExpression()), !dbg !1350
  %83 = load i8, i8* %80, align 1, !dbg !1416, !tbaa !533
  %84 = icmp eq i8 %83, 0, !dbg !1418
  br i1 %84, label %97, label %85, !dbg !1418

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1307, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %88, metadata !1298, metadata !DIExpression()), !dbg !1350
  %89 = icmp ult i64 %88, %48, !dbg !1419
  br i1 %89, label %90, label %92, !dbg !1422

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1419
  store i8 %86, i8* %91, align 1, !dbg !1419, !tbaa !533
  br label %92, !dbg !1419

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %93, metadata !1298, metadata !DIExpression()), !dbg !1350
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1423
  call void @llvm.dbg.value(metadata i8* %94, metadata !1307, metadata !DIExpression()), !dbg !1415
  %95 = load i8, i8* %94, align 1, !dbg !1416, !tbaa !533
  %96 = icmp eq i8 %95, 0, !dbg !1418
  br i1 %96, label %97, label %85, !dbg !1418, !llvm.loop !1424

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1426
  call void @llvm.dbg.value(metadata i64 %98, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 1, metadata !1302, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %81, metadata !1300, metadata !DIExpression()), !dbg !1350
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %99, metadata !1301, metadata !DIExpression()), !dbg !1350
  br label %111, !dbg !1428

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1302, metadata !DIExpression()), !dbg !1350
  br label %102, !dbg !1429

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1303, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1302, metadata !DIExpression()), !dbg !1350
  br i1 %45, label %102, label %105, !dbg !1430

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1303, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1302, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 2, metadata !1292, metadata !DIExpression()), !dbg !1350
  br label %111, !dbg !1431

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1303, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1302, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 2, metadata !1292, metadata !DIExpression()), !dbg !1350
  br i1 %45, label %111, label %105, !dbg !1431

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1432
  br i1 %107, label %111, label %108, !dbg !1436

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1432, !tbaa !533
  br label %111, !dbg !1432

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1303, metadata !DIExpression()), !dbg !1350
  br label %111, !dbg !1437

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1438
  unreachable, !dbg !1438

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1426
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %102 ], !dbg !1350
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1350
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1303, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1302, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %117, metadata !1301, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %116, metadata !1300, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %115, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %114, metadata !1296, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %113, metadata !1295, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %112, metadata !1292, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 0, metadata !1312, metadata !DIExpression()), !dbg !1439
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
  br label %132, !dbg !1440

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1426
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1354
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1439
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1289, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %139, metadata !1312, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1305, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1304, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %135, metadata !1299, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %134, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %133, metadata !1291, metadata !DIExpression()), !dbg !1350
  %141 = icmp eq i64 %133, -1, !dbg !1441
  br i1 %141, label %142, label %146, !dbg !1442

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1443
  %144 = load i8, i8* %143, align 1, !dbg !1443, !tbaa !533
  %145 = icmp eq i8 %144, 0, !dbg !1444
  br i1 %145, label %596, label %148, !dbg !1445

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1446
  br i1 %147, label %596, label %148, !dbg !1445

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1314, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 0, metadata !1317, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 0, metadata !1318, metadata !DIExpression()), !dbg !1447
  br i1 %123, label %149, label %163, !dbg !1448

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1450
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1451
  br i1 %151, label %152, label %154, !dbg !1451

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %153, metadata !1291, metadata !DIExpression()), !dbg !1350
  br label %154, !dbg !1453

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1453
  call void @llvm.dbg.value(metadata i64 %155, metadata !1291, metadata !DIExpression()), !dbg !1350
  %156 = icmp ugt i64 %150, %155, !dbg !1454
  br i1 %156, label %163, label %157, !dbg !1455

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1456
  call void @llvm.dbg.value(metadata i8* %158, metadata !1457, metadata !DIExpression()) #32, !dbg !1462
  call void @llvm.dbg.value(metadata i8* %116, metadata !1460, metadata !DIExpression()) #32, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %117, metadata !1461, metadata !DIExpression()) #32, !dbg !1462
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1464
  %160 = icmp ne i32 %159, 0, !dbg !1465
  %161 = or i1 %160, %125, !dbg !1466
  %162 = xor i1 %160, true, !dbg !1466
  br i1 %161, label %163, label %647, !dbg !1466

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1314, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %164, metadata !1291, metadata !DIExpression()), !dbg !1350
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1467
  %167 = load i8, i8* %166, align 1, !dbg !1467, !tbaa !533
  call void @llvm.dbg.value(metadata i8 %167, metadata !1319, metadata !DIExpression()), !dbg !1447
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
  ], !dbg !1468

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1469

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1470

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1317, metadata !DIExpression()), !dbg !1447
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1474
  br i1 %171, label %188, label %172, !dbg !1474

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1476
  br i1 %173, label %174, label %176, !dbg !1480

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1476
  store i8 39, i8* %175, align 1, !dbg !1476, !tbaa !533
  br label %176, !dbg !1476

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %177, metadata !1298, metadata !DIExpression()), !dbg !1350
  %178 = icmp ult i64 %177, %140, !dbg !1481
  br i1 %178, label %179, label %181, !dbg !1484

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1481
  store i8 36, i8* %180, align 1, !dbg !1481, !tbaa !533
  br label %181, !dbg !1481

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %182, metadata !1298, metadata !DIExpression()), !dbg !1350
  %183 = icmp ult i64 %182, %140, !dbg !1485
  br i1 %183, label %184, label %186, !dbg !1488

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1485
  store i8 39, i8* %185, align 1, !dbg !1485, !tbaa !533
  br label %186, !dbg !1485

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %187, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 1, metadata !1306, metadata !DIExpression()), !dbg !1350
  br label %188, !dbg !1489

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1350
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %189, metadata !1298, metadata !DIExpression()), !dbg !1350
  %191 = icmp ult i64 %189, %140, !dbg !1490
  br i1 %191, label %192, label %194, !dbg !1493

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1490
  store i8 92, i8* %193, align 1, !dbg !1490, !tbaa !533
  br label %194, !dbg !1490

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %195, metadata !1298, metadata !DIExpression()), !dbg !1350
  br i1 %120, label %196, label %499, !dbg !1494

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1496
  %198 = icmp ult i64 %197, %164, !dbg !1497
  br i1 %198, label %199, label %456, !dbg !1498

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1499
  %201 = load i8, i8* %200, align 1, !dbg !1499, !tbaa !533
  %202 = add i8 %201, -48, !dbg !1500
  %203 = icmp ult i8 %202, 10, !dbg !1500
  br i1 %203, label %204, label %456, !dbg !1500

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1501
  br i1 %205, label %206, label %208, !dbg !1505

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1501
  store i8 48, i8* %207, align 1, !dbg !1501, !tbaa !533
  br label %208, !dbg !1501

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %209, metadata !1298, metadata !DIExpression()), !dbg !1350
  %210 = icmp ult i64 %209, %140, !dbg !1506
  br i1 %210, label %211, label %213, !dbg !1509

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1506
  store i8 48, i8* %212, align 1, !dbg !1506, !tbaa !533
  br label %213, !dbg !1506

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %214, metadata !1298, metadata !DIExpression()), !dbg !1350
  br label %456, !dbg !1510

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1511

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1512

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1513

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1515

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1517
  %221 = icmp ult i64 %220, %164, !dbg !1518
  br i1 %221, label %222, label %456, !dbg !1519

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1520
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1521
  %225 = load i8, i8* %224, align 1, !dbg !1521, !tbaa !533
  %226 = icmp eq i8 %225, 63, !dbg !1522
  br i1 %226, label %227, label %456, !dbg !1523

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1524
  %229 = load i8, i8* %228, align 1, !dbg !1524, !tbaa !533
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
  ], !dbg !1525

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1526

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1319, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %220, metadata !1312, metadata !DIExpression()), !dbg !1439
  %232 = icmp ult i64 %134, %140, !dbg !1528
  br i1 %232, label %233, label %235, !dbg !1531

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1528
  store i8 63, i8* %234, align 1, !dbg !1528, !tbaa !533
  br label %235, !dbg !1528

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %236, metadata !1298, metadata !DIExpression()), !dbg !1350
  %237 = icmp ult i64 %236, %140, !dbg !1532
  br i1 %237, label %238, label %240, !dbg !1535

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1532
  store i8 34, i8* %239, align 1, !dbg !1532, !tbaa !533
  br label %240, !dbg !1532

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %241, metadata !1298, metadata !DIExpression()), !dbg !1350
  %242 = icmp ult i64 %241, %140, !dbg !1536
  br i1 %242, label %243, label %245, !dbg !1539

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1536
  store i8 34, i8* %244, align 1, !dbg !1536, !tbaa !533
  br label %245, !dbg !1536

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %246, metadata !1298, metadata !DIExpression()), !dbg !1350
  %247 = icmp ult i64 %246, %140, !dbg !1540
  br i1 %247, label %248, label %250, !dbg !1543

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1540
  store i8 63, i8* %249, align 1, !dbg !1540, !tbaa !533
  br label %250, !dbg !1540

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %251, metadata !1298, metadata !DIExpression()), !dbg !1350
  br label %456, !dbg !1544

252:                                              ; preds = %163
  br label %263, !dbg !1545

253:                                              ; preds = %163
  br label %263, !dbg !1546

254:                                              ; preds = %163
  br label %261, !dbg !1547

255:                                              ; preds = %163
  br label %261, !dbg !1548

256:                                              ; preds = %163
  br label %263, !dbg !1549

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1550

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1551

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1554

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1556

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1557
  call void @llvm.dbg.label(metadata !1344), !dbg !1558
  br i1 %128, label %263, label %638, !dbg !1559

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1557
  call void @llvm.dbg.label(metadata !1346), !dbg !1561
  br i1 %118, label %510, label %467, !dbg !1562

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1563

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1564, !tbaa !533
  %268 = icmp eq i8 %267, 0, !dbg !1566
  br i1 %268, label %269, label %456, !dbg !1567

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1568
  br i1 %270, label %271, label %456, !dbg !1570

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1318, metadata !DIExpression()), !dbg !1447
  br label %272, !dbg !1571

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1318, metadata !DIExpression()), !dbg !1447
  br i1 %126, label %274, label %456, !dbg !1572

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1574

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1304, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 1, metadata !1318, metadata !DIExpression()), !dbg !1447
  br i1 %126, label %276, label %456, !dbg !1575

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1576

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1579
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1581
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1581
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %282, metadata !1289, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %281, metadata !1299, metadata !DIExpression()), !dbg !1350
  %283 = icmp ult i64 %134, %282, !dbg !1582
  br i1 %283, label %284, label %286, !dbg !1585

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1582
  store i8 39, i8* %285, align 1, !dbg !1582, !tbaa !533
  br label %286, !dbg !1582

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %287, metadata !1298, metadata !DIExpression()), !dbg !1350
  %288 = icmp ult i64 %287, %282, !dbg !1586
  br i1 %288, label %289, label %291, !dbg !1589

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1586
  store i8 92, i8* %290, align 1, !dbg !1586, !tbaa !533
  br label %291, !dbg !1586

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %292, metadata !1298, metadata !DIExpression()), !dbg !1350
  %293 = icmp ult i64 %292, %282, !dbg !1590
  br i1 %293, label %294, label %296, !dbg !1593

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1590
  store i8 39, i8* %295, align 1, !dbg !1590, !tbaa !533
  br label %296, !dbg !1590

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1593
  call void @llvm.dbg.value(metadata i64 %297, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 0, metadata !1306, metadata !DIExpression()), !dbg !1350
  br label %456, !dbg !1594

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1595

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1320, metadata !DIExpression()), !dbg !1596
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1597
  %301 = load i16*, i16** %300, align 8, !dbg !1597, !tbaa !438
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1597
  %304 = load i16, i16* %303, align 2, !dbg !1597, !tbaa !558
  %305 = and i16 %304, 16384, !dbg !1597
  %306 = icmp ne i16 %305, 0, !dbg !1599
  call void @llvm.dbg.value(metadata i8 poison, metadata !1323, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %349, metadata !1320, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %312, metadata !1291, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i1 %350, metadata !1318, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1447
  br label %352, !dbg !1600

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1601
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1324, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1376, metadata !DIExpression()) #32, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %32, metadata !1384, metadata !DIExpression()) #32, !dbg !1605
  call void @llvm.dbg.value(metadata i32 0, metadata !1387, metadata !DIExpression()) #32, !dbg !1605
  call void @llvm.dbg.value(metadata i64 8, metadata !1388, metadata !DIExpression()) #32, !dbg !1605
  store i64 0, i64* %14, align 8, !dbg !1607
  call void @llvm.dbg.value(metadata i64 0, metadata !1320, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i8 1, metadata !1323, metadata !DIExpression()), !dbg !1596
  %308 = icmp eq i64 %164, -1, !dbg !1608
  br i1 %308, label %309, label %311, !dbg !1610

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %310, metadata !1291, metadata !DIExpression()), !dbg !1350
  br label %311, !dbg !1612

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1447
  call void @llvm.dbg.value(metadata i64 %312, metadata !1291, metadata !DIExpression()), !dbg !1350
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1613
  %313 = sub i64 %312, %139, !dbg !1614
  call void @llvm.dbg.value(metadata i32* %16, metadata !1327, metadata !DIExpression(DW_OP_deref)), !dbg !1615
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %314, metadata !1331, metadata !DIExpression()), !dbg !1615
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1617

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1320, metadata !DIExpression()), !dbg !1596
  %316 = icmp ugt i64 %312, %139, !dbg !1618
  br i1 %316, label %319, label %317, !dbg !1620

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1323, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 0, metadata !1320, metadata !DIExpression()), !dbg !1596
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1621
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %349, metadata !1320, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %312, metadata !1291, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i1 %350, metadata !1318, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1447
  br label %352, !dbg !1600

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1323, metadata !DIExpression()), !dbg !1596
  br label %346, !dbg !1623

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1320, metadata !DIExpression()), !dbg !1596
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1625
  %323 = load i8, i8* %322, align 1, !dbg !1625, !tbaa !533
  %324 = icmp eq i8 %323, 0, !dbg !1620
  br i1 %324, label %348, label %325, !dbg !1626

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %326, metadata !1320, metadata !DIExpression()), !dbg !1596
  %327 = add i64 %326, %139, !dbg !1628
  %328 = icmp eq i64 %326, %313, !dbg !1618
  br i1 %328, label %348, label %319, !dbg !1620, !llvm.loop !1629

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1630
  call void @llvm.dbg.value(metadata i64 1, metadata !1332, metadata !DIExpression()), !dbg !1631
  br i1 %331, label %332, label %340, !dbg !1630

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1332, metadata !DIExpression()), !dbg !1631
  %334 = add i64 %333, %139, !dbg !1632
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1634
  %336 = load i8, i8* %335, align 1, !dbg !1634, !tbaa !533
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1635

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %338, metadata !1332, metadata !DIExpression()), !dbg !1631
  %339 = icmp eq i64 %338, %314, !dbg !1637
  br i1 %339, label %340, label %332, !dbg !1638, !llvm.loop !1639

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1641, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %341, metadata !1327, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i32 %341, metadata !1643, metadata !DIExpression()) #32, !dbg !1651
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1653
  %343 = icmp ne i32 %342, 0, !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1323, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %314, metadata !1320, metadata !DIExpression()), !dbg !1596
  br label %348, !dbg !1655

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1323, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 0, metadata !1320, metadata !DIExpression()), !dbg !1596
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1621
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1622
  call void @llvm.dbg.label(metadata !1349), !dbg !1656
  %345 = select i1 %118, i32 4, i32 2, !dbg !1657
  br label %643, !dbg !1657

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1323, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 0, metadata !1320, metadata !DIExpression()), !dbg !1596
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1621
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %349, metadata !1320, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %312, metadata !1291, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i1 %350, metadata !1318, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1447
  br label %352, !dbg !1600

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1323, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 0, metadata !1320, metadata !DIExpression()), !dbg !1596
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1621
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %349, metadata !1320, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %312, metadata !1291, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i1 %350, metadata !1318, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1447
  %351 = icmp ugt i64 %349, 1, !dbg !1659
  br i1 %351, label %357, label %352, !dbg !1600

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1660
  br i1 %356, label %456, label %357, !dbg !1660

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %361, metadata !1340, metadata !DIExpression()), !dbg !1662
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1663

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1350
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1439
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1664
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1447
  call void @llvm.dbg.value(metadata i8 %369, metadata !1319, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 %368, metadata !1317, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1314, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %366, metadata !1312, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %364, metadata !1298, metadata !DIExpression()), !dbg !1350
  br i1 %362, label %414, label %370, !dbg !1665

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1670

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1317, metadata !DIExpression()), !dbg !1447
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1673
  br i1 %372, label %389, label %373, !dbg !1673

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1675
  br i1 %374, label %375, label %377, !dbg !1679

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1675
  store i8 39, i8* %376, align 1, !dbg !1675, !tbaa !533
  br label %377, !dbg !1675

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %378, metadata !1298, metadata !DIExpression()), !dbg !1350
  %379 = icmp ult i64 %378, %140, !dbg !1680
  br i1 %379, label %380, label %382, !dbg !1683

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1680
  store i8 36, i8* %381, align 1, !dbg !1680, !tbaa !533
  br label %382, !dbg !1680

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %383, metadata !1298, metadata !DIExpression()), !dbg !1350
  %384 = icmp ult i64 %383, %140, !dbg !1684
  br i1 %384, label %385, label %387, !dbg !1687

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1684
  store i8 39, i8* %386, align 1, !dbg !1684, !tbaa !533
  br label %387, !dbg !1684

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %388, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 1, metadata !1306, metadata !DIExpression()), !dbg !1350
  br label %389, !dbg !1688

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1350
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %390, metadata !1298, metadata !DIExpression()), !dbg !1350
  %392 = icmp ult i64 %390, %140, !dbg !1689
  br i1 %392, label %393, label %395, !dbg !1692

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1689
  store i8 92, i8* %394, align 1, !dbg !1689, !tbaa !533
  br label %395, !dbg !1689

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %396, metadata !1298, metadata !DIExpression()), !dbg !1350
  %397 = icmp ult i64 %396, %140, !dbg !1693
  br i1 %397, label %398, label %402, !dbg !1696

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1693
  %400 = or i8 %399, 48, !dbg !1693
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1693
  store i8 %400, i8* %401, align 1, !dbg !1693, !tbaa !533
  br label %402, !dbg !1693

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %403, metadata !1298, metadata !DIExpression()), !dbg !1350
  %404 = icmp ult i64 %403, %140, !dbg !1697
  br i1 %404, label %405, label %410, !dbg !1700

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1697
  %407 = and i8 %406, 7, !dbg !1697
  %408 = or i8 %407, 48, !dbg !1697
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1697
  store i8 %408, i8* %409, align 1, !dbg !1697, !tbaa !533
  br label %410, !dbg !1697

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %411, metadata !1298, metadata !DIExpression()), !dbg !1350
  %412 = and i8 %369, 7, !dbg !1701
  %413 = or i8 %412, 48, !dbg !1702
  call void @llvm.dbg.value(metadata i8 %413, metadata !1319, metadata !DIExpression()), !dbg !1447
  br label %421, !dbg !1703

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1704

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1705
  br i1 %416, label %417, label %419, !dbg !1710

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1705
  store i8 92, i8* %418, align 1, !dbg !1705, !tbaa !533
  br label %419, !dbg !1705

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %420, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 0, metadata !1314, metadata !DIExpression()), !dbg !1447
  br label %421, !dbg !1711

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1350
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1447
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1447
  call void @llvm.dbg.value(metadata i8 %426, metadata !1319, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 %425, metadata !1317, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1314, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %422, metadata !1298, metadata !DIExpression()), !dbg !1350
  %427 = add i64 %366, 1, !dbg !1712
  %428 = icmp ugt i64 %361, %427, !dbg !1714
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1715

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1716
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1716
  br i1 %432, label %433, label %444, !dbg !1716

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1719
  br i1 %434, label %435, label %437, !dbg !1723

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1719
  store i8 39, i8* %436, align 1, !dbg !1719, !tbaa !533
  br label %437, !dbg !1719

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %438, metadata !1298, metadata !DIExpression()), !dbg !1350
  %439 = icmp ult i64 %438, %140, !dbg !1724
  br i1 %439, label %440, label %442, !dbg !1727

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1724
  store i8 39, i8* %441, align 1, !dbg !1724, !tbaa !533
  br label %442, !dbg !1724

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %443, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 0, metadata !1306, metadata !DIExpression()), !dbg !1350
  br label %444, !dbg !1728

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1729
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %445, metadata !1298, metadata !DIExpression()), !dbg !1350
  %447 = icmp ult i64 %445, %140, !dbg !1730
  br i1 %447, label %448, label %450, !dbg !1733

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1730
  store i8 %426, i8* %449, align 1, !dbg !1730, !tbaa !533
  br label %450, !dbg !1730

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %451, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %427, metadata !1312, metadata !DIExpression()), !dbg !1439
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1734
  %453 = load i8, i8* %452, align 1, !dbg !1734, !tbaa !533
  call void @llvm.dbg.value(metadata i8 %453, metadata !1319, metadata !DIExpression()), !dbg !1447
  br label %363, !dbg !1735, !llvm.loop !1736

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1319, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i1 %358, metadata !1318, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1447
  call void @llvm.dbg.value(metadata i8 %425, metadata !1317, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1314, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %366, metadata !1312, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %422, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %360, metadata !1291, metadata !DIExpression()), !dbg !1350
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1739
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1350
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1354
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1439
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1447
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1289, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 %465, metadata !1319, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1318, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1317, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1314, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %462, metadata !1312, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1304, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %459, metadata !1299, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %458, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %457, metadata !1291, metadata !DIExpression()), !dbg !1350
  br i1 %121, label %478, label %467, !dbg !1740

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
  br i1 %131, label %479, label %499, !dbg !1742

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1743

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
  %490 = lshr i8 %481, 5, !dbg !1744
  %491 = zext i8 %490 to i64, !dbg !1744
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1745
  %493 = load i32, i32* %492, align 4, !dbg !1745, !tbaa !524
  %494 = and i8 %481, 31, !dbg !1746
  %495 = zext i8 %494 to i32, !dbg !1746
  %496 = shl nuw i32 1, %495, !dbg !1747
  %497 = and i32 %493, %496, !dbg !1747
  %498 = icmp eq i32 %497, 0, !dbg !1747
  br i1 %498, label %499, label %510, !dbg !1748

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
  br i1 %165, label %510, label %546, !dbg !1749

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1739
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1350
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1354
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1750
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1447
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1289, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 %518, metadata !1319, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1318, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %516, metadata !1312, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1304, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %513, metadata !1299, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %512, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %511, metadata !1291, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.label(metadata !1347), !dbg !1751
  br i1 %119, label %638, label %520, !dbg !1752

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1317, metadata !DIExpression()), !dbg !1447
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1754
  br i1 %521, label %538, label %522, !dbg !1754

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1756
  br i1 %523, label %524, label %526, !dbg !1760

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1756
  store i8 39, i8* %525, align 1, !dbg !1756, !tbaa !533
  br label %526, !dbg !1756

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %527, metadata !1298, metadata !DIExpression()), !dbg !1350
  %528 = icmp ult i64 %527, %519, !dbg !1761
  br i1 %528, label %529, label %531, !dbg !1764

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1761
  store i8 36, i8* %530, align 1, !dbg !1761, !tbaa !533
  br label %531, !dbg !1761

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %532, metadata !1298, metadata !DIExpression()), !dbg !1350
  %533 = icmp ult i64 %532, %519, !dbg !1765
  br i1 %533, label %534, label %536, !dbg !1768

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1765
  store i8 39, i8* %535, align 1, !dbg !1765, !tbaa !533
  br label %536, !dbg !1765

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %537, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 1, metadata !1306, metadata !DIExpression()), !dbg !1350
  br label %538, !dbg !1769

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1447
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %539, metadata !1298, metadata !DIExpression()), !dbg !1350
  %541 = icmp ult i64 %539, %519, !dbg !1770
  br i1 %541, label %542, label %544, !dbg !1773

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1770
  store i8 92, i8* %543, align 1, !dbg !1770, !tbaa !533
  br label %544, !dbg !1770

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %556, metadata !1289, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 %555, metadata !1319, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1318, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1317, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %552, metadata !1312, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1304, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %549, metadata !1299, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %548, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %547, metadata !1291, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.label(metadata !1348), !dbg !1774
  br label %570, !dbg !1775

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1739
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1350
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1354
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1750
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1778
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1289, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 %555, metadata !1319, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1318, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 poison, metadata !1317, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %552, metadata !1312, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1304, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %549, metadata !1299, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %548, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %547, metadata !1291, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.label(metadata !1348), !dbg !1774
  %557 = xor i1 %551, true, !dbg !1775
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1775
  br i1 %558, label %570, label %559, !dbg !1775

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1779
  br i1 %560, label %561, label %563, !dbg !1783

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1779
  store i8 39, i8* %562, align 1, !dbg !1779, !tbaa !533
  br label %563, !dbg !1779

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %564, metadata !1298, metadata !DIExpression()), !dbg !1350
  %565 = icmp ult i64 %564, %556, !dbg !1784
  br i1 %565, label %566, label %568, !dbg !1787

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1784
  store i8 39, i8* %567, align 1, !dbg !1784, !tbaa !533
  br label %568, !dbg !1784

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %569, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 0, metadata !1306, metadata !DIExpression()), !dbg !1350
  br label %570, !dbg !1788

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1447
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %578, metadata !1298, metadata !DIExpression()), !dbg !1350
  %580 = icmp ult i64 %578, %571, !dbg !1789
  br i1 %580, label %581, label %583, !dbg !1792

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1789
  store i8 %572, i8* %582, align 1, !dbg !1789, !tbaa !533
  br label %583, !dbg !1789

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %584, metadata !1298, metadata !DIExpression()), !dbg !1350
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1793
  call void @llvm.dbg.value(metadata i8 poison, metadata !1305, metadata !DIExpression()), !dbg !1350
  br label %586, !dbg !1794

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1739
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1350
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1354
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1750
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1289, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %593, metadata !1312, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 poison, metadata !1306, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1305, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1304, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %589, metadata !1299, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %588, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %587, metadata !1291, metadata !DIExpression()), !dbg !1350
  %595 = add i64 %593, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %595, metadata !1312, metadata !DIExpression()), !dbg !1439
  br label %132, !dbg !1796, !llvm.loop !1797

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1289, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1305, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 poison, metadata !1304, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 undef, metadata !1299, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 undef, metadata !1298, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 undef, metadata !1291, metadata !DIExpression()), !dbg !1350
  %597 = icmp eq i64 %134, 0, !dbg !1799
  %598 = and i1 %126, %597, !dbg !1801
  %599 = and i1 %598, %119, !dbg !1801
  br i1 %599, label %638, label %600, !dbg !1801

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1802
  %602 = or i1 %119, %601, !dbg !1802
  %603 = xor i1 %136, true, !dbg !1802
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1802
  br i1 %604, label %612, label %605, !dbg !1802

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1804

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1806
  br label %653, !dbg !1808

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1809
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1811
  br i1 %611, label %36, label %612, !dbg !1811

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1812
  %615 = or i1 %614, %613, !dbg !1814
  br i1 %615, label %631, label %616, !dbg !1814

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1300, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %134, metadata !1298, metadata !DIExpression()), !dbg !1350
  %617 = load i8, i8* %116, align 1, !dbg !1815, !tbaa !533
  %618 = icmp eq i8 %617, 0, !dbg !1818
  br i1 %618, label %631, label %619, !dbg !1818

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1300, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %622, metadata !1298, metadata !DIExpression()), !dbg !1350
  %623 = icmp ult i64 %622, %140, !dbg !1819
  br i1 %623, label %624, label %626, !dbg !1822

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1819
  store i8 %620, i8* %625, align 1, !dbg !1819, !tbaa !533
  br label %626, !dbg !1819

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %627, metadata !1298, metadata !DIExpression()), !dbg !1350
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1823
  call void @llvm.dbg.value(metadata i8* %628, metadata !1300, metadata !DIExpression()), !dbg !1350
  %629 = load i8, i8* %628, align 1, !dbg !1815, !tbaa !533
  %630 = icmp eq i8 %629, 0, !dbg !1818
  br i1 %630, label %631, label %619, !dbg !1818, !llvm.loop !1824

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1426
  call void @llvm.dbg.value(metadata i64 %632, metadata !1298, metadata !DIExpression()), !dbg !1350
  %633 = icmp ult i64 %632, %140, !dbg !1826
  br i1 %633, label %634, label %653, !dbg !1828

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1829
  store i8 0, i8* %635, align 1, !dbg !1830, !tbaa !533
  br label %653, !dbg !1829

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1349), !dbg !1656
  %637 = icmp eq i32 %112, 2, !dbg !1831
  br i1 %637, label %643, label %647, !dbg !1657

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1349), !dbg !1656
  %641 = icmp eq i32 %112, 2, !dbg !1831
  %642 = select i1 %118, i32 4, i32 2, !dbg !1657
  br i1 %641, label %643, label %647, !dbg !1657

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1657

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1292, metadata !DIExpression()), !dbg !1350
  %651 = and i32 %5, -3, !dbg !1832
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1833
  br label %653, !dbg !1834

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1835
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1836 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1838 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1842, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %1, metadata !1843, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1844, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %0, metadata !1846, metadata !DIExpression()) #32, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %1, metadata !1851, metadata !DIExpression()) #32, !dbg !1859
  call void @llvm.dbg.value(metadata i64* null, metadata !1852, metadata !DIExpression()) #32, !dbg !1859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1853, metadata !DIExpression()) #32, !dbg !1859
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1861
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1861
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1854, metadata !DIExpression()) #32, !dbg !1859
  %6 = tail call i32* @__errno_location() #35, !dbg !1862
  %7 = load i32, i32* %6, align 4, !dbg !1862, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %7, metadata !1855, metadata !DIExpression()) #32, !dbg !1859
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1863
  %9 = load i32, i32* %8, align 4, !dbg !1863, !tbaa !1232
  %10 = or i32 %9, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %10, metadata !1856, metadata !DIExpression()) #32, !dbg !1859
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1865
  %12 = load i32, i32* %11, align 8, !dbg !1865, !tbaa !1181
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1866
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1867
  %15 = load i8*, i8** %14, align 8, !dbg !1867, !tbaa !1254
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1868
  %17 = load i8*, i8** %16, align 8, !dbg !1868, !tbaa !1257
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !1869
  %19 = add i64 %18, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %19, metadata !1857, metadata !DIExpression()) #32, !dbg !1859
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !1871
  call void @llvm.dbg.value(metadata i8* %20, metadata !1858, metadata !DIExpression()) #32, !dbg !1859
  %21 = load i32, i32* %11, align 8, !dbg !1872, !tbaa !1181
  %22 = load i8*, i8** %14, align 8, !dbg !1873, !tbaa !1254
  %23 = load i8*, i8** %16, align 8, !dbg !1874, !tbaa !1257
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !1875
  store i32 %7, i32* %6, align 4, !dbg !1876, !tbaa !524
  ret i8* %20, !dbg !1877
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1846, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 %1, metadata !1851, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64* %2, metadata !1852, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1853, metadata !DIExpression()), !dbg !1878
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1879
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1854, metadata !DIExpression()), !dbg !1878
  %7 = tail call i32* @__errno_location() #35, !dbg !1880
  %8 = load i32, i32* %7, align 4, !dbg !1880, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %8, metadata !1855, metadata !DIExpression()), !dbg !1878
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1881
  %10 = load i32, i32* %9, align 4, !dbg !1881, !tbaa !1232
  %11 = icmp eq i64* %2, null, !dbg !1882
  %12 = zext i1 %11 to i32, !dbg !1882
  %13 = or i32 %10, %12, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %13, metadata !1856, metadata !DIExpression()), !dbg !1878
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1884
  %15 = load i32, i32* %14, align 8, !dbg !1884, !tbaa !1181
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1885
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1886
  %18 = load i8*, i8** %17, align 8, !dbg !1886, !tbaa !1254
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1887
  %20 = load i8*, i8** %19, align 8, !dbg !1887, !tbaa !1257
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1888
  %22 = add i64 %21, 1, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %22, metadata !1857, metadata !DIExpression()), !dbg !1878
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !1890
  call void @llvm.dbg.value(metadata i8* %23, metadata !1858, metadata !DIExpression()), !dbg !1878
  %24 = load i32, i32* %14, align 8, !dbg !1891, !tbaa !1181
  %25 = load i8*, i8** %17, align 8, !dbg !1892, !tbaa !1254
  %26 = load i8*, i8** %19, align 8, !dbg !1893, !tbaa !1257
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1894
  store i32 %8, i32* %7, align 4, !dbg !1895, !tbaa !524
  br i1 %11, label %29, label %28, !dbg !1896

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1897, !tbaa !1899
  br label %29, !dbg !1900

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1901
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1902 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1907, !tbaa !438
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1904, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i32 1, metadata !1905, metadata !DIExpression()), !dbg !1909
  %2 = load i32, i32* @nslots, align 4, !tbaa !524
  call void @llvm.dbg.value(metadata i32 1, metadata !1905, metadata !DIExpression()), !dbg !1909
  %3 = icmp sgt i32 %2, 1, !dbg !1910
  br i1 %3, label %4, label %6, !dbg !1912

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1910
  br label %10, !dbg !1912

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1913
  %8 = load i8*, i8** %7, align 8, !dbg !1913, !tbaa !1915
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1917
  br i1 %9, label %17, label %16, !dbg !1918

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1905, metadata !DIExpression()), !dbg !1909
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1919
  %13 = load i8*, i8** %12, align 8, !dbg !1919, !tbaa !1915
  tail call void @free(i8* noundef %13) #32, !dbg !1920
  %14 = add nuw nsw i64 %11, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %14, metadata !1905, metadata !DIExpression()), !dbg !1909
  %15 = icmp eq i64 %14, %5, !dbg !1910
  br i1 %15, label %6, label %10, !dbg !1912, !llvm.loop !1922

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !1924
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1926, !tbaa !1927
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1928, !tbaa !1915
  br label %17, !dbg !1929

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1930
  br i1 %18, label %21, label %19, !dbg !1932

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1933
  tail call void @free(i8* noundef %20) #32, !dbg !1935
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1936, !tbaa !438
  br label %21, !dbg !1937

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1938, !tbaa !524
  ret void, !dbg !1939
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1942, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %1, metadata !1943, metadata !DIExpression()), !dbg !1944
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1945
  ret i8* %3, !dbg !1946
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1947 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1951, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %1, metadata !1952, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %2, metadata !1953, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1954, metadata !DIExpression()), !dbg !1967
  %6 = tail call i32* @__errno_location() #35, !dbg !1968
  %7 = load i32, i32* %6, align 4, !dbg !1968, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %7, metadata !1955, metadata !DIExpression()), !dbg !1967
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1969, !tbaa !438
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1956, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1957, metadata !DIExpression()), !dbg !1967
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1970
  br i1 %9, label %10, label %11, !dbg !1970

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !1972
  unreachable, !dbg !1972

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1973, !tbaa !524
  %13 = icmp sgt i32 %12, %0, !dbg !1974
  br i1 %13, label %36, label %14, !dbg !1975

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1976
  call void @llvm.dbg.value(metadata i1 %15, metadata !1958, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1977
  %16 = bitcast i64* %5 to i8*, !dbg !1978
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1978
  %17 = sext i32 %12 to i64, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %17, metadata !1961, metadata !DIExpression()), !dbg !1977
  store i64 %17, i64* %5, align 8, !dbg !1980, !tbaa !1899
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !1981
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1981
  %20 = add nuw nsw i32 %0, 1, !dbg !1982
  %21 = sub i32 %20, %12, !dbg !1983
  %22 = sext i32 %21 to i64, !dbg !1984
  call void @llvm.dbg.value(metadata i64* %5, metadata !1961, metadata !DIExpression(DW_OP_deref)), !dbg !1977
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !1985
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1985
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1956, metadata !DIExpression()), !dbg !1967
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1986, !tbaa !438
  br i1 %15, label %25, label %26, !dbg !1987

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1988, !tbaa.struct !1990
  br label %26, !dbg !1991

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !1992, !tbaa !524
  %28 = sext i32 %27 to i64, !dbg !1993
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1993
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1994
  %31 = load i64, i64* %5, align 8, !dbg !1995, !tbaa !1899
  call void @llvm.dbg.value(metadata i64 %31, metadata !1961, metadata !DIExpression()), !dbg !1977
  %32 = sub nsw i64 %31, %28, !dbg !1996
  %33 = shl i64 %32, 4, !dbg !1997
  call void @llvm.dbg.value(metadata i8* %30, metadata !1384, metadata !DIExpression()) #32, !dbg !1998
  call void @llvm.dbg.value(metadata i32 0, metadata !1387, metadata !DIExpression()) #32, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %33, metadata !1388, metadata !DIExpression()) #32, !dbg !1998
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !2000
  %34 = load i64, i64* %5, align 8, !dbg !2001, !tbaa !1899
  call void @llvm.dbg.value(metadata i64 %34, metadata !1961, metadata !DIExpression()), !dbg !1977
  %35 = trunc i64 %34 to i32, !dbg !2001
  store i32 %35, i32* @nslots, align 4, !dbg !2002, !tbaa !524
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2003
  br label %36, !dbg !2004

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1967
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1956, metadata !DIExpression()), !dbg !1967
  %38 = zext i32 %0 to i64, !dbg !2005
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2006
  %40 = load i64, i64* %39, align 8, !dbg !2006, !tbaa !1927
  call void @llvm.dbg.value(metadata i64 %40, metadata !1962, metadata !DIExpression()), !dbg !2007
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2008
  %42 = load i8*, i8** %41, align 8, !dbg !2008, !tbaa !1915
  call void @llvm.dbg.value(metadata i8* %42, metadata !1964, metadata !DIExpression()), !dbg !2007
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2009
  %44 = load i32, i32* %43, align 4, !dbg !2009, !tbaa !1232
  %45 = or i32 %44, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %45, metadata !1965, metadata !DIExpression()), !dbg !2007
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2011
  %47 = load i32, i32* %46, align 8, !dbg !2011, !tbaa !1181
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2012
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2013
  %50 = load i8*, i8** %49, align 8, !dbg !2013, !tbaa !1254
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2014
  %52 = load i8*, i8** %51, align 8, !dbg !2014, !tbaa !1257
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2015
  call void @llvm.dbg.value(metadata i64 %53, metadata !1966, metadata !DIExpression()), !dbg !2007
  %54 = icmp ugt i64 %40, %53, !dbg !2016
  br i1 %54, label %65, label %55, !dbg !2018

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %56, metadata !1962, metadata !DIExpression()), !dbg !2007
  store i64 %56, i64* %39, align 8, !dbg !2021, !tbaa !1927
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2022
  br i1 %57, label %59, label %58, !dbg !2024

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !2025
  br label %59, !dbg !2025

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !2026
  call void @llvm.dbg.value(metadata i8* %60, metadata !1964, metadata !DIExpression()), !dbg !2007
  store i8* %60, i8** %41, align 8, !dbg !2027, !tbaa !1915
  %61 = load i32, i32* %46, align 8, !dbg !2028, !tbaa !1181
  %62 = load i8*, i8** %49, align 8, !dbg !2029, !tbaa !1254
  %63 = load i8*, i8** %51, align 8, !dbg !2030, !tbaa !1257
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2031
  br label %65, !dbg !2032

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2007
  call void @llvm.dbg.value(metadata i8* %66, metadata !1964, metadata !DIExpression()), !dbg !2007
  store i32 %7, i32* %6, align 4, !dbg !2033, !tbaa !524
  ret i8* %66, !dbg !2034
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2039, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8* %1, metadata !2040, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 %2, metadata !2041, metadata !DIExpression()), !dbg !2042
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2043
  ret i8* %4, !dbg !2044
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2045 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2047, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()) #32, !dbg !2049
  call void @llvm.dbg.value(metadata i8* %0, metadata !1943, metadata !DIExpression()) #32, !dbg !2049
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2051
  ret i8* %2, !dbg !2052
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2053 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2057, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %1, metadata !2058, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i32 0, metadata !2039, metadata !DIExpression()) #32, !dbg !2060
  call void @llvm.dbg.value(metadata i8* %0, metadata !2040, metadata !DIExpression()) #32, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %1, metadata !2041, metadata !DIExpression()) #32, !dbg !2060
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2062
  ret i8* %3, !dbg !2063
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2064 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2068, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %1, metadata !2069, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %2, metadata !2070, metadata !DIExpression()), !dbg !2072
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2073
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2073
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2071, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %1, metadata !2079, metadata !DIExpression()) #32, !dbg !2085
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2084, metadata !DIExpression()) #32, !dbg !2087
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2087, !alias.scope !2075
  %6 = icmp eq i32 %1, 10, !dbg !2088
  br i1 %6, label %7, label %8, !dbg !2090

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2091, !noalias !2075
  unreachable, !dbg !2091

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2092
  store i32 %1, i32* %9, align 8, !dbg !2093, !tbaa !1181, !alias.scope !2075
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2094
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2095
  ret i8* %10, !dbg !2096
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2097 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2101, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %1, metadata !2102, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %2, metadata !2103, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %3, metadata !2104, metadata !DIExpression()), !dbg !2106
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2107
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2107
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2105, metadata !DIExpression()), !dbg !2108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109), !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1, metadata !2079, metadata !DIExpression()) #32, !dbg !2113
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2084, metadata !DIExpression()) #32, !dbg !2115
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2115, !alias.scope !2109
  %7 = icmp eq i32 %1, 10, !dbg !2116
  br i1 %7, label %8, label %9, !dbg !2117

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2118, !noalias !2109
  unreachable, !dbg !2118

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2119
  store i32 %1, i32* %10, align 8, !dbg !2120, !tbaa !1181, !alias.scope !2109
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2121
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2122
  ret i8* %11, !dbg !2123
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2124 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %1, metadata !2129, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 0, metadata !2068, metadata !DIExpression()) #32, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %0, metadata !2069, metadata !DIExpression()) #32, !dbg !2131
  call void @llvm.dbg.value(metadata i8* %1, metadata !2070, metadata !DIExpression()) #32, !dbg !2131
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2133
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2071, metadata !DIExpression()) #32, !dbg !2134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135) #32, !dbg !2138
  call void @llvm.dbg.value(metadata i32 %0, metadata !2079, metadata !DIExpression()) #32, !dbg !2139
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2084, metadata !DIExpression()) #32, !dbg !2141
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2141, !alias.scope !2135
  %5 = icmp eq i32 %0, 10, !dbg !2142
  br i1 %5, label %6, label %7, !dbg !2143

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2144, !noalias !2135
  unreachable, !dbg !2144

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2145
  store i32 %0, i32* %8, align 8, !dbg !2146, !tbaa !1181, !alias.scope !2135
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2147
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2148
  ret i8* %9, !dbg !2149
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2150 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2154, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8* %1, metadata !2155, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %2, metadata !2156, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i32 0, metadata !2101, metadata !DIExpression()) #32, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %0, metadata !2102, metadata !DIExpression()) #32, !dbg !2158
  call void @llvm.dbg.value(metadata i8* %1, metadata !2103, metadata !DIExpression()) #32, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %2, metadata !2104, metadata !DIExpression()) #32, !dbg !2158
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2160
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2160
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2105, metadata !DIExpression()) #32, !dbg !2161
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2162) #32, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %0, metadata !2079, metadata !DIExpression()) #32, !dbg !2166
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2084, metadata !DIExpression()) #32, !dbg !2168
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2168, !alias.scope !2162
  %6 = icmp eq i32 %0, 10, !dbg !2169
  br i1 %6, label %7, label %8, !dbg !2170

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2171, !noalias !2162
  unreachable, !dbg !2171

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2172
  store i32 %0, i32* %9, align 8, !dbg !2173, !tbaa !1181, !alias.scope !2162
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2175
  ret i8* %10, !dbg !2176
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2177 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2181, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %1, metadata !2182, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %2, metadata !2183, metadata !DIExpression()), !dbg !2185
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2186
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2186
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2184, metadata !DIExpression()), !dbg !2187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2188, !tbaa.struct !2189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1199, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 %2, metadata !1200, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32 1, metadata !1201, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 %2, metadata !1202, metadata !DIExpression()), !dbg !2190
  %6 = lshr i8 %2, 5, !dbg !2192
  %7 = zext i8 %6 to i64, !dbg !2192
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2193
  call void @llvm.dbg.value(metadata i32* %8, metadata !1203, metadata !DIExpression()), !dbg !2190
  %9 = and i8 %2, 31, !dbg !2194
  %10 = zext i8 %9 to i32, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %10, metadata !1205, metadata !DIExpression()), !dbg !2190
  %11 = load i32, i32* %8, align 4, !dbg !2195, !tbaa !524
  %12 = lshr i32 %11, %10, !dbg !2196
  %13 = and i32 %12, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %13, metadata !1206, metadata !DIExpression()), !dbg !2190
  %14 = xor i32 %13, 1, !dbg !2198
  %15 = shl i32 %14, %10, !dbg !2199
  %16 = xor i32 %15, %11, !dbg !2200
  store i32 %16, i32* %8, align 4, !dbg !2200, !tbaa !524
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2201
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2202
  ret i8* %17, !dbg !2203
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2204 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %1, metadata !2209, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8* %0, metadata !2181, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.dbg.value(metadata i64 -1, metadata !2182, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.dbg.value(metadata i8 %1, metadata !2183, metadata !DIExpression()) #32, !dbg !2211
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2213
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2213
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2184, metadata !DIExpression()) #32, !dbg !2214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2215, !tbaa.struct !2189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1199, metadata !DIExpression()) #32, !dbg !2216
  call void @llvm.dbg.value(metadata i8 %1, metadata !1200, metadata !DIExpression()) #32, !dbg !2216
  call void @llvm.dbg.value(metadata i32 1, metadata !1201, metadata !DIExpression()) #32, !dbg !2216
  call void @llvm.dbg.value(metadata i8 %1, metadata !1202, metadata !DIExpression()) #32, !dbg !2216
  %5 = lshr i8 %1, 5, !dbg !2218
  %6 = zext i8 %5 to i64, !dbg !2218
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2219
  call void @llvm.dbg.value(metadata i32* %7, metadata !1203, metadata !DIExpression()) #32, !dbg !2216
  %8 = and i8 %1, 31, !dbg !2220
  %9 = zext i8 %8 to i32, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %9, metadata !1205, metadata !DIExpression()) #32, !dbg !2216
  %10 = load i32, i32* %7, align 4, !dbg !2221, !tbaa !524
  %11 = lshr i32 %10, %9, !dbg !2222
  %12 = and i32 %11, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %12, metadata !1206, metadata !DIExpression()) #32, !dbg !2216
  %13 = xor i32 %12, 1, !dbg !2224
  %14 = shl i32 %13, %9, !dbg !2225
  %15 = xor i32 %14, %10, !dbg !2226
  store i32 %15, i32* %7, align 4, !dbg !2226, !tbaa !524
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2228
  ret i8* %16, !dbg !2229
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2230 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2232, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8* %0, metadata !2208, metadata !DIExpression()) #32, !dbg !2234
  call void @llvm.dbg.value(metadata i8 58, metadata !2209, metadata !DIExpression()) #32, !dbg !2234
  call void @llvm.dbg.value(metadata i8* %0, metadata !2181, metadata !DIExpression()) #32, !dbg !2236
  call void @llvm.dbg.value(metadata i64 -1, metadata !2182, metadata !DIExpression()) #32, !dbg !2236
  call void @llvm.dbg.value(metadata i8 58, metadata !2183, metadata !DIExpression()) #32, !dbg !2236
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2238
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2184, metadata !DIExpression()) #32, !dbg !2239
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2240, !tbaa.struct !2189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1199, metadata !DIExpression()) #32, !dbg !2241
  call void @llvm.dbg.value(metadata i8 58, metadata !1200, metadata !DIExpression()) #32, !dbg !2241
  call void @llvm.dbg.value(metadata i32 1, metadata !1201, metadata !DIExpression()) #32, !dbg !2241
  call void @llvm.dbg.value(metadata i8 58, metadata !1202, metadata !DIExpression()) #32, !dbg !2241
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2243
  call void @llvm.dbg.value(metadata i32* %4, metadata !1203, metadata !DIExpression()) #32, !dbg !2241
  call void @llvm.dbg.value(metadata i32 26, metadata !1205, metadata !DIExpression()) #32, !dbg !2241
  %5 = load i32, i32* %4, align 4, !dbg !2244, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %5, metadata !1206, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2241
  %6 = or i32 %5, 67108864, !dbg !2245
  store i32 %6, i32* %4, align 4, !dbg !2245, !tbaa !524
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2246
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2247
  ret i8* %7, !dbg !2248
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2249 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i64 %1, metadata !2252, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8* %0, metadata !2181, metadata !DIExpression()) #32, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %1, metadata !2182, metadata !DIExpression()) #32, !dbg !2254
  call void @llvm.dbg.value(metadata i8 58, metadata !2183, metadata !DIExpression()) #32, !dbg !2254
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2256
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2256
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2184, metadata !DIExpression()) #32, !dbg !2257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2258, !tbaa.struct !2189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1199, metadata !DIExpression()) #32, !dbg !2259
  call void @llvm.dbg.value(metadata i8 58, metadata !1200, metadata !DIExpression()) #32, !dbg !2259
  call void @llvm.dbg.value(metadata i32 1, metadata !1201, metadata !DIExpression()) #32, !dbg !2259
  call void @llvm.dbg.value(metadata i8 58, metadata !1202, metadata !DIExpression()) #32, !dbg !2259
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2261
  call void @llvm.dbg.value(metadata i32* %5, metadata !1203, metadata !DIExpression()) #32, !dbg !2259
  call void @llvm.dbg.value(metadata i32 26, metadata !1205, metadata !DIExpression()) #32, !dbg !2259
  %6 = load i32, i32* %5, align 4, !dbg !2262, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %6, metadata !1206, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2259
  %7 = or i32 %6, 67108864, !dbg !2263
  store i32 %7, i32* %5, align 4, !dbg !2263, !tbaa !524
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2264
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2265
  ret i8* %8, !dbg !2266
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2267 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2269, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 %1, metadata !2270, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8* %2, metadata !2271, metadata !DIExpression()), !dbg !2273
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2274
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2274
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i32 %1, metadata !2079, metadata !DIExpression()) #32, !dbg !2276
  call void @llvm.dbg.value(metadata i32 0, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2276
  %6 = icmp eq i32 %1, 10, !dbg !2278
  br i1 %6, label %7, label %8, !dbg !2279

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2280, !noalias !2281
  unreachable, !dbg !2280

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2276
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2284
  store i32 %1, i32* %9, align 8, !dbg !2284, !tbaa.struct !2189
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2284
  %11 = bitcast i32* %10 to i8*, !dbg !2284
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2284
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1199, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 58, metadata !1200, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 1, metadata !1201, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 58, metadata !1202, metadata !DIExpression()), !dbg !2285
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2287
  call void @llvm.dbg.value(metadata i32* %12, metadata !1203, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 26, metadata !1205, metadata !DIExpression()), !dbg !2285
  %13 = load i32, i32* %12, align 4, !dbg !2288, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %13, metadata !1206, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2285
  %14 = or i32 %13, 67108864, !dbg !2289
  store i32 %14, i32* %12, align 4, !dbg !2289, !tbaa !524
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2290
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2291
  ret i8* %15, !dbg !2292
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2293 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2297, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %1, metadata !2298, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %2, metadata !2299, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %3, metadata !2300, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %0, metadata !2302, metadata !DIExpression()) #32, !dbg !2312
  call void @llvm.dbg.value(metadata i8* %1, metadata !2307, metadata !DIExpression()) #32, !dbg !2312
  call void @llvm.dbg.value(metadata i8* %2, metadata !2308, metadata !DIExpression()) #32, !dbg !2312
  call void @llvm.dbg.value(metadata i8* %3, metadata !2309, metadata !DIExpression()) #32, !dbg !2312
  call void @llvm.dbg.value(metadata i64 -1, metadata !2310, metadata !DIExpression()) #32, !dbg !2312
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2314
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2314
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2311, metadata !DIExpression()) #32, !dbg !2315
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2316, !tbaa.struct !2189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1239, metadata !DIExpression()) #32, !dbg !2317
  call void @llvm.dbg.value(metadata i8* %1, metadata !1240, metadata !DIExpression()) #32, !dbg !2317
  call void @llvm.dbg.value(metadata i8* %2, metadata !1241, metadata !DIExpression()) #32, !dbg !2317
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1239, metadata !DIExpression()) #32, !dbg !2317
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2319
  store i32 10, i32* %7, align 8, !dbg !2320, !tbaa !1181
  %8 = icmp ne i8* %1, null, !dbg !2321
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2322
  br i1 %10, label %12, label %11, !dbg !2322

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2323
  unreachable, !dbg !2323

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2324
  store i8* %1, i8** %13, align 8, !dbg !2325, !tbaa !1254
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2326
  store i8* %2, i8** %14, align 8, !dbg !2327, !tbaa !1257
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2328
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2329
  ret i8* %15, !dbg !2330
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2303 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2302, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %1, metadata !2307, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %2, metadata !2308, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8* %3, metadata !2309, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i64 %4, metadata !2310, metadata !DIExpression()), !dbg !2331
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2332
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2332
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2311, metadata !DIExpression()), !dbg !2333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2334, !tbaa.struct !2189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1239, metadata !DIExpression()) #32, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %1, metadata !1240, metadata !DIExpression()) #32, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %2, metadata !1241, metadata !DIExpression()) #32, !dbg !2335
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1239, metadata !DIExpression()) #32, !dbg !2335
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2337
  store i32 10, i32* %8, align 8, !dbg !2338, !tbaa !1181
  %9 = icmp ne i8* %1, null, !dbg !2339
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2340
  br i1 %11, label %13, label %12, !dbg !2340

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2341
  unreachable, !dbg !2341

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2342
  store i8* %1, i8** %14, align 8, !dbg !2343, !tbaa !1254
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2344
  store i8* %2, i8** %15, align 8, !dbg !2345, !tbaa !1257
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2347
  ret i8* %16, !dbg !2348
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2349 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2353, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %1, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %2, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 0, metadata !2297, metadata !DIExpression()) #32, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %0, metadata !2298, metadata !DIExpression()) #32, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %1, metadata !2299, metadata !DIExpression()) #32, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %2, metadata !2300, metadata !DIExpression()) #32, !dbg !2357
  call void @llvm.dbg.value(metadata i32 0, metadata !2302, metadata !DIExpression()) #32, !dbg !2359
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()) #32, !dbg !2359
  call void @llvm.dbg.value(metadata i8* %1, metadata !2308, metadata !DIExpression()) #32, !dbg !2359
  call void @llvm.dbg.value(metadata i8* %2, metadata !2309, metadata !DIExpression()) #32, !dbg !2359
  call void @llvm.dbg.value(metadata i64 -1, metadata !2310, metadata !DIExpression()) #32, !dbg !2359
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2361
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2361
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2311, metadata !DIExpression()) #32, !dbg !2362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2363, !tbaa.struct !2189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1239, metadata !DIExpression()) #32, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %0, metadata !1240, metadata !DIExpression()) #32, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %1, metadata !1241, metadata !DIExpression()) #32, !dbg !2364
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1239, metadata !DIExpression()) #32, !dbg !2364
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2366
  store i32 10, i32* %6, align 8, !dbg !2367, !tbaa !1181
  %7 = icmp ne i8* %0, null, !dbg !2368
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2369
  br i1 %9, label %11, label %10, !dbg !2369

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2370
  unreachable, !dbg !2370

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2371
  store i8* %0, i8** %12, align 8, !dbg !2372, !tbaa !1254
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2373
  store i8* %1, i8** %13, align 8, !dbg !2374, !tbaa !1257
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2375
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2376
  ret i8* %14, !dbg !2377
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2378 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2382, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %1, metadata !2383, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %2, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 %3, metadata !2385, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 0, metadata !2302, metadata !DIExpression()) #32, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()) #32, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %1, metadata !2308, metadata !DIExpression()) #32, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %2, metadata !2309, metadata !DIExpression()) #32, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %3, metadata !2310, metadata !DIExpression()) #32, !dbg !2387
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2389
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2389
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2311, metadata !DIExpression()) #32, !dbg !2390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2391, !tbaa.struct !2189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1239, metadata !DIExpression()) #32, !dbg !2392
  call void @llvm.dbg.value(metadata i8* %0, metadata !1240, metadata !DIExpression()) #32, !dbg !2392
  call void @llvm.dbg.value(metadata i8* %1, metadata !1241, metadata !DIExpression()) #32, !dbg !2392
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1239, metadata !DIExpression()) #32, !dbg !2392
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2394
  store i32 10, i32* %7, align 8, !dbg !2395, !tbaa !1181
  %8 = icmp ne i8* %0, null, !dbg !2396
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2397
  br i1 %10, label %12, label %11, !dbg !2397

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2398
  unreachable, !dbg !2398

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2399
  store i8* %0, i8** %13, align 8, !dbg !2400, !tbaa !1254
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2401
  store i8* %1, i8** %14, align 8, !dbg !2402, !tbaa !1257
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2403
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2404
  ret i8* %15, !dbg !2405
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %1, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i64 %2, metadata !2412, metadata !DIExpression()), !dbg !2413
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2414
  ret i8* %4, !dbg !2415
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2416 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %1, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 0, metadata !2410, metadata !DIExpression()) #32, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %0, metadata !2411, metadata !DIExpression()) #32, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %1, metadata !2412, metadata !DIExpression()) #32, !dbg !2423
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2425
  ret i8* %3, !dbg !2426
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %1, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()) #32, !dbg !2434
  call void @llvm.dbg.value(metadata i8* %1, metadata !2411, metadata !DIExpression()) #32, !dbg !2434
  call void @llvm.dbg.value(metadata i64 -1, metadata !2412, metadata !DIExpression()) #32, !dbg !2434
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2436
  ret i8* %3, !dbg !2437
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2438 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2442, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i32 0, metadata !2431, metadata !DIExpression()) #32, !dbg !2444
  call void @llvm.dbg.value(metadata i8* %0, metadata !2432, metadata !DIExpression()) #32, !dbg !2444
  call void @llvm.dbg.value(metadata i32 0, metadata !2410, metadata !DIExpression()) #32, !dbg !2446
  call void @llvm.dbg.value(metadata i8* %0, metadata !2411, metadata !DIExpression()) #32, !dbg !2446
  call void @llvm.dbg.value(metadata i64 -1, metadata !2412, metadata !DIExpression()) #32, !dbg !2446
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2448
  ret i8* %2, !dbg !2449
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2450 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2489, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8* %1, metadata !2490, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8* %2, metadata !2491, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8* %3, metadata !2492, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8** %4, metadata !2493, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %5, metadata !2494, metadata !DIExpression()), !dbg !2495
  %7 = icmp eq i8* %1, null, !dbg !2496
  br i1 %7, label %10, label %8, !dbg !2498

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2499
  br label %12, !dbg !2499

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.81, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2500
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.83, i64 0, i64 0), i32 noundef 5) #32, !dbg !2501
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2501
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.84, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2502
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.85, i64 0, i64 0), i32 noundef 5) #32, !dbg !2503
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.86, i64 0, i64 0)) #32, !dbg !2503
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.84, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2504
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
  ], !dbg !2505

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.87, i64 0, i64 0), i32 noundef 5) #32, !dbg !2506
  %21 = load i8*, i8** %4, align 8, !dbg !2506, !tbaa !438
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2506
  br label %147, !dbg !2508

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !2509
  %25 = load i8*, i8** %4, align 8, !dbg !2509, !tbaa !438
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2509
  %27 = load i8*, i8** %26, align 8, !dbg !2509, !tbaa !438
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2509
  br label %147, !dbg !2510

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.89, i64 0, i64 0), i32 noundef 5) #32, !dbg !2511
  %31 = load i8*, i8** %4, align 8, !dbg !2511, !tbaa !438
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2511
  %33 = load i8*, i8** %32, align 8, !dbg !2511, !tbaa !438
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2511
  %35 = load i8*, i8** %34, align 8, !dbg !2511, !tbaa !438
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2511
  br label %147, !dbg !2512

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.90, i64 0, i64 0), i32 noundef 5) #32, !dbg !2513
  %39 = load i8*, i8** %4, align 8, !dbg !2513, !tbaa !438
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2513
  %41 = load i8*, i8** %40, align 8, !dbg !2513, !tbaa !438
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2513
  %43 = load i8*, i8** %42, align 8, !dbg !2513, !tbaa !438
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2513
  %45 = load i8*, i8** %44, align 8, !dbg !2513, !tbaa !438
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2513
  br label %147, !dbg !2514

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !2515
  %49 = load i8*, i8** %4, align 8, !dbg !2515, !tbaa !438
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2515
  %51 = load i8*, i8** %50, align 8, !dbg !2515, !tbaa !438
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2515
  %53 = load i8*, i8** %52, align 8, !dbg !2515, !tbaa !438
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2515
  %55 = load i8*, i8** %54, align 8, !dbg !2515, !tbaa !438
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2515
  %57 = load i8*, i8** %56, align 8, !dbg !2515, !tbaa !438
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2515
  br label %147, !dbg !2516

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.92, i64 0, i64 0), i32 noundef 5) #32, !dbg !2517
  %61 = load i8*, i8** %4, align 8, !dbg !2517, !tbaa !438
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2517
  %63 = load i8*, i8** %62, align 8, !dbg !2517, !tbaa !438
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2517
  %65 = load i8*, i8** %64, align 8, !dbg !2517, !tbaa !438
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2517
  %67 = load i8*, i8** %66, align 8, !dbg !2517, !tbaa !438
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2517
  %69 = load i8*, i8** %68, align 8, !dbg !2517, !tbaa !438
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2517
  %71 = load i8*, i8** %70, align 8, !dbg !2517, !tbaa !438
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2517
  br label %147, !dbg !2518

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.93, i64 0, i64 0), i32 noundef 5) #32, !dbg !2519
  %75 = load i8*, i8** %4, align 8, !dbg !2519, !tbaa !438
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2519
  %77 = load i8*, i8** %76, align 8, !dbg !2519, !tbaa !438
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2519
  %79 = load i8*, i8** %78, align 8, !dbg !2519, !tbaa !438
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2519
  %81 = load i8*, i8** %80, align 8, !dbg !2519, !tbaa !438
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2519
  %83 = load i8*, i8** %82, align 8, !dbg !2519, !tbaa !438
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2519
  %85 = load i8*, i8** %84, align 8, !dbg !2519, !tbaa !438
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2519
  %87 = load i8*, i8** %86, align 8, !dbg !2519, !tbaa !438
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2519
  br label %147, !dbg !2520

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.94, i64 0, i64 0), i32 noundef 5) #32, !dbg !2521
  %91 = load i8*, i8** %4, align 8, !dbg !2521, !tbaa !438
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2521
  %93 = load i8*, i8** %92, align 8, !dbg !2521, !tbaa !438
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2521
  %95 = load i8*, i8** %94, align 8, !dbg !2521, !tbaa !438
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2521
  %97 = load i8*, i8** %96, align 8, !dbg !2521, !tbaa !438
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2521
  %99 = load i8*, i8** %98, align 8, !dbg !2521, !tbaa !438
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2521
  %101 = load i8*, i8** %100, align 8, !dbg !2521, !tbaa !438
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2521
  %103 = load i8*, i8** %102, align 8, !dbg !2521, !tbaa !438
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2521
  %105 = load i8*, i8** %104, align 8, !dbg !2521, !tbaa !438
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2521
  br label %147, !dbg !2522

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.95, i64 0, i64 0), i32 noundef 5) #32, !dbg !2523
  %109 = load i8*, i8** %4, align 8, !dbg !2523, !tbaa !438
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2523
  %111 = load i8*, i8** %110, align 8, !dbg !2523, !tbaa !438
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2523
  %113 = load i8*, i8** %112, align 8, !dbg !2523, !tbaa !438
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2523
  %115 = load i8*, i8** %114, align 8, !dbg !2523, !tbaa !438
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2523
  %117 = load i8*, i8** %116, align 8, !dbg !2523, !tbaa !438
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2523
  %119 = load i8*, i8** %118, align 8, !dbg !2523, !tbaa !438
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2523
  %121 = load i8*, i8** %120, align 8, !dbg !2523, !tbaa !438
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2523
  %123 = load i8*, i8** %122, align 8, !dbg !2523, !tbaa !438
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2523
  %125 = load i8*, i8** %124, align 8, !dbg !2523, !tbaa !438
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2523
  br label %147, !dbg !2524

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.96, i64 0, i64 0), i32 noundef 5) #32, !dbg !2525
  %129 = load i8*, i8** %4, align 8, !dbg !2525, !tbaa !438
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2525
  %131 = load i8*, i8** %130, align 8, !dbg !2525, !tbaa !438
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2525
  %133 = load i8*, i8** %132, align 8, !dbg !2525, !tbaa !438
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2525
  %135 = load i8*, i8** %134, align 8, !dbg !2525, !tbaa !438
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2525
  %137 = load i8*, i8** %136, align 8, !dbg !2525, !tbaa !438
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2525
  %139 = load i8*, i8** %138, align 8, !dbg !2525, !tbaa !438
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2525
  %141 = load i8*, i8** %140, align 8, !dbg !2525, !tbaa !438
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2525
  %143 = load i8*, i8** %142, align 8, !dbg !2525, !tbaa !438
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2525
  %145 = load i8*, i8** %144, align 8, !dbg !2525, !tbaa !438
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2525
  br label %147, !dbg !2526

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2527
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2528 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2532, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %1, metadata !2533, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %2, metadata !2534, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %3, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8** %4, metadata !2536, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i64 0, metadata !2537, metadata !DIExpression()), !dbg !2538
  br label %6, !dbg !2539

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2541
  call void @llvm.dbg.value(metadata i64 %7, metadata !2537, metadata !DIExpression()), !dbg !2538
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2542
  %9 = load i8*, i8** %8, align 8, !dbg !2542, !tbaa !438
  %10 = icmp eq i8* %9, null, !dbg !2544
  %11 = add i64 %7, 1, !dbg !2545
  call void @llvm.dbg.value(metadata i64 %11, metadata !2537, metadata !DIExpression()), !dbg !2538
  br i1 %10, label %12, label %6, !dbg !2544, !llvm.loop !2546

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2548
  ret void, !dbg !2549
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2550 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2565, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %1, metadata !2566, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %2, metadata !2567, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %3, metadata !2568, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2569, metadata !DIExpression()), !dbg !2574
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2575
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2571, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 0, metadata !2570, metadata !DIExpression()), !dbg !2573
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2570, metadata !DIExpression()), !dbg !2573
  %11 = load i32, i32* %8, align 8, !dbg !2577
  %12 = icmp sgt i32 %11, -1, !dbg !2577
  br i1 %12, label %20, label %13, !dbg !2577

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2577
  store i32 %14, i32* %8, align 8, !dbg !2577
  %15 = icmp ult i32 %11, -7, !dbg !2577
  br i1 %15, label %16, label %20, !dbg !2577

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2577
  %18 = sext i32 %11 to i64, !dbg !2577
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2577
  br label %24, !dbg !2577

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2577
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2577
  store i8* %23, i8** %10, align 8, !dbg !2577
  br label %24, !dbg !2577

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2577
  %28 = load i8*, i8** %27, align 8, !dbg !2577
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2580
  store i8* %28, i8** %29, align 8, !dbg !2581, !tbaa !438
  %30 = icmp eq i8* %28, null, !dbg !2582
  br i1 %30, label %210, label %31, !dbg !2583

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 1, metadata !2570, metadata !DIExpression()), !dbg !2573
  %32 = icmp sgt i32 %25, -1, !dbg !2577
  br i1 %32, label %40, label %33, !dbg !2577

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2577
  store i32 %34, i32* %8, align 8, !dbg !2577
  %35 = icmp ult i32 %25, -7, !dbg !2577
  br i1 %35, label %36, label %40, !dbg !2577

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2577
  %38 = sext i32 %25 to i64, !dbg !2577
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2577
  br label %44, !dbg !2577

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2577
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2577
  store i8* %43, i8** %10, align 8, !dbg !2577
  br label %44, !dbg !2577

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2577
  %48 = load i8*, i8** %47, align 8, !dbg !2577
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2580
  store i8* %48, i8** %49, align 8, !dbg !2581, !tbaa !438
  %50 = icmp eq i8* %48, null, !dbg !2582
  br i1 %50, label %210, label %51, !dbg !2583

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 2, metadata !2570, metadata !DIExpression()), !dbg !2573
  %52 = icmp sgt i32 %45, -1, !dbg !2577
  br i1 %52, label %60, label %53, !dbg !2577

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2577
  store i32 %54, i32* %8, align 8, !dbg !2577
  %55 = icmp ult i32 %45, -7, !dbg !2577
  br i1 %55, label %56, label %60, !dbg !2577

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2577
  %58 = sext i32 %45 to i64, !dbg !2577
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2577
  br label %64, !dbg !2577

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2577
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2577
  store i8* %63, i8** %10, align 8, !dbg !2577
  br label %64, !dbg !2577

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2577
  %68 = load i8*, i8** %67, align 8, !dbg !2577
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2580
  store i8* %68, i8** %69, align 8, !dbg !2581, !tbaa !438
  %70 = icmp eq i8* %68, null, !dbg !2582
  br i1 %70, label %210, label %71, !dbg !2583

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 3, metadata !2570, metadata !DIExpression()), !dbg !2573
  %72 = icmp sgt i32 %65, -1, !dbg !2577
  br i1 %72, label %80, label %73, !dbg !2577

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2577
  store i32 %74, i32* %8, align 8, !dbg !2577
  %75 = icmp ult i32 %65, -7, !dbg !2577
  br i1 %75, label %76, label %80, !dbg !2577

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2577
  %78 = sext i32 %65 to i64, !dbg !2577
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2577
  br label %84, !dbg !2577

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2577
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2577
  store i8* %83, i8** %10, align 8, !dbg !2577
  br label %84, !dbg !2577

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2577
  %88 = load i8*, i8** %87, align 8, !dbg !2577
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2580
  store i8* %88, i8** %89, align 8, !dbg !2581, !tbaa !438
  %90 = icmp eq i8* %88, null, !dbg !2582
  br i1 %90, label %210, label %91, !dbg !2583

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 4, metadata !2570, metadata !DIExpression()), !dbg !2573
  %92 = icmp sgt i32 %85, -1, !dbg !2577
  br i1 %92, label %100, label %93, !dbg !2577

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2577
  store i32 %94, i32* %8, align 8, !dbg !2577
  %95 = icmp ult i32 %85, -7, !dbg !2577
  br i1 %95, label %96, label %100, !dbg !2577

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2577
  %98 = sext i32 %85 to i64, !dbg !2577
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2577
  br label %104, !dbg !2577

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2577
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2577
  store i8* %103, i8** %10, align 8, !dbg !2577
  br label %104, !dbg !2577

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2577
  %108 = load i8*, i8** %107, align 8, !dbg !2577
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2580
  store i8* %108, i8** %109, align 8, !dbg !2581, !tbaa !438
  %110 = icmp eq i8* %108, null, !dbg !2582
  br i1 %110, label %210, label %111, !dbg !2583

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 5, metadata !2570, metadata !DIExpression()), !dbg !2573
  %112 = icmp sgt i32 %105, -1, !dbg !2577
  br i1 %112, label %120, label %113, !dbg !2577

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2577
  store i32 %114, i32* %8, align 8, !dbg !2577
  %115 = icmp ult i32 %105, -7, !dbg !2577
  br i1 %115, label %116, label %120, !dbg !2577

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2577
  %118 = sext i32 %105 to i64, !dbg !2577
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2577
  br label %124, !dbg !2577

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2577
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2577
  store i8* %123, i8** %10, align 8, !dbg !2577
  br label %124, !dbg !2577

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2577
  %128 = load i8*, i8** %127, align 8, !dbg !2577
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2580
  store i8* %128, i8** %129, align 8, !dbg !2581, !tbaa !438
  %130 = icmp eq i8* %128, null, !dbg !2582
  br i1 %130, label %210, label %131, !dbg !2583

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 6, metadata !2570, metadata !DIExpression()), !dbg !2573
  %132 = icmp sgt i32 %125, -1, !dbg !2577
  br i1 %132, label %140, label %133, !dbg !2577

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2577
  store i32 %134, i32* %8, align 8, !dbg !2577
  %135 = icmp ult i32 %125, -7, !dbg !2577
  br i1 %135, label %136, label %140, !dbg !2577

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2577
  %138 = sext i32 %125 to i64, !dbg !2577
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2577
  br label %144, !dbg !2577

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2577
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2577
  store i8* %143, i8** %10, align 8, !dbg !2577
  br label %144, !dbg !2577

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2577
  %148 = load i8*, i8** %147, align 8, !dbg !2577
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2580
  store i8* %148, i8** %149, align 8, !dbg !2581, !tbaa !438
  %150 = icmp eq i8* %148, null, !dbg !2582
  br i1 %150, label %210, label %151, !dbg !2583

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 7, metadata !2570, metadata !DIExpression()), !dbg !2573
  %152 = icmp sgt i32 %145, -1, !dbg !2577
  br i1 %152, label %160, label %153, !dbg !2577

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2577
  store i32 %154, i32* %8, align 8, !dbg !2577
  %155 = icmp ult i32 %145, -7, !dbg !2577
  br i1 %155, label %156, label %160, !dbg !2577

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2577
  %158 = sext i32 %145 to i64, !dbg !2577
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2577
  br label %164, !dbg !2577

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2577
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2577
  store i8* %163, i8** %10, align 8, !dbg !2577
  br label %164, !dbg !2577

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2577
  %168 = load i8*, i8** %167, align 8, !dbg !2577
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2580
  store i8* %168, i8** %169, align 8, !dbg !2581, !tbaa !438
  %170 = icmp eq i8* %168, null, !dbg !2582
  br i1 %170, label %210, label %171, !dbg !2583

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 8, metadata !2570, metadata !DIExpression()), !dbg !2573
  %172 = icmp sgt i32 %165, -1, !dbg !2577
  br i1 %172, label %180, label %173, !dbg !2577

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2577
  store i32 %174, i32* %8, align 8, !dbg !2577
  %175 = icmp ult i32 %165, -7, !dbg !2577
  br i1 %175, label %176, label %180, !dbg !2577

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2577
  %178 = sext i32 %165 to i64, !dbg !2577
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2577
  br label %184, !dbg !2577

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2577
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2577
  store i8* %183, i8** %10, align 8, !dbg !2577
  br label %184, !dbg !2577

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2577
  %188 = load i8*, i8** %187, align 8, !dbg !2577
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2580
  store i8* %188, i8** %189, align 8, !dbg !2581, !tbaa !438
  %190 = icmp eq i8* %188, null, !dbg !2582
  br i1 %190, label %210, label %191, !dbg !2583

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 9, metadata !2570, metadata !DIExpression()), !dbg !2573
  %192 = icmp sgt i32 %185, -1, !dbg !2577
  br i1 %192, label %200, label %193, !dbg !2577

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2577
  store i32 %194, i32* %8, align 8, !dbg !2577
  %195 = icmp ult i32 %185, -7, !dbg !2577
  br i1 %195, label %196, label %200, !dbg !2577

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2577
  %198 = sext i32 %185 to i64, !dbg !2577
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2577
  br label %203, !dbg !2577

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2577
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2577
  store i8* %202, i8** %10, align 8, !dbg !2577
  br label %203, !dbg !2577

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2577
  %206 = load i8*, i8** %205, align 8, !dbg !2577
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2580
  store i8* %206, i8** %207, align 8, !dbg !2581, !tbaa !438
  %208 = icmp eq i8* %206, null, !dbg !2582
  %209 = select i1 %208, i64 9, i64 10, !dbg !2583
  br label %210, !dbg !2583

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2584
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2585
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2586
  ret void, !dbg !2586
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2587 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2591, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %1, metadata !2592, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %2, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %3, metadata !2594, metadata !DIExpression()), !dbg !2596
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2597
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2597
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.va_start(i8* nonnull %7), !dbg !2599
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2600
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2600, !tbaa.struct !787
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2600
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2600
  call void @llvm.va_end(i8* nonnull %7), !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2602
  ret void, !dbg !2602
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2603 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2604, !tbaa !438
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.84, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2604
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.101, i64 0, i64 0), i32 noundef 5) #32, !dbg !2605
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.102, i64 0, i64 0)) #32, !dbg !2605
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #32, !dbg !2606
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.103, i64 0, i64 0)) #32, !dbg !2606
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !2607
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !2607
  ret void, !dbg !2608
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2609 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2614, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64 %1, metadata !2615, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64 %2, metadata !2616, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()) #32, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %1, metadata !2621, metadata !DIExpression()) #32, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %2, metadata !2622, metadata !DIExpression()) #32, !dbg !2623
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2625
  call void @llvm.dbg.value(metadata i8* %4, metadata !2626, metadata !DIExpression()) #32, !dbg !2631
  %5 = icmp eq i8* %4, null, !dbg !2633
  br i1 %5, label %6, label %7, !dbg !2635

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2636
  unreachable, !dbg !2636

7:                                                ; preds = %3
  ret i8* %4, !dbg !2637
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2619 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i64 %1, metadata !2621, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i64 %2, metadata !2622, metadata !DIExpression()), !dbg !2638
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %4, metadata !2626, metadata !DIExpression()) #32, !dbg !2640
  %5 = icmp eq i8* %4, null, !dbg !2642
  br i1 %5, label %6, label %7, !dbg !2643

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2644
  unreachable, !dbg !2644

7:                                                ; preds = %3
  ret i8* %4, !dbg !2645
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2646 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2650, metadata !DIExpression()), !dbg !2651
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %2, metadata !2626, metadata !DIExpression()) #32, !dbg !2653
  %3 = icmp eq i8* %2, null, !dbg !2655
  br i1 %3, label %4, label %5, !dbg !2656

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2657
  unreachable, !dbg !2657

5:                                                ; preds = %1
  ret i8* %2, !dbg !2658
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2659 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %0, metadata !2665, metadata !DIExpression()) #32, !dbg !2669
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2671
  call void @llvm.dbg.value(metadata i8* %2, metadata !2626, metadata !DIExpression()) #32, !dbg !2672
  %3 = icmp eq i8* %2, null, !dbg !2674
  br i1 %3, label %4, label %5, !dbg !2675

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2676
  unreachable, !dbg !2676

5:                                                ; preds = %1
  ret i8* %2, !dbg !2677
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2678 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i64 %0, metadata !2650, metadata !DIExpression()) #32, !dbg !2684
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %2, metadata !2626, metadata !DIExpression()) #32, !dbg !2687
  %3 = icmp eq i8* %2, null, !dbg !2689
  br i1 %3, label %4, label %5, !dbg !2690

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2691
  unreachable, !dbg !2691

5:                                                ; preds = %1
  ret i8* %2, !dbg !2692
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2693 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2697, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %1, metadata !2698, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #32, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %1, metadata !2704, metadata !DIExpression()) #32, !dbg !2705
  %3 = icmp eq i64 %1, 0, !dbg !2707
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2707
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2708
  call void @llvm.dbg.value(metadata i8* %5, metadata !2626, metadata !DIExpression()) #32, !dbg !2709
  %6 = icmp eq i8* %5, null, !dbg !2711
  br i1 %6, label %7, label %8, !dbg !2712

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2713
  unreachable, !dbg !2713

8:                                                ; preds = %2
  ret i8* %5, !dbg !2714
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2715 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2719, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 %1, metadata !2720, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8* %0, metadata !2722, metadata !DIExpression()) #32, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %1, metadata !2725, metadata !DIExpression()) #32, !dbg !2726
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #32, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %1, metadata !2704, metadata !DIExpression()) #32, !dbg !2728
  %3 = icmp eq i64 %1, 0, !dbg !2730
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2730
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2731
  call void @llvm.dbg.value(metadata i8* %5, metadata !2626, metadata !DIExpression()) #32, !dbg !2732
  %6 = icmp eq i8* %5, null, !dbg !2734
  br i1 %6, label %7, label %8, !dbg !2735

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2736
  unreachable, !dbg !2736

8:                                                ; preds = %2
  ret i8* %5, !dbg !2737
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2738 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %2, metadata !2744, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8* %0, metadata !2746, metadata !DIExpression()) #32, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %1, metadata !2749, metadata !DIExpression()) #32, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %2, metadata !2750, metadata !DIExpression()) #32, !dbg !2751
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2753
  call void @llvm.dbg.value(metadata i8* %4, metadata !2626, metadata !DIExpression()) #32, !dbg !2754
  %5 = icmp eq i8* %4, null, !dbg !2756
  br i1 %5, label %6, label %7, !dbg !2757

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2758
  unreachable, !dbg !2758

7:                                                ; preds = %3
  ret i8* %4, !dbg !2759
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2760 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %1, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* null, metadata !2618, metadata !DIExpression()) #32, !dbg !2767
  call void @llvm.dbg.value(metadata i64 %0, metadata !2621, metadata !DIExpression()) #32, !dbg !2767
  call void @llvm.dbg.value(metadata i64 %1, metadata !2622, metadata !DIExpression()) #32, !dbg !2767
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2769
  call void @llvm.dbg.value(metadata i8* %3, metadata !2626, metadata !DIExpression()) #32, !dbg !2770
  %4 = icmp eq i8* %3, null, !dbg !2772
  br i1 %4, label %5, label %6, !dbg !2773

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2774
  unreachable, !dbg !2774

6:                                                ; preds = %2
  ret i8* %3, !dbg !2775
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2776 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2780, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %1, metadata !2781, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8* null, metadata !2742, metadata !DIExpression()) #32, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %0, metadata !2743, metadata !DIExpression()) #32, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %1, metadata !2744, metadata !DIExpression()) #32, !dbg !2783
  call void @llvm.dbg.value(metadata i8* null, metadata !2746, metadata !DIExpression()) #32, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %0, metadata !2749, metadata !DIExpression()) #32, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %1, metadata !2750, metadata !DIExpression()) #32, !dbg !2785
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2787
  call void @llvm.dbg.value(metadata i8* %3, metadata !2626, metadata !DIExpression()) #32, !dbg !2788
  %4 = icmp eq i8* %3, null, !dbg !2790
  br i1 %4, label %5, label %6, !dbg !2791

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2792
  unreachable, !dbg !2792

6:                                                ; preds = %2
  ret i8* %3, !dbg !2793
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2794 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2798, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64* %1, metadata !2799, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8* %0, metadata !371, metadata !DIExpression()) #32, !dbg !2801
  call void @llvm.dbg.value(metadata i64* %1, metadata !372, metadata !DIExpression()) #32, !dbg !2801
  call void @llvm.dbg.value(metadata i64 1, metadata !373, metadata !DIExpression()) #32, !dbg !2801
  %3 = load i64, i64* %1, align 8, !dbg !2803, !tbaa !1899
  call void @llvm.dbg.value(metadata i64 %3, metadata !374, metadata !DIExpression()) #32, !dbg !2801
  %4 = icmp eq i8* %0, null, !dbg !2804
  br i1 %4, label %5, label %8, !dbg !2806

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2807
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2810
  br label %15, !dbg !2810

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2811
  %10 = add nuw i64 %9, 1, !dbg !2811
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !2811
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2811
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %13, metadata !374, metadata !DIExpression()) #32, !dbg !2801
  br i1 %12, label %14, label %15, !dbg !2814

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !2815
  unreachable, !dbg !2815

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2801
  call void @llvm.dbg.value(metadata i64 %16, metadata !374, metadata !DIExpression()) #32, !dbg !2801
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()) #32, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %16, metadata !2621, metadata !DIExpression()) #32, !dbg !2816
  call void @llvm.dbg.value(metadata i64 1, metadata !2622, metadata !DIExpression()) #32, !dbg !2816
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %17, metadata !2626, metadata !DIExpression()) #32, !dbg !2819
  %18 = icmp eq i8* %17, null, !dbg !2821
  br i1 %18, label %19, label %20, !dbg !2822

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !2823
  unreachable, !dbg !2823

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !371, metadata !DIExpression()) #32, !dbg !2801
  store i64 %16, i64* %1, align 8, !dbg !2824, !tbaa !1899
  ret i8* %17, !dbg !2825
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !366 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !371, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64* %1, metadata !372, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %2, metadata !373, metadata !DIExpression()), !dbg !2826
  %4 = load i64, i64* %1, align 8, !dbg !2827, !tbaa !1899
  call void @llvm.dbg.value(metadata i64 %4, metadata !374, metadata !DIExpression()), !dbg !2826
  %5 = icmp eq i8* %0, null, !dbg !2828
  br i1 %5, label %6, label %13, !dbg !2829

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2830
  br i1 %7, label %8, label %20, !dbg !2831

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %9, metadata !374, metadata !DIExpression()), !dbg !2826
  %10 = icmp ugt i64 %2, 128, !dbg !2834
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %12, metadata !374, metadata !DIExpression()), !dbg !2826
  br label %20, !dbg !2836

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2837
  %15 = add nuw i64 %14, 1, !dbg !2837
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2837
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2837
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %18, metadata !374, metadata !DIExpression()), !dbg !2826
  br i1 %17, label %19, label %20, !dbg !2838

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !2839
  unreachable, !dbg !2839

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2826
  call void @llvm.dbg.value(metadata i64 %21, metadata !374, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()) #32, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %21, metadata !2621, metadata !DIExpression()) #32, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %2, metadata !2622, metadata !DIExpression()) #32, !dbg !2840
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %22, metadata !2626, metadata !DIExpression()) #32, !dbg !2843
  %23 = icmp eq i8* %22, null, !dbg !2845
  br i1 %23, label %24, label %25, !dbg !2846

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !2847
  unreachable, !dbg !2847

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !371, metadata !DIExpression()), !dbg !2826
  store i64 %21, i64* %1, align 8, !dbg !2848, !tbaa !1899
  ret i8* %22, !dbg !2849
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !378 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !386, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64* %1, metadata !387, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 %2, metadata !388, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 %3, metadata !389, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 %4, metadata !390, metadata !DIExpression()), !dbg !2850
  %6 = load i64, i64* %1, align 8, !dbg !2851, !tbaa !1899
  call void @llvm.dbg.value(metadata i64 %6, metadata !391, metadata !DIExpression()), !dbg !2850
  %7 = ashr i64 %6, 1, !dbg !2852
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2852
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2852
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %10, metadata !392, metadata !DIExpression()), !dbg !2850
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %11, metadata !392, metadata !DIExpression()), !dbg !2850
  %12 = icmp sgt i64 %3, -1, !dbg !2855
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2857
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %15, metadata !392, metadata !DIExpression()), !dbg !2850
  %16 = icmp slt i64 %4, 0, !dbg !2858
  br i1 %16, label %17, label %30, !dbg !2858

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2858
  br i1 %18, label %19, label %24, !dbg !2858

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2858
  %21 = udiv i64 9223372036854775807, %20, !dbg !2858
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2858
  br i1 %23, label %46, label %43, !dbg !2858

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2858
  br i1 %25, label %43, label %26, !dbg !2858

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2858
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2858
  %29 = icmp ult i64 %28, %15, !dbg !2858
  br i1 %29, label %46, label %43, !dbg !2858

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2858
  br i1 %31, label %43, label %32, !dbg !2858

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2858
  br i1 %33, label %34, label %40, !dbg !2858

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2858
  br i1 %35, label %43, label %36, !dbg !2858

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2858
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2858
  %39 = icmp ult i64 %38, %4, !dbg !2858
  br i1 %39, label %46, label %43, !dbg !2858

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2858
  %42 = icmp ult i64 %41, %15, !dbg !2858
  br i1 %42, label %46, label %43, !dbg !2858

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !393, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2850
  %44 = mul i64 %15, %4, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %44, metadata !393, metadata !DIExpression()), !dbg !2850
  %45 = icmp slt i64 %44, 128, !dbg !2858
  br i1 %45, label %46, label %52, !dbg !2858

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !394, metadata !DIExpression()), !dbg !2850
  %48 = sdiv i64 %47, %4, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %48, metadata !392, metadata !DIExpression()), !dbg !2850
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %51, metadata !393, metadata !DIExpression()), !dbg !2850
  br label %52, !dbg !2863

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2850
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2850
  call void @llvm.dbg.value(metadata i64 %54, metadata !393, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 %53, metadata !392, metadata !DIExpression()), !dbg !2850
  %55 = icmp eq i8* %0, null, !dbg !2864
  br i1 %55, label %56, label %57, !dbg !2866

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2867, !tbaa !1899
  br label %57, !dbg !2868

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2869
  %59 = icmp slt i64 %58, %2, !dbg !2871
  br i1 %59, label %60, label %97, !dbg !2872

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2873
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2873
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %63, metadata !392, metadata !DIExpression()), !dbg !2850
  br i1 %62, label %96, label %64, !dbg !2874

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2875
  br i1 %66, label %96, label %67, !dbg !2875

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2876

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2876
  br i1 %69, label %70, label %75, !dbg !2876

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2876
  %72 = udiv i64 9223372036854775807, %71, !dbg !2876
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2876
  br i1 %74, label %96, label %94, !dbg !2876

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2876
  br i1 %76, label %94, label %77, !dbg !2876

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2876
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2876
  %80 = icmp ult i64 %79, %63, !dbg !2876
  br i1 %80, label %96, label %94, !dbg !2876

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2876
  br i1 %82, label %94, label %83, !dbg !2876

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2876
  br i1 %84, label %85, label %91, !dbg !2876

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2876
  br i1 %86, label %94, label %87, !dbg !2876

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2876
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2876
  %90 = icmp ult i64 %89, %4, !dbg !2876
  br i1 %90, label %96, label %94, !dbg !2876

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2876
  %93 = icmp ult i64 %92, %63, !dbg !2876
  br i1 %93, label %96, label %94, !dbg !2876

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !393, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2850
  %95 = mul i64 %63, %4, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %95, metadata !393, metadata !DIExpression()), !dbg !2850
  br label %97, !dbg !2877

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !2878
  unreachable, !dbg !2878

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2850
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2850
  call void @llvm.dbg.value(metadata i64 %99, metadata !393, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 %98, metadata !392, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8* %0, metadata !2697, metadata !DIExpression()) #32, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %99, metadata !2698, metadata !DIExpression()) #32, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #32, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %99, metadata !2704, metadata !DIExpression()) #32, !dbg !2881
  %100 = icmp eq i64 %99, 0, !dbg !2883
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2883
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %102, metadata !2626, metadata !DIExpression()) #32, !dbg !2885
  %103 = icmp eq i8* %102, null, !dbg !2887
  br i1 %103, label %104, label %105, !dbg !2888

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !2889
  unreachable, !dbg !2889

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !386, metadata !DIExpression()), !dbg !2850
  store i64 %98, i64* %1, align 8, !dbg !2890, !tbaa !1899
  ret i8* %102, !dbg !2891
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2892 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %0, metadata !2896, metadata !DIExpression()) #32, !dbg !2900
  call void @llvm.dbg.value(metadata i64 1, metadata !2899, metadata !DIExpression()) #32, !dbg !2900
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %2, metadata !2626, metadata !DIExpression()) #32, !dbg !2903
  %3 = icmp eq i8* %2, null, !dbg !2905
  br i1 %3, label %4, label %5, !dbg !2906

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2907
  unreachable, !dbg !2907

5:                                                ; preds = %1
  ret i8* %2, !dbg !2908
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2897 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2896, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i64 %1, metadata !2899, metadata !DIExpression()), !dbg !2909
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2910
  call void @llvm.dbg.value(metadata i8* %3, metadata !2626, metadata !DIExpression()) #32, !dbg !2911
  %4 = icmp eq i8* %3, null, !dbg !2913
  br i1 %4, label %5, label %6, !dbg !2914

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2915
  unreachable, !dbg !2915

6:                                                ; preds = %2
  ret i8* %3, !dbg !2916
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2917 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %0, metadata !2921, metadata !DIExpression()) #32, !dbg !2925
  call void @llvm.dbg.value(metadata i64 1, metadata !2924, metadata !DIExpression()) #32, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %0, metadata !2927, metadata !DIExpression()) #32, !dbg !2931
  call void @llvm.dbg.value(metadata i64 1, metadata !2930, metadata !DIExpression()) #32, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %0, metadata !2927, metadata !DIExpression()) #32, !dbg !2931
  call void @llvm.dbg.value(metadata i64 1, metadata !2930, metadata !DIExpression()) #32, !dbg !2931
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2933
  call void @llvm.dbg.value(metadata i8* %2, metadata !2626, metadata !DIExpression()) #32, !dbg !2934
  %3 = icmp eq i8* %2, null, !dbg !2936
  br i1 %3, label %4, label %5, !dbg !2937

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2938
  unreachable, !dbg !2938

5:                                                ; preds = %1
  ret i8* %2, !dbg !2939
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2922 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2921, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %0, metadata !2927, metadata !DIExpression()) #32, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()) #32, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %0, metadata !2927, metadata !DIExpression()) #32, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()) #32, !dbg !2941
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %3, metadata !2626, metadata !DIExpression()) #32, !dbg !2944
  %4 = icmp eq i8* %3, null, !dbg !2946
  br i1 %4, label %5, label %6, !dbg !2947

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2948
  unreachable, !dbg !2948

6:                                                ; preds = %2
  ret i8* %3, !dbg !2949
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2950 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2650, metadata !DIExpression()) #32, !dbg !2957
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2959
  call void @llvm.dbg.value(metadata i8* %3, metadata !2626, metadata !DIExpression()) #32, !dbg !2960
  %4 = icmp eq i8* %3, null, !dbg !2962
  br i1 %4, label %5, label %6, !dbg !2963

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2964
  unreachable, !dbg !2964

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2965, metadata !DIExpression()) #32, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %0, metadata !2971, metadata !DIExpression()) #32, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %1, metadata !2972, metadata !DIExpression()) #32, !dbg !2973
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2975
  ret i8* %3, !dbg !2976
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2977 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %1, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %1, metadata !2663, metadata !DIExpression()) #32, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %1, metadata !2665, metadata !DIExpression()) #32, !dbg !2986
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2988
  call void @llvm.dbg.value(metadata i8* %3, metadata !2626, metadata !DIExpression()) #32, !dbg !2989
  %4 = icmp eq i8* %3, null, !dbg !2991
  br i1 %4, label %5, label %6, !dbg !2992

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2993
  unreachable, !dbg !2993

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2965, metadata !DIExpression()) #32, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %0, metadata !2971, metadata !DIExpression()) #32, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %1, metadata !2972, metadata !DIExpression()) #32, !dbg !2994
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2996
  ret i8* %3, !dbg !2997
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2998 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3002, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %1, metadata !3003, metadata !DIExpression()), !dbg !3005
  %3 = add nsw i64 %1, 1, !dbg !3006
  call void @llvm.dbg.value(metadata i64 %3, metadata !2663, metadata !DIExpression()) #32, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %3, metadata !2665, metadata !DIExpression()) #32, !dbg !3009
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3011
  call void @llvm.dbg.value(metadata i8* %4, metadata !2626, metadata !DIExpression()) #32, !dbg !3012
  %5 = icmp eq i8* %4, null, !dbg !3014
  br i1 %5, label %6, label %7, !dbg !3015

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3016
  unreachable, !dbg !3016

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3004, metadata !DIExpression()), !dbg !3005
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3017
  store i8 0, i8* %8, align 1, !dbg !3018, !tbaa !533
  call void @llvm.dbg.value(metadata i8* %4, metadata !2965, metadata !DIExpression()) #32, !dbg !3019
  call void @llvm.dbg.value(metadata i8* %0, metadata !2971, metadata !DIExpression()) #32, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %1, metadata !2972, metadata !DIExpression()) #32, !dbg !3019
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3021
  ret i8* %4, !dbg !3022
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()), !dbg !3026
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !3027
  %3 = add i64 %2, 1, !dbg !3028
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()) #32, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %3, metadata !2955, metadata !DIExpression()) #32, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %3, metadata !2650, metadata !DIExpression()) #32, !dbg !3031
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %4, metadata !2626, metadata !DIExpression()) #32, !dbg !3034
  %5 = icmp eq i8* %4, null, !dbg !3036
  br i1 %5, label %6, label %7, !dbg !3037

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3038
  unreachable, !dbg !3038

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2965, metadata !DIExpression()) #32, !dbg !3039
  call void @llvm.dbg.value(metadata i8* %0, metadata !2971, metadata !DIExpression()) #32, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %3, metadata !2972, metadata !DIExpression()) #32, !dbg !3039
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3041
  ret i8* %4, !dbg !3042
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3043 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3048, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %1, metadata !3045, metadata !DIExpression()), !dbg !3049
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.115, i64 0, i64 0), i32 noundef 5) #32, !dbg !3048
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i64 0, i64 0), i8* noundef %2) #32, !dbg !3048
  %3 = icmp eq i32 %1, 0, !dbg !3048
  tail call void @llvm.assume(i1 %3), !dbg !3048
  tail call void @abort() #34, !dbg !3050
  unreachable, !dbg !3050
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3051 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3089, metadata !DIExpression()), !dbg !3094
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3095
  call void @llvm.dbg.value(metadata i1 undef, metadata !3090, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3094
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3096, metadata !DIExpression()), !dbg !3099
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3101
  %4 = load i32, i32* %3, align 8, !dbg !3101, !tbaa !3102
  %5 = and i32 %4, 32, !dbg !3103
  %6 = icmp eq i32 %5, 0, !dbg !3103
  call void @llvm.dbg.value(metadata i1 %6, metadata !3092, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3094
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3104
  %8 = icmp eq i32 %7, 0, !dbg !3105
  call void @llvm.dbg.value(metadata i1 %8, metadata !3093, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3094
  br i1 %6, label %9, label %19, !dbg !3106

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3108
  call void @llvm.dbg.value(metadata i1 %10, metadata !3090, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3094
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3109
  %12 = xor i1 %8, true, !dbg !3109
  %13 = sext i1 %12 to i32, !dbg !3109
  br i1 %11, label %22, label %14, !dbg !3109

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3110
  %16 = load i32, i32* %15, align 4, !dbg !3110, !tbaa !524
  %17 = icmp ne i32 %16, 9, !dbg !3111
  %18 = sext i1 %17 to i32, !dbg !3112
  br label %22, !dbg !3112

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3113

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3115
  store i32 0, i32* %21, align 4, !dbg !3117, !tbaa !524
  br label %22, !dbg !3115

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3094
  ret i32 %23, !dbg !3118
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3119 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3157, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 0, metadata !3158, metadata !DIExpression()), !dbg !3161
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %2, metadata !3159, metadata !DIExpression()), !dbg !3161
  %3 = icmp slt i32 %2, 0, !dbg !3163
  br i1 %3, label %4, label %6, !dbg !3165

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3166
  br label %24, !dbg !3167

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3168
  %8 = icmp eq i32 %7, 0, !dbg !3168
  br i1 %8, label %13, label %9, !dbg !3170

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3171
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3172
  %12 = icmp eq i64 %11, -1, !dbg !3173
  br i1 %12, label %16, label %13, !dbg !3174

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3175
  %15 = icmp eq i32 %14, 0, !dbg !3175
  br i1 %15, label %16, label %18, !dbg !3176

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3158, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 0, metadata !3160, metadata !DIExpression()), !dbg !3161
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %21, metadata !3160, metadata !DIExpression()), !dbg !3161
  br label %24, !dbg !3178

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3179
  %20 = load i32, i32* %19, align 4, !dbg !3179, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %20, metadata !3158, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 0, metadata !3160, metadata !DIExpression()), !dbg !3161
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %21, metadata !3160, metadata !DIExpression()), !dbg !3161
  %22 = icmp eq i32 %20, 0, !dbg !3180
  br i1 %22, label %24, label %23, !dbg !3178

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3182, !tbaa !524
  call void @llvm.dbg.value(metadata i32 -1, metadata !3160, metadata !DIExpression()), !dbg !3161
  br label %24, !dbg !3184

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3161
  ret i32 %25, !dbg !3185
}

; Function Attrs: nofree nounwind
declare !dbg !3186 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3187 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3188 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3191 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3229, metadata !DIExpression()), !dbg !3230
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3231
  br i1 %2, label %6, label %3, !dbg !3233

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3234
  %5 = icmp eq i32 %4, 0, !dbg !3234
  br i1 %5, label %6, label %8, !dbg !3235

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3236
  br label %17, !dbg !3237

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3238, metadata !DIExpression()) #32, !dbg !3243
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3245
  %10 = load i32, i32* %9, align 8, !dbg !3245, !tbaa !3102
  %11 = and i32 %10, 256, !dbg !3247
  %12 = icmp eq i32 %11, 0, !dbg !3247
  br i1 %12, label %15, label %13, !dbg !3248

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3249
  br label %15, !dbg !3249

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3250
  br label %17, !dbg !3251

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3230
  ret i32 %18, !dbg !3252
}

; Function Attrs: nofree nounwind
declare !dbg !3253 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3254 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3293, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %1, metadata !3294, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 %2, metadata !3295, metadata !DIExpression()), !dbg !3299
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3300
  %5 = load i8*, i8** %4, align 8, !dbg !3300, !tbaa !3301
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3302
  %7 = load i8*, i8** %6, align 8, !dbg !3302, !tbaa !3303
  %8 = icmp eq i8* %5, %7, !dbg !3304
  br i1 %8, label %9, label %28, !dbg !3305

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3306
  %11 = load i8*, i8** %10, align 8, !dbg !3306, !tbaa !902
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3307
  %13 = load i8*, i8** %12, align 8, !dbg !3307, !tbaa !3308
  %14 = icmp eq i8* %11, %13, !dbg !3309
  br i1 %14, label %15, label %28, !dbg !3310

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3311
  %17 = load i8*, i8** %16, align 8, !dbg !3311, !tbaa !3312
  %18 = icmp eq i8* %17, null, !dbg !3313
  br i1 %18, label %19, label %28, !dbg !3314

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3315
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %21, metadata !3296, metadata !DIExpression()), !dbg !3317
  %22 = icmp eq i64 %21, -1, !dbg !3318
  br i1 %22, label %30, label %23, !dbg !3320

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3321
  %25 = load i32, i32* %24, align 8, !dbg !3322, !tbaa !3102
  %26 = and i32 %25, -17, !dbg !3322
  store i32 %26, i32* %24, align 8, !dbg !3322, !tbaa !3102
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3323
  store i64 %21, i64* %27, align 8, !dbg !3324, !tbaa !3325
  br label %30, !dbg !3326

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3327
  br label %30, !dbg !3328

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3299
  ret i32 %31, !dbg !3329
}

; Function Attrs: nofree nounwind
declare !dbg !3330 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3333 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3338, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8* %1, metadata !3339, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %2, metadata !3340, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3341, metadata !DIExpression()), !dbg !3343
  %5 = icmp eq i8* %1, null, !dbg !3344
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3346
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), i8* %1, !dbg !3346
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %8, metadata !3340, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8* %7, metadata !3339, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i32* %6, metadata !3338, metadata !DIExpression()), !dbg !3343
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3347
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3349
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3341, metadata !DIExpression()), !dbg !3343
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3350
  call void @llvm.dbg.value(metadata i64 %11, metadata !3342, metadata !DIExpression()), !dbg !3343
  %12 = icmp ult i64 %11, -3, !dbg !3351
  br i1 %12, label %13, label %18, !dbg !3353

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3354
  %15 = icmp eq i32 %14, 0, !dbg !3354
  br i1 %15, label %16, label %30, !dbg !3355

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3356, metadata !DIExpression()) #32, !dbg !3361
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3363, metadata !DIExpression()) #32, !dbg !3368
  call void @llvm.dbg.value(metadata i32 0, metadata !3366, metadata !DIExpression()) #32, !dbg !3368
  call void @llvm.dbg.value(metadata i64 8, metadata !3367, metadata !DIExpression()) #32, !dbg !3368
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3370
  store i64 0, i64* %17, align 1, !dbg !3370
  br label %30, !dbg !3371

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3372
  br i1 %19, label %20, label %21, !dbg !3374

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3375
  unreachable, !dbg !3375

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3376

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3378
  br i1 %24, label %30, label %25, !dbg !3379

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3380
  br i1 %26, label %30, label %27, !dbg !3383

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3384, !tbaa !533
  %29 = zext i8 %28 to i32, !dbg !3385
  store i32 %29, i32* %6, align 4, !dbg !3386, !tbaa !524
  br label %30, !dbg !3387

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3343
  ret i64 %31, !dbg !3388
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3389 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3395 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3397, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %1, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %2, metadata !3399, metadata !DIExpression()), !dbg !3401
  %4 = icmp eq i64 %2, 0, !dbg !3402
  br i1 %4, label %8, label %5, !dbg !3402

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3402
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3402
  br i1 %7, label %13, label %8, !dbg !3402

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3400, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3401
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3400, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3401
  %9 = mul i64 %2, %1, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %9, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8* %0, metadata !3404, metadata !DIExpression()) #32, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %9, metadata !3407, metadata !DIExpression()) #32, !dbg !3408
  %10 = icmp eq i64 %9, 0, !dbg !3410
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3410
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3411
  br label %15, !dbg !3412

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3400, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3401
  %14 = tail call i32* @__errno_location() #35, !dbg !3413
  store i32 12, i32* %14, align 4, !dbg !3415, !tbaa !524
  br label %15, !dbg !3416

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3401
  ret i8* %16, !dbg !3417
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3418 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3422, metadata !DIExpression()), !dbg !3427
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3428
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3428
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3423, metadata !DIExpression()), !dbg !3429
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3430
  %5 = icmp eq i32 %4, 0, !dbg !3430
  br i1 %5, label %6, label %13, !dbg !3432

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3433, metadata !DIExpression()) #32, !dbg !3437
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i64 0, i64 0), metadata !3436, metadata !DIExpression()) #32, !dbg !3437
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i64 0, i64 0), i64 2), !dbg !3440
  %8 = icmp eq i32 %7, 0, !dbg !3441
  br i1 %8, label %12, label %9, !dbg !3442

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3433, metadata !DIExpression()) #32, !dbg !3443
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0), metadata !3436, metadata !DIExpression()) #32, !dbg !3443
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0), i64 6), !dbg !3445
  %11 = icmp eq i32 %10, 0, !dbg !3446
  br i1 %11, label %12, label %13, !dbg !3447

12:                                               ; preds = %9, %6
  br label %13, !dbg !3448

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3427
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3449
  ret i1 %14, !dbg !3449
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3450 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8* %1, metadata !3455, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %2, metadata !3456, metadata !DIExpression()), !dbg !3457
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3458
  ret i32 %4, !dbg !3459
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()), !dbg !3465
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3466
  ret i8* %2, !dbg !3467
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3468 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3470, metadata !DIExpression()), !dbg !3472
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3473
  call void @llvm.dbg.value(metadata i8* %2, metadata !3471, metadata !DIExpression()), !dbg !3472
  ret i8* %2, !dbg !3474
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3475 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3477, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %1, metadata !3478, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %2, metadata !3479, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %0, metadata !3470, metadata !DIExpression()) #32, !dbg !3485
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3487
  call void @llvm.dbg.value(metadata i8* %4, metadata !3471, metadata !DIExpression()) #32, !dbg !3485
  call void @llvm.dbg.value(metadata i8* %4, metadata !3480, metadata !DIExpression()), !dbg !3484
  %5 = icmp eq i8* %4, null, !dbg !3488
  br i1 %5, label %6, label %9, !dbg !3489

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3490
  br i1 %7, label %19, label %8, !dbg !3493

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3494, !tbaa !533
  br label %19, !dbg !3495

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3496
  call void @llvm.dbg.value(metadata i64 %10, metadata !3481, metadata !DIExpression()), !dbg !3497
  %11 = icmp ult i64 %10, %2, !dbg !3498
  br i1 %11, label %12, label %14, !dbg !3500

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %1, metadata !3503, metadata !DIExpression()) #32, !dbg !3508
  call void @llvm.dbg.value(metadata i8* %4, metadata !3506, metadata !DIExpression()) #32, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %13, metadata !3507, metadata !DIExpression()) #32, !dbg !3508
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3510
  br label %19, !dbg !3511

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3512
  br i1 %15, label %19, label %16, !dbg !3515

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3516
  call void @llvm.dbg.value(metadata i8* %1, metadata !3503, metadata !DIExpression()) #32, !dbg !3518
  call void @llvm.dbg.value(metadata i8* %4, metadata !3506, metadata !DIExpression()) #32, !dbg !3518
  call void @llvm.dbg.value(metadata i64 %17, metadata !3507, metadata !DIExpression()) #32, !dbg !3518
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3520
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3521
  store i8 0, i8* %18, align 1, !dbg !3522, !tbaa !533
  br label %19, !dbg !3523

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3524
  ret i32 %20, !dbg !3525
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

!llvm.dbg.cu = !{!9, !124, !129, !136, !333, !353, !177, !194, !204, !236, !355, !325, !362, !396, !398, !400, !402, !404, !339, !406, !409, !411, !413}
!llvm.ident = !{!415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415, !415}
!llvm.module.flags = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !41)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !28, globals: !40, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/whoami.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5c047d082e30b773191158ad69a0e0a3")
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
!28 = !{!6, !29, !30, !35, !36, !37, !39}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !31, line: 102, baseType: !32)
!31 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !33, line: 73, baseType: !34)
!33 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !34)
!38 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !{!0}
!41 = !{!42, !43, !44, !47, !49, !50, !51, !55, !56, !57, !58, !60, !116, !117, !118, !120, !121}
!42 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!43 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!44 = !DILocalVariable(name: "term", scope: !45, file: !3, line: 585, type: !6)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 582, column: 5)
!46 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!47 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !48)
!48 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!49 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!50 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!51 = !DILocalVariable(name: "s", scope: !52, file: !3, line: 608, type: !6)
!52 = distinct !DILexicalBlock(scope: !53, file: !3, line: 605, column: 5)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 604, column: 12)
!54 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!55 = !DILocalVariable(name: "spaces", scope: !52, file: !3, line: 609, type: !37)
!56 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !37)
!57 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!58 = !DILocalVariable(name: "__ptr", scope: !59, file: !3, line: 644, type: !6)
!59 = distinct !DILexicalBlock(scope: !2, file: !3, line: 644, column: 3)
!60 = !DILocalVariable(name: "__stream", scope: !59, file: !3, line: 644, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !64)
!63 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !66)
!65 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!66 = !{!67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !83, !85, !86, !87, !90, !91, !93, !97, !100, !102, !105, !108, !109, !110, !111, !112}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 51, baseType: !35, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 54, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 55, baseType: !69, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 56, baseType: !69, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 57, baseType: !69, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 58, baseType: !69, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 59, baseType: !69, size: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 60, baseType: !69, size: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 61, baseType: !69, size: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 64, baseType: !69, size: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 65, baseType: !69, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 66, baseType: !69, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 68, baseType: !81, size: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 36, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 70, baseType: !84, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 72, baseType: !35, size: 32, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 73, baseType: !35, size: 32, offset: 928)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 74, baseType: !88, size: 64, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !33, line: 152, baseType: !89)
!89 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 77, baseType: !36, size: 16, offset: 1024)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !64, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!92 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !64, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !64, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !65, line: 43, baseType: null)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !33, line: 153, baseType: !89)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !64, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !65, line: 37, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !64, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !65, line: 38, flags: DIFlagFwdDecl)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !64, file: !65, line: 93, baseType: !84, size: 64, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !64, file: !65, line: 94, baseType: !29, size: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 95, baseType: !37, size: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 96, baseType: !35, size: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DILocalVariable(name: "__cnt", scope: !59, file: !3, line: 644, type: !37)
!117 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!118 = !DILocalVariable(name: "__ptr", scope: !119, file: !3, line: 686, type: !6)
!119 = distinct !DILexicalBlock(scope: !2, file: !3, line: 686, column: 3)
!120 = !DILocalVariable(name: "__stream", scope: !119, file: !3, line: 686, type: !61)
!121 = !DILocalVariable(name: "__cnt", scope: !119, file: !3, line: 686, type: !37)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "Version", scope: !124, file: !125, line: 3, type: !6, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !126, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!126 = !{!122}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "file_name", scope: !129, file: !130, line: 45, type: !6, isLocal: true, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !131, splitDebugInlining: false, nameTableKind: None)
!130 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!131 = !{!127, !132}
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !129, file: !130, line: 55, type: !48, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !136, file: !137, line: 66, type: !172, isLocal: false, isDefinition: true)
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !138, globals: !139, splitDebugInlining: false, nameTableKind: None)
!137 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!138 = !{!29, !39}
!139 = !{!140, !166, !134, !168, !170}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "old_file_name", scope: !142, file: !137, line: 304, type: !6, isLocal: true, isDefinition: true)
!142 = distinct !DISubprogram(name: "verror_at_line", scope: !137, file: !137, line: 298, type: !143, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !159)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !35, !35, !6, !14, !6, !145}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !147)
!146 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !150, baseType: !151)
!150 = !DIFile(filename: "lib/error.c", directory: "/src")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !153)
!152 = !DINamespace(name: "std", scope: null)
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !151, file: !150, baseType: !29, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !151, file: !150, baseType: !29, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !151, file: !150, baseType: !29, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !151, file: !150, baseType: !35, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !151, file: !150, baseType: !35, size: 32, offset: 224)
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DILocalVariable(name: "status", arg: 1, scope: !142, file: !137, line: 298, type: !35)
!161 = !DILocalVariable(name: "errnum", arg: 2, scope: !142, file: !137, line: 298, type: !35)
!162 = !DILocalVariable(name: "file_name", arg: 3, scope: !142, file: !137, line: 298, type: !6)
!163 = !DILocalVariable(name: "line_number", arg: 4, scope: !142, file: !137, line: 298, type: !14)
!164 = !DILocalVariable(name: "message", arg: 5, scope: !142, file: !137, line: 298, type: !6)
!165 = !DILocalVariable(name: "args", arg: 6, scope: !142, file: !137, line: 298, type: !145)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "old_line_number", scope: !142, file: !137, line: 305, type: !14, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "error_message_count", scope: !136, file: !137, line: 69, type: !14, isLocal: false, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !136, file: !137, line: 295, type: !35, isLocal: false, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "long_options", scope: !177, file: !178, line: 34, type: !180, isLocal: true, isDefinition: true)
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !179, splitDebugInlining: false, nameTableKind: None)
!178 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!179 = !{!175}
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 768, elements: !190)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !183, line: 50, size: 256, elements: !184)
!183 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!184 = !{!185, !186, !187, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !183, line: 52, baseType: !6, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !182, file: !183, line: 55, baseType: !35, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !182, file: !183, line: 56, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !182, file: !183, line: 57, baseType: !35, size: 32, offset: 192)
!190 = !{!191}
!191 = !DISubrange(count: 3)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "program_name", scope: !194, file: !195, line: 31, type: !6, isLocal: false, isDefinition: true)
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !196, globals: !197, splitDebugInlining: false, nameTableKind: None)
!195 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!196 = !{!69}
!197 = !{!192}
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "utf07FF", scope: !200, file: !201, line: 46, type: !231, isLocal: true, isDefinition: true)
!200 = distinct !DISubprogram(name: "proper_name_lite", scope: !201, file: !201, line: 38, type: !202, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !206)
!201 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!202 = !DISubroutineType(types: !203)
!203 = !{!6, !6, !6}
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !205, splitDebugInlining: false, nameTableKind: None)
!205 = !{!198}
!206 = !{!207, !208, !209, !210, !215}
!207 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !200, file: !201, line: 38, type: !6)
!208 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !200, file: !201, line: 38, type: !6)
!209 = !DILocalVariable(name: "translation", scope: !200, file: !201, line: 40, type: !6)
!210 = !DILocalVariable(name: "w", scope: !200, file: !201, line: 47, type: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !212, line: 37, baseType: !213)
!212 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !33, line: 57, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !33, line: 42, baseType: !14)
!215 = !DILocalVariable(name: "mbs", scope: !200, file: !201, line: 48, type: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 6, baseType: !218)
!217 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !219, line: 21, baseType: !220)
!219 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 13, size: 64, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !220, file: !219, line: 15, baseType: !35, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !220, file: !219, line: 20, baseType: !224, size: 32, offset: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !220, file: !219, line: 16, size: 32, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !224, file: !219, line: 18, baseType: !14, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !224, file: !219, line: 19, baseType: !228, size: 32)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 4)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 2)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !236, file: !237, line: 76, type: !319, isLocal: false, isDefinition: true)
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !238, retainedTypes: !258, globals: !259, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!238 = !{!239, !253, !12}
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !240, line: 42, baseType: !14, size: 32, elements: !241)
!240 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!242 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!243 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!244 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!245 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!246 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!247 = !DIEnumerator(name: "c_quoting_style", value: 5)
!248 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!249 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!250 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!251 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!252 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !240, line: 254, baseType: !14, size: 32, elements: !254)
!254 = !{!255, !256, !257}
!255 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!256 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!257 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!258 = !{!35, !36, !37}
!259 = !{!234, !260, !266, !278, !280, !285, !308, !315, !317}
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !236, file: !237, line: 92, type: !262, isLocal: false, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 320, elements: !264)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!264 = !{!265}
!265 = !DISubrange(count: 10)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !236, file: !237, line: 1040, type: !268, isLocal: false, isDefinition: true)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !237, line: 56, size: 448, elements: !269)
!269 = !{!270, !271, !272, !276, !277}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !268, file: !237, line: 59, baseType: !239, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !237, line: 62, baseType: !35, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !268, file: !237, line: 66, baseType: !273, size: 256, offset: 64)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 8)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !268, file: !237, line: 69, baseType: !6, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !268, file: !237, line: 72, baseType: !6, size: 64, offset: 384)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !236, file: !237, line: 107, type: !268, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "slot0", scope: !236, file: !237, line: 831, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 256)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "quote", scope: !287, file: !237, line: 228, type: !306, isLocal: true, isDefinition: true)
!287 = distinct !DISubprogram(name: "gettext_quote", scope: !237, file: !237, line: 197, type: !288, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !290)
!288 = !DISubroutineType(types: !289)
!289 = !{!6, !6, !239}
!290 = !{!291, !292, !293, !294, !295}
!291 = !DILocalVariable(name: "msgid", arg: 1, scope: !287, file: !237, line: 197, type: !6)
!292 = !DILocalVariable(name: "s", arg: 2, scope: !287, file: !237, line: 197, type: !239)
!293 = !DILocalVariable(name: "translation", scope: !287, file: !237, line: 199, type: !6)
!294 = !DILocalVariable(name: "w", scope: !287, file: !237, line: 229, type: !211)
!295 = !DILocalVariable(name: "mbs", scope: !287, file: !237, line: 230, type: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 6, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !219, line: 21, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 13, size: 64, elements: !299)
!299 = !{!300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !298, file: !219, line: 15, baseType: !35, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !298, file: !219, line: 20, baseType: !302, size: 32, offset: 32)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !219, line: 16, size: 32, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !302, file: !219, line: 18, baseType: !14, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !302, file: !219, line: 19, baseType: !228, size: 32)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !307)
!307 = !{!233, !230}
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "slotvec", scope: !236, file: !237, line: 834, type: !310, isLocal: true, isDefinition: true)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !237, line: 823, size: 128, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !311, file: !237, line: 825, baseType: !37, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !311, file: !237, line: 826, baseType: !69, size: 64, offset: 64)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "nslots", scope: !236, file: !237, line: 832, type: !35, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "slotvec0", scope: !236, file: !237, line: 833, type: !311, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 704, elements: !321)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!321 = !{!322}
!322 = !DISubrange(count: 11)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !325, file: !326, line: 26, type: !328, isLocal: false, isDefinition: true)
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !327, splitDebugInlining: false, nameTableKind: None)
!326 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!327 = !{!323}
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 47)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "exit_failure", scope: !333, file: !334, line: 24, type: !336, isLocal: false, isDefinition: true)
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !335, splitDebugInlining: false, nameTableKind: None)
!334 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!335 = !{!331}
!336 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "internal_state", scope: !339, file: !340, line: 97, type: !343, isLocal: true, isDefinition: true)
!339 = distinct !DICompileUnit(language: DW_LANG_C99, file: !340, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !341, globals: !342, splitDebugInlining: false, nameTableKind: None)
!340 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!341 = !{!29, !37, !39}
!342 = !{!337}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !217, line: 6, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !219, line: 21, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 13, size: 64, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !345, file: !219, line: 15, baseType: !35, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !345, file: !219, line: 20, baseType: !349, size: 32, offset: 32)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !219, line: 16, size: 32, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !349, file: !219, line: 18, baseType: !14, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !349, file: !219, line: 19, baseType: !228, size: 32)
!353 = distinct !DICompileUnit(language: DW_LANG_C99, file: !354, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!354 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!355 = distinct !DICompileUnit(language: DW_LANG_C99, file: !356, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !357, retainedTypes: !361, splitDebugInlining: false, nameTableKind: None)
!356 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!357 = !{!358}
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !356, line: 40, baseType: !14, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!361 = !{!29}
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !364, retainedTypes: !395, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!364 = !{!365, !377}
!365 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !366, file: !363, line: 188, baseType: !14, size: 32, elements: !375)
!366 = distinct !DISubprogram(name: "x2nrealloc", scope: !363, file: !363, line: 176, type: !367, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !370)
!367 = !DISubroutineType(types: !368)
!368 = !{!29, !29, !369, !37}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!370 = !{!371, !372, !373, !374}
!371 = !DILocalVariable(name: "p", arg: 1, scope: !366, file: !363, line: 176, type: !29)
!372 = !DILocalVariable(name: "pn", arg: 2, scope: !366, file: !363, line: 176, type: !369)
!373 = !DILocalVariable(name: "s", arg: 3, scope: !366, file: !363, line: 176, type: !37)
!374 = !DILocalVariable(name: "n", scope: !366, file: !363, line: 178, type: !37)
!375 = !{!376}
!376 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !378, file: !363, line: 228, baseType: !14, size: 32, elements: !375)
!378 = distinct !DISubprogram(name: "xpalloc", scope: !363, file: !363, line: 223, type: !379, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !385)
!379 = !DISubroutineType(types: !380)
!380 = !{!29, !29, !381, !382, !384, !382}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !383, line: 130, baseType: !384)
!383 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !38, line: 35, baseType: !89)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394}
!386 = !DILocalVariable(name: "pa", arg: 1, scope: !378, file: !363, line: 223, type: !29)
!387 = !DILocalVariable(name: "pn", arg: 2, scope: !378, file: !363, line: 223, type: !381)
!388 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !378, file: !363, line: 223, type: !382)
!389 = !DILocalVariable(name: "n_max", arg: 4, scope: !378, file: !363, line: 223, type: !384)
!390 = !DILocalVariable(name: "s", arg: 5, scope: !378, file: !363, line: 223, type: !382)
!391 = !DILocalVariable(name: "n0", scope: !378, file: !363, line: 230, type: !382)
!392 = !DILocalVariable(name: "n", scope: !378, file: !363, line: 237, type: !382)
!393 = !DILocalVariable(name: "nbytes", scope: !378, file: !363, line: 248, type: !382)
!394 = !DILocalVariable(name: "adjusted_nbytes", scope: !378, file: !363, line: 252, type: !382)
!395 = !{!69, !29, !48, !89, !34}
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!398 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!399 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !361, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !361, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !408, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!408 = !{!48, !34, !29}
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!411 = distinct !DICompileUnit(language: DW_LANG_C99, file: !412, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!412 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!413 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !361, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!415 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!416 = !{i32 7, !"Dwarf Version", i32 5}
!417 = !{i32 2, !"Debug Info Version", i32 3}
!418 = !{i32 1, !"wchar_size", i32 4}
!419 = !{i32 1, !"branch-target-enforcement", i32 0}
!420 = !{i32 1, !"sign-return-address", i32 0}
!421 = !{i32 1, !"sign-return-address-all", i32 0}
!422 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!423 = !{i32 7, !"PIC Level", i32 2}
!424 = !{i32 7, !"PIE Level", i32 2}
!425 = !{i32 7, !"uwtable", i32 1}
!426 = !{i32 7, !"frame-pointer", i32 1}
!427 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 36, type: !428, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !35}
!430 = !{!431}
!431 = !DILocalVariable(name: "status", arg: 1, scope: !427, file: !10, line: 36, type: !35)
!432 = !DILocation(line: 0, scope: !427)
!433 = !DILocation(line: 38, column: 14, scope: !434)
!434 = distinct !DILexicalBlock(scope: !427, file: !10, line: 38, column: 7)
!435 = !DILocation(line: 38, column: 7, scope: !427)
!436 = !DILocation(line: 39, column: 5, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !10, line: 39, column: 5)
!438 = !{!439, !439, i64 0}
!439 = !{!"any pointer", !440, i64 0}
!440 = !{!"omnipotent char", !441, i64 0}
!441 = !{!"Simple C/C++ TBAA"}
!442 = !DILocation(line: 42, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !434, file: !10, line: 41, column: 5)
!444 = !DILocation(line: 43, column: 7, scope: !443)
!445 = !DILocation(line: 48, column: 7, scope: !443)
!446 = !DILocation(line: 49, column: 7, scope: !443)
!447 = !DILocalVariable(name: "program", arg: 1, scope: !448, file: !3, line: 836, type: !6)
!448 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !449, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !6}
!451 = !{!447, !452, !461, !462, !464, !465}
!452 = !DILocalVariable(name: "infomap", scope: !448, file: !3, line: 838, type: !453)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 896, elements: !459)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !448, file: !3, line: 838, size: 128, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !455, file: !3, line: 838, baseType: !6, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !455, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!459 = !{!460}
!460 = !DISubrange(count: 7)
!461 = !DILocalVariable(name: "node", scope: !448, file: !3, line: 848, type: !6)
!462 = !DILocalVariable(name: "map_prog", scope: !448, file: !3, line: 849, type: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!464 = !DILocalVariable(name: "lc_messages", scope: !448, file: !3, line: 861, type: !6)
!465 = !DILocalVariable(name: "url_program", scope: !448, file: !3, line: 874, type: !6)
!466 = !DILocation(line: 0, scope: !448, inlinedAt: !467)
!467 = distinct !DILocation(line: 50, column: 7, scope: !443)
!468 = !DILocation(line: 838, column: 3, scope: !448, inlinedAt: !467)
!469 = !DILocation(line: 838, column: 67, scope: !448, inlinedAt: !467)
!470 = !DILocation(line: 849, column: 36, scope: !448, inlinedAt: !467)
!471 = !DILocation(line: 851, column: 3, scope: !448, inlinedAt: !467)
!472 = !DILocalVariable(name: "__s1", arg: 1, scope: !473, file: !474, line: 1359, type: !6)
!473 = distinct !DISubprogram(name: "streq", scope: !474, file: !474, line: 1359, type: !475, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !477)
!474 = !DIFile(filename: "./lib/string.h", directory: "/src")
!475 = !DISubroutineType(types: !476)
!476 = !{!48, !6, !6}
!477 = !{!472, !478}
!478 = !DILocalVariable(name: "__s2", arg: 2, scope: !473, file: !474, line: 1359, type: !6)
!479 = !DILocation(line: 0, scope: !473, inlinedAt: !480)
!480 = distinct !DILocation(line: 851, column: 33, scope: !448, inlinedAt: !467)
!481 = !DILocation(line: 1361, column: 11, scope: !473, inlinedAt: !480)
!482 = !DILocation(line: 1361, column: 10, scope: !473, inlinedAt: !480)
!483 = !DILocation(line: 852, column: 13, scope: !448, inlinedAt: !467)
!484 = !DILocation(line: 851, column: 20, scope: !448, inlinedAt: !467)
!485 = !{!486, !439, i64 0}
!486 = !{!"infomap", !439, i64 0, !439, i64 8}
!487 = !DILocation(line: 851, column: 10, scope: !448, inlinedAt: !467)
!488 = !DILocation(line: 851, column: 28, scope: !448, inlinedAt: !467)
!489 = distinct !{!489, !471, !483, !490}
!490 = !{!"llvm.loop.mustprogress"}
!491 = !DILocation(line: 854, column: 17, scope: !492, inlinedAt: !467)
!492 = distinct !DILexicalBlock(scope: !448, file: !3, line: 854, column: 7)
!493 = !{!486, !439, i64 8}
!494 = !DILocation(line: 854, column: 7, scope: !492, inlinedAt: !467)
!495 = !DILocation(line: 854, column: 7, scope: !448, inlinedAt: !467)
!496 = !DILocation(line: 857, column: 3, scope: !448, inlinedAt: !467)
!497 = !DILocation(line: 861, column: 29, scope: !448, inlinedAt: !467)
!498 = !DILocation(line: 862, column: 7, scope: !499, inlinedAt: !467)
!499 = distinct !DILexicalBlock(scope: !448, file: !3, line: 862, column: 7)
!500 = !DILocation(line: 862, column: 19, scope: !499, inlinedAt: !467)
!501 = !DILocation(line: 862, column: 22, scope: !499, inlinedAt: !467)
!502 = !DILocation(line: 862, column: 7, scope: !448, inlinedAt: !467)
!503 = !DILocation(line: 868, column: 7, scope: !504, inlinedAt: !467)
!504 = distinct !DILexicalBlock(scope: !499, file: !3, line: 863, column: 5)
!505 = !DILocation(line: 870, column: 5, scope: !504, inlinedAt: !467)
!506 = !DILocation(line: 0, scope: !473, inlinedAt: !507)
!507 = distinct !DILocation(line: 874, column: 29, scope: !448, inlinedAt: !467)
!508 = !DILocation(line: 875, column: 3, scope: !448, inlinedAt: !467)
!509 = !DILocation(line: 877, column: 3, scope: !448, inlinedAt: !467)
!510 = !DILocation(line: 879, column: 1, scope: !448, inlinedAt: !467)
!511 = !DILocation(line: 52, column: 3, scope: !427)
!512 = !DISubprogram(name: "dcgettext", scope: !513, file: !513, line: 51, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!513 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!514 = !DISubroutineType(types: !515)
!515 = !{!69, !6, !6, !35}
!516 = !{}
!517 = !DISubprogram(name: "fputs_unlocked", scope: !146, file: !146, line: 691, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!518 = !DISubroutineType(types: !519)
!519 = !{!35, !520, !521}
!520 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!521 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!522 = !DILocation(line: 0, scope: !2)
!523 = !DILocation(line: 581, column: 7, scope: !46)
!524 = !{!525, !525, i64 0}
!525 = !{!"int", !440, i64 0}
!526 = !DILocation(line: 581, column: 19, scope: !46)
!527 = !DILocation(line: 581, column: 7, scope: !2)
!528 = !DILocation(line: 585, column: 26, scope: !45)
!529 = !DILocation(line: 0, scope: !45)
!530 = !DILocation(line: 586, column: 23, scope: !45)
!531 = !DILocation(line: 586, column: 28, scope: !45)
!532 = !DILocation(line: 586, column: 32, scope: !45)
!533 = !{!440, !440, i64 0}
!534 = !DILocation(line: 586, column: 38, scope: !45)
!535 = !DILocation(line: 0, scope: !473, inlinedAt: !536)
!536 = distinct !DILocation(line: 586, column: 41, scope: !45)
!537 = !DILocation(line: 1361, column: 11, scope: !473, inlinedAt: !536)
!538 = !DILocation(line: 1361, column: 10, scope: !473, inlinedAt: !536)
!539 = !DILocation(line: 586, column: 19, scope: !45)
!540 = !DILocation(line: 587, column: 5, scope: !45)
!541 = !DILocation(line: 588, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!543 = !DILocation(line: 588, column: 7, scope: !2)
!544 = !DILocation(line: 590, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !3, line: 589, column: 5)
!546 = !DILocation(line: 591, column: 7, scope: !545)
!547 = !DILocation(line: 595, column: 37, scope: !2)
!548 = !DILocation(line: 595, column: 35, scope: !2)
!549 = !DILocation(line: 596, column: 29, scope: !2)
!550 = !DILocation(line: 597, column: 8, scope: !54)
!551 = !DILocation(line: 597, column: 7, scope: !2)
!552 = !DILocation(line: 604, column: 24, scope: !53)
!553 = !DILocation(line: 604, column: 12, scope: !54)
!554 = !DILocation(line: 0, scope: !52)
!555 = !DILocation(line: 610, column: 16, scope: !52)
!556 = !DILocation(line: 610, column: 7, scope: !52)
!557 = !DILocation(line: 611, column: 21, scope: !52)
!558 = !{!559, !559, i64 0}
!559 = !{!"short", !440, i64 0}
!560 = !DILocation(line: 611, column: 19, scope: !52)
!561 = !DILocation(line: 611, column: 16, scope: !52)
!562 = !DILocation(line: 610, column: 30, scope: !52)
!563 = distinct !{!563, !556, !557, !490}
!564 = !DILocation(line: 612, column: 18, scope: !565)
!565 = distinct !DILexicalBlock(scope: !52, file: !3, line: 612, column: 11)
!566 = !DILocation(line: 612, column: 11, scope: !52)
!567 = !DILocation(line: 620, column: 23, scope: !2)
!568 = !DILocation(line: 625, column: 39, scope: !2)
!569 = !DILocation(line: 626, column: 3, scope: !2)
!570 = !DILocation(line: 626, column: 10, scope: !2)
!571 = !DILocation(line: 626, column: 21, scope: !2)
!572 = !DILocation(line: 628, column: 44, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 628, column: 11)
!574 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!575 = !DILocation(line: 628, column: 32, scope: !573)
!576 = !DILocation(line: 628, column: 49, scope: !573)
!577 = !DILocation(line: 628, column: 11, scope: !574)
!578 = !DILocation(line: 630, column: 11, scope: !579)
!579 = distinct !DILexicalBlock(scope: !574, file: !3, line: 630, column: 11)
!580 = !DILocation(line: 630, column: 11, scope: !574)
!581 = !DILocation(line: 632, column: 26, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 632, column: 15)
!583 = distinct !DILexicalBlock(scope: !579, file: !3, line: 631, column: 9)
!584 = !DILocation(line: 632, column: 34, scope: !582)
!585 = !DILocation(line: 632, column: 37, scope: !582)
!586 = !DILocation(line: 632, column: 15, scope: !583)
!587 = !DILocation(line: 636, column: 29, scope: !588)
!588 = distinct !DILexicalBlock(scope: !583, file: !3, line: 636, column: 15)
!589 = !DILocation(line: 640, column: 16, scope: !574)
!590 = distinct !{!590, !569, !591, !490}
!591 = !DILocation(line: 641, column: 5, scope: !2)
!592 = !DILocation(line: 644, column: 3, scope: !2)
!593 = !DILocation(line: 0, scope: !473, inlinedAt: !594)
!594 = distinct !DILocation(line: 648, column: 31, scope: !2)
!595 = !DILocation(line: 0, scope: !473, inlinedAt: !596)
!596 = distinct !DILocation(line: 649, column: 31, scope: !2)
!597 = !DILocation(line: 0, scope: !473, inlinedAt: !598)
!598 = distinct !DILocation(line: 650, column: 31, scope: !2)
!599 = !DILocation(line: 0, scope: !473, inlinedAt: !600)
!600 = distinct !DILocation(line: 651, column: 31, scope: !2)
!601 = !DILocation(line: 0, scope: !473, inlinedAt: !602)
!602 = distinct !DILocation(line: 652, column: 31, scope: !2)
!603 = !DILocation(line: 0, scope: !473, inlinedAt: !604)
!604 = distinct !DILocation(line: 653, column: 31, scope: !2)
!605 = !DILocation(line: 0, scope: !473, inlinedAt: !606)
!606 = distinct !DILocation(line: 654, column: 31, scope: !2)
!607 = !DILocation(line: 0, scope: !473, inlinedAt: !608)
!608 = distinct !DILocation(line: 655, column: 31, scope: !2)
!609 = !DILocation(line: 0, scope: !473, inlinedAt: !610)
!610 = distinct !DILocation(line: 656, column: 31, scope: !2)
!611 = !DILocation(line: 0, scope: !473, inlinedAt: !612)
!612 = distinct !DILocation(line: 657, column: 31, scope: !2)
!613 = !DILocation(line: 663, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!615 = !DILocation(line: 664, column: 7, scope: !614)
!616 = !DILocation(line: 664, column: 10, scope: !614)
!617 = !DILocation(line: 663, column: 7, scope: !2)
!618 = !DILocation(line: 669, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !614, file: !3, line: 665, column: 5)
!620 = !DILocation(line: 671, column: 5, scope: !619)
!621 = !DILocation(line: 676, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !614, file: !3, line: 673, column: 5)
!623 = !DILocation(line: 679, column: 3, scope: !2)
!624 = !DILocation(line: 683, column: 3, scope: !2)
!625 = !DILocation(line: 686, column: 3, scope: !2)
!626 = !DILocation(line: 688, column: 3, scope: !2)
!627 = !DILocation(line: 691, column: 3, scope: !2)
!628 = !DILocation(line: 695, column: 3, scope: !2)
!629 = !DILocation(line: 696, column: 1, scope: !2)
!630 = !DISubprogram(name: "setlocale", scope: !631, file: !631, line: 122, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!631 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!632 = !DISubroutineType(types: !633)
!633 = !{!69, !35, !6}
!634 = !DISubprogram(name: "getenv", scope: !635, file: !635, line: 641, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!635 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!636 = !DISubroutineType(types: !637)
!637 = !{!69, !6}
!638 = !DISubprogram(name: "fwrite_unlocked", scope: !146, file: !146, line: 704, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!639 = !DISubroutineType(types: !640)
!640 = !{!37, !641, !37, !37, !521}
!641 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!644 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 56, type: !645, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !648)
!645 = !DISubroutineType(types: !646)
!646 = !{!35, !35, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!648 = !{!649, !650, !651, !655, !656}
!649 = !DILocalVariable(name: "argc", arg: 1, scope: !644, file: !10, line: 56, type: !35)
!650 = !DILocalVariable(name: "argv", arg: 2, scope: !644, file: !10, line: 56, type: !647)
!651 = !DILocalVariable(name: "NO_UID", scope: !644, file: !10, line: 58, type: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !653, line: 79, baseType: !654)
!653 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !33, line: 146, baseType: !14)
!655 = !DILocalVariable(name: "uid", scope: !644, file: !10, line: 79, type: !652)
!656 = !DILocalVariable(name: "pw", scope: !644, file: !10, line: 80, type: !657)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !659, line: 49, size: 384, elements: !660)
!659 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!660 = !{!661, !662, !663, !664, !666, !667, !668}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !658, file: !659, line: 51, baseType: !69, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !658, file: !659, line: 52, baseType: !69, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !658, file: !659, line: 54, baseType: !654, size: 32, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !658, file: !659, line: 55, baseType: !665, size: 32, offset: 160)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !33, line: 147, baseType: !14)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !658, file: !659, line: 56, baseType: !69, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !658, file: !659, line: 57, baseType: !69, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !658, file: !659, line: 58, baseType: !69, size: 64, offset: 320)
!669 = !DILocation(line: 0, scope: !644)
!670 = !DILocation(line: 61, column: 21, scope: !644)
!671 = !DILocation(line: 61, column: 3, scope: !644)
!672 = !DILocation(line: 62, column: 3, scope: !644)
!673 = !DILocation(line: 63, column: 3, scope: !644)
!674 = !DILocation(line: 64, column: 3, scope: !644)
!675 = !DILocation(line: 66, column: 3, scope: !644)
!676 = !DILocation(line: 69, column: 36, scope: !644)
!677 = !DILocation(line: 69, column: 58, scope: !644)
!678 = !DILocation(line: 68, column: 3, scope: !644)
!679 = !DILocation(line: 72, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !644, file: !10, line: 72, column: 7)
!681 = !DILocation(line: 72, column: 14, scope: !680)
!682 = !DILocation(line: 72, column: 7, scope: !644)
!683 = !DILocation(line: 74, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !680, file: !10, line: 73, column: 5)
!685 = !DILocation(line: 75, column: 7, scope: !684)
!686 = !DILocation(line: 78, column: 3, scope: !644)
!687 = !DILocation(line: 78, column: 9, scope: !644)
!688 = !DILocation(line: 79, column: 15, scope: !644)
!689 = !DILocation(line: 80, column: 27, scope: !644)
!690 = !DILocation(line: 80, column: 37, scope: !644)
!691 = !DILocation(line: 80, column: 40, scope: !644)
!692 = !DILocation(line: 80, column: 23, scope: !644)
!693 = !DILocation(line: 80, column: 55, scope: !644)
!694 = !DILocation(line: 81, column: 8, scope: !695)
!695 = distinct !DILexicalBlock(scope: !644, file: !10, line: 81, column: 7)
!696 = !DILocation(line: 81, column: 7, scope: !644)
!697 = !DILocation(line: 82, column: 5, scope: !695)
!698 = !DILocation(line: 84, column: 13, scope: !644)
!699 = !{!700, !439, i64 0}
!700 = !{!"passwd", !439, i64 0, !439, i64 8, !525, i64 16, !525, i64 20, !439, i64 24, !439, i64 32, !439, i64 40}
!701 = !DILocation(line: 84, column: 3, scope: !644)
!702 = !DILocation(line: 85, column: 3, scope: !644)
!703 = !DISubprogram(name: "bindtextdomain", scope: !513, file: !513, line: 86, type: !704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!704 = !DISubroutineType(types: !705)
!705 = !{!69, !6, !6}
!706 = !DISubprogram(name: "textdomain", scope: !513, file: !513, line: 82, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!707 = !DISubprogram(name: "atexit", scope: !635, file: !635, line: 602, type: !708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!708 = !DISubroutineType(types: !709)
!709 = !{!35, !172}
!710 = !DISubprogram(name: "geteuid", scope: !711, file: !711, line: 700, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!711 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!712 = !DISubroutineType(types: !713)
!713 = !{!654}
!714 = !DISubprogram(name: "getpwuid", scope: !659, file: !659, line: 110, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!715 = !DISubroutineType(types: !716)
!716 = !{!657, !654}
!717 = !DISubprogram(name: "puts", scope: !146, file: !146, line: 661, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!718 = !DISubroutineType(types: !719)
!719 = !{!35, !6}
!720 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !130, file: !130, line: 50, type: !449, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !721)
!721 = !{!722}
!722 = !DILocalVariable(name: "file", arg: 1, scope: !720, file: !130, line: 50, type: !6)
!723 = !DILocation(line: 0, scope: !720)
!724 = !DILocation(line: 52, column: 13, scope: !720)
!725 = !DILocation(line: 53, column: 1, scope: !720)
!726 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !130, file: !130, line: 87, type: !727, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !48}
!729 = !{!730}
!730 = !DILocalVariable(name: "ignore", arg: 1, scope: !726, file: !130, line: 87, type: !48)
!731 = !DILocation(line: 0, scope: !726)
!732 = !DILocation(line: 89, column: 16, scope: !726)
!733 = !{!734, !734, i64 0}
!734 = !{!"_Bool", !440, i64 0}
!735 = !DILocation(line: 90, column: 1, scope: !726)
!736 = distinct !DISubprogram(name: "close_stdout", scope: !130, file: !130, line: 116, type: !173, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !129, retainedNodes: !737)
!737 = !{!738}
!738 = !DILocalVariable(name: "write_error", scope: !739, file: !130, line: 121, type: !6)
!739 = distinct !DILexicalBlock(scope: !740, file: !130, line: 120, column: 5)
!740 = distinct !DILexicalBlock(scope: !736, file: !130, line: 118, column: 7)
!741 = !DILocation(line: 118, column: 21, scope: !740)
!742 = !DILocation(line: 118, column: 7, scope: !740)
!743 = !DILocation(line: 118, column: 29, scope: !740)
!744 = !DILocation(line: 119, column: 7, scope: !740)
!745 = !DILocation(line: 119, column: 12, scope: !740)
!746 = !{i8 0, i8 2}
!747 = !DILocation(line: 119, column: 25, scope: !740)
!748 = !DILocation(line: 119, column: 28, scope: !740)
!749 = !DILocation(line: 119, column: 34, scope: !740)
!750 = !DILocation(line: 118, column: 7, scope: !736)
!751 = !DILocation(line: 121, column: 33, scope: !739)
!752 = !DILocation(line: 0, scope: !739)
!753 = !DILocation(line: 122, column: 11, scope: !754)
!754 = distinct !DILexicalBlock(scope: !739, file: !130, line: 122, column: 11)
!755 = !DILocation(line: 0, scope: !754)
!756 = !DILocation(line: 122, column: 11, scope: !739)
!757 = !DILocation(line: 123, column: 9, scope: !754)
!758 = !DILocation(line: 126, column: 9, scope: !754)
!759 = !DILocation(line: 128, column: 14, scope: !739)
!760 = !DILocation(line: 128, column: 7, scope: !739)
!761 = !DILocation(line: 133, column: 42, scope: !762)
!762 = distinct !DILexicalBlock(scope: !736, file: !130, line: 133, column: 7)
!763 = !DILocation(line: 133, column: 28, scope: !762)
!764 = !DILocation(line: 133, column: 50, scope: !762)
!765 = !DILocation(line: 133, column: 7, scope: !736)
!766 = !DILocation(line: 134, column: 12, scope: !762)
!767 = !DILocation(line: 134, column: 5, scope: !762)
!768 = !DILocation(line: 135, column: 1, scope: !736)
!769 = distinct !DISubprogram(name: "verror", scope: !137, file: !137, line: 251, type: !770, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !35, !35, !6, !145}
!772 = !{!773, !774, !775, !776}
!773 = !DILocalVariable(name: "status", arg: 1, scope: !769, file: !137, line: 251, type: !35)
!774 = !DILocalVariable(name: "errnum", arg: 2, scope: !769, file: !137, line: 251, type: !35)
!775 = !DILocalVariable(name: "message", arg: 3, scope: !769, file: !137, line: 251, type: !6)
!776 = !DILocalVariable(name: "args", arg: 4, scope: !769, file: !137, line: 251, type: !145)
!777 = !DILocation(line: 0, scope: !769)
!778 = !DILocation(line: 251, column: 1, scope: !769)
!779 = !DILocation(line: 261, column: 3, scope: !769)
!780 = !DILocation(line: 265, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !769, file: !137, line: 265, column: 7)
!782 = !DILocation(line: 265, column: 7, scope: !769)
!783 = !DILocation(line: 266, column: 5, scope: !781)
!784 = !DILocation(line: 272, column: 7, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !137, line: 268, column: 5)
!786 = !DILocation(line: 276, column: 3, scope: !769)
!787 = !{i64 0, i64 8, !438, i64 8, i64 8, !438, i64 16, i64 8, !438, i64 24, i64 4, !524, i64 28, i64 4, !524}
!788 = !DILocation(line: 282, column: 1, scope: !769)
!789 = distinct !DISubprogram(name: "flush_stdout", scope: !137, file: !137, line: 163, type: !173, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !790)
!790 = !{!791}
!791 = !DILocalVariable(name: "stdout_fd", scope: !789, file: !137, line: 166, type: !35)
!792 = !DILocation(line: 0, scope: !789)
!793 = !DILocalVariable(name: "fd", arg: 1, scope: !794, file: !137, line: 145, type: !35)
!794 = distinct !DISubprogram(name: "is_open", scope: !137, file: !137, line: 145, type: !795, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!35, !35}
!797 = !{!793}
!798 = !DILocation(line: 0, scope: !794, inlinedAt: !799)
!799 = distinct !DILocation(line: 182, column: 25, scope: !800)
!800 = distinct !DILexicalBlock(scope: !789, file: !137, line: 182, column: 7)
!801 = !DILocation(line: 157, column: 15, scope: !794, inlinedAt: !799)
!802 = !DILocation(line: 182, column: 25, scope: !800)
!803 = !DILocation(line: 182, column: 7, scope: !789)
!804 = !DILocation(line: 184, column: 5, scope: !800)
!805 = !DILocation(line: 185, column: 1, scope: !789)
!806 = distinct !DISubprogram(name: "error_tail", scope: !137, file: !137, line: 219, type: !770, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !807)
!807 = !{!808, !809, !810, !811}
!808 = !DILocalVariable(name: "status", arg: 1, scope: !806, file: !137, line: 219, type: !35)
!809 = !DILocalVariable(name: "errnum", arg: 2, scope: !806, file: !137, line: 219, type: !35)
!810 = !DILocalVariable(name: "message", arg: 3, scope: !806, file: !137, line: 219, type: !6)
!811 = !DILocalVariable(name: "args", arg: 4, scope: !806, file: !137, line: 219, type: !145)
!812 = !DILocation(line: 0, scope: !806)
!813 = !DILocation(line: 219, column: 1, scope: !806)
!814 = !DILocation(line: 229, column: 13, scope: !806)
!815 = !DILocation(line: 229, column: 3, scope: !806)
!816 = !DILocalVariable(name: "__stream", arg: 1, scope: !817, file: !818, line: 132, type: !821)
!817 = distinct !DISubprogram(name: "vfprintf", scope: !818, file: !818, line: 132, type: !819, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !856)
!818 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!819 = !DISubroutineType(types: !820)
!820 = !{!35, !821, !520, !147}
!821 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !822)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !825)
!825 = !{!826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !824, file: !65, line: 51, baseType: !35, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !824, file: !65, line: 54, baseType: !69, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !824, file: !65, line: 55, baseType: !69, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !824, file: !65, line: 56, baseType: !69, size: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !824, file: !65, line: 57, baseType: !69, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !824, file: !65, line: 58, baseType: !69, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !824, file: !65, line: 59, baseType: !69, size: 64, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !824, file: !65, line: 60, baseType: !69, size: 64, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !824, file: !65, line: 61, baseType: !69, size: 64, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !824, file: !65, line: 64, baseType: !69, size: 64, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !824, file: !65, line: 65, baseType: !69, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !824, file: !65, line: 66, baseType: !69, size: 64, offset: 704)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !824, file: !65, line: 68, baseType: !81, size: 64, offset: 768)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !824, file: !65, line: 70, baseType: !840, size: 64, offset: 832)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !824, file: !65, line: 72, baseType: !35, size: 32, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !824, file: !65, line: 73, baseType: !35, size: 32, offset: 928)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !824, file: !65, line: 74, baseType: !88, size: 64, offset: 960)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !824, file: !65, line: 77, baseType: !36, size: 16, offset: 1024)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !824, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !824, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !824, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !824, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !824, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !824, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !824, file: !65, line: 93, baseType: !840, size: 64, offset: 1344)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !824, file: !65, line: 94, baseType: !29, size: 64, offset: 1408)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !824, file: !65, line: 95, baseType: !37, size: 64, offset: 1472)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !824, file: !65, line: 96, baseType: !35, size: 32, offset: 1536)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !824, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!856 = !{!816, !857, !858}
!857 = !DILocalVariable(name: "__fmt", arg: 2, scope: !817, file: !818, line: 133, type: !520)
!858 = !DILocalVariable(name: "__ap", arg: 3, scope: !817, file: !818, line: 133, type: !147)
!859 = !DILocation(line: 0, scope: !817, inlinedAt: !860)
!860 = distinct !DILocation(line: 229, column: 3, scope: !806)
!861 = !DILocation(line: 135, column: 10, scope: !817, inlinedAt: !860)
!862 = !{!863, !865}
!863 = distinct !{!863, !864, !"vfprintf.inline: argument 0"}
!864 = distinct !{!864, !"vfprintf.inline"}
!865 = distinct !{!865, !864, !"vfprintf.inline: argument 1"}
!866 = !DILocation(line: 232, column: 3, scope: !806)
!867 = !DILocation(line: 233, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !806, file: !137, line: 233, column: 7)
!869 = !DILocation(line: 233, column: 7, scope: !806)
!870 = !DILocalVariable(name: "errnum", arg: 1, scope: !871, file: !137, line: 188, type: !35)
!871 = distinct !DISubprogram(name: "print_errno_message", scope: !137, file: !137, line: 188, type: !428, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !872)
!872 = !{!870, !873, !874}
!873 = !DILocalVariable(name: "s", scope: !871, file: !137, line: 190, type: !6)
!874 = !DILocalVariable(name: "errbuf", scope: !871, file: !137, line: 193, type: !875)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !876)
!876 = !{!877}
!877 = !DISubrange(count: 1024)
!878 = !DILocation(line: 0, scope: !871, inlinedAt: !879)
!879 = distinct !DILocation(line: 234, column: 5, scope: !868)
!880 = !DILocation(line: 193, column: 3, scope: !871, inlinedAt: !879)
!881 = !DILocation(line: 193, column: 8, scope: !871, inlinedAt: !879)
!882 = !DILocation(line: 195, column: 7, scope: !871, inlinedAt: !879)
!883 = !DILocation(line: 207, column: 9, scope: !884, inlinedAt: !879)
!884 = distinct !DILexicalBlock(scope: !871, file: !137, line: 207, column: 7)
!885 = !DILocation(line: 207, column: 7, scope: !871, inlinedAt: !879)
!886 = !DILocation(line: 208, column: 9, scope: !884, inlinedAt: !879)
!887 = !DILocation(line: 208, column: 5, scope: !884, inlinedAt: !879)
!888 = !DILocation(line: 214, column: 3, scope: !871, inlinedAt: !879)
!889 = !DILocation(line: 216, column: 1, scope: !871, inlinedAt: !879)
!890 = !DILocation(line: 234, column: 5, scope: !868)
!891 = !DILocation(line: 238, column: 3, scope: !806)
!892 = !DILocalVariable(name: "__c", arg: 1, scope: !893, file: !894, line: 101, type: !35)
!893 = distinct !DISubprogram(name: "putc_unlocked", scope: !894, file: !894, line: 101, type: !895, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !897)
!894 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!895 = !DISubroutineType(types: !896)
!896 = !{!35, !35, !822}
!897 = !{!892, !898}
!898 = !DILocalVariable(name: "__stream", arg: 2, scope: !893, file: !894, line: 101, type: !822)
!899 = !DILocation(line: 0, scope: !893, inlinedAt: !900)
!900 = distinct !DILocation(line: 238, column: 3, scope: !806)
!901 = !DILocation(line: 103, column: 10, scope: !893, inlinedAt: !900)
!902 = !{!903, !439, i64 40}
!903 = !{!"_IO_FILE", !525, i64 0, !439, i64 8, !439, i64 16, !439, i64 24, !439, i64 32, !439, i64 40, !439, i64 48, !439, i64 56, !439, i64 64, !439, i64 72, !439, i64 80, !439, i64 88, !439, i64 96, !439, i64 104, !525, i64 112, !525, i64 116, !904, i64 120, !559, i64 128, !440, i64 130, !440, i64 131, !439, i64 136, !904, i64 144, !439, i64 152, !439, i64 160, !439, i64 168, !439, i64 176, !904, i64 184, !525, i64 192, !440, i64 196}
!904 = !{!"long", !440, i64 0}
!905 = !{!903, !439, i64 48}
!906 = !{!"branch_weights", i32 2000, i32 1}
!907 = !DILocation(line: 240, column: 3, scope: !806)
!908 = !DILocation(line: 241, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !806, file: !137, line: 241, column: 7)
!910 = !DILocation(line: 241, column: 7, scope: !806)
!911 = !DILocation(line: 242, column: 5, scope: !909)
!912 = !DILocation(line: 243, column: 1, scope: !806)
!913 = !DISubprogram(name: "strerror_r", scope: !914, file: !914, line: 444, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!914 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!915 = !DISubroutineType(types: !916)
!916 = !{!69, !35, !69, !37}
!917 = !DISubprogram(name: "fflush_unlocked", scope: !146, file: !146, line: 239, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!918 = !DISubroutineType(types: !919)
!919 = !{!35, !822}
!920 = !DISubprogram(name: "fcntl", scope: !921, file: !921, line: 149, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!921 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!922 = !DISubroutineType(types: !923)
!923 = !{!35, !35, !35, null}
!924 = distinct !DISubprogram(name: "error", scope: !137, file: !137, line: 285, type: !925, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !35, !35, !6, null}
!927 = !{!928, !929, !930, !931}
!928 = !DILocalVariable(name: "status", arg: 1, scope: !924, file: !137, line: 285, type: !35)
!929 = !DILocalVariable(name: "errnum", arg: 2, scope: !924, file: !137, line: 285, type: !35)
!930 = !DILocalVariable(name: "message", arg: 3, scope: !924, file: !137, line: 285, type: !6)
!931 = !DILocalVariable(name: "ap", scope: !924, file: !137, line: 287, type: !145)
!932 = !DILocation(line: 0, scope: !924)
!933 = !DILocation(line: 287, column: 3, scope: !924)
!934 = !DILocation(line: 287, column: 11, scope: !924)
!935 = !DILocation(line: 288, column: 3, scope: !924)
!936 = !DILocation(line: 289, column: 3, scope: !924)
!937 = !DILocation(line: 290, column: 3, scope: !924)
!938 = !DILocation(line: 291, column: 1, scope: !924)
!939 = !DILocation(line: 0, scope: !142)
!940 = !DILocation(line: 298, column: 1, scope: !142)
!941 = !DILocation(line: 302, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !142, file: !137, line: 302, column: 7)
!943 = !DILocation(line: 302, column: 7, scope: !142)
!944 = !DILocation(line: 307, column: 11, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !137, line: 307, column: 11)
!946 = distinct !DILexicalBlock(scope: !942, file: !137, line: 303, column: 5)
!947 = !DILocation(line: 307, column: 27, scope: !945)
!948 = !DILocation(line: 308, column: 11, scope: !945)
!949 = !DILocation(line: 308, column: 28, scope: !945)
!950 = !DILocation(line: 308, column: 25, scope: !945)
!951 = !DILocation(line: 309, column: 15, scope: !945)
!952 = !DILocation(line: 309, column: 33, scope: !945)
!953 = !DILocation(line: 310, column: 19, scope: !945)
!954 = !DILocation(line: 311, column: 22, scope: !945)
!955 = !DILocation(line: 311, column: 56, scope: !945)
!956 = !DILocation(line: 307, column: 11, scope: !946)
!957 = !DILocation(line: 316, column: 21, scope: !946)
!958 = !DILocation(line: 317, column: 23, scope: !946)
!959 = !DILocation(line: 318, column: 5, scope: !946)
!960 = !DILocation(line: 327, column: 3, scope: !142)
!961 = !DILocation(line: 331, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !142, file: !137, line: 331, column: 7)
!963 = !DILocation(line: 331, column: 7, scope: !142)
!964 = !DILocation(line: 332, column: 5, scope: !962)
!965 = !DILocation(line: 338, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !137, line: 334, column: 5)
!967 = !DILocation(line: 346, column: 3, scope: !142)
!968 = !DILocation(line: 350, column: 3, scope: !142)
!969 = !DILocation(line: 356, column: 1, scope: !142)
!970 = distinct !DISubprogram(name: "error_at_line", scope: !137, file: !137, line: 359, type: !971, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !35, !35, !6, !14, !6, null}
!973 = !{!974, !975, !976, !977, !978, !979}
!974 = !DILocalVariable(name: "status", arg: 1, scope: !970, file: !137, line: 359, type: !35)
!975 = !DILocalVariable(name: "errnum", arg: 2, scope: !970, file: !137, line: 359, type: !35)
!976 = !DILocalVariable(name: "file_name", arg: 3, scope: !970, file: !137, line: 359, type: !6)
!977 = !DILocalVariable(name: "line_number", arg: 4, scope: !970, file: !137, line: 360, type: !14)
!978 = !DILocalVariable(name: "message", arg: 5, scope: !970, file: !137, line: 360, type: !6)
!979 = !DILocalVariable(name: "ap", scope: !970, file: !137, line: 362, type: !145)
!980 = !DILocation(line: 0, scope: !970)
!981 = !DILocation(line: 362, column: 3, scope: !970)
!982 = !DILocation(line: 362, column: 11, scope: !970)
!983 = !DILocation(line: 363, column: 3, scope: !970)
!984 = !DILocation(line: 364, column: 3, scope: !970)
!985 = !DILocation(line: 366, column: 3, scope: !970)
!986 = !DILocation(line: 367, column: 1, scope: !970)
!987 = distinct !DISubprogram(name: "getprogname", scope: !354, file: !354, line: 54, type: !988, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !353, retainedNodes: !516)
!988 = !DISubroutineType(types: !989)
!989 = !{!6}
!990 = !DILocation(line: 58, column: 10, scope: !987)
!991 = !DILocation(line: 58, column: 3, scope: !987)
!992 = distinct !DISubprogram(name: "parse_long_options", scope: !178, file: !178, line: 45, type: !993, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !996)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !35, !647, !6, !6, !6, !995, null}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1007}
!997 = !DILocalVariable(name: "argc", arg: 1, scope: !992, file: !178, line: 45, type: !35)
!998 = !DILocalVariable(name: "argv", arg: 2, scope: !992, file: !178, line: 46, type: !647)
!999 = !DILocalVariable(name: "command_name", arg: 3, scope: !992, file: !178, line: 47, type: !6)
!1000 = !DILocalVariable(name: "package", arg: 4, scope: !992, file: !178, line: 48, type: !6)
!1001 = !DILocalVariable(name: "version", arg: 5, scope: !992, file: !178, line: 49, type: !6)
!1002 = !DILocalVariable(name: "usage_func", arg: 6, scope: !992, file: !178, line: 50, type: !995)
!1003 = !DILocalVariable(name: "saved_opterr", scope: !992, file: !178, line: 53, type: !35)
!1004 = !DILocalVariable(name: "c", scope: !1005, file: !178, line: 60, type: !35)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !178, line: 59, column: 5)
!1006 = distinct !DILexicalBlock(scope: !992, file: !178, line: 58, column: 7)
!1007 = !DILocalVariable(name: "authors", scope: !1008, file: !178, line: 71, type: !1012)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !178, line: 70, column: 15)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !178, line: 64, column: 13)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !178, line: 62, column: 9)
!1011 = distinct !DILexicalBlock(scope: !1005, file: !178, line: 61, column: 11)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1015, baseType: !1016)
!1015 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1016, file: !1015, line: 71, baseType: !29, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1016, file: !1015, line: 71, baseType: !29, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1016, file: !1015, line: 71, baseType: !29, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1016, file: !1015, line: 71, baseType: !35, size: 32, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1016, file: !1015, line: 71, baseType: !35, size: 32, offset: 224)
!1023 = !DILocation(line: 0, scope: !992)
!1024 = !DILocation(line: 53, column: 22, scope: !992)
!1025 = !DILocation(line: 56, column: 10, scope: !992)
!1026 = !DILocation(line: 58, column: 12, scope: !1006)
!1027 = !DILocation(line: 58, column: 7, scope: !992)
!1028 = !DILocation(line: 60, column: 15, scope: !1005)
!1029 = !DILocation(line: 0, scope: !1005)
!1030 = !DILocation(line: 61, column: 11, scope: !1005)
!1031 = !DILocation(line: 66, column: 15, scope: !1009)
!1032 = !DILocation(line: 67, column: 15, scope: !1009)
!1033 = !DILocation(line: 71, column: 17, scope: !1008)
!1034 = !DILocation(line: 71, column: 25, scope: !1008)
!1035 = !DILocation(line: 72, column: 17, scope: !1008)
!1036 = !DILocation(line: 73, column: 33, scope: !1008)
!1037 = !DILocation(line: 73, column: 17, scope: !1008)
!1038 = !DILocation(line: 74, column: 17, scope: !1008)
!1039 = !DILocation(line: 85, column: 10, scope: !992)
!1040 = !DILocation(line: 89, column: 10, scope: !992)
!1041 = !DILocation(line: 90, column: 1, scope: !992)
!1042 = !DISubprogram(name: "getopt_long", scope: !183, file: !183, line: 66, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!35, !35, !1045, !6, !1047, !188}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1048 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !178, file: !178, line: 98, type: !1049, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !177, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !35, !647, !6, !6, !6, !48, !995, null}
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1052 = !DILocalVariable(name: "argc", arg: 1, scope: !1048, file: !178, line: 98, type: !35)
!1053 = !DILocalVariable(name: "argv", arg: 2, scope: !1048, file: !178, line: 99, type: !647)
!1054 = !DILocalVariable(name: "command_name", arg: 3, scope: !1048, file: !178, line: 100, type: !6)
!1055 = !DILocalVariable(name: "package", arg: 4, scope: !1048, file: !178, line: 101, type: !6)
!1056 = !DILocalVariable(name: "version", arg: 5, scope: !1048, file: !178, line: 102, type: !6)
!1057 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1048, file: !178, line: 103, type: !48)
!1058 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1048, file: !178, line: 104, type: !995)
!1059 = !DILocalVariable(name: "saved_opterr", scope: !1048, file: !178, line: 107, type: !35)
!1060 = !DILocalVariable(name: "optstring", scope: !1048, file: !178, line: 112, type: !6)
!1061 = !DILocalVariable(name: "c", scope: !1048, file: !178, line: 114, type: !35)
!1062 = !DILocalVariable(name: "authors", scope: !1063, file: !178, line: 125, type: !1012)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !178, line: 124, column: 11)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !178, line: 118, column: 9)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !178, line: 116, column: 5)
!1066 = distinct !DILexicalBlock(scope: !1048, file: !178, line: 115, column: 7)
!1067 = !DILocation(line: 0, scope: !1048)
!1068 = !DILocation(line: 107, column: 22, scope: !1048)
!1069 = !DILocation(line: 110, column: 10, scope: !1048)
!1070 = !DILocation(line: 112, column: 27, scope: !1048)
!1071 = !DILocation(line: 114, column: 11, scope: !1048)
!1072 = !DILocation(line: 115, column: 7, scope: !1048)
!1073 = !DILocation(line: 125, column: 13, scope: !1063)
!1074 = !DILocation(line: 125, column: 21, scope: !1063)
!1075 = !DILocation(line: 126, column: 13, scope: !1063)
!1076 = !DILocation(line: 127, column: 29, scope: !1063)
!1077 = !DILocation(line: 127, column: 13, scope: !1063)
!1078 = !DILocation(line: 128, column: 13, scope: !1063)
!1079 = !DILocation(line: 132, column: 26, scope: !1064)
!1080 = !DILocation(line: 133, column: 11, scope: !1064)
!1081 = !DILocation(line: 0, scope: !1064)
!1082 = !DILocation(line: 138, column: 10, scope: !1048)
!1083 = !DILocation(line: 139, column: 1, scope: !1048)
!1084 = distinct !DISubprogram(name: "set_program_name", scope: !195, file: !195, line: 37, type: !449, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DILocalVariable(name: "argv0", arg: 1, scope: !1084, file: !195, line: 37, type: !6)
!1087 = !DILocalVariable(name: "slash", scope: !1084, file: !195, line: 44, type: !6)
!1088 = !DILocalVariable(name: "base", scope: !1084, file: !195, line: 45, type: !6)
!1089 = !DILocation(line: 0, scope: !1084)
!1090 = !DILocation(line: 44, column: 23, scope: !1084)
!1091 = !DILocation(line: 45, column: 22, scope: !1084)
!1092 = !DILocation(line: 46, column: 17, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1084, file: !195, line: 46, column: 7)
!1094 = !DILocation(line: 46, column: 9, scope: !1093)
!1095 = !DILocation(line: 46, column: 25, scope: !1093)
!1096 = !DILocation(line: 46, column: 40, scope: !1093)
!1097 = !DILocalVariable(name: "__s1", arg: 1, scope: !1098, file: !474, line: 974, type: !642)
!1098 = distinct !DISubprogram(name: "memeq", scope: !474, file: !474, line: 974, type: !1099, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!48, !642, !642, !37}
!1101 = !{!1097, !1102, !1103}
!1102 = !DILocalVariable(name: "__s2", arg: 2, scope: !1098, file: !474, line: 974, type: !642)
!1103 = !DILocalVariable(name: "__n", arg: 3, scope: !1098, file: !474, line: 974, type: !37)
!1104 = !DILocation(line: 0, scope: !1098, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 46, column: 28, scope: !1093)
!1106 = !DILocation(line: 976, column: 11, scope: !1098, inlinedAt: !1105)
!1107 = !DILocation(line: 976, column: 10, scope: !1098, inlinedAt: !1105)
!1108 = !DILocation(line: 46, column: 7, scope: !1084)
!1109 = !DILocation(line: 49, column: 11, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !195, line: 49, column: 11)
!1111 = distinct !DILexicalBlock(scope: !1093, file: !195, line: 47, column: 5)
!1112 = !DILocation(line: 49, column: 36, scope: !1110)
!1113 = !DILocation(line: 49, column: 11, scope: !1111)
!1114 = !DILocation(line: 65, column: 16, scope: !1084)
!1115 = !DILocation(line: 71, column: 27, scope: !1084)
!1116 = !DILocation(line: 74, column: 33, scope: !1084)
!1117 = !DILocation(line: 76, column: 1, scope: !1084)
!1118 = !DILocation(line: 0, scope: !200)
!1119 = !DILocation(line: 40, column: 29, scope: !200)
!1120 = !DILocation(line: 41, column: 19, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !200, file: !201, line: 41, column: 7)
!1122 = !DILocation(line: 41, column: 7, scope: !200)
!1123 = !DILocation(line: 47, column: 3, scope: !200)
!1124 = !DILocation(line: 48, column: 3, scope: !200)
!1125 = !DILocation(line: 48, column: 13, scope: !200)
!1126 = !DILocalVariable(name: "ps", arg: 1, scope: !1127, file: !1128, line: 1135, type: !1131)
!1127 = distinct !DISubprogram(name: "mbszero", scope: !1128, file: !1128, line: 1135, type: !1129, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !1132)
!1128 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !1131}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1132 = !{!1126}
!1133 = !DILocation(line: 0, scope: !1127, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 48, column: 18, scope: !200)
!1135 = !DILocalVariable(name: "__dest", arg: 1, scope: !1136, file: !1137, line: 57, type: !29)
!1136 = distinct !DISubprogram(name: "memset", scope: !1137, file: !1137, line: 57, type: !1138, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !1140)
!1137 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!29, !29, !35, !37}
!1140 = !{!1135, !1141, !1142}
!1141 = !DILocalVariable(name: "__ch", arg: 2, scope: !1136, file: !1137, line: 57, type: !35)
!1142 = !DILocalVariable(name: "__len", arg: 3, scope: !1136, file: !1137, line: 57, type: !37)
!1143 = !DILocation(line: 0, scope: !1136, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 1137, column: 3, scope: !1127, inlinedAt: !1134)
!1145 = !DILocation(line: 59, column: 10, scope: !1136, inlinedAt: !1144)
!1146 = !DILocation(line: 49, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !200, file: !201, line: 49, column: 7)
!1148 = !DILocation(line: 49, column: 39, scope: !1147)
!1149 = !DILocation(line: 49, column: 44, scope: !1147)
!1150 = !DILocation(line: 54, column: 1, scope: !200)
!1151 = !DISubprogram(name: "mbrtoc32", scope: !212, file: !212, line: 57, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!37, !1154, !520, !37, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1131)
!1157 = distinct !DISubprogram(name: "clone_quoting_options", scope: !237, file: !237, line: 113, type: !1158, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1161)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!1160, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!1161 = !{!1162, !1163, !1164}
!1162 = !DILocalVariable(name: "o", arg: 1, scope: !1157, file: !237, line: 113, type: !1160)
!1163 = !DILocalVariable(name: "saved_errno", scope: !1157, file: !237, line: 115, type: !35)
!1164 = !DILocalVariable(name: "p", scope: !1157, file: !237, line: 116, type: !1160)
!1165 = !DILocation(line: 0, scope: !1157)
!1166 = !DILocation(line: 115, column: 21, scope: !1157)
!1167 = !DILocation(line: 116, column: 40, scope: !1157)
!1168 = !DILocation(line: 116, column: 31, scope: !1157)
!1169 = !DILocation(line: 118, column: 9, scope: !1157)
!1170 = !DILocation(line: 119, column: 3, scope: !1157)
!1171 = distinct !DISubprogram(name: "get_quoting_style", scope: !237, file: !237, line: 124, type: !1172, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1176)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!239, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "o", arg: 1, scope: !1171, file: !237, line: 124, type: !1174)
!1178 = !DILocation(line: 0, scope: !1171)
!1179 = !DILocation(line: 126, column: 11, scope: !1171)
!1180 = !DILocation(line: 126, column: 46, scope: !1171)
!1181 = !{!1182, !440, i64 0}
!1182 = !{!"quoting_options", !440, i64 0, !525, i64 4, !440, i64 8, !439, i64 40, !439, i64 48}
!1183 = !DILocation(line: 126, column: 3, scope: !1171)
!1184 = distinct !DISubprogram(name: "set_quoting_style", scope: !237, file: !237, line: 132, type: !1185, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !1160, !239}
!1187 = !{!1188, !1189}
!1188 = !DILocalVariable(name: "o", arg: 1, scope: !1184, file: !237, line: 132, type: !1160)
!1189 = !DILocalVariable(name: "s", arg: 2, scope: !1184, file: !237, line: 132, type: !239)
!1190 = !DILocation(line: 0, scope: !1184)
!1191 = !DILocation(line: 134, column: 4, scope: !1184)
!1192 = !DILocation(line: 134, column: 39, scope: !1184)
!1193 = !DILocation(line: 134, column: 45, scope: !1184)
!1194 = !DILocation(line: 135, column: 1, scope: !1184)
!1195 = distinct !DISubprogram(name: "set_char_quoting", scope: !237, file: !237, line: 143, type: !1196, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!35, !1160, !8, !35}
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1205, !1206}
!1199 = !DILocalVariable(name: "o", arg: 1, scope: !1195, file: !237, line: 143, type: !1160)
!1200 = !DILocalVariable(name: "c", arg: 2, scope: !1195, file: !237, line: 143, type: !8)
!1201 = !DILocalVariable(name: "i", arg: 3, scope: !1195, file: !237, line: 143, type: !35)
!1202 = !DILocalVariable(name: "uc", scope: !1195, file: !237, line: 145, type: !39)
!1203 = !DILocalVariable(name: "p", scope: !1195, file: !237, line: 146, type: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1205 = !DILocalVariable(name: "shift", scope: !1195, file: !237, line: 148, type: !35)
!1206 = !DILocalVariable(name: "r", scope: !1195, file: !237, line: 149, type: !14)
!1207 = !DILocation(line: 0, scope: !1195)
!1208 = !DILocation(line: 147, column: 6, scope: !1195)
!1209 = !DILocation(line: 147, column: 62, scope: !1195)
!1210 = !DILocation(line: 147, column: 57, scope: !1195)
!1211 = !DILocation(line: 148, column: 15, scope: !1195)
!1212 = !DILocation(line: 149, column: 21, scope: !1195)
!1213 = !DILocation(line: 149, column: 24, scope: !1195)
!1214 = !DILocation(line: 149, column: 34, scope: !1195)
!1215 = !DILocation(line: 150, column: 13, scope: !1195)
!1216 = !DILocation(line: 150, column: 19, scope: !1195)
!1217 = !DILocation(line: 150, column: 24, scope: !1195)
!1218 = !DILocation(line: 150, column: 6, scope: !1195)
!1219 = !DILocation(line: 151, column: 3, scope: !1195)
!1220 = distinct !DISubprogram(name: "set_quoting_flags", scope: !237, file: !237, line: 159, type: !1221, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1223)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!35, !1160, !35}
!1223 = !{!1224, !1225, !1226}
!1224 = !DILocalVariable(name: "o", arg: 1, scope: !1220, file: !237, line: 159, type: !1160)
!1225 = !DILocalVariable(name: "i", arg: 2, scope: !1220, file: !237, line: 159, type: !35)
!1226 = !DILocalVariable(name: "r", scope: !1220, file: !237, line: 163, type: !35)
!1227 = !DILocation(line: 0, scope: !1220)
!1228 = !DILocation(line: 161, column: 8, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1220, file: !237, line: 161, column: 7)
!1230 = !DILocation(line: 161, column: 7, scope: !1220)
!1231 = !DILocation(line: 163, column: 14, scope: !1220)
!1232 = !{!1182, !525, i64 4}
!1233 = !DILocation(line: 164, column: 12, scope: !1220)
!1234 = !DILocation(line: 165, column: 3, scope: !1220)
!1235 = distinct !DISubprogram(name: "set_custom_quoting", scope: !237, file: !237, line: 169, type: !1236, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !1160, !6, !6}
!1238 = !{!1239, !1240, !1241}
!1239 = !DILocalVariable(name: "o", arg: 1, scope: !1235, file: !237, line: 169, type: !1160)
!1240 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1235, file: !237, line: 170, type: !6)
!1241 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1235, file: !237, line: 170, type: !6)
!1242 = !DILocation(line: 0, scope: !1235)
!1243 = !DILocation(line: 172, column: 8, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1235, file: !237, line: 172, column: 7)
!1245 = !DILocation(line: 172, column: 7, scope: !1235)
!1246 = !DILocation(line: 174, column: 6, scope: !1235)
!1247 = !DILocation(line: 174, column: 12, scope: !1235)
!1248 = !DILocation(line: 175, column: 8, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1235, file: !237, line: 175, column: 7)
!1250 = !DILocation(line: 175, column: 19, scope: !1249)
!1251 = !DILocation(line: 176, column: 5, scope: !1249)
!1252 = !DILocation(line: 177, column: 6, scope: !1235)
!1253 = !DILocation(line: 177, column: 17, scope: !1235)
!1254 = !{!1182, !439, i64 40}
!1255 = !DILocation(line: 178, column: 6, scope: !1235)
!1256 = !DILocation(line: 178, column: 18, scope: !1235)
!1257 = !{!1182, !439, i64 48}
!1258 = !DILocation(line: 179, column: 1, scope: !1235)
!1259 = distinct !DISubprogram(name: "quotearg_buffer", scope: !237, file: !237, line: 774, type: !1260, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!37, !69, !37, !6, !37, !1174}
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1263 = !DILocalVariable(name: "buffer", arg: 1, scope: !1259, file: !237, line: 774, type: !69)
!1264 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1259, file: !237, line: 774, type: !37)
!1265 = !DILocalVariable(name: "arg", arg: 3, scope: !1259, file: !237, line: 775, type: !6)
!1266 = !DILocalVariable(name: "argsize", arg: 4, scope: !1259, file: !237, line: 775, type: !37)
!1267 = !DILocalVariable(name: "o", arg: 5, scope: !1259, file: !237, line: 776, type: !1174)
!1268 = !DILocalVariable(name: "p", scope: !1259, file: !237, line: 778, type: !1174)
!1269 = !DILocalVariable(name: "saved_errno", scope: !1259, file: !237, line: 779, type: !35)
!1270 = !DILocalVariable(name: "r", scope: !1259, file: !237, line: 780, type: !37)
!1271 = !DILocation(line: 0, scope: !1259)
!1272 = !DILocation(line: 778, column: 37, scope: !1259)
!1273 = !DILocation(line: 779, column: 21, scope: !1259)
!1274 = !DILocation(line: 781, column: 43, scope: !1259)
!1275 = !DILocation(line: 781, column: 53, scope: !1259)
!1276 = !DILocation(line: 781, column: 60, scope: !1259)
!1277 = !DILocation(line: 782, column: 43, scope: !1259)
!1278 = !DILocation(line: 782, column: 58, scope: !1259)
!1279 = !DILocation(line: 780, column: 14, scope: !1259)
!1280 = !DILocation(line: 783, column: 9, scope: !1259)
!1281 = !DILocation(line: 784, column: 3, scope: !1259)
!1282 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !237, file: !237, line: 251, type: !1283, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1287)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!37, !69, !37, !6, !37, !239, !35, !1285, !6, !6}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1312, !1314, !1317, !1318, !1319, !1320, !1323, !1324, !1327, !1331, !1332, !1340, !1343, !1344, !1346, !1347, !1348, !1349}
!1288 = !DILocalVariable(name: "buffer", arg: 1, scope: !1282, file: !237, line: 251, type: !69)
!1289 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1282, file: !237, line: 251, type: !37)
!1290 = !DILocalVariable(name: "arg", arg: 3, scope: !1282, file: !237, line: 252, type: !6)
!1291 = !DILocalVariable(name: "argsize", arg: 4, scope: !1282, file: !237, line: 252, type: !37)
!1292 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1282, file: !237, line: 253, type: !239)
!1293 = !DILocalVariable(name: "flags", arg: 6, scope: !1282, file: !237, line: 253, type: !35)
!1294 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1282, file: !237, line: 254, type: !1285)
!1295 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1282, file: !237, line: 255, type: !6)
!1296 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1282, file: !237, line: 256, type: !6)
!1297 = !DILocalVariable(name: "unibyte_locale", scope: !1282, file: !237, line: 258, type: !48)
!1298 = !DILocalVariable(name: "len", scope: !1282, file: !237, line: 260, type: !37)
!1299 = !DILocalVariable(name: "orig_buffersize", scope: !1282, file: !237, line: 261, type: !37)
!1300 = !DILocalVariable(name: "quote_string", scope: !1282, file: !237, line: 262, type: !6)
!1301 = !DILocalVariable(name: "quote_string_len", scope: !1282, file: !237, line: 263, type: !37)
!1302 = !DILocalVariable(name: "backslash_escapes", scope: !1282, file: !237, line: 264, type: !48)
!1303 = !DILocalVariable(name: "elide_outer_quotes", scope: !1282, file: !237, line: 265, type: !48)
!1304 = !DILocalVariable(name: "encountered_single_quote", scope: !1282, file: !237, line: 266, type: !48)
!1305 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1282, file: !237, line: 267, type: !48)
!1306 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1282, file: !237, line: 309, type: !48)
!1307 = !DILocalVariable(name: "lq", scope: !1308, file: !237, line: 361, type: !6)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !237, line: 361, column: 11)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !237, line: 360, column: 13)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !237, line: 333, column: 7)
!1311 = distinct !DILexicalBlock(scope: !1282, file: !237, line: 312, column: 5)
!1312 = !DILocalVariable(name: "i", scope: !1313, file: !237, line: 395, type: !37)
!1313 = distinct !DILexicalBlock(scope: !1282, file: !237, line: 395, column: 3)
!1314 = !DILocalVariable(name: "is_right_quote", scope: !1315, file: !237, line: 397, type: !48)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !237, line: 396, column: 5)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !237, line: 395, column: 3)
!1317 = !DILocalVariable(name: "escaping", scope: !1315, file: !237, line: 398, type: !48)
!1318 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1315, file: !237, line: 399, type: !48)
!1319 = !DILocalVariable(name: "c", scope: !1315, file: !237, line: 417, type: !39)
!1320 = !DILocalVariable(name: "m", scope: !1321, file: !237, line: 598, type: !37)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !237, line: 596, column: 11)
!1322 = distinct !DILexicalBlock(scope: !1315, file: !237, line: 419, column: 9)
!1323 = !DILocalVariable(name: "printable", scope: !1321, file: !237, line: 600, type: !48)
!1324 = !DILocalVariable(name: "mbs", scope: !1325, file: !237, line: 609, type: !296)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !237, line: 608, column: 15)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !237, line: 602, column: 17)
!1327 = !DILocalVariable(name: "w", scope: !1328, file: !237, line: 618, type: !211)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !237, line: 617, column: 19)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !237, line: 616, column: 17)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !237, line: 616, column: 17)
!1331 = !DILocalVariable(name: "bytes", scope: !1328, file: !237, line: 619, type: !37)
!1332 = !DILocalVariable(name: "j", scope: !1333, file: !237, line: 648, type: !37)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !237, line: 648, column: 29)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !237, line: 647, column: 27)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !237, line: 645, column: 29)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !237, line: 636, column: 23)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !237, line: 628, column: 30)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !237, line: 623, column: 30)
!1339 = distinct !DILexicalBlock(scope: !1328, file: !237, line: 621, column: 25)
!1340 = !DILocalVariable(name: "ilim", scope: !1341, file: !237, line: 674, type: !37)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !237, line: 671, column: 15)
!1342 = distinct !DILexicalBlock(scope: !1321, file: !237, line: 670, column: 17)
!1343 = !DILabel(scope: !1282, name: "process_input", file: !237, line: 308)
!1344 = !DILabel(scope: !1345, name: "c_and_shell_escape", file: !237, line: 502)
!1345 = distinct !DILexicalBlock(scope: !1322, file: !237, line: 478, column: 9)
!1346 = !DILabel(scope: !1345, name: "c_escape", file: !237, line: 507)
!1347 = !DILabel(scope: !1315, name: "store_escape", file: !237, line: 709)
!1348 = !DILabel(scope: !1315, name: "store_c", file: !237, line: 712)
!1349 = !DILabel(scope: !1282, name: "force_outer_quoting_style", file: !237, line: 753)
!1350 = !DILocation(line: 0, scope: !1282)
!1351 = !DILocation(line: 258, column: 25, scope: !1282)
!1352 = !DILocation(line: 258, column: 36, scope: !1282)
!1353 = !DILocation(line: 267, column: 3, scope: !1282)
!1354 = !DILocation(line: 261, column: 10, scope: !1282)
!1355 = !DILocation(line: 262, column: 15, scope: !1282)
!1356 = !DILocation(line: 263, column: 10, scope: !1282)
!1357 = !DILocation(line: 308, column: 2, scope: !1282)
!1358 = !DILocation(line: 311, column: 3, scope: !1282)
!1359 = !DILocation(line: 318, column: 11, scope: !1311)
!1360 = !DILocation(line: 319, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !237, line: 319, column: 9)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !237, line: 319, column: 9)
!1363 = distinct !DILexicalBlock(scope: !1311, file: !237, line: 318, column: 11)
!1364 = !DILocation(line: 319, column: 9, scope: !1362)
!1365 = !DILocation(line: 0, scope: !287, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 357, column: 26, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !237, line: 335, column: 11)
!1368 = distinct !DILexicalBlock(scope: !1310, file: !237, line: 334, column: 13)
!1369 = !DILocation(line: 199, column: 29, scope: !287, inlinedAt: !1366)
!1370 = !DILocation(line: 201, column: 19, scope: !1371, inlinedAt: !1366)
!1371 = distinct !DILexicalBlock(scope: !287, file: !237, line: 201, column: 7)
!1372 = !DILocation(line: 201, column: 7, scope: !287, inlinedAt: !1366)
!1373 = !DILocation(line: 229, column: 3, scope: !287, inlinedAt: !1366)
!1374 = !DILocation(line: 230, column: 3, scope: !287, inlinedAt: !1366)
!1375 = !DILocation(line: 230, column: 13, scope: !287, inlinedAt: !1366)
!1376 = !DILocalVariable(name: "ps", arg: 1, scope: !1377, file: !1128, line: 1135, type: !1380)
!1377 = distinct !DISubprogram(name: "mbszero", scope: !1128, file: !1128, line: 1135, type: !1378, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1381)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!1381 = !{!1376}
!1382 = !DILocation(line: 0, scope: !1377, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 230, column: 18, scope: !287, inlinedAt: !1366)
!1384 = !DILocalVariable(name: "__dest", arg: 1, scope: !1385, file: !1137, line: 57, type: !29)
!1385 = distinct !DISubprogram(name: "memset", scope: !1137, file: !1137, line: 57, type: !1138, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1386)
!1386 = !{!1384, !1387, !1388}
!1387 = !DILocalVariable(name: "__ch", arg: 2, scope: !1385, file: !1137, line: 57, type: !35)
!1388 = !DILocalVariable(name: "__len", arg: 3, scope: !1385, file: !1137, line: 57, type: !37)
!1389 = !DILocation(line: 0, scope: !1385, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 1137, column: 3, scope: !1377, inlinedAt: !1383)
!1391 = !DILocation(line: 59, column: 10, scope: !1385, inlinedAt: !1390)
!1392 = !DILocation(line: 231, column: 7, scope: !1393, inlinedAt: !1366)
!1393 = distinct !DILexicalBlock(scope: !287, file: !237, line: 231, column: 7)
!1394 = !DILocation(line: 231, column: 40, scope: !1393, inlinedAt: !1366)
!1395 = !DILocation(line: 231, column: 45, scope: !1393, inlinedAt: !1366)
!1396 = !DILocation(line: 235, column: 1, scope: !287, inlinedAt: !1366)
!1397 = !DILocation(line: 0, scope: !287, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 358, column: 27, scope: !1367)
!1399 = !DILocation(line: 199, column: 29, scope: !287, inlinedAt: !1398)
!1400 = !DILocation(line: 201, column: 19, scope: !1371, inlinedAt: !1398)
!1401 = !DILocation(line: 201, column: 7, scope: !287, inlinedAt: !1398)
!1402 = !DILocation(line: 229, column: 3, scope: !287, inlinedAt: !1398)
!1403 = !DILocation(line: 230, column: 3, scope: !287, inlinedAt: !1398)
!1404 = !DILocation(line: 230, column: 13, scope: !287, inlinedAt: !1398)
!1405 = !DILocation(line: 0, scope: !1377, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 230, column: 18, scope: !287, inlinedAt: !1398)
!1407 = !DILocation(line: 0, scope: !1385, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 1137, column: 3, scope: !1377, inlinedAt: !1406)
!1409 = !DILocation(line: 59, column: 10, scope: !1385, inlinedAt: !1408)
!1410 = !DILocation(line: 231, column: 7, scope: !1393, inlinedAt: !1398)
!1411 = !DILocation(line: 231, column: 40, scope: !1393, inlinedAt: !1398)
!1412 = !DILocation(line: 231, column: 45, scope: !1393, inlinedAt: !1398)
!1413 = !DILocation(line: 235, column: 1, scope: !287, inlinedAt: !1398)
!1414 = !DILocation(line: 360, column: 13, scope: !1310)
!1415 = !DILocation(line: 0, scope: !1308)
!1416 = !DILocation(line: 361, column: 45, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1308, file: !237, line: 361, column: 11)
!1418 = !DILocation(line: 361, column: 11, scope: !1308)
!1419 = !DILocation(line: 362, column: 13, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !237, line: 362, column: 13)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !237, line: 362, column: 13)
!1422 = !DILocation(line: 362, column: 13, scope: !1421)
!1423 = !DILocation(line: 361, column: 52, scope: !1417)
!1424 = distinct !{!1424, !1418, !1425, !490}
!1425 = !DILocation(line: 362, column: 13, scope: !1308)
!1426 = !DILocation(line: 260, column: 10, scope: !1282)
!1427 = !DILocation(line: 365, column: 28, scope: !1310)
!1428 = !DILocation(line: 367, column: 7, scope: !1311)
!1429 = !DILocation(line: 370, column: 7, scope: !1311)
!1430 = !DILocation(line: 376, column: 11, scope: !1311)
!1431 = !DILocation(line: 381, column: 11, scope: !1311)
!1432 = !DILocation(line: 382, column: 9, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !237, line: 382, column: 9)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !237, line: 382, column: 9)
!1435 = distinct !DILexicalBlock(scope: !1311, file: !237, line: 381, column: 11)
!1436 = !DILocation(line: 382, column: 9, scope: !1434)
!1437 = !DILocation(line: 389, column: 7, scope: !1311)
!1438 = !DILocation(line: 392, column: 7, scope: !1311)
!1439 = !DILocation(line: 0, scope: !1313)
!1440 = !DILocation(line: 395, column: 8, scope: !1313)
!1441 = !DILocation(line: 395, column: 34, scope: !1316)
!1442 = !DILocation(line: 395, column: 26, scope: !1316)
!1443 = !DILocation(line: 395, column: 48, scope: !1316)
!1444 = !DILocation(line: 395, column: 55, scope: !1316)
!1445 = !DILocation(line: 395, column: 3, scope: !1313)
!1446 = !DILocation(line: 395, column: 67, scope: !1316)
!1447 = !DILocation(line: 0, scope: !1315)
!1448 = !DILocation(line: 402, column: 11, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1315, file: !237, line: 401, column: 11)
!1450 = !DILocation(line: 404, column: 17, scope: !1449)
!1451 = !DILocation(line: 405, column: 39, scope: !1449)
!1452 = !DILocation(line: 409, column: 32, scope: !1449)
!1453 = !DILocation(line: 405, column: 19, scope: !1449)
!1454 = !DILocation(line: 405, column: 15, scope: !1449)
!1455 = !DILocation(line: 410, column: 11, scope: !1449)
!1456 = !DILocation(line: 410, column: 25, scope: !1449)
!1457 = !DILocalVariable(name: "__s1", arg: 1, scope: !1458, file: !474, line: 974, type: !642)
!1458 = distinct !DISubprogram(name: "memeq", scope: !474, file: !474, line: 974, type: !1099, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1459)
!1459 = !{!1457, !1460, !1461}
!1460 = !DILocalVariable(name: "__s2", arg: 2, scope: !1458, file: !474, line: 974, type: !642)
!1461 = !DILocalVariable(name: "__n", arg: 3, scope: !1458, file: !474, line: 974, type: !37)
!1462 = !DILocation(line: 0, scope: !1458, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 410, column: 14, scope: !1449)
!1464 = !DILocation(line: 976, column: 11, scope: !1458, inlinedAt: !1463)
!1465 = !DILocation(line: 976, column: 10, scope: !1458, inlinedAt: !1463)
!1466 = !DILocation(line: 401, column: 11, scope: !1315)
!1467 = !DILocation(line: 417, column: 25, scope: !1315)
!1468 = !DILocation(line: 418, column: 7, scope: !1315)
!1469 = !DILocation(line: 421, column: 15, scope: !1322)
!1470 = !DILocation(line: 423, column: 15, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !237, line: 423, column: 15)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !237, line: 422, column: 13)
!1473 = distinct !DILexicalBlock(scope: !1322, file: !237, line: 421, column: 15)
!1474 = !DILocation(line: 423, column: 15, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !237, line: 423, column: 15)
!1476 = !DILocation(line: 423, column: 15, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !237, line: 423, column: 15)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !237, line: 423, column: 15)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !237, line: 423, column: 15)
!1480 = !DILocation(line: 423, column: 15, scope: !1478)
!1481 = !DILocation(line: 423, column: 15, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !237, line: 423, column: 15)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !237, line: 423, column: 15)
!1484 = !DILocation(line: 423, column: 15, scope: !1483)
!1485 = !DILocation(line: 423, column: 15, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !237, line: 423, column: 15)
!1487 = distinct !DILexicalBlock(scope: !1479, file: !237, line: 423, column: 15)
!1488 = !DILocation(line: 423, column: 15, scope: !1487)
!1489 = !DILocation(line: 423, column: 15, scope: !1479)
!1490 = !DILocation(line: 423, column: 15, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !237, line: 423, column: 15)
!1492 = distinct !DILexicalBlock(scope: !1471, file: !237, line: 423, column: 15)
!1493 = !DILocation(line: 423, column: 15, scope: !1492)
!1494 = !DILocation(line: 431, column: 19, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1472, file: !237, line: 430, column: 19)
!1496 = !DILocation(line: 431, column: 24, scope: !1495)
!1497 = !DILocation(line: 431, column: 28, scope: !1495)
!1498 = !DILocation(line: 431, column: 38, scope: !1495)
!1499 = !DILocation(line: 431, column: 48, scope: !1495)
!1500 = !DILocation(line: 431, column: 59, scope: !1495)
!1501 = !DILocation(line: 433, column: 19, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !237, line: 433, column: 19)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !237, line: 433, column: 19)
!1504 = distinct !DILexicalBlock(scope: !1495, file: !237, line: 432, column: 17)
!1505 = !DILocation(line: 433, column: 19, scope: !1503)
!1506 = !DILocation(line: 434, column: 19, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !237, line: 434, column: 19)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !237, line: 434, column: 19)
!1509 = !DILocation(line: 434, column: 19, scope: !1508)
!1510 = !DILocation(line: 435, column: 17, scope: !1504)
!1511 = !DILocation(line: 442, column: 20, scope: !1473)
!1512 = !DILocation(line: 447, column: 11, scope: !1322)
!1513 = !DILocation(line: 450, column: 19, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1322, file: !237, line: 448, column: 13)
!1515 = !DILocation(line: 456, column: 19, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1514, file: !237, line: 455, column: 19)
!1517 = !DILocation(line: 456, column: 24, scope: !1516)
!1518 = !DILocation(line: 456, column: 28, scope: !1516)
!1519 = !DILocation(line: 456, column: 38, scope: !1516)
!1520 = !DILocation(line: 456, column: 47, scope: !1516)
!1521 = !DILocation(line: 456, column: 41, scope: !1516)
!1522 = !DILocation(line: 456, column: 52, scope: !1516)
!1523 = !DILocation(line: 455, column: 19, scope: !1514)
!1524 = !DILocation(line: 457, column: 25, scope: !1516)
!1525 = !DILocation(line: 457, column: 17, scope: !1516)
!1526 = !DILocation(line: 464, column: 25, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1516, file: !237, line: 458, column: 19)
!1528 = !DILocation(line: 468, column: 21, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !237, line: 468, column: 21)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !237, line: 468, column: 21)
!1531 = !DILocation(line: 468, column: 21, scope: !1530)
!1532 = !DILocation(line: 469, column: 21, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !237, line: 469, column: 21)
!1534 = distinct !DILexicalBlock(scope: !1527, file: !237, line: 469, column: 21)
!1535 = !DILocation(line: 469, column: 21, scope: !1534)
!1536 = !DILocation(line: 470, column: 21, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !237, line: 470, column: 21)
!1538 = distinct !DILexicalBlock(scope: !1527, file: !237, line: 470, column: 21)
!1539 = !DILocation(line: 470, column: 21, scope: !1538)
!1540 = !DILocation(line: 471, column: 21, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !237, line: 471, column: 21)
!1542 = distinct !DILexicalBlock(scope: !1527, file: !237, line: 471, column: 21)
!1543 = !DILocation(line: 471, column: 21, scope: !1542)
!1544 = !DILocation(line: 472, column: 21, scope: !1527)
!1545 = !DILocation(line: 482, column: 33, scope: !1345)
!1546 = !DILocation(line: 483, column: 33, scope: !1345)
!1547 = !DILocation(line: 485, column: 33, scope: !1345)
!1548 = !DILocation(line: 486, column: 33, scope: !1345)
!1549 = !DILocation(line: 487, column: 33, scope: !1345)
!1550 = !DILocation(line: 490, column: 17, scope: !1345)
!1551 = !DILocation(line: 492, column: 21, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !237, line: 491, column: 15)
!1553 = distinct !DILexicalBlock(scope: !1345, file: !237, line: 490, column: 17)
!1554 = !DILocation(line: 499, column: 35, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1345, file: !237, line: 499, column: 17)
!1556 = !DILocation(line: 499, column: 57, scope: !1555)
!1557 = !DILocation(line: 0, scope: !1345)
!1558 = !DILocation(line: 502, column: 11, scope: !1345)
!1559 = !DILocation(line: 504, column: 17, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1345, file: !237, line: 503, column: 17)
!1561 = !DILocation(line: 507, column: 11, scope: !1345)
!1562 = !DILocation(line: 508, column: 17, scope: !1345)
!1563 = !DILocation(line: 517, column: 15, scope: !1322)
!1564 = !DILocation(line: 517, column: 40, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1322, file: !237, line: 517, column: 15)
!1566 = !DILocation(line: 517, column: 47, scope: !1565)
!1567 = !DILocation(line: 517, column: 18, scope: !1565)
!1568 = !DILocation(line: 521, column: 17, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1322, file: !237, line: 521, column: 15)
!1570 = !DILocation(line: 521, column: 15, scope: !1322)
!1571 = !DILocation(line: 525, column: 11, scope: !1322)
!1572 = !DILocation(line: 537, column: 15, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1322, file: !237, line: 536, column: 15)
!1574 = !DILocation(line: 536, column: 15, scope: !1322)
!1575 = !DILocation(line: 544, column: 15, scope: !1322)
!1576 = !DILocation(line: 546, column: 19, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !237, line: 545, column: 13)
!1578 = distinct !DILexicalBlock(scope: !1322, file: !237, line: 544, column: 15)
!1579 = !DILocation(line: 549, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !237, line: 549, column: 19)
!1581 = !DILocation(line: 549, column: 30, scope: !1580)
!1582 = !DILocation(line: 558, column: 15, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !237, line: 558, column: 15)
!1584 = distinct !DILexicalBlock(scope: !1577, file: !237, line: 558, column: 15)
!1585 = !DILocation(line: 558, column: 15, scope: !1584)
!1586 = !DILocation(line: 559, column: 15, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !237, line: 559, column: 15)
!1588 = distinct !DILexicalBlock(scope: !1577, file: !237, line: 559, column: 15)
!1589 = !DILocation(line: 559, column: 15, scope: !1588)
!1590 = !DILocation(line: 560, column: 15, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !237, line: 560, column: 15)
!1592 = distinct !DILexicalBlock(scope: !1577, file: !237, line: 560, column: 15)
!1593 = !DILocation(line: 560, column: 15, scope: !1592)
!1594 = !DILocation(line: 562, column: 13, scope: !1577)
!1595 = !DILocation(line: 602, column: 17, scope: !1321)
!1596 = !DILocation(line: 0, scope: !1321)
!1597 = !DILocation(line: 605, column: 29, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1326, file: !237, line: 603, column: 15)
!1599 = !DILocation(line: 605, column: 41, scope: !1598)
!1600 = !DILocation(line: 670, column: 23, scope: !1342)
!1601 = !DILocation(line: 609, column: 17, scope: !1325)
!1602 = !DILocation(line: 609, column: 27, scope: !1325)
!1603 = !DILocation(line: 0, scope: !1377, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 609, column: 32, scope: !1325)
!1605 = !DILocation(line: 0, scope: !1385, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 1137, column: 3, scope: !1377, inlinedAt: !1604)
!1607 = !DILocation(line: 59, column: 10, scope: !1385, inlinedAt: !1606)
!1608 = !DILocation(line: 613, column: 29, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1325, file: !237, line: 613, column: 21)
!1610 = !DILocation(line: 613, column: 21, scope: !1325)
!1611 = !DILocation(line: 614, column: 29, scope: !1609)
!1612 = !DILocation(line: 614, column: 19, scope: !1609)
!1613 = !DILocation(line: 618, column: 21, scope: !1328)
!1614 = !DILocation(line: 620, column: 54, scope: !1328)
!1615 = !DILocation(line: 0, scope: !1328)
!1616 = !DILocation(line: 619, column: 36, scope: !1328)
!1617 = !DILocation(line: 621, column: 25, scope: !1328)
!1618 = !DILocation(line: 631, column: 38, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1337, file: !237, line: 629, column: 23)
!1620 = !DILocation(line: 631, column: 48, scope: !1619)
!1621 = !DILocation(line: 665, column: 19, scope: !1329)
!1622 = !DILocation(line: 666, column: 15, scope: !1326)
!1623 = !DILocation(line: 626, column: 25, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1338, file: !237, line: 624, column: 23)
!1625 = !DILocation(line: 631, column: 51, scope: !1619)
!1626 = !DILocation(line: 631, column: 25, scope: !1619)
!1627 = !DILocation(line: 632, column: 28, scope: !1619)
!1628 = !DILocation(line: 631, column: 34, scope: !1619)
!1629 = distinct !{!1629, !1626, !1627, !490}
!1630 = !DILocation(line: 646, column: 29, scope: !1335)
!1631 = !DILocation(line: 0, scope: !1333)
!1632 = !DILocation(line: 649, column: 49, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1333, file: !237, line: 648, column: 29)
!1634 = !DILocation(line: 649, column: 39, scope: !1633)
!1635 = !DILocation(line: 649, column: 31, scope: !1633)
!1636 = !DILocation(line: 648, column: 60, scope: !1633)
!1637 = !DILocation(line: 648, column: 50, scope: !1633)
!1638 = !DILocation(line: 648, column: 29, scope: !1333)
!1639 = distinct !{!1639, !1638, !1640, !490}
!1640 = !DILocation(line: 654, column: 33, scope: !1333)
!1641 = !DILocation(line: 657, column: 43, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1336, file: !237, line: 657, column: 29)
!1643 = !DILocalVariable(name: "wc", arg: 1, scope: !1644, file: !1645, line: 865, type: !1648)
!1644 = distinct !DISubprogram(name: "c32isprint", scope: !1645, file: !1645, line: 865, type: !1646, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1650)
!1645 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!35, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1649, line: 20, baseType: !14)
!1649 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1650 = !{!1643}
!1651 = !DILocation(line: 0, scope: !1644, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 657, column: 31, scope: !1642)
!1653 = !DILocation(line: 871, column: 10, scope: !1644, inlinedAt: !1652)
!1654 = !DILocation(line: 657, column: 31, scope: !1642)
!1655 = !DILocation(line: 664, column: 23, scope: !1328)
!1656 = !DILocation(line: 753, column: 2, scope: !1282)
!1657 = !DILocation(line: 756, column: 51, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1282, file: !237, line: 756, column: 7)
!1659 = !DILocation(line: 670, column: 19, scope: !1342)
!1660 = !DILocation(line: 670, column: 45, scope: !1342)
!1661 = !DILocation(line: 674, column: 33, scope: !1341)
!1662 = !DILocation(line: 0, scope: !1341)
!1663 = !DILocation(line: 676, column: 17, scope: !1341)
!1664 = !DILocation(line: 398, column: 12, scope: !1315)
!1665 = !DILocation(line: 678, column: 43, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !237, line: 678, column: 25)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !237, line: 677, column: 19)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !237, line: 676, column: 17)
!1669 = distinct !DILexicalBlock(scope: !1341, file: !237, line: 676, column: 17)
!1670 = !DILocation(line: 680, column: 25, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !237, line: 680, column: 25)
!1672 = distinct !DILexicalBlock(scope: !1666, file: !237, line: 679, column: 23)
!1673 = !DILocation(line: 680, column: 25, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !237, line: 680, column: 25)
!1675 = !DILocation(line: 680, column: 25, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !237, line: 680, column: 25)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !237, line: 680, column: 25)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !237, line: 680, column: 25)
!1679 = !DILocation(line: 680, column: 25, scope: !1677)
!1680 = !DILocation(line: 680, column: 25, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !237, line: 680, column: 25)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !237, line: 680, column: 25)
!1683 = !DILocation(line: 680, column: 25, scope: !1682)
!1684 = !DILocation(line: 680, column: 25, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !237, line: 680, column: 25)
!1686 = distinct !DILexicalBlock(scope: !1678, file: !237, line: 680, column: 25)
!1687 = !DILocation(line: 680, column: 25, scope: !1686)
!1688 = !DILocation(line: 680, column: 25, scope: !1678)
!1689 = !DILocation(line: 680, column: 25, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !237, line: 680, column: 25)
!1691 = distinct !DILexicalBlock(scope: !1671, file: !237, line: 680, column: 25)
!1692 = !DILocation(line: 680, column: 25, scope: !1691)
!1693 = !DILocation(line: 681, column: 25, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !237, line: 681, column: 25)
!1695 = distinct !DILexicalBlock(scope: !1672, file: !237, line: 681, column: 25)
!1696 = !DILocation(line: 681, column: 25, scope: !1695)
!1697 = !DILocation(line: 682, column: 25, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !237, line: 682, column: 25)
!1699 = distinct !DILexicalBlock(scope: !1672, file: !237, line: 682, column: 25)
!1700 = !DILocation(line: 682, column: 25, scope: !1699)
!1701 = !DILocation(line: 683, column: 38, scope: !1672)
!1702 = !DILocation(line: 683, column: 33, scope: !1672)
!1703 = !DILocation(line: 684, column: 23, scope: !1672)
!1704 = !DILocation(line: 685, column: 30, scope: !1666)
!1705 = !DILocation(line: 687, column: 25, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !237, line: 687, column: 25)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !237, line: 687, column: 25)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !237, line: 686, column: 23)
!1709 = distinct !DILexicalBlock(scope: !1666, file: !237, line: 685, column: 30)
!1710 = !DILocation(line: 687, column: 25, scope: !1707)
!1711 = !DILocation(line: 689, column: 23, scope: !1708)
!1712 = !DILocation(line: 690, column: 35, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1667, file: !237, line: 690, column: 25)
!1714 = !DILocation(line: 690, column: 30, scope: !1713)
!1715 = !DILocation(line: 690, column: 25, scope: !1667)
!1716 = !DILocation(line: 692, column: 21, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !237, line: 692, column: 21)
!1718 = distinct !DILexicalBlock(scope: !1667, file: !237, line: 692, column: 21)
!1719 = !DILocation(line: 692, column: 21, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !237, line: 692, column: 21)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !237, line: 692, column: 21)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !237, line: 692, column: 21)
!1723 = !DILocation(line: 692, column: 21, scope: !1721)
!1724 = !DILocation(line: 692, column: 21, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !237, line: 692, column: 21)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !237, line: 692, column: 21)
!1727 = !DILocation(line: 692, column: 21, scope: !1726)
!1728 = !DILocation(line: 692, column: 21, scope: !1722)
!1729 = !DILocation(line: 0, scope: !1667)
!1730 = !DILocation(line: 693, column: 21, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !237, line: 693, column: 21)
!1732 = distinct !DILexicalBlock(scope: !1667, file: !237, line: 693, column: 21)
!1733 = !DILocation(line: 693, column: 21, scope: !1732)
!1734 = !DILocation(line: 694, column: 25, scope: !1667)
!1735 = !DILocation(line: 676, column: 17, scope: !1668)
!1736 = distinct !{!1736, !1737, !1738}
!1737 = !DILocation(line: 676, column: 17, scope: !1669)
!1738 = !DILocation(line: 695, column: 19, scope: !1669)
!1739 = !DILocation(line: 409, column: 30, scope: !1449)
!1740 = !DILocation(line: 702, column: 34, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1315, file: !237, line: 702, column: 11)
!1742 = !DILocation(line: 704, column: 14, scope: !1741)
!1743 = !DILocation(line: 705, column: 14, scope: !1741)
!1744 = !DILocation(line: 705, column: 35, scope: !1741)
!1745 = !DILocation(line: 705, column: 17, scope: !1741)
!1746 = !DILocation(line: 705, column: 47, scope: !1741)
!1747 = !DILocation(line: 705, column: 65, scope: !1741)
!1748 = !DILocation(line: 706, column: 11, scope: !1741)
!1749 = !DILocation(line: 702, column: 11, scope: !1315)
!1750 = !DILocation(line: 395, column: 15, scope: !1313)
!1751 = !DILocation(line: 709, column: 5, scope: !1315)
!1752 = !DILocation(line: 710, column: 7, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1315, file: !237, line: 710, column: 7)
!1754 = !DILocation(line: 710, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1753, file: !237, line: 710, column: 7)
!1756 = !DILocation(line: 710, column: 7, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !237, line: 710, column: 7)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !237, line: 710, column: 7)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !237, line: 710, column: 7)
!1760 = !DILocation(line: 710, column: 7, scope: !1758)
!1761 = !DILocation(line: 710, column: 7, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !237, line: 710, column: 7)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !237, line: 710, column: 7)
!1764 = !DILocation(line: 710, column: 7, scope: !1763)
!1765 = !DILocation(line: 710, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !237, line: 710, column: 7)
!1767 = distinct !DILexicalBlock(scope: !1759, file: !237, line: 710, column: 7)
!1768 = !DILocation(line: 710, column: 7, scope: !1767)
!1769 = !DILocation(line: 710, column: 7, scope: !1759)
!1770 = !DILocation(line: 710, column: 7, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !237, line: 710, column: 7)
!1772 = distinct !DILexicalBlock(scope: !1753, file: !237, line: 710, column: 7)
!1773 = !DILocation(line: 710, column: 7, scope: !1772)
!1774 = !DILocation(line: 712, column: 5, scope: !1315)
!1775 = !DILocation(line: 713, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !237, line: 713, column: 7)
!1777 = distinct !DILexicalBlock(scope: !1315, file: !237, line: 713, column: 7)
!1778 = !DILocation(line: 417, column: 21, scope: !1315)
!1779 = !DILocation(line: 713, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !237, line: 713, column: 7)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !237, line: 713, column: 7)
!1782 = distinct !DILexicalBlock(scope: !1776, file: !237, line: 713, column: 7)
!1783 = !DILocation(line: 713, column: 7, scope: !1781)
!1784 = !DILocation(line: 713, column: 7, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !237, line: 713, column: 7)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !237, line: 713, column: 7)
!1787 = !DILocation(line: 713, column: 7, scope: !1786)
!1788 = !DILocation(line: 713, column: 7, scope: !1782)
!1789 = !DILocation(line: 714, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !237, line: 714, column: 7)
!1791 = distinct !DILexicalBlock(scope: !1315, file: !237, line: 714, column: 7)
!1792 = !DILocation(line: 714, column: 7, scope: !1791)
!1793 = !DILocation(line: 716, column: 11, scope: !1315)
!1794 = !DILocation(line: 718, column: 5, scope: !1316)
!1795 = !DILocation(line: 395, column: 82, scope: !1316)
!1796 = !DILocation(line: 395, column: 3, scope: !1316)
!1797 = distinct !{!1797, !1445, !1798, !490}
!1798 = !DILocation(line: 718, column: 5, scope: !1313)
!1799 = !DILocation(line: 720, column: 11, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1282, file: !237, line: 720, column: 7)
!1801 = !DILocation(line: 720, column: 16, scope: !1800)
!1802 = !DILocation(line: 728, column: 51, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1282, file: !237, line: 728, column: 7)
!1804 = !DILocation(line: 731, column: 11, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1803, file: !237, line: 730, column: 5)
!1806 = !DILocation(line: 732, column: 16, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1805, file: !237, line: 731, column: 11)
!1808 = !DILocation(line: 732, column: 9, scope: !1807)
!1809 = !DILocation(line: 736, column: 18, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1807, file: !237, line: 736, column: 16)
!1811 = !DILocation(line: 736, column: 29, scope: !1810)
!1812 = !DILocation(line: 745, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1282, file: !237, line: 745, column: 7)
!1814 = !DILocation(line: 745, column: 20, scope: !1813)
!1815 = !DILocation(line: 746, column: 12, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !237, line: 746, column: 5)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !237, line: 746, column: 5)
!1818 = !DILocation(line: 746, column: 5, scope: !1817)
!1819 = !DILocation(line: 747, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !237, line: 747, column: 7)
!1821 = distinct !DILexicalBlock(scope: !1816, file: !237, line: 747, column: 7)
!1822 = !DILocation(line: 747, column: 7, scope: !1821)
!1823 = !DILocation(line: 746, column: 39, scope: !1816)
!1824 = distinct !{!1824, !1818, !1825, !490}
!1825 = !DILocation(line: 747, column: 7, scope: !1817)
!1826 = !DILocation(line: 749, column: 11, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1282, file: !237, line: 749, column: 7)
!1828 = !DILocation(line: 749, column: 7, scope: !1282)
!1829 = !DILocation(line: 750, column: 5, scope: !1827)
!1830 = !DILocation(line: 750, column: 17, scope: !1827)
!1831 = !DILocation(line: 756, column: 21, scope: !1658)
!1832 = !DILocation(line: 760, column: 42, scope: !1282)
!1833 = !DILocation(line: 758, column: 10, scope: !1282)
!1834 = !DILocation(line: 758, column: 3, scope: !1282)
!1835 = !DILocation(line: 762, column: 1, scope: !1282)
!1836 = !DISubprogram(name: "iswprint", scope: !1837, file: !1837, line: 120, type: !1646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!1837 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1838 = distinct !DISubprogram(name: "quotearg_alloc", scope: !237, file: !237, line: 788, type: !1839, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1841)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!69, !6, !37, !1174}
!1841 = !{!1842, !1843, !1844}
!1842 = !DILocalVariable(name: "arg", arg: 1, scope: !1838, file: !237, line: 788, type: !6)
!1843 = !DILocalVariable(name: "argsize", arg: 2, scope: !1838, file: !237, line: 788, type: !37)
!1844 = !DILocalVariable(name: "o", arg: 3, scope: !1838, file: !237, line: 789, type: !1174)
!1845 = !DILocation(line: 0, scope: !1838)
!1846 = !DILocalVariable(name: "arg", arg: 1, scope: !1847, file: !237, line: 801, type: !6)
!1847 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !237, file: !237, line: 801, type: !1848, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!69, !6, !37, !369, !1174}
!1850 = !{!1846, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858}
!1851 = !DILocalVariable(name: "argsize", arg: 2, scope: !1847, file: !237, line: 801, type: !37)
!1852 = !DILocalVariable(name: "size", arg: 3, scope: !1847, file: !237, line: 801, type: !369)
!1853 = !DILocalVariable(name: "o", arg: 4, scope: !1847, file: !237, line: 802, type: !1174)
!1854 = !DILocalVariable(name: "p", scope: !1847, file: !237, line: 804, type: !1174)
!1855 = !DILocalVariable(name: "saved_errno", scope: !1847, file: !237, line: 805, type: !35)
!1856 = !DILocalVariable(name: "flags", scope: !1847, file: !237, line: 807, type: !35)
!1857 = !DILocalVariable(name: "bufsize", scope: !1847, file: !237, line: 808, type: !37)
!1858 = !DILocalVariable(name: "buf", scope: !1847, file: !237, line: 812, type: !69)
!1859 = !DILocation(line: 0, scope: !1847, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 791, column: 10, scope: !1838)
!1861 = !DILocation(line: 804, column: 37, scope: !1847, inlinedAt: !1860)
!1862 = !DILocation(line: 805, column: 21, scope: !1847, inlinedAt: !1860)
!1863 = !DILocation(line: 807, column: 18, scope: !1847, inlinedAt: !1860)
!1864 = !DILocation(line: 807, column: 24, scope: !1847, inlinedAt: !1860)
!1865 = !DILocation(line: 808, column: 72, scope: !1847, inlinedAt: !1860)
!1866 = !DILocation(line: 809, column: 53, scope: !1847, inlinedAt: !1860)
!1867 = !DILocation(line: 810, column: 49, scope: !1847, inlinedAt: !1860)
!1868 = !DILocation(line: 811, column: 49, scope: !1847, inlinedAt: !1860)
!1869 = !DILocation(line: 808, column: 20, scope: !1847, inlinedAt: !1860)
!1870 = !DILocation(line: 811, column: 62, scope: !1847, inlinedAt: !1860)
!1871 = !DILocation(line: 812, column: 15, scope: !1847, inlinedAt: !1860)
!1872 = !DILocation(line: 813, column: 60, scope: !1847, inlinedAt: !1860)
!1873 = !DILocation(line: 815, column: 32, scope: !1847, inlinedAt: !1860)
!1874 = !DILocation(line: 815, column: 47, scope: !1847, inlinedAt: !1860)
!1875 = !DILocation(line: 813, column: 3, scope: !1847, inlinedAt: !1860)
!1876 = !DILocation(line: 816, column: 9, scope: !1847, inlinedAt: !1860)
!1877 = !DILocation(line: 791, column: 3, scope: !1838)
!1878 = !DILocation(line: 0, scope: !1847)
!1879 = !DILocation(line: 804, column: 37, scope: !1847)
!1880 = !DILocation(line: 805, column: 21, scope: !1847)
!1881 = !DILocation(line: 807, column: 18, scope: !1847)
!1882 = !DILocation(line: 807, column: 27, scope: !1847)
!1883 = !DILocation(line: 807, column: 24, scope: !1847)
!1884 = !DILocation(line: 808, column: 72, scope: !1847)
!1885 = !DILocation(line: 809, column: 53, scope: !1847)
!1886 = !DILocation(line: 810, column: 49, scope: !1847)
!1887 = !DILocation(line: 811, column: 49, scope: !1847)
!1888 = !DILocation(line: 808, column: 20, scope: !1847)
!1889 = !DILocation(line: 811, column: 62, scope: !1847)
!1890 = !DILocation(line: 812, column: 15, scope: !1847)
!1891 = !DILocation(line: 813, column: 60, scope: !1847)
!1892 = !DILocation(line: 815, column: 32, scope: !1847)
!1893 = !DILocation(line: 815, column: 47, scope: !1847)
!1894 = !DILocation(line: 813, column: 3, scope: !1847)
!1895 = !DILocation(line: 816, column: 9, scope: !1847)
!1896 = !DILocation(line: 817, column: 7, scope: !1847)
!1897 = !DILocation(line: 818, column: 11, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1847, file: !237, line: 817, column: 7)
!1899 = !{!904, !904, i64 0}
!1900 = !DILocation(line: 818, column: 5, scope: !1898)
!1901 = !DILocation(line: 819, column: 3, scope: !1847)
!1902 = distinct !DISubprogram(name: "quotearg_free", scope: !237, file: !237, line: 837, type: !173, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1903)
!1903 = !{!1904, !1905}
!1904 = !DILocalVariable(name: "sv", scope: !1902, file: !237, line: 839, type: !310)
!1905 = !DILocalVariable(name: "i", scope: !1906, file: !237, line: 840, type: !35)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !237, line: 840, column: 3)
!1907 = !DILocation(line: 839, column: 24, scope: !1902)
!1908 = !DILocation(line: 0, scope: !1902)
!1909 = !DILocation(line: 0, scope: !1906)
!1910 = !DILocation(line: 840, column: 21, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !237, line: 840, column: 3)
!1912 = !DILocation(line: 840, column: 3, scope: !1906)
!1913 = !DILocation(line: 842, column: 13, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1902, file: !237, line: 842, column: 7)
!1915 = !{!1916, !439, i64 8}
!1916 = !{!"slotvec", !904, i64 0, !439, i64 8}
!1917 = !DILocation(line: 842, column: 17, scope: !1914)
!1918 = !DILocation(line: 842, column: 7, scope: !1902)
!1919 = !DILocation(line: 841, column: 17, scope: !1911)
!1920 = !DILocation(line: 841, column: 5, scope: !1911)
!1921 = !DILocation(line: 840, column: 32, scope: !1911)
!1922 = distinct !{!1922, !1912, !1923, !490}
!1923 = !DILocation(line: 841, column: 20, scope: !1906)
!1924 = !DILocation(line: 844, column: 7, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1914, file: !237, line: 843, column: 5)
!1926 = !DILocation(line: 845, column: 21, scope: !1925)
!1927 = !{!1916, !904, i64 0}
!1928 = !DILocation(line: 846, column: 20, scope: !1925)
!1929 = !DILocation(line: 847, column: 5, scope: !1925)
!1930 = !DILocation(line: 848, column: 10, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1902, file: !237, line: 848, column: 7)
!1932 = !DILocation(line: 848, column: 7, scope: !1902)
!1933 = !DILocation(line: 850, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !237, line: 849, column: 5)
!1935 = !DILocation(line: 850, column: 7, scope: !1934)
!1936 = !DILocation(line: 851, column: 15, scope: !1934)
!1937 = !DILocation(line: 852, column: 5, scope: !1934)
!1938 = !DILocation(line: 853, column: 10, scope: !1902)
!1939 = !DILocation(line: 854, column: 1, scope: !1902)
!1940 = distinct !DISubprogram(name: "quotearg_n", scope: !237, file: !237, line: 919, type: !632, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1941)
!1941 = !{!1942, !1943}
!1942 = !DILocalVariable(name: "n", arg: 1, scope: !1940, file: !237, line: 919, type: !35)
!1943 = !DILocalVariable(name: "arg", arg: 2, scope: !1940, file: !237, line: 919, type: !6)
!1944 = !DILocation(line: 0, scope: !1940)
!1945 = !DILocation(line: 921, column: 10, scope: !1940)
!1946 = !DILocation(line: 921, column: 3, scope: !1940)
!1947 = distinct !DISubprogram(name: "quotearg_n_options", scope: !237, file: !237, line: 866, type: !1948, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!69, !35, !6, !37, !1174}
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1961, !1962, !1964, !1965, !1966}
!1951 = !DILocalVariable(name: "n", arg: 1, scope: !1947, file: !237, line: 866, type: !35)
!1952 = !DILocalVariable(name: "arg", arg: 2, scope: !1947, file: !237, line: 866, type: !6)
!1953 = !DILocalVariable(name: "argsize", arg: 3, scope: !1947, file: !237, line: 866, type: !37)
!1954 = !DILocalVariable(name: "options", arg: 4, scope: !1947, file: !237, line: 867, type: !1174)
!1955 = !DILocalVariable(name: "saved_errno", scope: !1947, file: !237, line: 869, type: !35)
!1956 = !DILocalVariable(name: "sv", scope: !1947, file: !237, line: 871, type: !310)
!1957 = !DILocalVariable(name: "nslots_max", scope: !1947, file: !237, line: 873, type: !35)
!1958 = !DILocalVariable(name: "preallocated", scope: !1959, file: !237, line: 879, type: !48)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !237, line: 878, column: 5)
!1960 = distinct !DILexicalBlock(scope: !1947, file: !237, line: 877, column: 7)
!1961 = !DILocalVariable(name: "new_nslots", scope: !1959, file: !237, line: 880, type: !382)
!1962 = !DILocalVariable(name: "size", scope: !1963, file: !237, line: 891, type: !37)
!1963 = distinct !DILexicalBlock(scope: !1947, file: !237, line: 890, column: 3)
!1964 = !DILocalVariable(name: "val", scope: !1963, file: !237, line: 892, type: !69)
!1965 = !DILocalVariable(name: "flags", scope: !1963, file: !237, line: 894, type: !35)
!1966 = !DILocalVariable(name: "qsize", scope: !1963, file: !237, line: 895, type: !37)
!1967 = !DILocation(line: 0, scope: !1947)
!1968 = !DILocation(line: 869, column: 21, scope: !1947)
!1969 = !DILocation(line: 871, column: 24, scope: !1947)
!1970 = !DILocation(line: 874, column: 17, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1947, file: !237, line: 874, column: 7)
!1972 = !DILocation(line: 875, column: 5, scope: !1971)
!1973 = !DILocation(line: 877, column: 7, scope: !1960)
!1974 = !DILocation(line: 877, column: 14, scope: !1960)
!1975 = !DILocation(line: 877, column: 7, scope: !1947)
!1976 = !DILocation(line: 879, column: 31, scope: !1959)
!1977 = !DILocation(line: 0, scope: !1959)
!1978 = !DILocation(line: 880, column: 7, scope: !1959)
!1979 = !DILocation(line: 880, column: 26, scope: !1959)
!1980 = !DILocation(line: 880, column: 13, scope: !1959)
!1981 = !DILocation(line: 882, column: 31, scope: !1959)
!1982 = !DILocation(line: 883, column: 33, scope: !1959)
!1983 = !DILocation(line: 883, column: 42, scope: !1959)
!1984 = !DILocation(line: 883, column: 31, scope: !1959)
!1985 = !DILocation(line: 882, column: 22, scope: !1959)
!1986 = !DILocation(line: 882, column: 15, scope: !1959)
!1987 = !DILocation(line: 884, column: 11, scope: !1959)
!1988 = !DILocation(line: 885, column: 15, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1959, file: !237, line: 884, column: 11)
!1990 = !{i64 0, i64 8, !1899, i64 8, i64 8, !438}
!1991 = !DILocation(line: 885, column: 9, scope: !1989)
!1992 = !DILocation(line: 886, column: 20, scope: !1959)
!1993 = !DILocation(line: 886, column: 18, scope: !1959)
!1994 = !DILocation(line: 886, column: 15, scope: !1959)
!1995 = !DILocation(line: 886, column: 32, scope: !1959)
!1996 = !DILocation(line: 886, column: 43, scope: !1959)
!1997 = !DILocation(line: 886, column: 53, scope: !1959)
!1998 = !DILocation(line: 0, scope: !1385, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 886, column: 7, scope: !1959)
!2000 = !DILocation(line: 59, column: 10, scope: !1385, inlinedAt: !1999)
!2001 = !DILocation(line: 887, column: 16, scope: !1959)
!2002 = !DILocation(line: 887, column: 14, scope: !1959)
!2003 = !DILocation(line: 888, column: 5, scope: !1960)
!2004 = !DILocation(line: 888, column: 5, scope: !1959)
!2005 = !DILocation(line: 891, column: 19, scope: !1963)
!2006 = !DILocation(line: 891, column: 25, scope: !1963)
!2007 = !DILocation(line: 0, scope: !1963)
!2008 = !DILocation(line: 892, column: 23, scope: !1963)
!2009 = !DILocation(line: 894, column: 26, scope: !1963)
!2010 = !DILocation(line: 894, column: 32, scope: !1963)
!2011 = !DILocation(line: 896, column: 55, scope: !1963)
!2012 = !DILocation(line: 897, column: 46, scope: !1963)
!2013 = !DILocation(line: 898, column: 55, scope: !1963)
!2014 = !DILocation(line: 899, column: 55, scope: !1963)
!2015 = !DILocation(line: 895, column: 20, scope: !1963)
!2016 = !DILocation(line: 901, column: 14, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1963, file: !237, line: 901, column: 9)
!2018 = !DILocation(line: 901, column: 9, scope: !1963)
!2019 = !DILocation(line: 903, column: 35, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !237, line: 902, column: 7)
!2021 = !DILocation(line: 903, column: 20, scope: !2020)
!2022 = !DILocation(line: 904, column: 17, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !237, line: 904, column: 13)
!2024 = !DILocation(line: 904, column: 13, scope: !2020)
!2025 = !DILocation(line: 905, column: 11, scope: !2023)
!2026 = !DILocation(line: 906, column: 27, scope: !2020)
!2027 = !DILocation(line: 906, column: 19, scope: !2020)
!2028 = !DILocation(line: 907, column: 69, scope: !2020)
!2029 = !DILocation(line: 909, column: 44, scope: !2020)
!2030 = !DILocation(line: 910, column: 44, scope: !2020)
!2031 = !DILocation(line: 907, column: 9, scope: !2020)
!2032 = !DILocation(line: 911, column: 7, scope: !2020)
!2033 = !DILocation(line: 913, column: 11, scope: !1963)
!2034 = !DILocation(line: 914, column: 5, scope: !1963)
!2035 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !237, file: !237, line: 925, type: !2036, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!69, !35, !6, !37}
!2038 = !{!2039, !2040, !2041}
!2039 = !DILocalVariable(name: "n", arg: 1, scope: !2035, file: !237, line: 925, type: !35)
!2040 = !DILocalVariable(name: "arg", arg: 2, scope: !2035, file: !237, line: 925, type: !6)
!2041 = !DILocalVariable(name: "argsize", arg: 3, scope: !2035, file: !237, line: 925, type: !37)
!2042 = !DILocation(line: 0, scope: !2035)
!2043 = !DILocation(line: 927, column: 10, scope: !2035)
!2044 = !DILocation(line: 927, column: 3, scope: !2035)
!2045 = distinct !DISubprogram(name: "quotearg", scope: !237, file: !237, line: 931, type: !636, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2046)
!2046 = !{!2047}
!2047 = !DILocalVariable(name: "arg", arg: 1, scope: !2045, file: !237, line: 931, type: !6)
!2048 = !DILocation(line: 0, scope: !2045)
!2049 = !DILocation(line: 0, scope: !1940, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 933, column: 10, scope: !2045)
!2051 = !DILocation(line: 921, column: 10, scope: !1940, inlinedAt: !2050)
!2052 = !DILocation(line: 933, column: 3, scope: !2045)
!2053 = distinct !DISubprogram(name: "quotearg_mem", scope: !237, file: !237, line: 937, type: !2054, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2056)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!69, !6, !37}
!2056 = !{!2057, !2058}
!2057 = !DILocalVariable(name: "arg", arg: 1, scope: !2053, file: !237, line: 937, type: !6)
!2058 = !DILocalVariable(name: "argsize", arg: 2, scope: !2053, file: !237, line: 937, type: !37)
!2059 = !DILocation(line: 0, scope: !2053)
!2060 = !DILocation(line: 0, scope: !2035, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 939, column: 10, scope: !2053)
!2062 = !DILocation(line: 927, column: 10, scope: !2035, inlinedAt: !2061)
!2063 = !DILocation(line: 939, column: 3, scope: !2053)
!2064 = distinct !DISubprogram(name: "quotearg_n_style", scope: !237, file: !237, line: 943, type: !2065, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!69, !35, !239, !6}
!2067 = !{!2068, !2069, !2070, !2071}
!2068 = !DILocalVariable(name: "n", arg: 1, scope: !2064, file: !237, line: 943, type: !35)
!2069 = !DILocalVariable(name: "s", arg: 2, scope: !2064, file: !237, line: 943, type: !239)
!2070 = !DILocalVariable(name: "arg", arg: 3, scope: !2064, file: !237, line: 943, type: !6)
!2071 = !DILocalVariable(name: "o", scope: !2064, file: !237, line: 945, type: !1175)
!2072 = !DILocation(line: 0, scope: !2064)
!2073 = !DILocation(line: 945, column: 3, scope: !2064)
!2074 = !DILocation(line: 945, column: 32, scope: !2064)
!2075 = !{!2076}
!2076 = distinct !{!2076, !2077, !"quoting_options_from_style: argument 0"}
!2077 = distinct !{!2077, !"quoting_options_from_style"}
!2078 = !DILocation(line: 945, column: 36, scope: !2064)
!2079 = !DILocalVariable(name: "style", arg: 1, scope: !2080, file: !237, line: 183, type: !239)
!2080 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !237, file: !237, line: 183, type: !2081, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!268, !239}
!2083 = !{!2079, !2084}
!2084 = !DILocalVariable(name: "o", scope: !2080, file: !237, line: 185, type: !268)
!2085 = !DILocation(line: 0, scope: !2080, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 945, column: 36, scope: !2064)
!2087 = !DILocation(line: 185, column: 26, scope: !2080, inlinedAt: !2086)
!2088 = !DILocation(line: 186, column: 13, scope: !2089, inlinedAt: !2086)
!2089 = distinct !DILexicalBlock(scope: !2080, file: !237, line: 186, column: 7)
!2090 = !DILocation(line: 186, column: 7, scope: !2080, inlinedAt: !2086)
!2091 = !DILocation(line: 187, column: 5, scope: !2089, inlinedAt: !2086)
!2092 = !DILocation(line: 188, column: 5, scope: !2080, inlinedAt: !2086)
!2093 = !DILocation(line: 188, column: 11, scope: !2080, inlinedAt: !2086)
!2094 = !DILocation(line: 946, column: 10, scope: !2064)
!2095 = !DILocation(line: 947, column: 1, scope: !2064)
!2096 = !DILocation(line: 946, column: 3, scope: !2064)
!2097 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !237, file: !237, line: 950, type: !2098, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!69, !35, !239, !6, !37}
!2100 = !{!2101, !2102, !2103, !2104, !2105}
!2101 = !DILocalVariable(name: "n", arg: 1, scope: !2097, file: !237, line: 950, type: !35)
!2102 = !DILocalVariable(name: "s", arg: 2, scope: !2097, file: !237, line: 950, type: !239)
!2103 = !DILocalVariable(name: "arg", arg: 3, scope: !2097, file: !237, line: 951, type: !6)
!2104 = !DILocalVariable(name: "argsize", arg: 4, scope: !2097, file: !237, line: 951, type: !37)
!2105 = !DILocalVariable(name: "o", scope: !2097, file: !237, line: 953, type: !1175)
!2106 = !DILocation(line: 0, scope: !2097)
!2107 = !DILocation(line: 953, column: 3, scope: !2097)
!2108 = !DILocation(line: 953, column: 32, scope: !2097)
!2109 = !{!2110}
!2110 = distinct !{!2110, !2111, !"quoting_options_from_style: argument 0"}
!2111 = distinct !{!2111, !"quoting_options_from_style"}
!2112 = !DILocation(line: 953, column: 36, scope: !2097)
!2113 = !DILocation(line: 0, scope: !2080, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 953, column: 36, scope: !2097)
!2115 = !DILocation(line: 185, column: 26, scope: !2080, inlinedAt: !2114)
!2116 = !DILocation(line: 186, column: 13, scope: !2089, inlinedAt: !2114)
!2117 = !DILocation(line: 186, column: 7, scope: !2080, inlinedAt: !2114)
!2118 = !DILocation(line: 187, column: 5, scope: !2089, inlinedAt: !2114)
!2119 = !DILocation(line: 188, column: 5, scope: !2080, inlinedAt: !2114)
!2120 = !DILocation(line: 188, column: 11, scope: !2080, inlinedAt: !2114)
!2121 = !DILocation(line: 954, column: 10, scope: !2097)
!2122 = !DILocation(line: 955, column: 1, scope: !2097)
!2123 = !DILocation(line: 954, column: 3, scope: !2097)
!2124 = distinct !DISubprogram(name: "quotearg_style", scope: !237, file: !237, line: 958, type: !2125, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!69, !239, !6}
!2127 = !{!2128, !2129}
!2128 = !DILocalVariable(name: "s", arg: 1, scope: !2124, file: !237, line: 958, type: !239)
!2129 = !DILocalVariable(name: "arg", arg: 2, scope: !2124, file: !237, line: 958, type: !6)
!2130 = !DILocation(line: 0, scope: !2124)
!2131 = !DILocation(line: 0, scope: !2064, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 960, column: 10, scope: !2124)
!2133 = !DILocation(line: 945, column: 3, scope: !2064, inlinedAt: !2132)
!2134 = !DILocation(line: 945, column: 32, scope: !2064, inlinedAt: !2132)
!2135 = !{!2136}
!2136 = distinct !{!2136, !2137, !"quoting_options_from_style: argument 0"}
!2137 = distinct !{!2137, !"quoting_options_from_style"}
!2138 = !DILocation(line: 945, column: 36, scope: !2064, inlinedAt: !2132)
!2139 = !DILocation(line: 0, scope: !2080, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 945, column: 36, scope: !2064, inlinedAt: !2132)
!2141 = !DILocation(line: 185, column: 26, scope: !2080, inlinedAt: !2140)
!2142 = !DILocation(line: 186, column: 13, scope: !2089, inlinedAt: !2140)
!2143 = !DILocation(line: 186, column: 7, scope: !2080, inlinedAt: !2140)
!2144 = !DILocation(line: 187, column: 5, scope: !2089, inlinedAt: !2140)
!2145 = !DILocation(line: 188, column: 5, scope: !2080, inlinedAt: !2140)
!2146 = !DILocation(line: 188, column: 11, scope: !2080, inlinedAt: !2140)
!2147 = !DILocation(line: 946, column: 10, scope: !2064, inlinedAt: !2132)
!2148 = !DILocation(line: 947, column: 1, scope: !2064, inlinedAt: !2132)
!2149 = !DILocation(line: 960, column: 3, scope: !2124)
!2150 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !237, file: !237, line: 964, type: !2151, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!69, !239, !6, !37}
!2153 = !{!2154, !2155, !2156}
!2154 = !DILocalVariable(name: "s", arg: 1, scope: !2150, file: !237, line: 964, type: !239)
!2155 = !DILocalVariable(name: "arg", arg: 2, scope: !2150, file: !237, line: 964, type: !6)
!2156 = !DILocalVariable(name: "argsize", arg: 3, scope: !2150, file: !237, line: 964, type: !37)
!2157 = !DILocation(line: 0, scope: !2150)
!2158 = !DILocation(line: 0, scope: !2097, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 966, column: 10, scope: !2150)
!2160 = !DILocation(line: 953, column: 3, scope: !2097, inlinedAt: !2159)
!2161 = !DILocation(line: 953, column: 32, scope: !2097, inlinedAt: !2159)
!2162 = !{!2163}
!2163 = distinct !{!2163, !2164, !"quoting_options_from_style: argument 0"}
!2164 = distinct !{!2164, !"quoting_options_from_style"}
!2165 = !DILocation(line: 953, column: 36, scope: !2097, inlinedAt: !2159)
!2166 = !DILocation(line: 0, scope: !2080, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 953, column: 36, scope: !2097, inlinedAt: !2159)
!2168 = !DILocation(line: 185, column: 26, scope: !2080, inlinedAt: !2167)
!2169 = !DILocation(line: 186, column: 13, scope: !2089, inlinedAt: !2167)
!2170 = !DILocation(line: 186, column: 7, scope: !2080, inlinedAt: !2167)
!2171 = !DILocation(line: 187, column: 5, scope: !2089, inlinedAt: !2167)
!2172 = !DILocation(line: 188, column: 5, scope: !2080, inlinedAt: !2167)
!2173 = !DILocation(line: 188, column: 11, scope: !2080, inlinedAt: !2167)
!2174 = !DILocation(line: 954, column: 10, scope: !2097, inlinedAt: !2159)
!2175 = !DILocation(line: 955, column: 1, scope: !2097, inlinedAt: !2159)
!2176 = !DILocation(line: 966, column: 3, scope: !2150)
!2177 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !237, file: !237, line: 970, type: !2178, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!69, !6, !37, !8}
!2180 = !{!2181, !2182, !2183, !2184}
!2181 = !DILocalVariable(name: "arg", arg: 1, scope: !2177, file: !237, line: 970, type: !6)
!2182 = !DILocalVariable(name: "argsize", arg: 2, scope: !2177, file: !237, line: 970, type: !37)
!2183 = !DILocalVariable(name: "ch", arg: 3, scope: !2177, file: !237, line: 970, type: !8)
!2184 = !DILocalVariable(name: "options", scope: !2177, file: !237, line: 972, type: !268)
!2185 = !DILocation(line: 0, scope: !2177)
!2186 = !DILocation(line: 972, column: 3, scope: !2177)
!2187 = !DILocation(line: 972, column: 26, scope: !2177)
!2188 = !DILocation(line: 973, column: 13, scope: !2177)
!2189 = !{i64 0, i64 4, !533, i64 4, i64 4, !524, i64 8, i64 32, !533, i64 40, i64 8, !438, i64 48, i64 8, !438}
!2190 = !DILocation(line: 0, scope: !1195, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 974, column: 3, scope: !2177)
!2192 = !DILocation(line: 147, column: 62, scope: !1195, inlinedAt: !2191)
!2193 = !DILocation(line: 147, column: 57, scope: !1195, inlinedAt: !2191)
!2194 = !DILocation(line: 148, column: 15, scope: !1195, inlinedAt: !2191)
!2195 = !DILocation(line: 149, column: 21, scope: !1195, inlinedAt: !2191)
!2196 = !DILocation(line: 149, column: 24, scope: !1195, inlinedAt: !2191)
!2197 = !DILocation(line: 149, column: 34, scope: !1195, inlinedAt: !2191)
!2198 = !DILocation(line: 150, column: 19, scope: !1195, inlinedAt: !2191)
!2199 = !DILocation(line: 150, column: 24, scope: !1195, inlinedAt: !2191)
!2200 = !DILocation(line: 150, column: 6, scope: !1195, inlinedAt: !2191)
!2201 = !DILocation(line: 975, column: 10, scope: !2177)
!2202 = !DILocation(line: 976, column: 1, scope: !2177)
!2203 = !DILocation(line: 975, column: 3, scope: !2177)
!2204 = distinct !DISubprogram(name: "quotearg_char", scope: !237, file: !237, line: 979, type: !2205, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!69, !6, !8}
!2207 = !{!2208, !2209}
!2208 = !DILocalVariable(name: "arg", arg: 1, scope: !2204, file: !237, line: 979, type: !6)
!2209 = !DILocalVariable(name: "ch", arg: 2, scope: !2204, file: !237, line: 979, type: !8)
!2210 = !DILocation(line: 0, scope: !2204)
!2211 = !DILocation(line: 0, scope: !2177, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 981, column: 10, scope: !2204)
!2213 = !DILocation(line: 972, column: 3, scope: !2177, inlinedAt: !2212)
!2214 = !DILocation(line: 972, column: 26, scope: !2177, inlinedAt: !2212)
!2215 = !DILocation(line: 973, column: 13, scope: !2177, inlinedAt: !2212)
!2216 = !DILocation(line: 0, scope: !1195, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 974, column: 3, scope: !2177, inlinedAt: !2212)
!2218 = !DILocation(line: 147, column: 62, scope: !1195, inlinedAt: !2217)
!2219 = !DILocation(line: 147, column: 57, scope: !1195, inlinedAt: !2217)
!2220 = !DILocation(line: 148, column: 15, scope: !1195, inlinedAt: !2217)
!2221 = !DILocation(line: 149, column: 21, scope: !1195, inlinedAt: !2217)
!2222 = !DILocation(line: 149, column: 24, scope: !1195, inlinedAt: !2217)
!2223 = !DILocation(line: 149, column: 34, scope: !1195, inlinedAt: !2217)
!2224 = !DILocation(line: 150, column: 19, scope: !1195, inlinedAt: !2217)
!2225 = !DILocation(line: 150, column: 24, scope: !1195, inlinedAt: !2217)
!2226 = !DILocation(line: 150, column: 6, scope: !1195, inlinedAt: !2217)
!2227 = !DILocation(line: 975, column: 10, scope: !2177, inlinedAt: !2212)
!2228 = !DILocation(line: 976, column: 1, scope: !2177, inlinedAt: !2212)
!2229 = !DILocation(line: 981, column: 3, scope: !2204)
!2230 = distinct !DISubprogram(name: "quotearg_colon", scope: !237, file: !237, line: 985, type: !636, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2231)
!2231 = !{!2232}
!2232 = !DILocalVariable(name: "arg", arg: 1, scope: !2230, file: !237, line: 985, type: !6)
!2233 = !DILocation(line: 0, scope: !2230)
!2234 = !DILocation(line: 0, scope: !2204, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 987, column: 10, scope: !2230)
!2236 = !DILocation(line: 0, scope: !2177, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 981, column: 10, scope: !2204, inlinedAt: !2235)
!2238 = !DILocation(line: 972, column: 3, scope: !2177, inlinedAt: !2237)
!2239 = !DILocation(line: 972, column: 26, scope: !2177, inlinedAt: !2237)
!2240 = !DILocation(line: 973, column: 13, scope: !2177, inlinedAt: !2237)
!2241 = !DILocation(line: 0, scope: !1195, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 974, column: 3, scope: !2177, inlinedAt: !2237)
!2243 = !DILocation(line: 147, column: 57, scope: !1195, inlinedAt: !2242)
!2244 = !DILocation(line: 149, column: 21, scope: !1195, inlinedAt: !2242)
!2245 = !DILocation(line: 150, column: 6, scope: !1195, inlinedAt: !2242)
!2246 = !DILocation(line: 975, column: 10, scope: !2177, inlinedAt: !2237)
!2247 = !DILocation(line: 976, column: 1, scope: !2177, inlinedAt: !2237)
!2248 = !DILocation(line: 987, column: 3, scope: !2230)
!2249 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !237, file: !237, line: 991, type: !2054, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2250)
!2250 = !{!2251, !2252}
!2251 = !DILocalVariable(name: "arg", arg: 1, scope: !2249, file: !237, line: 991, type: !6)
!2252 = !DILocalVariable(name: "argsize", arg: 2, scope: !2249, file: !237, line: 991, type: !37)
!2253 = !DILocation(line: 0, scope: !2249)
!2254 = !DILocation(line: 0, scope: !2177, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 993, column: 10, scope: !2249)
!2256 = !DILocation(line: 972, column: 3, scope: !2177, inlinedAt: !2255)
!2257 = !DILocation(line: 972, column: 26, scope: !2177, inlinedAt: !2255)
!2258 = !DILocation(line: 973, column: 13, scope: !2177, inlinedAt: !2255)
!2259 = !DILocation(line: 0, scope: !1195, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 974, column: 3, scope: !2177, inlinedAt: !2255)
!2261 = !DILocation(line: 147, column: 57, scope: !1195, inlinedAt: !2260)
!2262 = !DILocation(line: 149, column: 21, scope: !1195, inlinedAt: !2260)
!2263 = !DILocation(line: 150, column: 6, scope: !1195, inlinedAt: !2260)
!2264 = !DILocation(line: 975, column: 10, scope: !2177, inlinedAt: !2255)
!2265 = !DILocation(line: 976, column: 1, scope: !2177, inlinedAt: !2255)
!2266 = !DILocation(line: 993, column: 3, scope: !2249)
!2267 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !237, file: !237, line: 997, type: !2065, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2268)
!2268 = !{!2269, !2270, !2271, !2272}
!2269 = !DILocalVariable(name: "n", arg: 1, scope: !2267, file: !237, line: 997, type: !35)
!2270 = !DILocalVariable(name: "s", arg: 2, scope: !2267, file: !237, line: 997, type: !239)
!2271 = !DILocalVariable(name: "arg", arg: 3, scope: !2267, file: !237, line: 997, type: !6)
!2272 = !DILocalVariable(name: "options", scope: !2267, file: !237, line: 999, type: !268)
!2273 = !DILocation(line: 0, scope: !2267)
!2274 = !DILocation(line: 999, column: 3, scope: !2267)
!2275 = !DILocation(line: 999, column: 26, scope: !2267)
!2276 = !DILocation(line: 0, scope: !2080, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 1000, column: 13, scope: !2267)
!2278 = !DILocation(line: 186, column: 13, scope: !2089, inlinedAt: !2277)
!2279 = !DILocation(line: 186, column: 7, scope: !2080, inlinedAt: !2277)
!2280 = !DILocation(line: 187, column: 5, scope: !2089, inlinedAt: !2277)
!2281 = !{!2282}
!2282 = distinct !{!2282, !2283, !"quoting_options_from_style: argument 0"}
!2283 = distinct !{!2283, !"quoting_options_from_style"}
!2284 = !DILocation(line: 1000, column: 13, scope: !2267)
!2285 = !DILocation(line: 0, scope: !1195, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 1001, column: 3, scope: !2267)
!2287 = !DILocation(line: 147, column: 57, scope: !1195, inlinedAt: !2286)
!2288 = !DILocation(line: 149, column: 21, scope: !1195, inlinedAt: !2286)
!2289 = !DILocation(line: 150, column: 6, scope: !1195, inlinedAt: !2286)
!2290 = !DILocation(line: 1002, column: 10, scope: !2267)
!2291 = !DILocation(line: 1003, column: 1, scope: !2267)
!2292 = !DILocation(line: 1002, column: 3, scope: !2267)
!2293 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !237, file: !237, line: 1006, type: !2294, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!69, !35, !6, !6, !6}
!2296 = !{!2297, !2298, !2299, !2300}
!2297 = !DILocalVariable(name: "n", arg: 1, scope: !2293, file: !237, line: 1006, type: !35)
!2298 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2293, file: !237, line: 1006, type: !6)
!2299 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2293, file: !237, line: 1007, type: !6)
!2300 = !DILocalVariable(name: "arg", arg: 4, scope: !2293, file: !237, line: 1007, type: !6)
!2301 = !DILocation(line: 0, scope: !2293)
!2302 = !DILocalVariable(name: "n", arg: 1, scope: !2303, file: !237, line: 1014, type: !35)
!2303 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !237, file: !237, line: 1014, type: !2304, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!69, !35, !6, !6, !6, !37}
!2306 = !{!2302, !2307, !2308, !2309, !2310, !2311}
!2307 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2303, file: !237, line: 1014, type: !6)
!2308 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2303, file: !237, line: 1015, type: !6)
!2309 = !DILocalVariable(name: "arg", arg: 4, scope: !2303, file: !237, line: 1016, type: !6)
!2310 = !DILocalVariable(name: "argsize", arg: 5, scope: !2303, file: !237, line: 1016, type: !37)
!2311 = !DILocalVariable(name: "o", scope: !2303, file: !237, line: 1018, type: !268)
!2312 = !DILocation(line: 0, scope: !2303, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 1009, column: 10, scope: !2293)
!2314 = !DILocation(line: 1018, column: 3, scope: !2303, inlinedAt: !2313)
!2315 = !DILocation(line: 1018, column: 26, scope: !2303, inlinedAt: !2313)
!2316 = !DILocation(line: 1018, column: 30, scope: !2303, inlinedAt: !2313)
!2317 = !DILocation(line: 0, scope: !1235, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 1019, column: 3, scope: !2303, inlinedAt: !2313)
!2319 = !DILocation(line: 174, column: 6, scope: !1235, inlinedAt: !2318)
!2320 = !DILocation(line: 174, column: 12, scope: !1235, inlinedAt: !2318)
!2321 = !DILocation(line: 175, column: 8, scope: !1249, inlinedAt: !2318)
!2322 = !DILocation(line: 175, column: 19, scope: !1249, inlinedAt: !2318)
!2323 = !DILocation(line: 176, column: 5, scope: !1249, inlinedAt: !2318)
!2324 = !DILocation(line: 177, column: 6, scope: !1235, inlinedAt: !2318)
!2325 = !DILocation(line: 177, column: 17, scope: !1235, inlinedAt: !2318)
!2326 = !DILocation(line: 178, column: 6, scope: !1235, inlinedAt: !2318)
!2327 = !DILocation(line: 178, column: 18, scope: !1235, inlinedAt: !2318)
!2328 = !DILocation(line: 1020, column: 10, scope: !2303, inlinedAt: !2313)
!2329 = !DILocation(line: 1021, column: 1, scope: !2303, inlinedAt: !2313)
!2330 = !DILocation(line: 1009, column: 3, scope: !2293)
!2331 = !DILocation(line: 0, scope: !2303)
!2332 = !DILocation(line: 1018, column: 3, scope: !2303)
!2333 = !DILocation(line: 1018, column: 26, scope: !2303)
!2334 = !DILocation(line: 1018, column: 30, scope: !2303)
!2335 = !DILocation(line: 0, scope: !1235, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 1019, column: 3, scope: !2303)
!2337 = !DILocation(line: 174, column: 6, scope: !1235, inlinedAt: !2336)
!2338 = !DILocation(line: 174, column: 12, scope: !1235, inlinedAt: !2336)
!2339 = !DILocation(line: 175, column: 8, scope: !1249, inlinedAt: !2336)
!2340 = !DILocation(line: 175, column: 19, scope: !1249, inlinedAt: !2336)
!2341 = !DILocation(line: 176, column: 5, scope: !1249, inlinedAt: !2336)
!2342 = !DILocation(line: 177, column: 6, scope: !1235, inlinedAt: !2336)
!2343 = !DILocation(line: 177, column: 17, scope: !1235, inlinedAt: !2336)
!2344 = !DILocation(line: 178, column: 6, scope: !1235, inlinedAt: !2336)
!2345 = !DILocation(line: 178, column: 18, scope: !1235, inlinedAt: !2336)
!2346 = !DILocation(line: 1020, column: 10, scope: !2303)
!2347 = !DILocation(line: 1021, column: 1, scope: !2303)
!2348 = !DILocation(line: 1020, column: 3, scope: !2303)
!2349 = distinct !DISubprogram(name: "quotearg_custom", scope: !237, file: !237, line: 1024, type: !2350, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!69, !6, !6, !6}
!2352 = !{!2353, !2354, !2355}
!2353 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2349, file: !237, line: 1024, type: !6)
!2354 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2349, file: !237, line: 1024, type: !6)
!2355 = !DILocalVariable(name: "arg", arg: 3, scope: !2349, file: !237, line: 1025, type: !6)
!2356 = !DILocation(line: 0, scope: !2349)
!2357 = !DILocation(line: 0, scope: !2293, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 1027, column: 10, scope: !2349)
!2359 = !DILocation(line: 0, scope: !2303, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 1009, column: 10, scope: !2293, inlinedAt: !2358)
!2361 = !DILocation(line: 1018, column: 3, scope: !2303, inlinedAt: !2360)
!2362 = !DILocation(line: 1018, column: 26, scope: !2303, inlinedAt: !2360)
!2363 = !DILocation(line: 1018, column: 30, scope: !2303, inlinedAt: !2360)
!2364 = !DILocation(line: 0, scope: !1235, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 1019, column: 3, scope: !2303, inlinedAt: !2360)
!2366 = !DILocation(line: 174, column: 6, scope: !1235, inlinedAt: !2365)
!2367 = !DILocation(line: 174, column: 12, scope: !1235, inlinedAt: !2365)
!2368 = !DILocation(line: 175, column: 8, scope: !1249, inlinedAt: !2365)
!2369 = !DILocation(line: 175, column: 19, scope: !1249, inlinedAt: !2365)
!2370 = !DILocation(line: 176, column: 5, scope: !1249, inlinedAt: !2365)
!2371 = !DILocation(line: 177, column: 6, scope: !1235, inlinedAt: !2365)
!2372 = !DILocation(line: 177, column: 17, scope: !1235, inlinedAt: !2365)
!2373 = !DILocation(line: 178, column: 6, scope: !1235, inlinedAt: !2365)
!2374 = !DILocation(line: 178, column: 18, scope: !1235, inlinedAt: !2365)
!2375 = !DILocation(line: 1020, column: 10, scope: !2303, inlinedAt: !2360)
!2376 = !DILocation(line: 1021, column: 1, scope: !2303, inlinedAt: !2360)
!2377 = !DILocation(line: 1027, column: 3, scope: !2349)
!2378 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !237, file: !237, line: 1031, type: !2379, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!69, !6, !6, !6, !37}
!2381 = !{!2382, !2383, !2384, !2385}
!2382 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2378, file: !237, line: 1031, type: !6)
!2383 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2378, file: !237, line: 1031, type: !6)
!2384 = !DILocalVariable(name: "arg", arg: 3, scope: !2378, file: !237, line: 1032, type: !6)
!2385 = !DILocalVariable(name: "argsize", arg: 4, scope: !2378, file: !237, line: 1032, type: !37)
!2386 = !DILocation(line: 0, scope: !2378)
!2387 = !DILocation(line: 0, scope: !2303, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 1034, column: 10, scope: !2378)
!2389 = !DILocation(line: 1018, column: 3, scope: !2303, inlinedAt: !2388)
!2390 = !DILocation(line: 1018, column: 26, scope: !2303, inlinedAt: !2388)
!2391 = !DILocation(line: 1018, column: 30, scope: !2303, inlinedAt: !2388)
!2392 = !DILocation(line: 0, scope: !1235, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 1019, column: 3, scope: !2303, inlinedAt: !2388)
!2394 = !DILocation(line: 174, column: 6, scope: !1235, inlinedAt: !2393)
!2395 = !DILocation(line: 174, column: 12, scope: !1235, inlinedAt: !2393)
!2396 = !DILocation(line: 175, column: 8, scope: !1249, inlinedAt: !2393)
!2397 = !DILocation(line: 175, column: 19, scope: !1249, inlinedAt: !2393)
!2398 = !DILocation(line: 176, column: 5, scope: !1249, inlinedAt: !2393)
!2399 = !DILocation(line: 177, column: 6, scope: !1235, inlinedAt: !2393)
!2400 = !DILocation(line: 177, column: 17, scope: !1235, inlinedAt: !2393)
!2401 = !DILocation(line: 178, column: 6, scope: !1235, inlinedAt: !2393)
!2402 = !DILocation(line: 178, column: 18, scope: !1235, inlinedAt: !2393)
!2403 = !DILocation(line: 1020, column: 10, scope: !2303, inlinedAt: !2388)
!2404 = !DILocation(line: 1021, column: 1, scope: !2303, inlinedAt: !2388)
!2405 = !DILocation(line: 1034, column: 3, scope: !2378)
!2406 = distinct !DISubprogram(name: "quote_n_mem", scope: !237, file: !237, line: 1049, type: !2407, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!6, !35, !6, !37}
!2409 = !{!2410, !2411, !2412}
!2410 = !DILocalVariable(name: "n", arg: 1, scope: !2406, file: !237, line: 1049, type: !35)
!2411 = !DILocalVariable(name: "arg", arg: 2, scope: !2406, file: !237, line: 1049, type: !6)
!2412 = !DILocalVariable(name: "argsize", arg: 3, scope: !2406, file: !237, line: 1049, type: !37)
!2413 = !DILocation(line: 0, scope: !2406)
!2414 = !DILocation(line: 1051, column: 10, scope: !2406)
!2415 = !DILocation(line: 1051, column: 3, scope: !2406)
!2416 = distinct !DISubprogram(name: "quote_mem", scope: !237, file: !237, line: 1055, type: !2417, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!6, !6, !37}
!2419 = !{!2420, !2421}
!2420 = !DILocalVariable(name: "arg", arg: 1, scope: !2416, file: !237, line: 1055, type: !6)
!2421 = !DILocalVariable(name: "argsize", arg: 2, scope: !2416, file: !237, line: 1055, type: !37)
!2422 = !DILocation(line: 0, scope: !2416)
!2423 = !DILocation(line: 0, scope: !2406, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 1057, column: 10, scope: !2416)
!2425 = !DILocation(line: 1051, column: 10, scope: !2406, inlinedAt: !2424)
!2426 = !DILocation(line: 1057, column: 3, scope: !2416)
!2427 = distinct !DISubprogram(name: "quote_n", scope: !237, file: !237, line: 1061, type: !2428, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!6, !35, !6}
!2430 = !{!2431, !2432}
!2431 = !DILocalVariable(name: "n", arg: 1, scope: !2427, file: !237, line: 1061, type: !35)
!2432 = !DILocalVariable(name: "arg", arg: 2, scope: !2427, file: !237, line: 1061, type: !6)
!2433 = !DILocation(line: 0, scope: !2427)
!2434 = !DILocation(line: 0, scope: !2406, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 1063, column: 10, scope: !2427)
!2436 = !DILocation(line: 1051, column: 10, scope: !2406, inlinedAt: !2435)
!2437 = !DILocation(line: 1063, column: 3, scope: !2427)
!2438 = distinct !DISubprogram(name: "quote", scope: !237, file: !237, line: 1067, type: !2439, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!6, !6}
!2441 = !{!2442}
!2442 = !DILocalVariable(name: "arg", arg: 1, scope: !2438, file: !237, line: 1067, type: !6)
!2443 = !DILocation(line: 0, scope: !2438)
!2444 = !DILocation(line: 0, scope: !2427, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 1069, column: 10, scope: !2438)
!2446 = !DILocation(line: 0, scope: !2406, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 1063, column: 10, scope: !2427, inlinedAt: !2445)
!2448 = !DILocation(line: 1051, column: 10, scope: !2406, inlinedAt: !2447)
!2449 = !DILocation(line: 1069, column: 3, scope: !2438)
!2450 = distinct !DISubprogram(name: "version_etc_arn", scope: !356, file: !356, line: 61, type: !2451, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !2488)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !2453, !6, !6, !6, !2487, !37}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !2455)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2455, file: !65, line: 51, baseType: !35, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2455, file: !65, line: 54, baseType: !69, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2455, file: !65, line: 55, baseType: !69, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2455, file: !65, line: 56, baseType: !69, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2455, file: !65, line: 57, baseType: !69, size: 64, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2455, file: !65, line: 58, baseType: !69, size: 64, offset: 320)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2455, file: !65, line: 59, baseType: !69, size: 64, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2455, file: !65, line: 60, baseType: !69, size: 64, offset: 448)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2455, file: !65, line: 61, baseType: !69, size: 64, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2455, file: !65, line: 64, baseType: !69, size: 64, offset: 576)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2455, file: !65, line: 65, baseType: !69, size: 64, offset: 640)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2455, file: !65, line: 66, baseType: !69, size: 64, offset: 704)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2455, file: !65, line: 68, baseType: !81, size: 64, offset: 768)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2455, file: !65, line: 70, baseType: !2471, size: 64, offset: 832)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2455, file: !65, line: 72, baseType: !35, size: 32, offset: 896)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2455, file: !65, line: 73, baseType: !35, size: 32, offset: 928)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2455, file: !65, line: 74, baseType: !88, size: 64, offset: 960)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2455, file: !65, line: 77, baseType: !36, size: 16, offset: 1024)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2455, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2455, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2455, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2455, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2455, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2455, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2455, file: !65, line: 93, baseType: !2471, size: 64, offset: 1344)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2455, file: !65, line: 94, baseType: !29, size: 64, offset: 1408)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2455, file: !65, line: 95, baseType: !37, size: 64, offset: 1472)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2455, file: !65, line: 96, baseType: !35, size: 32, offset: 1536)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2455, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!2488 = !{!2489, !2490, !2491, !2492, !2493, !2494}
!2489 = !DILocalVariable(name: "stream", arg: 1, scope: !2450, file: !356, line: 61, type: !2453)
!2490 = !DILocalVariable(name: "command_name", arg: 2, scope: !2450, file: !356, line: 62, type: !6)
!2491 = !DILocalVariable(name: "package", arg: 3, scope: !2450, file: !356, line: 62, type: !6)
!2492 = !DILocalVariable(name: "version", arg: 4, scope: !2450, file: !356, line: 63, type: !6)
!2493 = !DILocalVariable(name: "authors", arg: 5, scope: !2450, file: !356, line: 64, type: !2487)
!2494 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2450, file: !356, line: 64, type: !37)
!2495 = !DILocation(line: 0, scope: !2450)
!2496 = !DILocation(line: 66, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2450, file: !356, line: 66, column: 7)
!2498 = !DILocation(line: 66, column: 7, scope: !2450)
!2499 = !DILocation(line: 67, column: 5, scope: !2497)
!2500 = !DILocation(line: 69, column: 5, scope: !2497)
!2501 = !DILocation(line: 83, column: 3, scope: !2450)
!2502 = !DILocation(line: 85, column: 3, scope: !2450)
!2503 = !DILocation(line: 88, column: 3, scope: !2450)
!2504 = !DILocation(line: 95, column: 3, scope: !2450)
!2505 = !DILocation(line: 97, column: 3, scope: !2450)
!2506 = !DILocation(line: 105, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2450, file: !356, line: 98, column: 5)
!2508 = !DILocation(line: 106, column: 7, scope: !2507)
!2509 = !DILocation(line: 109, column: 7, scope: !2507)
!2510 = !DILocation(line: 110, column: 7, scope: !2507)
!2511 = !DILocation(line: 113, column: 7, scope: !2507)
!2512 = !DILocation(line: 115, column: 7, scope: !2507)
!2513 = !DILocation(line: 120, column: 7, scope: !2507)
!2514 = !DILocation(line: 122, column: 7, scope: !2507)
!2515 = !DILocation(line: 127, column: 7, scope: !2507)
!2516 = !DILocation(line: 129, column: 7, scope: !2507)
!2517 = !DILocation(line: 134, column: 7, scope: !2507)
!2518 = !DILocation(line: 137, column: 7, scope: !2507)
!2519 = !DILocation(line: 142, column: 7, scope: !2507)
!2520 = !DILocation(line: 145, column: 7, scope: !2507)
!2521 = !DILocation(line: 150, column: 7, scope: !2507)
!2522 = !DILocation(line: 154, column: 7, scope: !2507)
!2523 = !DILocation(line: 159, column: 7, scope: !2507)
!2524 = !DILocation(line: 163, column: 7, scope: !2507)
!2525 = !DILocation(line: 170, column: 7, scope: !2507)
!2526 = !DILocation(line: 174, column: 7, scope: !2507)
!2527 = !DILocation(line: 176, column: 1, scope: !2450)
!2528 = distinct !DISubprogram(name: "version_etc_ar", scope: !356, file: !356, line: 183, type: !2529, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !2453, !6, !6, !6, !2487}
!2531 = !{!2532, !2533, !2534, !2535, !2536, !2537}
!2532 = !DILocalVariable(name: "stream", arg: 1, scope: !2528, file: !356, line: 183, type: !2453)
!2533 = !DILocalVariable(name: "command_name", arg: 2, scope: !2528, file: !356, line: 184, type: !6)
!2534 = !DILocalVariable(name: "package", arg: 3, scope: !2528, file: !356, line: 184, type: !6)
!2535 = !DILocalVariable(name: "version", arg: 4, scope: !2528, file: !356, line: 185, type: !6)
!2536 = !DILocalVariable(name: "authors", arg: 5, scope: !2528, file: !356, line: 185, type: !2487)
!2537 = !DILocalVariable(name: "n_authors", scope: !2528, file: !356, line: 187, type: !37)
!2538 = !DILocation(line: 0, scope: !2528)
!2539 = !DILocation(line: 189, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2528, file: !356, line: 189, column: 3)
!2541 = !DILocation(line: 0, scope: !2540)
!2542 = !DILocation(line: 189, column: 23, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2540, file: !356, line: 189, column: 3)
!2544 = !DILocation(line: 189, column: 3, scope: !2540)
!2545 = !DILocation(line: 189, column: 52, scope: !2543)
!2546 = distinct !{!2546, !2544, !2547, !490}
!2547 = !DILocation(line: 190, column: 5, scope: !2540)
!2548 = !DILocation(line: 191, column: 3, scope: !2528)
!2549 = !DILocation(line: 192, column: 1, scope: !2528)
!2550 = distinct !DISubprogram(name: "version_etc_va", scope: !356, file: !356, line: 199, type: !2551, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !2564)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !2453, !6, !6, !6, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !146, line: 52, baseType: !2554)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !148, line: 32, baseType: !2555)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2556, baseType: !2557)
!2556 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, size: 256, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562, !2563}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2557, file: !2556, line: 192, baseType: !29, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2557, file: !2556, line: 192, baseType: !29, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2557, file: !2556, line: 192, baseType: !29, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2557, file: !2556, line: 192, baseType: !35, size: 32, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2557, file: !2556, line: 192, baseType: !35, size: 32, offset: 224)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2565 = !DILocalVariable(name: "stream", arg: 1, scope: !2550, file: !356, line: 199, type: !2453)
!2566 = !DILocalVariable(name: "command_name", arg: 2, scope: !2550, file: !356, line: 200, type: !6)
!2567 = !DILocalVariable(name: "package", arg: 3, scope: !2550, file: !356, line: 200, type: !6)
!2568 = !DILocalVariable(name: "version", arg: 4, scope: !2550, file: !356, line: 201, type: !6)
!2569 = !DILocalVariable(name: "authors", arg: 5, scope: !2550, file: !356, line: 201, type: !2553)
!2570 = !DILocalVariable(name: "n_authors", scope: !2550, file: !356, line: 203, type: !37)
!2571 = !DILocalVariable(name: "authtab", scope: !2550, file: !356, line: 204, type: !2572)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !264)
!2573 = !DILocation(line: 0, scope: !2550)
!2574 = !DILocation(line: 201, column: 46, scope: !2550)
!2575 = !DILocation(line: 204, column: 3, scope: !2550)
!2576 = !DILocation(line: 204, column: 15, scope: !2550)
!2577 = !DILocation(line: 208, column: 35, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !356, line: 206, column: 3)
!2579 = distinct !DILexicalBlock(scope: !2550, file: !356, line: 206, column: 3)
!2580 = !DILocation(line: 208, column: 14, scope: !2578)
!2581 = !DILocation(line: 208, column: 33, scope: !2578)
!2582 = !DILocation(line: 208, column: 67, scope: !2578)
!2583 = !DILocation(line: 206, column: 3, scope: !2579)
!2584 = !DILocation(line: 0, scope: !2579)
!2585 = !DILocation(line: 211, column: 3, scope: !2550)
!2586 = !DILocation(line: 213, column: 1, scope: !2550)
!2587 = distinct !DISubprogram(name: "version_etc", scope: !356, file: !356, line: 230, type: !2588, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null, !2453, !6, !6, !6, null}
!2590 = !{!2591, !2592, !2593, !2594, !2595}
!2591 = !DILocalVariable(name: "stream", arg: 1, scope: !2587, file: !356, line: 230, type: !2453)
!2592 = !DILocalVariable(name: "command_name", arg: 2, scope: !2587, file: !356, line: 231, type: !6)
!2593 = !DILocalVariable(name: "package", arg: 3, scope: !2587, file: !356, line: 231, type: !6)
!2594 = !DILocalVariable(name: "version", arg: 4, scope: !2587, file: !356, line: 232, type: !6)
!2595 = !DILocalVariable(name: "authors", scope: !2587, file: !356, line: 234, type: !2553)
!2596 = !DILocation(line: 0, scope: !2587)
!2597 = !DILocation(line: 234, column: 3, scope: !2587)
!2598 = !DILocation(line: 234, column: 11, scope: !2587)
!2599 = !DILocation(line: 235, column: 3, scope: !2587)
!2600 = !DILocation(line: 236, column: 3, scope: !2587)
!2601 = !DILocation(line: 237, column: 3, scope: !2587)
!2602 = !DILocation(line: 238, column: 1, scope: !2587)
!2603 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !356, file: !356, line: 241, type: !173, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !516)
!2604 = !DILocation(line: 243, column: 3, scope: !2603)
!2605 = !DILocation(line: 248, column: 3, scope: !2603)
!2606 = !DILocation(line: 254, column: 3, scope: !2603)
!2607 = !DILocation(line: 259, column: 3, scope: !2603)
!2608 = !DILocation(line: 261, column: 1, scope: !2603)
!2609 = distinct !DISubprogram(name: "xnrealloc", scope: !2610, file: !2610, line: 147, type: !2611, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2613)
!2610 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!29, !29, !37, !37}
!2613 = !{!2614, !2615, !2616}
!2614 = !DILocalVariable(name: "p", arg: 1, scope: !2609, file: !2610, line: 147, type: !29)
!2615 = !DILocalVariable(name: "n", arg: 2, scope: !2609, file: !2610, line: 147, type: !37)
!2616 = !DILocalVariable(name: "s", arg: 3, scope: !2609, file: !2610, line: 147, type: !37)
!2617 = !DILocation(line: 0, scope: !2609)
!2618 = !DILocalVariable(name: "p", arg: 1, scope: !2619, file: !363, line: 83, type: !29)
!2619 = distinct !DISubprogram(name: "xreallocarray", scope: !363, file: !363, line: 83, type: !2611, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2620)
!2620 = !{!2618, !2621, !2622}
!2621 = !DILocalVariable(name: "n", arg: 2, scope: !2619, file: !363, line: 83, type: !37)
!2622 = !DILocalVariable(name: "s", arg: 3, scope: !2619, file: !363, line: 83, type: !37)
!2623 = !DILocation(line: 0, scope: !2619, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 149, column: 10, scope: !2609)
!2625 = !DILocation(line: 85, column: 25, scope: !2619, inlinedAt: !2624)
!2626 = !DILocalVariable(name: "p", arg: 1, scope: !2627, file: !363, line: 37, type: !29)
!2627 = distinct !DISubprogram(name: "check_nonnull", scope: !363, file: !363, line: 37, type: !2628, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!29, !29}
!2630 = !{!2626}
!2631 = !DILocation(line: 0, scope: !2627, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 85, column: 10, scope: !2619, inlinedAt: !2624)
!2633 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2632)
!2634 = distinct !DILexicalBlock(scope: !2627, file: !363, line: 39, column: 7)
!2635 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2632)
!2636 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2632)
!2637 = !DILocation(line: 149, column: 3, scope: !2609)
!2638 = !DILocation(line: 0, scope: !2619)
!2639 = !DILocation(line: 85, column: 25, scope: !2619)
!2640 = !DILocation(line: 0, scope: !2627, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 85, column: 10, scope: !2619)
!2642 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2641)
!2643 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2641)
!2644 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2641)
!2645 = !DILocation(line: 85, column: 3, scope: !2619)
!2646 = distinct !DISubprogram(name: "xmalloc", scope: !363, file: !363, line: 47, type: !2647, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!29, !37}
!2649 = !{!2650}
!2650 = !DILocalVariable(name: "s", arg: 1, scope: !2646, file: !363, line: 47, type: !37)
!2651 = !DILocation(line: 0, scope: !2646)
!2652 = !DILocation(line: 49, column: 25, scope: !2646)
!2653 = !DILocation(line: 0, scope: !2627, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 49, column: 10, scope: !2646)
!2655 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2654)
!2656 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2654)
!2657 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2654)
!2658 = !DILocation(line: 49, column: 3, scope: !2646)
!2659 = distinct !DISubprogram(name: "ximalloc", scope: !363, file: !363, line: 53, type: !2660, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!29, !382}
!2662 = !{!2663}
!2663 = !DILocalVariable(name: "s", arg: 1, scope: !2659, file: !363, line: 53, type: !382)
!2664 = !DILocation(line: 0, scope: !2659)
!2665 = !DILocalVariable(name: "s", arg: 1, scope: !2666, file: !2667, line: 55, type: !382)
!2666 = distinct !DISubprogram(name: "imalloc", scope: !2667, file: !2667, line: 55, type: !2660, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2668)
!2667 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2668 = !{!2665}
!2669 = !DILocation(line: 0, scope: !2666, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 55, column: 25, scope: !2659)
!2671 = !DILocation(line: 57, column: 26, scope: !2666, inlinedAt: !2670)
!2672 = !DILocation(line: 0, scope: !2627, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 55, column: 10, scope: !2659)
!2674 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2673)
!2675 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2673)
!2676 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2673)
!2677 = !DILocation(line: 55, column: 3, scope: !2659)
!2678 = distinct !DISubprogram(name: "xcharalloc", scope: !363, file: !363, line: 59, type: !2679, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!69, !37}
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "n", arg: 1, scope: !2678, file: !363, line: 59, type: !37)
!2683 = !DILocation(line: 0, scope: !2678)
!2684 = !DILocation(line: 0, scope: !2646, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 61, column: 10, scope: !2678)
!2686 = !DILocation(line: 49, column: 25, scope: !2646, inlinedAt: !2685)
!2687 = !DILocation(line: 0, scope: !2627, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 49, column: 10, scope: !2646, inlinedAt: !2685)
!2689 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2688)
!2690 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2688)
!2691 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2688)
!2692 = !DILocation(line: 61, column: 3, scope: !2678)
!2693 = distinct !DISubprogram(name: "xrealloc", scope: !363, file: !363, line: 68, type: !2694, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!29, !29, !37}
!2696 = !{!2697, !2698}
!2697 = !DILocalVariable(name: "p", arg: 1, scope: !2693, file: !363, line: 68, type: !29)
!2698 = !DILocalVariable(name: "s", arg: 2, scope: !2693, file: !363, line: 68, type: !37)
!2699 = !DILocation(line: 0, scope: !2693)
!2700 = !DILocalVariable(name: "ptr", arg: 1, scope: !2701, file: !2702, line: 2057, type: !29)
!2701 = distinct !DISubprogram(name: "rpl_realloc", scope: !2702, file: !2702, line: 2057, type: !2694, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2703)
!2702 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2703 = !{!2700, !2704}
!2704 = !DILocalVariable(name: "size", arg: 2, scope: !2701, file: !2702, line: 2057, type: !37)
!2705 = !DILocation(line: 0, scope: !2701, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 70, column: 25, scope: !2693)
!2707 = !DILocation(line: 2059, column: 24, scope: !2701, inlinedAt: !2706)
!2708 = !DILocation(line: 2059, column: 10, scope: !2701, inlinedAt: !2706)
!2709 = !DILocation(line: 0, scope: !2627, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 70, column: 10, scope: !2693)
!2711 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2710)
!2712 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2710)
!2713 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2710)
!2714 = !DILocation(line: 70, column: 3, scope: !2693)
!2715 = distinct !DISubprogram(name: "xirealloc", scope: !363, file: !363, line: 74, type: !2716, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!29, !29, !382}
!2718 = !{!2719, !2720}
!2719 = !DILocalVariable(name: "p", arg: 1, scope: !2715, file: !363, line: 74, type: !29)
!2720 = !DILocalVariable(name: "s", arg: 2, scope: !2715, file: !363, line: 74, type: !382)
!2721 = !DILocation(line: 0, scope: !2715)
!2722 = !DILocalVariable(name: "p", arg: 1, scope: !2723, file: !2667, line: 66, type: !29)
!2723 = distinct !DISubprogram(name: "irealloc", scope: !2667, file: !2667, line: 66, type: !2716, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2724)
!2724 = !{!2722, !2725}
!2725 = !DILocalVariable(name: "s", arg: 2, scope: !2723, file: !2667, line: 66, type: !382)
!2726 = !DILocation(line: 0, scope: !2723, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 76, column: 25, scope: !2715)
!2728 = !DILocation(line: 0, scope: !2701, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 68, column: 26, scope: !2723, inlinedAt: !2727)
!2730 = !DILocation(line: 2059, column: 24, scope: !2701, inlinedAt: !2729)
!2731 = !DILocation(line: 2059, column: 10, scope: !2701, inlinedAt: !2729)
!2732 = !DILocation(line: 0, scope: !2627, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 76, column: 10, scope: !2715)
!2734 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2733)
!2735 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2733)
!2736 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2733)
!2737 = !DILocation(line: 76, column: 3, scope: !2715)
!2738 = distinct !DISubprogram(name: "xireallocarray", scope: !363, file: !363, line: 89, type: !2739, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!29, !29, !382, !382}
!2741 = !{!2742, !2743, !2744}
!2742 = !DILocalVariable(name: "p", arg: 1, scope: !2738, file: !363, line: 89, type: !29)
!2743 = !DILocalVariable(name: "n", arg: 2, scope: !2738, file: !363, line: 89, type: !382)
!2744 = !DILocalVariable(name: "s", arg: 3, scope: !2738, file: !363, line: 89, type: !382)
!2745 = !DILocation(line: 0, scope: !2738)
!2746 = !DILocalVariable(name: "p", arg: 1, scope: !2747, file: !2667, line: 98, type: !29)
!2747 = distinct !DISubprogram(name: "ireallocarray", scope: !2667, file: !2667, line: 98, type: !2739, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2748)
!2748 = !{!2746, !2749, !2750}
!2749 = !DILocalVariable(name: "n", arg: 2, scope: !2747, file: !2667, line: 98, type: !382)
!2750 = !DILocalVariable(name: "s", arg: 3, scope: !2747, file: !2667, line: 98, type: !382)
!2751 = !DILocation(line: 0, scope: !2747, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 91, column: 25, scope: !2738)
!2753 = !DILocation(line: 101, column: 13, scope: !2747, inlinedAt: !2752)
!2754 = !DILocation(line: 0, scope: !2627, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 91, column: 10, scope: !2738)
!2756 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2755)
!2757 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2755)
!2758 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2755)
!2759 = !DILocation(line: 91, column: 3, scope: !2738)
!2760 = distinct !DISubprogram(name: "xnmalloc", scope: !363, file: !363, line: 98, type: !2761, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!29, !37, !37}
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "n", arg: 1, scope: !2760, file: !363, line: 98, type: !37)
!2765 = !DILocalVariable(name: "s", arg: 2, scope: !2760, file: !363, line: 98, type: !37)
!2766 = !DILocation(line: 0, scope: !2760)
!2767 = !DILocation(line: 0, scope: !2619, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 100, column: 10, scope: !2760)
!2769 = !DILocation(line: 85, column: 25, scope: !2619, inlinedAt: !2768)
!2770 = !DILocation(line: 0, scope: !2627, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 85, column: 10, scope: !2619, inlinedAt: !2768)
!2772 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2771)
!2773 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2771)
!2774 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2771)
!2775 = !DILocation(line: 100, column: 3, scope: !2760)
!2776 = distinct !DISubprogram(name: "xinmalloc", scope: !363, file: !363, line: 104, type: !2777, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!29, !382, !382}
!2779 = !{!2780, !2781}
!2780 = !DILocalVariable(name: "n", arg: 1, scope: !2776, file: !363, line: 104, type: !382)
!2781 = !DILocalVariable(name: "s", arg: 2, scope: !2776, file: !363, line: 104, type: !382)
!2782 = !DILocation(line: 0, scope: !2776)
!2783 = !DILocation(line: 0, scope: !2738, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 106, column: 10, scope: !2776)
!2785 = !DILocation(line: 0, scope: !2747, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 91, column: 25, scope: !2738, inlinedAt: !2784)
!2787 = !DILocation(line: 101, column: 13, scope: !2747, inlinedAt: !2786)
!2788 = !DILocation(line: 0, scope: !2627, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 91, column: 10, scope: !2738, inlinedAt: !2784)
!2790 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2789)
!2791 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2789)
!2792 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2789)
!2793 = !DILocation(line: 106, column: 3, scope: !2776)
!2794 = distinct !DISubprogram(name: "x2realloc", scope: !363, file: !363, line: 116, type: !2795, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!29, !29, !369}
!2797 = !{!2798, !2799}
!2798 = !DILocalVariable(name: "p", arg: 1, scope: !2794, file: !363, line: 116, type: !29)
!2799 = !DILocalVariable(name: "ps", arg: 2, scope: !2794, file: !363, line: 116, type: !369)
!2800 = !DILocation(line: 0, scope: !2794)
!2801 = !DILocation(line: 0, scope: !366, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 118, column: 10, scope: !2794)
!2803 = !DILocation(line: 178, column: 14, scope: !366, inlinedAt: !2802)
!2804 = !DILocation(line: 180, column: 9, scope: !2805, inlinedAt: !2802)
!2805 = distinct !DILexicalBlock(scope: !366, file: !363, line: 180, column: 7)
!2806 = !DILocation(line: 180, column: 7, scope: !366, inlinedAt: !2802)
!2807 = !DILocation(line: 182, column: 13, scope: !2808, inlinedAt: !2802)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !363, line: 182, column: 11)
!2809 = distinct !DILexicalBlock(scope: !2805, file: !363, line: 181, column: 5)
!2810 = !DILocation(line: 182, column: 11, scope: !2809, inlinedAt: !2802)
!2811 = !DILocation(line: 197, column: 11, scope: !2812, inlinedAt: !2802)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !363, line: 197, column: 11)
!2813 = distinct !DILexicalBlock(scope: !2805, file: !363, line: 195, column: 5)
!2814 = !DILocation(line: 197, column: 11, scope: !2813, inlinedAt: !2802)
!2815 = !DILocation(line: 198, column: 9, scope: !2812, inlinedAt: !2802)
!2816 = !DILocation(line: 0, scope: !2619, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 201, column: 7, scope: !366, inlinedAt: !2802)
!2818 = !DILocation(line: 85, column: 25, scope: !2619, inlinedAt: !2817)
!2819 = !DILocation(line: 0, scope: !2627, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 85, column: 10, scope: !2619, inlinedAt: !2817)
!2821 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2820)
!2822 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2820)
!2823 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2820)
!2824 = !DILocation(line: 202, column: 7, scope: !366, inlinedAt: !2802)
!2825 = !DILocation(line: 118, column: 3, scope: !2794)
!2826 = !DILocation(line: 0, scope: !366)
!2827 = !DILocation(line: 178, column: 14, scope: !366)
!2828 = !DILocation(line: 180, column: 9, scope: !2805)
!2829 = !DILocation(line: 180, column: 7, scope: !366)
!2830 = !DILocation(line: 182, column: 13, scope: !2808)
!2831 = !DILocation(line: 182, column: 11, scope: !2809)
!2832 = !DILocation(line: 190, column: 30, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2808, file: !363, line: 183, column: 9)
!2834 = !DILocation(line: 191, column: 16, scope: !2833)
!2835 = !DILocation(line: 191, column: 13, scope: !2833)
!2836 = !DILocation(line: 192, column: 9, scope: !2833)
!2837 = !DILocation(line: 197, column: 11, scope: !2812)
!2838 = !DILocation(line: 197, column: 11, scope: !2813)
!2839 = !DILocation(line: 198, column: 9, scope: !2812)
!2840 = !DILocation(line: 0, scope: !2619, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 201, column: 7, scope: !366)
!2842 = !DILocation(line: 85, column: 25, scope: !2619, inlinedAt: !2841)
!2843 = !DILocation(line: 0, scope: !2627, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 85, column: 10, scope: !2619, inlinedAt: !2841)
!2845 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2844)
!2846 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2844)
!2847 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2844)
!2848 = !DILocation(line: 202, column: 7, scope: !366)
!2849 = !DILocation(line: 203, column: 3, scope: !366)
!2850 = !DILocation(line: 0, scope: !378)
!2851 = !DILocation(line: 230, column: 14, scope: !378)
!2852 = !DILocation(line: 238, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !378, file: !363, line: 238, column: 7)
!2854 = !DILocation(line: 238, column: 7, scope: !378)
!2855 = !DILocation(line: 240, column: 9, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !378, file: !363, line: 240, column: 7)
!2857 = !DILocation(line: 240, column: 18, scope: !2856)
!2858 = !DILocation(line: 253, column: 8, scope: !378)
!2859 = !DILocation(line: 258, column: 27, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !363, line: 257, column: 5)
!2861 = distinct !DILexicalBlock(scope: !378, file: !363, line: 256, column: 7)
!2862 = !DILocation(line: 259, column: 32, scope: !2860)
!2863 = !DILocation(line: 260, column: 5, scope: !2860)
!2864 = !DILocation(line: 262, column: 9, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !378, file: !363, line: 262, column: 7)
!2866 = !DILocation(line: 262, column: 7, scope: !378)
!2867 = !DILocation(line: 263, column: 9, scope: !2865)
!2868 = !DILocation(line: 263, column: 5, scope: !2865)
!2869 = !DILocation(line: 264, column: 9, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !378, file: !363, line: 264, column: 7)
!2871 = !DILocation(line: 264, column: 14, scope: !2870)
!2872 = !DILocation(line: 265, column: 7, scope: !2870)
!2873 = !DILocation(line: 265, column: 11, scope: !2870)
!2874 = !DILocation(line: 266, column: 11, scope: !2870)
!2875 = !DILocation(line: 266, column: 26, scope: !2870)
!2876 = !DILocation(line: 267, column: 14, scope: !2870)
!2877 = !DILocation(line: 264, column: 7, scope: !378)
!2878 = !DILocation(line: 268, column: 5, scope: !2870)
!2879 = !DILocation(line: 0, scope: !2693, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 269, column: 8, scope: !378)
!2881 = !DILocation(line: 0, scope: !2701, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 70, column: 25, scope: !2693, inlinedAt: !2880)
!2883 = !DILocation(line: 2059, column: 24, scope: !2701, inlinedAt: !2882)
!2884 = !DILocation(line: 2059, column: 10, scope: !2701, inlinedAt: !2882)
!2885 = !DILocation(line: 0, scope: !2627, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 70, column: 10, scope: !2693, inlinedAt: !2880)
!2887 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2886)
!2888 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2886)
!2889 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2886)
!2890 = !DILocation(line: 270, column: 7, scope: !378)
!2891 = !DILocation(line: 271, column: 3, scope: !378)
!2892 = distinct !DISubprogram(name: "xzalloc", scope: !363, file: !363, line: 279, type: !2647, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2893)
!2893 = !{!2894}
!2894 = !DILocalVariable(name: "s", arg: 1, scope: !2892, file: !363, line: 279, type: !37)
!2895 = !DILocation(line: 0, scope: !2892)
!2896 = !DILocalVariable(name: "n", arg: 1, scope: !2897, file: !363, line: 294, type: !37)
!2897 = distinct !DISubprogram(name: "xcalloc", scope: !363, file: !363, line: 294, type: !2761, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2898)
!2898 = !{!2896, !2899}
!2899 = !DILocalVariable(name: "s", arg: 2, scope: !2897, file: !363, line: 294, type: !37)
!2900 = !DILocation(line: 0, scope: !2897, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 281, column: 10, scope: !2892)
!2902 = !DILocation(line: 296, column: 25, scope: !2897, inlinedAt: !2901)
!2903 = !DILocation(line: 0, scope: !2627, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 296, column: 10, scope: !2897, inlinedAt: !2901)
!2905 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2904)
!2906 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2904)
!2907 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2904)
!2908 = !DILocation(line: 281, column: 3, scope: !2892)
!2909 = !DILocation(line: 0, scope: !2897)
!2910 = !DILocation(line: 296, column: 25, scope: !2897)
!2911 = !DILocation(line: 0, scope: !2627, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 296, column: 10, scope: !2897)
!2913 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2912)
!2914 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2912)
!2915 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2912)
!2916 = !DILocation(line: 296, column: 3, scope: !2897)
!2917 = distinct !DISubprogram(name: "xizalloc", scope: !363, file: !363, line: 285, type: !2660, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2918)
!2918 = !{!2919}
!2919 = !DILocalVariable(name: "s", arg: 1, scope: !2917, file: !363, line: 285, type: !382)
!2920 = !DILocation(line: 0, scope: !2917)
!2921 = !DILocalVariable(name: "n", arg: 1, scope: !2922, file: !363, line: 300, type: !382)
!2922 = distinct !DISubprogram(name: "xicalloc", scope: !363, file: !363, line: 300, type: !2777, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2923)
!2923 = !{!2921, !2924}
!2924 = !DILocalVariable(name: "s", arg: 2, scope: !2922, file: !363, line: 300, type: !382)
!2925 = !DILocation(line: 0, scope: !2922, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 287, column: 10, scope: !2917)
!2927 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !2667, line: 77, type: !382)
!2928 = distinct !DISubprogram(name: "icalloc", scope: !2667, file: !2667, line: 77, type: !2777, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2929)
!2929 = !{!2927, !2930}
!2930 = !DILocalVariable(name: "s", arg: 2, scope: !2928, file: !2667, line: 77, type: !382)
!2931 = !DILocation(line: 0, scope: !2928, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 302, column: 25, scope: !2922, inlinedAt: !2926)
!2933 = !DILocation(line: 91, column: 10, scope: !2928, inlinedAt: !2932)
!2934 = !DILocation(line: 0, scope: !2627, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 302, column: 10, scope: !2922, inlinedAt: !2926)
!2936 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2935)
!2937 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2935)
!2938 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2935)
!2939 = !DILocation(line: 287, column: 3, scope: !2917)
!2940 = !DILocation(line: 0, scope: !2922)
!2941 = !DILocation(line: 0, scope: !2928, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 302, column: 25, scope: !2922)
!2943 = !DILocation(line: 91, column: 10, scope: !2928, inlinedAt: !2942)
!2944 = !DILocation(line: 0, scope: !2627, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 302, column: 10, scope: !2922)
!2946 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2945)
!2947 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2945)
!2948 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2945)
!2949 = !DILocation(line: 302, column: 3, scope: !2922)
!2950 = distinct !DISubprogram(name: "xmemdup", scope: !363, file: !363, line: 310, type: !2951, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!29, !642, !37}
!2953 = !{!2954, !2955}
!2954 = !DILocalVariable(name: "p", arg: 1, scope: !2950, file: !363, line: 310, type: !642)
!2955 = !DILocalVariable(name: "s", arg: 2, scope: !2950, file: !363, line: 310, type: !37)
!2956 = !DILocation(line: 0, scope: !2950)
!2957 = !DILocation(line: 0, scope: !2646, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 312, column: 18, scope: !2950)
!2959 = !DILocation(line: 49, column: 25, scope: !2646, inlinedAt: !2958)
!2960 = !DILocation(line: 0, scope: !2627, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 49, column: 10, scope: !2646, inlinedAt: !2958)
!2962 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2961)
!2963 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2961)
!2964 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2961)
!2965 = !DILocalVariable(name: "__dest", arg: 1, scope: !2966, file: !1137, line: 26, type: !2969)
!2966 = distinct !DISubprogram(name: "memcpy", scope: !1137, file: !1137, line: 26, type: !2967, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2970)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!29, !2969, !641, !37}
!2969 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!2970 = !{!2965, !2971, !2972}
!2971 = !DILocalVariable(name: "__src", arg: 2, scope: !2966, file: !1137, line: 26, type: !641)
!2972 = !DILocalVariable(name: "__len", arg: 3, scope: !2966, file: !1137, line: 26, type: !37)
!2973 = !DILocation(line: 0, scope: !2966, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 312, column: 10, scope: !2950)
!2975 = !DILocation(line: 29, column: 10, scope: !2966, inlinedAt: !2974)
!2976 = !DILocation(line: 312, column: 3, scope: !2950)
!2977 = distinct !DISubprogram(name: "ximemdup", scope: !363, file: !363, line: 316, type: !2978, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!29, !642, !382}
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "p", arg: 1, scope: !2977, file: !363, line: 316, type: !642)
!2982 = !DILocalVariable(name: "s", arg: 2, scope: !2977, file: !363, line: 316, type: !382)
!2983 = !DILocation(line: 0, scope: !2977)
!2984 = !DILocation(line: 0, scope: !2659, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 318, column: 18, scope: !2977)
!2986 = !DILocation(line: 0, scope: !2666, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 55, column: 25, scope: !2659, inlinedAt: !2985)
!2988 = !DILocation(line: 57, column: 26, scope: !2666, inlinedAt: !2987)
!2989 = !DILocation(line: 0, scope: !2627, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 55, column: 10, scope: !2659, inlinedAt: !2985)
!2991 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !2990)
!2992 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !2990)
!2993 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !2990)
!2994 = !DILocation(line: 0, scope: !2966, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 318, column: 10, scope: !2977)
!2996 = !DILocation(line: 29, column: 10, scope: !2966, inlinedAt: !2995)
!2997 = !DILocation(line: 318, column: 3, scope: !2977)
!2998 = distinct !DISubprogram(name: "ximemdup0", scope: !363, file: !363, line: 325, type: !2999, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!69, !642, !382}
!3001 = !{!3002, !3003, !3004}
!3002 = !DILocalVariable(name: "p", arg: 1, scope: !2998, file: !363, line: 325, type: !642)
!3003 = !DILocalVariable(name: "s", arg: 2, scope: !2998, file: !363, line: 325, type: !382)
!3004 = !DILocalVariable(name: "result", scope: !2998, file: !363, line: 327, type: !69)
!3005 = !DILocation(line: 0, scope: !2998)
!3006 = !DILocation(line: 327, column: 30, scope: !2998)
!3007 = !DILocation(line: 0, scope: !2659, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 327, column: 18, scope: !2998)
!3009 = !DILocation(line: 0, scope: !2666, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 55, column: 25, scope: !2659, inlinedAt: !3008)
!3011 = !DILocation(line: 57, column: 26, scope: !2666, inlinedAt: !3010)
!3012 = !DILocation(line: 0, scope: !2627, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 55, column: 10, scope: !2659, inlinedAt: !3008)
!3014 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !3013)
!3015 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !3013)
!3016 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !3013)
!3017 = !DILocation(line: 328, column: 3, scope: !2998)
!3018 = !DILocation(line: 328, column: 13, scope: !2998)
!3019 = !DILocation(line: 0, scope: !2966, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 329, column: 10, scope: !2998)
!3021 = !DILocation(line: 29, column: 10, scope: !2966, inlinedAt: !3020)
!3022 = !DILocation(line: 329, column: 3, scope: !2998)
!3023 = distinct !DISubprogram(name: "xstrdup", scope: !363, file: !363, line: 335, type: !636, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !3024)
!3024 = !{!3025}
!3025 = !DILocalVariable(name: "string", arg: 1, scope: !3023, file: !363, line: 335, type: !6)
!3026 = !DILocation(line: 0, scope: !3023)
!3027 = !DILocation(line: 337, column: 27, scope: !3023)
!3028 = !DILocation(line: 337, column: 43, scope: !3023)
!3029 = !DILocation(line: 0, scope: !2950, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 337, column: 10, scope: !3023)
!3031 = !DILocation(line: 0, scope: !2646, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 312, column: 18, scope: !2950, inlinedAt: !3030)
!3033 = !DILocation(line: 49, column: 25, scope: !2646, inlinedAt: !3032)
!3034 = !DILocation(line: 0, scope: !2627, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 49, column: 10, scope: !2646, inlinedAt: !3032)
!3036 = !DILocation(line: 39, column: 8, scope: !2634, inlinedAt: !3035)
!3037 = !DILocation(line: 39, column: 7, scope: !2627, inlinedAt: !3035)
!3038 = !DILocation(line: 40, column: 5, scope: !2634, inlinedAt: !3035)
!3039 = !DILocation(line: 0, scope: !2966, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 312, column: 10, scope: !2950, inlinedAt: !3030)
!3041 = !DILocation(line: 29, column: 10, scope: !2966, inlinedAt: !3040)
!3042 = !DILocation(line: 337, column: 3, scope: !3023)
!3043 = distinct !DISubprogram(name: "xalloc_die", scope: !397, file: !397, line: 32, type: !173, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !3044)
!3044 = !{!3045}
!3045 = !DILocalVariable(name: "__errstatus", scope: !3046, file: !397, line: 34, type: !3047)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !397, line: 34, column: 3)
!3047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!3048 = !DILocation(line: 34, column: 3, scope: !3046)
!3049 = !DILocation(line: 0, scope: !3046)
!3050 = !DILocation(line: 40, column: 3, scope: !3043)
!3051 = distinct !DISubprogram(name: "close_stream", scope: !399, file: !399, line: 55, type: !3052, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !3088)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!35, !3054}
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3056)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3057)
!3057 = !{!3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3056, file: !65, line: 51, baseType: !35, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3056, file: !65, line: 54, baseType: !69, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3056, file: !65, line: 55, baseType: !69, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3056, file: !65, line: 56, baseType: !69, size: 64, offset: 192)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3056, file: !65, line: 57, baseType: !69, size: 64, offset: 256)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3056, file: !65, line: 58, baseType: !69, size: 64, offset: 320)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3056, file: !65, line: 59, baseType: !69, size: 64, offset: 384)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3056, file: !65, line: 60, baseType: !69, size: 64, offset: 448)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3056, file: !65, line: 61, baseType: !69, size: 64, offset: 512)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3056, file: !65, line: 64, baseType: !69, size: 64, offset: 576)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3056, file: !65, line: 65, baseType: !69, size: 64, offset: 640)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3056, file: !65, line: 66, baseType: !69, size: 64, offset: 704)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3056, file: !65, line: 68, baseType: !81, size: 64, offset: 768)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3056, file: !65, line: 70, baseType: !3072, size: 64, offset: 832)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3056, file: !65, line: 72, baseType: !35, size: 32, offset: 896)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3056, file: !65, line: 73, baseType: !35, size: 32, offset: 928)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3056, file: !65, line: 74, baseType: !88, size: 64, offset: 960)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3056, file: !65, line: 77, baseType: !36, size: 16, offset: 1024)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3056, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3056, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3056, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3056, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3056, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3056, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3056, file: !65, line: 93, baseType: !3072, size: 64, offset: 1344)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3056, file: !65, line: 94, baseType: !29, size: 64, offset: 1408)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3056, file: !65, line: 95, baseType: !37, size: 64, offset: 1472)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3056, file: !65, line: 96, baseType: !35, size: 32, offset: 1536)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3056, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3088 = !{!3089, !3090, !3092, !3093}
!3089 = !DILocalVariable(name: "stream", arg: 1, scope: !3051, file: !399, line: 55, type: !3054)
!3090 = !DILocalVariable(name: "some_pending", scope: !3051, file: !399, line: 57, type: !3091)
!3091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!3092 = !DILocalVariable(name: "prev_fail", scope: !3051, file: !399, line: 58, type: !3091)
!3093 = !DILocalVariable(name: "fclose_fail", scope: !3051, file: !399, line: 59, type: !3091)
!3094 = !DILocation(line: 0, scope: !3051)
!3095 = !DILocation(line: 57, column: 30, scope: !3051)
!3096 = !DILocalVariable(name: "__stream", arg: 1, scope: !3097, file: !894, line: 135, type: !3054)
!3097 = distinct !DISubprogram(name: "ferror_unlocked", scope: !894, file: !894, line: 135, type: !3052, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !3098)
!3098 = !{!3096}
!3099 = !DILocation(line: 0, scope: !3097, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 58, column: 27, scope: !3051)
!3101 = !DILocation(line: 137, column: 10, scope: !3097, inlinedAt: !3100)
!3102 = !{!903, !525, i64 0}
!3103 = !DILocation(line: 58, column: 43, scope: !3051)
!3104 = !DILocation(line: 59, column: 29, scope: !3051)
!3105 = !DILocation(line: 59, column: 45, scope: !3051)
!3106 = !DILocation(line: 69, column: 17, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3051, file: !399, line: 69, column: 7)
!3108 = !DILocation(line: 57, column: 50, scope: !3051)
!3109 = !DILocation(line: 69, column: 33, scope: !3107)
!3110 = !DILocation(line: 69, column: 53, scope: !3107)
!3111 = !DILocation(line: 69, column: 59, scope: !3107)
!3112 = !DILocation(line: 69, column: 7, scope: !3051)
!3113 = !DILocation(line: 71, column: 11, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3107, file: !399, line: 70, column: 5)
!3115 = !DILocation(line: 72, column: 9, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3114, file: !399, line: 71, column: 11)
!3117 = !DILocation(line: 72, column: 15, scope: !3116)
!3118 = !DILocation(line: 77, column: 1, scope: !3051)
!3119 = distinct !DISubprogram(name: "rpl_fclose", scope: !401, file: !401, line: 58, type: !3120, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3156)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!35, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3124)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3124, file: !65, line: 51, baseType: !35, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3124, file: !65, line: 54, baseType: !69, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3124, file: !65, line: 55, baseType: !69, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3124, file: !65, line: 56, baseType: !69, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3124, file: !65, line: 57, baseType: !69, size: 64, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3124, file: !65, line: 58, baseType: !69, size: 64, offset: 320)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3124, file: !65, line: 59, baseType: !69, size: 64, offset: 384)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3124, file: !65, line: 60, baseType: !69, size: 64, offset: 448)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3124, file: !65, line: 61, baseType: !69, size: 64, offset: 512)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3124, file: !65, line: 64, baseType: !69, size: 64, offset: 576)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3124, file: !65, line: 65, baseType: !69, size: 64, offset: 640)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3124, file: !65, line: 66, baseType: !69, size: 64, offset: 704)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3124, file: !65, line: 68, baseType: !81, size: 64, offset: 768)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3124, file: !65, line: 70, baseType: !3140, size: 64, offset: 832)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3124, file: !65, line: 72, baseType: !35, size: 32, offset: 896)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3124, file: !65, line: 73, baseType: !35, size: 32, offset: 928)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3124, file: !65, line: 74, baseType: !88, size: 64, offset: 960)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3124, file: !65, line: 77, baseType: !36, size: 16, offset: 1024)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3124, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3124, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3124, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3124, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3124, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3124, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3124, file: !65, line: 93, baseType: !3140, size: 64, offset: 1344)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3124, file: !65, line: 94, baseType: !29, size: 64, offset: 1408)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3124, file: !65, line: 95, baseType: !37, size: 64, offset: 1472)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3124, file: !65, line: 96, baseType: !35, size: 32, offset: 1536)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3124, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3156 = !{!3157, !3158, !3159, !3160}
!3157 = !DILocalVariable(name: "fp", arg: 1, scope: !3119, file: !401, line: 58, type: !3122)
!3158 = !DILocalVariable(name: "saved_errno", scope: !3119, file: !401, line: 60, type: !35)
!3159 = !DILocalVariable(name: "fd", scope: !3119, file: !401, line: 63, type: !35)
!3160 = !DILocalVariable(name: "result", scope: !3119, file: !401, line: 74, type: !35)
!3161 = !DILocation(line: 0, scope: !3119)
!3162 = !DILocation(line: 63, column: 12, scope: !3119)
!3163 = !DILocation(line: 64, column: 10, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3119, file: !401, line: 64, column: 7)
!3165 = !DILocation(line: 64, column: 7, scope: !3119)
!3166 = !DILocation(line: 65, column: 12, scope: !3164)
!3167 = !DILocation(line: 65, column: 5, scope: !3164)
!3168 = !DILocation(line: 70, column: 9, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3119, file: !401, line: 70, column: 7)
!3170 = !DILocation(line: 70, column: 23, scope: !3169)
!3171 = !DILocation(line: 70, column: 33, scope: !3169)
!3172 = !DILocation(line: 70, column: 26, scope: !3169)
!3173 = !DILocation(line: 70, column: 59, scope: !3169)
!3174 = !DILocation(line: 71, column: 7, scope: !3169)
!3175 = !DILocation(line: 71, column: 10, scope: !3169)
!3176 = !DILocation(line: 70, column: 7, scope: !3119)
!3177 = !DILocation(line: 100, column: 12, scope: !3119)
!3178 = !DILocation(line: 105, column: 7, scope: !3119)
!3179 = !DILocation(line: 72, column: 19, scope: !3169)
!3180 = !DILocation(line: 105, column: 19, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3119, file: !401, line: 105, column: 7)
!3182 = !DILocation(line: 107, column: 13, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3181, file: !401, line: 106, column: 5)
!3184 = !DILocation(line: 109, column: 5, scope: !3183)
!3185 = !DILocation(line: 112, column: 1, scope: !3119)
!3186 = !DISubprogram(name: "fileno", scope: !146, file: !146, line: 809, type: !3120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!3187 = !DISubprogram(name: "fclose", scope: !146, file: !146, line: 178, type: !3120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!3188 = !DISubprogram(name: "lseek", scope: !711, file: !711, line: 339, type: !3189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!88, !35, !88, !35}
!3191 = distinct !DISubprogram(name: "rpl_fflush", scope: !403, file: !403, line: 130, type: !3192, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3228)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!35, !3194}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3196)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3196, file: !65, line: 51, baseType: !35, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3196, file: !65, line: 54, baseType: !69, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3196, file: !65, line: 55, baseType: !69, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3196, file: !65, line: 56, baseType: !69, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3196, file: !65, line: 57, baseType: !69, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3196, file: !65, line: 58, baseType: !69, size: 64, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3196, file: !65, line: 59, baseType: !69, size: 64, offset: 384)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3196, file: !65, line: 60, baseType: !69, size: 64, offset: 448)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3196, file: !65, line: 61, baseType: !69, size: 64, offset: 512)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3196, file: !65, line: 64, baseType: !69, size: 64, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3196, file: !65, line: 65, baseType: !69, size: 64, offset: 640)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3196, file: !65, line: 66, baseType: !69, size: 64, offset: 704)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3196, file: !65, line: 68, baseType: !81, size: 64, offset: 768)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3196, file: !65, line: 70, baseType: !3212, size: 64, offset: 832)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3196, file: !65, line: 72, baseType: !35, size: 32, offset: 896)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3196, file: !65, line: 73, baseType: !35, size: 32, offset: 928)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3196, file: !65, line: 74, baseType: !88, size: 64, offset: 960)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3196, file: !65, line: 77, baseType: !36, size: 16, offset: 1024)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3196, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3196, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3196, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3196, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3196, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3196, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3196, file: !65, line: 93, baseType: !3212, size: 64, offset: 1344)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3196, file: !65, line: 94, baseType: !29, size: 64, offset: 1408)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3196, file: !65, line: 95, baseType: !37, size: 64, offset: 1472)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3196, file: !65, line: 96, baseType: !35, size: 32, offset: 1536)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3196, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3228 = !{!3229}
!3229 = !DILocalVariable(name: "stream", arg: 1, scope: !3191, file: !403, line: 130, type: !3194)
!3230 = !DILocation(line: 0, scope: !3191)
!3231 = !DILocation(line: 151, column: 14, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3191, file: !403, line: 151, column: 7)
!3233 = !DILocation(line: 151, column: 22, scope: !3232)
!3234 = !DILocation(line: 151, column: 27, scope: !3232)
!3235 = !DILocation(line: 151, column: 7, scope: !3191)
!3236 = !DILocation(line: 152, column: 12, scope: !3232)
!3237 = !DILocation(line: 152, column: 5, scope: !3232)
!3238 = !DILocalVariable(name: "fp", arg: 1, scope: !3239, file: !403, line: 42, type: !3194)
!3239 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !403, file: !403, line: 42, type: !3240, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !3194}
!3242 = !{!3238}
!3243 = !DILocation(line: 0, scope: !3239, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 157, column: 3, scope: !3191)
!3245 = !DILocation(line: 44, column: 12, scope: !3246, inlinedAt: !3244)
!3246 = distinct !DILexicalBlock(scope: !3239, file: !403, line: 44, column: 7)
!3247 = !DILocation(line: 44, column: 19, scope: !3246, inlinedAt: !3244)
!3248 = !DILocation(line: 44, column: 7, scope: !3239, inlinedAt: !3244)
!3249 = !DILocation(line: 46, column: 5, scope: !3246, inlinedAt: !3244)
!3250 = !DILocation(line: 159, column: 10, scope: !3191)
!3251 = !DILocation(line: 159, column: 3, scope: !3191)
!3252 = !DILocation(line: 236, column: 1, scope: !3191)
!3253 = !DISubprogram(name: "fflush", scope: !146, file: !146, line: 230, type: !3192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!3254 = distinct !DISubprogram(name: "rpl_fseeko", scope: !405, file: !405, line: 28, type: !3255, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3292)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!35, !3257, !3291, !35}
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 7, baseType: !3259)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 49, size: 1728, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3259, file: !65, line: 51, baseType: !35, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3259, file: !65, line: 54, baseType: !69, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3259, file: !65, line: 55, baseType: !69, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3259, file: !65, line: 56, baseType: !69, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3259, file: !65, line: 57, baseType: !69, size: 64, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3259, file: !65, line: 58, baseType: !69, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3259, file: !65, line: 59, baseType: !69, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3259, file: !65, line: 60, baseType: !69, size: 64, offset: 448)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3259, file: !65, line: 61, baseType: !69, size: 64, offset: 512)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3259, file: !65, line: 64, baseType: !69, size: 64, offset: 576)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3259, file: !65, line: 65, baseType: !69, size: 64, offset: 640)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3259, file: !65, line: 66, baseType: !69, size: 64, offset: 704)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3259, file: !65, line: 68, baseType: !81, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3259, file: !65, line: 70, baseType: !3275, size: 64, offset: 832)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3259, file: !65, line: 72, baseType: !35, size: 32, offset: 896)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3259, file: !65, line: 73, baseType: !35, size: 32, offset: 928)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3259, file: !65, line: 74, baseType: !88, size: 64, offset: 960)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3259, file: !65, line: 77, baseType: !36, size: 16, offset: 1024)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3259, file: !65, line: 78, baseType: !92, size: 8, offset: 1040)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3259, file: !65, line: 79, baseType: !94, size: 8, offset: 1048)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3259, file: !65, line: 81, baseType: !98, size: 64, offset: 1088)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3259, file: !65, line: 89, baseType: !101, size: 64, offset: 1152)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3259, file: !65, line: 91, baseType: !103, size: 64, offset: 1216)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3259, file: !65, line: 92, baseType: !106, size: 64, offset: 1280)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3259, file: !65, line: 93, baseType: !3275, size: 64, offset: 1344)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3259, file: !65, line: 94, baseType: !29, size: 64, offset: 1408)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3259, file: !65, line: 95, baseType: !37, size: 64, offset: 1472)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3259, file: !65, line: 96, baseType: !35, size: 32, offset: 1536)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3259, file: !65, line: 98, baseType: !113, size: 160, offset: 1568)
!3291 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !146, line: 63, baseType: !88)
!3292 = !{!3293, !3294, !3295, !3296}
!3293 = !DILocalVariable(name: "fp", arg: 1, scope: !3254, file: !405, line: 28, type: !3257)
!3294 = !DILocalVariable(name: "offset", arg: 2, scope: !3254, file: !405, line: 28, type: !3291)
!3295 = !DILocalVariable(name: "whence", arg: 3, scope: !3254, file: !405, line: 28, type: !35)
!3296 = !DILocalVariable(name: "pos", scope: !3297, file: !405, line: 123, type: !3291)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !405, line: 119, column: 5)
!3298 = distinct !DILexicalBlock(scope: !3254, file: !405, line: 55, column: 7)
!3299 = !DILocation(line: 0, scope: !3254)
!3300 = !DILocation(line: 55, column: 12, scope: !3298)
!3301 = !{!903, !439, i64 16}
!3302 = !DILocation(line: 55, column: 33, scope: !3298)
!3303 = !{!903, !439, i64 8}
!3304 = !DILocation(line: 55, column: 25, scope: !3298)
!3305 = !DILocation(line: 56, column: 7, scope: !3298)
!3306 = !DILocation(line: 56, column: 15, scope: !3298)
!3307 = !DILocation(line: 56, column: 37, scope: !3298)
!3308 = !{!903, !439, i64 32}
!3309 = !DILocation(line: 56, column: 29, scope: !3298)
!3310 = !DILocation(line: 57, column: 7, scope: !3298)
!3311 = !DILocation(line: 57, column: 15, scope: !3298)
!3312 = !{!903, !439, i64 72}
!3313 = !DILocation(line: 57, column: 29, scope: !3298)
!3314 = !DILocation(line: 55, column: 7, scope: !3254)
!3315 = !DILocation(line: 123, column: 26, scope: !3297)
!3316 = !DILocation(line: 123, column: 19, scope: !3297)
!3317 = !DILocation(line: 0, scope: !3297)
!3318 = !DILocation(line: 124, column: 15, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3297, file: !405, line: 124, column: 11)
!3320 = !DILocation(line: 124, column: 11, scope: !3297)
!3321 = !DILocation(line: 135, column: 12, scope: !3297)
!3322 = !DILocation(line: 135, column: 19, scope: !3297)
!3323 = !DILocation(line: 136, column: 12, scope: !3297)
!3324 = !DILocation(line: 136, column: 20, scope: !3297)
!3325 = !{!903, !904, i64 144}
!3326 = !DILocation(line: 167, column: 7, scope: !3297)
!3327 = !DILocation(line: 169, column: 10, scope: !3254)
!3328 = !DILocation(line: 169, column: 3, scope: !3254)
!3329 = !DILocation(line: 170, column: 1, scope: !3254)
!3330 = !DISubprogram(name: "fseeko", scope: !146, file: !146, line: 736, type: !3331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!35, !3257, !88, !35}
!3333 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !340, file: !340, line: 100, type: !3334, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !339, retainedNodes: !3337)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!37, !1155, !6, !37, !3336}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!3337 = !{!3338, !3339, !3340, !3341, !3342}
!3338 = !DILocalVariable(name: "pwc", arg: 1, scope: !3333, file: !340, line: 100, type: !1155)
!3339 = !DILocalVariable(name: "s", arg: 2, scope: !3333, file: !340, line: 100, type: !6)
!3340 = !DILocalVariable(name: "n", arg: 3, scope: !3333, file: !340, line: 100, type: !37)
!3341 = !DILocalVariable(name: "ps", arg: 4, scope: !3333, file: !340, line: 100, type: !3336)
!3342 = !DILocalVariable(name: "ret", scope: !3333, file: !340, line: 130, type: !37)
!3343 = !DILocation(line: 0, scope: !3333)
!3344 = !DILocation(line: 105, column: 9, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3333, file: !340, line: 105, column: 7)
!3346 = !DILocation(line: 105, column: 7, scope: !3333)
!3347 = !DILocation(line: 117, column: 10, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3333, file: !340, line: 117, column: 7)
!3349 = !DILocation(line: 117, column: 7, scope: !3333)
!3350 = !DILocation(line: 130, column: 16, scope: !3333)
!3351 = !DILocation(line: 135, column: 11, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3333, file: !340, line: 135, column: 7)
!3353 = !DILocation(line: 135, column: 25, scope: !3352)
!3354 = !DILocation(line: 135, column: 30, scope: !3352)
!3355 = !DILocation(line: 135, column: 7, scope: !3333)
!3356 = !DILocalVariable(name: "ps", arg: 1, scope: !3357, file: !1128, line: 1135, type: !3336)
!3357 = distinct !DISubprogram(name: "mbszero", scope: !1128, file: !1128, line: 1135, type: !3358, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !339, retainedNodes: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !3336}
!3360 = !{!3356}
!3361 = !DILocation(line: 0, scope: !3357, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 137, column: 5, scope: !3352)
!3363 = !DILocalVariable(name: "__dest", arg: 1, scope: !3364, file: !1137, line: 57, type: !29)
!3364 = distinct !DISubprogram(name: "memset", scope: !1137, file: !1137, line: 57, type: !1138, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !339, retainedNodes: !3365)
!3365 = !{!3363, !3366, !3367}
!3366 = !DILocalVariable(name: "__ch", arg: 2, scope: !3364, file: !1137, line: 57, type: !35)
!3367 = !DILocalVariable(name: "__len", arg: 3, scope: !3364, file: !1137, line: 57, type: !37)
!3368 = !DILocation(line: 0, scope: !3364, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 1137, column: 3, scope: !3357, inlinedAt: !3362)
!3370 = !DILocation(line: 59, column: 10, scope: !3364, inlinedAt: !3369)
!3371 = !DILocation(line: 137, column: 5, scope: !3352)
!3372 = !DILocation(line: 138, column: 11, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3333, file: !340, line: 138, column: 7)
!3374 = !DILocation(line: 138, column: 7, scope: !3333)
!3375 = !DILocation(line: 139, column: 5, scope: !3373)
!3376 = !DILocation(line: 143, column: 26, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3333, file: !340, line: 143, column: 7)
!3378 = !DILocation(line: 143, column: 41, scope: !3377)
!3379 = !DILocation(line: 143, column: 7, scope: !3333)
!3380 = !DILocation(line: 145, column: 15, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !340, line: 145, column: 11)
!3382 = distinct !DILexicalBlock(scope: !3377, file: !340, line: 144, column: 5)
!3383 = !DILocation(line: 145, column: 11, scope: !3382)
!3384 = !DILocation(line: 146, column: 32, scope: !3381)
!3385 = !DILocation(line: 146, column: 16, scope: !3381)
!3386 = !DILocation(line: 146, column: 14, scope: !3381)
!3387 = !DILocation(line: 146, column: 9, scope: !3381)
!3388 = !DILocation(line: 286, column: 1, scope: !3333)
!3389 = !DISubprogram(name: "mbsinit", scope: !3390, file: !3390, line: 293, type: !3391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !516)
!3390 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!35, !3393}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!3395 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !407, file: !407, line: 27, type: !2611, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3396)
!3396 = !{!3397, !3398, !3399, !3400}
!3397 = !DILocalVariable(name: "ptr", arg: 1, scope: !3395, file: !407, line: 27, type: !29)
!3398 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3395, file: !407, line: 27, type: !37)
!3399 = !DILocalVariable(name: "size", arg: 3, scope: !3395, file: !407, line: 27, type: !37)
!3400 = !DILocalVariable(name: "nbytes", scope: !3395, file: !407, line: 29, type: !37)
!3401 = !DILocation(line: 0, scope: !3395)
!3402 = !DILocation(line: 30, column: 7, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3395, file: !407, line: 30, column: 7)
!3404 = !DILocalVariable(name: "ptr", arg: 1, scope: !3405, file: !2702, line: 2057, type: !29)
!3405 = distinct !DISubprogram(name: "rpl_realloc", scope: !2702, file: !2702, line: 2057, type: !2694, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3406)
!3406 = !{!3404, !3407}
!3407 = !DILocalVariable(name: "size", arg: 2, scope: !3405, file: !2702, line: 2057, type: !37)
!3408 = !DILocation(line: 0, scope: !3405, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 37, column: 10, scope: !3395)
!3410 = !DILocation(line: 2059, column: 24, scope: !3405, inlinedAt: !3409)
!3411 = !DILocation(line: 2059, column: 10, scope: !3405, inlinedAt: !3409)
!3412 = !DILocation(line: 37, column: 3, scope: !3395)
!3413 = !DILocation(line: 32, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3403, file: !407, line: 31, column: 5)
!3415 = !DILocation(line: 32, column: 13, scope: !3414)
!3416 = !DILocation(line: 33, column: 7, scope: !3414)
!3417 = !DILocation(line: 38, column: 1, scope: !3395)
!3418 = distinct !DISubprogram(name: "hard_locale", scope: !410, file: !410, line: 28, type: !3419, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!48, !35}
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "category", arg: 1, scope: !3418, file: !410, line: 28, type: !35)
!3423 = !DILocalVariable(name: "locale", scope: !3418, file: !410, line: 30, type: !3424)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3425)
!3425 = !{!3426}
!3426 = !DISubrange(count: 257)
!3427 = !DILocation(line: 0, scope: !3418)
!3428 = !DILocation(line: 30, column: 3, scope: !3418)
!3429 = !DILocation(line: 30, column: 8, scope: !3418)
!3430 = !DILocation(line: 32, column: 7, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3418, file: !410, line: 32, column: 7)
!3432 = !DILocation(line: 32, column: 7, scope: !3418)
!3433 = !DILocalVariable(name: "__s1", arg: 1, scope: !3434, file: !474, line: 1359, type: !6)
!3434 = distinct !DISubprogram(name: "streq", scope: !474, file: !474, line: 1359, type: !475, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3435)
!3435 = !{!3433, !3436}
!3436 = !DILocalVariable(name: "__s2", arg: 2, scope: !3434, file: !474, line: 1359, type: !6)
!3437 = !DILocation(line: 0, scope: !3434, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 35, column: 9, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3418, file: !410, line: 35, column: 7)
!3440 = !DILocation(line: 1361, column: 11, scope: !3434, inlinedAt: !3438)
!3441 = !DILocation(line: 1361, column: 10, scope: !3434, inlinedAt: !3438)
!3442 = !DILocation(line: 35, column: 29, scope: !3439)
!3443 = !DILocation(line: 0, scope: !3434, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 35, column: 32, scope: !3439)
!3445 = !DILocation(line: 1361, column: 11, scope: !3434, inlinedAt: !3444)
!3446 = !DILocation(line: 1361, column: 10, scope: !3434, inlinedAt: !3444)
!3447 = !DILocation(line: 35, column: 7, scope: !3418)
!3448 = !DILocation(line: 46, column: 3, scope: !3418)
!3449 = !DILocation(line: 47, column: 1, scope: !3418)
!3450 = distinct !DISubprogram(name: "setlocale_null_r", scope: !412, file: !412, line: 154, type: !3451, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!35, !35, !69, !37}
!3453 = !{!3454, !3455, !3456}
!3454 = !DILocalVariable(name: "category", arg: 1, scope: !3450, file: !412, line: 154, type: !35)
!3455 = !DILocalVariable(name: "buf", arg: 2, scope: !3450, file: !412, line: 154, type: !69)
!3456 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3450, file: !412, line: 154, type: !37)
!3457 = !DILocation(line: 0, scope: !3450)
!3458 = !DILocation(line: 159, column: 10, scope: !3450)
!3459 = !DILocation(line: 159, column: 3, scope: !3450)
!3460 = distinct !DISubprogram(name: "setlocale_null", scope: !412, file: !412, line: 186, type: !3461, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!6, !35}
!3463 = !{!3464}
!3464 = !DILocalVariable(name: "category", arg: 1, scope: !3460, file: !412, line: 186, type: !35)
!3465 = !DILocation(line: 0, scope: !3460)
!3466 = !DILocation(line: 189, column: 10, scope: !3460)
!3467 = !DILocation(line: 189, column: 3, scope: !3460)
!3468 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !414, file: !414, line: 35, type: !3461, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3469)
!3469 = !{!3470, !3471}
!3470 = !DILocalVariable(name: "category", arg: 1, scope: !3468, file: !414, line: 35, type: !35)
!3471 = !DILocalVariable(name: "result", scope: !3468, file: !414, line: 37, type: !6)
!3472 = !DILocation(line: 0, scope: !3468)
!3473 = !DILocation(line: 37, column: 24, scope: !3468)
!3474 = !DILocation(line: 62, column: 3, scope: !3468)
!3475 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !414, file: !414, line: 66, type: !3451, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3476)
!3476 = !{!3477, !3478, !3479, !3480, !3481}
!3477 = !DILocalVariable(name: "category", arg: 1, scope: !3475, file: !414, line: 66, type: !35)
!3478 = !DILocalVariable(name: "buf", arg: 2, scope: !3475, file: !414, line: 66, type: !69)
!3479 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3475, file: !414, line: 66, type: !37)
!3480 = !DILocalVariable(name: "result", scope: !3475, file: !414, line: 111, type: !6)
!3481 = !DILocalVariable(name: "length", scope: !3482, file: !414, line: 125, type: !37)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !414, line: 124, column: 5)
!3483 = distinct !DILexicalBlock(scope: !3475, file: !414, line: 113, column: 7)
!3484 = !DILocation(line: 0, scope: !3475)
!3485 = !DILocation(line: 0, scope: !3468, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 111, column: 24, scope: !3475)
!3487 = !DILocation(line: 37, column: 24, scope: !3468, inlinedAt: !3486)
!3488 = !DILocation(line: 113, column: 14, scope: !3483)
!3489 = !DILocation(line: 113, column: 7, scope: !3475)
!3490 = !DILocation(line: 116, column: 19, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !414, line: 116, column: 11)
!3492 = distinct !DILexicalBlock(scope: !3483, file: !414, line: 114, column: 5)
!3493 = !DILocation(line: 116, column: 11, scope: !3492)
!3494 = !DILocation(line: 120, column: 16, scope: !3491)
!3495 = !DILocation(line: 120, column: 9, scope: !3491)
!3496 = !DILocation(line: 125, column: 23, scope: !3482)
!3497 = !DILocation(line: 0, scope: !3482)
!3498 = !DILocation(line: 126, column: 18, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3482, file: !414, line: 126, column: 11)
!3500 = !DILocation(line: 126, column: 11, scope: !3482)
!3501 = !DILocation(line: 128, column: 39, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3499, file: !414, line: 127, column: 9)
!3503 = !DILocalVariable(name: "__dest", arg: 1, scope: !3504, file: !1137, line: 26, type: !2969)
!3504 = distinct !DISubprogram(name: "memcpy", scope: !1137, file: !1137, line: 26, type: !2967, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3505)
!3505 = !{!3503, !3506, !3507}
!3506 = !DILocalVariable(name: "__src", arg: 2, scope: !3504, file: !1137, line: 26, type: !641)
!3507 = !DILocalVariable(name: "__len", arg: 3, scope: !3504, file: !1137, line: 26, type: !37)
!3508 = !DILocation(line: 0, scope: !3504, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 128, column: 11, scope: !3502)
!3510 = !DILocation(line: 29, column: 10, scope: !3504, inlinedAt: !3509)
!3511 = !DILocation(line: 129, column: 11, scope: !3502)
!3512 = !DILocation(line: 133, column: 23, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !414, line: 133, column: 15)
!3514 = distinct !DILexicalBlock(scope: !3499, file: !414, line: 132, column: 9)
!3515 = !DILocation(line: 133, column: 15, scope: !3514)
!3516 = !DILocation(line: 138, column: 44, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3513, file: !414, line: 134, column: 13)
!3518 = !DILocation(line: 0, scope: !3504, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 138, column: 15, scope: !3517)
!3520 = !DILocation(line: 29, column: 10, scope: !3504, inlinedAt: !3519)
!3521 = !DILocation(line: 139, column: 15, scope: !3517)
!3522 = !DILocation(line: 139, column: 32, scope: !3517)
!3523 = !DILocation(line: 140, column: 13, scope: !3517)
!3524 = !DILocation(line: 0, scope: !3483)
!3525 = !DILocation(line: 145, column: 1, scope: !3475)
