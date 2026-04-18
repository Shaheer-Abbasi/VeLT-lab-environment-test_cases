; ModuleID = 'src/unlink.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s FILE\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Call the unlink function to remove the specified FILE.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), align 8, !dbg !133
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !138
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !143
@.str.22 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !145
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !181
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !151
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !177
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !179
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.49 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.50, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.51, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !186
@optind = external local_unnamed_addr global i32, align 4
@.str.1.54 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !203
@.str.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !209
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.72, i32 0, i32 0), i8* null], align 8, !dbg !245
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !257
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !275
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !305
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !312
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !277
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !314
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !263
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !282
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.85 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.86 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.87 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.88 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.89 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.90 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.91 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.92 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.93 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.94 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.95 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.96 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.97 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.98 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.99 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.104 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.105 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.106 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.107 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !320
@exit_failure = dso_local global i32 1, align 4, !dbg !328
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !334
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

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
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !439
  %11 = load i8*, i8** @program_name, align 8, !dbg !439, !tbaa !435
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11, i8* noundef %11) #32, !dbg !439
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !441
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !441, !tbaa !435
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !441
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !442
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !442
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !443
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !443
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !444, metadata !DIExpression()) #32, !dbg !463
  %18 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !465
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %18) #32, !dbg !465
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !449, metadata !DIExpression()) #32, !dbg !466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %18, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !466
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !458, metadata !DIExpression()) #32, !dbg !463
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !459, metadata !DIExpression()) #32, !dbg !463
  %19 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !467
  call void @llvm.dbg.value(metadata %struct.infomap* %19, metadata !459, metadata !DIExpression()) #32, !dbg !463
  br label %20, !dbg !468

20:                                               ; preds = %25, %9
  %21 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %9 ]
  %22 = phi %struct.infomap* [ %26, %25 ], [ %19, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !459, metadata !DIExpression()) #32, !dbg !463
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !476
  call void @llvm.dbg.value(metadata i8* %21, metadata !475, metadata !DIExpression()) #32, !dbg !476
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %21) #33, !dbg !478
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
  %35 = select i1 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %33, !dbg !492
  call void @llvm.dbg.value(metadata i8* %35, metadata !458, metadata !DIExpression()) #32, !dbg !463
  tail call void @emit_bug_reporting_address() #32, !dbg !493
  %36 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !494
  call void @llvm.dbg.value(metadata i8* %36, metadata !461, metadata !DIExpression()) #32, !dbg !463
  %37 = icmp eq i8* %36, null, !dbg !495
  br i1 %37, label %45, label %38, !dbg !497

38:                                               ; preds = %30
  %39 = tail call i32 @strncmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 noundef 3) #33, !dbg !498
  %40 = icmp eq i32 %39, 0, !dbg !498
  br i1 %40, label %45, label %41, !dbg !499

41:                                               ; preds = %38
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #32, !dbg !500
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !500, !tbaa !435
  %44 = tail call i32 @fputs_unlocked(i8* noundef %42, %struct._IO_FILE* noundef %43) #32, !dbg !500
  br label %45, !dbg !502

45:                                               ; preds = %30, %38, %41
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !503
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), metadata !475, metadata !DIExpression()) #32, !dbg !503
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !462, metadata !DIExpression()) #32, !dbg !463
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #32, !dbg !505
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %46, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !505
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 noundef 5) #32, !dbg !506
  %49 = icmp eq i8* %35, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !506
  %50 = select i1 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !506
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
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !52, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i8* %0, metadata !53, metadata !DIExpression()), !dbg !519
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !520, !tbaa !521
  %3 = icmp eq i32 %2, -1, !dbg !523
  br i1 %3, label %4, label %16, !dbg !524

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #32, !dbg !525
  call void @llvm.dbg.value(metadata i8* %5, metadata !54, metadata !DIExpression()), !dbg !526
  %6 = icmp eq i8* %5, null, !dbg !527
  br i1 %6, label %14, label %7, !dbg !528

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !529, !tbaa !530
  %9 = icmp eq i8 %8, 0, !dbg !529
  br i1 %9, label %14, label %10, !dbg !531

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !469, metadata !DIExpression()) #32, !dbg !532
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), metadata !475, metadata !DIExpression()) #32, !dbg !532
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #33, !dbg !534
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
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #33, !dbg !544
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
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #33, !dbg !564
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
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), metadata !475, metadata !DIExpression()) #32, !dbg !590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !594
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !596
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !469, metadata !DIExpression()) #32, !dbg !608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !128, metadata !DIExpression()), !dbg !519
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i64 noundef 6) #33, !dbg !610
  %96 = icmp eq i32 %95, 0, !dbg !610
  br i1 %96, label %100, label %97, !dbg !612

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i64 noundef 9) #33, !dbg !613
  %99 = icmp eq i32 %98, 0, !dbg !613
  br i1 %99, label %100, label %103, !dbg !614

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !615
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !615
  br label %106, !dbg !617

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !618
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !618
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !435
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !620
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !435
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !621
  %111 = ptrtoint i8* %59 to i64, !dbg !622
  %112 = sub i64 %111, %92, !dbg !622
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !435
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !622
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !435
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !623
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !435
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !624
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
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* noundef %8, i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %9, i8* noundef null) #32, !dbg !657
  %10 = load i32, i32* @optind, align 4, !dbg !658, !tbaa !521
  %11 = icmp slt i32 %10, %0, !dbg !660
  br i1 %11, label %14, label %12, !dbg !661

12:                                               ; preds = %2
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #32, !dbg !662
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %13) #32, !dbg !662
  tail call void @usage(i32 noundef 1) #36, !dbg !664
  unreachable, !dbg !664

14:                                               ; preds = %2
  %15 = add nsw i32 %10, 1, !dbg !665
  %16 = icmp slt i32 %15, %0, !dbg !666
  br i1 %16, label %17, label %25, !dbg !668

17:                                               ; preds = %14
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #32, !dbg !669
  %19 = load i32, i32* @optind, align 4, !dbg !669, !tbaa !521
  %20 = add nsw i32 %19, 1, !dbg !669
  %21 = sext i32 %20 to i64, !dbg !669
  %22 = getelementptr inbounds i8*, i8** %1, i64 %21, !dbg !669
  %23 = load i8*, i8** %22, align 8, !dbg !669, !tbaa !435
  %24 = tail call i8* @quote(i8* noundef %23) #32, !dbg !669
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %18, i8* noundef %24) #32, !dbg !669
  tail call void @usage(i32 noundef 1) #36, !dbg !671
  unreachable, !dbg !671

25:                                               ; preds = %14
  %26 = sext i32 %10 to i64, !dbg !672
  %27 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !672
  %28 = load i8*, i8** %27, align 8, !dbg !672, !tbaa !435
  %29 = tail call i32 @unlink(i8* noundef %28) #32, !dbg !674
  %30 = icmp eq i32 %29, 0, !dbg !675
  br i1 %30, label %40, label %31, !dbg !676

31:                                               ; preds = %25
  %32 = tail call i32* @__errno_location() #35, !dbg !677
  %33 = load i32, i32* %32, align 4, !dbg !677, !tbaa !521
  %34 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #32, !dbg !677
  %35 = load i32, i32* @optind, align 4, !dbg !677, !tbaa !521
  %36 = sext i32 %35 to i64, !dbg !677
  %37 = getelementptr inbounds i8*, i8** %1, i64 %36, !dbg !677
  %38 = load i8*, i8** %37, align 8, !dbg !677, !tbaa !435
  %39 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %38) #32, !dbg !677
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %33, i8* noundef %34, i8* noundef %39) #32, !dbg !677
  unreachable, !dbg !677

40:                                               ; preds = %25
  ret i32 0, !dbg !678
}

; Function Attrs: nounwind
declare !dbg !679 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !682 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !683 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !686 noundef i32 @unlink(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !690 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !692, metadata !DIExpression()), !dbg !693
  store i8* %0, i8** @file_name, align 8, !dbg !694, !tbaa !435
  ret void, !dbg !695
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !696 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !700, metadata !DIExpression()), !dbg !701
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !702, !tbaa !703
  ret void, !dbg !705
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !706 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711, !tbaa !435
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !712
  %3 = icmp eq i32 %2, 0, !dbg !713
  br i1 %3, label %22, label %4, !dbg !714

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !715, !tbaa !703, !range !716
  %6 = icmp eq i8 %5, 0, !dbg !715
  br i1 %6, label %11, label %7, !dbg !717

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !718
  %9 = load i32, i32* %8, align 4, !dbg !718, !tbaa !521
  %10 = icmp eq i32 %9, 32, !dbg !719
  br i1 %10, label %22, label %11, !dbg !720

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.23, i64 0, i64 0), i32 noundef 5) #32, !dbg !721
  call void @llvm.dbg.value(metadata i8* %12, metadata !708, metadata !DIExpression()), !dbg !722
  %13 = load i8*, i8** @file_name, align 8, !dbg !723, !tbaa !435
  %14 = icmp eq i8* %13, null, !dbg !723
  %15 = tail call i32* @__errno_location() #35, !dbg !725
  %16 = load i32, i32* %15, align 4, !dbg !725, !tbaa !521
  br i1 %14, label %19, label %17, !dbg !726

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !727
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.24, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !727
  br label %20, !dbg !727

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.25, i64 0, i64 0), i8* noundef %12) #32, !dbg !728
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !729, !tbaa !521
  tail call void @_exit(i32 noundef %21) #34, !dbg !730
  unreachable, !dbg !730

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !731, !tbaa !435
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !733
  %25 = icmp eq i32 %24, 0, !dbg !734
  br i1 %25, label %28, label %26, !dbg !735

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !736, !tbaa !521
  tail call void @_exit(i32 noundef %27) #34, !dbg !737
  unreachable, !dbg !737

28:                                               ; preds = %22
  ret void, !dbg !738
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !739 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !743, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %1, metadata !744, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i8* %2, metadata !745, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !746, metadata !DIExpression()), !dbg !748
  tail call fastcc void @flush_stdout(), !dbg !749
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !750, !tbaa !435
  %7 = icmp eq void ()* %6, null, !dbg !750
  br i1 %7, label %9, label %8, !dbg !752

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !753
  br label %13, !dbg !753

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !754, !tbaa !435
  %11 = tail call i8* @getprogname() #33, !dbg !754
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* noundef %11) #32, !dbg !754
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !756
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !756
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !756
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !756, !tbaa.struct !757
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !756
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !756
  ret void, !dbg !758
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !759 {
  call void @llvm.dbg.value(metadata i32 1, metadata !761, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i32 1, metadata !763, metadata !DIExpression()) #32, !dbg !768
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !771
  %2 = icmp slt i32 %1, 0, !dbg !772
  br i1 %2, label %6, label %3, !dbg !773

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !774, !tbaa !435
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !774
  br label %6, !dbg !774

6:                                                ; preds = %3, %0
  ret void, !dbg !775
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !776 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !778, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i32 %1, metadata !779, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i8* %2, metadata !780, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !781, metadata !DIExpression()), !dbg !783
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !784, !tbaa !435
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !785
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !786, metadata !DIExpression()) #32, !dbg !829
  call void @llvm.dbg.value(metadata i8* %2, metadata !827, metadata !DIExpression()) #32, !dbg !829
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !831
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !831, !noalias !832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !831
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !831
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !831, !noalias !832
  %11 = load i32, i32* @error_message_count, align 4, !dbg !836, !tbaa !521
  %12 = add i32 %11, 1, !dbg !836
  store i32 %12, i32* @error_message_count, align 4, !dbg !836, !tbaa !521
  %13 = icmp eq i32 %1, 0, !dbg !837
  br i1 %13, label %24, label %14, !dbg !839

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !840, metadata !DIExpression()) #32, !dbg !848
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !850
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !850
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !844, metadata !DIExpression()) #32, !dbg !851
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !852
  call void @llvm.dbg.value(metadata i8* %16, metadata !843, metadata !DIExpression()) #32, !dbg !848
  %17 = icmp eq i8* %16, null, !dbg !853
  br i1 %17, label %18, label %20, !dbg !855

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.28, i64 0, i64 0), i32 noundef 5) #32, !dbg !856
  call void @llvm.dbg.value(metadata i8* %19, metadata !843, metadata !DIExpression()) #32, !dbg !848
  br label %20, !dbg !857

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !848
  call void @llvm.dbg.value(metadata i8* %21, metadata !843, metadata !DIExpression()) #32, !dbg !848
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !858, !tbaa !435
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.29, i64 0, i64 0), i8* noundef %21) #32, !dbg !858
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !859
  br label %24, !dbg !860

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !861, !tbaa !435
  call void @llvm.dbg.value(metadata i32 10, metadata !862, metadata !DIExpression()) #32, !dbg !869
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !868, metadata !DIExpression()) #32, !dbg !869
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !871
  %27 = load i8*, i8** %26, align 8, !dbg !871, !tbaa !872
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !871
  %29 = load i8*, i8** %28, align 8, !dbg !871, !tbaa !875
  %30 = icmp ult i8* %27, %29, !dbg !871
  br i1 %30, label %33, label %31, !dbg !871, !prof !876

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !871
  br label %35, !dbg !871

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !871
  store i8* %34, i8** %26, align 8, !dbg !871, !tbaa !872
  store i8 10, i8* %27, align 1, !dbg !871, !tbaa !530
  br label %35, !dbg !871

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !877, !tbaa !435
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !877
  %38 = icmp eq i32 %0, 0, !dbg !878
  br i1 %38, label %40, label %39, !dbg !880

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !881
  unreachable, !dbg !881

40:                                               ; preds = %35
  ret void, !dbg !882
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !883 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !887 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !890 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !894 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !898, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 %1, metadata !899, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* %2, metadata !900, metadata !DIExpression()), !dbg !902
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !903
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !903
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.va_start(i8* nonnull %6), !dbg !905
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !906
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !906, !tbaa.struct !757
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !906
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !906
  call void @llvm.va_end(i8* nonnull %6), !dbg !907
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !908
  ret void, !dbg !908
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !153 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !171, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i32 %1, metadata !172, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i8* %2, metadata !173, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i32 %3, metadata !174, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i8* %4, metadata !175, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !176, metadata !DIExpression()), !dbg !910
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !911, !tbaa !521
  %9 = icmp eq i32 %8, 0, !dbg !911
  br i1 %9, label %24, label %10, !dbg !913

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !914, !tbaa !521
  %12 = icmp eq i32 %11, %3, !dbg !917
  br i1 %12, label %13, label %23, !dbg !918

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !919, !tbaa !435
  %15 = icmp eq i8* %14, %2, !dbg !920
  br i1 %15, label %39, label %16, !dbg !921

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !922
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !923
  br i1 %19, label %20, label %23, !dbg !923

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !924
  %22 = icmp eq i32 %21, 0, !dbg !925
  br i1 %22, label %39, label %23, !dbg !926

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !927, !tbaa !435
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !928, !tbaa !521
  br label %24, !dbg !929

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !930
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !931, !tbaa !435
  %26 = icmp eq void ()* %25, null, !dbg !931
  br i1 %26, label %28, label %27, !dbg !933

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !934
  br label %32, !dbg !934

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !935, !tbaa !435
  %30 = tail call i8* @getprogname() #33, !dbg !935
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.32, i64 0, i64 0), i8* noundef %30) #32, !dbg !935
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !937, !tbaa !435
  %34 = icmp eq i8* %2, null, !dbg !937
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.33, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.34, i64 0, i64 0), !dbg !937
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !937
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !938
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !938, !tbaa.struct !757
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !938
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !938
  br label %39, !dbg !939

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !939
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !940 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !944, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i32 %1, metadata !945, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i8* %2, metadata !946, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i32 %3, metadata !947, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i8* %4, metadata !948, metadata !DIExpression()), !dbg !950
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !951
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !951
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !949, metadata !DIExpression()), !dbg !952
  call void @llvm.va_start(i8* nonnull %8), !dbg !953
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !954
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !954
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !954, !tbaa.struct !757
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !954
  call void @llvm.va_end(i8* nonnull %8), !dbg !955
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !956
  ret void, !dbg !956
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !957 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !960, !tbaa !435
  ret i8* %1, !dbg !961
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #12 !dbg !962 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !967, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8** %1, metadata !968, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8* %2, metadata !969, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8* %3, metadata !970, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8* %4, metadata !971, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !972, metadata !DIExpression()), !dbg !993
  %9 = load i32, i32* @opterr, align 4, !dbg !994, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %9, metadata !973, metadata !DIExpression()), !dbg !993
  store i32 0, i32* @opterr, align 4, !dbg !995, !tbaa !521
  %10 = icmp eq i32 %0, 2, !dbg !996
  br i1 %10, label %11, label %18, !dbg !997

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !998
  call void @llvm.dbg.value(metadata i32 %12, metadata !974, metadata !DIExpression()), !dbg !999
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1000

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #32, !dbg !1001
  br label %18, !dbg !1002

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1003
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #32, !dbg !1003
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !977, metadata !DIExpression()), !dbg !1004
  call void @llvm.va_start(i8* nonnull %15), !dbg !1005
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1006, !tbaa !435
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1007
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #32, !dbg !1007
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1007, !tbaa.struct !757
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #32, !dbg !1007
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #32, !dbg !1007
  call void @exit(i32 noundef 0) #34, !dbg !1008
  unreachable, !dbg !1008

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !1009, !tbaa !521
  store i32 0, i32* @optind, align 4, !dbg !1010, !tbaa !521
  ret void, !dbg !1011
}

; Function Attrs: nounwind
declare !dbg !1012 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #12 !dbg !1018 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1022, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i8** %1, metadata !1023, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i8* %2, metadata !1024, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i8* %3, metadata !1025, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i8* %4, metadata !1026, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i1 %5, metadata !1027, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1037
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1028, metadata !DIExpression()), !dbg !1037
  %10 = load i32, i32* @opterr, align 4, !dbg !1038, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %10, metadata !1029, metadata !DIExpression()), !dbg !1037
  store i32 1, i32* @opterr, align 4, !dbg !1039, !tbaa !521
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), !dbg !1040
  call void @llvm.dbg.value(metadata i8* %11, metadata !1030, metadata !DIExpression()), !dbg !1037
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #32, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %12, metadata !1031, metadata !DIExpression()), !dbg !1037
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !1042

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1043
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !1043
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !1032, metadata !DIExpression()), !dbg !1044
  call void @llvm.va_start(i8* nonnull %14), !dbg !1045
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1046, !tbaa !435
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !1047
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #32, !dbg !1047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !1047, !tbaa.struct !757
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #32, !dbg !1047
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #32, !dbg !1047
  call void @exit(i32 noundef 0) #34, !dbg !1048
  unreachable, !dbg !1048

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !1049, !tbaa !521
  br label %19, !dbg !1050

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #32, !dbg !1051
  br label %21, !dbg !1052

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !1052, !tbaa !521
  ret void, !dbg !1053
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !1054 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1056, metadata !DIExpression()), !dbg !1059
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1060
  call void @llvm.dbg.value(metadata i8* %2, metadata !1057, metadata !DIExpression()), !dbg !1059
  %3 = icmp eq i8* %2, null, !dbg !1061
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1061
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %5, metadata !1058, metadata !DIExpression()), !dbg !1059
  %6 = ptrtoint i8* %5 to i64, !dbg !1062
  %7 = ptrtoint i8* %0 to i64, !dbg !1062
  %8 = sub i64 %6, %7, !dbg !1062
  %9 = icmp sgt i64 %8, 6, !dbg !1064
  br i1 %9, label %10, label %19, !dbg !1065

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %11, metadata !1067, metadata !DIExpression()) #32, !dbg !1074
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), metadata !1072, metadata !DIExpression()) #32, !dbg !1074
  call void @llvm.dbg.value(metadata i64 7, metadata !1073, metadata !DIExpression()) #32, !dbg !1074
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), i64 7) #32, !dbg !1076
  %13 = icmp eq i32 %12, 0, !dbg !1077
  br i1 %13, label %14, label %19, !dbg !1078

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1056, metadata !DIExpression()), !dbg !1059
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.60, i64 0, i64 0), i64 noundef 3) #33, !dbg !1079
  %16 = icmp eq i32 %15, 0, !dbg !1082
  %17 = select i1 %16, i64 3, i64 0, !dbg !1083
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1083
  br label %19, !dbg !1083

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1059
  call void @llvm.dbg.value(metadata i8* %21, metadata !1058, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8* %20, metadata !1056, metadata !DIExpression()), !dbg !1059
  store i8* %20, i8** @program_name, align 8, !dbg !1084, !tbaa !435
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1085, !tbaa !435
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1086, !tbaa !435
  ret void, !dbg !1087
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !211 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !218, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %1, metadata !219, metadata !DIExpression()), !dbg !1088
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1089
  call void @llvm.dbg.value(metadata i8* %5, metadata !220, metadata !DIExpression()), !dbg !1088
  %6 = icmp eq i8* %5, %0, !dbg !1090
  br i1 %6, label %7, label %17, !dbg !1092

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1093
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1093
  %10 = bitcast i64* %4 to i8*, !dbg !1094
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1094
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !226, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1096, metadata !DIExpression()) #32, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %10, metadata !1105, metadata !DIExpression()) #32, !dbg !1113
  call void @llvm.dbg.value(metadata i32 0, metadata !1111, metadata !DIExpression()) #32, !dbg !1113
  call void @llvm.dbg.value(metadata i64 8, metadata !1112, metadata !DIExpression()) #32, !dbg !1113
  store i64 0, i64* %4, align 8, !dbg !1115
  call void @llvm.dbg.value(metadata i32* %3, metadata !221, metadata !DIExpression(DW_OP_deref)), !dbg !1088
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1116
  %12 = icmp eq i64 %11, 2, !dbg !1118
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !221, metadata !DIExpression()), !dbg !1088
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1119
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1088
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1120
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1120
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1088
  ret i8* %18, !dbg !1120
}

; Function Attrs: nounwind
declare !dbg !1121 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1127 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1132, metadata !DIExpression()), !dbg !1135
  %2 = tail call i32* @__errno_location() #35, !dbg !1136
  %3 = load i32, i32* %2, align 4, !dbg !1136, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %3, metadata !1133, metadata !DIExpression()), !dbg !1135
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1137
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1137
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1137
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1138
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1134, metadata !DIExpression()), !dbg !1135
  store i32 %3, i32* %2, align 4, !dbg !1139, !tbaa !521
  ret %struct.quoting_options* %8, !dbg !1140
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1141 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1147, metadata !DIExpression()), !dbg !1148
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1149
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1149
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1150
  %5 = load i32, i32* %4, align 8, !dbg !1150, !tbaa !1151
  ret i32 %5, !dbg !1153
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1154 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1158, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i32 %1, metadata !1159, metadata !DIExpression()), !dbg !1160
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1161
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1161
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1162
  store i32 %1, i32* %5, align 8, !dbg !1163, !tbaa !1151
  ret void, !dbg !1164
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1165 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1169, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %1, metadata !1170, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 %2, metadata !1171, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %1, metadata !1172, metadata !DIExpression()), !dbg !1177
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1178
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1178
  %6 = lshr i8 %1, 5, !dbg !1179
  %7 = zext i8 %6 to i64, !dbg !1179
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1180
  call void @llvm.dbg.value(metadata i32* %8, metadata !1173, metadata !DIExpression()), !dbg !1177
  %9 = and i8 %1, 31, !dbg !1181
  %10 = zext i8 %9 to i32, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %10, metadata !1175, metadata !DIExpression()), !dbg !1177
  %11 = load i32, i32* %8, align 4, !dbg !1182, !tbaa !521
  %12 = lshr i32 %11, %10, !dbg !1183
  %13 = and i32 %12, 1, !dbg !1184
  call void @llvm.dbg.value(metadata i32 %13, metadata !1176, metadata !DIExpression()), !dbg !1177
  %14 = and i32 %2, 1, !dbg !1185
  %15 = xor i32 %13, %14, !dbg !1186
  %16 = shl i32 %15, %10, !dbg !1187
  %17 = xor i32 %16, %11, !dbg !1188
  store i32 %17, i32* %8, align 4, !dbg !1188, !tbaa !521
  ret i32 %13, !dbg !1189
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1190 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1194, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %1, metadata !1195, metadata !DIExpression()), !dbg !1197
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1198
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1200
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1194, metadata !DIExpression()), !dbg !1197
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1201
  %6 = load i32, i32* %5, align 4, !dbg !1201, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %6, metadata !1196, metadata !DIExpression()), !dbg !1197
  store i32 %1, i32* %5, align 4, !dbg !1203, !tbaa !1202
  ret i32 %6, !dbg !1204
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1205 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1209, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i8* %1, metadata !1210, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i8* %2, metadata !1211, metadata !DIExpression()), !dbg !1212
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1213
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1215
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1209, metadata !DIExpression()), !dbg !1212
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1216
  store i32 10, i32* %6, align 8, !dbg !1217, !tbaa !1151
  %7 = icmp ne i8* %1, null, !dbg !1218
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1220
  br i1 %9, label %11, label %10, !dbg !1220

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1221
  unreachable, !dbg !1221

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1222
  store i8* %1, i8** %12, align 8, !dbg !1223, !tbaa !1224
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1225
  store i8* %2, i8** %13, align 8, !dbg !1226, !tbaa !1227
  ret void, !dbg !1228
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1229 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1233, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %1, metadata !1234, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %2, metadata !1235, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %3, metadata !1236, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1237, metadata !DIExpression()), !dbg !1241
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1242
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1238, metadata !DIExpression()), !dbg !1241
  %8 = tail call i32* @__errno_location() #35, !dbg !1243
  %9 = load i32, i32* %8, align 4, !dbg !1243, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %9, metadata !1239, metadata !DIExpression()), !dbg !1241
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1244
  %11 = load i32, i32* %10, align 8, !dbg !1244, !tbaa !1151
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1245
  %13 = load i32, i32* %12, align 4, !dbg !1245, !tbaa !1202
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1246
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1247
  %16 = load i8*, i8** %15, align 8, !dbg !1247, !tbaa !1224
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1248
  %18 = load i8*, i8** %17, align 8, !dbg !1248, !tbaa !1227
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %19, metadata !1240, metadata !DIExpression()), !dbg !1241
  store i32 %9, i32* %8, align 4, !dbg !1250, !tbaa !521
  ret i64 %19, !dbg !1251
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1252 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1258, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %1, metadata !1259, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %2, metadata !1260, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %3, metadata !1261, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 %4, metadata !1262, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 %5, metadata !1263, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32* %6, metadata !1264, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %7, metadata !1265, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %8, metadata !1266, metadata !DIExpression()), !dbg !1320
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1321
  %18 = icmp eq i64 %17, 1, !dbg !1322
  call void @llvm.dbg.value(metadata i1 %18, metadata !1267, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1320
  call void @llvm.dbg.value(metadata i64 0, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 0, metadata !1269, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* null, metadata !1270, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 0, metadata !1271, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, metadata !1272, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 %5, metadata !1273, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, metadata !1274, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 1, metadata !1275, metadata !DIExpression()), !dbg !1320
  %19 = and i32 %5, 2, !dbg !1323
  %20 = icmp ne i32 %19, 0, !dbg !1323
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
  br label %36, !dbg !1323

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1324
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1325
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1326
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1259, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1275, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1274, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %43, metadata !1271, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %42, metadata !1270, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %41, metadata !1269, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 0, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %40, metadata !1261, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %39, metadata !1266, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %38, metadata !1265, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 %37, metadata !1262, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.label(metadata !1313), !dbg !1327
  call void @llvm.dbg.value(metadata i8 0, metadata !1276, metadata !DIExpression()), !dbg !1320
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
  ], !dbg !1328

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 5, metadata !1262, metadata !DIExpression()), !dbg !1320
  br label %111, !dbg !1329

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 5, metadata !1262, metadata !DIExpression()), !dbg !1320
  br i1 %45, label %111, label %51, !dbg !1329

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1330
  br i1 %52, label %111, label %53, !dbg !1334

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1330, !tbaa !530
  br label %111, !dbg !1330

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), metadata !288, metadata !DIExpression()) #32, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #32, !dbg !1335
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), i32 noundef 5) #32, !dbg !1339
  call void @llvm.dbg.value(metadata i8* %55, metadata !290, metadata !DIExpression()) #32, !dbg !1335
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), !dbg !1340
  br i1 %56, label %57, label %66, !dbg !1342

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1343
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1344
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !292, metadata !DIExpression()) #32, !dbg !1345
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1346, metadata !DIExpression()) #32, !dbg !1352
  call void @llvm.dbg.value(metadata i8* %23, metadata !1354, metadata !DIExpression()) #32, !dbg !1359
  call void @llvm.dbg.value(metadata i32 0, metadata !1357, metadata !DIExpression()) #32, !dbg !1359
  call void @llvm.dbg.value(metadata i64 8, metadata !1358, metadata !DIExpression()) #32, !dbg !1359
  store i64 0, i64* %13, align 8, !dbg !1361
  call void @llvm.dbg.value(metadata i32* %12, metadata !291, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1335
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1362
  %59 = icmp eq i64 %58, 3, !dbg !1364
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !291, metadata !DIExpression()) #32, !dbg !1335
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1365
  %63 = icmp eq i32 %37, 9, !dbg !1365
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), !dbg !1365
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1365
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1366
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1366
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1335
  call void @llvm.dbg.value(metadata i8* %67, metadata !1265, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), metadata !288, metadata !DIExpression()) #32, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #32, !dbg !1367
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), i32 noundef 5) #32, !dbg !1369
  call void @llvm.dbg.value(metadata i8* %68, metadata !290, metadata !DIExpression()) #32, !dbg !1367
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), !dbg !1370
  br i1 %69, label %70, label %79, !dbg !1371

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1372
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1373
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !292, metadata !DIExpression()) #32, !dbg !1374
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1346, metadata !DIExpression()) #32, !dbg !1375
  call void @llvm.dbg.value(metadata i8* %26, metadata !1354, metadata !DIExpression()) #32, !dbg !1377
  call void @llvm.dbg.value(metadata i32 0, metadata !1357, metadata !DIExpression()) #32, !dbg !1377
  call void @llvm.dbg.value(metadata i64 8, metadata !1358, metadata !DIExpression()) #32, !dbg !1377
  store i64 0, i64* %11, align 8, !dbg !1379
  call void @llvm.dbg.value(metadata i32* %10, metadata !291, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1367
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1380
  %72 = icmp eq i64 %71, 3, !dbg !1381
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !291, metadata !DIExpression()) #32, !dbg !1367
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1382
  %76 = icmp eq i32 %37, 9, !dbg !1382
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), !dbg !1382
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1382
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1383
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1383
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1266, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %80, metadata !1265, metadata !DIExpression()), !dbg !1320
  br i1 %45, label %97, label %82, !dbg !1384

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1277, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 0, metadata !1268, metadata !DIExpression()), !dbg !1320
  %83 = load i8, i8* %80, align 1, !dbg !1386, !tbaa !530
  %84 = icmp eq i8 %83, 0, !dbg !1388
  br i1 %84, label %97, label %85, !dbg !1388

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1277, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %88, metadata !1268, metadata !DIExpression()), !dbg !1320
  %89 = icmp ult i64 %88, %48, !dbg !1389
  br i1 %89, label %90, label %92, !dbg !1392

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1389
  store i8 %86, i8* %91, align 1, !dbg !1389, !tbaa !530
  br label %92, !dbg !1389

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %93, metadata !1268, metadata !DIExpression()), !dbg !1320
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %94, metadata !1277, metadata !DIExpression()), !dbg !1385
  %95 = load i8, i8* %94, align 1, !dbg !1386, !tbaa !530
  %96 = icmp eq i8 %95, 0, !dbg !1388
  br i1 %96, label %97, label %85, !dbg !1388, !llvm.loop !1394

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1396
  call void @llvm.dbg.value(metadata i64 %98, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 1, metadata !1272, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %81, metadata !1270, metadata !DIExpression()), !dbg !1320
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %99, metadata !1271, metadata !DIExpression()), !dbg !1320
  br label %111, !dbg !1398

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1272, metadata !DIExpression()), !dbg !1320
  br label %102, !dbg !1399

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1320
  br i1 %45, label %102, label %105, !dbg !1400

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 2, metadata !1262, metadata !DIExpression()), !dbg !1320
  br label %111, !dbg !1401

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 2, metadata !1262, metadata !DIExpression()), !dbg !1320
  br i1 %45, label %111, label %105, !dbg !1401

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1402
  br i1 %107, label %111, label %108, !dbg !1406

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1402, !tbaa !530
  br label %111, !dbg !1402

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1273, metadata !DIExpression()), !dbg !1320
  br label %111, !dbg !1407

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1408
  unreachable, !dbg !1408

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1396
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), %102 ], !dbg !1320
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1320
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1272, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %117, metadata !1271, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %116, metadata !1270, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %115, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %114, metadata !1266, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %113, metadata !1265, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i32 %112, metadata !1262, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 0, metadata !1282, metadata !DIExpression()), !dbg !1409
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
  br label %132, !dbg !1410

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1396
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1324
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1409
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1259, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %139, metadata !1282, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1275, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1274, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %135, metadata !1269, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %134, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %133, metadata !1261, metadata !DIExpression()), !dbg !1320
  %141 = icmp eq i64 %133, -1, !dbg !1411
  br i1 %141, label %142, label %146, !dbg !1412

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1413
  %144 = load i8, i8* %143, align 1, !dbg !1413, !tbaa !530
  %145 = icmp eq i8 %144, 0, !dbg !1414
  br i1 %145, label %596, label %148, !dbg !1415

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1416
  br i1 %147, label %596, label %148, !dbg !1415

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1284, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 0, metadata !1287, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 0, metadata !1288, metadata !DIExpression()), !dbg !1417
  br i1 %123, label %149, label %163, !dbg !1418

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1420
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1421
  br i1 %151, label %152, label %154, !dbg !1421

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %153, metadata !1261, metadata !DIExpression()), !dbg !1320
  br label %154, !dbg !1423

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1423
  call void @llvm.dbg.value(metadata i64 %155, metadata !1261, metadata !DIExpression()), !dbg !1320
  %156 = icmp ugt i64 %150, %155, !dbg !1424
  br i1 %156, label %163, label %157, !dbg !1425

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1426
  call void @llvm.dbg.value(metadata i8* %158, metadata !1427, metadata !DIExpression()) #32, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %116, metadata !1430, metadata !DIExpression()) #32, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %117, metadata !1431, metadata !DIExpression()) #32, !dbg !1432
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1434
  %160 = icmp ne i32 %159, 0, !dbg !1435
  %161 = or i1 %160, %125, !dbg !1436
  %162 = xor i1 %160, true, !dbg !1436
  br i1 %161, label %163, label %647, !dbg !1436

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1284, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %164, metadata !1261, metadata !DIExpression()), !dbg !1320
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1437
  %167 = load i8, i8* %166, align 1, !dbg !1437, !tbaa !530
  call void @llvm.dbg.value(metadata i8 %167, metadata !1289, metadata !DIExpression()), !dbg !1417
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
  ], !dbg !1438

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1439

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1440

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1287, metadata !DIExpression()), !dbg !1417
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1444
  br i1 %171, label %188, label %172, !dbg !1444

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1446
  br i1 %173, label %174, label %176, !dbg !1450

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1446
  store i8 39, i8* %175, align 1, !dbg !1446, !tbaa !530
  br label %176, !dbg !1446

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %177, metadata !1268, metadata !DIExpression()), !dbg !1320
  %178 = icmp ult i64 %177, %140, !dbg !1451
  br i1 %178, label %179, label %181, !dbg !1454

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1451
  store i8 36, i8* %180, align 1, !dbg !1451, !tbaa !530
  br label %181, !dbg !1451

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %182, metadata !1268, metadata !DIExpression()), !dbg !1320
  %183 = icmp ult i64 %182, %140, !dbg !1455
  br i1 %183, label %184, label %186, !dbg !1458

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1455
  store i8 39, i8* %185, align 1, !dbg !1455, !tbaa !530
  br label %186, !dbg !1455

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %187, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 1, metadata !1276, metadata !DIExpression()), !dbg !1320
  br label %188, !dbg !1459

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1320
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %189, metadata !1268, metadata !DIExpression()), !dbg !1320
  %191 = icmp ult i64 %189, %140, !dbg !1460
  br i1 %191, label %192, label %194, !dbg !1463

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1460
  store i8 92, i8* %193, align 1, !dbg !1460, !tbaa !530
  br label %194, !dbg !1460

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %195, metadata !1268, metadata !DIExpression()), !dbg !1320
  br i1 %120, label %196, label %499, !dbg !1464

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1466
  %198 = icmp ult i64 %197, %164, !dbg !1467
  br i1 %198, label %199, label %456, !dbg !1468

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1469
  %201 = load i8, i8* %200, align 1, !dbg !1469, !tbaa !530
  %202 = add i8 %201, -48, !dbg !1470
  %203 = icmp ult i8 %202, 10, !dbg !1470
  br i1 %203, label %204, label %456, !dbg !1470

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1471
  br i1 %205, label %206, label %208, !dbg !1475

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1471
  store i8 48, i8* %207, align 1, !dbg !1471, !tbaa !530
  br label %208, !dbg !1471

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %209, metadata !1268, metadata !DIExpression()), !dbg !1320
  %210 = icmp ult i64 %209, %140, !dbg !1476
  br i1 %210, label %211, label %213, !dbg !1479

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1476
  store i8 48, i8* %212, align 1, !dbg !1476, !tbaa !530
  br label %213, !dbg !1476

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %214, metadata !1268, metadata !DIExpression()), !dbg !1320
  br label %456, !dbg !1480

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1481

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1482

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1483

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1485

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1487
  %221 = icmp ult i64 %220, %164, !dbg !1488
  br i1 %221, label %222, label %456, !dbg !1489

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1490
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1491
  %225 = load i8, i8* %224, align 1, !dbg !1491, !tbaa !530
  %226 = icmp eq i8 %225, 63, !dbg !1492
  br i1 %226, label %227, label %456, !dbg !1493

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1494
  %229 = load i8, i8* %228, align 1, !dbg !1494, !tbaa !530
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
  ], !dbg !1495

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1496

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1289, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %220, metadata !1282, metadata !DIExpression()), !dbg !1409
  %232 = icmp ult i64 %134, %140, !dbg !1498
  br i1 %232, label %233, label %235, !dbg !1501

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1498
  store i8 63, i8* %234, align 1, !dbg !1498, !tbaa !530
  br label %235, !dbg !1498

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %236, metadata !1268, metadata !DIExpression()), !dbg !1320
  %237 = icmp ult i64 %236, %140, !dbg !1502
  br i1 %237, label %238, label %240, !dbg !1505

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1502
  store i8 34, i8* %239, align 1, !dbg !1502, !tbaa !530
  br label %240, !dbg !1502

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %241, metadata !1268, metadata !DIExpression()), !dbg !1320
  %242 = icmp ult i64 %241, %140, !dbg !1506
  br i1 %242, label %243, label %245, !dbg !1509

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1506
  store i8 34, i8* %244, align 1, !dbg !1506, !tbaa !530
  br label %245, !dbg !1506

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %246, metadata !1268, metadata !DIExpression()), !dbg !1320
  %247 = icmp ult i64 %246, %140, !dbg !1510
  br i1 %247, label %248, label %250, !dbg !1513

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1510
  store i8 63, i8* %249, align 1, !dbg !1510, !tbaa !530
  br label %250, !dbg !1510

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %251, metadata !1268, metadata !DIExpression()), !dbg !1320
  br label %456, !dbg !1514

252:                                              ; preds = %163
  br label %263, !dbg !1515

253:                                              ; preds = %163
  br label %263, !dbg !1516

254:                                              ; preds = %163
  br label %261, !dbg !1517

255:                                              ; preds = %163
  br label %261, !dbg !1518

256:                                              ; preds = %163
  br label %263, !dbg !1519

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1520

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1521

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1524

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1526

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1527
  call void @llvm.dbg.label(metadata !1314), !dbg !1528
  br i1 %128, label %263, label %638, !dbg !1529

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1527
  call void @llvm.dbg.label(metadata !1316), !dbg !1531
  br i1 %118, label %510, label %467, !dbg !1532

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1533

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1534, !tbaa !530
  %268 = icmp eq i8 %267, 0, !dbg !1536
  br i1 %268, label %269, label %456, !dbg !1537

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1538
  br i1 %270, label %271, label %456, !dbg !1540

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1288, metadata !DIExpression()), !dbg !1417
  br label %272, !dbg !1541

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1288, metadata !DIExpression()), !dbg !1417
  br i1 %126, label %274, label %456, !dbg !1542

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1544

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1274, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 1, metadata !1288, metadata !DIExpression()), !dbg !1417
  br i1 %126, label %276, label %456, !dbg !1545

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1546

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1549
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1551
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1551
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %282, metadata !1259, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %281, metadata !1269, metadata !DIExpression()), !dbg !1320
  %283 = icmp ult i64 %134, %282, !dbg !1552
  br i1 %283, label %284, label %286, !dbg !1555

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1552
  store i8 39, i8* %285, align 1, !dbg !1552, !tbaa !530
  br label %286, !dbg !1552

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %287, metadata !1268, metadata !DIExpression()), !dbg !1320
  %288 = icmp ult i64 %287, %282, !dbg !1556
  br i1 %288, label %289, label %291, !dbg !1559

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1556
  store i8 92, i8* %290, align 1, !dbg !1556, !tbaa !530
  br label %291, !dbg !1556

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %292, metadata !1268, metadata !DIExpression()), !dbg !1320
  %293 = icmp ult i64 %292, %282, !dbg !1560
  br i1 %293, label %294, label %296, !dbg !1563

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1560
  store i8 39, i8* %295, align 1, !dbg !1560, !tbaa !530
  br label %296, !dbg !1560

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %297, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, metadata !1276, metadata !DIExpression()), !dbg !1320
  br label %456, !dbg !1564

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1565

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1290, metadata !DIExpression()), !dbg !1566
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1567
  %301 = load i16*, i16** %300, align 8, !dbg !1567, !tbaa !435
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1567
  %304 = load i16, i16* %303, align 2, !dbg !1567, !tbaa !555
  %305 = and i16 %304, 16384, !dbg !1567
  %306 = icmp ne i16 %305, 0, !dbg !1569
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %349, metadata !1290, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %312, metadata !1261, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i1 %350, metadata !1288, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1417
  br label %352, !dbg !1570

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1571
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1294, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1346, metadata !DIExpression()) #32, !dbg !1573
  call void @llvm.dbg.value(metadata i8* %32, metadata !1354, metadata !DIExpression()) #32, !dbg !1575
  call void @llvm.dbg.value(metadata i32 0, metadata !1357, metadata !DIExpression()) #32, !dbg !1575
  call void @llvm.dbg.value(metadata i64 8, metadata !1358, metadata !DIExpression()) #32, !dbg !1575
  store i64 0, i64* %14, align 8, !dbg !1577
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i8 1, metadata !1293, metadata !DIExpression()), !dbg !1566
  %308 = icmp eq i64 %164, -1, !dbg !1578
  br i1 %308, label %309, label %311, !dbg !1580

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %310, metadata !1261, metadata !DIExpression()), !dbg !1320
  br label %311, !dbg !1582

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1417
  call void @llvm.dbg.value(metadata i64 %312, metadata !1261, metadata !DIExpression()), !dbg !1320
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1583
  %313 = sub i64 %312, %139, !dbg !1584
  call void @llvm.dbg.value(metadata i32* %16, metadata !1297, metadata !DIExpression(DW_OP_deref)), !dbg !1585
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %314, metadata !1301, metadata !DIExpression()), !dbg !1585
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1587

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1566
  %316 = icmp ugt i64 %312, %139, !dbg !1588
  br i1 %316, label %319, label %317, !dbg !1590

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1591
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %349, metadata !1290, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %312, metadata !1261, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i1 %350, metadata !1288, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1417
  br label %352, !dbg !1570

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1293, metadata !DIExpression()), !dbg !1566
  br label %346, !dbg !1593

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1290, metadata !DIExpression()), !dbg !1566
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1595
  %323 = load i8, i8* %322, align 1, !dbg !1595, !tbaa !530
  %324 = icmp eq i8 %323, 0, !dbg !1590
  br i1 %324, label %348, label %325, !dbg !1596

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %326, metadata !1290, metadata !DIExpression()), !dbg !1566
  %327 = add i64 %326, %139, !dbg !1598
  %328 = icmp eq i64 %326, %313, !dbg !1588
  br i1 %328, label %348, label %319, !dbg !1590, !llvm.loop !1599

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1600
  call void @llvm.dbg.value(metadata i64 1, metadata !1302, metadata !DIExpression()), !dbg !1601
  br i1 %331, label %332, label %340, !dbg !1600

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1302, metadata !DIExpression()), !dbg !1601
  %334 = add i64 %333, %139, !dbg !1602
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1604
  %336 = load i8, i8* %335, align 1, !dbg !1604, !tbaa !530
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1605

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %338, metadata !1302, metadata !DIExpression()), !dbg !1601
  %339 = icmp eq i64 %338, %314, !dbg !1607
  br i1 %339, label %340, label %332, !dbg !1608, !llvm.loop !1609

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1611, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %341, metadata !1297, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 %341, metadata !1613, metadata !DIExpression()) #32, !dbg !1621
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1623
  %343 = icmp ne i32 %342, 0, !dbg !1624
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %314, metadata !1290, metadata !DIExpression()), !dbg !1566
  br label %348, !dbg !1625

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1591
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1592
  call void @llvm.dbg.label(metadata !1319), !dbg !1626
  %345 = select i1 %118, i32 4, i32 2, !dbg !1627
  br label %643, !dbg !1627

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1591
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %349, metadata !1290, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %312, metadata !1261, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i1 %350, metadata !1288, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1417
  br label %352, !dbg !1570

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1293, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1591
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %349, metadata !1290, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %312, metadata !1261, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i1 %350, metadata !1288, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1417
  %351 = icmp ugt i64 %349, 1, !dbg !1629
  br i1 %351, label %357, label %352, !dbg !1570

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1630
  br i1 %356, label %456, label %357, !dbg !1630

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %361, metadata !1310, metadata !DIExpression()), !dbg !1632
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1633

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1320
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1409
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1634
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1417
  call void @llvm.dbg.value(metadata i8 %369, metadata !1289, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 %368, metadata !1287, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1284, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %366, metadata !1282, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %364, metadata !1268, metadata !DIExpression()), !dbg !1320
  br i1 %362, label %414, label %370, !dbg !1635

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1640

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1287, metadata !DIExpression()), !dbg !1417
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1643
  br i1 %372, label %389, label %373, !dbg !1643

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1645
  br i1 %374, label %375, label %377, !dbg !1649

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1645
  store i8 39, i8* %376, align 1, !dbg !1645, !tbaa !530
  br label %377, !dbg !1645

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %378, metadata !1268, metadata !DIExpression()), !dbg !1320
  %379 = icmp ult i64 %378, %140, !dbg !1650
  br i1 %379, label %380, label %382, !dbg !1653

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1650
  store i8 36, i8* %381, align 1, !dbg !1650, !tbaa !530
  br label %382, !dbg !1650

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %383, metadata !1268, metadata !DIExpression()), !dbg !1320
  %384 = icmp ult i64 %383, %140, !dbg !1654
  br i1 %384, label %385, label %387, !dbg !1657

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1654
  store i8 39, i8* %386, align 1, !dbg !1654, !tbaa !530
  br label %387, !dbg !1654

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %388, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 1, metadata !1276, metadata !DIExpression()), !dbg !1320
  br label %389, !dbg !1658

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1320
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %390, metadata !1268, metadata !DIExpression()), !dbg !1320
  %392 = icmp ult i64 %390, %140, !dbg !1659
  br i1 %392, label %393, label %395, !dbg !1662

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1659
  store i8 92, i8* %394, align 1, !dbg !1659, !tbaa !530
  br label %395, !dbg !1659

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %396, metadata !1268, metadata !DIExpression()), !dbg !1320
  %397 = icmp ult i64 %396, %140, !dbg !1663
  br i1 %397, label %398, label %402, !dbg !1666

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1663
  %400 = or i8 %399, 48, !dbg !1663
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1663
  store i8 %400, i8* %401, align 1, !dbg !1663, !tbaa !530
  br label %402, !dbg !1663

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %403, metadata !1268, metadata !DIExpression()), !dbg !1320
  %404 = icmp ult i64 %403, %140, !dbg !1667
  br i1 %404, label %405, label %410, !dbg !1670

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1667
  %407 = and i8 %406, 7, !dbg !1667
  %408 = or i8 %407, 48, !dbg !1667
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1667
  store i8 %408, i8* %409, align 1, !dbg !1667, !tbaa !530
  br label %410, !dbg !1667

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %411, metadata !1268, metadata !DIExpression()), !dbg !1320
  %412 = and i8 %369, 7, !dbg !1671
  %413 = or i8 %412, 48, !dbg !1672
  call void @llvm.dbg.value(metadata i8 %413, metadata !1289, metadata !DIExpression()), !dbg !1417
  br label %421, !dbg !1673

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1674

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1675
  br i1 %416, label %417, label %419, !dbg !1680

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1675
  store i8 92, i8* %418, align 1, !dbg !1675, !tbaa !530
  br label %419, !dbg !1675

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %420, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, metadata !1284, metadata !DIExpression()), !dbg !1417
  br label %421, !dbg !1681

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1320
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1417
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1417
  call void @llvm.dbg.value(metadata i8 %426, metadata !1289, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 %425, metadata !1287, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1284, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %422, metadata !1268, metadata !DIExpression()), !dbg !1320
  %427 = add i64 %366, 1, !dbg !1682
  %428 = icmp ugt i64 %361, %427, !dbg !1684
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1685

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1686
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1686
  br i1 %432, label %433, label %444, !dbg !1686

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1689
  br i1 %434, label %435, label %437, !dbg !1693

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1689
  store i8 39, i8* %436, align 1, !dbg !1689, !tbaa !530
  br label %437, !dbg !1689

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %438, metadata !1268, metadata !DIExpression()), !dbg !1320
  %439 = icmp ult i64 %438, %140, !dbg !1694
  br i1 %439, label %440, label %442, !dbg !1697

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1694
  store i8 39, i8* %441, align 1, !dbg !1694, !tbaa !530
  br label %442, !dbg !1694

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %443, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, metadata !1276, metadata !DIExpression()), !dbg !1320
  br label %444, !dbg !1698

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1699
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %445, metadata !1268, metadata !DIExpression()), !dbg !1320
  %447 = icmp ult i64 %445, %140, !dbg !1700
  br i1 %447, label %448, label %450, !dbg !1703

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1700
  store i8 %426, i8* %449, align 1, !dbg !1700, !tbaa !530
  br label %450, !dbg !1700

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %451, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %427, metadata !1282, metadata !DIExpression()), !dbg !1409
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1704
  %453 = load i8, i8* %452, align 1, !dbg !1704, !tbaa !530
  call void @llvm.dbg.value(metadata i8 %453, metadata !1289, metadata !DIExpression()), !dbg !1417
  br label %363, !dbg !1705, !llvm.loop !1706

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1289, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i1 %358, metadata !1288, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1417
  call void @llvm.dbg.value(metadata i8 %425, metadata !1287, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1284, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %366, metadata !1282, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %422, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %360, metadata !1261, metadata !DIExpression()), !dbg !1320
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1709
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1320
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1324
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1409
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1417
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1259, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %465, metadata !1289, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1288, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1287, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1284, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %462, metadata !1282, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1274, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %459, metadata !1269, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %458, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %457, metadata !1261, metadata !DIExpression()), !dbg !1320
  br i1 %121, label %478, label %467, !dbg !1710

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
  br i1 %131, label %479, label %499, !dbg !1712

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1713

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
  %490 = lshr i8 %481, 5, !dbg !1714
  %491 = zext i8 %490 to i64, !dbg !1714
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1715
  %493 = load i32, i32* %492, align 4, !dbg !1715, !tbaa !521
  %494 = and i8 %481, 31, !dbg !1716
  %495 = zext i8 %494 to i32, !dbg !1716
  %496 = shl nuw i32 1, %495, !dbg !1717
  %497 = and i32 %493, %496, !dbg !1717
  %498 = icmp eq i32 %497, 0, !dbg !1717
  br i1 %498, label %499, label %510, !dbg !1718

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
  br i1 %165, label %510, label %546, !dbg !1719

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1709
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1320
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1324
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1720
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1417
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1259, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %518, metadata !1289, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1288, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %516, metadata !1282, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1274, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %513, metadata !1269, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %512, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %511, metadata !1261, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.label(metadata !1317), !dbg !1721
  br i1 %119, label %638, label %520, !dbg !1722

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1287, metadata !DIExpression()), !dbg !1417
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1724
  br i1 %521, label %538, label %522, !dbg !1724

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1726
  br i1 %523, label %524, label %526, !dbg !1730

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1726
  store i8 39, i8* %525, align 1, !dbg !1726, !tbaa !530
  br label %526, !dbg !1726

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %527, metadata !1268, metadata !DIExpression()), !dbg !1320
  %528 = icmp ult i64 %527, %519, !dbg !1731
  br i1 %528, label %529, label %531, !dbg !1734

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1731
  store i8 36, i8* %530, align 1, !dbg !1731, !tbaa !530
  br label %531, !dbg !1731

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %532, metadata !1268, metadata !DIExpression()), !dbg !1320
  %533 = icmp ult i64 %532, %519, !dbg !1735
  br i1 %533, label %534, label %536, !dbg !1738

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1735
  store i8 39, i8* %535, align 1, !dbg !1735, !tbaa !530
  br label %536, !dbg !1735

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %537, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 1, metadata !1276, metadata !DIExpression()), !dbg !1320
  br label %538, !dbg !1739

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1417
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %539, metadata !1268, metadata !DIExpression()), !dbg !1320
  %541 = icmp ult i64 %539, %519, !dbg !1740
  br i1 %541, label %542, label %544, !dbg !1743

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1740
  store i8 92, i8* %543, align 1, !dbg !1740, !tbaa !530
  br label %544, !dbg !1740

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %556, metadata !1259, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %555, metadata !1289, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1288, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1287, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %552, metadata !1282, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1274, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %549, metadata !1269, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %548, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %547, metadata !1261, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.label(metadata !1318), !dbg !1744
  br label %570, !dbg !1745

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1709
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1320
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1324
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1720
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1748
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1259, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %555, metadata !1289, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1288, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 poison, metadata !1287, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i64 %552, metadata !1282, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1274, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %549, metadata !1269, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %548, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %547, metadata !1261, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.label(metadata !1318), !dbg !1744
  %557 = xor i1 %551, true, !dbg !1745
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1745
  br i1 %558, label %570, label %559, !dbg !1745

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1749
  br i1 %560, label %561, label %563, !dbg !1753

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1749
  store i8 39, i8* %562, align 1, !dbg !1749, !tbaa !530
  br label %563, !dbg !1749

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %564, metadata !1268, metadata !DIExpression()), !dbg !1320
  %565 = icmp ult i64 %564, %556, !dbg !1754
  br i1 %565, label %566, label %568, !dbg !1757

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1754
  store i8 39, i8* %567, align 1, !dbg !1754, !tbaa !530
  br label %568, !dbg !1754

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %569, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, metadata !1276, metadata !DIExpression()), !dbg !1320
  br label %570, !dbg !1758

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1417
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %578, metadata !1268, metadata !DIExpression()), !dbg !1320
  %580 = icmp ult i64 %578, %571, !dbg !1759
  br i1 %580, label %581, label %583, !dbg !1762

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1759
  store i8 %572, i8* %582, align 1, !dbg !1759, !tbaa !530
  br label %583, !dbg !1759

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %584, metadata !1268, metadata !DIExpression()), !dbg !1320
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1763
  call void @llvm.dbg.value(metadata i8 poison, metadata !1275, metadata !DIExpression()), !dbg !1320
  br label %586, !dbg !1764

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1709
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1320
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1324
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1720
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1259, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %593, metadata !1282, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 poison, metadata !1276, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1275, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1274, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %589, metadata !1269, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %588, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %587, metadata !1261, metadata !DIExpression()), !dbg !1320
  %595 = add i64 %593, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %595, metadata !1282, metadata !DIExpression()), !dbg !1409
  br label %132, !dbg !1766, !llvm.loop !1767

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1259, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1275, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1274, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 undef, metadata !1269, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 undef, metadata !1268, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 undef, metadata !1261, metadata !DIExpression()), !dbg !1320
  %597 = icmp eq i64 %134, 0, !dbg !1769
  %598 = and i1 %126, %597, !dbg !1771
  %599 = and i1 %598, %119, !dbg !1771
  br i1 %599, label %638, label %600, !dbg !1771

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1772
  %602 = or i1 %119, %601, !dbg !1772
  %603 = xor i1 %136, true, !dbg !1772
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1772
  br i1 %604, label %612, label %605, !dbg !1772

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1774

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1776
  br label %653, !dbg !1778

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1779
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1781
  br i1 %611, label %36, label %612, !dbg !1781

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1782
  %615 = or i1 %614, %613, !dbg !1784
  br i1 %615, label %631, label %616, !dbg !1784

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1270, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %134, metadata !1268, metadata !DIExpression()), !dbg !1320
  %617 = load i8, i8* %116, align 1, !dbg !1785, !tbaa !530
  %618 = icmp eq i8 %617, 0, !dbg !1788
  br i1 %618, label %631, label %619, !dbg !1788

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1270, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %622, metadata !1268, metadata !DIExpression()), !dbg !1320
  %623 = icmp ult i64 %622, %140, !dbg !1789
  br i1 %623, label %624, label %626, !dbg !1792

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1789
  store i8 %620, i8* %625, align 1, !dbg !1789, !tbaa !530
  br label %626, !dbg !1789

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %627, metadata !1268, metadata !DIExpression()), !dbg !1320
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1793
  call void @llvm.dbg.value(metadata i8* %628, metadata !1270, metadata !DIExpression()), !dbg !1320
  %629 = load i8, i8* %628, align 1, !dbg !1785, !tbaa !530
  %630 = icmp eq i8 %629, 0, !dbg !1788
  br i1 %630, label %631, label %619, !dbg !1788, !llvm.loop !1794

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1396
  call void @llvm.dbg.value(metadata i64 %632, metadata !1268, metadata !DIExpression()), !dbg !1320
  %633 = icmp ult i64 %632, %140, !dbg !1796
  br i1 %633, label %634, label %653, !dbg !1798

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1799
  store i8 0, i8* %635, align 1, !dbg !1800, !tbaa !530
  br label %653, !dbg !1799

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1319), !dbg !1626
  %637 = icmp eq i32 %112, 2, !dbg !1801
  br i1 %637, label %643, label %647, !dbg !1627

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1319), !dbg !1626
  %641 = icmp eq i32 %112, 2, !dbg !1801
  %642 = select i1 %118, i32 4, i32 2, !dbg !1627
  br i1 %641, label %643, label %647, !dbg !1627

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1627

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1262, metadata !DIExpression()), !dbg !1320
  %651 = and i32 %5, -3, !dbg !1802
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1803
  br label %653, !dbg !1804

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1805
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1806 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1808 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1812, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i64 %1, metadata !1813, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1814, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i8* %0, metadata !1816, metadata !DIExpression()) #32, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %1, metadata !1821, metadata !DIExpression()) #32, !dbg !1829
  call void @llvm.dbg.value(metadata i64* null, metadata !1822, metadata !DIExpression()) #32, !dbg !1829
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1823, metadata !DIExpression()) #32, !dbg !1829
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1831
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1831
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1824, metadata !DIExpression()) #32, !dbg !1829
  %6 = tail call i32* @__errno_location() #35, !dbg !1832
  %7 = load i32, i32* %6, align 4, !dbg !1832, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %7, metadata !1825, metadata !DIExpression()) #32, !dbg !1829
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1833
  %9 = load i32, i32* %8, align 4, !dbg !1833, !tbaa !1202
  %10 = or i32 %9, 1, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %10, metadata !1826, metadata !DIExpression()) #32, !dbg !1829
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1835
  %12 = load i32, i32* %11, align 8, !dbg !1835, !tbaa !1151
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1836
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1837
  %15 = load i8*, i8** %14, align 8, !dbg !1837, !tbaa !1224
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1838
  %17 = load i8*, i8** %16, align 8, !dbg !1838, !tbaa !1227
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !1839
  %19 = add i64 %18, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %19, metadata !1827, metadata !DIExpression()) #32, !dbg !1829
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %20, metadata !1828, metadata !DIExpression()) #32, !dbg !1829
  %21 = load i32, i32* %11, align 8, !dbg !1842, !tbaa !1151
  %22 = load i8*, i8** %14, align 8, !dbg !1843, !tbaa !1224
  %23 = load i8*, i8** %16, align 8, !dbg !1844, !tbaa !1227
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !1845
  store i32 %7, i32* %6, align 4, !dbg !1846, !tbaa !521
  ret i8* %20, !dbg !1847
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1817 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1816, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %1, metadata !1821, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64* %2, metadata !1822, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1823, metadata !DIExpression()), !dbg !1848
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1849
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1824, metadata !DIExpression()), !dbg !1848
  %7 = tail call i32* @__errno_location() #35, !dbg !1850
  %8 = load i32, i32* %7, align 4, !dbg !1850, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %8, metadata !1825, metadata !DIExpression()), !dbg !1848
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1851
  %10 = load i32, i32* %9, align 4, !dbg !1851, !tbaa !1202
  %11 = icmp eq i64* %2, null, !dbg !1852
  %12 = zext i1 %11 to i32, !dbg !1852
  %13 = or i32 %10, %12, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %13, metadata !1826, metadata !DIExpression()), !dbg !1848
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1854
  %15 = load i32, i32* %14, align 8, !dbg !1854, !tbaa !1151
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1855
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1856
  %18 = load i8*, i8** %17, align 8, !dbg !1856, !tbaa !1224
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1857
  %20 = load i8*, i8** %19, align 8, !dbg !1857, !tbaa !1227
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1858
  %22 = add i64 %21, 1, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %22, metadata !1827, metadata !DIExpression()), !dbg !1848
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !1860
  call void @llvm.dbg.value(metadata i8* %23, metadata !1828, metadata !DIExpression()), !dbg !1848
  %24 = load i32, i32* %14, align 8, !dbg !1861, !tbaa !1151
  %25 = load i8*, i8** %17, align 8, !dbg !1862, !tbaa !1224
  %26 = load i8*, i8** %19, align 8, !dbg !1863, !tbaa !1227
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1864
  store i32 %8, i32* %7, align 4, !dbg !1865, !tbaa !521
  br i1 %11, label %29, label %28, !dbg !1866

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1867, !tbaa !1869
  br label %29, !dbg !1870

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1871
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1872 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1877, !tbaa !435
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1874, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i32 1, metadata !1875, metadata !DIExpression()), !dbg !1879
  %2 = load i32, i32* @nslots, align 4, !tbaa !521
  call void @llvm.dbg.value(metadata i32 1, metadata !1875, metadata !DIExpression()), !dbg !1879
  %3 = icmp sgt i32 %2, 1, !dbg !1880
  br i1 %3, label %4, label %6, !dbg !1882

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1880
  br label %10, !dbg !1882

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1883
  %8 = load i8*, i8** %7, align 8, !dbg !1883, !tbaa !1885
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1887
  br i1 %9, label %17, label %16, !dbg !1888

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1875, metadata !DIExpression()), !dbg !1879
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1889
  %13 = load i8*, i8** %12, align 8, !dbg !1889, !tbaa !1885
  tail call void @free(i8* noundef %13) #32, !dbg !1890
  %14 = add nuw nsw i64 %11, 1, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %14, metadata !1875, metadata !DIExpression()), !dbg !1879
  %15 = icmp eq i64 %14, %5, !dbg !1880
  br i1 %15, label %6, label %10, !dbg !1882, !llvm.loop !1892

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !1894
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1896, !tbaa !1897
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1898, !tbaa !1885
  br label %17, !dbg !1899

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1900
  br i1 %18, label %21, label %19, !dbg !1902

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1903
  tail call void @free(i8* noundef %20) #32, !dbg !1905
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1906, !tbaa !435
  br label %21, !dbg !1907

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1908, !tbaa !521
  ret void, !dbg !1909
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1910 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1912, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8* %1, metadata !1913, metadata !DIExpression()), !dbg !1914
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1915
  ret i8* %3, !dbg !1916
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1917 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1921, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8* %1, metadata !1922, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %2, metadata !1923, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1924, metadata !DIExpression()), !dbg !1937
  %6 = tail call i32* @__errno_location() #35, !dbg !1938
  %7 = load i32, i32* %6, align 4, !dbg !1938, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %7, metadata !1925, metadata !DIExpression()), !dbg !1937
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1939, !tbaa !435
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1926, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1927, metadata !DIExpression()), !dbg !1937
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1940
  br i1 %9, label %10, label %11, !dbg !1940

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !1942
  unreachable, !dbg !1942

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1943, !tbaa !521
  %13 = icmp sgt i32 %12, %0, !dbg !1944
  br i1 %13, label %36, label %14, !dbg !1945

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1946
  call void @llvm.dbg.value(metadata i1 %15, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1947
  %16 = bitcast i64* %5 to i8*, !dbg !1948
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1948
  %17 = sext i32 %12 to i64, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %17, metadata !1931, metadata !DIExpression()), !dbg !1947
  store i64 %17, i64* %5, align 8, !dbg !1950, !tbaa !1869
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !1951
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1951
  %20 = add nuw nsw i32 %0, 1, !dbg !1952
  %21 = sub i32 %20, %12, !dbg !1953
  %22 = sext i32 %21 to i64, !dbg !1954
  call void @llvm.dbg.value(metadata i64* %5, metadata !1931, metadata !DIExpression(DW_OP_deref)), !dbg !1947
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !1955
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1955
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1926, metadata !DIExpression()), !dbg !1937
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1956, !tbaa !435
  br i1 %15, label %25, label %26, !dbg !1957

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1958, !tbaa.struct !1960
  br label %26, !dbg !1961

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !1962, !tbaa !521
  %28 = sext i32 %27 to i64, !dbg !1963
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1963
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1964
  %31 = load i64, i64* %5, align 8, !dbg !1965, !tbaa !1869
  call void @llvm.dbg.value(metadata i64 %31, metadata !1931, metadata !DIExpression()), !dbg !1947
  %32 = sub nsw i64 %31, %28, !dbg !1966
  %33 = shl i64 %32, 4, !dbg !1967
  call void @llvm.dbg.value(metadata i8* %30, metadata !1354, metadata !DIExpression()) #32, !dbg !1968
  call void @llvm.dbg.value(metadata i32 0, metadata !1357, metadata !DIExpression()) #32, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %33, metadata !1358, metadata !DIExpression()) #32, !dbg !1968
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !1970
  %34 = load i64, i64* %5, align 8, !dbg !1971, !tbaa !1869
  call void @llvm.dbg.value(metadata i64 %34, metadata !1931, metadata !DIExpression()), !dbg !1947
  %35 = trunc i64 %34 to i32, !dbg !1971
  store i32 %35, i32* @nslots, align 4, !dbg !1972, !tbaa !521
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1973
  br label %36, !dbg !1974

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1937
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1926, metadata !DIExpression()), !dbg !1937
  %38 = zext i32 %0 to i64, !dbg !1975
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !1976
  %40 = load i64, i64* %39, align 8, !dbg !1976, !tbaa !1897
  call void @llvm.dbg.value(metadata i64 %40, metadata !1932, metadata !DIExpression()), !dbg !1977
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !1978
  %42 = load i8*, i8** %41, align 8, !dbg !1978, !tbaa !1885
  call void @llvm.dbg.value(metadata i8* %42, metadata !1934, metadata !DIExpression()), !dbg !1977
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1979
  %44 = load i32, i32* %43, align 4, !dbg !1979, !tbaa !1202
  %45 = or i32 %44, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i32 %45, metadata !1935, metadata !DIExpression()), !dbg !1977
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1981
  %47 = load i32, i32* %46, align 8, !dbg !1981, !tbaa !1151
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1982
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1983
  %50 = load i8*, i8** %49, align 8, !dbg !1983, !tbaa !1224
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1984
  %52 = load i8*, i8** %51, align 8, !dbg !1984, !tbaa !1227
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !1985
  call void @llvm.dbg.value(metadata i64 %53, metadata !1936, metadata !DIExpression()), !dbg !1977
  %54 = icmp ugt i64 %40, %53, !dbg !1986
  br i1 %54, label %65, label %55, !dbg !1988

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %56, metadata !1932, metadata !DIExpression()), !dbg !1977
  store i64 %56, i64* %39, align 8, !dbg !1991, !tbaa !1897
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1992
  br i1 %57, label %59, label %58, !dbg !1994

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !1995
  br label %59, !dbg !1995

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !1996
  call void @llvm.dbg.value(metadata i8* %60, metadata !1934, metadata !DIExpression()), !dbg !1977
  store i8* %60, i8** %41, align 8, !dbg !1997, !tbaa !1885
  %61 = load i32, i32* %46, align 8, !dbg !1998, !tbaa !1151
  %62 = load i8*, i8** %49, align 8, !dbg !1999, !tbaa !1224
  %63 = load i8*, i8** %51, align 8, !dbg !2000, !tbaa !1227
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2001
  br label %65, !dbg !2002

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !1977
  call void @llvm.dbg.value(metadata i8* %66, metadata !1934, metadata !DIExpression()), !dbg !1977
  store i32 %7, i32* %6, align 4, !dbg !2003, !tbaa !521
  ret i8* %66, !dbg !2004
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2009, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8* %1, metadata !2010, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %2, metadata !2011, metadata !DIExpression()), !dbg !2012
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2013
  ret i8* %4, !dbg !2014
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2017, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i32 0, metadata !1912, metadata !DIExpression()) #32, !dbg !2019
  call void @llvm.dbg.value(metadata i8* %0, metadata !1913, metadata !DIExpression()) #32, !dbg !2019
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2021
  ret i8* %2, !dbg !2022
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2027, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %1, metadata !2028, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 0, metadata !2009, metadata !DIExpression()) #32, !dbg !2030
  call void @llvm.dbg.value(metadata i8* %0, metadata !2010, metadata !DIExpression()) #32, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %1, metadata !2011, metadata !DIExpression()) #32, !dbg !2030
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2032
  ret i8* %3, !dbg !2033
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2034 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2038, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i32 %1, metadata !2039, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8* %2, metadata !2040, metadata !DIExpression()), !dbg !2042
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2043
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2043
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2041, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2045), !dbg !2048
  call void @llvm.dbg.value(metadata i32 %1, metadata !2049, metadata !DIExpression()) #32, !dbg !2055
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2054, metadata !DIExpression()) #32, !dbg !2057
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2057, !alias.scope !2045
  %6 = icmp eq i32 %1, 10, !dbg !2058
  br i1 %6, label %7, label %8, !dbg !2060

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2061, !noalias !2045
  unreachable, !dbg !2061

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2062
  store i32 %1, i32* %9, align 8, !dbg !2063, !tbaa !1151, !alias.scope !2045
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2064
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2065
  ret i8* %10, !dbg !2066
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2067 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2071, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 %1, metadata !2072, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %2, metadata !2073, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %3, metadata !2074, metadata !DIExpression()), !dbg !2076
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2077
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2077
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2075, metadata !DIExpression()), !dbg !2078
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2079), !dbg !2082
  call void @llvm.dbg.value(metadata i32 %1, metadata !2049, metadata !DIExpression()) #32, !dbg !2083
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2054, metadata !DIExpression()) #32, !dbg !2085
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2085, !alias.scope !2079
  %7 = icmp eq i32 %1, 10, !dbg !2086
  br i1 %7, label %8, label %9, !dbg !2087

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2088, !noalias !2079
  unreachable, !dbg !2088

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2089
  store i32 %1, i32* %10, align 8, !dbg !2090, !tbaa !1151, !alias.scope !2079
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2091
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2092
  ret i8* %11, !dbg !2093
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2094 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2098, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %1, metadata !2099, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression()) #32, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %0, metadata !2039, metadata !DIExpression()) #32, !dbg !2101
  call void @llvm.dbg.value(metadata i8* %1, metadata !2040, metadata !DIExpression()) #32, !dbg !2101
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2103
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2103
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2041, metadata !DIExpression()) #32, !dbg !2104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105) #32, !dbg !2108
  call void @llvm.dbg.value(metadata i32 %0, metadata !2049, metadata !DIExpression()) #32, !dbg !2109
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2054, metadata !DIExpression()) #32, !dbg !2111
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2111, !alias.scope !2105
  %5 = icmp eq i32 %0, 10, !dbg !2112
  br i1 %5, label %6, label %7, !dbg !2113

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2114, !noalias !2105
  unreachable, !dbg !2114

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2115
  store i32 %0, i32* %8, align 8, !dbg !2116, !tbaa !1151, !alias.scope !2105
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2117
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2118
  ret i8* %9, !dbg !2119
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2120 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2124, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8* %1, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i64 %2, metadata !2126, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i32 0, metadata !2071, metadata !DIExpression()) #32, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %0, metadata !2072, metadata !DIExpression()) #32, !dbg !2128
  call void @llvm.dbg.value(metadata i8* %1, metadata !2073, metadata !DIExpression()) #32, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %2, metadata !2074, metadata !DIExpression()) #32, !dbg !2128
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2130
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2130
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2075, metadata !DIExpression()) #32, !dbg !2131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132) #32, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %0, metadata !2049, metadata !DIExpression()) #32, !dbg !2136
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2054, metadata !DIExpression()) #32, !dbg !2138
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2138, !alias.scope !2132
  %6 = icmp eq i32 %0, 10, !dbg !2139
  br i1 %6, label %7, label %8, !dbg !2140

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2141, !noalias !2132
  unreachable, !dbg !2141

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2142
  store i32 %0, i32* %9, align 8, !dbg !2143, !tbaa !1151, !alias.scope !2132
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2144
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2145
  ret i8* %10, !dbg !2146
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2147 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2151, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %1, metadata !2152, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %2, metadata !2153, metadata !DIExpression()), !dbg !2155
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2156
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2156
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2154, metadata !DIExpression()), !dbg !2157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2158, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1169, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %2, metadata !1170, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 1, metadata !1171, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %2, metadata !1172, metadata !DIExpression()), !dbg !2160
  %6 = lshr i8 %2, 5, !dbg !2162
  %7 = zext i8 %6 to i64, !dbg !2162
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2163
  call void @llvm.dbg.value(metadata i32* %8, metadata !1173, metadata !DIExpression()), !dbg !2160
  %9 = and i8 %2, 31, !dbg !2164
  %10 = zext i8 %9 to i32, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %10, metadata !1175, metadata !DIExpression()), !dbg !2160
  %11 = load i32, i32* %8, align 4, !dbg !2165, !tbaa !521
  %12 = lshr i32 %11, %10, !dbg !2166
  %13 = and i32 %12, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %13, metadata !1176, metadata !DIExpression()), !dbg !2160
  %14 = xor i32 %13, 1, !dbg !2168
  %15 = shl i32 %14, %10, !dbg !2169
  %16 = xor i32 %15, %11, !dbg !2170
  store i32 %16, i32* %8, align 4, !dbg !2170, !tbaa !521
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2171
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2172
  ret i8* %17, !dbg !2173
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2174 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %1, metadata !2179, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8* %0, metadata !2151, metadata !DIExpression()) #32, !dbg !2181
  call void @llvm.dbg.value(metadata i64 -1, metadata !2152, metadata !DIExpression()) #32, !dbg !2181
  call void @llvm.dbg.value(metadata i8 %1, metadata !2153, metadata !DIExpression()) #32, !dbg !2181
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2183
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2183
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2154, metadata !DIExpression()) #32, !dbg !2184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2185, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1169, metadata !DIExpression()) #32, !dbg !2186
  call void @llvm.dbg.value(metadata i8 %1, metadata !1170, metadata !DIExpression()) #32, !dbg !2186
  call void @llvm.dbg.value(metadata i32 1, metadata !1171, metadata !DIExpression()) #32, !dbg !2186
  call void @llvm.dbg.value(metadata i8 %1, metadata !1172, metadata !DIExpression()) #32, !dbg !2186
  %5 = lshr i8 %1, 5, !dbg !2188
  %6 = zext i8 %5 to i64, !dbg !2188
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2189
  call void @llvm.dbg.value(metadata i32* %7, metadata !1173, metadata !DIExpression()) #32, !dbg !2186
  %8 = and i8 %1, 31, !dbg !2190
  %9 = zext i8 %8 to i32, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %9, metadata !1175, metadata !DIExpression()) #32, !dbg !2186
  %10 = load i32, i32* %7, align 4, !dbg !2191, !tbaa !521
  %11 = lshr i32 %10, %9, !dbg !2192
  %12 = and i32 %11, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i32 %12, metadata !1176, metadata !DIExpression()) #32, !dbg !2186
  %13 = xor i32 %12, 1, !dbg !2194
  %14 = shl i32 %13, %9, !dbg !2195
  %15 = xor i32 %14, %10, !dbg !2196
  store i32 %15, i32* %7, align 4, !dbg !2196, !tbaa !521
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2198
  ret i8* %16, !dbg !2199
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2200 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2202, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8* %0, metadata !2178, metadata !DIExpression()) #32, !dbg !2204
  call void @llvm.dbg.value(metadata i8 58, metadata !2179, metadata !DIExpression()) #32, !dbg !2204
  call void @llvm.dbg.value(metadata i8* %0, metadata !2151, metadata !DIExpression()) #32, !dbg !2206
  call void @llvm.dbg.value(metadata i64 -1, metadata !2152, metadata !DIExpression()) #32, !dbg !2206
  call void @llvm.dbg.value(metadata i8 58, metadata !2153, metadata !DIExpression()) #32, !dbg !2206
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2208
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2208
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2154, metadata !DIExpression()) #32, !dbg !2209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2210, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1169, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.dbg.value(metadata i8 58, metadata !1170, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.dbg.value(metadata i32 1, metadata !1171, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.dbg.value(metadata i8 58, metadata !1172, metadata !DIExpression()) #32, !dbg !2211
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2213
  call void @llvm.dbg.value(metadata i32* %4, metadata !1173, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.dbg.value(metadata i32 26, metadata !1175, metadata !DIExpression()) #32, !dbg !2211
  %5 = load i32, i32* %4, align 4, !dbg !2214, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %5, metadata !1176, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2211
  %6 = or i32 %5, 67108864, !dbg !2215
  store i32 %6, i32* %4, align 4, !dbg !2215, !tbaa !521
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2217
  ret i8* %7, !dbg !2218
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2219 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2221, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 %1, metadata !2222, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %0, metadata !2151, metadata !DIExpression()) #32, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %1, metadata !2152, metadata !DIExpression()) #32, !dbg !2224
  call void @llvm.dbg.value(metadata i8 58, metadata !2153, metadata !DIExpression()) #32, !dbg !2224
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2226
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2226
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2154, metadata !DIExpression()) #32, !dbg !2227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2228, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1169, metadata !DIExpression()) #32, !dbg !2229
  call void @llvm.dbg.value(metadata i8 58, metadata !1170, metadata !DIExpression()) #32, !dbg !2229
  call void @llvm.dbg.value(metadata i32 1, metadata !1171, metadata !DIExpression()) #32, !dbg !2229
  call void @llvm.dbg.value(metadata i8 58, metadata !1172, metadata !DIExpression()) #32, !dbg !2229
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2231
  call void @llvm.dbg.value(metadata i32* %5, metadata !1173, metadata !DIExpression()) #32, !dbg !2229
  call void @llvm.dbg.value(metadata i32 26, metadata !1175, metadata !DIExpression()) #32, !dbg !2229
  %6 = load i32, i32* %5, align 4, !dbg !2232, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %6, metadata !1176, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2229
  %7 = or i32 %6, 67108864, !dbg !2233
  store i32 %7, i32* %5, align 4, !dbg !2233, !tbaa !521
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2234
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2235
  ret i8* %8, !dbg !2236
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2237 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2239, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 %1, metadata !2240, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8* %2, metadata !2241, metadata !DIExpression()), !dbg !2243
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2244
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2244
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2242, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %1, metadata !2049, metadata !DIExpression()) #32, !dbg !2246
  call void @llvm.dbg.value(metadata i32 0, metadata !2054, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2246
  %6 = icmp eq i32 %1, 10, !dbg !2248
  br i1 %6, label %7, label %8, !dbg !2249

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2250, !noalias !2251
  unreachable, !dbg !2250

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2054, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2246
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2254
  store i32 %1, i32* %9, align 8, !dbg !2254, !tbaa.struct !2159
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2254
  %11 = bitcast i32* %10 to i8*, !dbg !2254
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1169, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 58, metadata !1170, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 1, metadata !1171, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 58, metadata !1172, metadata !DIExpression()), !dbg !2255
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2257
  call void @llvm.dbg.value(metadata i32* %12, metadata !1173, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 26, metadata !1175, metadata !DIExpression()), !dbg !2255
  %13 = load i32, i32* %12, align 4, !dbg !2258, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %13, metadata !1176, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2255
  %14 = or i32 %13, 67108864, !dbg !2259
  store i32 %14, i32* %12, align 4, !dbg !2259, !tbaa !521
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2260
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2261
  ret i8* %15, !dbg !2262
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2263 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2267, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %1, metadata !2268, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %2, metadata !2269, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %3, metadata !2270, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i32 %0, metadata !2272, metadata !DIExpression()) #32, !dbg !2282
  call void @llvm.dbg.value(metadata i8* %1, metadata !2277, metadata !DIExpression()) #32, !dbg !2282
  call void @llvm.dbg.value(metadata i8* %2, metadata !2278, metadata !DIExpression()) #32, !dbg !2282
  call void @llvm.dbg.value(metadata i8* %3, metadata !2279, metadata !DIExpression()) #32, !dbg !2282
  call void @llvm.dbg.value(metadata i64 -1, metadata !2280, metadata !DIExpression()) #32, !dbg !2282
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2284
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2284
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2281, metadata !DIExpression()) #32, !dbg !2285
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2286, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1209, metadata !DIExpression()) #32, !dbg !2287
  call void @llvm.dbg.value(metadata i8* %1, metadata !1210, metadata !DIExpression()) #32, !dbg !2287
  call void @llvm.dbg.value(metadata i8* %2, metadata !1211, metadata !DIExpression()) #32, !dbg !2287
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1209, metadata !DIExpression()) #32, !dbg !2287
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2289
  store i32 10, i32* %7, align 8, !dbg !2290, !tbaa !1151
  %8 = icmp ne i8* %1, null, !dbg !2291
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2292
  br i1 %10, label %12, label %11, !dbg !2292

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2293
  unreachable, !dbg !2293

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2294
  store i8* %1, i8** %13, align 8, !dbg !2295, !tbaa !1224
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2296
  store i8* %2, i8** %14, align 8, !dbg !2297, !tbaa !1227
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2298
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2299
  ret i8* %15, !dbg !2300
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2273 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2272, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %1, metadata !2277, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %2, metadata !2278, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %3, metadata !2279, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %4, metadata !2280, metadata !DIExpression()), !dbg !2301
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2302
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2302
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2281, metadata !DIExpression()), !dbg !2303
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2304, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1209, metadata !DIExpression()) #32, !dbg !2305
  call void @llvm.dbg.value(metadata i8* %1, metadata !1210, metadata !DIExpression()) #32, !dbg !2305
  call void @llvm.dbg.value(metadata i8* %2, metadata !1211, metadata !DIExpression()) #32, !dbg !2305
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1209, metadata !DIExpression()) #32, !dbg !2305
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2307
  store i32 10, i32* %8, align 8, !dbg !2308, !tbaa !1151
  %9 = icmp ne i8* %1, null, !dbg !2309
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2310
  br i1 %11, label %13, label %12, !dbg !2310

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2311
  unreachable, !dbg !2311

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2312
  store i8* %1, i8** %14, align 8, !dbg !2313, !tbaa !1224
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2314
  store i8* %2, i8** %15, align 8, !dbg !2315, !tbaa !1227
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2316
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2317
  ret i8* %16, !dbg !2318
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2319 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2323, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8* %1, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8* %2, metadata !2325, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 0, metadata !2267, metadata !DIExpression()) #32, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %0, metadata !2268, metadata !DIExpression()) #32, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %1, metadata !2269, metadata !DIExpression()) #32, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %2, metadata !2270, metadata !DIExpression()) #32, !dbg !2327
  call void @llvm.dbg.value(metadata i32 0, metadata !2272, metadata !DIExpression()) #32, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %0, metadata !2277, metadata !DIExpression()) #32, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %1, metadata !2278, metadata !DIExpression()) #32, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %2, metadata !2279, metadata !DIExpression()) #32, !dbg !2329
  call void @llvm.dbg.value(metadata i64 -1, metadata !2280, metadata !DIExpression()) #32, !dbg !2329
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2331
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2331
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2281, metadata !DIExpression()) #32, !dbg !2332
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2333, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1209, metadata !DIExpression()) #32, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %0, metadata !1210, metadata !DIExpression()) #32, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %1, metadata !1211, metadata !DIExpression()) #32, !dbg !2334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1209, metadata !DIExpression()) #32, !dbg !2334
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2336
  store i32 10, i32* %6, align 8, !dbg !2337, !tbaa !1151
  %7 = icmp ne i8* %0, null, !dbg !2338
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2339
  br i1 %9, label %11, label %10, !dbg !2339

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2340
  unreachable, !dbg !2340

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2341
  store i8* %0, i8** %12, align 8, !dbg !2342, !tbaa !1224
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2343
  store i8* %1, i8** %13, align 8, !dbg !2344, !tbaa !1227
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2346
  ret i8* %14, !dbg !2347
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2348 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2352, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %1, metadata !2353, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* %2, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %3, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 0, metadata !2272, metadata !DIExpression()) #32, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %0, metadata !2277, metadata !DIExpression()) #32, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %1, metadata !2278, metadata !DIExpression()) #32, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %2, metadata !2279, metadata !DIExpression()) #32, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %3, metadata !2280, metadata !DIExpression()) #32, !dbg !2357
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2359
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2281, metadata !DIExpression()) #32, !dbg !2360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2361, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1209, metadata !DIExpression()) #32, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %0, metadata !1210, metadata !DIExpression()) #32, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %1, metadata !1211, metadata !DIExpression()) #32, !dbg !2362
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1209, metadata !DIExpression()) #32, !dbg !2362
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2364
  store i32 10, i32* %7, align 8, !dbg !2365, !tbaa !1151
  %8 = icmp ne i8* %0, null, !dbg !2366
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2367
  br i1 %10, label %12, label %11, !dbg !2367

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2368
  unreachable, !dbg !2368

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2369
  store i8* %0, i8** %13, align 8, !dbg !2370, !tbaa !1224
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2371
  store i8* %1, i8** %14, align 8, !dbg !2372, !tbaa !1227
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2374
  ret i8* %15, !dbg !2375
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %1, metadata !2381, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %2, metadata !2382, metadata !DIExpression()), !dbg !2383
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2384
  ret i8* %4, !dbg !2385
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2386 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %1, metadata !2391, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 0, metadata !2380, metadata !DIExpression()) #32, !dbg !2393
  call void @llvm.dbg.value(metadata i8* %0, metadata !2381, metadata !DIExpression()) #32, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %1, metadata !2382, metadata !DIExpression()) #32, !dbg !2393
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2395
  ret i8* %3, !dbg !2396
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2397 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2401, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %1, metadata !2402, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()) #32, !dbg !2404
  call void @llvm.dbg.value(metadata i8* %1, metadata !2381, metadata !DIExpression()) #32, !dbg !2404
  call void @llvm.dbg.value(metadata i64 -1, metadata !2382, metadata !DIExpression()) #32, !dbg !2404
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2406
  ret i8* %3, !dbg !2407
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2408 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()) #32, !dbg !2414
  call void @llvm.dbg.value(metadata i8* %0, metadata !2402, metadata !DIExpression()) #32, !dbg !2414
  call void @llvm.dbg.value(metadata i32 0, metadata !2380, metadata !DIExpression()) #32, !dbg !2416
  call void @llvm.dbg.value(metadata i8* %0, metadata !2381, metadata !DIExpression()) #32, !dbg !2416
  call void @llvm.dbg.value(metadata i64 -1, metadata !2382, metadata !DIExpression()) #32, !dbg !2416
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2418
  ret i8* %2, !dbg !2419
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2420 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2459, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8* %1, metadata !2460, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8* %2, metadata !2461, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8* %3, metadata !2462, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8** %4, metadata !2463, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %5, metadata !2464, metadata !DIExpression()), !dbg !2465
  %7 = icmp eq i8* %1, null, !dbg !2466
  br i1 %7, label %10, label %8, !dbg !2468

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2469
  br label %12, !dbg !2469

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2470
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.86, i64 0, i64 0), i32 noundef 5) #32, !dbg !2471
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2471
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.87, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2472
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !2473
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.89, i64 0, i64 0)) #32, !dbg !2473
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.87, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2474
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
  ], !dbg !2475

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.90, i64 0, i64 0), i32 noundef 5) #32, !dbg !2476
  %21 = load i8*, i8** %4, align 8, !dbg !2476, !tbaa !435
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2476
  br label %147, !dbg !2478

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !2479
  %25 = load i8*, i8** %4, align 8, !dbg !2479, !tbaa !435
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2479
  %27 = load i8*, i8** %26, align 8, !dbg !2479, !tbaa !435
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2479
  br label %147, !dbg !2480

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.92, i64 0, i64 0), i32 noundef 5) #32, !dbg !2481
  %31 = load i8*, i8** %4, align 8, !dbg !2481, !tbaa !435
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2481
  %33 = load i8*, i8** %32, align 8, !dbg !2481, !tbaa !435
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2481
  %35 = load i8*, i8** %34, align 8, !dbg !2481, !tbaa !435
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2481
  br label %147, !dbg !2482

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.93, i64 0, i64 0), i32 noundef 5) #32, !dbg !2483
  %39 = load i8*, i8** %4, align 8, !dbg !2483, !tbaa !435
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2483
  %41 = load i8*, i8** %40, align 8, !dbg !2483, !tbaa !435
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2483
  %43 = load i8*, i8** %42, align 8, !dbg !2483, !tbaa !435
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2483
  %45 = load i8*, i8** %44, align 8, !dbg !2483, !tbaa !435
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2483
  br label %147, !dbg !2484

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.94, i64 0, i64 0), i32 noundef 5) #32, !dbg !2485
  %49 = load i8*, i8** %4, align 8, !dbg !2485, !tbaa !435
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2485
  %51 = load i8*, i8** %50, align 8, !dbg !2485, !tbaa !435
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2485
  %53 = load i8*, i8** %52, align 8, !dbg !2485, !tbaa !435
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2485
  %55 = load i8*, i8** %54, align 8, !dbg !2485, !tbaa !435
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2485
  %57 = load i8*, i8** %56, align 8, !dbg !2485, !tbaa !435
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2485
  br label %147, !dbg !2486

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.95, i64 0, i64 0), i32 noundef 5) #32, !dbg !2487
  %61 = load i8*, i8** %4, align 8, !dbg !2487, !tbaa !435
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2487
  %63 = load i8*, i8** %62, align 8, !dbg !2487, !tbaa !435
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2487
  %65 = load i8*, i8** %64, align 8, !dbg !2487, !tbaa !435
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2487
  %67 = load i8*, i8** %66, align 8, !dbg !2487, !tbaa !435
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2487
  %69 = load i8*, i8** %68, align 8, !dbg !2487, !tbaa !435
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2487
  %71 = load i8*, i8** %70, align 8, !dbg !2487, !tbaa !435
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2487
  br label %147, !dbg !2488

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.96, i64 0, i64 0), i32 noundef 5) #32, !dbg !2489
  %75 = load i8*, i8** %4, align 8, !dbg !2489, !tbaa !435
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2489
  %77 = load i8*, i8** %76, align 8, !dbg !2489, !tbaa !435
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2489
  %79 = load i8*, i8** %78, align 8, !dbg !2489, !tbaa !435
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2489
  %81 = load i8*, i8** %80, align 8, !dbg !2489, !tbaa !435
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2489
  %83 = load i8*, i8** %82, align 8, !dbg !2489, !tbaa !435
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2489
  %85 = load i8*, i8** %84, align 8, !dbg !2489, !tbaa !435
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2489
  %87 = load i8*, i8** %86, align 8, !dbg !2489, !tbaa !435
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2489
  br label %147, !dbg !2490

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.97, i64 0, i64 0), i32 noundef 5) #32, !dbg !2491
  %91 = load i8*, i8** %4, align 8, !dbg !2491, !tbaa !435
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2491
  %93 = load i8*, i8** %92, align 8, !dbg !2491, !tbaa !435
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2491
  %95 = load i8*, i8** %94, align 8, !dbg !2491, !tbaa !435
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2491
  %97 = load i8*, i8** %96, align 8, !dbg !2491, !tbaa !435
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2491
  %99 = load i8*, i8** %98, align 8, !dbg !2491, !tbaa !435
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2491
  %101 = load i8*, i8** %100, align 8, !dbg !2491, !tbaa !435
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2491
  %103 = load i8*, i8** %102, align 8, !dbg !2491, !tbaa !435
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2491
  %105 = load i8*, i8** %104, align 8, !dbg !2491, !tbaa !435
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2491
  br label %147, !dbg !2492

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.98, i64 0, i64 0), i32 noundef 5) #32, !dbg !2493
  %109 = load i8*, i8** %4, align 8, !dbg !2493, !tbaa !435
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2493
  %111 = load i8*, i8** %110, align 8, !dbg !2493, !tbaa !435
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2493
  %113 = load i8*, i8** %112, align 8, !dbg !2493, !tbaa !435
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2493
  %115 = load i8*, i8** %114, align 8, !dbg !2493, !tbaa !435
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2493
  %117 = load i8*, i8** %116, align 8, !dbg !2493, !tbaa !435
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2493
  %119 = load i8*, i8** %118, align 8, !dbg !2493, !tbaa !435
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2493
  %121 = load i8*, i8** %120, align 8, !dbg !2493, !tbaa !435
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2493
  %123 = load i8*, i8** %122, align 8, !dbg !2493, !tbaa !435
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2493
  %125 = load i8*, i8** %124, align 8, !dbg !2493, !tbaa !435
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2493
  br label %147, !dbg !2494

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.99, i64 0, i64 0), i32 noundef 5) #32, !dbg !2495
  %129 = load i8*, i8** %4, align 8, !dbg !2495, !tbaa !435
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2495
  %131 = load i8*, i8** %130, align 8, !dbg !2495, !tbaa !435
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2495
  %133 = load i8*, i8** %132, align 8, !dbg !2495, !tbaa !435
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2495
  %135 = load i8*, i8** %134, align 8, !dbg !2495, !tbaa !435
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2495
  %137 = load i8*, i8** %136, align 8, !dbg !2495, !tbaa !435
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2495
  %139 = load i8*, i8** %138, align 8, !dbg !2495, !tbaa !435
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2495
  %141 = load i8*, i8** %140, align 8, !dbg !2495, !tbaa !435
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2495
  %143 = load i8*, i8** %142, align 8, !dbg !2495, !tbaa !435
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2495
  %145 = load i8*, i8** %144, align 8, !dbg !2495, !tbaa !435
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2495
  br label %147, !dbg !2496

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2497
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2498 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2502, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %1, metadata !2503, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %2, metadata !2504, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %3, metadata !2505, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8** %4, metadata !2506, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i64 0, metadata !2507, metadata !DIExpression()), !dbg !2508
  br label %6, !dbg !2509

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2511
  call void @llvm.dbg.value(metadata i64 %7, metadata !2507, metadata !DIExpression()), !dbg !2508
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2512
  %9 = load i8*, i8** %8, align 8, !dbg !2512, !tbaa !435
  %10 = icmp eq i8* %9, null, !dbg !2514
  %11 = add i64 %7, 1, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %11, metadata !2507, metadata !DIExpression()), !dbg !2508
  br i1 %10, label %12, label %6, !dbg !2514, !llvm.loop !2516

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2518
  ret void, !dbg !2519
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2520 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2535, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8* %1, metadata !2536, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8* %2, metadata !2537, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8* %3, metadata !2538, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2539, metadata !DIExpression()), !dbg !2544
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2545
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2545
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2541, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 0, metadata !2540, metadata !DIExpression()), !dbg !2543
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2540, metadata !DIExpression()), !dbg !2543
  %11 = load i32, i32* %8, align 8, !dbg !2547
  %12 = icmp sgt i32 %11, -1, !dbg !2547
  br i1 %12, label %20, label %13, !dbg !2547

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2547
  store i32 %14, i32* %8, align 8, !dbg !2547
  %15 = icmp ult i32 %11, -7, !dbg !2547
  br i1 %15, label %16, label %20, !dbg !2547

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2547
  %18 = sext i32 %11 to i64, !dbg !2547
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2547
  br label %24, !dbg !2547

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2547
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2547
  store i8* %23, i8** %10, align 8, !dbg !2547
  br label %24, !dbg !2547

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2547
  %28 = load i8*, i8** %27, align 8, !dbg !2547
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2550
  store i8* %28, i8** %29, align 8, !dbg !2551, !tbaa !435
  %30 = icmp eq i8* %28, null, !dbg !2552
  br i1 %30, label %210, label %31, !dbg !2553

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 1, metadata !2540, metadata !DIExpression()), !dbg !2543
  %32 = icmp sgt i32 %25, -1, !dbg !2547
  br i1 %32, label %40, label %33, !dbg !2547

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2547
  store i32 %34, i32* %8, align 8, !dbg !2547
  %35 = icmp ult i32 %25, -7, !dbg !2547
  br i1 %35, label %36, label %40, !dbg !2547

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2547
  %38 = sext i32 %25 to i64, !dbg !2547
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2547
  br label %44, !dbg !2547

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2547
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2547
  store i8* %43, i8** %10, align 8, !dbg !2547
  br label %44, !dbg !2547

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2547
  %48 = load i8*, i8** %47, align 8, !dbg !2547
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2550
  store i8* %48, i8** %49, align 8, !dbg !2551, !tbaa !435
  %50 = icmp eq i8* %48, null, !dbg !2552
  br i1 %50, label %210, label %51, !dbg !2553

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 2, metadata !2540, metadata !DIExpression()), !dbg !2543
  %52 = icmp sgt i32 %45, -1, !dbg !2547
  br i1 %52, label %60, label %53, !dbg !2547

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2547
  store i32 %54, i32* %8, align 8, !dbg !2547
  %55 = icmp ult i32 %45, -7, !dbg !2547
  br i1 %55, label %56, label %60, !dbg !2547

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2547
  %58 = sext i32 %45 to i64, !dbg !2547
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2547
  br label %64, !dbg !2547

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2547
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2547
  store i8* %63, i8** %10, align 8, !dbg !2547
  br label %64, !dbg !2547

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2547
  %68 = load i8*, i8** %67, align 8, !dbg !2547
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2550
  store i8* %68, i8** %69, align 8, !dbg !2551, !tbaa !435
  %70 = icmp eq i8* %68, null, !dbg !2552
  br i1 %70, label %210, label %71, !dbg !2553

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 3, metadata !2540, metadata !DIExpression()), !dbg !2543
  %72 = icmp sgt i32 %65, -1, !dbg !2547
  br i1 %72, label %80, label %73, !dbg !2547

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2547
  store i32 %74, i32* %8, align 8, !dbg !2547
  %75 = icmp ult i32 %65, -7, !dbg !2547
  br i1 %75, label %76, label %80, !dbg !2547

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2547
  %78 = sext i32 %65 to i64, !dbg !2547
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2547
  br label %84, !dbg !2547

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2547
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2547
  store i8* %83, i8** %10, align 8, !dbg !2547
  br label %84, !dbg !2547

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2547
  %88 = load i8*, i8** %87, align 8, !dbg !2547
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2550
  store i8* %88, i8** %89, align 8, !dbg !2551, !tbaa !435
  %90 = icmp eq i8* %88, null, !dbg !2552
  br i1 %90, label %210, label %91, !dbg !2553

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 4, metadata !2540, metadata !DIExpression()), !dbg !2543
  %92 = icmp sgt i32 %85, -1, !dbg !2547
  br i1 %92, label %100, label %93, !dbg !2547

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2547
  store i32 %94, i32* %8, align 8, !dbg !2547
  %95 = icmp ult i32 %85, -7, !dbg !2547
  br i1 %95, label %96, label %100, !dbg !2547

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2547
  %98 = sext i32 %85 to i64, !dbg !2547
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2547
  br label %104, !dbg !2547

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2547
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2547
  store i8* %103, i8** %10, align 8, !dbg !2547
  br label %104, !dbg !2547

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2547
  %108 = load i8*, i8** %107, align 8, !dbg !2547
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2550
  store i8* %108, i8** %109, align 8, !dbg !2551, !tbaa !435
  %110 = icmp eq i8* %108, null, !dbg !2552
  br i1 %110, label %210, label %111, !dbg !2553

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 5, metadata !2540, metadata !DIExpression()), !dbg !2543
  %112 = icmp sgt i32 %105, -1, !dbg !2547
  br i1 %112, label %120, label %113, !dbg !2547

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2547
  store i32 %114, i32* %8, align 8, !dbg !2547
  %115 = icmp ult i32 %105, -7, !dbg !2547
  br i1 %115, label %116, label %120, !dbg !2547

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2547
  %118 = sext i32 %105 to i64, !dbg !2547
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2547
  br label %124, !dbg !2547

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2547
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2547
  store i8* %123, i8** %10, align 8, !dbg !2547
  br label %124, !dbg !2547

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2547
  %128 = load i8*, i8** %127, align 8, !dbg !2547
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2550
  store i8* %128, i8** %129, align 8, !dbg !2551, !tbaa !435
  %130 = icmp eq i8* %128, null, !dbg !2552
  br i1 %130, label %210, label %131, !dbg !2553

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 6, metadata !2540, metadata !DIExpression()), !dbg !2543
  %132 = icmp sgt i32 %125, -1, !dbg !2547
  br i1 %132, label %140, label %133, !dbg !2547

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2547
  store i32 %134, i32* %8, align 8, !dbg !2547
  %135 = icmp ult i32 %125, -7, !dbg !2547
  br i1 %135, label %136, label %140, !dbg !2547

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2547
  %138 = sext i32 %125 to i64, !dbg !2547
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2547
  br label %144, !dbg !2547

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2547
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2547
  store i8* %143, i8** %10, align 8, !dbg !2547
  br label %144, !dbg !2547

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2547
  %148 = load i8*, i8** %147, align 8, !dbg !2547
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2550
  store i8* %148, i8** %149, align 8, !dbg !2551, !tbaa !435
  %150 = icmp eq i8* %148, null, !dbg !2552
  br i1 %150, label %210, label %151, !dbg !2553

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 7, metadata !2540, metadata !DIExpression()), !dbg !2543
  %152 = icmp sgt i32 %145, -1, !dbg !2547
  br i1 %152, label %160, label %153, !dbg !2547

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2547
  store i32 %154, i32* %8, align 8, !dbg !2547
  %155 = icmp ult i32 %145, -7, !dbg !2547
  br i1 %155, label %156, label %160, !dbg !2547

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2547
  %158 = sext i32 %145 to i64, !dbg !2547
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2547
  br label %164, !dbg !2547

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2547
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2547
  store i8* %163, i8** %10, align 8, !dbg !2547
  br label %164, !dbg !2547

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2547
  %168 = load i8*, i8** %167, align 8, !dbg !2547
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2550
  store i8* %168, i8** %169, align 8, !dbg !2551, !tbaa !435
  %170 = icmp eq i8* %168, null, !dbg !2552
  br i1 %170, label %210, label %171, !dbg !2553

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 8, metadata !2540, metadata !DIExpression()), !dbg !2543
  %172 = icmp sgt i32 %165, -1, !dbg !2547
  br i1 %172, label %180, label %173, !dbg !2547

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2547
  store i32 %174, i32* %8, align 8, !dbg !2547
  %175 = icmp ult i32 %165, -7, !dbg !2547
  br i1 %175, label %176, label %180, !dbg !2547

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2547
  %178 = sext i32 %165 to i64, !dbg !2547
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2547
  br label %184, !dbg !2547

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2547
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2547
  store i8* %183, i8** %10, align 8, !dbg !2547
  br label %184, !dbg !2547

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2547
  %188 = load i8*, i8** %187, align 8, !dbg !2547
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2550
  store i8* %188, i8** %189, align 8, !dbg !2551, !tbaa !435
  %190 = icmp eq i8* %188, null, !dbg !2552
  br i1 %190, label %210, label %191, !dbg !2553

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 9, metadata !2540, metadata !DIExpression()), !dbg !2543
  %192 = icmp sgt i32 %185, -1, !dbg !2547
  br i1 %192, label %200, label %193, !dbg !2547

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2547
  store i32 %194, i32* %8, align 8, !dbg !2547
  %195 = icmp ult i32 %185, -7, !dbg !2547
  br i1 %195, label %196, label %200, !dbg !2547

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2547
  %198 = sext i32 %185 to i64, !dbg !2547
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2547
  br label %203, !dbg !2547

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2547
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2547
  store i8* %202, i8** %10, align 8, !dbg !2547
  br label %203, !dbg !2547

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2547
  %206 = load i8*, i8** %205, align 8, !dbg !2547
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2550
  store i8* %206, i8** %207, align 8, !dbg !2551, !tbaa !435
  %208 = icmp eq i8* %206, null, !dbg !2552
  %209 = select i1 %208, i64 9, i64 10, !dbg !2553
  br label %210, !dbg !2553

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2554
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2556
  ret void, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2557 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2561, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %1, metadata !2562, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %2, metadata !2563, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %3, metadata !2564, metadata !DIExpression()), !dbg !2566
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2567
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2567
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2565, metadata !DIExpression()), !dbg !2568
  call void @llvm.va_start(i8* nonnull %7), !dbg !2569
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2570
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2570, !tbaa.struct !757
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2570
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2570
  call void @llvm.va_end(i8* nonnull %7), !dbg !2571
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2572
  ret void, !dbg !2572
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2573 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2574, !tbaa !435
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.87, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2574
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.104, i64 0, i64 0), i32 noundef 5) #32, !dbg !2575
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.105, i64 0, i64 0)) #32, !dbg !2575
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.106, i64 0, i64 0), i32 noundef 5) #32, !dbg !2576
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #32, !dbg !2576
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.107, i64 0, i64 0), i32 noundef 5) #32, !dbg !2577
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !2577
  ret void, !dbg !2578
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2579 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2584, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %1, metadata !2585, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %2, metadata !2586, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %0, metadata !2588, metadata !DIExpression()) #32, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %1, metadata !2591, metadata !DIExpression()) #32, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %2, metadata !2592, metadata !DIExpression()) #32, !dbg !2593
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2595
  call void @llvm.dbg.value(metadata i8* %4, metadata !2596, metadata !DIExpression()) #32, !dbg !2601
  %5 = icmp eq i8* %4, null, !dbg !2603
  br i1 %5, label %6, label %7, !dbg !2605

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2606
  unreachable, !dbg !2606

7:                                                ; preds = %3
  ret i8* %4, !dbg !2607
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2589 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2588, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i64 %1, metadata !2591, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i64 %2, metadata !2592, metadata !DIExpression()), !dbg !2608
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %4, metadata !2596, metadata !DIExpression()) #32, !dbg !2610
  %5 = icmp eq i8* %4, null, !dbg !2612
  br i1 %5, label %6, label %7, !dbg !2613

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2614
  unreachable, !dbg !2614

7:                                                ; preds = %3
  ret i8* %4, !dbg !2615
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2616 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2620, metadata !DIExpression()), !dbg !2621
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2622
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()) #32, !dbg !2623
  %3 = icmp eq i8* %2, null, !dbg !2625
  br i1 %3, label %4, label %5, !dbg !2626

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2627
  unreachable, !dbg !2627

5:                                                ; preds = %1
  ret i8* %2, !dbg !2628
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2629 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2633, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i64 %0, metadata !2635, metadata !DIExpression()) #32, !dbg !2639
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2641
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()) #32, !dbg !2642
  %3 = icmp eq i8* %2, null, !dbg !2644
  br i1 %3, label %4, label %5, !dbg !2645

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2646
  unreachable, !dbg !2646

5:                                                ; preds = %1
  ret i8* %2, !dbg !2647
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2648 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2652, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %0, metadata !2620, metadata !DIExpression()) #32, !dbg !2654
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()) #32, !dbg !2657
  %3 = icmp eq i8* %2, null, !dbg !2659
  br i1 %3, label %4, label %5, !dbg !2660

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2661
  unreachable, !dbg !2661

5:                                                ; preds = %1
  ret i8* %2, !dbg !2662
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2663 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2667, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 %1, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8* %0, metadata !2670, metadata !DIExpression()) #32, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %1, metadata !2674, metadata !DIExpression()) #32, !dbg !2675
  %3 = icmp eq i64 %1, 0, !dbg !2677
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2677
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2678
  call void @llvm.dbg.value(metadata i8* %5, metadata !2596, metadata !DIExpression()) #32, !dbg !2679
  %6 = icmp eq i8* %5, null, !dbg !2681
  br i1 %6, label %7, label %8, !dbg !2682

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2683
  unreachable, !dbg !2683

8:                                                ; preds = %2
  ret i8* %5, !dbg !2684
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2685 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %1, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %0, metadata !2692, metadata !DIExpression()) #32, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %1, metadata !2695, metadata !DIExpression()) #32, !dbg !2696
  call void @llvm.dbg.value(metadata i8* %0, metadata !2670, metadata !DIExpression()) #32, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %1, metadata !2674, metadata !DIExpression()) #32, !dbg !2698
  %3 = icmp eq i64 %1, 0, !dbg !2700
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2700
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2701
  call void @llvm.dbg.value(metadata i8* %5, metadata !2596, metadata !DIExpression()) #32, !dbg !2702
  %6 = icmp eq i8* %5, null, !dbg !2704
  br i1 %6, label %7, label %8, !dbg !2705

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2706
  unreachable, !dbg !2706

8:                                                ; preds = %2
  ret i8* %5, !dbg !2707
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2708 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2712, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %1, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %2, metadata !2714, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8* %0, metadata !2716, metadata !DIExpression()) #32, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %1, metadata !2719, metadata !DIExpression()) #32, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %2, metadata !2720, metadata !DIExpression()) #32, !dbg !2721
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2723
  call void @llvm.dbg.value(metadata i8* %4, metadata !2596, metadata !DIExpression()) #32, !dbg !2724
  %5 = icmp eq i8* %4, null, !dbg !2726
  br i1 %5, label %6, label %7, !dbg !2727

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2728
  unreachable, !dbg !2728

7:                                                ; preds = %3
  ret i8* %4, !dbg !2729
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2730 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8* null, metadata !2588, metadata !DIExpression()) #32, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %0, metadata !2591, metadata !DIExpression()) #32, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %1, metadata !2592, metadata !DIExpression()) #32, !dbg !2737
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2739
  call void @llvm.dbg.value(metadata i8* %3, metadata !2596, metadata !DIExpression()) #32, !dbg !2740
  %4 = icmp eq i8* %3, null, !dbg !2742
  br i1 %4, label %5, label %6, !dbg !2743

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2744
  unreachable, !dbg !2744

6:                                                ; preds = %2
  ret i8* %3, !dbg !2745
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2746 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2750, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i64 %1, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* null, metadata !2712, metadata !DIExpression()) #32, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %0, metadata !2713, metadata !DIExpression()) #32, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %1, metadata !2714, metadata !DIExpression()) #32, !dbg !2753
  call void @llvm.dbg.value(metadata i8* null, metadata !2716, metadata !DIExpression()) #32, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %0, metadata !2719, metadata !DIExpression()) #32, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %1, metadata !2720, metadata !DIExpression()) #32, !dbg !2755
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2757
  call void @llvm.dbg.value(metadata i8* %3, metadata !2596, metadata !DIExpression()) #32, !dbg !2758
  %4 = icmp eq i8* %3, null, !dbg !2760
  br i1 %4, label %5, label %6, !dbg !2761

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2762
  unreachable, !dbg !2762

6:                                                ; preds = %2
  ret i8* %3, !dbg !2763
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2768, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i64* %1, metadata !2769, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()) #32, !dbg !2771
  call void @llvm.dbg.value(metadata i64* %1, metadata !369, metadata !DIExpression()) #32, !dbg !2771
  call void @llvm.dbg.value(metadata i64 1, metadata !370, metadata !DIExpression()) #32, !dbg !2771
  %3 = load i64, i64* %1, align 8, !dbg !2773, !tbaa !1869
  call void @llvm.dbg.value(metadata i64 %3, metadata !371, metadata !DIExpression()) #32, !dbg !2771
  %4 = icmp eq i8* %0, null, !dbg !2774
  br i1 %4, label %5, label %8, !dbg !2776

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2777
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2780
  br label %15, !dbg !2780

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2781
  %10 = add nuw i64 %9, 1, !dbg !2781
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !2781
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2781
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %13, metadata !371, metadata !DIExpression()) #32, !dbg !2771
  br i1 %12, label %14, label %15, !dbg !2784

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !2785
  unreachable, !dbg !2785

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2771
  call void @llvm.dbg.value(metadata i64 %16, metadata !371, metadata !DIExpression()) #32, !dbg !2771
  call void @llvm.dbg.value(metadata i8* %0, metadata !2588, metadata !DIExpression()) #32, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %16, metadata !2591, metadata !DIExpression()) #32, !dbg !2786
  call void @llvm.dbg.value(metadata i64 1, metadata !2592, metadata !DIExpression()) #32, !dbg !2786
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %17, metadata !2596, metadata !DIExpression()) #32, !dbg !2789
  %18 = icmp eq i8* %17, null, !dbg !2791
  br i1 %18, label %19, label %20, !dbg !2792

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !2793
  unreachable, !dbg !2793

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !368, metadata !DIExpression()) #32, !dbg !2771
  store i64 %16, i64* %1, align 8, !dbg !2794, !tbaa !1869
  ret i8* %17, !dbg !2795
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !363 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64* %1, metadata !369, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %2, metadata !370, metadata !DIExpression()), !dbg !2796
  %4 = load i64, i64* %1, align 8, !dbg !2797, !tbaa !1869
  call void @llvm.dbg.value(metadata i64 %4, metadata !371, metadata !DIExpression()), !dbg !2796
  %5 = icmp eq i8* %0, null, !dbg !2798
  br i1 %5, label %6, label %13, !dbg !2799

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2800
  br i1 %7, label %8, label %20, !dbg !2801

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2802
  call void @llvm.dbg.value(metadata i64 %9, metadata !371, metadata !DIExpression()), !dbg !2796
  %10 = icmp ugt i64 %2, 128, !dbg !2804
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %12, metadata !371, metadata !DIExpression()), !dbg !2796
  br label %20, !dbg !2806

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2807
  %15 = add nuw i64 %14, 1, !dbg !2807
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2807
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2807
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %18, metadata !371, metadata !DIExpression()), !dbg !2796
  br i1 %17, label %19, label %20, !dbg !2808

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !2809
  unreachable, !dbg !2809

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2796
  call void @llvm.dbg.value(metadata i64 %21, metadata !371, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8* %0, metadata !2588, metadata !DIExpression()) #32, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %21, metadata !2591, metadata !DIExpression()) #32, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %2, metadata !2592, metadata !DIExpression()) #32, !dbg !2810
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !2812
  call void @llvm.dbg.value(metadata i8* %22, metadata !2596, metadata !DIExpression()) #32, !dbg !2813
  %23 = icmp eq i8* %22, null, !dbg !2815
  br i1 %23, label %24, label %25, !dbg !2816

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !2817
  unreachable, !dbg !2817

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !368, metadata !DIExpression()), !dbg !2796
  store i64 %21, i64* %1, align 8, !dbg !2818, !tbaa !1869
  ret i8* %22, !dbg !2819
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !383, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64* %1, metadata !384, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64 %2, metadata !385, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64 %3, metadata !386, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64 %4, metadata !387, metadata !DIExpression()), !dbg !2820
  %6 = load i64, i64* %1, align 8, !dbg !2821, !tbaa !1869
  call void @llvm.dbg.value(metadata i64 %6, metadata !388, metadata !DIExpression()), !dbg !2820
  %7 = ashr i64 %6, 1, !dbg !2822
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2822
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2822
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2822
  call void @llvm.dbg.value(metadata i64 %10, metadata !389, metadata !DIExpression()), !dbg !2820
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %11, metadata !389, metadata !DIExpression()), !dbg !2820
  %12 = icmp sgt i64 %3, -1, !dbg !2825
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2827
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %15, metadata !389, metadata !DIExpression()), !dbg !2820
  %16 = icmp slt i64 %4, 0, !dbg !2828
  br i1 %16, label %17, label %30, !dbg !2828

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2828
  br i1 %18, label %19, label %24, !dbg !2828

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2828
  %21 = udiv i64 9223372036854775807, %20, !dbg !2828
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2828
  br i1 %23, label %46, label %43, !dbg !2828

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2828
  br i1 %25, label %43, label %26, !dbg !2828

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2828
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2828
  %29 = icmp ult i64 %28, %15, !dbg !2828
  br i1 %29, label %46, label %43, !dbg !2828

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2828
  br i1 %31, label %43, label %32, !dbg !2828

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2828
  br i1 %33, label %34, label %40, !dbg !2828

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2828
  br i1 %35, label %43, label %36, !dbg !2828

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2828
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2828
  %39 = icmp ult i64 %38, %4, !dbg !2828
  br i1 %39, label %46, label %43, !dbg !2828

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2828
  %42 = icmp ult i64 %41, %15, !dbg !2828
  br i1 %42, label %46, label %43, !dbg !2828

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2820
  %44 = mul i64 %15, %4, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %44, metadata !390, metadata !DIExpression()), !dbg !2820
  %45 = icmp slt i64 %44, 128, !dbg !2828
  br i1 %45, label %46, label %52, !dbg !2828

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !391, metadata !DIExpression()), !dbg !2820
  %48 = sdiv i64 %47, %4, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %48, metadata !389, metadata !DIExpression()), !dbg !2820
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %51, metadata !390, metadata !DIExpression()), !dbg !2820
  br label %52, !dbg !2833

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2820
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2820
  call void @llvm.dbg.value(metadata i64 %54, metadata !390, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64 %53, metadata !389, metadata !DIExpression()), !dbg !2820
  %55 = icmp eq i8* %0, null, !dbg !2834
  br i1 %55, label %56, label %57, !dbg !2836

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2837, !tbaa !1869
  br label %57, !dbg !2838

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2839
  %59 = icmp slt i64 %58, %2, !dbg !2841
  br i1 %59, label %60, label %97, !dbg !2842

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2843
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2843
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %63, metadata !389, metadata !DIExpression()), !dbg !2820
  br i1 %62, label %96, label %64, !dbg !2844

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2845
  br i1 %66, label %96, label %67, !dbg !2845

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2846

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2846
  br i1 %69, label %70, label %75, !dbg !2846

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2846
  %72 = udiv i64 9223372036854775807, %71, !dbg !2846
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2846
  br i1 %74, label %96, label %94, !dbg !2846

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2846
  br i1 %76, label %94, label %77, !dbg !2846

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2846
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2846
  %80 = icmp ult i64 %79, %63, !dbg !2846
  br i1 %80, label %96, label %94, !dbg !2846

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2846
  br i1 %82, label %94, label %83, !dbg !2846

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2846
  br i1 %84, label %85, label %91, !dbg !2846

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2846
  br i1 %86, label %94, label %87, !dbg !2846

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2846
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2846
  %90 = icmp ult i64 %89, %4, !dbg !2846
  br i1 %90, label %96, label %94, !dbg !2846

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2846
  %93 = icmp ult i64 %92, %63, !dbg !2846
  br i1 %93, label %96, label %94, !dbg !2846

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !390, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2820
  %95 = mul i64 %63, %4, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %95, metadata !390, metadata !DIExpression()), !dbg !2820
  br label %97, !dbg !2847

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !2848
  unreachable, !dbg !2848

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2820
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2820
  call void @llvm.dbg.value(metadata i64 %99, metadata !390, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64 %98, metadata !389, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8* %0, metadata !2667, metadata !DIExpression()) #32, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %99, metadata !2668, metadata !DIExpression()) #32, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %0, metadata !2670, metadata !DIExpression()) #32, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %99, metadata !2674, metadata !DIExpression()) #32, !dbg !2851
  %100 = icmp eq i64 %99, 0, !dbg !2853
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2853
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %102, metadata !2596, metadata !DIExpression()) #32, !dbg !2855
  %103 = icmp eq i8* %102, null, !dbg !2857
  br i1 %103, label %104, label %105, !dbg !2858

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !2859
  unreachable, !dbg !2859

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !383, metadata !DIExpression()), !dbg !2820
  store i64 %98, i64* %1, align 8, !dbg !2860, !tbaa !1869
  ret i8* %102, !dbg !2861
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2862 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2864, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %0, metadata !2866, metadata !DIExpression()) #32, !dbg !2870
  call void @llvm.dbg.value(metadata i64 1, metadata !2869, metadata !DIExpression()) #32, !dbg !2870
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2872
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()) #32, !dbg !2873
  %3 = icmp eq i8* %2, null, !dbg !2875
  br i1 %3, label %4, label %5, !dbg !2876

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2877
  unreachable, !dbg !2877

5:                                                ; preds = %1
  ret i8* %2, !dbg !2878
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2867 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2866, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %1, metadata !2869, metadata !DIExpression()), !dbg !2879
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %3, metadata !2596, metadata !DIExpression()) #32, !dbg !2881
  %4 = icmp eq i8* %3, null, !dbg !2883
  br i1 %4, label %5, label %6, !dbg !2884

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2885
  unreachable, !dbg !2885

6:                                                ; preds = %2
  ret i8* %3, !dbg !2886
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2887 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2889, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %0, metadata !2891, metadata !DIExpression()) #32, !dbg !2895
  call void @llvm.dbg.value(metadata i64 1, metadata !2894, metadata !DIExpression()) #32, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()) #32, !dbg !2901
  call void @llvm.dbg.value(metadata i64 1, metadata !2900, metadata !DIExpression()) #32, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()) #32, !dbg !2901
  call void @llvm.dbg.value(metadata i64 1, metadata !2900, metadata !DIExpression()) #32, !dbg !2901
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2903
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()) #32, !dbg !2904
  %3 = icmp eq i8* %2, null, !dbg !2906
  br i1 %3, label %4, label %5, !dbg !2907

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2908
  unreachable, !dbg !2908

5:                                                ; preds = %1
  ret i8* %2, !dbg !2909
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2892 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2891, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %1, metadata !2894, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()) #32, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %1, metadata !2900, metadata !DIExpression()) #32, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %0, metadata !2897, metadata !DIExpression()) #32, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %1, metadata !2900, metadata !DIExpression()) #32, !dbg !2911
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %3, metadata !2596, metadata !DIExpression()) #32, !dbg !2914
  %4 = icmp eq i8* %3, null, !dbg !2916
  br i1 %4, label %5, label %6, !dbg !2917

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2918
  unreachable, !dbg !2918

6:                                                ; preds = %2
  ret i8* %3, !dbg !2919
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2920 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %1, metadata !2925, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %1, metadata !2620, metadata !DIExpression()) #32, !dbg !2927
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2929
  call void @llvm.dbg.value(metadata i8* %3, metadata !2596, metadata !DIExpression()) #32, !dbg !2930
  %4 = icmp eq i8* %3, null, !dbg !2932
  br i1 %4, label %5, label %6, !dbg !2933

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2934
  unreachable, !dbg !2934

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2935, metadata !DIExpression()) #32, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()) #32, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()) #32, !dbg !2943
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2945
  ret i8* %3, !dbg !2946
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2947 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2951, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %1, metadata !2952, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %1, metadata !2633, metadata !DIExpression()) #32, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %1, metadata !2635, metadata !DIExpression()) #32, !dbg !2956
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2958
  call void @llvm.dbg.value(metadata i8* %3, metadata !2596, metadata !DIExpression()) #32, !dbg !2959
  %4 = icmp eq i8* %3, null, !dbg !2961
  br i1 %4, label %5, label %6, !dbg !2962

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2963
  unreachable, !dbg !2963

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2935, metadata !DIExpression()) #32, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()) #32, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()) #32, !dbg !2964
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2966
  ret i8* %3, !dbg !2967
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2968 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2972, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %1, metadata !2973, metadata !DIExpression()), !dbg !2975
  %3 = add nsw i64 %1, 1, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %3, metadata !2633, metadata !DIExpression()) #32, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %3, metadata !2635, metadata !DIExpression()) #32, !dbg !2979
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2981
  call void @llvm.dbg.value(metadata i8* %4, metadata !2596, metadata !DIExpression()) #32, !dbg !2982
  %5 = icmp eq i8* %4, null, !dbg !2984
  br i1 %5, label %6, label %7, !dbg !2985

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !2986
  unreachable, !dbg !2986

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !2974, metadata !DIExpression()), !dbg !2975
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2987
  store i8 0, i8* %8, align 1, !dbg !2988, !tbaa !530
  call void @llvm.dbg.value(metadata i8* %4, metadata !2935, metadata !DIExpression()) #32, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()) #32, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()) #32, !dbg !2989
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2991
  ret i8* %4, !dbg !2992
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !2993 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2995, metadata !DIExpression()), !dbg !2996
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !2997
  %3 = add i64 %2, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()) #32, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %3, metadata !2925, metadata !DIExpression()) #32, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %3, metadata !2620, metadata !DIExpression()) #32, !dbg !3001
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3003
  call void @llvm.dbg.value(metadata i8* %4, metadata !2596, metadata !DIExpression()) #32, !dbg !3004
  %5 = icmp eq i8* %4, null, !dbg !3006
  br i1 %5, label %6, label %7, !dbg !3007

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3008
  unreachable, !dbg !3008

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2935, metadata !DIExpression()) #32, !dbg !3009
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()) #32, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %3, metadata !2942, metadata !DIExpression()) #32, !dbg !3009
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3011
  ret i8* %4, !dbg !3012
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3013 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3018, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %1, metadata !3015, metadata !DIExpression()), !dbg !3019
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.119, i64 0, i64 0), i32 noundef 5) #32, !dbg !3018
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* noundef %2) #32, !dbg !3018
  %3 = icmp eq i32 %1, 0, !dbg !3018
  tail call void @llvm.assume(i1 %3), !dbg !3018
  tail call void @abort() #34, !dbg !3020
  unreachable, !dbg !3020
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3021 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3059, metadata !DIExpression()), !dbg !3064
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3065
  call void @llvm.dbg.value(metadata i1 undef, metadata !3060, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3064
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3066, metadata !DIExpression()), !dbg !3069
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3071
  %4 = load i32, i32* %3, align 8, !dbg !3071, !tbaa !3072
  %5 = and i32 %4, 32, !dbg !3073
  %6 = icmp eq i32 %5, 0, !dbg !3073
  call void @llvm.dbg.value(metadata i1 %6, metadata !3062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3064
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3074
  %8 = icmp eq i32 %7, 0, !dbg !3075
  call void @llvm.dbg.value(metadata i1 %8, metadata !3063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3064
  br i1 %6, label %9, label %19, !dbg !3076

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3078
  call void @llvm.dbg.value(metadata i1 %10, metadata !3060, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3064
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3079
  %12 = xor i1 %8, true, !dbg !3079
  %13 = sext i1 %12 to i32, !dbg !3079
  br i1 %11, label %22, label %14, !dbg !3079

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3080
  %16 = load i32, i32* %15, align 4, !dbg !3080, !tbaa !521
  %17 = icmp ne i32 %16, 9, !dbg !3081
  %18 = sext i1 %17 to i32, !dbg !3082
  br label %22, !dbg !3082

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3083

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3085
  store i32 0, i32* %21, align 4, !dbg !3087, !tbaa !521
  br label %22, !dbg !3085

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3064
  ret i32 %23, !dbg !3088
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3089 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3127, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 0, metadata !3128, metadata !DIExpression()), !dbg !3131
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3132
  call void @llvm.dbg.value(metadata i32 %2, metadata !3129, metadata !DIExpression()), !dbg !3131
  %3 = icmp slt i32 %2, 0, !dbg !3133
  br i1 %3, label %4, label %6, !dbg !3135

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3136
  br label %24, !dbg !3137

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3138
  %8 = icmp eq i32 %7, 0, !dbg !3138
  br i1 %8, label %13, label %9, !dbg !3140

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3141
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3142
  %12 = icmp eq i64 %11, -1, !dbg !3143
  br i1 %12, label %16, label %13, !dbg !3144

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3145
  %15 = icmp eq i32 %14, 0, !dbg !3145
  br i1 %15, label %16, label %18, !dbg !3146

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3128, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 0, metadata !3130, metadata !DIExpression()), !dbg !3131
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %21, metadata !3130, metadata !DIExpression()), !dbg !3131
  br label %24, !dbg !3148

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3149
  %20 = load i32, i32* %19, align 4, !dbg !3149, !tbaa !521
  call void @llvm.dbg.value(metadata i32 %20, metadata !3128, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 0, metadata !3130, metadata !DIExpression()), !dbg !3131
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %21, metadata !3130, metadata !DIExpression()), !dbg !3131
  %22 = icmp eq i32 %20, 0, !dbg !3150
  br i1 %22, label %24, label %23, !dbg !3148

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3152, !tbaa !521
  call void @llvm.dbg.value(metadata i32 -1, metadata !3130, metadata !DIExpression()), !dbg !3131
  br label %24, !dbg !3154

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3131
  ret i32 %25, !dbg !3155
}

; Function Attrs: nofree nounwind
declare !dbg !3156 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3157 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3158 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3161 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3199, metadata !DIExpression()), !dbg !3200
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3201
  br i1 %2, label %6, label %3, !dbg !3203

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3204
  %5 = icmp eq i32 %4, 0, !dbg !3204
  br i1 %5, label %6, label %8, !dbg !3205

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3206
  br label %17, !dbg !3207

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3208, metadata !DIExpression()) #32, !dbg !3213
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3215
  %10 = load i32, i32* %9, align 8, !dbg !3215, !tbaa !3072
  %11 = and i32 %10, 256, !dbg !3217
  %12 = icmp eq i32 %11, 0, !dbg !3217
  br i1 %12, label %15, label %13, !dbg !3218

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3219
  br label %15, !dbg !3219

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3220
  br label %17, !dbg !3221

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3200
  ret i32 %18, !dbg !3222
}

; Function Attrs: nofree nounwind
declare !dbg !3223 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3224 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3263, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %1, metadata !3264, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i32 %2, metadata !3265, metadata !DIExpression()), !dbg !3269
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3270
  %5 = load i8*, i8** %4, align 8, !dbg !3270, !tbaa !3271
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3272
  %7 = load i8*, i8** %6, align 8, !dbg !3272, !tbaa !3273
  %8 = icmp eq i8* %5, %7, !dbg !3274
  br i1 %8, label %9, label %28, !dbg !3275

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3276
  %11 = load i8*, i8** %10, align 8, !dbg !3276, !tbaa !872
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3277
  %13 = load i8*, i8** %12, align 8, !dbg !3277, !tbaa !3278
  %14 = icmp eq i8* %11, %13, !dbg !3279
  br i1 %14, label %15, label %28, !dbg !3280

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3281
  %17 = load i8*, i8** %16, align 8, !dbg !3281, !tbaa !3282
  %18 = icmp eq i8* %17, null, !dbg !3283
  br i1 %18, label %19, label %28, !dbg !3284

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3285
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %21, metadata !3266, metadata !DIExpression()), !dbg !3287
  %22 = icmp eq i64 %21, -1, !dbg !3288
  br i1 %22, label %30, label %23, !dbg !3290

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3291
  %25 = load i32, i32* %24, align 8, !dbg !3292, !tbaa !3072
  %26 = and i32 %25, -17, !dbg !3292
  store i32 %26, i32* %24, align 8, !dbg !3292, !tbaa !3072
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3293
  store i64 %21, i64* %27, align 8, !dbg !3294, !tbaa !3295
  br label %30, !dbg !3296

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3297
  br label %30, !dbg !3298

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3269
  ret i32 %31, !dbg !3299
}

; Function Attrs: nofree nounwind
declare !dbg !3300 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3303 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3308, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8* %1, metadata !3309, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %2, metadata !3310, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3311, metadata !DIExpression()), !dbg !3313
  %5 = icmp eq i8* %1, null, !dbg !3314
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3316
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), i8* %1, !dbg !3316
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %8, metadata !3310, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8* %7, metadata !3309, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32* %6, metadata !3308, metadata !DIExpression()), !dbg !3313
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3317
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3319
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3311, metadata !DIExpression()), !dbg !3313
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %11, metadata !3312, metadata !DIExpression()), !dbg !3313
  %12 = icmp ult i64 %11, -3, !dbg !3321
  br i1 %12, label %13, label %18, !dbg !3323

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3324
  %15 = icmp eq i32 %14, 0, !dbg !3324
  br i1 %15, label %16, label %30, !dbg !3325

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3326, metadata !DIExpression()) #32, !dbg !3331
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3333, metadata !DIExpression()) #32, !dbg !3338
  call void @llvm.dbg.value(metadata i32 0, metadata !3336, metadata !DIExpression()) #32, !dbg !3338
  call void @llvm.dbg.value(metadata i64 8, metadata !3337, metadata !DIExpression()) #32, !dbg !3338
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3340
  store i64 0, i64* %17, align 1, !dbg !3340
  br label %30, !dbg !3341

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3342
  br i1 %19, label %20, label %21, !dbg !3344

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3345
  unreachable, !dbg !3345

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3346

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3348
  br i1 %24, label %30, label %25, !dbg !3349

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3350
  br i1 %26, label %30, label %27, !dbg !3353

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3354, !tbaa !530
  %29 = zext i8 %28 to i32, !dbg !3355
  store i32 %29, i32* %6, align 4, !dbg !3356, !tbaa !521
  br label %30, !dbg !3357

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3313
  ret i64 %31, !dbg !3358
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3359 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3365 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3367, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i64 %2, metadata !3369, metadata !DIExpression()), !dbg !3371
  %4 = icmp eq i64 %2, 0, !dbg !3372
  br i1 %4, label %8, label %5, !dbg !3372

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3372
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3372
  br i1 %7, label %13, label %8, !dbg !3372

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3370, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3371
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3370, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3371
  %9 = mul i64 %2, %1, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %9, metadata !3370, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i8* %0, metadata !3374, metadata !DIExpression()) #32, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %9, metadata !3377, metadata !DIExpression()) #32, !dbg !3378
  %10 = icmp eq i64 %9, 0, !dbg !3380
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3380
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3381
  br label %15, !dbg !3382

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3370, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3371
  %14 = tail call i32* @__errno_location() #35, !dbg !3383
  store i32 12, i32* %14, align 4, !dbg !3385, !tbaa !521
  br label %15, !dbg !3386

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3371
  ret i8* %16, !dbg !3387
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3388 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3392, metadata !DIExpression()), !dbg !3397
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3398
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3398
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3393, metadata !DIExpression()), !dbg !3399
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3400
  %5 = icmp eq i32 %4, 0, !dbg !3400
  br i1 %5, label %6, label %13, !dbg !3402

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3403, metadata !DIExpression()) #32, !dbg !3407
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), metadata !3406, metadata !DIExpression()) #32, !dbg !3407
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), i64 2), !dbg !3410
  %8 = icmp eq i32 %7, 0, !dbg !3411
  br i1 %8, label %12, label %9, !dbg !3412

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3403, metadata !DIExpression()) #32, !dbg !3413
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0), metadata !3406, metadata !DIExpression()) #32, !dbg !3413
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0), i64 6), !dbg !3415
  %11 = icmp eq i32 %10, 0, !dbg !3416
  br i1 %11, label %12, label %13, !dbg !3417

12:                                               ; preds = %9, %6
  br label %13, !dbg !3418

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3397
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3419
  ret i1 %14, !dbg !3419
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3420 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3424, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8* %1, metadata !3425, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 %2, metadata !3426, metadata !DIExpression()), !dbg !3427
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3428
  ret i32 %4, !dbg !3429
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3430 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3434, metadata !DIExpression()), !dbg !3435
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3436
  ret i8* %2, !dbg !3437
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3442
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %2, metadata !3441, metadata !DIExpression()), !dbg !3442
  ret i8* %2, !dbg !3444
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3445 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i8* %1, metadata !3448, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %2, metadata !3449, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()) #32, !dbg !3455
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3457
  call void @llvm.dbg.value(metadata i8* %4, metadata !3441, metadata !DIExpression()) #32, !dbg !3455
  call void @llvm.dbg.value(metadata i8* %4, metadata !3450, metadata !DIExpression()), !dbg !3454
  %5 = icmp eq i8* %4, null, !dbg !3458
  br i1 %5, label %6, label %9, !dbg !3459

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3460
  br i1 %7, label %19, label %8, !dbg !3463

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3464, !tbaa !530
  br label %19, !dbg !3465

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %10, metadata !3451, metadata !DIExpression()), !dbg !3467
  %11 = icmp ult i64 %10, %2, !dbg !3468
  br i1 %11, label %12, label %14, !dbg !3470

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %1, metadata !3473, metadata !DIExpression()) #32, !dbg !3478
  call void @llvm.dbg.value(metadata i8* %4, metadata !3476, metadata !DIExpression()) #32, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %13, metadata !3477, metadata !DIExpression()) #32, !dbg !3478
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3480
  br label %19, !dbg !3481

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3482
  br i1 %15, label %19, label %16, !dbg !3485

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %1, metadata !3473, metadata !DIExpression()) #32, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %4, metadata !3476, metadata !DIExpression()) #32, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %17, metadata !3477, metadata !DIExpression()) #32, !dbg !3488
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3490
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3491
  store i8 0, i8* %18, align 1, !dbg !3492, !tbaa !530
  br label %19, !dbg !3493

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3494
  ret i32 %20, !dbg !3495
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
!10 = !DIFile(filename: "src/unlink.c", directory: "/src", checksumkind: CSK_MD5, checksum: "db068e42b0dc801df6f06dd298eed8bd")
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
!442 = !DILocation(line: 48, column: 7, scope: !440)
!443 = !DILocation(line: 49, column: 7, scope: !440)
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
!464 = distinct !DILocation(line: 50, column: 7, scope: !440)
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
!508 = !DILocation(line: 52, column: 3, scope: !424)
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
!641 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 56, type: !642, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !645)
!642 = !DISubroutineType(types: !643)
!643 = !{!44, !44, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!645 = !{!646, !647}
!646 = !DILocalVariable(name: "argc", arg: 1, scope: !641, file: !10, line: 56, type: !44)
!647 = !DILocalVariable(name: "argv", arg: 2, scope: !641, file: !10, line: 56, type: !644)
!648 = !DILocation(line: 0, scope: !641)
!649 = !DILocation(line: 59, column: 21, scope: !641)
!650 = !DILocation(line: 59, column: 3, scope: !641)
!651 = !DILocation(line: 60, column: 3, scope: !641)
!652 = !DILocation(line: 61, column: 3, scope: !641)
!653 = !DILocation(line: 62, column: 3, scope: !641)
!654 = !DILocation(line: 64, column: 3, scope: !641)
!655 = !DILocation(line: 67, column: 36, scope: !641)
!656 = !DILocation(line: 67, column: 58, scope: !641)
!657 = !DILocation(line: 66, column: 3, scope: !641)
!658 = !DILocation(line: 70, column: 14, scope: !659)
!659 = distinct !DILexicalBlock(scope: !641, file: !10, line: 70, column: 7)
!660 = !DILocation(line: 70, column: 12, scope: !659)
!661 = !DILocation(line: 70, column: 7, scope: !641)
!662 = !DILocation(line: 72, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !10, line: 71, column: 5)
!664 = !DILocation(line: 73, column: 7, scope: !663)
!665 = !DILocation(line: 70, column: 21, scope: !659)
!666 = !DILocation(line: 76, column: 18, scope: !667)
!667 = distinct !DILexicalBlock(scope: !641, file: !10, line: 76, column: 7)
!668 = !DILocation(line: 76, column: 7, scope: !641)
!669 = !DILocation(line: 78, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !10, line: 77, column: 5)
!671 = !DILocation(line: 79, column: 7, scope: !670)
!672 = !DILocation(line: 82, column: 15, scope: !673)
!673 = distinct !DILexicalBlock(scope: !641, file: !10, line: 82, column: 7)
!674 = !DILocation(line: 82, column: 7, scope: !673)
!675 = !DILocation(line: 82, column: 29, scope: !673)
!676 = !DILocation(line: 82, column: 7, scope: !641)
!677 = !DILocation(line: 83, column: 5, scope: !673)
!678 = !DILocation(line: 85, column: 3, scope: !641)
!679 = !DISubprogram(name: "bindtextdomain", scope: !510, file: !510, line: 86, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!680 = !DISubroutineType(types: !681)
!681 = !{!79, !6, !6}
!682 = !DISubprogram(name: "textdomain", scope: !510, file: !510, line: 82, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!683 = !DISubprogram(name: "atexit", scope: !632, file: !632, line: 602, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!684 = !DISubroutineType(types: !685)
!685 = !{!44, !183}
!686 = !DISubprogram(name: "unlink", scope: !687, file: !687, line: 858, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!687 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!688 = !DISubroutineType(types: !689)
!689 = !{!44, !6}
!690 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !141, file: !141, line: 50, type: !446, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !691)
!691 = !{!692}
!692 = !DILocalVariable(name: "file", arg: 1, scope: !690, file: !141, line: 50, type: !6)
!693 = !DILocation(line: 0, scope: !690)
!694 = !DILocation(line: 52, column: 13, scope: !690)
!695 = !DILocation(line: 53, column: 1, scope: !690)
!696 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !141, file: !141, line: 87, type: !697, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !58}
!699 = !{!700}
!700 = !DILocalVariable(name: "ignore", arg: 1, scope: !696, file: !141, line: 87, type: !58)
!701 = !DILocation(line: 0, scope: !696)
!702 = !DILocation(line: 89, column: 16, scope: !696)
!703 = !{!704, !704, i64 0}
!704 = !{!"_Bool", !437, i64 0}
!705 = !DILocation(line: 90, column: 1, scope: !696)
!706 = distinct !DISubprogram(name: "close_stdout", scope: !141, file: !141, line: 116, type: !184, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !707)
!707 = !{!708}
!708 = !DILocalVariable(name: "write_error", scope: !709, file: !141, line: 121, type: !6)
!709 = distinct !DILexicalBlock(scope: !710, file: !141, line: 120, column: 5)
!710 = distinct !DILexicalBlock(scope: !706, file: !141, line: 118, column: 7)
!711 = !DILocation(line: 118, column: 21, scope: !710)
!712 = !DILocation(line: 118, column: 7, scope: !710)
!713 = !DILocation(line: 118, column: 29, scope: !710)
!714 = !DILocation(line: 119, column: 7, scope: !710)
!715 = !DILocation(line: 119, column: 12, scope: !710)
!716 = !{i8 0, i8 2}
!717 = !DILocation(line: 119, column: 25, scope: !710)
!718 = !DILocation(line: 119, column: 28, scope: !710)
!719 = !DILocation(line: 119, column: 34, scope: !710)
!720 = !DILocation(line: 118, column: 7, scope: !706)
!721 = !DILocation(line: 121, column: 33, scope: !709)
!722 = !DILocation(line: 0, scope: !709)
!723 = !DILocation(line: 122, column: 11, scope: !724)
!724 = distinct !DILexicalBlock(scope: !709, file: !141, line: 122, column: 11)
!725 = !DILocation(line: 0, scope: !724)
!726 = !DILocation(line: 122, column: 11, scope: !709)
!727 = !DILocation(line: 123, column: 9, scope: !724)
!728 = !DILocation(line: 126, column: 9, scope: !724)
!729 = !DILocation(line: 128, column: 14, scope: !709)
!730 = !DILocation(line: 128, column: 7, scope: !709)
!731 = !DILocation(line: 133, column: 42, scope: !732)
!732 = distinct !DILexicalBlock(scope: !706, file: !141, line: 133, column: 7)
!733 = !DILocation(line: 133, column: 28, scope: !732)
!734 = !DILocation(line: 133, column: 50, scope: !732)
!735 = !DILocation(line: 133, column: 7, scope: !706)
!736 = !DILocation(line: 134, column: 12, scope: !732)
!737 = !DILocation(line: 134, column: 5, scope: !732)
!738 = !DILocation(line: 135, column: 1, scope: !706)
!739 = distinct !DISubprogram(name: "verror", scope: !148, file: !148, line: 251, type: !740, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !44, !44, !6, !156}
!742 = !{!743, !744, !745, !746}
!743 = !DILocalVariable(name: "status", arg: 1, scope: !739, file: !148, line: 251, type: !44)
!744 = !DILocalVariable(name: "errnum", arg: 2, scope: !739, file: !148, line: 251, type: !44)
!745 = !DILocalVariable(name: "message", arg: 3, scope: !739, file: !148, line: 251, type: !6)
!746 = !DILocalVariable(name: "args", arg: 4, scope: !739, file: !148, line: 251, type: !156)
!747 = !DILocation(line: 0, scope: !739)
!748 = !DILocation(line: 251, column: 1, scope: !739)
!749 = !DILocation(line: 261, column: 3, scope: !739)
!750 = !DILocation(line: 265, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !739, file: !148, line: 265, column: 7)
!752 = !DILocation(line: 265, column: 7, scope: !739)
!753 = !DILocation(line: 266, column: 5, scope: !751)
!754 = !DILocation(line: 272, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !148, line: 268, column: 5)
!756 = !DILocation(line: 276, column: 3, scope: !739)
!757 = !{i64 0, i64 8, !435, i64 8, i64 8, !435, i64 16, i64 8, !435, i64 24, i64 4, !521, i64 28, i64 4, !521}
!758 = !DILocation(line: 282, column: 1, scope: !739)
!759 = distinct !DISubprogram(name: "flush_stdout", scope: !148, file: !148, line: 163, type: !184, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !760)
!760 = !{!761}
!761 = !DILocalVariable(name: "stdout_fd", scope: !759, file: !148, line: 166, type: !44)
!762 = !DILocation(line: 0, scope: !759)
!763 = !DILocalVariable(name: "fd", arg: 1, scope: !764, file: !148, line: 145, type: !44)
!764 = distinct !DISubprogram(name: "is_open", scope: !148, file: !148, line: 145, type: !765, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!44, !44}
!767 = !{!763}
!768 = !DILocation(line: 0, scope: !764, inlinedAt: !769)
!769 = distinct !DILocation(line: 182, column: 25, scope: !770)
!770 = distinct !DILexicalBlock(scope: !759, file: !148, line: 182, column: 7)
!771 = !DILocation(line: 157, column: 15, scope: !764, inlinedAt: !769)
!772 = !DILocation(line: 182, column: 25, scope: !770)
!773 = !DILocation(line: 182, column: 7, scope: !759)
!774 = !DILocation(line: 184, column: 5, scope: !770)
!775 = !DILocation(line: 185, column: 1, scope: !759)
!776 = distinct !DISubprogram(name: "error_tail", scope: !148, file: !148, line: 219, type: !740, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !777)
!777 = !{!778, !779, !780, !781}
!778 = !DILocalVariable(name: "status", arg: 1, scope: !776, file: !148, line: 219, type: !44)
!779 = !DILocalVariable(name: "errnum", arg: 2, scope: !776, file: !148, line: 219, type: !44)
!780 = !DILocalVariable(name: "message", arg: 3, scope: !776, file: !148, line: 219, type: !6)
!781 = !DILocalVariable(name: "args", arg: 4, scope: !776, file: !148, line: 219, type: !156)
!782 = !DILocation(line: 0, scope: !776)
!783 = !DILocation(line: 219, column: 1, scope: !776)
!784 = !DILocation(line: 229, column: 13, scope: !776)
!785 = !DILocation(line: 229, column: 3, scope: !776)
!786 = !DILocalVariable(name: "__stream", arg: 1, scope: !787, file: !788, line: 132, type: !791)
!787 = distinct !DISubprogram(name: "vfprintf", scope: !788, file: !788, line: 132, type: !789, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !826)
!788 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!789 = !DISubroutineType(types: !790)
!790 = !{!44, !791, !517, !158}
!791 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !794, file: !75, line: 51, baseType: !44, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !794, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !794, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !794, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !794, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !794, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !794, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !794, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !794, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !794, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !794, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !794, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !794, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !794, file: !75, line: 70, baseType: !810, size: 64, offset: 832)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !794, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !794, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !794, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !794, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !794, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !794, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !794, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !794, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !794, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !794, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !794, file: !75, line: 93, baseType: !810, size: 64, offset: 1344)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !794, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !794, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !794, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !794, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!826 = !{!786, !827, !828}
!827 = !DILocalVariable(name: "__fmt", arg: 2, scope: !787, file: !788, line: 133, type: !517)
!828 = !DILocalVariable(name: "__ap", arg: 3, scope: !787, file: !788, line: 133, type: !158)
!829 = !DILocation(line: 0, scope: !787, inlinedAt: !830)
!830 = distinct !DILocation(line: 229, column: 3, scope: !776)
!831 = !DILocation(line: 135, column: 10, scope: !787, inlinedAt: !830)
!832 = !{!833, !835}
!833 = distinct !{!833, !834, !"vfprintf.inline: argument 0"}
!834 = distinct !{!834, !"vfprintf.inline"}
!835 = distinct !{!835, !834, !"vfprintf.inline: argument 1"}
!836 = !DILocation(line: 232, column: 3, scope: !776)
!837 = !DILocation(line: 233, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !776, file: !148, line: 233, column: 7)
!839 = !DILocation(line: 233, column: 7, scope: !776)
!840 = !DILocalVariable(name: "errnum", arg: 1, scope: !841, file: !148, line: 188, type: !44)
!841 = distinct !DISubprogram(name: "print_errno_message", scope: !148, file: !148, line: 188, type: !425, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !842)
!842 = !{!840, !843, !844}
!843 = !DILocalVariable(name: "s", scope: !841, file: !148, line: 190, type: !6)
!844 = !DILocalVariable(name: "errbuf", scope: !841, file: !148, line: 193, type: !845)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 1024)
!848 = !DILocation(line: 0, scope: !841, inlinedAt: !849)
!849 = distinct !DILocation(line: 234, column: 5, scope: !838)
!850 = !DILocation(line: 193, column: 3, scope: !841, inlinedAt: !849)
!851 = !DILocation(line: 193, column: 8, scope: !841, inlinedAt: !849)
!852 = !DILocation(line: 195, column: 7, scope: !841, inlinedAt: !849)
!853 = !DILocation(line: 207, column: 9, scope: !854, inlinedAt: !849)
!854 = distinct !DILexicalBlock(scope: !841, file: !148, line: 207, column: 7)
!855 = !DILocation(line: 207, column: 7, scope: !841, inlinedAt: !849)
!856 = !DILocation(line: 208, column: 9, scope: !854, inlinedAt: !849)
!857 = !DILocation(line: 208, column: 5, scope: !854, inlinedAt: !849)
!858 = !DILocation(line: 214, column: 3, scope: !841, inlinedAt: !849)
!859 = !DILocation(line: 216, column: 1, scope: !841, inlinedAt: !849)
!860 = !DILocation(line: 234, column: 5, scope: !838)
!861 = !DILocation(line: 238, column: 3, scope: !776)
!862 = !DILocalVariable(name: "__c", arg: 1, scope: !863, file: !864, line: 101, type: !44)
!863 = distinct !DISubprogram(name: "putc_unlocked", scope: !864, file: !864, line: 101, type: !865, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !867)
!864 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!865 = !DISubroutineType(types: !866)
!866 = !{!44, !44, !792}
!867 = !{!862, !868}
!868 = !DILocalVariable(name: "__stream", arg: 2, scope: !863, file: !864, line: 101, type: !792)
!869 = !DILocation(line: 0, scope: !863, inlinedAt: !870)
!870 = distinct !DILocation(line: 238, column: 3, scope: !776)
!871 = !DILocation(line: 103, column: 10, scope: !863, inlinedAt: !870)
!872 = !{!873, !436, i64 40}
!873 = !{!"_IO_FILE", !522, i64 0, !436, i64 8, !436, i64 16, !436, i64 24, !436, i64 32, !436, i64 40, !436, i64 48, !436, i64 56, !436, i64 64, !436, i64 72, !436, i64 80, !436, i64 88, !436, i64 96, !436, i64 104, !522, i64 112, !522, i64 116, !874, i64 120, !556, i64 128, !437, i64 130, !437, i64 131, !436, i64 136, !874, i64 144, !436, i64 152, !436, i64 160, !436, i64 168, !436, i64 176, !874, i64 184, !522, i64 192, !437, i64 196}
!874 = !{!"long", !437, i64 0}
!875 = !{!873, !436, i64 48}
!876 = !{!"branch_weights", i32 2000, i32 1}
!877 = !DILocation(line: 240, column: 3, scope: !776)
!878 = !DILocation(line: 241, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !776, file: !148, line: 241, column: 7)
!880 = !DILocation(line: 241, column: 7, scope: !776)
!881 = !DILocation(line: 242, column: 5, scope: !879)
!882 = !DILocation(line: 243, column: 1, scope: !776)
!883 = !DISubprogram(name: "strerror_r", scope: !884, file: !884, line: 444, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!884 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!885 = !DISubroutineType(types: !886)
!886 = !{!79, !44, !79, !46}
!887 = !DISubprogram(name: "fflush_unlocked", scope: !157, file: !157, line: 239, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!888 = !DISubroutineType(types: !889)
!889 = !{!44, !792}
!890 = !DISubprogram(name: "fcntl", scope: !891, file: !891, line: 149, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!891 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!892 = !DISubroutineType(types: !893)
!893 = !{!44, !44, !44, null}
!894 = distinct !DISubprogram(name: "error", scope: !148, file: !148, line: 285, type: !895, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !44, !44, !6, null}
!897 = !{!898, !899, !900, !901}
!898 = !DILocalVariable(name: "status", arg: 1, scope: !894, file: !148, line: 285, type: !44)
!899 = !DILocalVariable(name: "errnum", arg: 2, scope: !894, file: !148, line: 285, type: !44)
!900 = !DILocalVariable(name: "message", arg: 3, scope: !894, file: !148, line: 285, type: !6)
!901 = !DILocalVariable(name: "ap", scope: !894, file: !148, line: 287, type: !156)
!902 = !DILocation(line: 0, scope: !894)
!903 = !DILocation(line: 287, column: 3, scope: !894)
!904 = !DILocation(line: 287, column: 11, scope: !894)
!905 = !DILocation(line: 288, column: 3, scope: !894)
!906 = !DILocation(line: 289, column: 3, scope: !894)
!907 = !DILocation(line: 290, column: 3, scope: !894)
!908 = !DILocation(line: 291, column: 1, scope: !894)
!909 = !DILocation(line: 0, scope: !153)
!910 = !DILocation(line: 298, column: 1, scope: !153)
!911 = !DILocation(line: 302, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !153, file: !148, line: 302, column: 7)
!913 = !DILocation(line: 302, column: 7, scope: !153)
!914 = !DILocation(line: 307, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !148, line: 307, column: 11)
!916 = distinct !DILexicalBlock(scope: !912, file: !148, line: 303, column: 5)
!917 = !DILocation(line: 307, column: 27, scope: !915)
!918 = !DILocation(line: 308, column: 11, scope: !915)
!919 = !DILocation(line: 308, column: 28, scope: !915)
!920 = !DILocation(line: 308, column: 25, scope: !915)
!921 = !DILocation(line: 309, column: 15, scope: !915)
!922 = !DILocation(line: 309, column: 33, scope: !915)
!923 = !DILocation(line: 310, column: 19, scope: !915)
!924 = !DILocation(line: 311, column: 22, scope: !915)
!925 = !DILocation(line: 311, column: 56, scope: !915)
!926 = !DILocation(line: 307, column: 11, scope: !916)
!927 = !DILocation(line: 316, column: 21, scope: !916)
!928 = !DILocation(line: 317, column: 23, scope: !916)
!929 = !DILocation(line: 318, column: 5, scope: !916)
!930 = !DILocation(line: 327, column: 3, scope: !153)
!931 = !DILocation(line: 331, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !153, file: !148, line: 331, column: 7)
!933 = !DILocation(line: 331, column: 7, scope: !153)
!934 = !DILocation(line: 332, column: 5, scope: !932)
!935 = !DILocation(line: 338, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !148, line: 334, column: 5)
!937 = !DILocation(line: 346, column: 3, scope: !153)
!938 = !DILocation(line: 350, column: 3, scope: !153)
!939 = !DILocation(line: 356, column: 1, scope: !153)
!940 = distinct !DISubprogram(name: "error_at_line", scope: !148, file: !148, line: 359, type: !941, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !44, !44, !6, !14, !6, null}
!943 = !{!944, !945, !946, !947, !948, !949}
!944 = !DILocalVariable(name: "status", arg: 1, scope: !940, file: !148, line: 359, type: !44)
!945 = !DILocalVariable(name: "errnum", arg: 2, scope: !940, file: !148, line: 359, type: !44)
!946 = !DILocalVariable(name: "file_name", arg: 3, scope: !940, file: !148, line: 359, type: !6)
!947 = !DILocalVariable(name: "line_number", arg: 4, scope: !940, file: !148, line: 360, type: !14)
!948 = !DILocalVariable(name: "message", arg: 5, scope: !940, file: !148, line: 360, type: !6)
!949 = !DILocalVariable(name: "ap", scope: !940, file: !148, line: 362, type: !156)
!950 = !DILocation(line: 0, scope: !940)
!951 = !DILocation(line: 362, column: 3, scope: !940)
!952 = !DILocation(line: 362, column: 11, scope: !940)
!953 = !DILocation(line: 363, column: 3, scope: !940)
!954 = !DILocation(line: 364, column: 3, scope: !940)
!955 = !DILocation(line: 366, column: 3, scope: !940)
!956 = !DILocation(line: 367, column: 1, scope: !940)
!957 = distinct !DISubprogram(name: "getprogname", scope: !351, file: !351, line: 54, type: !958, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !513)
!958 = !DISubroutineType(types: !959)
!959 = !{!6}
!960 = !DILocation(line: 58, column: 10, scope: !957)
!961 = !DILocation(line: 58, column: 3, scope: !957)
!962 = distinct !DISubprogram(name: "parse_long_options", scope: !189, file: !189, line: 45, type: !963, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !966)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !44, !644, !6, !6, !6, !965, null}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!966 = !{!967, !968, !969, !970, !971, !972, !973, !974, !977}
!967 = !DILocalVariable(name: "argc", arg: 1, scope: !962, file: !189, line: 45, type: !44)
!968 = !DILocalVariable(name: "argv", arg: 2, scope: !962, file: !189, line: 46, type: !644)
!969 = !DILocalVariable(name: "command_name", arg: 3, scope: !962, file: !189, line: 47, type: !6)
!970 = !DILocalVariable(name: "package", arg: 4, scope: !962, file: !189, line: 48, type: !6)
!971 = !DILocalVariable(name: "version", arg: 5, scope: !962, file: !189, line: 49, type: !6)
!972 = !DILocalVariable(name: "usage_func", arg: 6, scope: !962, file: !189, line: 50, type: !965)
!973 = !DILocalVariable(name: "saved_opterr", scope: !962, file: !189, line: 53, type: !44)
!974 = !DILocalVariable(name: "c", scope: !975, file: !189, line: 60, type: !44)
!975 = distinct !DILexicalBlock(scope: !976, file: !189, line: 59, column: 5)
!976 = distinct !DILexicalBlock(scope: !962, file: !189, line: 58, column: 7)
!977 = !DILocalVariable(name: "authors", scope: !978, file: !189, line: 71, type: !982)
!978 = distinct !DILexicalBlock(scope: !979, file: !189, line: 70, column: 15)
!979 = distinct !DILexicalBlock(scope: !980, file: !189, line: 64, column: 13)
!980 = distinct !DILexicalBlock(scope: !981, file: !189, line: 62, column: 9)
!981 = distinct !DILexicalBlock(scope: !975, file: !189, line: 61, column: 11)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !984)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !985, baseType: !986)
!985 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !163, size: 256, elements: !987)
!987 = !{!988, !989, !990, !991, !992}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !986, file: !985, line: 71, baseType: !43, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !986, file: !985, line: 71, baseType: !43, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !986, file: !985, line: 71, baseType: !43, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !986, file: !985, line: 71, baseType: !44, size: 32, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !986, file: !985, line: 71, baseType: !44, size: 32, offset: 224)
!993 = !DILocation(line: 0, scope: !962)
!994 = !DILocation(line: 53, column: 22, scope: !962)
!995 = !DILocation(line: 56, column: 10, scope: !962)
!996 = !DILocation(line: 58, column: 12, scope: !976)
!997 = !DILocation(line: 58, column: 7, scope: !962)
!998 = !DILocation(line: 60, column: 15, scope: !975)
!999 = !DILocation(line: 0, scope: !975)
!1000 = !DILocation(line: 61, column: 11, scope: !975)
!1001 = !DILocation(line: 66, column: 15, scope: !979)
!1002 = !DILocation(line: 67, column: 15, scope: !979)
!1003 = !DILocation(line: 71, column: 17, scope: !978)
!1004 = !DILocation(line: 71, column: 25, scope: !978)
!1005 = !DILocation(line: 72, column: 17, scope: !978)
!1006 = !DILocation(line: 73, column: 33, scope: !978)
!1007 = !DILocation(line: 73, column: 17, scope: !978)
!1008 = !DILocation(line: 74, column: 17, scope: !978)
!1009 = !DILocation(line: 85, column: 10, scope: !962)
!1010 = !DILocation(line: 89, column: 10, scope: !962)
!1011 = !DILocation(line: 90, column: 1, scope: !962)
!1012 = !DISubprogram(name: "getopt_long", scope: !194, file: !194, line: 66, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!44, !44, !1015, !6, !1017, !199}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1018 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !189, file: !189, line: 98, type: !1019, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !44, !644, !6, !6, !6, !58, !965, null}
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032}
!1022 = !DILocalVariable(name: "argc", arg: 1, scope: !1018, file: !189, line: 98, type: !44)
!1023 = !DILocalVariable(name: "argv", arg: 2, scope: !1018, file: !189, line: 99, type: !644)
!1024 = !DILocalVariable(name: "command_name", arg: 3, scope: !1018, file: !189, line: 100, type: !6)
!1025 = !DILocalVariable(name: "package", arg: 4, scope: !1018, file: !189, line: 101, type: !6)
!1026 = !DILocalVariable(name: "version", arg: 5, scope: !1018, file: !189, line: 102, type: !6)
!1027 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1018, file: !189, line: 103, type: !58)
!1028 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1018, file: !189, line: 104, type: !965)
!1029 = !DILocalVariable(name: "saved_opterr", scope: !1018, file: !189, line: 107, type: !44)
!1030 = !DILocalVariable(name: "optstring", scope: !1018, file: !189, line: 112, type: !6)
!1031 = !DILocalVariable(name: "c", scope: !1018, file: !189, line: 114, type: !44)
!1032 = !DILocalVariable(name: "authors", scope: !1033, file: !189, line: 125, type: !982)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !189, line: 124, column: 11)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !189, line: 118, column: 9)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !189, line: 116, column: 5)
!1036 = distinct !DILexicalBlock(scope: !1018, file: !189, line: 115, column: 7)
!1037 = !DILocation(line: 0, scope: !1018)
!1038 = !DILocation(line: 107, column: 22, scope: !1018)
!1039 = !DILocation(line: 110, column: 10, scope: !1018)
!1040 = !DILocation(line: 112, column: 27, scope: !1018)
!1041 = !DILocation(line: 114, column: 11, scope: !1018)
!1042 = !DILocation(line: 115, column: 7, scope: !1018)
!1043 = !DILocation(line: 125, column: 13, scope: !1033)
!1044 = !DILocation(line: 125, column: 21, scope: !1033)
!1045 = !DILocation(line: 126, column: 13, scope: !1033)
!1046 = !DILocation(line: 127, column: 29, scope: !1033)
!1047 = !DILocation(line: 127, column: 13, scope: !1033)
!1048 = !DILocation(line: 128, column: 13, scope: !1033)
!1049 = !DILocation(line: 132, column: 26, scope: !1034)
!1050 = !DILocation(line: 133, column: 11, scope: !1034)
!1051 = !DILocation(line: 0, scope: !1034)
!1052 = !DILocation(line: 138, column: 10, scope: !1018)
!1053 = !DILocation(line: 139, column: 1, scope: !1018)
!1054 = distinct !DISubprogram(name: "set_program_name", scope: !206, file: !206, line: 37, type: !446, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DILocalVariable(name: "argv0", arg: 1, scope: !1054, file: !206, line: 37, type: !6)
!1057 = !DILocalVariable(name: "slash", scope: !1054, file: !206, line: 44, type: !6)
!1058 = !DILocalVariable(name: "base", scope: !1054, file: !206, line: 45, type: !6)
!1059 = !DILocation(line: 0, scope: !1054)
!1060 = !DILocation(line: 44, column: 23, scope: !1054)
!1061 = !DILocation(line: 45, column: 22, scope: !1054)
!1062 = !DILocation(line: 46, column: 17, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1054, file: !206, line: 46, column: 7)
!1064 = !DILocation(line: 46, column: 9, scope: !1063)
!1065 = !DILocation(line: 46, column: 25, scope: !1063)
!1066 = !DILocation(line: 46, column: 40, scope: !1063)
!1067 = !DILocalVariable(name: "__s1", arg: 1, scope: !1068, file: !471, line: 974, type: !639)
!1068 = distinct !DISubprogram(name: "memeq", scope: !471, file: !471, line: 974, type: !1069, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1071)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!58, !639, !639, !46}
!1071 = !{!1067, !1072, !1073}
!1072 = !DILocalVariable(name: "__s2", arg: 2, scope: !1068, file: !471, line: 974, type: !639)
!1073 = !DILocalVariable(name: "__n", arg: 3, scope: !1068, file: !471, line: 974, type: !46)
!1074 = !DILocation(line: 0, scope: !1068, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 46, column: 28, scope: !1063)
!1076 = !DILocation(line: 976, column: 11, scope: !1068, inlinedAt: !1075)
!1077 = !DILocation(line: 976, column: 10, scope: !1068, inlinedAt: !1075)
!1078 = !DILocation(line: 46, column: 7, scope: !1054)
!1079 = !DILocation(line: 49, column: 11, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !206, line: 49, column: 11)
!1081 = distinct !DILexicalBlock(scope: !1063, file: !206, line: 47, column: 5)
!1082 = !DILocation(line: 49, column: 36, scope: !1080)
!1083 = !DILocation(line: 49, column: 11, scope: !1081)
!1084 = !DILocation(line: 65, column: 16, scope: !1054)
!1085 = !DILocation(line: 71, column: 27, scope: !1054)
!1086 = !DILocation(line: 74, column: 33, scope: !1054)
!1087 = !DILocation(line: 76, column: 1, scope: !1054)
!1088 = !DILocation(line: 0, scope: !211)
!1089 = !DILocation(line: 40, column: 29, scope: !211)
!1090 = !DILocation(line: 41, column: 19, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !211, file: !212, line: 41, column: 7)
!1092 = !DILocation(line: 41, column: 7, scope: !211)
!1093 = !DILocation(line: 47, column: 3, scope: !211)
!1094 = !DILocation(line: 48, column: 3, scope: !211)
!1095 = !DILocation(line: 48, column: 13, scope: !211)
!1096 = !DILocalVariable(name: "ps", arg: 1, scope: !1097, file: !1098, line: 1135, type: !1101)
!1097 = distinct !DISubprogram(name: "mbszero", scope: !1098, file: !1098, line: 1135, type: !1099, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !1102)
!1098 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1102 = !{!1096}
!1103 = !DILocation(line: 0, scope: !1097, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 48, column: 18, scope: !211)
!1105 = !DILocalVariable(name: "__dest", arg: 1, scope: !1106, file: !1107, line: 57, type: !43)
!1106 = distinct !DISubprogram(name: "memset", scope: !1107, file: !1107, line: 57, type: !1108, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !1110)
!1107 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!43, !43, !44, !46}
!1110 = !{!1105, !1111, !1112}
!1111 = !DILocalVariable(name: "__ch", arg: 2, scope: !1106, file: !1107, line: 57, type: !44)
!1112 = !DILocalVariable(name: "__len", arg: 3, scope: !1106, file: !1107, line: 57, type: !46)
!1113 = !DILocation(line: 0, scope: !1106, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 1137, column: 3, scope: !1097, inlinedAt: !1104)
!1115 = !DILocation(line: 59, column: 10, scope: !1106, inlinedAt: !1114)
!1116 = !DILocation(line: 49, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !211, file: !212, line: 49, column: 7)
!1118 = !DILocation(line: 49, column: 39, scope: !1117)
!1119 = !DILocation(line: 49, column: 44, scope: !1117)
!1120 = !DILocation(line: 54, column: 1, scope: !211)
!1121 = !DISubprogram(name: "mbrtoc32", scope: !223, file: !223, line: 57, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!46, !1124, !517, !46, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1101)
!1127 = distinct !DISubprogram(name: "clone_quoting_options", scope: !248, file: !248, line: 113, type: !1128, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1131)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!1130, !1130}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1131 = !{!1132, !1133, !1134}
!1132 = !DILocalVariable(name: "o", arg: 1, scope: !1127, file: !248, line: 113, type: !1130)
!1133 = !DILocalVariable(name: "saved_errno", scope: !1127, file: !248, line: 115, type: !44)
!1134 = !DILocalVariable(name: "p", scope: !1127, file: !248, line: 116, type: !1130)
!1135 = !DILocation(line: 0, scope: !1127)
!1136 = !DILocation(line: 115, column: 21, scope: !1127)
!1137 = !DILocation(line: 116, column: 40, scope: !1127)
!1138 = !DILocation(line: 116, column: 31, scope: !1127)
!1139 = !DILocation(line: 118, column: 9, scope: !1127)
!1140 = !DILocation(line: 119, column: 3, scope: !1127)
!1141 = distinct !DISubprogram(name: "get_quoting_style", scope: !248, file: !248, line: 124, type: !1142, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1146)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!12, !1144}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1146 = !{!1147}
!1147 = !DILocalVariable(name: "o", arg: 1, scope: !1141, file: !248, line: 124, type: !1144)
!1148 = !DILocation(line: 0, scope: !1141)
!1149 = !DILocation(line: 126, column: 11, scope: !1141)
!1150 = !DILocation(line: 126, column: 46, scope: !1141)
!1151 = !{!1152, !437, i64 0}
!1152 = !{!"quoting_options", !437, i64 0, !522, i64 4, !437, i64 8, !436, i64 40, !436, i64 48}
!1153 = !DILocation(line: 126, column: 3, scope: !1141)
!1154 = distinct !DISubprogram(name: "set_quoting_style", scope: !248, file: !248, line: 132, type: !1155, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1157)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !1130, !12}
!1157 = !{!1158, !1159}
!1158 = !DILocalVariable(name: "o", arg: 1, scope: !1154, file: !248, line: 132, type: !1130)
!1159 = !DILocalVariable(name: "s", arg: 2, scope: !1154, file: !248, line: 132, type: !12)
!1160 = !DILocation(line: 0, scope: !1154)
!1161 = !DILocation(line: 134, column: 4, scope: !1154)
!1162 = !DILocation(line: 134, column: 39, scope: !1154)
!1163 = !DILocation(line: 134, column: 45, scope: !1154)
!1164 = !DILocation(line: 135, column: 1, scope: !1154)
!1165 = distinct !DISubprogram(name: "set_char_quoting", scope: !248, file: !248, line: 143, type: !1166, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!44, !1130, !8, !44}
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1175, !1176}
!1169 = !DILocalVariable(name: "o", arg: 1, scope: !1165, file: !248, line: 143, type: !1130)
!1170 = !DILocalVariable(name: "c", arg: 2, scope: !1165, file: !248, line: 143, type: !8)
!1171 = !DILocalVariable(name: "i", arg: 3, scope: !1165, file: !248, line: 143, type: !44)
!1172 = !DILocalVariable(name: "uc", scope: !1165, file: !248, line: 145, type: !49)
!1173 = !DILocalVariable(name: "p", scope: !1165, file: !248, line: 146, type: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1175 = !DILocalVariable(name: "shift", scope: !1165, file: !248, line: 148, type: !44)
!1176 = !DILocalVariable(name: "r", scope: !1165, file: !248, line: 149, type: !14)
!1177 = !DILocation(line: 0, scope: !1165)
!1178 = !DILocation(line: 147, column: 6, scope: !1165)
!1179 = !DILocation(line: 147, column: 62, scope: !1165)
!1180 = !DILocation(line: 147, column: 57, scope: !1165)
!1181 = !DILocation(line: 148, column: 15, scope: !1165)
!1182 = !DILocation(line: 149, column: 21, scope: !1165)
!1183 = !DILocation(line: 149, column: 24, scope: !1165)
!1184 = !DILocation(line: 149, column: 34, scope: !1165)
!1185 = !DILocation(line: 150, column: 13, scope: !1165)
!1186 = !DILocation(line: 150, column: 19, scope: !1165)
!1187 = !DILocation(line: 150, column: 24, scope: !1165)
!1188 = !DILocation(line: 150, column: 6, scope: !1165)
!1189 = !DILocation(line: 151, column: 3, scope: !1165)
!1190 = distinct !DISubprogram(name: "set_quoting_flags", scope: !248, file: !248, line: 159, type: !1191, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1193)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!44, !1130, !44}
!1193 = !{!1194, !1195, !1196}
!1194 = !DILocalVariable(name: "o", arg: 1, scope: !1190, file: !248, line: 159, type: !1130)
!1195 = !DILocalVariable(name: "i", arg: 2, scope: !1190, file: !248, line: 159, type: !44)
!1196 = !DILocalVariable(name: "r", scope: !1190, file: !248, line: 163, type: !44)
!1197 = !DILocation(line: 0, scope: !1190)
!1198 = !DILocation(line: 161, column: 8, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1190, file: !248, line: 161, column: 7)
!1200 = !DILocation(line: 161, column: 7, scope: !1190)
!1201 = !DILocation(line: 163, column: 14, scope: !1190)
!1202 = !{!1152, !522, i64 4}
!1203 = !DILocation(line: 164, column: 12, scope: !1190)
!1204 = !DILocation(line: 165, column: 3, scope: !1190)
!1205 = distinct !DISubprogram(name: "set_custom_quoting", scope: !248, file: !248, line: 169, type: !1206, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !1130, !6, !6}
!1208 = !{!1209, !1210, !1211}
!1209 = !DILocalVariable(name: "o", arg: 1, scope: !1205, file: !248, line: 169, type: !1130)
!1210 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1205, file: !248, line: 170, type: !6)
!1211 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1205, file: !248, line: 170, type: !6)
!1212 = !DILocation(line: 0, scope: !1205)
!1213 = !DILocation(line: 172, column: 8, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1205, file: !248, line: 172, column: 7)
!1215 = !DILocation(line: 172, column: 7, scope: !1205)
!1216 = !DILocation(line: 174, column: 6, scope: !1205)
!1217 = !DILocation(line: 174, column: 12, scope: !1205)
!1218 = !DILocation(line: 175, column: 8, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1205, file: !248, line: 175, column: 7)
!1220 = !DILocation(line: 175, column: 19, scope: !1219)
!1221 = !DILocation(line: 176, column: 5, scope: !1219)
!1222 = !DILocation(line: 177, column: 6, scope: !1205)
!1223 = !DILocation(line: 177, column: 17, scope: !1205)
!1224 = !{!1152, !436, i64 40}
!1225 = !DILocation(line: 178, column: 6, scope: !1205)
!1226 = !DILocation(line: 178, column: 18, scope: !1205)
!1227 = !{!1152, !436, i64 48}
!1228 = !DILocation(line: 179, column: 1, scope: !1205)
!1229 = distinct !DISubprogram(name: "quotearg_buffer", scope: !248, file: !248, line: 774, type: !1230, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!46, !79, !46, !6, !46, !1144}
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240}
!1233 = !DILocalVariable(name: "buffer", arg: 1, scope: !1229, file: !248, line: 774, type: !79)
!1234 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1229, file: !248, line: 774, type: !46)
!1235 = !DILocalVariable(name: "arg", arg: 3, scope: !1229, file: !248, line: 775, type: !6)
!1236 = !DILocalVariable(name: "argsize", arg: 4, scope: !1229, file: !248, line: 775, type: !46)
!1237 = !DILocalVariable(name: "o", arg: 5, scope: !1229, file: !248, line: 776, type: !1144)
!1238 = !DILocalVariable(name: "p", scope: !1229, file: !248, line: 778, type: !1144)
!1239 = !DILocalVariable(name: "saved_errno", scope: !1229, file: !248, line: 779, type: !44)
!1240 = !DILocalVariable(name: "r", scope: !1229, file: !248, line: 780, type: !46)
!1241 = !DILocation(line: 0, scope: !1229)
!1242 = !DILocation(line: 778, column: 37, scope: !1229)
!1243 = !DILocation(line: 779, column: 21, scope: !1229)
!1244 = !DILocation(line: 781, column: 43, scope: !1229)
!1245 = !DILocation(line: 781, column: 53, scope: !1229)
!1246 = !DILocation(line: 781, column: 60, scope: !1229)
!1247 = !DILocation(line: 782, column: 43, scope: !1229)
!1248 = !DILocation(line: 782, column: 58, scope: !1229)
!1249 = !DILocation(line: 780, column: 14, scope: !1229)
!1250 = !DILocation(line: 783, column: 9, scope: !1229)
!1251 = !DILocation(line: 784, column: 3, scope: !1229)
!1252 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !248, file: !248, line: 251, type: !1253, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1257)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!46, !79, !46, !6, !46, !12, !44, !1255, !6, !6}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1282, !1284, !1287, !1288, !1289, !1290, !1293, !1294, !1297, !1301, !1302, !1310, !1313, !1314, !1316, !1317, !1318, !1319}
!1258 = !DILocalVariable(name: "buffer", arg: 1, scope: !1252, file: !248, line: 251, type: !79)
!1259 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1252, file: !248, line: 251, type: !46)
!1260 = !DILocalVariable(name: "arg", arg: 3, scope: !1252, file: !248, line: 252, type: !6)
!1261 = !DILocalVariable(name: "argsize", arg: 4, scope: !1252, file: !248, line: 252, type: !46)
!1262 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1252, file: !248, line: 253, type: !12)
!1263 = !DILocalVariable(name: "flags", arg: 6, scope: !1252, file: !248, line: 253, type: !44)
!1264 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1252, file: !248, line: 254, type: !1255)
!1265 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1252, file: !248, line: 255, type: !6)
!1266 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1252, file: !248, line: 256, type: !6)
!1267 = !DILocalVariable(name: "unibyte_locale", scope: !1252, file: !248, line: 258, type: !58)
!1268 = !DILocalVariable(name: "len", scope: !1252, file: !248, line: 260, type: !46)
!1269 = !DILocalVariable(name: "orig_buffersize", scope: !1252, file: !248, line: 261, type: !46)
!1270 = !DILocalVariable(name: "quote_string", scope: !1252, file: !248, line: 262, type: !6)
!1271 = !DILocalVariable(name: "quote_string_len", scope: !1252, file: !248, line: 263, type: !46)
!1272 = !DILocalVariable(name: "backslash_escapes", scope: !1252, file: !248, line: 264, type: !58)
!1273 = !DILocalVariable(name: "elide_outer_quotes", scope: !1252, file: !248, line: 265, type: !58)
!1274 = !DILocalVariable(name: "encountered_single_quote", scope: !1252, file: !248, line: 266, type: !58)
!1275 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1252, file: !248, line: 267, type: !58)
!1276 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1252, file: !248, line: 309, type: !58)
!1277 = !DILocalVariable(name: "lq", scope: !1278, file: !248, line: 361, type: !6)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !248, line: 361, column: 11)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !248, line: 360, column: 13)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !248, line: 333, column: 7)
!1281 = distinct !DILexicalBlock(scope: !1252, file: !248, line: 312, column: 5)
!1282 = !DILocalVariable(name: "i", scope: !1283, file: !248, line: 395, type: !46)
!1283 = distinct !DILexicalBlock(scope: !1252, file: !248, line: 395, column: 3)
!1284 = !DILocalVariable(name: "is_right_quote", scope: !1285, file: !248, line: 397, type: !58)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !248, line: 396, column: 5)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !248, line: 395, column: 3)
!1287 = !DILocalVariable(name: "escaping", scope: !1285, file: !248, line: 398, type: !58)
!1288 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1285, file: !248, line: 399, type: !58)
!1289 = !DILocalVariable(name: "c", scope: !1285, file: !248, line: 417, type: !49)
!1290 = !DILocalVariable(name: "m", scope: !1291, file: !248, line: 598, type: !46)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !248, line: 596, column: 11)
!1292 = distinct !DILexicalBlock(scope: !1285, file: !248, line: 419, column: 9)
!1293 = !DILocalVariable(name: "printable", scope: !1291, file: !248, line: 600, type: !58)
!1294 = !DILocalVariable(name: "mbs", scope: !1295, file: !248, line: 609, type: !293)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !248, line: 608, column: 15)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !248, line: 602, column: 17)
!1297 = !DILocalVariable(name: "w", scope: !1298, file: !248, line: 618, type: !222)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !248, line: 617, column: 19)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !248, line: 616, column: 17)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !248, line: 616, column: 17)
!1301 = !DILocalVariable(name: "bytes", scope: !1298, file: !248, line: 619, type: !46)
!1302 = !DILocalVariable(name: "j", scope: !1303, file: !248, line: 648, type: !46)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !248, line: 648, column: 29)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !248, line: 647, column: 27)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !248, line: 645, column: 29)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !248, line: 636, column: 23)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !248, line: 628, column: 30)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !248, line: 623, column: 30)
!1309 = distinct !DILexicalBlock(scope: !1298, file: !248, line: 621, column: 25)
!1310 = !DILocalVariable(name: "ilim", scope: !1311, file: !248, line: 674, type: !46)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !248, line: 671, column: 15)
!1312 = distinct !DILexicalBlock(scope: !1291, file: !248, line: 670, column: 17)
!1313 = !DILabel(scope: !1252, name: "process_input", file: !248, line: 308)
!1314 = !DILabel(scope: !1315, name: "c_and_shell_escape", file: !248, line: 502)
!1315 = distinct !DILexicalBlock(scope: !1292, file: !248, line: 478, column: 9)
!1316 = !DILabel(scope: !1315, name: "c_escape", file: !248, line: 507)
!1317 = !DILabel(scope: !1285, name: "store_escape", file: !248, line: 709)
!1318 = !DILabel(scope: !1285, name: "store_c", file: !248, line: 712)
!1319 = !DILabel(scope: !1252, name: "force_outer_quoting_style", file: !248, line: 753)
!1320 = !DILocation(line: 0, scope: !1252)
!1321 = !DILocation(line: 258, column: 25, scope: !1252)
!1322 = !DILocation(line: 258, column: 36, scope: !1252)
!1323 = !DILocation(line: 267, column: 3, scope: !1252)
!1324 = !DILocation(line: 261, column: 10, scope: !1252)
!1325 = !DILocation(line: 262, column: 15, scope: !1252)
!1326 = !DILocation(line: 263, column: 10, scope: !1252)
!1327 = !DILocation(line: 308, column: 2, scope: !1252)
!1328 = !DILocation(line: 311, column: 3, scope: !1252)
!1329 = !DILocation(line: 318, column: 11, scope: !1281)
!1330 = !DILocation(line: 319, column: 9, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !248, line: 319, column: 9)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !248, line: 319, column: 9)
!1333 = distinct !DILexicalBlock(scope: !1281, file: !248, line: 318, column: 11)
!1334 = !DILocation(line: 319, column: 9, scope: !1332)
!1335 = !DILocation(line: 0, scope: !284, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 357, column: 26, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !248, line: 335, column: 11)
!1338 = distinct !DILexicalBlock(scope: !1280, file: !248, line: 334, column: 13)
!1339 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1336)
!1340 = !DILocation(line: 201, column: 19, scope: !1341, inlinedAt: !1336)
!1341 = distinct !DILexicalBlock(scope: !284, file: !248, line: 201, column: 7)
!1342 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1336)
!1343 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1336)
!1344 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1336)
!1345 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1336)
!1346 = !DILocalVariable(name: "ps", arg: 1, scope: !1347, file: !1098, line: 1135, type: !1350)
!1347 = distinct !DISubprogram(name: "mbszero", scope: !1098, file: !1098, line: 1135, type: !1348, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1351)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1351 = !{!1346}
!1352 = !DILocation(line: 0, scope: !1347, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1336)
!1354 = !DILocalVariable(name: "__dest", arg: 1, scope: !1355, file: !1107, line: 57, type: !43)
!1355 = distinct !DISubprogram(name: "memset", scope: !1107, file: !1107, line: 57, type: !1108, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1356)
!1356 = !{!1354, !1357, !1358}
!1357 = !DILocalVariable(name: "__ch", arg: 2, scope: !1355, file: !1107, line: 57, type: !44)
!1358 = !DILocalVariable(name: "__len", arg: 3, scope: !1355, file: !1107, line: 57, type: !46)
!1359 = !DILocation(line: 0, scope: !1355, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 1137, column: 3, scope: !1347, inlinedAt: !1353)
!1361 = !DILocation(line: 59, column: 10, scope: !1355, inlinedAt: !1360)
!1362 = !DILocation(line: 231, column: 7, scope: !1363, inlinedAt: !1336)
!1363 = distinct !DILexicalBlock(scope: !284, file: !248, line: 231, column: 7)
!1364 = !DILocation(line: 231, column: 40, scope: !1363, inlinedAt: !1336)
!1365 = !DILocation(line: 231, column: 45, scope: !1363, inlinedAt: !1336)
!1366 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1336)
!1367 = !DILocation(line: 0, scope: !284, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 358, column: 27, scope: !1337)
!1369 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1368)
!1370 = !DILocation(line: 201, column: 19, scope: !1341, inlinedAt: !1368)
!1371 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1368)
!1372 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1368)
!1373 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1368)
!1374 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1368)
!1375 = !DILocation(line: 0, scope: !1347, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1368)
!1377 = !DILocation(line: 0, scope: !1355, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 1137, column: 3, scope: !1347, inlinedAt: !1376)
!1379 = !DILocation(line: 59, column: 10, scope: !1355, inlinedAt: !1378)
!1380 = !DILocation(line: 231, column: 7, scope: !1363, inlinedAt: !1368)
!1381 = !DILocation(line: 231, column: 40, scope: !1363, inlinedAt: !1368)
!1382 = !DILocation(line: 231, column: 45, scope: !1363, inlinedAt: !1368)
!1383 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1368)
!1384 = !DILocation(line: 360, column: 13, scope: !1280)
!1385 = !DILocation(line: 0, scope: !1278)
!1386 = !DILocation(line: 361, column: 45, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1278, file: !248, line: 361, column: 11)
!1388 = !DILocation(line: 361, column: 11, scope: !1278)
!1389 = !DILocation(line: 362, column: 13, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !248, line: 362, column: 13)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !248, line: 362, column: 13)
!1392 = !DILocation(line: 362, column: 13, scope: !1391)
!1393 = !DILocation(line: 361, column: 52, scope: !1387)
!1394 = distinct !{!1394, !1388, !1395, !487}
!1395 = !DILocation(line: 362, column: 13, scope: !1278)
!1396 = !DILocation(line: 260, column: 10, scope: !1252)
!1397 = !DILocation(line: 365, column: 28, scope: !1280)
!1398 = !DILocation(line: 367, column: 7, scope: !1281)
!1399 = !DILocation(line: 370, column: 7, scope: !1281)
!1400 = !DILocation(line: 376, column: 11, scope: !1281)
!1401 = !DILocation(line: 381, column: 11, scope: !1281)
!1402 = !DILocation(line: 382, column: 9, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !248, line: 382, column: 9)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !248, line: 382, column: 9)
!1405 = distinct !DILexicalBlock(scope: !1281, file: !248, line: 381, column: 11)
!1406 = !DILocation(line: 382, column: 9, scope: !1404)
!1407 = !DILocation(line: 389, column: 7, scope: !1281)
!1408 = !DILocation(line: 392, column: 7, scope: !1281)
!1409 = !DILocation(line: 0, scope: !1283)
!1410 = !DILocation(line: 395, column: 8, scope: !1283)
!1411 = !DILocation(line: 395, column: 34, scope: !1286)
!1412 = !DILocation(line: 395, column: 26, scope: !1286)
!1413 = !DILocation(line: 395, column: 48, scope: !1286)
!1414 = !DILocation(line: 395, column: 55, scope: !1286)
!1415 = !DILocation(line: 395, column: 3, scope: !1283)
!1416 = !DILocation(line: 395, column: 67, scope: !1286)
!1417 = !DILocation(line: 0, scope: !1285)
!1418 = !DILocation(line: 402, column: 11, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1285, file: !248, line: 401, column: 11)
!1420 = !DILocation(line: 404, column: 17, scope: !1419)
!1421 = !DILocation(line: 405, column: 39, scope: !1419)
!1422 = !DILocation(line: 409, column: 32, scope: !1419)
!1423 = !DILocation(line: 405, column: 19, scope: !1419)
!1424 = !DILocation(line: 405, column: 15, scope: !1419)
!1425 = !DILocation(line: 410, column: 11, scope: !1419)
!1426 = !DILocation(line: 410, column: 25, scope: !1419)
!1427 = !DILocalVariable(name: "__s1", arg: 1, scope: !1428, file: !471, line: 974, type: !639)
!1428 = distinct !DISubprogram(name: "memeq", scope: !471, file: !471, line: 974, type: !1069, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1429)
!1429 = !{!1427, !1430, !1431}
!1430 = !DILocalVariable(name: "__s2", arg: 2, scope: !1428, file: !471, line: 974, type: !639)
!1431 = !DILocalVariable(name: "__n", arg: 3, scope: !1428, file: !471, line: 974, type: !46)
!1432 = !DILocation(line: 0, scope: !1428, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 410, column: 14, scope: !1419)
!1434 = !DILocation(line: 976, column: 11, scope: !1428, inlinedAt: !1433)
!1435 = !DILocation(line: 976, column: 10, scope: !1428, inlinedAt: !1433)
!1436 = !DILocation(line: 401, column: 11, scope: !1285)
!1437 = !DILocation(line: 417, column: 25, scope: !1285)
!1438 = !DILocation(line: 418, column: 7, scope: !1285)
!1439 = !DILocation(line: 421, column: 15, scope: !1292)
!1440 = !DILocation(line: 423, column: 15, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !248, line: 423, column: 15)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !248, line: 422, column: 13)
!1443 = distinct !DILexicalBlock(scope: !1292, file: !248, line: 421, column: 15)
!1444 = !DILocation(line: 423, column: 15, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !248, line: 423, column: 15)
!1446 = !DILocation(line: 423, column: 15, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !248, line: 423, column: 15)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !248, line: 423, column: 15)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !248, line: 423, column: 15)
!1450 = !DILocation(line: 423, column: 15, scope: !1448)
!1451 = !DILocation(line: 423, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !248, line: 423, column: 15)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !248, line: 423, column: 15)
!1454 = !DILocation(line: 423, column: 15, scope: !1453)
!1455 = !DILocation(line: 423, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !248, line: 423, column: 15)
!1457 = distinct !DILexicalBlock(scope: !1449, file: !248, line: 423, column: 15)
!1458 = !DILocation(line: 423, column: 15, scope: !1457)
!1459 = !DILocation(line: 423, column: 15, scope: !1449)
!1460 = !DILocation(line: 423, column: 15, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !248, line: 423, column: 15)
!1462 = distinct !DILexicalBlock(scope: !1441, file: !248, line: 423, column: 15)
!1463 = !DILocation(line: 423, column: 15, scope: !1462)
!1464 = !DILocation(line: 431, column: 19, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1442, file: !248, line: 430, column: 19)
!1466 = !DILocation(line: 431, column: 24, scope: !1465)
!1467 = !DILocation(line: 431, column: 28, scope: !1465)
!1468 = !DILocation(line: 431, column: 38, scope: !1465)
!1469 = !DILocation(line: 431, column: 48, scope: !1465)
!1470 = !DILocation(line: 431, column: 59, scope: !1465)
!1471 = !DILocation(line: 433, column: 19, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !248, line: 433, column: 19)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !248, line: 433, column: 19)
!1474 = distinct !DILexicalBlock(scope: !1465, file: !248, line: 432, column: 17)
!1475 = !DILocation(line: 433, column: 19, scope: !1473)
!1476 = !DILocation(line: 434, column: 19, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !248, line: 434, column: 19)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !248, line: 434, column: 19)
!1479 = !DILocation(line: 434, column: 19, scope: !1478)
!1480 = !DILocation(line: 435, column: 17, scope: !1474)
!1481 = !DILocation(line: 442, column: 20, scope: !1443)
!1482 = !DILocation(line: 447, column: 11, scope: !1292)
!1483 = !DILocation(line: 450, column: 19, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1292, file: !248, line: 448, column: 13)
!1485 = !DILocation(line: 456, column: 19, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1484, file: !248, line: 455, column: 19)
!1487 = !DILocation(line: 456, column: 24, scope: !1486)
!1488 = !DILocation(line: 456, column: 28, scope: !1486)
!1489 = !DILocation(line: 456, column: 38, scope: !1486)
!1490 = !DILocation(line: 456, column: 47, scope: !1486)
!1491 = !DILocation(line: 456, column: 41, scope: !1486)
!1492 = !DILocation(line: 456, column: 52, scope: !1486)
!1493 = !DILocation(line: 455, column: 19, scope: !1484)
!1494 = !DILocation(line: 457, column: 25, scope: !1486)
!1495 = !DILocation(line: 457, column: 17, scope: !1486)
!1496 = !DILocation(line: 464, column: 25, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1486, file: !248, line: 458, column: 19)
!1498 = !DILocation(line: 468, column: 21, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !248, line: 468, column: 21)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !248, line: 468, column: 21)
!1501 = !DILocation(line: 468, column: 21, scope: !1500)
!1502 = !DILocation(line: 469, column: 21, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !248, line: 469, column: 21)
!1504 = distinct !DILexicalBlock(scope: !1497, file: !248, line: 469, column: 21)
!1505 = !DILocation(line: 469, column: 21, scope: !1504)
!1506 = !DILocation(line: 470, column: 21, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !248, line: 470, column: 21)
!1508 = distinct !DILexicalBlock(scope: !1497, file: !248, line: 470, column: 21)
!1509 = !DILocation(line: 470, column: 21, scope: !1508)
!1510 = !DILocation(line: 471, column: 21, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !248, line: 471, column: 21)
!1512 = distinct !DILexicalBlock(scope: !1497, file: !248, line: 471, column: 21)
!1513 = !DILocation(line: 471, column: 21, scope: !1512)
!1514 = !DILocation(line: 472, column: 21, scope: !1497)
!1515 = !DILocation(line: 482, column: 33, scope: !1315)
!1516 = !DILocation(line: 483, column: 33, scope: !1315)
!1517 = !DILocation(line: 485, column: 33, scope: !1315)
!1518 = !DILocation(line: 486, column: 33, scope: !1315)
!1519 = !DILocation(line: 487, column: 33, scope: !1315)
!1520 = !DILocation(line: 490, column: 17, scope: !1315)
!1521 = !DILocation(line: 492, column: 21, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !248, line: 491, column: 15)
!1523 = distinct !DILexicalBlock(scope: !1315, file: !248, line: 490, column: 17)
!1524 = !DILocation(line: 499, column: 35, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1315, file: !248, line: 499, column: 17)
!1526 = !DILocation(line: 499, column: 57, scope: !1525)
!1527 = !DILocation(line: 0, scope: !1315)
!1528 = !DILocation(line: 502, column: 11, scope: !1315)
!1529 = !DILocation(line: 504, column: 17, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1315, file: !248, line: 503, column: 17)
!1531 = !DILocation(line: 507, column: 11, scope: !1315)
!1532 = !DILocation(line: 508, column: 17, scope: !1315)
!1533 = !DILocation(line: 517, column: 15, scope: !1292)
!1534 = !DILocation(line: 517, column: 40, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1292, file: !248, line: 517, column: 15)
!1536 = !DILocation(line: 517, column: 47, scope: !1535)
!1537 = !DILocation(line: 517, column: 18, scope: !1535)
!1538 = !DILocation(line: 521, column: 17, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1292, file: !248, line: 521, column: 15)
!1540 = !DILocation(line: 521, column: 15, scope: !1292)
!1541 = !DILocation(line: 525, column: 11, scope: !1292)
!1542 = !DILocation(line: 537, column: 15, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1292, file: !248, line: 536, column: 15)
!1544 = !DILocation(line: 536, column: 15, scope: !1292)
!1545 = !DILocation(line: 544, column: 15, scope: !1292)
!1546 = !DILocation(line: 546, column: 19, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !248, line: 545, column: 13)
!1548 = distinct !DILexicalBlock(scope: !1292, file: !248, line: 544, column: 15)
!1549 = !DILocation(line: 549, column: 19, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !248, line: 549, column: 19)
!1551 = !DILocation(line: 549, column: 30, scope: !1550)
!1552 = !DILocation(line: 558, column: 15, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !248, line: 558, column: 15)
!1554 = distinct !DILexicalBlock(scope: !1547, file: !248, line: 558, column: 15)
!1555 = !DILocation(line: 558, column: 15, scope: !1554)
!1556 = !DILocation(line: 559, column: 15, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !248, line: 559, column: 15)
!1558 = distinct !DILexicalBlock(scope: !1547, file: !248, line: 559, column: 15)
!1559 = !DILocation(line: 559, column: 15, scope: !1558)
!1560 = !DILocation(line: 560, column: 15, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !248, line: 560, column: 15)
!1562 = distinct !DILexicalBlock(scope: !1547, file: !248, line: 560, column: 15)
!1563 = !DILocation(line: 560, column: 15, scope: !1562)
!1564 = !DILocation(line: 562, column: 13, scope: !1547)
!1565 = !DILocation(line: 602, column: 17, scope: !1291)
!1566 = !DILocation(line: 0, scope: !1291)
!1567 = !DILocation(line: 605, column: 29, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1296, file: !248, line: 603, column: 15)
!1569 = !DILocation(line: 605, column: 41, scope: !1568)
!1570 = !DILocation(line: 670, column: 23, scope: !1312)
!1571 = !DILocation(line: 609, column: 17, scope: !1295)
!1572 = !DILocation(line: 609, column: 27, scope: !1295)
!1573 = !DILocation(line: 0, scope: !1347, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 609, column: 32, scope: !1295)
!1575 = !DILocation(line: 0, scope: !1355, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 1137, column: 3, scope: !1347, inlinedAt: !1574)
!1577 = !DILocation(line: 59, column: 10, scope: !1355, inlinedAt: !1576)
!1578 = !DILocation(line: 613, column: 29, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1295, file: !248, line: 613, column: 21)
!1580 = !DILocation(line: 613, column: 21, scope: !1295)
!1581 = !DILocation(line: 614, column: 29, scope: !1579)
!1582 = !DILocation(line: 614, column: 19, scope: !1579)
!1583 = !DILocation(line: 618, column: 21, scope: !1298)
!1584 = !DILocation(line: 620, column: 54, scope: !1298)
!1585 = !DILocation(line: 0, scope: !1298)
!1586 = !DILocation(line: 619, column: 36, scope: !1298)
!1587 = !DILocation(line: 621, column: 25, scope: !1298)
!1588 = !DILocation(line: 631, column: 38, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1307, file: !248, line: 629, column: 23)
!1590 = !DILocation(line: 631, column: 48, scope: !1589)
!1591 = !DILocation(line: 665, column: 19, scope: !1299)
!1592 = !DILocation(line: 666, column: 15, scope: !1296)
!1593 = !DILocation(line: 626, column: 25, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1308, file: !248, line: 624, column: 23)
!1595 = !DILocation(line: 631, column: 51, scope: !1589)
!1596 = !DILocation(line: 631, column: 25, scope: !1589)
!1597 = !DILocation(line: 632, column: 28, scope: !1589)
!1598 = !DILocation(line: 631, column: 34, scope: !1589)
!1599 = distinct !{!1599, !1596, !1597, !487}
!1600 = !DILocation(line: 646, column: 29, scope: !1305)
!1601 = !DILocation(line: 0, scope: !1303)
!1602 = !DILocation(line: 649, column: 49, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1303, file: !248, line: 648, column: 29)
!1604 = !DILocation(line: 649, column: 39, scope: !1603)
!1605 = !DILocation(line: 649, column: 31, scope: !1603)
!1606 = !DILocation(line: 648, column: 60, scope: !1603)
!1607 = !DILocation(line: 648, column: 50, scope: !1603)
!1608 = !DILocation(line: 648, column: 29, scope: !1303)
!1609 = distinct !{!1609, !1608, !1610, !487}
!1610 = !DILocation(line: 654, column: 33, scope: !1303)
!1611 = !DILocation(line: 657, column: 43, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1306, file: !248, line: 657, column: 29)
!1613 = !DILocalVariable(name: "wc", arg: 1, scope: !1614, file: !1615, line: 865, type: !1618)
!1614 = distinct !DISubprogram(name: "c32isprint", scope: !1615, file: !1615, line: 865, type: !1616, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1620)
!1615 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!44, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1619, line: 20, baseType: !14)
!1619 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1620 = !{!1613}
!1621 = !DILocation(line: 0, scope: !1614, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 657, column: 31, scope: !1612)
!1623 = !DILocation(line: 871, column: 10, scope: !1614, inlinedAt: !1622)
!1624 = !DILocation(line: 657, column: 31, scope: !1612)
!1625 = !DILocation(line: 664, column: 23, scope: !1298)
!1626 = !DILocation(line: 753, column: 2, scope: !1252)
!1627 = !DILocation(line: 756, column: 51, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1252, file: !248, line: 756, column: 7)
!1629 = !DILocation(line: 670, column: 19, scope: !1312)
!1630 = !DILocation(line: 670, column: 45, scope: !1312)
!1631 = !DILocation(line: 674, column: 33, scope: !1311)
!1632 = !DILocation(line: 0, scope: !1311)
!1633 = !DILocation(line: 676, column: 17, scope: !1311)
!1634 = !DILocation(line: 398, column: 12, scope: !1285)
!1635 = !DILocation(line: 678, column: 43, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !248, line: 678, column: 25)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !248, line: 677, column: 19)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !248, line: 676, column: 17)
!1639 = distinct !DILexicalBlock(scope: !1311, file: !248, line: 676, column: 17)
!1640 = !DILocation(line: 680, column: 25, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !248, line: 680, column: 25)
!1642 = distinct !DILexicalBlock(scope: !1636, file: !248, line: 679, column: 23)
!1643 = !DILocation(line: 680, column: 25, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !248, line: 680, column: 25)
!1645 = !DILocation(line: 680, column: 25, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !248, line: 680, column: 25)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !248, line: 680, column: 25)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !248, line: 680, column: 25)
!1649 = !DILocation(line: 680, column: 25, scope: !1647)
!1650 = !DILocation(line: 680, column: 25, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !248, line: 680, column: 25)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !248, line: 680, column: 25)
!1653 = !DILocation(line: 680, column: 25, scope: !1652)
!1654 = !DILocation(line: 680, column: 25, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !248, line: 680, column: 25)
!1656 = distinct !DILexicalBlock(scope: !1648, file: !248, line: 680, column: 25)
!1657 = !DILocation(line: 680, column: 25, scope: !1656)
!1658 = !DILocation(line: 680, column: 25, scope: !1648)
!1659 = !DILocation(line: 680, column: 25, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !248, line: 680, column: 25)
!1661 = distinct !DILexicalBlock(scope: !1641, file: !248, line: 680, column: 25)
!1662 = !DILocation(line: 680, column: 25, scope: !1661)
!1663 = !DILocation(line: 681, column: 25, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !248, line: 681, column: 25)
!1665 = distinct !DILexicalBlock(scope: !1642, file: !248, line: 681, column: 25)
!1666 = !DILocation(line: 681, column: 25, scope: !1665)
!1667 = !DILocation(line: 682, column: 25, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !248, line: 682, column: 25)
!1669 = distinct !DILexicalBlock(scope: !1642, file: !248, line: 682, column: 25)
!1670 = !DILocation(line: 682, column: 25, scope: !1669)
!1671 = !DILocation(line: 683, column: 38, scope: !1642)
!1672 = !DILocation(line: 683, column: 33, scope: !1642)
!1673 = !DILocation(line: 684, column: 23, scope: !1642)
!1674 = !DILocation(line: 685, column: 30, scope: !1636)
!1675 = !DILocation(line: 687, column: 25, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !248, line: 687, column: 25)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !248, line: 687, column: 25)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !248, line: 686, column: 23)
!1679 = distinct !DILexicalBlock(scope: !1636, file: !248, line: 685, column: 30)
!1680 = !DILocation(line: 687, column: 25, scope: !1677)
!1681 = !DILocation(line: 689, column: 23, scope: !1678)
!1682 = !DILocation(line: 690, column: 35, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1637, file: !248, line: 690, column: 25)
!1684 = !DILocation(line: 690, column: 30, scope: !1683)
!1685 = !DILocation(line: 690, column: 25, scope: !1637)
!1686 = !DILocation(line: 692, column: 21, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !248, line: 692, column: 21)
!1688 = distinct !DILexicalBlock(scope: !1637, file: !248, line: 692, column: 21)
!1689 = !DILocation(line: 692, column: 21, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !248, line: 692, column: 21)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !248, line: 692, column: 21)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !248, line: 692, column: 21)
!1693 = !DILocation(line: 692, column: 21, scope: !1691)
!1694 = !DILocation(line: 692, column: 21, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !248, line: 692, column: 21)
!1696 = distinct !DILexicalBlock(scope: !1692, file: !248, line: 692, column: 21)
!1697 = !DILocation(line: 692, column: 21, scope: !1696)
!1698 = !DILocation(line: 692, column: 21, scope: !1692)
!1699 = !DILocation(line: 0, scope: !1637)
!1700 = !DILocation(line: 693, column: 21, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !248, line: 693, column: 21)
!1702 = distinct !DILexicalBlock(scope: !1637, file: !248, line: 693, column: 21)
!1703 = !DILocation(line: 693, column: 21, scope: !1702)
!1704 = !DILocation(line: 694, column: 25, scope: !1637)
!1705 = !DILocation(line: 676, column: 17, scope: !1638)
!1706 = distinct !{!1706, !1707, !1708}
!1707 = !DILocation(line: 676, column: 17, scope: !1639)
!1708 = !DILocation(line: 695, column: 19, scope: !1639)
!1709 = !DILocation(line: 409, column: 30, scope: !1419)
!1710 = !DILocation(line: 702, column: 34, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1285, file: !248, line: 702, column: 11)
!1712 = !DILocation(line: 704, column: 14, scope: !1711)
!1713 = !DILocation(line: 705, column: 14, scope: !1711)
!1714 = !DILocation(line: 705, column: 35, scope: !1711)
!1715 = !DILocation(line: 705, column: 17, scope: !1711)
!1716 = !DILocation(line: 705, column: 47, scope: !1711)
!1717 = !DILocation(line: 705, column: 65, scope: !1711)
!1718 = !DILocation(line: 706, column: 11, scope: !1711)
!1719 = !DILocation(line: 702, column: 11, scope: !1285)
!1720 = !DILocation(line: 395, column: 15, scope: !1283)
!1721 = !DILocation(line: 709, column: 5, scope: !1285)
!1722 = !DILocation(line: 710, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1285, file: !248, line: 710, column: 7)
!1724 = !DILocation(line: 710, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1723, file: !248, line: 710, column: 7)
!1726 = !DILocation(line: 710, column: 7, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !248, line: 710, column: 7)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !248, line: 710, column: 7)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !248, line: 710, column: 7)
!1730 = !DILocation(line: 710, column: 7, scope: !1728)
!1731 = !DILocation(line: 710, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !248, line: 710, column: 7)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !248, line: 710, column: 7)
!1734 = !DILocation(line: 710, column: 7, scope: !1733)
!1735 = !DILocation(line: 710, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !248, line: 710, column: 7)
!1737 = distinct !DILexicalBlock(scope: !1729, file: !248, line: 710, column: 7)
!1738 = !DILocation(line: 710, column: 7, scope: !1737)
!1739 = !DILocation(line: 710, column: 7, scope: !1729)
!1740 = !DILocation(line: 710, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !248, line: 710, column: 7)
!1742 = distinct !DILexicalBlock(scope: !1723, file: !248, line: 710, column: 7)
!1743 = !DILocation(line: 710, column: 7, scope: !1742)
!1744 = !DILocation(line: 712, column: 5, scope: !1285)
!1745 = !DILocation(line: 713, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !248, line: 713, column: 7)
!1747 = distinct !DILexicalBlock(scope: !1285, file: !248, line: 713, column: 7)
!1748 = !DILocation(line: 417, column: 21, scope: !1285)
!1749 = !DILocation(line: 713, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !248, line: 713, column: 7)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !248, line: 713, column: 7)
!1752 = distinct !DILexicalBlock(scope: !1746, file: !248, line: 713, column: 7)
!1753 = !DILocation(line: 713, column: 7, scope: !1751)
!1754 = !DILocation(line: 713, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !248, line: 713, column: 7)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !248, line: 713, column: 7)
!1757 = !DILocation(line: 713, column: 7, scope: !1756)
!1758 = !DILocation(line: 713, column: 7, scope: !1752)
!1759 = !DILocation(line: 714, column: 7, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !248, line: 714, column: 7)
!1761 = distinct !DILexicalBlock(scope: !1285, file: !248, line: 714, column: 7)
!1762 = !DILocation(line: 714, column: 7, scope: !1761)
!1763 = !DILocation(line: 716, column: 11, scope: !1285)
!1764 = !DILocation(line: 718, column: 5, scope: !1286)
!1765 = !DILocation(line: 395, column: 82, scope: !1286)
!1766 = !DILocation(line: 395, column: 3, scope: !1286)
!1767 = distinct !{!1767, !1415, !1768, !487}
!1768 = !DILocation(line: 718, column: 5, scope: !1283)
!1769 = !DILocation(line: 720, column: 11, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1252, file: !248, line: 720, column: 7)
!1771 = !DILocation(line: 720, column: 16, scope: !1770)
!1772 = !DILocation(line: 728, column: 51, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1252, file: !248, line: 728, column: 7)
!1774 = !DILocation(line: 731, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1773, file: !248, line: 730, column: 5)
!1776 = !DILocation(line: 732, column: 16, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1775, file: !248, line: 731, column: 11)
!1778 = !DILocation(line: 732, column: 9, scope: !1777)
!1779 = !DILocation(line: 736, column: 18, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1777, file: !248, line: 736, column: 16)
!1781 = !DILocation(line: 736, column: 29, scope: !1780)
!1782 = !DILocation(line: 745, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1252, file: !248, line: 745, column: 7)
!1784 = !DILocation(line: 745, column: 20, scope: !1783)
!1785 = !DILocation(line: 746, column: 12, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !248, line: 746, column: 5)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !248, line: 746, column: 5)
!1788 = !DILocation(line: 746, column: 5, scope: !1787)
!1789 = !DILocation(line: 747, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !248, line: 747, column: 7)
!1791 = distinct !DILexicalBlock(scope: !1786, file: !248, line: 747, column: 7)
!1792 = !DILocation(line: 747, column: 7, scope: !1791)
!1793 = !DILocation(line: 746, column: 39, scope: !1786)
!1794 = distinct !{!1794, !1788, !1795, !487}
!1795 = !DILocation(line: 747, column: 7, scope: !1787)
!1796 = !DILocation(line: 749, column: 11, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1252, file: !248, line: 749, column: 7)
!1798 = !DILocation(line: 749, column: 7, scope: !1252)
!1799 = !DILocation(line: 750, column: 5, scope: !1797)
!1800 = !DILocation(line: 750, column: 17, scope: !1797)
!1801 = !DILocation(line: 756, column: 21, scope: !1628)
!1802 = !DILocation(line: 760, column: 42, scope: !1252)
!1803 = !DILocation(line: 758, column: 10, scope: !1252)
!1804 = !DILocation(line: 758, column: 3, scope: !1252)
!1805 = !DILocation(line: 762, column: 1, scope: !1252)
!1806 = !DISubprogram(name: "iswprint", scope: !1807, file: !1807, line: 120, type: !1616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!1807 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1808 = distinct !DISubprogram(name: "quotearg_alloc", scope: !248, file: !248, line: 788, type: !1809, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!79, !6, !46, !1144}
!1811 = !{!1812, !1813, !1814}
!1812 = !DILocalVariable(name: "arg", arg: 1, scope: !1808, file: !248, line: 788, type: !6)
!1813 = !DILocalVariable(name: "argsize", arg: 2, scope: !1808, file: !248, line: 788, type: !46)
!1814 = !DILocalVariable(name: "o", arg: 3, scope: !1808, file: !248, line: 789, type: !1144)
!1815 = !DILocation(line: 0, scope: !1808)
!1816 = !DILocalVariable(name: "arg", arg: 1, scope: !1817, file: !248, line: 801, type: !6)
!1817 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !248, file: !248, line: 801, type: !1818, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!79, !6, !46, !366, !1144}
!1820 = !{!1816, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828}
!1821 = !DILocalVariable(name: "argsize", arg: 2, scope: !1817, file: !248, line: 801, type: !46)
!1822 = !DILocalVariable(name: "size", arg: 3, scope: !1817, file: !248, line: 801, type: !366)
!1823 = !DILocalVariable(name: "o", arg: 4, scope: !1817, file: !248, line: 802, type: !1144)
!1824 = !DILocalVariable(name: "p", scope: !1817, file: !248, line: 804, type: !1144)
!1825 = !DILocalVariable(name: "saved_errno", scope: !1817, file: !248, line: 805, type: !44)
!1826 = !DILocalVariable(name: "flags", scope: !1817, file: !248, line: 807, type: !44)
!1827 = !DILocalVariable(name: "bufsize", scope: !1817, file: !248, line: 808, type: !46)
!1828 = !DILocalVariable(name: "buf", scope: !1817, file: !248, line: 812, type: !79)
!1829 = !DILocation(line: 0, scope: !1817, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 791, column: 10, scope: !1808)
!1831 = !DILocation(line: 804, column: 37, scope: !1817, inlinedAt: !1830)
!1832 = !DILocation(line: 805, column: 21, scope: !1817, inlinedAt: !1830)
!1833 = !DILocation(line: 807, column: 18, scope: !1817, inlinedAt: !1830)
!1834 = !DILocation(line: 807, column: 24, scope: !1817, inlinedAt: !1830)
!1835 = !DILocation(line: 808, column: 72, scope: !1817, inlinedAt: !1830)
!1836 = !DILocation(line: 809, column: 53, scope: !1817, inlinedAt: !1830)
!1837 = !DILocation(line: 810, column: 49, scope: !1817, inlinedAt: !1830)
!1838 = !DILocation(line: 811, column: 49, scope: !1817, inlinedAt: !1830)
!1839 = !DILocation(line: 808, column: 20, scope: !1817, inlinedAt: !1830)
!1840 = !DILocation(line: 811, column: 62, scope: !1817, inlinedAt: !1830)
!1841 = !DILocation(line: 812, column: 15, scope: !1817, inlinedAt: !1830)
!1842 = !DILocation(line: 813, column: 60, scope: !1817, inlinedAt: !1830)
!1843 = !DILocation(line: 815, column: 32, scope: !1817, inlinedAt: !1830)
!1844 = !DILocation(line: 815, column: 47, scope: !1817, inlinedAt: !1830)
!1845 = !DILocation(line: 813, column: 3, scope: !1817, inlinedAt: !1830)
!1846 = !DILocation(line: 816, column: 9, scope: !1817, inlinedAt: !1830)
!1847 = !DILocation(line: 791, column: 3, scope: !1808)
!1848 = !DILocation(line: 0, scope: !1817)
!1849 = !DILocation(line: 804, column: 37, scope: !1817)
!1850 = !DILocation(line: 805, column: 21, scope: !1817)
!1851 = !DILocation(line: 807, column: 18, scope: !1817)
!1852 = !DILocation(line: 807, column: 27, scope: !1817)
!1853 = !DILocation(line: 807, column: 24, scope: !1817)
!1854 = !DILocation(line: 808, column: 72, scope: !1817)
!1855 = !DILocation(line: 809, column: 53, scope: !1817)
!1856 = !DILocation(line: 810, column: 49, scope: !1817)
!1857 = !DILocation(line: 811, column: 49, scope: !1817)
!1858 = !DILocation(line: 808, column: 20, scope: !1817)
!1859 = !DILocation(line: 811, column: 62, scope: !1817)
!1860 = !DILocation(line: 812, column: 15, scope: !1817)
!1861 = !DILocation(line: 813, column: 60, scope: !1817)
!1862 = !DILocation(line: 815, column: 32, scope: !1817)
!1863 = !DILocation(line: 815, column: 47, scope: !1817)
!1864 = !DILocation(line: 813, column: 3, scope: !1817)
!1865 = !DILocation(line: 816, column: 9, scope: !1817)
!1866 = !DILocation(line: 817, column: 7, scope: !1817)
!1867 = !DILocation(line: 818, column: 11, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1817, file: !248, line: 817, column: 7)
!1869 = !{!874, !874, i64 0}
!1870 = !DILocation(line: 818, column: 5, scope: !1868)
!1871 = !DILocation(line: 819, column: 3, scope: !1817)
!1872 = distinct !DISubprogram(name: "quotearg_free", scope: !248, file: !248, line: 837, type: !184, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1873)
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "sv", scope: !1872, file: !248, line: 839, type: !307)
!1875 = !DILocalVariable(name: "i", scope: !1876, file: !248, line: 840, type: !44)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !248, line: 840, column: 3)
!1877 = !DILocation(line: 839, column: 24, scope: !1872)
!1878 = !DILocation(line: 0, scope: !1872)
!1879 = !DILocation(line: 0, scope: !1876)
!1880 = !DILocation(line: 840, column: 21, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1876, file: !248, line: 840, column: 3)
!1882 = !DILocation(line: 840, column: 3, scope: !1876)
!1883 = !DILocation(line: 842, column: 13, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1872, file: !248, line: 842, column: 7)
!1885 = !{!1886, !436, i64 8}
!1886 = !{!"slotvec", !874, i64 0, !436, i64 8}
!1887 = !DILocation(line: 842, column: 17, scope: !1884)
!1888 = !DILocation(line: 842, column: 7, scope: !1872)
!1889 = !DILocation(line: 841, column: 17, scope: !1881)
!1890 = !DILocation(line: 841, column: 5, scope: !1881)
!1891 = !DILocation(line: 840, column: 32, scope: !1881)
!1892 = distinct !{!1892, !1882, !1893, !487}
!1893 = !DILocation(line: 841, column: 20, scope: !1876)
!1894 = !DILocation(line: 844, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1884, file: !248, line: 843, column: 5)
!1896 = !DILocation(line: 845, column: 21, scope: !1895)
!1897 = !{!1886, !874, i64 0}
!1898 = !DILocation(line: 846, column: 20, scope: !1895)
!1899 = !DILocation(line: 847, column: 5, scope: !1895)
!1900 = !DILocation(line: 848, column: 10, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1872, file: !248, line: 848, column: 7)
!1902 = !DILocation(line: 848, column: 7, scope: !1872)
!1903 = !DILocation(line: 850, column: 13, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !248, line: 849, column: 5)
!1905 = !DILocation(line: 850, column: 7, scope: !1904)
!1906 = !DILocation(line: 851, column: 15, scope: !1904)
!1907 = !DILocation(line: 852, column: 5, scope: !1904)
!1908 = !DILocation(line: 853, column: 10, scope: !1872)
!1909 = !DILocation(line: 854, column: 1, scope: !1872)
!1910 = distinct !DISubprogram(name: "quotearg_n", scope: !248, file: !248, line: 919, type: !629, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1911)
!1911 = !{!1912, !1913}
!1912 = !DILocalVariable(name: "n", arg: 1, scope: !1910, file: !248, line: 919, type: !44)
!1913 = !DILocalVariable(name: "arg", arg: 2, scope: !1910, file: !248, line: 919, type: !6)
!1914 = !DILocation(line: 0, scope: !1910)
!1915 = !DILocation(line: 921, column: 10, scope: !1910)
!1916 = !DILocation(line: 921, column: 3, scope: !1910)
!1917 = distinct !DISubprogram(name: "quotearg_n_options", scope: !248, file: !248, line: 866, type: !1918, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!79, !44, !6, !46, !1144}
!1920 = !{!1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1931, !1932, !1934, !1935, !1936}
!1921 = !DILocalVariable(name: "n", arg: 1, scope: !1917, file: !248, line: 866, type: !44)
!1922 = !DILocalVariable(name: "arg", arg: 2, scope: !1917, file: !248, line: 866, type: !6)
!1923 = !DILocalVariable(name: "argsize", arg: 3, scope: !1917, file: !248, line: 866, type: !46)
!1924 = !DILocalVariable(name: "options", arg: 4, scope: !1917, file: !248, line: 867, type: !1144)
!1925 = !DILocalVariable(name: "saved_errno", scope: !1917, file: !248, line: 869, type: !44)
!1926 = !DILocalVariable(name: "sv", scope: !1917, file: !248, line: 871, type: !307)
!1927 = !DILocalVariable(name: "nslots_max", scope: !1917, file: !248, line: 873, type: !44)
!1928 = !DILocalVariable(name: "preallocated", scope: !1929, file: !248, line: 879, type: !58)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !248, line: 878, column: 5)
!1930 = distinct !DILexicalBlock(scope: !1917, file: !248, line: 877, column: 7)
!1931 = !DILocalVariable(name: "new_nslots", scope: !1929, file: !248, line: 880, type: !379)
!1932 = !DILocalVariable(name: "size", scope: !1933, file: !248, line: 891, type: !46)
!1933 = distinct !DILexicalBlock(scope: !1917, file: !248, line: 890, column: 3)
!1934 = !DILocalVariable(name: "val", scope: !1933, file: !248, line: 892, type: !79)
!1935 = !DILocalVariable(name: "flags", scope: !1933, file: !248, line: 894, type: !44)
!1936 = !DILocalVariable(name: "qsize", scope: !1933, file: !248, line: 895, type: !46)
!1937 = !DILocation(line: 0, scope: !1917)
!1938 = !DILocation(line: 869, column: 21, scope: !1917)
!1939 = !DILocation(line: 871, column: 24, scope: !1917)
!1940 = !DILocation(line: 874, column: 17, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1917, file: !248, line: 874, column: 7)
!1942 = !DILocation(line: 875, column: 5, scope: !1941)
!1943 = !DILocation(line: 877, column: 7, scope: !1930)
!1944 = !DILocation(line: 877, column: 14, scope: !1930)
!1945 = !DILocation(line: 877, column: 7, scope: !1917)
!1946 = !DILocation(line: 879, column: 31, scope: !1929)
!1947 = !DILocation(line: 0, scope: !1929)
!1948 = !DILocation(line: 880, column: 7, scope: !1929)
!1949 = !DILocation(line: 880, column: 26, scope: !1929)
!1950 = !DILocation(line: 880, column: 13, scope: !1929)
!1951 = !DILocation(line: 882, column: 31, scope: !1929)
!1952 = !DILocation(line: 883, column: 33, scope: !1929)
!1953 = !DILocation(line: 883, column: 42, scope: !1929)
!1954 = !DILocation(line: 883, column: 31, scope: !1929)
!1955 = !DILocation(line: 882, column: 22, scope: !1929)
!1956 = !DILocation(line: 882, column: 15, scope: !1929)
!1957 = !DILocation(line: 884, column: 11, scope: !1929)
!1958 = !DILocation(line: 885, column: 15, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1929, file: !248, line: 884, column: 11)
!1960 = !{i64 0, i64 8, !1869, i64 8, i64 8, !435}
!1961 = !DILocation(line: 885, column: 9, scope: !1959)
!1962 = !DILocation(line: 886, column: 20, scope: !1929)
!1963 = !DILocation(line: 886, column: 18, scope: !1929)
!1964 = !DILocation(line: 886, column: 15, scope: !1929)
!1965 = !DILocation(line: 886, column: 32, scope: !1929)
!1966 = !DILocation(line: 886, column: 43, scope: !1929)
!1967 = !DILocation(line: 886, column: 53, scope: !1929)
!1968 = !DILocation(line: 0, scope: !1355, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 886, column: 7, scope: !1929)
!1970 = !DILocation(line: 59, column: 10, scope: !1355, inlinedAt: !1969)
!1971 = !DILocation(line: 887, column: 16, scope: !1929)
!1972 = !DILocation(line: 887, column: 14, scope: !1929)
!1973 = !DILocation(line: 888, column: 5, scope: !1930)
!1974 = !DILocation(line: 888, column: 5, scope: !1929)
!1975 = !DILocation(line: 891, column: 19, scope: !1933)
!1976 = !DILocation(line: 891, column: 25, scope: !1933)
!1977 = !DILocation(line: 0, scope: !1933)
!1978 = !DILocation(line: 892, column: 23, scope: !1933)
!1979 = !DILocation(line: 894, column: 26, scope: !1933)
!1980 = !DILocation(line: 894, column: 32, scope: !1933)
!1981 = !DILocation(line: 896, column: 55, scope: !1933)
!1982 = !DILocation(line: 897, column: 46, scope: !1933)
!1983 = !DILocation(line: 898, column: 55, scope: !1933)
!1984 = !DILocation(line: 899, column: 55, scope: !1933)
!1985 = !DILocation(line: 895, column: 20, scope: !1933)
!1986 = !DILocation(line: 901, column: 14, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1933, file: !248, line: 901, column: 9)
!1988 = !DILocation(line: 901, column: 9, scope: !1933)
!1989 = !DILocation(line: 903, column: 35, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !248, line: 902, column: 7)
!1991 = !DILocation(line: 903, column: 20, scope: !1990)
!1992 = !DILocation(line: 904, column: 17, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1990, file: !248, line: 904, column: 13)
!1994 = !DILocation(line: 904, column: 13, scope: !1990)
!1995 = !DILocation(line: 905, column: 11, scope: !1993)
!1996 = !DILocation(line: 906, column: 27, scope: !1990)
!1997 = !DILocation(line: 906, column: 19, scope: !1990)
!1998 = !DILocation(line: 907, column: 69, scope: !1990)
!1999 = !DILocation(line: 909, column: 44, scope: !1990)
!2000 = !DILocation(line: 910, column: 44, scope: !1990)
!2001 = !DILocation(line: 907, column: 9, scope: !1990)
!2002 = !DILocation(line: 911, column: 7, scope: !1990)
!2003 = !DILocation(line: 913, column: 11, scope: !1933)
!2004 = !DILocation(line: 914, column: 5, scope: !1933)
!2005 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !248, file: !248, line: 925, type: !2006, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!79, !44, !6, !46}
!2008 = !{!2009, !2010, !2011}
!2009 = !DILocalVariable(name: "n", arg: 1, scope: !2005, file: !248, line: 925, type: !44)
!2010 = !DILocalVariable(name: "arg", arg: 2, scope: !2005, file: !248, line: 925, type: !6)
!2011 = !DILocalVariable(name: "argsize", arg: 3, scope: !2005, file: !248, line: 925, type: !46)
!2012 = !DILocation(line: 0, scope: !2005)
!2013 = !DILocation(line: 927, column: 10, scope: !2005)
!2014 = !DILocation(line: 927, column: 3, scope: !2005)
!2015 = distinct !DISubprogram(name: "quotearg", scope: !248, file: !248, line: 931, type: !633, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2016)
!2016 = !{!2017}
!2017 = !DILocalVariable(name: "arg", arg: 1, scope: !2015, file: !248, line: 931, type: !6)
!2018 = !DILocation(line: 0, scope: !2015)
!2019 = !DILocation(line: 0, scope: !1910, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 933, column: 10, scope: !2015)
!2021 = !DILocation(line: 921, column: 10, scope: !1910, inlinedAt: !2020)
!2022 = !DILocation(line: 933, column: 3, scope: !2015)
!2023 = distinct !DISubprogram(name: "quotearg_mem", scope: !248, file: !248, line: 937, type: !2024, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!79, !6, !46}
!2026 = !{!2027, !2028}
!2027 = !DILocalVariable(name: "arg", arg: 1, scope: !2023, file: !248, line: 937, type: !6)
!2028 = !DILocalVariable(name: "argsize", arg: 2, scope: !2023, file: !248, line: 937, type: !46)
!2029 = !DILocation(line: 0, scope: !2023)
!2030 = !DILocation(line: 0, scope: !2005, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 939, column: 10, scope: !2023)
!2032 = !DILocation(line: 927, column: 10, scope: !2005, inlinedAt: !2031)
!2033 = !DILocation(line: 939, column: 3, scope: !2023)
!2034 = distinct !DISubprogram(name: "quotearg_n_style", scope: !248, file: !248, line: 943, type: !2035, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!79, !44, !12, !6}
!2037 = !{!2038, !2039, !2040, !2041}
!2038 = !DILocalVariable(name: "n", arg: 1, scope: !2034, file: !248, line: 943, type: !44)
!2039 = !DILocalVariable(name: "s", arg: 2, scope: !2034, file: !248, line: 943, type: !12)
!2040 = !DILocalVariable(name: "arg", arg: 3, scope: !2034, file: !248, line: 943, type: !6)
!2041 = !DILocalVariable(name: "o", scope: !2034, file: !248, line: 945, type: !1145)
!2042 = !DILocation(line: 0, scope: !2034)
!2043 = !DILocation(line: 945, column: 3, scope: !2034)
!2044 = !DILocation(line: 945, column: 32, scope: !2034)
!2045 = !{!2046}
!2046 = distinct !{!2046, !2047, !"quoting_options_from_style: argument 0"}
!2047 = distinct !{!2047, !"quoting_options_from_style"}
!2048 = !DILocation(line: 945, column: 36, scope: !2034)
!2049 = !DILocalVariable(name: "style", arg: 1, scope: !2050, file: !248, line: 183, type: !12)
!2050 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !248, file: !248, line: 183, type: !2051, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!265, !12}
!2053 = !{!2049, !2054}
!2054 = !DILocalVariable(name: "o", scope: !2050, file: !248, line: 185, type: !265)
!2055 = !DILocation(line: 0, scope: !2050, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 945, column: 36, scope: !2034)
!2057 = !DILocation(line: 185, column: 26, scope: !2050, inlinedAt: !2056)
!2058 = !DILocation(line: 186, column: 13, scope: !2059, inlinedAt: !2056)
!2059 = distinct !DILexicalBlock(scope: !2050, file: !248, line: 186, column: 7)
!2060 = !DILocation(line: 186, column: 7, scope: !2050, inlinedAt: !2056)
!2061 = !DILocation(line: 187, column: 5, scope: !2059, inlinedAt: !2056)
!2062 = !DILocation(line: 188, column: 5, scope: !2050, inlinedAt: !2056)
!2063 = !DILocation(line: 188, column: 11, scope: !2050, inlinedAt: !2056)
!2064 = !DILocation(line: 946, column: 10, scope: !2034)
!2065 = !DILocation(line: 947, column: 1, scope: !2034)
!2066 = !DILocation(line: 946, column: 3, scope: !2034)
!2067 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !248, file: !248, line: 950, type: !2068, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!79, !44, !12, !6, !46}
!2070 = !{!2071, !2072, !2073, !2074, !2075}
!2071 = !DILocalVariable(name: "n", arg: 1, scope: !2067, file: !248, line: 950, type: !44)
!2072 = !DILocalVariable(name: "s", arg: 2, scope: !2067, file: !248, line: 950, type: !12)
!2073 = !DILocalVariable(name: "arg", arg: 3, scope: !2067, file: !248, line: 951, type: !6)
!2074 = !DILocalVariable(name: "argsize", arg: 4, scope: !2067, file: !248, line: 951, type: !46)
!2075 = !DILocalVariable(name: "o", scope: !2067, file: !248, line: 953, type: !1145)
!2076 = !DILocation(line: 0, scope: !2067)
!2077 = !DILocation(line: 953, column: 3, scope: !2067)
!2078 = !DILocation(line: 953, column: 32, scope: !2067)
!2079 = !{!2080}
!2080 = distinct !{!2080, !2081, !"quoting_options_from_style: argument 0"}
!2081 = distinct !{!2081, !"quoting_options_from_style"}
!2082 = !DILocation(line: 953, column: 36, scope: !2067)
!2083 = !DILocation(line: 0, scope: !2050, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 953, column: 36, scope: !2067)
!2085 = !DILocation(line: 185, column: 26, scope: !2050, inlinedAt: !2084)
!2086 = !DILocation(line: 186, column: 13, scope: !2059, inlinedAt: !2084)
!2087 = !DILocation(line: 186, column: 7, scope: !2050, inlinedAt: !2084)
!2088 = !DILocation(line: 187, column: 5, scope: !2059, inlinedAt: !2084)
!2089 = !DILocation(line: 188, column: 5, scope: !2050, inlinedAt: !2084)
!2090 = !DILocation(line: 188, column: 11, scope: !2050, inlinedAt: !2084)
!2091 = !DILocation(line: 954, column: 10, scope: !2067)
!2092 = !DILocation(line: 955, column: 1, scope: !2067)
!2093 = !DILocation(line: 954, column: 3, scope: !2067)
!2094 = distinct !DISubprogram(name: "quotearg_style", scope: !248, file: !248, line: 958, type: !2095, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!79, !12, !6}
!2097 = !{!2098, !2099}
!2098 = !DILocalVariable(name: "s", arg: 1, scope: !2094, file: !248, line: 958, type: !12)
!2099 = !DILocalVariable(name: "arg", arg: 2, scope: !2094, file: !248, line: 958, type: !6)
!2100 = !DILocation(line: 0, scope: !2094)
!2101 = !DILocation(line: 0, scope: !2034, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 960, column: 10, scope: !2094)
!2103 = !DILocation(line: 945, column: 3, scope: !2034, inlinedAt: !2102)
!2104 = !DILocation(line: 945, column: 32, scope: !2034, inlinedAt: !2102)
!2105 = !{!2106}
!2106 = distinct !{!2106, !2107, !"quoting_options_from_style: argument 0"}
!2107 = distinct !{!2107, !"quoting_options_from_style"}
!2108 = !DILocation(line: 945, column: 36, scope: !2034, inlinedAt: !2102)
!2109 = !DILocation(line: 0, scope: !2050, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 945, column: 36, scope: !2034, inlinedAt: !2102)
!2111 = !DILocation(line: 185, column: 26, scope: !2050, inlinedAt: !2110)
!2112 = !DILocation(line: 186, column: 13, scope: !2059, inlinedAt: !2110)
!2113 = !DILocation(line: 186, column: 7, scope: !2050, inlinedAt: !2110)
!2114 = !DILocation(line: 187, column: 5, scope: !2059, inlinedAt: !2110)
!2115 = !DILocation(line: 188, column: 5, scope: !2050, inlinedAt: !2110)
!2116 = !DILocation(line: 188, column: 11, scope: !2050, inlinedAt: !2110)
!2117 = !DILocation(line: 946, column: 10, scope: !2034, inlinedAt: !2102)
!2118 = !DILocation(line: 947, column: 1, scope: !2034, inlinedAt: !2102)
!2119 = !DILocation(line: 960, column: 3, scope: !2094)
!2120 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !248, file: !248, line: 964, type: !2121, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!79, !12, !6, !46}
!2123 = !{!2124, !2125, !2126}
!2124 = !DILocalVariable(name: "s", arg: 1, scope: !2120, file: !248, line: 964, type: !12)
!2125 = !DILocalVariable(name: "arg", arg: 2, scope: !2120, file: !248, line: 964, type: !6)
!2126 = !DILocalVariable(name: "argsize", arg: 3, scope: !2120, file: !248, line: 964, type: !46)
!2127 = !DILocation(line: 0, scope: !2120)
!2128 = !DILocation(line: 0, scope: !2067, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 966, column: 10, scope: !2120)
!2130 = !DILocation(line: 953, column: 3, scope: !2067, inlinedAt: !2129)
!2131 = !DILocation(line: 953, column: 32, scope: !2067, inlinedAt: !2129)
!2132 = !{!2133}
!2133 = distinct !{!2133, !2134, !"quoting_options_from_style: argument 0"}
!2134 = distinct !{!2134, !"quoting_options_from_style"}
!2135 = !DILocation(line: 953, column: 36, scope: !2067, inlinedAt: !2129)
!2136 = !DILocation(line: 0, scope: !2050, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 953, column: 36, scope: !2067, inlinedAt: !2129)
!2138 = !DILocation(line: 185, column: 26, scope: !2050, inlinedAt: !2137)
!2139 = !DILocation(line: 186, column: 13, scope: !2059, inlinedAt: !2137)
!2140 = !DILocation(line: 186, column: 7, scope: !2050, inlinedAt: !2137)
!2141 = !DILocation(line: 187, column: 5, scope: !2059, inlinedAt: !2137)
!2142 = !DILocation(line: 188, column: 5, scope: !2050, inlinedAt: !2137)
!2143 = !DILocation(line: 188, column: 11, scope: !2050, inlinedAt: !2137)
!2144 = !DILocation(line: 954, column: 10, scope: !2067, inlinedAt: !2129)
!2145 = !DILocation(line: 955, column: 1, scope: !2067, inlinedAt: !2129)
!2146 = !DILocation(line: 966, column: 3, scope: !2120)
!2147 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !248, file: !248, line: 970, type: !2148, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!79, !6, !46, !8}
!2150 = !{!2151, !2152, !2153, !2154}
!2151 = !DILocalVariable(name: "arg", arg: 1, scope: !2147, file: !248, line: 970, type: !6)
!2152 = !DILocalVariable(name: "argsize", arg: 2, scope: !2147, file: !248, line: 970, type: !46)
!2153 = !DILocalVariable(name: "ch", arg: 3, scope: !2147, file: !248, line: 970, type: !8)
!2154 = !DILocalVariable(name: "options", scope: !2147, file: !248, line: 972, type: !265)
!2155 = !DILocation(line: 0, scope: !2147)
!2156 = !DILocation(line: 972, column: 3, scope: !2147)
!2157 = !DILocation(line: 972, column: 26, scope: !2147)
!2158 = !DILocation(line: 973, column: 13, scope: !2147)
!2159 = !{i64 0, i64 4, !530, i64 4, i64 4, !521, i64 8, i64 32, !530, i64 40, i64 8, !435, i64 48, i64 8, !435}
!2160 = !DILocation(line: 0, scope: !1165, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 974, column: 3, scope: !2147)
!2162 = !DILocation(line: 147, column: 62, scope: !1165, inlinedAt: !2161)
!2163 = !DILocation(line: 147, column: 57, scope: !1165, inlinedAt: !2161)
!2164 = !DILocation(line: 148, column: 15, scope: !1165, inlinedAt: !2161)
!2165 = !DILocation(line: 149, column: 21, scope: !1165, inlinedAt: !2161)
!2166 = !DILocation(line: 149, column: 24, scope: !1165, inlinedAt: !2161)
!2167 = !DILocation(line: 149, column: 34, scope: !1165, inlinedAt: !2161)
!2168 = !DILocation(line: 150, column: 19, scope: !1165, inlinedAt: !2161)
!2169 = !DILocation(line: 150, column: 24, scope: !1165, inlinedAt: !2161)
!2170 = !DILocation(line: 150, column: 6, scope: !1165, inlinedAt: !2161)
!2171 = !DILocation(line: 975, column: 10, scope: !2147)
!2172 = !DILocation(line: 976, column: 1, scope: !2147)
!2173 = !DILocation(line: 975, column: 3, scope: !2147)
!2174 = distinct !DISubprogram(name: "quotearg_char", scope: !248, file: !248, line: 979, type: !2175, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!79, !6, !8}
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "arg", arg: 1, scope: !2174, file: !248, line: 979, type: !6)
!2179 = !DILocalVariable(name: "ch", arg: 2, scope: !2174, file: !248, line: 979, type: !8)
!2180 = !DILocation(line: 0, scope: !2174)
!2181 = !DILocation(line: 0, scope: !2147, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 981, column: 10, scope: !2174)
!2183 = !DILocation(line: 972, column: 3, scope: !2147, inlinedAt: !2182)
!2184 = !DILocation(line: 972, column: 26, scope: !2147, inlinedAt: !2182)
!2185 = !DILocation(line: 973, column: 13, scope: !2147, inlinedAt: !2182)
!2186 = !DILocation(line: 0, scope: !1165, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 974, column: 3, scope: !2147, inlinedAt: !2182)
!2188 = !DILocation(line: 147, column: 62, scope: !1165, inlinedAt: !2187)
!2189 = !DILocation(line: 147, column: 57, scope: !1165, inlinedAt: !2187)
!2190 = !DILocation(line: 148, column: 15, scope: !1165, inlinedAt: !2187)
!2191 = !DILocation(line: 149, column: 21, scope: !1165, inlinedAt: !2187)
!2192 = !DILocation(line: 149, column: 24, scope: !1165, inlinedAt: !2187)
!2193 = !DILocation(line: 149, column: 34, scope: !1165, inlinedAt: !2187)
!2194 = !DILocation(line: 150, column: 19, scope: !1165, inlinedAt: !2187)
!2195 = !DILocation(line: 150, column: 24, scope: !1165, inlinedAt: !2187)
!2196 = !DILocation(line: 150, column: 6, scope: !1165, inlinedAt: !2187)
!2197 = !DILocation(line: 975, column: 10, scope: !2147, inlinedAt: !2182)
!2198 = !DILocation(line: 976, column: 1, scope: !2147, inlinedAt: !2182)
!2199 = !DILocation(line: 981, column: 3, scope: !2174)
!2200 = distinct !DISubprogram(name: "quotearg_colon", scope: !248, file: !248, line: 985, type: !633, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2201)
!2201 = !{!2202}
!2202 = !DILocalVariable(name: "arg", arg: 1, scope: !2200, file: !248, line: 985, type: !6)
!2203 = !DILocation(line: 0, scope: !2200)
!2204 = !DILocation(line: 0, scope: !2174, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 987, column: 10, scope: !2200)
!2206 = !DILocation(line: 0, scope: !2147, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 981, column: 10, scope: !2174, inlinedAt: !2205)
!2208 = !DILocation(line: 972, column: 3, scope: !2147, inlinedAt: !2207)
!2209 = !DILocation(line: 972, column: 26, scope: !2147, inlinedAt: !2207)
!2210 = !DILocation(line: 973, column: 13, scope: !2147, inlinedAt: !2207)
!2211 = !DILocation(line: 0, scope: !1165, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 974, column: 3, scope: !2147, inlinedAt: !2207)
!2213 = !DILocation(line: 147, column: 57, scope: !1165, inlinedAt: !2212)
!2214 = !DILocation(line: 149, column: 21, scope: !1165, inlinedAt: !2212)
!2215 = !DILocation(line: 150, column: 6, scope: !1165, inlinedAt: !2212)
!2216 = !DILocation(line: 975, column: 10, scope: !2147, inlinedAt: !2207)
!2217 = !DILocation(line: 976, column: 1, scope: !2147, inlinedAt: !2207)
!2218 = !DILocation(line: 987, column: 3, scope: !2200)
!2219 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !248, file: !248, line: 991, type: !2024, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2220)
!2220 = !{!2221, !2222}
!2221 = !DILocalVariable(name: "arg", arg: 1, scope: !2219, file: !248, line: 991, type: !6)
!2222 = !DILocalVariable(name: "argsize", arg: 2, scope: !2219, file: !248, line: 991, type: !46)
!2223 = !DILocation(line: 0, scope: !2219)
!2224 = !DILocation(line: 0, scope: !2147, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 993, column: 10, scope: !2219)
!2226 = !DILocation(line: 972, column: 3, scope: !2147, inlinedAt: !2225)
!2227 = !DILocation(line: 972, column: 26, scope: !2147, inlinedAt: !2225)
!2228 = !DILocation(line: 973, column: 13, scope: !2147, inlinedAt: !2225)
!2229 = !DILocation(line: 0, scope: !1165, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 974, column: 3, scope: !2147, inlinedAt: !2225)
!2231 = !DILocation(line: 147, column: 57, scope: !1165, inlinedAt: !2230)
!2232 = !DILocation(line: 149, column: 21, scope: !1165, inlinedAt: !2230)
!2233 = !DILocation(line: 150, column: 6, scope: !1165, inlinedAt: !2230)
!2234 = !DILocation(line: 975, column: 10, scope: !2147, inlinedAt: !2225)
!2235 = !DILocation(line: 976, column: 1, scope: !2147, inlinedAt: !2225)
!2236 = !DILocation(line: 993, column: 3, scope: !2219)
!2237 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !248, file: !248, line: 997, type: !2035, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2238)
!2238 = !{!2239, !2240, !2241, !2242}
!2239 = !DILocalVariable(name: "n", arg: 1, scope: !2237, file: !248, line: 997, type: !44)
!2240 = !DILocalVariable(name: "s", arg: 2, scope: !2237, file: !248, line: 997, type: !12)
!2241 = !DILocalVariable(name: "arg", arg: 3, scope: !2237, file: !248, line: 997, type: !6)
!2242 = !DILocalVariable(name: "options", scope: !2237, file: !248, line: 999, type: !265)
!2243 = !DILocation(line: 0, scope: !2237)
!2244 = !DILocation(line: 999, column: 3, scope: !2237)
!2245 = !DILocation(line: 999, column: 26, scope: !2237)
!2246 = !DILocation(line: 0, scope: !2050, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 1000, column: 13, scope: !2237)
!2248 = !DILocation(line: 186, column: 13, scope: !2059, inlinedAt: !2247)
!2249 = !DILocation(line: 186, column: 7, scope: !2050, inlinedAt: !2247)
!2250 = !DILocation(line: 187, column: 5, scope: !2059, inlinedAt: !2247)
!2251 = !{!2252}
!2252 = distinct !{!2252, !2253, !"quoting_options_from_style: argument 0"}
!2253 = distinct !{!2253, !"quoting_options_from_style"}
!2254 = !DILocation(line: 1000, column: 13, scope: !2237)
!2255 = !DILocation(line: 0, scope: !1165, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 1001, column: 3, scope: !2237)
!2257 = !DILocation(line: 147, column: 57, scope: !1165, inlinedAt: !2256)
!2258 = !DILocation(line: 149, column: 21, scope: !1165, inlinedAt: !2256)
!2259 = !DILocation(line: 150, column: 6, scope: !1165, inlinedAt: !2256)
!2260 = !DILocation(line: 1002, column: 10, scope: !2237)
!2261 = !DILocation(line: 1003, column: 1, scope: !2237)
!2262 = !DILocation(line: 1002, column: 3, scope: !2237)
!2263 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !248, file: !248, line: 1006, type: !2264, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!79, !44, !6, !6, !6}
!2266 = !{!2267, !2268, !2269, !2270}
!2267 = !DILocalVariable(name: "n", arg: 1, scope: !2263, file: !248, line: 1006, type: !44)
!2268 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2263, file: !248, line: 1006, type: !6)
!2269 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2263, file: !248, line: 1007, type: !6)
!2270 = !DILocalVariable(name: "arg", arg: 4, scope: !2263, file: !248, line: 1007, type: !6)
!2271 = !DILocation(line: 0, scope: !2263)
!2272 = !DILocalVariable(name: "n", arg: 1, scope: !2273, file: !248, line: 1014, type: !44)
!2273 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !248, file: !248, line: 1014, type: !2274, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!79, !44, !6, !6, !6, !46}
!2276 = !{!2272, !2277, !2278, !2279, !2280, !2281}
!2277 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2273, file: !248, line: 1014, type: !6)
!2278 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2273, file: !248, line: 1015, type: !6)
!2279 = !DILocalVariable(name: "arg", arg: 4, scope: !2273, file: !248, line: 1016, type: !6)
!2280 = !DILocalVariable(name: "argsize", arg: 5, scope: !2273, file: !248, line: 1016, type: !46)
!2281 = !DILocalVariable(name: "o", scope: !2273, file: !248, line: 1018, type: !265)
!2282 = !DILocation(line: 0, scope: !2273, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 1009, column: 10, scope: !2263)
!2284 = !DILocation(line: 1018, column: 3, scope: !2273, inlinedAt: !2283)
!2285 = !DILocation(line: 1018, column: 26, scope: !2273, inlinedAt: !2283)
!2286 = !DILocation(line: 1018, column: 30, scope: !2273, inlinedAt: !2283)
!2287 = !DILocation(line: 0, scope: !1205, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 1019, column: 3, scope: !2273, inlinedAt: !2283)
!2289 = !DILocation(line: 174, column: 6, scope: !1205, inlinedAt: !2288)
!2290 = !DILocation(line: 174, column: 12, scope: !1205, inlinedAt: !2288)
!2291 = !DILocation(line: 175, column: 8, scope: !1219, inlinedAt: !2288)
!2292 = !DILocation(line: 175, column: 19, scope: !1219, inlinedAt: !2288)
!2293 = !DILocation(line: 176, column: 5, scope: !1219, inlinedAt: !2288)
!2294 = !DILocation(line: 177, column: 6, scope: !1205, inlinedAt: !2288)
!2295 = !DILocation(line: 177, column: 17, scope: !1205, inlinedAt: !2288)
!2296 = !DILocation(line: 178, column: 6, scope: !1205, inlinedAt: !2288)
!2297 = !DILocation(line: 178, column: 18, scope: !1205, inlinedAt: !2288)
!2298 = !DILocation(line: 1020, column: 10, scope: !2273, inlinedAt: !2283)
!2299 = !DILocation(line: 1021, column: 1, scope: !2273, inlinedAt: !2283)
!2300 = !DILocation(line: 1009, column: 3, scope: !2263)
!2301 = !DILocation(line: 0, scope: !2273)
!2302 = !DILocation(line: 1018, column: 3, scope: !2273)
!2303 = !DILocation(line: 1018, column: 26, scope: !2273)
!2304 = !DILocation(line: 1018, column: 30, scope: !2273)
!2305 = !DILocation(line: 0, scope: !1205, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 1019, column: 3, scope: !2273)
!2307 = !DILocation(line: 174, column: 6, scope: !1205, inlinedAt: !2306)
!2308 = !DILocation(line: 174, column: 12, scope: !1205, inlinedAt: !2306)
!2309 = !DILocation(line: 175, column: 8, scope: !1219, inlinedAt: !2306)
!2310 = !DILocation(line: 175, column: 19, scope: !1219, inlinedAt: !2306)
!2311 = !DILocation(line: 176, column: 5, scope: !1219, inlinedAt: !2306)
!2312 = !DILocation(line: 177, column: 6, scope: !1205, inlinedAt: !2306)
!2313 = !DILocation(line: 177, column: 17, scope: !1205, inlinedAt: !2306)
!2314 = !DILocation(line: 178, column: 6, scope: !1205, inlinedAt: !2306)
!2315 = !DILocation(line: 178, column: 18, scope: !1205, inlinedAt: !2306)
!2316 = !DILocation(line: 1020, column: 10, scope: !2273)
!2317 = !DILocation(line: 1021, column: 1, scope: !2273)
!2318 = !DILocation(line: 1020, column: 3, scope: !2273)
!2319 = distinct !DISubprogram(name: "quotearg_custom", scope: !248, file: !248, line: 1024, type: !2320, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!79, !6, !6, !6}
!2322 = !{!2323, !2324, !2325}
!2323 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2319, file: !248, line: 1024, type: !6)
!2324 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2319, file: !248, line: 1024, type: !6)
!2325 = !DILocalVariable(name: "arg", arg: 3, scope: !2319, file: !248, line: 1025, type: !6)
!2326 = !DILocation(line: 0, scope: !2319)
!2327 = !DILocation(line: 0, scope: !2263, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 1027, column: 10, scope: !2319)
!2329 = !DILocation(line: 0, scope: !2273, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 1009, column: 10, scope: !2263, inlinedAt: !2328)
!2331 = !DILocation(line: 1018, column: 3, scope: !2273, inlinedAt: !2330)
!2332 = !DILocation(line: 1018, column: 26, scope: !2273, inlinedAt: !2330)
!2333 = !DILocation(line: 1018, column: 30, scope: !2273, inlinedAt: !2330)
!2334 = !DILocation(line: 0, scope: !1205, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 1019, column: 3, scope: !2273, inlinedAt: !2330)
!2336 = !DILocation(line: 174, column: 6, scope: !1205, inlinedAt: !2335)
!2337 = !DILocation(line: 174, column: 12, scope: !1205, inlinedAt: !2335)
!2338 = !DILocation(line: 175, column: 8, scope: !1219, inlinedAt: !2335)
!2339 = !DILocation(line: 175, column: 19, scope: !1219, inlinedAt: !2335)
!2340 = !DILocation(line: 176, column: 5, scope: !1219, inlinedAt: !2335)
!2341 = !DILocation(line: 177, column: 6, scope: !1205, inlinedAt: !2335)
!2342 = !DILocation(line: 177, column: 17, scope: !1205, inlinedAt: !2335)
!2343 = !DILocation(line: 178, column: 6, scope: !1205, inlinedAt: !2335)
!2344 = !DILocation(line: 178, column: 18, scope: !1205, inlinedAt: !2335)
!2345 = !DILocation(line: 1020, column: 10, scope: !2273, inlinedAt: !2330)
!2346 = !DILocation(line: 1021, column: 1, scope: !2273, inlinedAt: !2330)
!2347 = !DILocation(line: 1027, column: 3, scope: !2319)
!2348 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !248, file: !248, line: 1031, type: !2349, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!79, !6, !6, !6, !46}
!2351 = !{!2352, !2353, !2354, !2355}
!2352 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2348, file: !248, line: 1031, type: !6)
!2353 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2348, file: !248, line: 1031, type: !6)
!2354 = !DILocalVariable(name: "arg", arg: 3, scope: !2348, file: !248, line: 1032, type: !6)
!2355 = !DILocalVariable(name: "argsize", arg: 4, scope: !2348, file: !248, line: 1032, type: !46)
!2356 = !DILocation(line: 0, scope: !2348)
!2357 = !DILocation(line: 0, scope: !2273, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 1034, column: 10, scope: !2348)
!2359 = !DILocation(line: 1018, column: 3, scope: !2273, inlinedAt: !2358)
!2360 = !DILocation(line: 1018, column: 26, scope: !2273, inlinedAt: !2358)
!2361 = !DILocation(line: 1018, column: 30, scope: !2273, inlinedAt: !2358)
!2362 = !DILocation(line: 0, scope: !1205, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 1019, column: 3, scope: !2273, inlinedAt: !2358)
!2364 = !DILocation(line: 174, column: 6, scope: !1205, inlinedAt: !2363)
!2365 = !DILocation(line: 174, column: 12, scope: !1205, inlinedAt: !2363)
!2366 = !DILocation(line: 175, column: 8, scope: !1219, inlinedAt: !2363)
!2367 = !DILocation(line: 175, column: 19, scope: !1219, inlinedAt: !2363)
!2368 = !DILocation(line: 176, column: 5, scope: !1219, inlinedAt: !2363)
!2369 = !DILocation(line: 177, column: 6, scope: !1205, inlinedAt: !2363)
!2370 = !DILocation(line: 177, column: 17, scope: !1205, inlinedAt: !2363)
!2371 = !DILocation(line: 178, column: 6, scope: !1205, inlinedAt: !2363)
!2372 = !DILocation(line: 178, column: 18, scope: !1205, inlinedAt: !2363)
!2373 = !DILocation(line: 1020, column: 10, scope: !2273, inlinedAt: !2358)
!2374 = !DILocation(line: 1021, column: 1, scope: !2273, inlinedAt: !2358)
!2375 = !DILocation(line: 1034, column: 3, scope: !2348)
!2376 = distinct !DISubprogram(name: "quote_n_mem", scope: !248, file: !248, line: 1049, type: !2377, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!6, !44, !6, !46}
!2379 = !{!2380, !2381, !2382}
!2380 = !DILocalVariable(name: "n", arg: 1, scope: !2376, file: !248, line: 1049, type: !44)
!2381 = !DILocalVariable(name: "arg", arg: 2, scope: !2376, file: !248, line: 1049, type: !6)
!2382 = !DILocalVariable(name: "argsize", arg: 3, scope: !2376, file: !248, line: 1049, type: !46)
!2383 = !DILocation(line: 0, scope: !2376)
!2384 = !DILocation(line: 1051, column: 10, scope: !2376)
!2385 = !DILocation(line: 1051, column: 3, scope: !2376)
!2386 = distinct !DISubprogram(name: "quote_mem", scope: !248, file: !248, line: 1055, type: !2387, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!6, !6, !46}
!2389 = !{!2390, !2391}
!2390 = !DILocalVariable(name: "arg", arg: 1, scope: !2386, file: !248, line: 1055, type: !6)
!2391 = !DILocalVariable(name: "argsize", arg: 2, scope: !2386, file: !248, line: 1055, type: !46)
!2392 = !DILocation(line: 0, scope: !2386)
!2393 = !DILocation(line: 0, scope: !2376, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 1057, column: 10, scope: !2386)
!2395 = !DILocation(line: 1051, column: 10, scope: !2376, inlinedAt: !2394)
!2396 = !DILocation(line: 1057, column: 3, scope: !2386)
!2397 = distinct !DISubprogram(name: "quote_n", scope: !248, file: !248, line: 1061, type: !2398, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!6, !44, !6}
!2400 = !{!2401, !2402}
!2401 = !DILocalVariable(name: "n", arg: 1, scope: !2397, file: !248, line: 1061, type: !44)
!2402 = !DILocalVariable(name: "arg", arg: 2, scope: !2397, file: !248, line: 1061, type: !6)
!2403 = !DILocation(line: 0, scope: !2397)
!2404 = !DILocation(line: 0, scope: !2376, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 1063, column: 10, scope: !2397)
!2406 = !DILocation(line: 1051, column: 10, scope: !2376, inlinedAt: !2405)
!2407 = !DILocation(line: 1063, column: 3, scope: !2397)
!2408 = distinct !DISubprogram(name: "quote", scope: !248, file: !248, line: 1067, type: !2409, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!6, !6}
!2411 = !{!2412}
!2412 = !DILocalVariable(name: "arg", arg: 1, scope: !2408, file: !248, line: 1067, type: !6)
!2413 = !DILocation(line: 0, scope: !2408)
!2414 = !DILocation(line: 0, scope: !2397, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 1069, column: 10, scope: !2408)
!2416 = !DILocation(line: 0, scope: !2376, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 1063, column: 10, scope: !2397, inlinedAt: !2415)
!2418 = !DILocation(line: 1051, column: 10, scope: !2376, inlinedAt: !2417)
!2419 = !DILocation(line: 1069, column: 3, scope: !2408)
!2420 = distinct !DISubprogram(name: "version_etc_arn", scope: !353, file: !353, line: 61, type: !2421, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2458)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !2423, !6, !6, !6, !2457, !46}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2425, file: !75, line: 51, baseType: !44, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2425, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2425, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2425, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2425, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2425, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2425, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2425, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2425, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2425, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2425, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2425, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2425, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2425, file: !75, line: 70, baseType: !2441, size: 64, offset: 832)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2425, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2425, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2425, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2425, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2425, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2425, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2425, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2425, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2425, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2425, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2425, file: !75, line: 93, baseType: !2441, size: 64, offset: 1344)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2425, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2425, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2425, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2425, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2464}
!2459 = !DILocalVariable(name: "stream", arg: 1, scope: !2420, file: !353, line: 61, type: !2423)
!2460 = !DILocalVariable(name: "command_name", arg: 2, scope: !2420, file: !353, line: 62, type: !6)
!2461 = !DILocalVariable(name: "package", arg: 3, scope: !2420, file: !353, line: 62, type: !6)
!2462 = !DILocalVariable(name: "version", arg: 4, scope: !2420, file: !353, line: 63, type: !6)
!2463 = !DILocalVariable(name: "authors", arg: 5, scope: !2420, file: !353, line: 64, type: !2457)
!2464 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2420, file: !353, line: 64, type: !46)
!2465 = !DILocation(line: 0, scope: !2420)
!2466 = !DILocation(line: 66, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2420, file: !353, line: 66, column: 7)
!2468 = !DILocation(line: 66, column: 7, scope: !2420)
!2469 = !DILocation(line: 67, column: 5, scope: !2467)
!2470 = !DILocation(line: 69, column: 5, scope: !2467)
!2471 = !DILocation(line: 83, column: 3, scope: !2420)
!2472 = !DILocation(line: 85, column: 3, scope: !2420)
!2473 = !DILocation(line: 88, column: 3, scope: !2420)
!2474 = !DILocation(line: 95, column: 3, scope: !2420)
!2475 = !DILocation(line: 97, column: 3, scope: !2420)
!2476 = !DILocation(line: 105, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2420, file: !353, line: 98, column: 5)
!2478 = !DILocation(line: 106, column: 7, scope: !2477)
!2479 = !DILocation(line: 109, column: 7, scope: !2477)
!2480 = !DILocation(line: 110, column: 7, scope: !2477)
!2481 = !DILocation(line: 113, column: 7, scope: !2477)
!2482 = !DILocation(line: 115, column: 7, scope: !2477)
!2483 = !DILocation(line: 120, column: 7, scope: !2477)
!2484 = !DILocation(line: 122, column: 7, scope: !2477)
!2485 = !DILocation(line: 127, column: 7, scope: !2477)
!2486 = !DILocation(line: 129, column: 7, scope: !2477)
!2487 = !DILocation(line: 134, column: 7, scope: !2477)
!2488 = !DILocation(line: 137, column: 7, scope: !2477)
!2489 = !DILocation(line: 142, column: 7, scope: !2477)
!2490 = !DILocation(line: 145, column: 7, scope: !2477)
!2491 = !DILocation(line: 150, column: 7, scope: !2477)
!2492 = !DILocation(line: 154, column: 7, scope: !2477)
!2493 = !DILocation(line: 159, column: 7, scope: !2477)
!2494 = !DILocation(line: 163, column: 7, scope: !2477)
!2495 = !DILocation(line: 170, column: 7, scope: !2477)
!2496 = !DILocation(line: 174, column: 7, scope: !2477)
!2497 = !DILocation(line: 176, column: 1, scope: !2420)
!2498 = distinct !DISubprogram(name: "version_etc_ar", scope: !353, file: !353, line: 183, type: !2499, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{null, !2423, !6, !6, !6, !2457}
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507}
!2502 = !DILocalVariable(name: "stream", arg: 1, scope: !2498, file: !353, line: 183, type: !2423)
!2503 = !DILocalVariable(name: "command_name", arg: 2, scope: !2498, file: !353, line: 184, type: !6)
!2504 = !DILocalVariable(name: "package", arg: 3, scope: !2498, file: !353, line: 184, type: !6)
!2505 = !DILocalVariable(name: "version", arg: 4, scope: !2498, file: !353, line: 185, type: !6)
!2506 = !DILocalVariable(name: "authors", arg: 5, scope: !2498, file: !353, line: 185, type: !2457)
!2507 = !DILocalVariable(name: "n_authors", scope: !2498, file: !353, line: 187, type: !46)
!2508 = !DILocation(line: 0, scope: !2498)
!2509 = !DILocation(line: 189, column: 8, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2498, file: !353, line: 189, column: 3)
!2511 = !DILocation(line: 0, scope: !2510)
!2512 = !DILocation(line: 189, column: 23, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !353, line: 189, column: 3)
!2514 = !DILocation(line: 189, column: 3, scope: !2510)
!2515 = !DILocation(line: 189, column: 52, scope: !2513)
!2516 = distinct !{!2516, !2514, !2517, !487}
!2517 = !DILocation(line: 190, column: 5, scope: !2510)
!2518 = !DILocation(line: 191, column: 3, scope: !2498)
!2519 = !DILocation(line: 192, column: 1, scope: !2498)
!2520 = distinct !DISubprogram(name: "version_etc_va", scope: !353, file: !353, line: 199, type: !2521, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2534)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !2423, !6, !6, !6, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !2524)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !2525)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2526, baseType: !2527)
!2526 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !163, size: 256, elements: !2528)
!2528 = !{!2529, !2530, !2531, !2532, !2533}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2527, file: !2526, line: 192, baseType: !43, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2527, file: !2526, line: 192, baseType: !43, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2527, file: !2526, line: 192, baseType: !43, size: 64, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2527, file: !2526, line: 192, baseType: !44, size: 32, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2527, file: !2526, line: 192, baseType: !44, size: 32, offset: 224)
!2534 = !{!2535, !2536, !2537, !2538, !2539, !2540, !2541}
!2535 = !DILocalVariable(name: "stream", arg: 1, scope: !2520, file: !353, line: 199, type: !2423)
!2536 = !DILocalVariable(name: "command_name", arg: 2, scope: !2520, file: !353, line: 200, type: !6)
!2537 = !DILocalVariable(name: "package", arg: 3, scope: !2520, file: !353, line: 200, type: !6)
!2538 = !DILocalVariable(name: "version", arg: 4, scope: !2520, file: !353, line: 201, type: !6)
!2539 = !DILocalVariable(name: "authors", arg: 5, scope: !2520, file: !353, line: 201, type: !2523)
!2540 = !DILocalVariable(name: "n_authors", scope: !2520, file: !353, line: 203, type: !46)
!2541 = !DILocalVariable(name: "authtab", scope: !2520, file: !353, line: 204, type: !2542)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !261)
!2543 = !DILocation(line: 0, scope: !2520)
!2544 = !DILocation(line: 201, column: 46, scope: !2520)
!2545 = !DILocation(line: 204, column: 3, scope: !2520)
!2546 = !DILocation(line: 204, column: 15, scope: !2520)
!2547 = !DILocation(line: 208, column: 35, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !353, line: 206, column: 3)
!2549 = distinct !DILexicalBlock(scope: !2520, file: !353, line: 206, column: 3)
!2550 = !DILocation(line: 208, column: 14, scope: !2548)
!2551 = !DILocation(line: 208, column: 33, scope: !2548)
!2552 = !DILocation(line: 208, column: 67, scope: !2548)
!2553 = !DILocation(line: 206, column: 3, scope: !2549)
!2554 = !DILocation(line: 0, scope: !2549)
!2555 = !DILocation(line: 211, column: 3, scope: !2520)
!2556 = !DILocation(line: 213, column: 1, scope: !2520)
!2557 = distinct !DISubprogram(name: "version_etc", scope: !353, file: !353, line: 230, type: !2558, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null, !2423, !6, !6, !6, null}
!2560 = !{!2561, !2562, !2563, !2564, !2565}
!2561 = !DILocalVariable(name: "stream", arg: 1, scope: !2557, file: !353, line: 230, type: !2423)
!2562 = !DILocalVariable(name: "command_name", arg: 2, scope: !2557, file: !353, line: 231, type: !6)
!2563 = !DILocalVariable(name: "package", arg: 3, scope: !2557, file: !353, line: 231, type: !6)
!2564 = !DILocalVariable(name: "version", arg: 4, scope: !2557, file: !353, line: 232, type: !6)
!2565 = !DILocalVariable(name: "authors", scope: !2557, file: !353, line: 234, type: !2523)
!2566 = !DILocation(line: 0, scope: !2557)
!2567 = !DILocation(line: 234, column: 3, scope: !2557)
!2568 = !DILocation(line: 234, column: 11, scope: !2557)
!2569 = !DILocation(line: 235, column: 3, scope: !2557)
!2570 = !DILocation(line: 236, column: 3, scope: !2557)
!2571 = !DILocation(line: 237, column: 3, scope: !2557)
!2572 = !DILocation(line: 238, column: 1, scope: !2557)
!2573 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !353, file: !353, line: 241, type: !184, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !513)
!2574 = !DILocation(line: 243, column: 3, scope: !2573)
!2575 = !DILocation(line: 248, column: 3, scope: !2573)
!2576 = !DILocation(line: 254, column: 3, scope: !2573)
!2577 = !DILocation(line: 259, column: 3, scope: !2573)
!2578 = !DILocation(line: 261, column: 1, scope: !2573)
!2579 = distinct !DISubprogram(name: "xnrealloc", scope: !2580, file: !2580, line: 147, type: !2581, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2583)
!2580 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!43, !43, !46, !46}
!2583 = !{!2584, !2585, !2586}
!2584 = !DILocalVariable(name: "p", arg: 1, scope: !2579, file: !2580, line: 147, type: !43)
!2585 = !DILocalVariable(name: "n", arg: 2, scope: !2579, file: !2580, line: 147, type: !46)
!2586 = !DILocalVariable(name: "s", arg: 3, scope: !2579, file: !2580, line: 147, type: !46)
!2587 = !DILocation(line: 0, scope: !2579)
!2588 = !DILocalVariable(name: "p", arg: 1, scope: !2589, file: !360, line: 83, type: !43)
!2589 = distinct !DISubprogram(name: "xreallocarray", scope: !360, file: !360, line: 83, type: !2581, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2590)
!2590 = !{!2588, !2591, !2592}
!2591 = !DILocalVariable(name: "n", arg: 2, scope: !2589, file: !360, line: 83, type: !46)
!2592 = !DILocalVariable(name: "s", arg: 3, scope: !2589, file: !360, line: 83, type: !46)
!2593 = !DILocation(line: 0, scope: !2589, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 149, column: 10, scope: !2579)
!2595 = !DILocation(line: 85, column: 25, scope: !2589, inlinedAt: !2594)
!2596 = !DILocalVariable(name: "p", arg: 1, scope: !2597, file: !360, line: 37, type: !43)
!2597 = distinct !DISubprogram(name: "check_nonnull", scope: !360, file: !360, line: 37, type: !2598, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!43, !43}
!2600 = !{!2596}
!2601 = !DILocation(line: 0, scope: !2597, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 85, column: 10, scope: !2589, inlinedAt: !2594)
!2603 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2602)
!2604 = distinct !DILexicalBlock(scope: !2597, file: !360, line: 39, column: 7)
!2605 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2602)
!2606 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2602)
!2607 = !DILocation(line: 149, column: 3, scope: !2579)
!2608 = !DILocation(line: 0, scope: !2589)
!2609 = !DILocation(line: 85, column: 25, scope: !2589)
!2610 = !DILocation(line: 0, scope: !2597, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 85, column: 10, scope: !2589)
!2612 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2611)
!2613 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2611)
!2614 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2611)
!2615 = !DILocation(line: 85, column: 3, scope: !2589)
!2616 = distinct !DISubprogram(name: "xmalloc", scope: !360, file: !360, line: 47, type: !2617, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!43, !46}
!2619 = !{!2620}
!2620 = !DILocalVariable(name: "s", arg: 1, scope: !2616, file: !360, line: 47, type: !46)
!2621 = !DILocation(line: 0, scope: !2616)
!2622 = !DILocation(line: 49, column: 25, scope: !2616)
!2623 = !DILocation(line: 0, scope: !2597, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 49, column: 10, scope: !2616)
!2625 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2624)
!2626 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2624)
!2627 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2624)
!2628 = !DILocation(line: 49, column: 3, scope: !2616)
!2629 = distinct !DISubprogram(name: "ximalloc", scope: !360, file: !360, line: 53, type: !2630, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2632)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!43, !379}
!2632 = !{!2633}
!2633 = !DILocalVariable(name: "s", arg: 1, scope: !2629, file: !360, line: 53, type: !379)
!2634 = !DILocation(line: 0, scope: !2629)
!2635 = !DILocalVariable(name: "s", arg: 1, scope: !2636, file: !2637, line: 55, type: !379)
!2636 = distinct !DISubprogram(name: "imalloc", scope: !2637, file: !2637, line: 55, type: !2630, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2638)
!2637 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2638 = !{!2635}
!2639 = !DILocation(line: 0, scope: !2636, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 55, column: 25, scope: !2629)
!2641 = !DILocation(line: 57, column: 26, scope: !2636, inlinedAt: !2640)
!2642 = !DILocation(line: 0, scope: !2597, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 55, column: 10, scope: !2629)
!2644 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2643)
!2645 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2643)
!2646 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2643)
!2647 = !DILocation(line: 55, column: 3, scope: !2629)
!2648 = distinct !DISubprogram(name: "xcharalloc", scope: !360, file: !360, line: 59, type: !2649, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!79, !46}
!2651 = !{!2652}
!2652 = !DILocalVariable(name: "n", arg: 1, scope: !2648, file: !360, line: 59, type: !46)
!2653 = !DILocation(line: 0, scope: !2648)
!2654 = !DILocation(line: 0, scope: !2616, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 61, column: 10, scope: !2648)
!2656 = !DILocation(line: 49, column: 25, scope: !2616, inlinedAt: !2655)
!2657 = !DILocation(line: 0, scope: !2597, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 49, column: 10, scope: !2616, inlinedAt: !2655)
!2659 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2658)
!2660 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2658)
!2661 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2658)
!2662 = !DILocation(line: 61, column: 3, scope: !2648)
!2663 = distinct !DISubprogram(name: "xrealloc", scope: !360, file: !360, line: 68, type: !2664, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!43, !43, !46}
!2666 = !{!2667, !2668}
!2667 = !DILocalVariable(name: "p", arg: 1, scope: !2663, file: !360, line: 68, type: !43)
!2668 = !DILocalVariable(name: "s", arg: 2, scope: !2663, file: !360, line: 68, type: !46)
!2669 = !DILocation(line: 0, scope: !2663)
!2670 = !DILocalVariable(name: "ptr", arg: 1, scope: !2671, file: !2672, line: 2057, type: !43)
!2671 = distinct !DISubprogram(name: "rpl_realloc", scope: !2672, file: !2672, line: 2057, type: !2664, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2673)
!2672 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2673 = !{!2670, !2674}
!2674 = !DILocalVariable(name: "size", arg: 2, scope: !2671, file: !2672, line: 2057, type: !46)
!2675 = !DILocation(line: 0, scope: !2671, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 70, column: 25, scope: !2663)
!2677 = !DILocation(line: 2059, column: 24, scope: !2671, inlinedAt: !2676)
!2678 = !DILocation(line: 2059, column: 10, scope: !2671, inlinedAt: !2676)
!2679 = !DILocation(line: 0, scope: !2597, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 70, column: 10, scope: !2663)
!2681 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2680)
!2682 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2680)
!2683 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2680)
!2684 = !DILocation(line: 70, column: 3, scope: !2663)
!2685 = distinct !DISubprogram(name: "xirealloc", scope: !360, file: !360, line: 74, type: !2686, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!43, !43, !379}
!2688 = !{!2689, !2690}
!2689 = !DILocalVariable(name: "p", arg: 1, scope: !2685, file: !360, line: 74, type: !43)
!2690 = !DILocalVariable(name: "s", arg: 2, scope: !2685, file: !360, line: 74, type: !379)
!2691 = !DILocation(line: 0, scope: !2685)
!2692 = !DILocalVariable(name: "p", arg: 1, scope: !2693, file: !2637, line: 66, type: !43)
!2693 = distinct !DISubprogram(name: "irealloc", scope: !2637, file: !2637, line: 66, type: !2686, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2694)
!2694 = !{!2692, !2695}
!2695 = !DILocalVariable(name: "s", arg: 2, scope: !2693, file: !2637, line: 66, type: !379)
!2696 = !DILocation(line: 0, scope: !2693, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 76, column: 25, scope: !2685)
!2698 = !DILocation(line: 0, scope: !2671, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 68, column: 26, scope: !2693, inlinedAt: !2697)
!2700 = !DILocation(line: 2059, column: 24, scope: !2671, inlinedAt: !2699)
!2701 = !DILocation(line: 2059, column: 10, scope: !2671, inlinedAt: !2699)
!2702 = !DILocation(line: 0, scope: !2597, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 76, column: 10, scope: !2685)
!2704 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2703)
!2705 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2703)
!2706 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2703)
!2707 = !DILocation(line: 76, column: 3, scope: !2685)
!2708 = distinct !DISubprogram(name: "xireallocarray", scope: !360, file: !360, line: 89, type: !2709, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!43, !43, !379, !379}
!2711 = !{!2712, !2713, !2714}
!2712 = !DILocalVariable(name: "p", arg: 1, scope: !2708, file: !360, line: 89, type: !43)
!2713 = !DILocalVariable(name: "n", arg: 2, scope: !2708, file: !360, line: 89, type: !379)
!2714 = !DILocalVariable(name: "s", arg: 3, scope: !2708, file: !360, line: 89, type: !379)
!2715 = !DILocation(line: 0, scope: !2708)
!2716 = !DILocalVariable(name: "p", arg: 1, scope: !2717, file: !2637, line: 98, type: !43)
!2717 = distinct !DISubprogram(name: "ireallocarray", scope: !2637, file: !2637, line: 98, type: !2709, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2718)
!2718 = !{!2716, !2719, !2720}
!2719 = !DILocalVariable(name: "n", arg: 2, scope: !2717, file: !2637, line: 98, type: !379)
!2720 = !DILocalVariable(name: "s", arg: 3, scope: !2717, file: !2637, line: 98, type: !379)
!2721 = !DILocation(line: 0, scope: !2717, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 91, column: 25, scope: !2708)
!2723 = !DILocation(line: 101, column: 13, scope: !2717, inlinedAt: !2722)
!2724 = !DILocation(line: 0, scope: !2597, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 91, column: 10, scope: !2708)
!2726 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2725)
!2727 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2725)
!2728 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2725)
!2729 = !DILocation(line: 91, column: 3, scope: !2708)
!2730 = distinct !DISubprogram(name: "xnmalloc", scope: !360, file: !360, line: 98, type: !2731, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!43, !46, !46}
!2733 = !{!2734, !2735}
!2734 = !DILocalVariable(name: "n", arg: 1, scope: !2730, file: !360, line: 98, type: !46)
!2735 = !DILocalVariable(name: "s", arg: 2, scope: !2730, file: !360, line: 98, type: !46)
!2736 = !DILocation(line: 0, scope: !2730)
!2737 = !DILocation(line: 0, scope: !2589, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 100, column: 10, scope: !2730)
!2739 = !DILocation(line: 85, column: 25, scope: !2589, inlinedAt: !2738)
!2740 = !DILocation(line: 0, scope: !2597, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 85, column: 10, scope: !2589, inlinedAt: !2738)
!2742 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2741)
!2743 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2741)
!2744 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2741)
!2745 = !DILocation(line: 100, column: 3, scope: !2730)
!2746 = distinct !DISubprogram(name: "xinmalloc", scope: !360, file: !360, line: 104, type: !2747, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!43, !379, !379}
!2749 = !{!2750, !2751}
!2750 = !DILocalVariable(name: "n", arg: 1, scope: !2746, file: !360, line: 104, type: !379)
!2751 = !DILocalVariable(name: "s", arg: 2, scope: !2746, file: !360, line: 104, type: !379)
!2752 = !DILocation(line: 0, scope: !2746)
!2753 = !DILocation(line: 0, scope: !2708, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 106, column: 10, scope: !2746)
!2755 = !DILocation(line: 0, scope: !2717, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 91, column: 25, scope: !2708, inlinedAt: !2754)
!2757 = !DILocation(line: 101, column: 13, scope: !2717, inlinedAt: !2756)
!2758 = !DILocation(line: 0, scope: !2597, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 91, column: 10, scope: !2708, inlinedAt: !2754)
!2760 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2759)
!2761 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2759)
!2762 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2759)
!2763 = !DILocation(line: 106, column: 3, scope: !2746)
!2764 = distinct !DISubprogram(name: "x2realloc", scope: !360, file: !360, line: 116, type: !2765, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!43, !43, !366}
!2767 = !{!2768, !2769}
!2768 = !DILocalVariable(name: "p", arg: 1, scope: !2764, file: !360, line: 116, type: !43)
!2769 = !DILocalVariable(name: "ps", arg: 2, scope: !2764, file: !360, line: 116, type: !366)
!2770 = !DILocation(line: 0, scope: !2764)
!2771 = !DILocation(line: 0, scope: !363, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 118, column: 10, scope: !2764)
!2773 = !DILocation(line: 178, column: 14, scope: !363, inlinedAt: !2772)
!2774 = !DILocation(line: 180, column: 9, scope: !2775, inlinedAt: !2772)
!2775 = distinct !DILexicalBlock(scope: !363, file: !360, line: 180, column: 7)
!2776 = !DILocation(line: 180, column: 7, scope: !363, inlinedAt: !2772)
!2777 = !DILocation(line: 182, column: 13, scope: !2778, inlinedAt: !2772)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !360, line: 182, column: 11)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !360, line: 181, column: 5)
!2780 = !DILocation(line: 182, column: 11, scope: !2779, inlinedAt: !2772)
!2781 = !DILocation(line: 197, column: 11, scope: !2782, inlinedAt: !2772)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !360, line: 197, column: 11)
!2783 = distinct !DILexicalBlock(scope: !2775, file: !360, line: 195, column: 5)
!2784 = !DILocation(line: 197, column: 11, scope: !2783, inlinedAt: !2772)
!2785 = !DILocation(line: 198, column: 9, scope: !2782, inlinedAt: !2772)
!2786 = !DILocation(line: 0, scope: !2589, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 201, column: 7, scope: !363, inlinedAt: !2772)
!2788 = !DILocation(line: 85, column: 25, scope: !2589, inlinedAt: !2787)
!2789 = !DILocation(line: 0, scope: !2597, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 85, column: 10, scope: !2589, inlinedAt: !2787)
!2791 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2790)
!2792 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2790)
!2793 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2790)
!2794 = !DILocation(line: 202, column: 7, scope: !363, inlinedAt: !2772)
!2795 = !DILocation(line: 118, column: 3, scope: !2764)
!2796 = !DILocation(line: 0, scope: !363)
!2797 = !DILocation(line: 178, column: 14, scope: !363)
!2798 = !DILocation(line: 180, column: 9, scope: !2775)
!2799 = !DILocation(line: 180, column: 7, scope: !363)
!2800 = !DILocation(line: 182, column: 13, scope: !2778)
!2801 = !DILocation(line: 182, column: 11, scope: !2779)
!2802 = !DILocation(line: 190, column: 30, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2778, file: !360, line: 183, column: 9)
!2804 = !DILocation(line: 191, column: 16, scope: !2803)
!2805 = !DILocation(line: 191, column: 13, scope: !2803)
!2806 = !DILocation(line: 192, column: 9, scope: !2803)
!2807 = !DILocation(line: 197, column: 11, scope: !2782)
!2808 = !DILocation(line: 197, column: 11, scope: !2783)
!2809 = !DILocation(line: 198, column: 9, scope: !2782)
!2810 = !DILocation(line: 0, scope: !2589, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 201, column: 7, scope: !363)
!2812 = !DILocation(line: 85, column: 25, scope: !2589, inlinedAt: !2811)
!2813 = !DILocation(line: 0, scope: !2597, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 85, column: 10, scope: !2589, inlinedAt: !2811)
!2815 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2814)
!2816 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2814)
!2817 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2814)
!2818 = !DILocation(line: 202, column: 7, scope: !363)
!2819 = !DILocation(line: 203, column: 3, scope: !363)
!2820 = !DILocation(line: 0, scope: !375)
!2821 = !DILocation(line: 230, column: 14, scope: !375)
!2822 = !DILocation(line: 238, column: 7, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !375, file: !360, line: 238, column: 7)
!2824 = !DILocation(line: 238, column: 7, scope: !375)
!2825 = !DILocation(line: 240, column: 9, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !375, file: !360, line: 240, column: 7)
!2827 = !DILocation(line: 240, column: 18, scope: !2826)
!2828 = !DILocation(line: 253, column: 8, scope: !375)
!2829 = !DILocation(line: 258, column: 27, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !360, line: 257, column: 5)
!2831 = distinct !DILexicalBlock(scope: !375, file: !360, line: 256, column: 7)
!2832 = !DILocation(line: 259, column: 32, scope: !2830)
!2833 = !DILocation(line: 260, column: 5, scope: !2830)
!2834 = !DILocation(line: 262, column: 9, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !375, file: !360, line: 262, column: 7)
!2836 = !DILocation(line: 262, column: 7, scope: !375)
!2837 = !DILocation(line: 263, column: 9, scope: !2835)
!2838 = !DILocation(line: 263, column: 5, scope: !2835)
!2839 = !DILocation(line: 264, column: 9, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !375, file: !360, line: 264, column: 7)
!2841 = !DILocation(line: 264, column: 14, scope: !2840)
!2842 = !DILocation(line: 265, column: 7, scope: !2840)
!2843 = !DILocation(line: 265, column: 11, scope: !2840)
!2844 = !DILocation(line: 266, column: 11, scope: !2840)
!2845 = !DILocation(line: 266, column: 26, scope: !2840)
!2846 = !DILocation(line: 267, column: 14, scope: !2840)
!2847 = !DILocation(line: 264, column: 7, scope: !375)
!2848 = !DILocation(line: 268, column: 5, scope: !2840)
!2849 = !DILocation(line: 0, scope: !2663, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 269, column: 8, scope: !375)
!2851 = !DILocation(line: 0, scope: !2671, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 70, column: 25, scope: !2663, inlinedAt: !2850)
!2853 = !DILocation(line: 2059, column: 24, scope: !2671, inlinedAt: !2852)
!2854 = !DILocation(line: 2059, column: 10, scope: !2671, inlinedAt: !2852)
!2855 = !DILocation(line: 0, scope: !2597, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 70, column: 10, scope: !2663, inlinedAt: !2850)
!2857 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2856)
!2858 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2856)
!2859 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2856)
!2860 = !DILocation(line: 270, column: 7, scope: !375)
!2861 = !DILocation(line: 271, column: 3, scope: !375)
!2862 = distinct !DISubprogram(name: "xzalloc", scope: !360, file: !360, line: 279, type: !2617, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2863)
!2863 = !{!2864}
!2864 = !DILocalVariable(name: "s", arg: 1, scope: !2862, file: !360, line: 279, type: !46)
!2865 = !DILocation(line: 0, scope: !2862)
!2866 = !DILocalVariable(name: "n", arg: 1, scope: !2867, file: !360, line: 294, type: !46)
!2867 = distinct !DISubprogram(name: "xcalloc", scope: !360, file: !360, line: 294, type: !2731, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2868)
!2868 = !{!2866, !2869}
!2869 = !DILocalVariable(name: "s", arg: 2, scope: !2867, file: !360, line: 294, type: !46)
!2870 = !DILocation(line: 0, scope: !2867, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 281, column: 10, scope: !2862)
!2872 = !DILocation(line: 296, column: 25, scope: !2867, inlinedAt: !2871)
!2873 = !DILocation(line: 0, scope: !2597, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 296, column: 10, scope: !2867, inlinedAt: !2871)
!2875 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2874)
!2876 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2874)
!2877 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2874)
!2878 = !DILocation(line: 281, column: 3, scope: !2862)
!2879 = !DILocation(line: 0, scope: !2867)
!2880 = !DILocation(line: 296, column: 25, scope: !2867)
!2881 = !DILocation(line: 0, scope: !2597, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 296, column: 10, scope: !2867)
!2883 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2882)
!2884 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2882)
!2885 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2882)
!2886 = !DILocation(line: 296, column: 3, scope: !2867)
!2887 = distinct !DISubprogram(name: "xizalloc", scope: !360, file: !360, line: 285, type: !2630, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2888)
!2888 = !{!2889}
!2889 = !DILocalVariable(name: "s", arg: 1, scope: !2887, file: !360, line: 285, type: !379)
!2890 = !DILocation(line: 0, scope: !2887)
!2891 = !DILocalVariable(name: "n", arg: 1, scope: !2892, file: !360, line: 300, type: !379)
!2892 = distinct !DISubprogram(name: "xicalloc", scope: !360, file: !360, line: 300, type: !2747, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2893)
!2893 = !{!2891, !2894}
!2894 = !DILocalVariable(name: "s", arg: 2, scope: !2892, file: !360, line: 300, type: !379)
!2895 = !DILocation(line: 0, scope: !2892, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 287, column: 10, scope: !2887)
!2897 = !DILocalVariable(name: "n", arg: 1, scope: !2898, file: !2637, line: 77, type: !379)
!2898 = distinct !DISubprogram(name: "icalloc", scope: !2637, file: !2637, line: 77, type: !2747, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2899)
!2899 = !{!2897, !2900}
!2900 = !DILocalVariable(name: "s", arg: 2, scope: !2898, file: !2637, line: 77, type: !379)
!2901 = !DILocation(line: 0, scope: !2898, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 302, column: 25, scope: !2892, inlinedAt: !2896)
!2903 = !DILocation(line: 91, column: 10, scope: !2898, inlinedAt: !2902)
!2904 = !DILocation(line: 0, scope: !2597, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 302, column: 10, scope: !2892, inlinedAt: !2896)
!2906 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2905)
!2907 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2905)
!2908 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2905)
!2909 = !DILocation(line: 287, column: 3, scope: !2887)
!2910 = !DILocation(line: 0, scope: !2892)
!2911 = !DILocation(line: 0, scope: !2898, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 302, column: 25, scope: !2892)
!2913 = !DILocation(line: 91, column: 10, scope: !2898, inlinedAt: !2912)
!2914 = !DILocation(line: 0, scope: !2597, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 302, column: 10, scope: !2892)
!2916 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2915)
!2917 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2915)
!2918 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2915)
!2919 = !DILocation(line: 302, column: 3, scope: !2892)
!2920 = distinct !DISubprogram(name: "xmemdup", scope: !360, file: !360, line: 310, type: !2921, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!43, !639, !46}
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "p", arg: 1, scope: !2920, file: !360, line: 310, type: !639)
!2925 = !DILocalVariable(name: "s", arg: 2, scope: !2920, file: !360, line: 310, type: !46)
!2926 = !DILocation(line: 0, scope: !2920)
!2927 = !DILocation(line: 0, scope: !2616, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 312, column: 18, scope: !2920)
!2929 = !DILocation(line: 49, column: 25, scope: !2616, inlinedAt: !2928)
!2930 = !DILocation(line: 0, scope: !2597, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 49, column: 10, scope: !2616, inlinedAt: !2928)
!2932 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2931)
!2933 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2931)
!2934 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2931)
!2935 = !DILocalVariable(name: "__dest", arg: 1, scope: !2936, file: !1107, line: 26, type: !2939)
!2936 = distinct !DISubprogram(name: "memcpy", scope: !1107, file: !1107, line: 26, type: !2937, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2940)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!43, !2939, !638, !46}
!2939 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!2940 = !{!2935, !2941, !2942}
!2941 = !DILocalVariable(name: "__src", arg: 2, scope: !2936, file: !1107, line: 26, type: !638)
!2942 = !DILocalVariable(name: "__len", arg: 3, scope: !2936, file: !1107, line: 26, type: !46)
!2943 = !DILocation(line: 0, scope: !2936, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 312, column: 10, scope: !2920)
!2945 = !DILocation(line: 29, column: 10, scope: !2936, inlinedAt: !2944)
!2946 = !DILocation(line: 312, column: 3, scope: !2920)
!2947 = distinct !DISubprogram(name: "ximemdup", scope: !360, file: !360, line: 316, type: !2948, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!43, !639, !379}
!2950 = !{!2951, !2952}
!2951 = !DILocalVariable(name: "p", arg: 1, scope: !2947, file: !360, line: 316, type: !639)
!2952 = !DILocalVariable(name: "s", arg: 2, scope: !2947, file: !360, line: 316, type: !379)
!2953 = !DILocation(line: 0, scope: !2947)
!2954 = !DILocation(line: 0, scope: !2629, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 318, column: 18, scope: !2947)
!2956 = !DILocation(line: 0, scope: !2636, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 55, column: 25, scope: !2629, inlinedAt: !2955)
!2958 = !DILocation(line: 57, column: 26, scope: !2636, inlinedAt: !2957)
!2959 = !DILocation(line: 0, scope: !2597, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 55, column: 10, scope: !2629, inlinedAt: !2955)
!2961 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2960)
!2962 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2960)
!2963 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2960)
!2964 = !DILocation(line: 0, scope: !2936, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 318, column: 10, scope: !2947)
!2966 = !DILocation(line: 29, column: 10, scope: !2936, inlinedAt: !2965)
!2967 = !DILocation(line: 318, column: 3, scope: !2947)
!2968 = distinct !DISubprogram(name: "ximemdup0", scope: !360, file: !360, line: 325, type: !2969, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2971)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!79, !639, !379}
!2971 = !{!2972, !2973, !2974}
!2972 = !DILocalVariable(name: "p", arg: 1, scope: !2968, file: !360, line: 325, type: !639)
!2973 = !DILocalVariable(name: "s", arg: 2, scope: !2968, file: !360, line: 325, type: !379)
!2974 = !DILocalVariable(name: "result", scope: !2968, file: !360, line: 327, type: !79)
!2975 = !DILocation(line: 0, scope: !2968)
!2976 = !DILocation(line: 327, column: 30, scope: !2968)
!2977 = !DILocation(line: 0, scope: !2629, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 327, column: 18, scope: !2968)
!2979 = !DILocation(line: 0, scope: !2636, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 55, column: 25, scope: !2629, inlinedAt: !2978)
!2981 = !DILocation(line: 57, column: 26, scope: !2636, inlinedAt: !2980)
!2982 = !DILocation(line: 0, scope: !2597, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 55, column: 10, scope: !2629, inlinedAt: !2978)
!2984 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !2983)
!2985 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !2983)
!2986 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !2983)
!2987 = !DILocation(line: 328, column: 3, scope: !2968)
!2988 = !DILocation(line: 328, column: 13, scope: !2968)
!2989 = !DILocation(line: 0, scope: !2936, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 329, column: 10, scope: !2968)
!2991 = !DILocation(line: 29, column: 10, scope: !2936, inlinedAt: !2990)
!2992 = !DILocation(line: 329, column: 3, scope: !2968)
!2993 = distinct !DISubprogram(name: "xstrdup", scope: !360, file: !360, line: 335, type: !633, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !359, retainedNodes: !2994)
!2994 = !{!2995}
!2995 = !DILocalVariable(name: "string", arg: 1, scope: !2993, file: !360, line: 335, type: !6)
!2996 = !DILocation(line: 0, scope: !2993)
!2997 = !DILocation(line: 337, column: 27, scope: !2993)
!2998 = !DILocation(line: 337, column: 43, scope: !2993)
!2999 = !DILocation(line: 0, scope: !2920, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 337, column: 10, scope: !2993)
!3001 = !DILocation(line: 0, scope: !2616, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 312, column: 18, scope: !2920, inlinedAt: !3000)
!3003 = !DILocation(line: 49, column: 25, scope: !2616, inlinedAt: !3002)
!3004 = !DILocation(line: 0, scope: !2597, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 49, column: 10, scope: !2616, inlinedAt: !3002)
!3006 = !DILocation(line: 39, column: 8, scope: !2604, inlinedAt: !3005)
!3007 = !DILocation(line: 39, column: 7, scope: !2597, inlinedAt: !3005)
!3008 = !DILocation(line: 40, column: 5, scope: !2604, inlinedAt: !3005)
!3009 = !DILocation(line: 0, scope: !2936, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 312, column: 10, scope: !2920, inlinedAt: !3000)
!3011 = !DILocation(line: 29, column: 10, scope: !2936, inlinedAt: !3010)
!3012 = !DILocation(line: 337, column: 3, scope: !2993)
!3013 = distinct !DISubprogram(name: "xalloc_die", scope: !394, file: !394, line: 32, type: !184, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3014)
!3014 = !{!3015}
!3015 = !DILocalVariable(name: "__errstatus", scope: !3016, file: !394, line: 34, type: !3017)
!3016 = distinct !DILexicalBlock(scope: !3013, file: !394, line: 34, column: 3)
!3017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3018 = !DILocation(line: 34, column: 3, scope: !3016)
!3019 = !DILocation(line: 0, scope: !3016)
!3020 = !DILocation(line: 40, column: 3, scope: !3013)
!3021 = distinct !DISubprogram(name: "close_stream", scope: !396, file: !396, line: 55, type: !3022, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3058)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!44, !3024}
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !3026)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !3027)
!3027 = !{!3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3026, file: !75, line: 51, baseType: !44, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3026, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3026, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3026, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3026, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3026, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3026, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3026, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3026, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3026, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3026, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3026, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3026, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3026, file: !75, line: 70, baseType: !3042, size: 64, offset: 832)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3026, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3026, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3026, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3026, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3026, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3026, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3026, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3026, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3026, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3026, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3026, file: !75, line: 93, baseType: !3042, size: 64, offset: 1344)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3026, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3026, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3026, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3026, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!3058 = !{!3059, !3060, !3062, !3063}
!3059 = !DILocalVariable(name: "stream", arg: 1, scope: !3021, file: !396, line: 55, type: !3024)
!3060 = !DILocalVariable(name: "some_pending", scope: !3021, file: !396, line: 57, type: !3061)
!3061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!3062 = !DILocalVariable(name: "prev_fail", scope: !3021, file: !396, line: 58, type: !3061)
!3063 = !DILocalVariable(name: "fclose_fail", scope: !3021, file: !396, line: 59, type: !3061)
!3064 = !DILocation(line: 0, scope: !3021)
!3065 = !DILocation(line: 57, column: 30, scope: !3021)
!3066 = !DILocalVariable(name: "__stream", arg: 1, scope: !3067, file: !864, line: 135, type: !3024)
!3067 = distinct !DISubprogram(name: "ferror_unlocked", scope: !864, file: !864, line: 135, type: !3022, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3068)
!3068 = !{!3066}
!3069 = !DILocation(line: 0, scope: !3067, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 58, column: 27, scope: !3021)
!3071 = !DILocation(line: 137, column: 10, scope: !3067, inlinedAt: !3070)
!3072 = !{!873, !522, i64 0}
!3073 = !DILocation(line: 58, column: 43, scope: !3021)
!3074 = !DILocation(line: 59, column: 29, scope: !3021)
!3075 = !DILocation(line: 59, column: 45, scope: !3021)
!3076 = !DILocation(line: 69, column: 17, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3021, file: !396, line: 69, column: 7)
!3078 = !DILocation(line: 57, column: 50, scope: !3021)
!3079 = !DILocation(line: 69, column: 33, scope: !3077)
!3080 = !DILocation(line: 69, column: 53, scope: !3077)
!3081 = !DILocation(line: 69, column: 59, scope: !3077)
!3082 = !DILocation(line: 69, column: 7, scope: !3021)
!3083 = !DILocation(line: 71, column: 11, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3077, file: !396, line: 70, column: 5)
!3085 = !DILocation(line: 72, column: 9, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3084, file: !396, line: 71, column: 11)
!3087 = !DILocation(line: 72, column: 15, scope: !3086)
!3088 = !DILocation(line: 77, column: 1, scope: !3021)
!3089 = distinct !DISubprogram(name: "rpl_fclose", scope: !398, file: !398, line: 58, type: !3090, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3126)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!44, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !3094)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3094, file: !75, line: 51, baseType: !44, size: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3094, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3094, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3094, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3094, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3094, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3094, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3094, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3094, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3094, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3094, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3094, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3094, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3094, file: !75, line: 70, baseType: !3110, size: 64, offset: 832)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3094, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3094, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3094, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3094, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3094, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3094, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3094, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3094, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3094, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3094, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3094, file: !75, line: 93, baseType: !3110, size: 64, offset: 1344)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3094, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3094, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3094, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3094, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!3126 = !{!3127, !3128, !3129, !3130}
!3127 = !DILocalVariable(name: "fp", arg: 1, scope: !3089, file: !398, line: 58, type: !3092)
!3128 = !DILocalVariable(name: "saved_errno", scope: !3089, file: !398, line: 60, type: !44)
!3129 = !DILocalVariable(name: "fd", scope: !3089, file: !398, line: 63, type: !44)
!3130 = !DILocalVariable(name: "result", scope: !3089, file: !398, line: 74, type: !44)
!3131 = !DILocation(line: 0, scope: !3089)
!3132 = !DILocation(line: 63, column: 12, scope: !3089)
!3133 = !DILocation(line: 64, column: 10, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3089, file: !398, line: 64, column: 7)
!3135 = !DILocation(line: 64, column: 7, scope: !3089)
!3136 = !DILocation(line: 65, column: 12, scope: !3134)
!3137 = !DILocation(line: 65, column: 5, scope: !3134)
!3138 = !DILocation(line: 70, column: 9, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3089, file: !398, line: 70, column: 7)
!3140 = !DILocation(line: 70, column: 23, scope: !3139)
!3141 = !DILocation(line: 70, column: 33, scope: !3139)
!3142 = !DILocation(line: 70, column: 26, scope: !3139)
!3143 = !DILocation(line: 70, column: 59, scope: !3139)
!3144 = !DILocation(line: 71, column: 7, scope: !3139)
!3145 = !DILocation(line: 71, column: 10, scope: !3139)
!3146 = !DILocation(line: 70, column: 7, scope: !3089)
!3147 = !DILocation(line: 100, column: 12, scope: !3089)
!3148 = !DILocation(line: 105, column: 7, scope: !3089)
!3149 = !DILocation(line: 72, column: 19, scope: !3139)
!3150 = !DILocation(line: 105, column: 19, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3089, file: !398, line: 105, column: 7)
!3152 = !DILocation(line: 107, column: 13, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3151, file: !398, line: 106, column: 5)
!3154 = !DILocation(line: 109, column: 5, scope: !3153)
!3155 = !DILocation(line: 112, column: 1, scope: !3089)
!3156 = !DISubprogram(name: "fileno", scope: !157, file: !157, line: 809, type: !3090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3157 = !DISubprogram(name: "fclose", scope: !157, file: !157, line: 178, type: !3090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3158 = !DISubprogram(name: "lseek", scope: !687, file: !687, line: 339, type: !3159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!98, !44, !98, !44}
!3161 = distinct !DISubprogram(name: "rpl_fflush", scope: !400, file: !400, line: 130, type: !3162, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3198)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!44, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !3166)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !3167)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3166, file: !75, line: 51, baseType: !44, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3166, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3166, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3166, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3166, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3166, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3166, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3166, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3166, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3166, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3166, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3166, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3166, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3166, file: !75, line: 70, baseType: !3182, size: 64, offset: 832)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3166, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3166, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3166, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3166, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3166, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3166, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3166, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3166, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3166, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3166, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3166, file: !75, line: 93, baseType: !3182, size: 64, offset: 1344)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3166, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3166, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3166, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3166, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!3198 = !{!3199}
!3199 = !DILocalVariable(name: "stream", arg: 1, scope: !3161, file: !400, line: 130, type: !3164)
!3200 = !DILocation(line: 0, scope: !3161)
!3201 = !DILocation(line: 151, column: 14, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3161, file: !400, line: 151, column: 7)
!3203 = !DILocation(line: 151, column: 22, scope: !3202)
!3204 = !DILocation(line: 151, column: 27, scope: !3202)
!3205 = !DILocation(line: 151, column: 7, scope: !3161)
!3206 = !DILocation(line: 152, column: 12, scope: !3202)
!3207 = !DILocation(line: 152, column: 5, scope: !3202)
!3208 = !DILocalVariable(name: "fp", arg: 1, scope: !3209, file: !400, line: 42, type: !3164)
!3209 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !400, file: !400, line: 42, type: !3210, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !3164}
!3212 = !{!3208}
!3213 = !DILocation(line: 0, scope: !3209, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 157, column: 3, scope: !3161)
!3215 = !DILocation(line: 44, column: 12, scope: !3216, inlinedAt: !3214)
!3216 = distinct !DILexicalBlock(scope: !3209, file: !400, line: 44, column: 7)
!3217 = !DILocation(line: 44, column: 19, scope: !3216, inlinedAt: !3214)
!3218 = !DILocation(line: 44, column: 7, scope: !3209, inlinedAt: !3214)
!3219 = !DILocation(line: 46, column: 5, scope: !3216, inlinedAt: !3214)
!3220 = !DILocation(line: 159, column: 10, scope: !3161)
!3221 = !DILocation(line: 159, column: 3, scope: !3161)
!3222 = !DILocation(line: 236, column: 1, scope: !3161)
!3223 = !DISubprogram(name: "fflush", scope: !157, file: !157, line: 230, type: !3162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3224 = distinct !DISubprogram(name: "rpl_fseeko", scope: !402, file: !402, line: 28, type: !3225, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3262)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!44, !3227, !3261, !44}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !3229)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !3230)
!3230 = !{!3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3229, file: !75, line: 51, baseType: !44, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3229, file: !75, line: 54, baseType: !79, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3229, file: !75, line: 55, baseType: !79, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3229, file: !75, line: 56, baseType: !79, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3229, file: !75, line: 57, baseType: !79, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3229, file: !75, line: 58, baseType: !79, size: 64, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3229, file: !75, line: 59, baseType: !79, size: 64, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3229, file: !75, line: 60, baseType: !79, size: 64, offset: 448)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3229, file: !75, line: 61, baseType: !79, size: 64, offset: 512)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3229, file: !75, line: 64, baseType: !79, size: 64, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3229, file: !75, line: 65, baseType: !79, size: 64, offset: 640)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3229, file: !75, line: 66, baseType: !79, size: 64, offset: 704)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3229, file: !75, line: 68, baseType: !91, size: 64, offset: 768)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3229, file: !75, line: 70, baseType: !3245, size: 64, offset: 832)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3229, file: !75, line: 72, baseType: !44, size: 32, offset: 896)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3229, file: !75, line: 73, baseType: !44, size: 32, offset: 928)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3229, file: !75, line: 74, baseType: !98, size: 64, offset: 960)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3229, file: !75, line: 77, baseType: !45, size: 16, offset: 1024)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3229, file: !75, line: 78, baseType: !103, size: 8, offset: 1040)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3229, file: !75, line: 79, baseType: !105, size: 8, offset: 1048)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3229, file: !75, line: 81, baseType: !109, size: 64, offset: 1088)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3229, file: !75, line: 89, baseType: !112, size: 64, offset: 1152)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3229, file: !75, line: 91, baseType: !114, size: 64, offset: 1216)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3229, file: !75, line: 92, baseType: !117, size: 64, offset: 1280)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3229, file: !75, line: 93, baseType: !3245, size: 64, offset: 1344)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3229, file: !75, line: 94, baseType: !43, size: 64, offset: 1408)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3229, file: !75, line: 95, baseType: !46, size: 64, offset: 1472)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3229, file: !75, line: 96, baseType: !44, size: 32, offset: 1536)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3229, file: !75, line: 98, baseType: !124, size: 160, offset: 1568)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !157, line: 63, baseType: !98)
!3262 = !{!3263, !3264, !3265, !3266}
!3263 = !DILocalVariable(name: "fp", arg: 1, scope: !3224, file: !402, line: 28, type: !3227)
!3264 = !DILocalVariable(name: "offset", arg: 2, scope: !3224, file: !402, line: 28, type: !3261)
!3265 = !DILocalVariable(name: "whence", arg: 3, scope: !3224, file: !402, line: 28, type: !44)
!3266 = !DILocalVariable(name: "pos", scope: !3267, file: !402, line: 123, type: !3261)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !402, line: 119, column: 5)
!3268 = distinct !DILexicalBlock(scope: !3224, file: !402, line: 55, column: 7)
!3269 = !DILocation(line: 0, scope: !3224)
!3270 = !DILocation(line: 55, column: 12, scope: !3268)
!3271 = !{!873, !436, i64 16}
!3272 = !DILocation(line: 55, column: 33, scope: !3268)
!3273 = !{!873, !436, i64 8}
!3274 = !DILocation(line: 55, column: 25, scope: !3268)
!3275 = !DILocation(line: 56, column: 7, scope: !3268)
!3276 = !DILocation(line: 56, column: 15, scope: !3268)
!3277 = !DILocation(line: 56, column: 37, scope: !3268)
!3278 = !{!873, !436, i64 32}
!3279 = !DILocation(line: 56, column: 29, scope: !3268)
!3280 = !DILocation(line: 57, column: 7, scope: !3268)
!3281 = !DILocation(line: 57, column: 15, scope: !3268)
!3282 = !{!873, !436, i64 72}
!3283 = !DILocation(line: 57, column: 29, scope: !3268)
!3284 = !DILocation(line: 55, column: 7, scope: !3224)
!3285 = !DILocation(line: 123, column: 26, scope: !3267)
!3286 = !DILocation(line: 123, column: 19, scope: !3267)
!3287 = !DILocation(line: 0, scope: !3267)
!3288 = !DILocation(line: 124, column: 15, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3267, file: !402, line: 124, column: 11)
!3290 = !DILocation(line: 124, column: 11, scope: !3267)
!3291 = !DILocation(line: 135, column: 12, scope: !3267)
!3292 = !DILocation(line: 135, column: 19, scope: !3267)
!3293 = !DILocation(line: 136, column: 12, scope: !3267)
!3294 = !DILocation(line: 136, column: 20, scope: !3267)
!3295 = !{!873, !874, i64 144}
!3296 = !DILocation(line: 167, column: 7, scope: !3267)
!3297 = !DILocation(line: 169, column: 10, scope: !3224)
!3298 = !DILocation(line: 169, column: 3, scope: !3224)
!3299 = !DILocation(line: 170, column: 1, scope: !3224)
!3300 = !DISubprogram(name: "fseeko", scope: !157, file: !157, line: 736, type: !3301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!44, !3227, !98, !44}
!3303 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !337, file: !337, line: 100, type: !3304, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3307)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!46, !1125, !6, !46, !3306}
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3307 = !{!3308, !3309, !3310, !3311, !3312}
!3308 = !DILocalVariable(name: "pwc", arg: 1, scope: !3303, file: !337, line: 100, type: !1125)
!3309 = !DILocalVariable(name: "s", arg: 2, scope: !3303, file: !337, line: 100, type: !6)
!3310 = !DILocalVariable(name: "n", arg: 3, scope: !3303, file: !337, line: 100, type: !46)
!3311 = !DILocalVariable(name: "ps", arg: 4, scope: !3303, file: !337, line: 100, type: !3306)
!3312 = !DILocalVariable(name: "ret", scope: !3303, file: !337, line: 130, type: !46)
!3313 = !DILocation(line: 0, scope: !3303)
!3314 = !DILocation(line: 105, column: 9, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3303, file: !337, line: 105, column: 7)
!3316 = !DILocation(line: 105, column: 7, scope: !3303)
!3317 = !DILocation(line: 117, column: 10, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3303, file: !337, line: 117, column: 7)
!3319 = !DILocation(line: 117, column: 7, scope: !3303)
!3320 = !DILocation(line: 130, column: 16, scope: !3303)
!3321 = !DILocation(line: 135, column: 11, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3303, file: !337, line: 135, column: 7)
!3323 = !DILocation(line: 135, column: 25, scope: !3322)
!3324 = !DILocation(line: 135, column: 30, scope: !3322)
!3325 = !DILocation(line: 135, column: 7, scope: !3303)
!3326 = !DILocalVariable(name: "ps", arg: 1, scope: !3327, file: !1098, line: 1135, type: !3306)
!3327 = distinct !DISubprogram(name: "mbszero", scope: !1098, file: !1098, line: 1135, type: !3328, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !3306}
!3330 = !{!3326}
!3331 = !DILocation(line: 0, scope: !3327, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 137, column: 5, scope: !3322)
!3333 = !DILocalVariable(name: "__dest", arg: 1, scope: !3334, file: !1107, line: 57, type: !43)
!3334 = distinct !DISubprogram(name: "memset", scope: !1107, file: !1107, line: 57, type: !1108, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3335)
!3335 = !{!3333, !3336, !3337}
!3336 = !DILocalVariable(name: "__ch", arg: 2, scope: !3334, file: !1107, line: 57, type: !44)
!3337 = !DILocalVariable(name: "__len", arg: 3, scope: !3334, file: !1107, line: 57, type: !46)
!3338 = !DILocation(line: 0, scope: !3334, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 1137, column: 3, scope: !3327, inlinedAt: !3332)
!3340 = !DILocation(line: 59, column: 10, scope: !3334, inlinedAt: !3339)
!3341 = !DILocation(line: 137, column: 5, scope: !3322)
!3342 = !DILocation(line: 138, column: 11, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3303, file: !337, line: 138, column: 7)
!3344 = !DILocation(line: 138, column: 7, scope: !3303)
!3345 = !DILocation(line: 139, column: 5, scope: !3343)
!3346 = !DILocation(line: 143, column: 26, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3303, file: !337, line: 143, column: 7)
!3348 = !DILocation(line: 143, column: 41, scope: !3347)
!3349 = !DILocation(line: 143, column: 7, scope: !3303)
!3350 = !DILocation(line: 145, column: 15, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !337, line: 145, column: 11)
!3352 = distinct !DILexicalBlock(scope: !3347, file: !337, line: 144, column: 5)
!3353 = !DILocation(line: 145, column: 11, scope: !3352)
!3354 = !DILocation(line: 146, column: 32, scope: !3351)
!3355 = !DILocation(line: 146, column: 16, scope: !3351)
!3356 = !DILocation(line: 146, column: 14, scope: !3351)
!3357 = !DILocation(line: 146, column: 9, scope: !3351)
!3358 = !DILocation(line: 286, column: 1, scope: !3303)
!3359 = !DISubprogram(name: "mbsinit", scope: !3360, file: !3360, line: 293, type: !3361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !513)
!3360 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!44, !3363}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!3365 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !404, file: !404, line: 27, type: !2581, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3366)
!3366 = !{!3367, !3368, !3369, !3370}
!3367 = !DILocalVariable(name: "ptr", arg: 1, scope: !3365, file: !404, line: 27, type: !43)
!3368 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3365, file: !404, line: 27, type: !46)
!3369 = !DILocalVariable(name: "size", arg: 3, scope: !3365, file: !404, line: 27, type: !46)
!3370 = !DILocalVariable(name: "nbytes", scope: !3365, file: !404, line: 29, type: !46)
!3371 = !DILocation(line: 0, scope: !3365)
!3372 = !DILocation(line: 30, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3365, file: !404, line: 30, column: 7)
!3374 = !DILocalVariable(name: "ptr", arg: 1, scope: !3375, file: !2672, line: 2057, type: !43)
!3375 = distinct !DISubprogram(name: "rpl_realloc", scope: !2672, file: !2672, line: 2057, type: !2664, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3376)
!3376 = !{!3374, !3377}
!3377 = !DILocalVariable(name: "size", arg: 2, scope: !3375, file: !2672, line: 2057, type: !46)
!3378 = !DILocation(line: 0, scope: !3375, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 37, column: 10, scope: !3365)
!3380 = !DILocation(line: 2059, column: 24, scope: !3375, inlinedAt: !3379)
!3381 = !DILocation(line: 2059, column: 10, scope: !3375, inlinedAt: !3379)
!3382 = !DILocation(line: 37, column: 3, scope: !3365)
!3383 = !DILocation(line: 32, column: 7, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3373, file: !404, line: 31, column: 5)
!3385 = !DILocation(line: 32, column: 13, scope: !3384)
!3386 = !DILocation(line: 33, column: 7, scope: !3384)
!3387 = !DILocation(line: 38, column: 1, scope: !3365)
!3388 = distinct !DISubprogram(name: "hard_locale", scope: !407, file: !407, line: 28, type: !3389, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!58, !44}
!3391 = !{!3392, !3393}
!3392 = !DILocalVariable(name: "category", arg: 1, scope: !3388, file: !407, line: 28, type: !44)
!3393 = !DILocalVariable(name: "locale", scope: !3388, file: !407, line: 30, type: !3394)
!3394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3395)
!3395 = !{!3396}
!3396 = !DISubrange(count: 257)
!3397 = !DILocation(line: 0, scope: !3388)
!3398 = !DILocation(line: 30, column: 3, scope: !3388)
!3399 = !DILocation(line: 30, column: 8, scope: !3388)
!3400 = !DILocation(line: 32, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3388, file: !407, line: 32, column: 7)
!3402 = !DILocation(line: 32, column: 7, scope: !3388)
!3403 = !DILocalVariable(name: "__s1", arg: 1, scope: !3404, file: !471, line: 1359, type: !6)
!3404 = distinct !DISubprogram(name: "streq", scope: !471, file: !471, line: 1359, type: !472, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3405)
!3405 = !{!3403, !3406}
!3406 = !DILocalVariable(name: "__s2", arg: 2, scope: !3404, file: !471, line: 1359, type: !6)
!3407 = !DILocation(line: 0, scope: !3404, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 35, column: 9, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3388, file: !407, line: 35, column: 7)
!3410 = !DILocation(line: 1361, column: 11, scope: !3404, inlinedAt: !3408)
!3411 = !DILocation(line: 1361, column: 10, scope: !3404, inlinedAt: !3408)
!3412 = !DILocation(line: 35, column: 29, scope: !3409)
!3413 = !DILocation(line: 0, scope: !3404, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 35, column: 32, scope: !3409)
!3415 = !DILocation(line: 1361, column: 11, scope: !3404, inlinedAt: !3414)
!3416 = !DILocation(line: 1361, column: 10, scope: !3404, inlinedAt: !3414)
!3417 = !DILocation(line: 35, column: 7, scope: !3388)
!3418 = !DILocation(line: 46, column: 3, scope: !3388)
!3419 = !DILocation(line: 47, column: 1, scope: !3388)
!3420 = distinct !DISubprogram(name: "setlocale_null_r", scope: !409, file: !409, line: 154, type: !3421, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!44, !44, !79, !46}
!3423 = !{!3424, !3425, !3426}
!3424 = !DILocalVariable(name: "category", arg: 1, scope: !3420, file: !409, line: 154, type: !44)
!3425 = !DILocalVariable(name: "buf", arg: 2, scope: !3420, file: !409, line: 154, type: !79)
!3426 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3420, file: !409, line: 154, type: !46)
!3427 = !DILocation(line: 0, scope: !3420)
!3428 = !DILocation(line: 159, column: 10, scope: !3420)
!3429 = !DILocation(line: 159, column: 3, scope: !3420)
!3430 = distinct !DISubprogram(name: "setlocale_null", scope: !409, file: !409, line: 186, type: !3431, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!6, !44}
!3433 = !{!3434}
!3434 = !DILocalVariable(name: "category", arg: 1, scope: !3430, file: !409, line: 186, type: !44)
!3435 = !DILocation(line: 0, scope: !3430)
!3436 = !DILocation(line: 189, column: 10, scope: !3430)
!3437 = !DILocation(line: 189, column: 3, scope: !3430)
!3438 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !411, file: !411, line: 35, type: !3431, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3439)
!3439 = !{!3440, !3441}
!3440 = !DILocalVariable(name: "category", arg: 1, scope: !3438, file: !411, line: 35, type: !44)
!3441 = !DILocalVariable(name: "result", scope: !3438, file: !411, line: 37, type: !6)
!3442 = !DILocation(line: 0, scope: !3438)
!3443 = !DILocation(line: 37, column: 24, scope: !3438)
!3444 = !DILocation(line: 62, column: 3, scope: !3438)
!3445 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !411, file: !411, line: 66, type: !3421, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451}
!3447 = !DILocalVariable(name: "category", arg: 1, scope: !3445, file: !411, line: 66, type: !44)
!3448 = !DILocalVariable(name: "buf", arg: 2, scope: !3445, file: !411, line: 66, type: !79)
!3449 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3445, file: !411, line: 66, type: !46)
!3450 = !DILocalVariable(name: "result", scope: !3445, file: !411, line: 111, type: !6)
!3451 = !DILocalVariable(name: "length", scope: !3452, file: !411, line: 125, type: !46)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !411, line: 124, column: 5)
!3453 = distinct !DILexicalBlock(scope: !3445, file: !411, line: 113, column: 7)
!3454 = !DILocation(line: 0, scope: !3445)
!3455 = !DILocation(line: 0, scope: !3438, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 111, column: 24, scope: !3445)
!3457 = !DILocation(line: 37, column: 24, scope: !3438, inlinedAt: !3456)
!3458 = !DILocation(line: 113, column: 14, scope: !3453)
!3459 = !DILocation(line: 113, column: 7, scope: !3445)
!3460 = !DILocation(line: 116, column: 19, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !411, line: 116, column: 11)
!3462 = distinct !DILexicalBlock(scope: !3453, file: !411, line: 114, column: 5)
!3463 = !DILocation(line: 116, column: 11, scope: !3462)
!3464 = !DILocation(line: 120, column: 16, scope: !3461)
!3465 = !DILocation(line: 120, column: 9, scope: !3461)
!3466 = !DILocation(line: 125, column: 23, scope: !3452)
!3467 = !DILocation(line: 0, scope: !3452)
!3468 = !DILocation(line: 126, column: 18, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3452, file: !411, line: 126, column: 11)
!3470 = !DILocation(line: 126, column: 11, scope: !3452)
!3471 = !DILocation(line: 128, column: 39, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3469, file: !411, line: 127, column: 9)
!3473 = !DILocalVariable(name: "__dest", arg: 1, scope: !3474, file: !1107, line: 26, type: !2939)
!3474 = distinct !DISubprogram(name: "memcpy", scope: !1107, file: !1107, line: 26, type: !2937, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3475)
!3475 = !{!3473, !3476, !3477}
!3476 = !DILocalVariable(name: "__src", arg: 2, scope: !3474, file: !1107, line: 26, type: !638)
!3477 = !DILocalVariable(name: "__len", arg: 3, scope: !3474, file: !1107, line: 26, type: !46)
!3478 = !DILocation(line: 0, scope: !3474, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 128, column: 11, scope: !3472)
!3480 = !DILocation(line: 29, column: 10, scope: !3474, inlinedAt: !3479)
!3481 = !DILocation(line: 129, column: 11, scope: !3472)
!3482 = !DILocation(line: 133, column: 23, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !411, line: 133, column: 15)
!3484 = distinct !DILexicalBlock(scope: !3469, file: !411, line: 132, column: 9)
!3485 = !DILocation(line: 133, column: 15, scope: !3484)
!3486 = !DILocation(line: 138, column: 44, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3483, file: !411, line: 134, column: 13)
!3488 = !DILocation(line: 0, scope: !3474, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 138, column: 15, scope: !3487)
!3490 = !DILocation(line: 29, column: 10, scope: !3474, inlinedAt: !3489)
!3491 = !DILocation(line: 139, column: 15, scope: !3487)
!3492 = !DILocation(line: 139, column: 32, scope: !3487)
!3493 = !DILocation(line: 140, column: 13, scope: !3487)
!3494 = !DILocation(line: 0, scope: !3453)
!3495 = !DILocation(line: 145, column: 1, scope: !3445)
