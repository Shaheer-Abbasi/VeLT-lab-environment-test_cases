; ModuleID = 'src/true.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

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

@.str = private unnamed_addr constant [61 x i8] c"Usage: %s [ignored command line arguments]\0A  or:  %s OPTION\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating success.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.43 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), align 8, !dbg !119
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !124
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !129
@.str.22 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !131
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !167
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !137
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !163
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !165
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !172
@.str.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !178
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 8, !dbg !214
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !240
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !258
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !288
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !295
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !260
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !297
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !246
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !265
@.str.67 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.68 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.70 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.72 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.73 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.74 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.75 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.76 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.77 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.78 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.79 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.80 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.81 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.82 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.83 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.88 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.89 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.90 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.91 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !303
@exit_failure = dso_local global i32 1, align 4, !dbg !311
@.str.104 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.103 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !317
@.str.120 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !407 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !411, metadata !DIExpression()), !dbg !412
  %2 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !413
  %3 = load i8*, i8** @program_name, align 8, !dbg !413, !tbaa !414
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %2, i8* noundef %3, i8* noundef %3) #32, !dbg !413
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !418
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %5) #32, !dbg !418
  %7 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !419
  tail call fastcc void @oputs_(i8* noundef %7), !dbg !419
  %8 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !420
  tail call fastcc void @oputs_(i8* noundef %8), !dbg !420
  %9 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #32, !dbg !421
  %10 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !421
  tail call fastcc void @emit_ancillary_info(), !dbg !422
  tail call void @exit(i32 noundef %0) #33, !dbg !423
  unreachable, !dbg !423
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !424 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #4 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !39, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8* %0, metadata !40, metadata !DIExpression()), !dbg !429
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !430, !tbaa !431
  %3 = icmp eq i32 %2, -1, !dbg !433
  br i1 %3, label %4, label %16, !dbg !434

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #32, !dbg !435
  call void @llvm.dbg.value(metadata i8* %5, metadata !41, metadata !DIExpression()), !dbg !436
  %6 = icmp eq i8* %5, null, !dbg !437
  br i1 %6, label %14, label %7, !dbg !438

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !439, !tbaa !440
  %9 = icmp eq i8 %8, 0, !dbg !439
  br i1 %9, label %14, label %10, !dbg !441

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !442, metadata !DIExpression()) #32, !dbg !449
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), metadata !448, metadata !DIExpression()) #32, !dbg !449
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #34, !dbg !451
  %12 = icmp eq i32 %11, 0, !dbg !452
  %13 = zext i1 %12 to i32, !dbg !441
  br label %14, !dbg !441

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !453, !tbaa !431
  br label %16, !dbg !454

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !455
  %18 = icmp eq i32 %17, 0, !dbg !455
  br i1 %18, label %22, label %19, !dbg !457

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !458, !tbaa !414
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !458
  br label %121, !dbg !460

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !44, metadata !DIExpression()), !dbg !429
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #34, !dbg !461
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !462
  call void @llvm.dbg.value(metadata i8* %24, metadata !46, metadata !DIExpression()), !dbg !429
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !463
  call void @llvm.dbg.value(metadata i8* %25, metadata !47, metadata !DIExpression()), !dbg !429
  %26 = icmp eq i8* %25, null, !dbg !464
  br i1 %26, label %53, label %27, !dbg !465

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !466
  br i1 %28, label %53, label %29, !dbg !467

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !48, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !468
  %30 = icmp ult i8* %24, %25, !dbg !469
  br i1 %30, label %31, label %53, !dbg !470

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !429
  %33 = load i16*, i16** %32, align 8, !tbaa !414
  br label %34, !dbg !470

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !48, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i64 %36, metadata !52, metadata !DIExpression()), !dbg !468
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !471
  call void @llvm.dbg.value(metadata i8* %37, metadata !48, metadata !DIExpression()), !dbg !468
  %38 = load i8, i8* %35, align 1, !dbg !471, !tbaa !440
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !471
  %41 = load i16, i16* %40, align 2, !dbg !471, !tbaa !472
  %42 = lshr i16 %41, 13, !dbg !474
  %43 = and i16 %42, 1, !dbg !474
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !475
  call void @llvm.dbg.value(metadata i64 %45, metadata !52, metadata !DIExpression()), !dbg !468
  %46 = icmp ult i8* %37, %25, !dbg !469
  %47 = icmp ult i64 %45, 2, !dbg !476
  %48 = select i1 %46, i1 %47, i1 false, !dbg !476
  br i1 %48, label %34, label %49, !dbg !470, !llvm.loop !477

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !479
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !481
  %52 = xor i1 %50, true, !dbg !481
  br label %53, !dbg !481

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !429
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !44, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8* %54, metadata !47, metadata !DIExpression()), !dbg !429
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #34, !dbg !482
  call void @llvm.dbg.value(metadata i64 %56, metadata !53, metadata !DIExpression()), !dbg !429
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !483
  call void @llvm.dbg.value(metadata i8* %57, metadata !54, metadata !DIExpression()), !dbg !429
  br label %58, !dbg !484

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !429
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !44, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8* %59, metadata !54, metadata !DIExpression()), !dbg !429
  %61 = load i8, i8* %59, align 1, !dbg !485, !tbaa !440
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !486

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !487
  %64 = load i8, i8* %63, align 1, !dbg !490, !tbaa !440
  %65 = icmp ne i8 %64, 45, !dbg !491
  %66 = select i1 %65, i1 %60, i1 false, !dbg !492
  br label %67, !dbg !492

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !44, metadata !DIExpression()), !dbg !429
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !493
  %70 = load i16*, i16** %69, align 8, !dbg !493, !tbaa !414
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !493
  %73 = load i16, i16* %72, align 2, !dbg !493, !tbaa !472
  %74 = and i16 %73, 8192, !dbg !493
  %75 = icmp eq i16 %74, 0, !dbg !493
  br i1 %75, label %89, label %76, !dbg !495

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !496
  br i1 %77, label %91, label %78, !dbg !499

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !500
  %80 = load i8, i8* %79, align 1, !dbg !500, !tbaa !440
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !500
  %83 = load i16, i16* %82, align 2, !dbg !500, !tbaa !472
  %84 = and i16 %83, 8192, !dbg !500
  %85 = icmp eq i16 %84, 0, !dbg !500
  br i1 %85, label %86, label %91, !dbg !501

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !502
  br i1 %88, label %89, label %91, !dbg !502

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !504
  call void @llvm.dbg.value(metadata i8* %90, metadata !54, metadata !DIExpression()), !dbg !429
  br label %58, !dbg !484, !llvm.loop !505

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !507
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !507, !tbaa !414
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !507
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !508
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), metadata !448, metadata !DIExpression()) #32, !dbg !508
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !510
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !512
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !514
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !516
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !518
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !520
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !522
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !524
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !526
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !114, metadata !DIExpression()), !dbg !429
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 noundef 6) #34, !dbg !528
  %96 = icmp eq i32 %95, 0, !dbg !528
  br i1 %96, label %100, label %97, !dbg !530

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 noundef 9) #34, !dbg !531
  %99 = icmp eq i32 %98, 0, !dbg !531
  br i1 %99, label %100, label %103, !dbg !532

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !533
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !533
  br label %106, !dbg !535

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !536
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !536
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !538, !tbaa !414
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !538
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !539, !tbaa !414
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !539
  %111 = ptrtoint i8* %59 to i64, !dbg !540
  %112 = sub i64 %111, %92, !dbg !540
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !540, !tbaa !414
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !540
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !541, !tbaa !414
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !541
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !542, !tbaa !414
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !542
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !543, !tbaa !414
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !543
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !544
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !545 {
  %1 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()), !dbg !564
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !565
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #32, !dbg !565
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !550, metadata !DIExpression()), !dbg !566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %2, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !566
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %1, metadata !560, metadata !DIExpression()), !dbg !564
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !567
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !560, metadata !DIExpression()), !dbg !564
  br label %4, !dbg !568

4:                                                ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !560, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !569
  call void @llvm.dbg.value(metadata i8* %5, metadata !448, metadata !DIExpression()) #32, !dbg !569
  %7 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %5) #34, !dbg !571
  %8 = icmp eq i32 %7, 0, !dbg !572
  br i1 %8, label %14, label %9, !dbg !568

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !573
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !560, metadata !DIExpression()), !dbg !564
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !574
  %12 = load i8*, i8** %11, align 8, !dbg !574, !tbaa !575
  %13 = icmp eq i8* %12, null, !dbg !577
  br i1 %13, label %14, label %4, !dbg !578, !llvm.loop !579

14:                                               ; preds = %4, %9
  %15 = phi %struct.infomap* [ %6, %4 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !580
  %17 = load i8*, i8** %16, align 8, !dbg !580, !tbaa !582
  %18 = icmp eq i8* %17, null, !dbg !583
  %19 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %17, !dbg !584
  call void @llvm.dbg.value(metadata i8* %19, metadata !559, metadata !DIExpression()), !dbg !564
  tail call void @emit_bug_reporting_address() #32, !dbg !585
  %20 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !586
  call void @llvm.dbg.value(metadata i8* %20, metadata !562, metadata !DIExpression()), !dbg !564
  %21 = icmp eq i8* %20, null, !dbg !587
  br i1 %21, label %29, label %22, !dbg !589

22:                                               ; preds = %14
  %23 = tail call i32 @strncmp(i8* noundef nonnull %20, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i64 noundef 3) #34, !dbg !590
  %24 = icmp eq i32 %23, 0, !dbg !590
  br i1 %24, label %29, label %25, !dbg !591

25:                                               ; preds = %22
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.43, i64 0, i64 0), i32 noundef 5) #32, !dbg !592
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !592, !tbaa !414
  %28 = tail call i32 @fputs_unlocked(i8* noundef %26, %struct._IO_FILE* noundef %27), !dbg !592
  br label %29, !dbg !594

29:                                               ; preds = %25, %22, %14
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !442, metadata !DIExpression()) #32, !dbg !595
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), metadata !448, metadata !DIExpression()) #32, !dbg !595
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !563, metadata !DIExpression()), !dbg !564
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i32 noundef 5) #32, !dbg !597
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %30, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !597
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #32, !dbg !598
  %33 = icmp eq i8* %19, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), !dbg !598
  %34 = select i1 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !598
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %32, i8* noundef %19, i8* noundef %34) #32, !dbg !598
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #32, !dbg !599
  ret void, !dbg !599
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !600 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !604 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nounwind readonly
declare !dbg !609 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !613 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #12 !dbg !619 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !624, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i8** %1, metadata !625, metadata !DIExpression()), !dbg !626
  %3 = icmp eq i32 %0, 2, !dbg !627
  br i1 %3, label %4, label %22, !dbg !629

4:                                                ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !630, !tbaa !414
  tail call void @set_program_name(i8* noundef %5) #32, !dbg !632
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !633
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #32, !dbg !634
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #32, !dbg !635
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !636
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !637
  %11 = load i8*, i8** %10, align 8, !dbg !637, !tbaa !414
  call void @llvm.dbg.value(metadata i8* %11, metadata !442, metadata !DIExpression()) #32, !dbg !639
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !448, metadata !DIExpression()) #32, !dbg !639
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #34, !dbg !641
  %13 = icmp eq i32 %12, 0, !dbg !642
  br i1 %13, label %14, label %15, !dbg !643

14:                                               ; preds = %4
  tail call void @usage(i32 noundef 0) #36, !dbg !644
  unreachable, !dbg !644

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %11, metadata !442, metadata !DIExpression()) #32, !dbg !645
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), metadata !448, metadata !DIExpression()) #32, !dbg !645
  %16 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #34, !dbg !648
  %17 = icmp eq i32 %16, 0, !dbg !649
  br i1 %17, label %18, label %22, !dbg !650

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !414
  %20 = load i8*, i8** @Version, align 8, !dbg !652, !tbaa !414
  %21 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #32, !dbg !653
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %20, i8* noundef %21, i8* noundef null) #32, !dbg !654
  br label %22, !dbg !654

22:                                               ; preds = %15, %18, %2
  ret i32 0, !dbg !655
}

; Function Attrs: nounwind
declare !dbg !656 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !659 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !660 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !663 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !665, metadata !DIExpression()), !dbg !666
  store i8* %0, i8** @file_name, align 8, !dbg !667, !tbaa !414
  ret void, !dbg !668
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !669 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !673, metadata !DIExpression()), !dbg !674
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !675, !tbaa !676
  ret void, !dbg !678
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !679 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !414
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !685
  %3 = icmp eq i32 %2, 0, !dbg !686
  br i1 %3, label %22, label %4, !dbg !687

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !688, !tbaa !676, !range !689
  %6 = icmp eq i8 %5, 0, !dbg !688
  br i1 %6, label %11, label %7, !dbg !690

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !691
  %9 = load i32, i32* %8, align 4, !dbg !691, !tbaa !431
  %10 = icmp eq i32 %9, 32, !dbg !692
  br i1 %10, label %22, label %11, !dbg !693

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.23, i64 0, i64 0), i32 noundef 5) #32, !dbg !694
  call void @llvm.dbg.value(metadata i8* %12, metadata !681, metadata !DIExpression()), !dbg !695
  %13 = load i8*, i8** @file_name, align 8, !dbg !696, !tbaa !414
  %14 = icmp eq i8* %13, null, !dbg !696
  %15 = tail call i32* @__errno_location() #35, !dbg !698
  %16 = load i32, i32* %15, align 4, !dbg !698, !tbaa !431
  br i1 %14, label %19, label %17, !dbg !699

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !700
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.24, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !700
  br label %20, !dbg !700

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.25, i64 0, i64 0), i8* noundef %12) #32, !dbg !701
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !702, !tbaa !431
  tail call void @_exit(i32 noundef %21) #33, !dbg !703
  unreachable, !dbg !703

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !704, !tbaa !414
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !706
  %25 = icmp eq i32 %24, 0, !dbg !707
  br i1 %25, label %28, label %26, !dbg !708

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !709, !tbaa !431
  tail call void @_exit(i32 noundef %27) #33, !dbg !710
  unreachable, !dbg !710

28:                                               ; preds = %22
  ret void, !dbg !711
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !712 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !716, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i32 %1, metadata !717, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i8* %2, metadata !718, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !719, metadata !DIExpression()), !dbg !721
  tail call fastcc void @flush_stdout(), !dbg !722
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !723, !tbaa !414
  %7 = icmp eq void ()* %6, null, !dbg !723
  br i1 %7, label %9, label %8, !dbg !725

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !726
  br label %13, !dbg !726

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !727, !tbaa !414
  %11 = tail call i8* @getprogname() #34, !dbg !727
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* noundef %11) #32, !dbg !727
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !729
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !729
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !729, !tbaa.struct !730
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !729
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !729
  ret void, !dbg !731
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !732 {
  call void @llvm.dbg.value(metadata i32 1, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i32 1, metadata !736, metadata !DIExpression()) #32, !dbg !741
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !744
  %2 = icmp slt i32 %1, 0, !dbg !745
  br i1 %2, label %6, label %3, !dbg !746

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !414
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !747
  br label %6, !dbg !747

6:                                                ; preds = %3, %0
  ret void, !dbg !748
}

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !749 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !751, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i32 %1, metadata !752, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i8* %2, metadata !753, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !754, metadata !DIExpression()), !dbg !756
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !757, !tbaa !414
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !758
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !759, metadata !DIExpression()) #32, !dbg !802
  call void @llvm.dbg.value(metadata i8* %2, metadata !800, metadata !DIExpression()) #32, !dbg !802
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !804
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !804, !noalias !805
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !804
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !804
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !804, !noalias !805
  %11 = load i32, i32* @error_message_count, align 4, !dbg !809, !tbaa !431
  %12 = add i32 %11, 1, !dbg !809
  store i32 %12, i32* @error_message_count, align 4, !dbg !809, !tbaa !431
  %13 = icmp eq i32 %1, 0, !dbg !810
  br i1 %13, label %24, label %14, !dbg !812

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !813, metadata !DIExpression()) #32, !dbg !821
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !823
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !823
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !817, metadata !DIExpression()) #32, !dbg !824
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !825
  call void @llvm.dbg.value(metadata i8* %16, metadata !816, metadata !DIExpression()) #32, !dbg !821
  %17 = icmp eq i8* %16, null, !dbg !826
  br i1 %17, label %18, label %20, !dbg !828

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.28, i64 0, i64 0), i32 noundef 5) #32, !dbg !829
  call void @llvm.dbg.value(metadata i8* %19, metadata !816, metadata !DIExpression()) #32, !dbg !821
  br label %20, !dbg !830

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !821
  call void @llvm.dbg.value(metadata i8* %21, metadata !816, metadata !DIExpression()) #32, !dbg !821
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !831, !tbaa !414
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.29, i64 0, i64 0), i8* noundef %21) #32, !dbg !831
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !832
  br label %24, !dbg !833

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !834, !tbaa !414
  call void @llvm.dbg.value(metadata i32 10, metadata !835, metadata !DIExpression()) #32, !dbg !842
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !841, metadata !DIExpression()) #32, !dbg !842
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !844
  %27 = load i8*, i8** %26, align 8, !dbg !844, !tbaa !845
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !844
  %29 = load i8*, i8** %28, align 8, !dbg !844, !tbaa !848
  %30 = icmp ult i8* %27, %29, !dbg !844
  br i1 %30, label %33, label %31, !dbg !844, !prof !849

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !844
  br label %35, !dbg !844

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !844
  store i8* %34, i8** %26, align 8, !dbg !844, !tbaa !845
  store i8 10, i8* %27, align 1, !dbg !844, !tbaa !440
  br label %35, !dbg !844

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !850, !tbaa !414
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !850
  %38 = icmp eq i32 %0, 0, !dbg !851
  br i1 %38, label %40, label %39, !dbg !853

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #33, !dbg !854
  unreachable, !dbg !854

40:                                               ; preds = %35
  ret void, !dbg !855
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !856 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !860 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !863 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !867 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !871, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i32 %1, metadata !872, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8* %2, metadata !873, metadata !DIExpression()), !dbg !875
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !876
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !876
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !874, metadata !DIExpression()), !dbg !877
  call void @llvm.va_start(i8* nonnull %6), !dbg !878
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !879
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !879
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !879, !tbaa.struct !730
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !879
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !879
  call void @llvm.va_end(i8* nonnull %6), !dbg !880
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !881
  ret void, !dbg !881
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !139 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !157, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i32 %1, metadata !158, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* %2, metadata !159, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i32 %3, metadata !160, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* %4, metadata !161, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !162, metadata !DIExpression()), !dbg !883
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !884, !tbaa !431
  %9 = icmp eq i32 %8, 0, !dbg !884
  br i1 %9, label %24, label %10, !dbg !886

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !887, !tbaa !431
  %12 = icmp eq i32 %11, %3, !dbg !890
  br i1 %12, label %13, label %23, !dbg !891

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !892, !tbaa !414
  %15 = icmp eq i8* %14, %2, !dbg !893
  br i1 %15, label %39, label %16, !dbg !894

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !895
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !896
  br i1 %19, label %20, label %23, !dbg !896

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !897
  %22 = icmp eq i32 %21, 0, !dbg !898
  br i1 %22, label %39, label %23, !dbg !899

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !900, !tbaa !414
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !901, !tbaa !431
  br label %24, !dbg !902

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !903
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !904, !tbaa !414
  %26 = icmp eq void ()* %25, null, !dbg !904
  br i1 %26, label %28, label %27, !dbg !906

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !907
  br label %32, !dbg !907

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !908, !tbaa !414
  %30 = tail call i8* @getprogname() #34, !dbg !908
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.32, i64 0, i64 0), i8* noundef %30) #32, !dbg !908
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !910, !tbaa !414
  %34 = icmp eq i8* %2, null, !dbg !910
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.33, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.34, i64 0, i64 0), !dbg !910
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !910
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !911
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !911
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !911
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !911, !tbaa.struct !730
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !911
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !911
  br label %39, !dbg !912

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !912
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !913 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !917, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 %1, metadata !918, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i8* %2, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 %3, metadata !920, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i8* %4, metadata !921, metadata !DIExpression()), !dbg !923
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !924
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !924
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !922, metadata !DIExpression()), !dbg !925
  call void @llvm.va_start(i8* nonnull %8), !dbg !926
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !927
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !927, !tbaa.struct !730
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !927
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !927
  call void @llvm.va_end(i8* nonnull %8), !dbg !928
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !929
  ret void, !dbg !929
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !930 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !933, !tbaa !414
  ret i8* %1, !dbg !934
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !935 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !937, metadata !DIExpression()), !dbg !940
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !941
  call void @llvm.dbg.value(metadata i8* %2, metadata !938, metadata !DIExpression()), !dbg !940
  %3 = icmp eq i8* %2, null, !dbg !942
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !942
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !942
  call void @llvm.dbg.value(metadata i8* %5, metadata !939, metadata !DIExpression()), !dbg !940
  %6 = ptrtoint i8* %5 to i64, !dbg !943
  %7 = ptrtoint i8* %0 to i64, !dbg !943
  %8 = sub i64 %6, %7, !dbg !943
  %9 = icmp sgt i64 %8, 6, !dbg !945
  br i1 %9, label %10, label %19, !dbg !946

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !947
  call void @llvm.dbg.value(metadata i8* %11, metadata !948, metadata !DIExpression()) #32, !dbg !955
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), metadata !953, metadata !DIExpression()) #32, !dbg !955
  call void @llvm.dbg.value(metadata i64 7, metadata !954, metadata !DIExpression()) #32, !dbg !955
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i64 7) #32, !dbg !957
  %13 = icmp eq i32 %12, 0, !dbg !958
  br i1 %13, label %14, label %19, !dbg !959

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !937, metadata !DIExpression()), !dbg !940
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.48, i64 0, i64 0), i64 noundef 3) #34, !dbg !960
  %16 = icmp eq i32 %15, 0, !dbg !963
  %17 = select i1 %16, i64 3, i64 0, !dbg !964
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !964
  br label %19, !dbg !964

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !940
  call void @llvm.dbg.value(metadata i8* %21, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i8* %20, metadata !937, metadata !DIExpression()), !dbg !940
  store i8* %20, i8** @program_name, align 8, !dbg !965, !tbaa !414
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !966, !tbaa !414
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !967, !tbaa !414
  ret void, !dbg !968
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !180 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !187, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i8* %1, metadata !188, metadata !DIExpression()), !dbg !969
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !970
  call void @llvm.dbg.value(metadata i8* %5, metadata !189, metadata !DIExpression()), !dbg !969
  %6 = icmp eq i8* %5, %0, !dbg !971
  br i1 %6, label %7, label %17, !dbg !973

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !974
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !974
  %10 = bitcast i64* %4 to i8*, !dbg !975
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !975
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !195, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !977, metadata !DIExpression()) #32, !dbg !984
  call void @llvm.dbg.value(metadata i8* %10, metadata !986, metadata !DIExpression()) #32, !dbg !994
  call void @llvm.dbg.value(metadata i32 0, metadata !992, metadata !DIExpression()) #32, !dbg !994
  call void @llvm.dbg.value(metadata i64 8, metadata !993, metadata !DIExpression()) #32, !dbg !994
  store i64 0, i64* %4, align 8, !dbg !996
  call void @llvm.dbg.value(metadata i32* %3, metadata !190, metadata !DIExpression(DW_OP_deref)), !dbg !969
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !997
  %12 = icmp eq i64 %11, 2, !dbg !999
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !190, metadata !DIExpression()), !dbg !969
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1000
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1001
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1001
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !969
  ret i8* %18, !dbg !1001
}

; Function Attrs: nounwind
declare !dbg !1002 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1008 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1013, metadata !DIExpression()), !dbg !1016
  %2 = tail call i32* @__errno_location() #35, !dbg !1017
  %3 = load i32, i32* %2, align 4, !dbg !1017, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %3, metadata !1014, metadata !DIExpression()), !dbg !1016
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1018
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1018
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1018
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1019
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1019
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1015, metadata !DIExpression()), !dbg !1016
  store i32 %3, i32* %2, align 4, !dbg !1020, !tbaa !431
  ret %struct.quoting_options* %8, !dbg !1021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1022 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1028, metadata !DIExpression()), !dbg !1029
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1030
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1030
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1031
  %5 = load i32, i32* %4, align 8, !dbg !1031, !tbaa !1032
  ret i32 %5, !dbg !1034
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1035 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1039, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 %1, metadata !1040, metadata !DIExpression()), !dbg !1041
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1042
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1042
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1043
  store i32 %1, i32* %5, align 8, !dbg !1044, !tbaa !1032
  ret void, !dbg !1045
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1046 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1050, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8 %1, metadata !1051, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %2, metadata !1052, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8 %1, metadata !1053, metadata !DIExpression()), !dbg !1058
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1059
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1059
  %6 = lshr i8 %1, 5, !dbg !1060
  %7 = zext i8 %6 to i64, !dbg !1060
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1061
  call void @llvm.dbg.value(metadata i32* %8, metadata !1054, metadata !DIExpression()), !dbg !1058
  %9 = and i8 %1, 31, !dbg !1062
  %10 = zext i8 %9 to i32, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %10, metadata !1056, metadata !DIExpression()), !dbg !1058
  %11 = load i32, i32* %8, align 4, !dbg !1063, !tbaa !431
  %12 = lshr i32 %11, %10, !dbg !1064
  %13 = and i32 %12, 1, !dbg !1065
  call void @llvm.dbg.value(metadata i32 %13, metadata !1057, metadata !DIExpression()), !dbg !1058
  %14 = and i32 %2, 1, !dbg !1066
  %15 = xor i32 %13, %14, !dbg !1067
  %16 = shl i32 %15, %10, !dbg !1068
  %17 = xor i32 %16, %11, !dbg !1069
  store i32 %17, i32* %8, align 4, !dbg !1069, !tbaa !431
  ret i32 %13, !dbg !1070
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1071 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1075, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 %1, metadata !1076, metadata !DIExpression()), !dbg !1078
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1079
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1075, metadata !DIExpression()), !dbg !1078
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1082
  %6 = load i32, i32* %5, align 4, !dbg !1082, !tbaa !1083
  call void @llvm.dbg.value(metadata i32 %6, metadata !1077, metadata !DIExpression()), !dbg !1078
  store i32 %1, i32* %5, align 4, !dbg !1084, !tbaa !1083
  ret i32 %6, !dbg !1085
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1086 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1090, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %1, metadata !1091, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %2, metadata !1092, metadata !DIExpression()), !dbg !1093
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1094
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1090, metadata !DIExpression()), !dbg !1093
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1097
  store i32 10, i32* %6, align 8, !dbg !1098, !tbaa !1032
  %7 = icmp ne i8* %1, null, !dbg !1099
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1101
  br i1 %9, label %11, label %10, !dbg !1101

10:                                               ; preds = %3
  tail call void @abort() #33, !dbg !1102
  unreachable, !dbg !1102

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1103
  store i8* %1, i8** %12, align 8, !dbg !1104, !tbaa !1105
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1106
  store i8* %2, i8** %13, align 8, !dbg !1107, !tbaa !1108
  ret void, !dbg !1109
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1110 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1114, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %1, metadata !1115, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %2, metadata !1116, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %3, metadata !1117, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1118, metadata !DIExpression()), !dbg !1122
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1123
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1123
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1119, metadata !DIExpression()), !dbg !1122
  %8 = tail call i32* @__errno_location() #35, !dbg !1124
  %9 = load i32, i32* %8, align 4, !dbg !1124, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %9, metadata !1120, metadata !DIExpression()), !dbg !1122
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1125
  %11 = load i32, i32* %10, align 8, !dbg !1125, !tbaa !1032
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1126
  %13 = load i32, i32* %12, align 4, !dbg !1126, !tbaa !1083
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1127
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1128
  %16 = load i8*, i8** %15, align 8, !dbg !1128, !tbaa !1105
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1129
  %18 = load i8*, i8** %17, align 8, !dbg !1129, !tbaa !1108
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1130
  call void @llvm.dbg.value(metadata i64 %19, metadata !1121, metadata !DIExpression()), !dbg !1122
  store i32 %9, i32* %8, align 4, !dbg !1131, !tbaa !431
  ret i64 %19, !dbg !1132
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1133 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1139, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %1, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %2, metadata !1141, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %3, metadata !1142, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 %4, metadata !1143, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 %5, metadata !1144, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32* %6, metadata !1145, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %7, metadata !1146, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %8, metadata !1147, metadata !DIExpression()), !dbg !1201
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1202
  %18 = icmp eq i64 %17, 1, !dbg !1203
  call void @llvm.dbg.value(metadata i1 %18, metadata !1148, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1201
  call void @llvm.dbg.value(metadata i64 0, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 0, metadata !1150, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* null, metadata !1151, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 0, metadata !1152, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 0, metadata !1153, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 %5, metadata !1154, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1201
  call void @llvm.dbg.value(metadata i8 0, metadata !1155, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 1, metadata !1156, metadata !DIExpression()), !dbg !1201
  %19 = and i32 %5, 2, !dbg !1204
  %20 = icmp ne i32 %19, 0, !dbg !1204
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
  br label %36, !dbg !1204

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1205
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1206
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1207
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1153, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %43, metadata !1152, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %42, metadata !1151, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %41, metadata !1150, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 0, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %40, metadata !1142, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %39, metadata !1147, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %38, metadata !1146, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 %37, metadata !1143, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.label(metadata !1194), !dbg !1208
  call void @llvm.dbg.value(metadata i8 0, metadata !1157, metadata !DIExpression()), !dbg !1201
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
  ], !dbg !1209

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 5, metadata !1143, metadata !DIExpression()), !dbg !1201
  br label %111, !dbg !1210

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 5, metadata !1143, metadata !DIExpression()), !dbg !1201
  br i1 %45, label %111, label %51, !dbg !1210

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1211
  br i1 %52, label %111, label %53, !dbg !1215

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1211, !tbaa !440
  br label %111, !dbg !1211

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), metadata !271, metadata !DIExpression()) #32, !dbg !1216
  call void @llvm.dbg.value(metadata i32 %37, metadata !272, metadata !DIExpression()) #32, !dbg !1216
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 noundef 5) #32, !dbg !1220
  call void @llvm.dbg.value(metadata i8* %55, metadata !273, metadata !DIExpression()) #32, !dbg !1216
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), !dbg !1221
  br i1 %56, label %57, label %66, !dbg !1223

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1224
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1225
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !275, metadata !DIExpression()) #32, !dbg !1226
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1227, metadata !DIExpression()) #32, !dbg !1233
  call void @llvm.dbg.value(metadata i8* %23, metadata !1235, metadata !DIExpression()) #32, !dbg !1240
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()) #32, !dbg !1240
  call void @llvm.dbg.value(metadata i64 8, metadata !1239, metadata !DIExpression()) #32, !dbg !1240
  store i64 0, i64* %13, align 8, !dbg !1242
  call void @llvm.dbg.value(metadata i32* %12, metadata !274, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1216
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1243
  %59 = icmp eq i64 %58, 3, !dbg !1245
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !274, metadata !DIExpression()) #32, !dbg !1216
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1246
  %63 = icmp eq i32 %37, 9, !dbg !1246
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !1246
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1246
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1247
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1247
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1216
  call void @llvm.dbg.value(metadata i8* %67, metadata !1146, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), metadata !271, metadata !DIExpression()) #32, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %37, metadata !272, metadata !DIExpression()) #32, !dbg !1248
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 noundef 5) #32, !dbg !1250
  call void @llvm.dbg.value(metadata i8* %68, metadata !273, metadata !DIExpression()) #32, !dbg !1248
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !1251
  br i1 %69, label %70, label %79, !dbg !1252

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1253
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1254
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !275, metadata !DIExpression()) #32, !dbg !1255
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1227, metadata !DIExpression()) #32, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %26, metadata !1235, metadata !DIExpression()) #32, !dbg !1258
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()) #32, !dbg !1258
  call void @llvm.dbg.value(metadata i64 8, metadata !1239, metadata !DIExpression()) #32, !dbg !1258
  store i64 0, i64* %11, align 8, !dbg !1260
  call void @llvm.dbg.value(metadata i32* %10, metadata !274, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1248
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1261
  %72 = icmp eq i64 %71, 3, !dbg !1262
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !274, metadata !DIExpression()) #32, !dbg !1248
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1263
  %76 = icmp eq i32 %37, 9, !dbg !1263
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !1263
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1263
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1264
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1264
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1147, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %80, metadata !1146, metadata !DIExpression()), !dbg !1201
  br i1 %45, label %97, label %82, !dbg !1265

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1158, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i64 0, metadata !1149, metadata !DIExpression()), !dbg !1201
  %83 = load i8, i8* %80, align 1, !dbg !1267, !tbaa !440
  %84 = icmp eq i8 %83, 0, !dbg !1269
  br i1 %84, label %97, label %85, !dbg !1269

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1158, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %88, metadata !1149, metadata !DIExpression()), !dbg !1201
  %89 = icmp ult i64 %88, %48, !dbg !1270
  br i1 %89, label %90, label %92, !dbg !1273

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1270
  store i8 %86, i8* %91, align 1, !dbg !1270, !tbaa !440
  br label %92, !dbg !1270

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %93, metadata !1149, metadata !DIExpression()), !dbg !1201
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1274
  call void @llvm.dbg.value(metadata i8* %94, metadata !1158, metadata !DIExpression()), !dbg !1266
  %95 = load i8, i8* %94, align 1, !dbg !1267, !tbaa !440
  %96 = icmp eq i8 %95, 0, !dbg !1269
  br i1 %96, label %97, label %85, !dbg !1269, !llvm.loop !1275

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1277
  call void @llvm.dbg.value(metadata i64 %98, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 1, metadata !1153, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %81, metadata !1151, metadata !DIExpression()), !dbg !1201
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %99, metadata !1152, metadata !DIExpression()), !dbg !1201
  br label %111, !dbg !1279

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1153, metadata !DIExpression()), !dbg !1201
  br label %102, !dbg !1280

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1153, metadata !DIExpression()), !dbg !1201
  br i1 %45, label %102, label %105, !dbg !1281

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1153, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 2, metadata !1143, metadata !DIExpression()), !dbg !1201
  br label %111, !dbg !1282

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1153, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 2, metadata !1143, metadata !DIExpression()), !dbg !1201
  br i1 %45, label %111, label %105, !dbg !1282

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1283
  br i1 %107, label %111, label %108, !dbg !1287

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1283, !tbaa !440
  br label %111, !dbg !1283

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1154, metadata !DIExpression()), !dbg !1201
  br label %111, !dbg !1288

110:                                              ; preds = %36
  call void @abort() #33, !dbg !1289
  unreachable, !dbg !1289

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1277
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %102 ], !dbg !1201
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1201
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1153, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %117, metadata !1152, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %116, metadata !1151, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %115, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %114, metadata !1147, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %113, metadata !1146, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 %112, metadata !1143, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 0, metadata !1163, metadata !DIExpression()), !dbg !1290
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
  br label %132, !dbg !1291

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1277
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1205
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1290
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %139, metadata !1163, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %135, metadata !1150, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %134, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %133, metadata !1142, metadata !DIExpression()), !dbg !1201
  %141 = icmp eq i64 %133, -1, !dbg !1292
  br i1 %141, label %142, label %146, !dbg !1293

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1294
  %144 = load i8, i8* %143, align 1, !dbg !1294, !tbaa !440
  %145 = icmp eq i8 %144, 0, !dbg !1295
  br i1 %145, label %596, label %148, !dbg !1296

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1297
  br i1 %147, label %596, label %148, !dbg !1296

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1165, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !1168, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !1169, metadata !DIExpression()), !dbg !1298
  br i1 %123, label %149, label %163, !dbg !1299

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1301
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1302
  br i1 %151, label %152, label %154, !dbg !1302

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %153, metadata !1142, metadata !DIExpression()), !dbg !1201
  br label %154, !dbg !1304

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1304
  call void @llvm.dbg.value(metadata i64 %155, metadata !1142, metadata !DIExpression()), !dbg !1201
  %156 = icmp ugt i64 %150, %155, !dbg !1305
  br i1 %156, label %163, label %157, !dbg !1306

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1307
  call void @llvm.dbg.value(metadata i8* %158, metadata !1308, metadata !DIExpression()) #32, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %116, metadata !1311, metadata !DIExpression()) #32, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %117, metadata !1312, metadata !DIExpression()) #32, !dbg !1313
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1315
  %160 = icmp ne i32 %159, 0, !dbg !1316
  %161 = or i1 %160, %125, !dbg !1317
  %162 = xor i1 %160, true, !dbg !1317
  br i1 %161, label %163, label %647, !dbg !1317

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1165, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %164, metadata !1142, metadata !DIExpression()), !dbg !1201
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1318
  %167 = load i8, i8* %166, align 1, !dbg !1318, !tbaa !440
  call void @llvm.dbg.value(metadata i8 %167, metadata !1170, metadata !DIExpression()), !dbg !1298
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
  ], !dbg !1319

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1320

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1321

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1168, metadata !DIExpression()), !dbg !1298
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1325
  br i1 %171, label %188, label %172, !dbg !1325

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1327
  br i1 %173, label %174, label %176, !dbg !1331

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1327
  store i8 39, i8* %175, align 1, !dbg !1327, !tbaa !440
  br label %176, !dbg !1327

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %177, metadata !1149, metadata !DIExpression()), !dbg !1201
  %178 = icmp ult i64 %177, %140, !dbg !1332
  br i1 %178, label %179, label %181, !dbg !1335

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1332
  store i8 36, i8* %180, align 1, !dbg !1332, !tbaa !440
  br label %181, !dbg !1332

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %182, metadata !1149, metadata !DIExpression()), !dbg !1201
  %183 = icmp ult i64 %182, %140, !dbg !1336
  br i1 %183, label %184, label %186, !dbg !1339

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1336
  store i8 39, i8* %185, align 1, !dbg !1336, !tbaa !440
  br label %186, !dbg !1336

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %187, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 1, metadata !1157, metadata !DIExpression()), !dbg !1201
  br label %188, !dbg !1340

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1201
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %189, metadata !1149, metadata !DIExpression()), !dbg !1201
  %191 = icmp ult i64 %189, %140, !dbg !1341
  br i1 %191, label %192, label %194, !dbg !1344

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1341
  store i8 92, i8* %193, align 1, !dbg !1341, !tbaa !440
  br label %194, !dbg !1341

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %195, metadata !1149, metadata !DIExpression()), !dbg !1201
  br i1 %120, label %196, label %499, !dbg !1345

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1347
  %198 = icmp ult i64 %197, %164, !dbg !1348
  br i1 %198, label %199, label %456, !dbg !1349

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1350
  %201 = load i8, i8* %200, align 1, !dbg !1350, !tbaa !440
  %202 = add i8 %201, -48, !dbg !1351
  %203 = icmp ult i8 %202, 10, !dbg !1351
  br i1 %203, label %204, label %456, !dbg !1351

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1352
  br i1 %205, label %206, label %208, !dbg !1356

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1352
  store i8 48, i8* %207, align 1, !dbg !1352, !tbaa !440
  br label %208, !dbg !1352

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %209, metadata !1149, metadata !DIExpression()), !dbg !1201
  %210 = icmp ult i64 %209, %140, !dbg !1357
  br i1 %210, label %211, label %213, !dbg !1360

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1357
  store i8 48, i8* %212, align 1, !dbg !1357, !tbaa !440
  br label %213, !dbg !1357

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %214, metadata !1149, metadata !DIExpression()), !dbg !1201
  br label %456, !dbg !1361

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1362

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1363

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1364

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1366

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1368
  %221 = icmp ult i64 %220, %164, !dbg !1369
  br i1 %221, label %222, label %456, !dbg !1370

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1371
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1372
  %225 = load i8, i8* %224, align 1, !dbg !1372, !tbaa !440
  %226 = icmp eq i8 %225, 63, !dbg !1373
  br i1 %226, label %227, label %456, !dbg !1374

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1375
  %229 = load i8, i8* %228, align 1, !dbg !1375, !tbaa !440
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
  ], !dbg !1376

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1377

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1170, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %220, metadata !1163, metadata !DIExpression()), !dbg !1290
  %232 = icmp ult i64 %134, %140, !dbg !1379
  br i1 %232, label %233, label %235, !dbg !1382

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1379
  store i8 63, i8* %234, align 1, !dbg !1379, !tbaa !440
  br label %235, !dbg !1379

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %236, metadata !1149, metadata !DIExpression()), !dbg !1201
  %237 = icmp ult i64 %236, %140, !dbg !1383
  br i1 %237, label %238, label %240, !dbg !1386

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1383
  store i8 34, i8* %239, align 1, !dbg !1383, !tbaa !440
  br label %240, !dbg !1383

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %241, metadata !1149, metadata !DIExpression()), !dbg !1201
  %242 = icmp ult i64 %241, %140, !dbg !1387
  br i1 %242, label %243, label %245, !dbg !1390

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1387
  store i8 34, i8* %244, align 1, !dbg !1387, !tbaa !440
  br label %245, !dbg !1387

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %246, metadata !1149, metadata !DIExpression()), !dbg !1201
  %247 = icmp ult i64 %246, %140, !dbg !1391
  br i1 %247, label %248, label %250, !dbg !1394

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1391
  store i8 63, i8* %249, align 1, !dbg !1391, !tbaa !440
  br label %250, !dbg !1391

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %251, metadata !1149, metadata !DIExpression()), !dbg !1201
  br label %456, !dbg !1395

252:                                              ; preds = %163
  br label %263, !dbg !1396

253:                                              ; preds = %163
  br label %263, !dbg !1397

254:                                              ; preds = %163
  br label %261, !dbg !1398

255:                                              ; preds = %163
  br label %261, !dbg !1399

256:                                              ; preds = %163
  br label %263, !dbg !1400

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1401

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1402

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1405

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1407

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1408
  call void @llvm.dbg.label(metadata !1195), !dbg !1409
  br i1 %128, label %263, label %638, !dbg !1410

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1408
  call void @llvm.dbg.label(metadata !1197), !dbg !1412
  br i1 %118, label %510, label %467, !dbg !1413

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1414

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1415, !tbaa !440
  %268 = icmp eq i8 %267, 0, !dbg !1417
  br i1 %268, label %269, label %456, !dbg !1418

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1419
  br i1 %270, label %271, label %456, !dbg !1421

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1169, metadata !DIExpression()), !dbg !1298
  br label %272, !dbg !1422

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1169, metadata !DIExpression()), !dbg !1298
  br i1 %126, label %274, label %456, !dbg !1423

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1425

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1155, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 1, metadata !1169, metadata !DIExpression()), !dbg !1298
  br i1 %126, label %276, label %456, !dbg !1426

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1427

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1430
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1432
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1432
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %282, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %281, metadata !1150, metadata !DIExpression()), !dbg !1201
  %283 = icmp ult i64 %134, %282, !dbg !1433
  br i1 %283, label %284, label %286, !dbg !1436

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1433
  store i8 39, i8* %285, align 1, !dbg !1433, !tbaa !440
  br label %286, !dbg !1433

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %287, metadata !1149, metadata !DIExpression()), !dbg !1201
  %288 = icmp ult i64 %287, %282, !dbg !1437
  br i1 %288, label %289, label %291, !dbg !1440

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1437
  store i8 92, i8* %290, align 1, !dbg !1437, !tbaa !440
  br label %291, !dbg !1437

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %292, metadata !1149, metadata !DIExpression()), !dbg !1201
  %293 = icmp ult i64 %292, %282, !dbg !1441
  br i1 %293, label %294, label %296, !dbg !1444

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1441
  store i8 39, i8* %295, align 1, !dbg !1441, !tbaa !440
  br label %296, !dbg !1441

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %297, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 0, metadata !1157, metadata !DIExpression()), !dbg !1201
  br label %456, !dbg !1445

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1446

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1171, metadata !DIExpression()), !dbg !1447
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1448
  %301 = load i16*, i16** %300, align 8, !dbg !1448, !tbaa !414
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1448
  %304 = load i16, i16* %303, align 2, !dbg !1448, !tbaa !472
  %305 = and i16 %304, 16384, !dbg !1448
  %306 = icmp ne i16 %305, 0, !dbg !1450
  call void @llvm.dbg.value(metadata i8 poison, metadata !1174, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %349, metadata !1171, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %312, metadata !1142, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i1 %350, metadata !1169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1298
  br label %352, !dbg !1451

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1452
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1175, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1227, metadata !DIExpression()) #32, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %32, metadata !1235, metadata !DIExpression()) #32, !dbg !1456
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()) #32, !dbg !1456
  call void @llvm.dbg.value(metadata i64 8, metadata !1239, metadata !DIExpression()) #32, !dbg !1456
  store i64 0, i64* %14, align 8, !dbg !1458
  call void @llvm.dbg.value(metadata i64 0, metadata !1171, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 1, metadata !1174, metadata !DIExpression()), !dbg !1447
  %308 = icmp eq i64 %164, -1, !dbg !1459
  br i1 %308, label %309, label %311, !dbg !1461

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %310, metadata !1142, metadata !DIExpression()), !dbg !1201
  br label %311, !dbg !1463

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1298
  call void @llvm.dbg.value(metadata i64 %312, metadata !1142, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1464
  %313 = sub i64 %312, %139, !dbg !1465
  call void @llvm.dbg.value(metadata i32* %16, metadata !1178, metadata !DIExpression(DW_OP_deref)), !dbg !1466
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %314, metadata !1182, metadata !DIExpression()), !dbg !1466
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1468

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1171, metadata !DIExpression()), !dbg !1447
  %316 = icmp ugt i64 %312, %139, !dbg !1469
  br i1 %316, label %319, label %317, !dbg !1471

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1174, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 0, metadata !1171, metadata !DIExpression()), !dbg !1447
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %349, metadata !1171, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %312, metadata !1142, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i1 %350, metadata !1169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1298
  br label %352, !dbg !1451

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1174, metadata !DIExpression()), !dbg !1447
  br label %346, !dbg !1474

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1171, metadata !DIExpression()), !dbg !1447
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1476
  %323 = load i8, i8* %322, align 1, !dbg !1476, !tbaa !440
  %324 = icmp eq i8 %323, 0, !dbg !1471
  br i1 %324, label %348, label %325, !dbg !1477

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %326, metadata !1171, metadata !DIExpression()), !dbg !1447
  %327 = add i64 %326, %139, !dbg !1479
  %328 = icmp eq i64 %326, %313, !dbg !1469
  br i1 %328, label %348, label %319, !dbg !1471, !llvm.loop !1480

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1481
  call void @llvm.dbg.value(metadata i64 1, metadata !1183, metadata !DIExpression()), !dbg !1482
  br i1 %331, label %332, label %340, !dbg !1481

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1183, metadata !DIExpression()), !dbg !1482
  %334 = add i64 %333, %139, !dbg !1483
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1485
  %336 = load i8, i8* %335, align 1, !dbg !1485, !tbaa !440
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1486

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %338, metadata !1183, metadata !DIExpression()), !dbg !1482
  %339 = icmp eq i64 %338, %314, !dbg !1488
  br i1 %339, label %340, label %332, !dbg !1489, !llvm.loop !1490

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1492, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %341, metadata !1178, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i32 %341, metadata !1494, metadata !DIExpression()) #32, !dbg !1502
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1504
  %343 = icmp ne i32 %342, 0, !dbg !1505
  call void @llvm.dbg.value(metadata i8 poison, metadata !1174, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %314, metadata !1171, metadata !DIExpression()), !dbg !1447
  br label %348, !dbg !1506

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1174, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 0, metadata !1171, metadata !DIExpression()), !dbg !1447
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1473
  call void @llvm.dbg.label(metadata !1200), !dbg !1507
  %345 = select i1 %118, i32 4, i32 2, !dbg !1508
  br label %643, !dbg !1508

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1174, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 0, metadata !1171, metadata !DIExpression()), !dbg !1447
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %349, metadata !1171, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %312, metadata !1142, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i1 %350, metadata !1169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1298
  br label %352, !dbg !1451

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1174, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 0, metadata !1171, metadata !DIExpression()), !dbg !1447
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %349, metadata !1171, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %312, metadata !1142, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i1 %350, metadata !1169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1298
  %351 = icmp ugt i64 %349, 1, !dbg !1510
  br i1 %351, label %357, label %352, !dbg !1451

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1511
  br i1 %356, label %456, label %357, !dbg !1511

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %361, metadata !1191, metadata !DIExpression()), !dbg !1513
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1514

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1201
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1290
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1515
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %369, metadata !1170, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %368, metadata !1168, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1165, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %366, metadata !1163, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %364, metadata !1149, metadata !DIExpression()), !dbg !1201
  br i1 %362, label %414, label %370, !dbg !1516

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1521

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1168, metadata !DIExpression()), !dbg !1298
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1524
  br i1 %372, label %389, label %373, !dbg !1524

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1526
  br i1 %374, label %375, label %377, !dbg !1530

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1526
  store i8 39, i8* %376, align 1, !dbg !1526, !tbaa !440
  br label %377, !dbg !1526

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %378, metadata !1149, metadata !DIExpression()), !dbg !1201
  %379 = icmp ult i64 %378, %140, !dbg !1531
  br i1 %379, label %380, label %382, !dbg !1534

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1531
  store i8 36, i8* %381, align 1, !dbg !1531, !tbaa !440
  br label %382, !dbg !1531

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %383, metadata !1149, metadata !DIExpression()), !dbg !1201
  %384 = icmp ult i64 %383, %140, !dbg !1535
  br i1 %384, label %385, label %387, !dbg !1538

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1535
  store i8 39, i8* %386, align 1, !dbg !1535, !tbaa !440
  br label %387, !dbg !1535

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %388, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 1, metadata !1157, metadata !DIExpression()), !dbg !1201
  br label %389, !dbg !1539

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1201
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %390, metadata !1149, metadata !DIExpression()), !dbg !1201
  %392 = icmp ult i64 %390, %140, !dbg !1540
  br i1 %392, label %393, label %395, !dbg !1543

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1540
  store i8 92, i8* %394, align 1, !dbg !1540, !tbaa !440
  br label %395, !dbg !1540

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %396, metadata !1149, metadata !DIExpression()), !dbg !1201
  %397 = icmp ult i64 %396, %140, !dbg !1544
  br i1 %397, label %398, label %402, !dbg !1547

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1544
  %400 = or i8 %399, 48, !dbg !1544
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1544
  store i8 %400, i8* %401, align 1, !dbg !1544, !tbaa !440
  br label %402, !dbg !1544

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %403, metadata !1149, metadata !DIExpression()), !dbg !1201
  %404 = icmp ult i64 %403, %140, !dbg !1548
  br i1 %404, label %405, label %410, !dbg !1551

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1548
  %407 = and i8 %406, 7, !dbg !1548
  %408 = or i8 %407, 48, !dbg !1548
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1548
  store i8 %408, i8* %409, align 1, !dbg !1548, !tbaa !440
  br label %410, !dbg !1548

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %411, metadata !1149, metadata !DIExpression()), !dbg !1201
  %412 = and i8 %369, 7, !dbg !1552
  %413 = or i8 %412, 48, !dbg !1553
  call void @llvm.dbg.value(metadata i8 %413, metadata !1170, metadata !DIExpression()), !dbg !1298
  br label %421, !dbg !1554

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1555

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1556
  br i1 %416, label %417, label %419, !dbg !1561

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1556
  store i8 92, i8* %418, align 1, !dbg !1556, !tbaa !440
  br label %419, !dbg !1556

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %420, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 0, metadata !1165, metadata !DIExpression()), !dbg !1298
  br label %421, !dbg !1562

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1201
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1298
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %426, metadata !1170, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %425, metadata !1168, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1165, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %422, metadata !1149, metadata !DIExpression()), !dbg !1201
  %427 = add i64 %366, 1, !dbg !1563
  %428 = icmp ugt i64 %361, %427, !dbg !1565
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1566

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1567
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1567
  br i1 %432, label %433, label %444, !dbg !1567

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1570
  br i1 %434, label %435, label %437, !dbg !1574

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1570
  store i8 39, i8* %436, align 1, !dbg !1570, !tbaa !440
  br label %437, !dbg !1570

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %438, metadata !1149, metadata !DIExpression()), !dbg !1201
  %439 = icmp ult i64 %438, %140, !dbg !1575
  br i1 %439, label %440, label %442, !dbg !1578

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1575
  store i8 39, i8* %441, align 1, !dbg !1575, !tbaa !440
  br label %442, !dbg !1575

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %443, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 0, metadata !1157, metadata !DIExpression()), !dbg !1201
  br label %444, !dbg !1579

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1580
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %445, metadata !1149, metadata !DIExpression()), !dbg !1201
  %447 = icmp ult i64 %445, %140, !dbg !1581
  br i1 %447, label %448, label %450, !dbg !1584

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1581
  store i8 %426, i8* %449, align 1, !dbg !1581, !tbaa !440
  br label %450, !dbg !1581

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %451, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %427, metadata !1163, metadata !DIExpression()), !dbg !1290
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1585
  %453 = load i8, i8* %452, align 1, !dbg !1585, !tbaa !440
  call void @llvm.dbg.value(metadata i8 %453, metadata !1170, metadata !DIExpression()), !dbg !1298
  br label %363, !dbg !1586, !llvm.loop !1587

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1170, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i1 %358, metadata !1169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %425, metadata !1168, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1165, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %366, metadata !1163, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %422, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %360, metadata !1142, metadata !DIExpression()), !dbg !1201
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1590
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1201
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1205
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1290
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1298
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 %465, metadata !1170, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1169, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1168, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1165, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %462, metadata !1163, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %459, metadata !1150, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %458, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %457, metadata !1142, metadata !DIExpression()), !dbg !1201
  br i1 %121, label %478, label %467, !dbg !1591

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
  br i1 %131, label %479, label %499, !dbg !1593

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1594

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
  %490 = lshr i8 %481, 5, !dbg !1595
  %491 = zext i8 %490 to i64, !dbg !1595
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1596
  %493 = load i32, i32* %492, align 4, !dbg !1596, !tbaa !431
  %494 = and i8 %481, 31, !dbg !1597
  %495 = zext i8 %494 to i32, !dbg !1597
  %496 = shl nuw i32 1, %495, !dbg !1598
  %497 = and i32 %493, %496, !dbg !1598
  %498 = icmp eq i32 %497, 0, !dbg !1598
  br i1 %498, label %499, label %510, !dbg !1599

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
  br i1 %165, label %510, label %546, !dbg !1600

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1590
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1201
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1205
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1601
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1298
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 %518, metadata !1170, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1169, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %516, metadata !1163, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %513, metadata !1150, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %512, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %511, metadata !1142, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.label(metadata !1198), !dbg !1602
  br i1 %119, label %638, label %520, !dbg !1603

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1168, metadata !DIExpression()), !dbg !1298
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1605
  br i1 %521, label %538, label %522, !dbg !1605

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1607
  br i1 %523, label %524, label %526, !dbg !1611

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1607
  store i8 39, i8* %525, align 1, !dbg !1607, !tbaa !440
  br label %526, !dbg !1607

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %527, metadata !1149, metadata !DIExpression()), !dbg !1201
  %528 = icmp ult i64 %527, %519, !dbg !1612
  br i1 %528, label %529, label %531, !dbg !1615

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1612
  store i8 36, i8* %530, align 1, !dbg !1612, !tbaa !440
  br label %531, !dbg !1612

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %532, metadata !1149, metadata !DIExpression()), !dbg !1201
  %533 = icmp ult i64 %532, %519, !dbg !1616
  br i1 %533, label %534, label %536, !dbg !1619

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1616
  store i8 39, i8* %535, align 1, !dbg !1616, !tbaa !440
  br label %536, !dbg !1616

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %537, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 1, metadata !1157, metadata !DIExpression()), !dbg !1201
  br label %538, !dbg !1620

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1298
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %539, metadata !1149, metadata !DIExpression()), !dbg !1201
  %541 = icmp ult i64 %539, %519, !dbg !1621
  br i1 %541, label %542, label %544, !dbg !1624

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1621
  store i8 92, i8* %543, align 1, !dbg !1621, !tbaa !440
  br label %544, !dbg !1621

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %556, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 %555, metadata !1170, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1169, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1168, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %552, metadata !1163, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %549, metadata !1150, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %548, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %547, metadata !1142, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.label(metadata !1199), !dbg !1625
  br label %570, !dbg !1626

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1590
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1201
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1205
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1601
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1629
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 %555, metadata !1170, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1169, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 poison, metadata !1168, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %552, metadata !1163, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %549, metadata !1150, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %548, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %547, metadata !1142, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.label(metadata !1199), !dbg !1625
  %557 = xor i1 %551, true, !dbg !1626
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1626
  br i1 %558, label %570, label %559, !dbg !1626

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1630
  br i1 %560, label %561, label %563, !dbg !1634

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1630
  store i8 39, i8* %562, align 1, !dbg !1630, !tbaa !440
  br label %563, !dbg !1630

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %564, metadata !1149, metadata !DIExpression()), !dbg !1201
  %565 = icmp ult i64 %564, %556, !dbg !1635
  br i1 %565, label %566, label %568, !dbg !1638

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1635
  store i8 39, i8* %567, align 1, !dbg !1635, !tbaa !440
  br label %568, !dbg !1635

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %569, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 0, metadata !1157, metadata !DIExpression()), !dbg !1201
  br label %570, !dbg !1639

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1298
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %578, metadata !1149, metadata !DIExpression()), !dbg !1201
  %580 = icmp ult i64 %578, %571, !dbg !1640
  br i1 %580, label %581, label %583, !dbg !1643

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1640
  store i8 %572, i8* %582, align 1, !dbg !1640, !tbaa !440
  br label %583, !dbg !1640

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %584, metadata !1149, metadata !DIExpression()), !dbg !1201
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1201
  br label %586, !dbg !1645

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1590
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1201
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1205
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1601
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %593, metadata !1163, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %589, metadata !1150, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %588, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %587, metadata !1142, metadata !DIExpression()), !dbg !1201
  %595 = add i64 %593, 1, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %595, metadata !1163, metadata !DIExpression()), !dbg !1290
  br label %132, !dbg !1647, !llvm.loop !1648

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 undef, metadata !1150, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 undef, metadata !1149, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 undef, metadata !1142, metadata !DIExpression()), !dbg !1201
  %597 = icmp eq i64 %134, 0, !dbg !1650
  %598 = and i1 %126, %597, !dbg !1652
  %599 = and i1 %598, %119, !dbg !1652
  br i1 %599, label %638, label %600, !dbg !1652

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1653
  %602 = or i1 %119, %601, !dbg !1653
  %603 = xor i1 %136, true, !dbg !1653
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1653
  br i1 %604, label %612, label %605, !dbg !1653

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1655

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1657
  br label %653, !dbg !1659

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1660
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1662
  br i1 %611, label %36, label %612, !dbg !1662

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1663
  %615 = or i1 %614, %613, !dbg !1665
  br i1 %615, label %631, label %616, !dbg !1665

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1151, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %134, metadata !1149, metadata !DIExpression()), !dbg !1201
  %617 = load i8, i8* %116, align 1, !dbg !1666, !tbaa !440
  %618 = icmp eq i8 %617, 0, !dbg !1669
  br i1 %618, label %631, label %619, !dbg !1669

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1151, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %622, metadata !1149, metadata !DIExpression()), !dbg !1201
  %623 = icmp ult i64 %622, %140, !dbg !1670
  br i1 %623, label %624, label %626, !dbg !1673

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1670
  store i8 %620, i8* %625, align 1, !dbg !1670, !tbaa !440
  br label %626, !dbg !1670

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %627, metadata !1149, metadata !DIExpression()), !dbg !1201
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1674
  call void @llvm.dbg.value(metadata i8* %628, metadata !1151, metadata !DIExpression()), !dbg !1201
  %629 = load i8, i8* %628, align 1, !dbg !1666, !tbaa !440
  %630 = icmp eq i8 %629, 0, !dbg !1669
  br i1 %630, label %631, label %619, !dbg !1669, !llvm.loop !1675

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1277
  call void @llvm.dbg.value(metadata i64 %632, metadata !1149, metadata !DIExpression()), !dbg !1201
  %633 = icmp ult i64 %632, %140, !dbg !1677
  br i1 %633, label %634, label %653, !dbg !1679

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1680
  store i8 0, i8* %635, align 1, !dbg !1681, !tbaa !440
  br label %653, !dbg !1680

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1200), !dbg !1507
  %637 = icmp eq i32 %112, 2, !dbg !1682
  br i1 %637, label %643, label %647, !dbg !1508

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1200), !dbg !1507
  %641 = icmp eq i32 %112, 2, !dbg !1682
  %642 = select i1 %118, i32 4, i32 2, !dbg !1508
  br i1 %641, label %643, label %647, !dbg !1508

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1508

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1143, metadata !DIExpression()), !dbg !1201
  %651 = and i32 %5, -3, !dbg !1683
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1684
  br label %653, !dbg !1685

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1686
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1687 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1689 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1693, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i64 %1, metadata !1694, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1695, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8* %0, metadata !1697, metadata !DIExpression()) #32, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %1, metadata !1702, metadata !DIExpression()) #32, !dbg !1710
  call void @llvm.dbg.value(metadata i64* null, metadata !1703, metadata !DIExpression()) #32, !dbg !1710
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1704, metadata !DIExpression()) #32, !dbg !1710
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1712
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1705, metadata !DIExpression()) #32, !dbg !1710
  %6 = tail call i32* @__errno_location() #35, !dbg !1713
  %7 = load i32, i32* %6, align 4, !dbg !1713, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %7, metadata !1706, metadata !DIExpression()) #32, !dbg !1710
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1714
  %9 = load i32, i32* %8, align 4, !dbg !1714, !tbaa !1083
  %10 = or i32 %9, 1, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %10, metadata !1707, metadata !DIExpression()) #32, !dbg !1710
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1716
  %12 = load i32, i32* %11, align 8, !dbg !1716, !tbaa !1032
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1717
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1718
  %15 = load i8*, i8** %14, align 8, !dbg !1718, !tbaa !1105
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1719
  %17 = load i8*, i8** %16, align 8, !dbg !1719, !tbaa !1108
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !1720
  %19 = add i64 %18, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %19, metadata !1708, metadata !DIExpression()) #32, !dbg !1710
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !1722
  call void @llvm.dbg.value(metadata i8* %20, metadata !1709, metadata !DIExpression()) #32, !dbg !1710
  %21 = load i32, i32* %11, align 8, !dbg !1723, !tbaa !1032
  %22 = load i8*, i8** %14, align 8, !dbg !1724, !tbaa !1105
  %23 = load i8*, i8** %16, align 8, !dbg !1725, !tbaa !1108
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !1726
  store i32 %7, i32* %6, align 4, !dbg !1727, !tbaa !431
  ret i8* %20, !dbg !1728
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1698 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1697, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %1, metadata !1702, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64* %2, metadata !1703, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1704, metadata !DIExpression()), !dbg !1729
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1730
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1705, metadata !DIExpression()), !dbg !1729
  %7 = tail call i32* @__errno_location() #35, !dbg !1731
  %8 = load i32, i32* %7, align 4, !dbg !1731, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %8, metadata !1706, metadata !DIExpression()), !dbg !1729
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1732
  %10 = load i32, i32* %9, align 4, !dbg !1732, !tbaa !1083
  %11 = icmp eq i64* %2, null, !dbg !1733
  %12 = zext i1 %11 to i32, !dbg !1733
  %13 = or i32 %10, %12, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %13, metadata !1707, metadata !DIExpression()), !dbg !1729
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1735
  %15 = load i32, i32* %14, align 8, !dbg !1735, !tbaa !1032
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1736
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1737
  %18 = load i8*, i8** %17, align 8, !dbg !1737, !tbaa !1105
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1738
  %20 = load i8*, i8** %19, align 8, !dbg !1738, !tbaa !1108
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1739
  %22 = add i64 %21, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %22, metadata !1708, metadata !DIExpression()), !dbg !1729
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !1741
  call void @llvm.dbg.value(metadata i8* %23, metadata !1709, metadata !DIExpression()), !dbg !1729
  %24 = load i32, i32* %14, align 8, !dbg !1742, !tbaa !1032
  %25 = load i8*, i8** %17, align 8, !dbg !1743, !tbaa !1105
  %26 = load i8*, i8** %19, align 8, !dbg !1744, !tbaa !1108
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1745
  store i32 %8, i32* %7, align 4, !dbg !1746, !tbaa !431
  br i1 %11, label %29, label %28, !dbg !1747

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1748, !tbaa !1750
  br label %29, !dbg !1751

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1752
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1753 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1758, !tbaa !414
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1755, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32 1, metadata !1756, metadata !DIExpression()), !dbg !1760
  %2 = load i32, i32* @nslots, align 4, !tbaa !431
  call void @llvm.dbg.value(metadata i32 1, metadata !1756, metadata !DIExpression()), !dbg !1760
  %3 = icmp sgt i32 %2, 1, !dbg !1761
  br i1 %3, label %4, label %6, !dbg !1763

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1761
  br label %10, !dbg !1763

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1764
  %8 = load i8*, i8** %7, align 8, !dbg !1764, !tbaa !1766
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1768
  br i1 %9, label %17, label %16, !dbg !1769

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1756, metadata !DIExpression()), !dbg !1760
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1770
  %13 = load i8*, i8** %12, align 8, !dbg !1770, !tbaa !1766
  tail call void @free(i8* noundef %13) #32, !dbg !1771
  %14 = add nuw nsw i64 %11, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %14, metadata !1756, metadata !DIExpression()), !dbg !1760
  %15 = icmp eq i64 %14, %5, !dbg !1761
  br i1 %15, label %6, label %10, !dbg !1763, !llvm.loop !1773

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !1775
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1777, !tbaa !1778
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1779, !tbaa !1766
  br label %17, !dbg !1780

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1781
  br i1 %18, label %21, label %19, !dbg !1783

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1784
  tail call void @free(i8* noundef %20) #32, !dbg !1786
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1787, !tbaa !414
  br label %21, !dbg !1788

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1789, !tbaa !431
  ret void, !dbg !1790
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1791 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1793, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* %1, metadata !1794, metadata !DIExpression()), !dbg !1795
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1796
  ret i8* %3, !dbg !1797
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1798 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1802, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %1, metadata !1803, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %2, metadata !1804, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1805, metadata !DIExpression()), !dbg !1818
  %6 = tail call i32* @__errno_location() #35, !dbg !1819
  %7 = load i32, i32* %6, align 4, !dbg !1819, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %7, metadata !1806, metadata !DIExpression()), !dbg !1818
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1820, !tbaa !414
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1807, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1808, metadata !DIExpression()), !dbg !1818
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1821
  br i1 %9, label %10, label %11, !dbg !1821

10:                                               ; preds = %4
  tail call void @abort() #33, !dbg !1823
  unreachable, !dbg !1823

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1824, !tbaa !431
  %13 = icmp sgt i32 %12, %0, !dbg !1825
  br i1 %13, label %36, label %14, !dbg !1826

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1827
  call void @llvm.dbg.value(metadata i1 %15, metadata !1809, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1828
  %16 = bitcast i64* %5 to i8*, !dbg !1829
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1829
  %17 = sext i32 %12 to i64, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %17, metadata !1812, metadata !DIExpression()), !dbg !1828
  store i64 %17, i64* %5, align 8, !dbg !1831, !tbaa !1750
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !1832
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1832
  %20 = add nuw nsw i32 %0, 1, !dbg !1833
  %21 = sub i32 %20, %12, !dbg !1834
  %22 = sext i32 %21 to i64, !dbg !1835
  call void @llvm.dbg.value(metadata i64* %5, metadata !1812, metadata !DIExpression(DW_OP_deref)), !dbg !1828
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !1836
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1836
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1807, metadata !DIExpression()), !dbg !1818
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1837, !tbaa !414
  br i1 %15, label %25, label %26, !dbg !1838

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1839, !tbaa.struct !1841
  br label %26, !dbg !1842

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !1843, !tbaa !431
  %28 = sext i32 %27 to i64, !dbg !1844
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1844
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1845
  %31 = load i64, i64* %5, align 8, !dbg !1846, !tbaa !1750
  call void @llvm.dbg.value(metadata i64 %31, metadata !1812, metadata !DIExpression()), !dbg !1828
  %32 = sub nsw i64 %31, %28, !dbg !1847
  %33 = shl i64 %32, 4, !dbg !1848
  call void @llvm.dbg.value(metadata i8* %30, metadata !1235, metadata !DIExpression()) #32, !dbg !1849
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()) #32, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %33, metadata !1239, metadata !DIExpression()) #32, !dbg !1849
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !1851
  %34 = load i64, i64* %5, align 8, !dbg !1852, !tbaa !1750
  call void @llvm.dbg.value(metadata i64 %34, metadata !1812, metadata !DIExpression()), !dbg !1828
  %35 = trunc i64 %34 to i32, !dbg !1852
  store i32 %35, i32* @nslots, align 4, !dbg !1853, !tbaa !431
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1854
  br label %36, !dbg !1855

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1818
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1807, metadata !DIExpression()), !dbg !1818
  %38 = zext i32 %0 to i64, !dbg !1856
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !1857
  %40 = load i64, i64* %39, align 8, !dbg !1857, !tbaa !1778
  call void @llvm.dbg.value(metadata i64 %40, metadata !1813, metadata !DIExpression()), !dbg !1858
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !1859
  %42 = load i8*, i8** %41, align 8, !dbg !1859, !tbaa !1766
  call void @llvm.dbg.value(metadata i8* %42, metadata !1815, metadata !DIExpression()), !dbg !1858
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1860
  %44 = load i32, i32* %43, align 4, !dbg !1860, !tbaa !1083
  %45 = or i32 %44, 1, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %45, metadata !1816, metadata !DIExpression()), !dbg !1858
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1862
  %47 = load i32, i32* %46, align 8, !dbg !1862, !tbaa !1032
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1863
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1864
  %50 = load i8*, i8** %49, align 8, !dbg !1864, !tbaa !1105
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1865
  %52 = load i8*, i8** %51, align 8, !dbg !1865, !tbaa !1108
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %53, metadata !1817, metadata !DIExpression()), !dbg !1858
  %54 = icmp ugt i64 %40, %53, !dbg !1867
  br i1 %54, label %65, label %55, !dbg !1869

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %56, metadata !1813, metadata !DIExpression()), !dbg !1858
  store i64 %56, i64* %39, align 8, !dbg !1872, !tbaa !1778
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1873
  br i1 %57, label %59, label %58, !dbg !1875

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !1876
  br label %59, !dbg !1876

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %60, metadata !1815, metadata !DIExpression()), !dbg !1858
  store i8* %60, i8** %41, align 8, !dbg !1878, !tbaa !1766
  %61 = load i32, i32* %46, align 8, !dbg !1879, !tbaa !1032
  %62 = load i8*, i8** %49, align 8, !dbg !1880, !tbaa !1105
  %63 = load i8*, i8** %51, align 8, !dbg !1881, !tbaa !1108
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !1882
  br label %65, !dbg !1883

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !1858
  call void @llvm.dbg.value(metadata i8* %66, metadata !1815, metadata !DIExpression()), !dbg !1858
  store i32 %7, i32* %6, align 4, !dbg !1884, !tbaa !431
  ret i8* %66, !dbg !1885
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1890, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %1, metadata !1891, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %2, metadata !1892, metadata !DIExpression()), !dbg !1893
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1894
  ret i8* %4, !dbg !1895
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !1896 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1898, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 0, metadata !1793, metadata !DIExpression()) #32, !dbg !1900
  call void @llvm.dbg.value(metadata i8* %0, metadata !1794, metadata !DIExpression()) #32, !dbg !1900
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !1902
  ret i8* %2, !dbg !1903
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !1904 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1908, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i64 %1, metadata !1909, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i32 0, metadata !1890, metadata !DIExpression()) #32, !dbg !1911
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()) #32, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %1, metadata !1892, metadata !DIExpression()) #32, !dbg !1911
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !1913
  ret i8* %3, !dbg !1914
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1915 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1919, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %1, metadata !1920, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8* %2, metadata !1921, metadata !DIExpression()), !dbg !1923
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !1924
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !1924
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1922, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926), !dbg !1929
  call void @llvm.dbg.value(metadata i32 %1, metadata !1930, metadata !DIExpression()) #32, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1935, metadata !DIExpression()) #32, !dbg !1938
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !1938, !alias.scope !1926
  %6 = icmp eq i32 %1, 10, !dbg !1939
  br i1 %6, label %7, label %8, !dbg !1941

7:                                                ; preds = %3
  tail call void @abort() #33, !dbg !1942, !noalias !1926
  unreachable, !dbg !1942

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1943
  store i32 %1, i32* %9, align 8, !dbg !1944, !tbaa !1032, !alias.scope !1926
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !1945
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !1946
  ret i8* %10, !dbg !1947
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !1948 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1952, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i32 %1, metadata !1953, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8* %2, metadata !1954, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i64 %3, metadata !1955, metadata !DIExpression()), !dbg !1957
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1958
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !1958
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !1956, metadata !DIExpression()), !dbg !1959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1960), !dbg !1963
  call void @llvm.dbg.value(metadata i32 %1, metadata !1930, metadata !DIExpression()) #32, !dbg !1964
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !1935, metadata !DIExpression()) #32, !dbg !1966
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !1966, !alias.scope !1960
  %7 = icmp eq i32 %1, 10, !dbg !1967
  br i1 %7, label %8, label %9, !dbg !1968

8:                                                ; preds = %4
  tail call void @abort() #33, !dbg !1969, !noalias !1960
  unreachable, !dbg !1969

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1970
  store i32 %1, i32* %10, align 8, !dbg !1971, !tbaa !1032, !alias.scope !1960
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !1972
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !1973
  ret i8* %11, !dbg !1974
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1975 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1979, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8* %1, metadata !1980, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i32 0, metadata !1919, metadata !DIExpression()) #32, !dbg !1982
  call void @llvm.dbg.value(metadata i32 %0, metadata !1920, metadata !DIExpression()) #32, !dbg !1982
  call void @llvm.dbg.value(metadata i8* %1, metadata !1921, metadata !DIExpression()) #32, !dbg !1982
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !1984
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !1984
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !1922, metadata !DIExpression()) #32, !dbg !1985
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1986) #32, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %0, metadata !1930, metadata !DIExpression()) #32, !dbg !1990
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !1935, metadata !DIExpression()) #32, !dbg !1992
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !1992, !alias.scope !1986
  %5 = icmp eq i32 %0, 10, !dbg !1993
  br i1 %5, label %6, label %7, !dbg !1994

6:                                                ; preds = %2
  tail call void @abort() #33, !dbg !1995, !noalias !1986
  unreachable, !dbg !1995

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1996
  store i32 %0, i32* %8, align 8, !dbg !1997, !tbaa !1032, !alias.scope !1986
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !1998
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !1999
  ret i8* %9, !dbg !2000
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2001 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %1, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %2, metadata !2007, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 0, metadata !1952, metadata !DIExpression()) #32, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %0, metadata !1953, metadata !DIExpression()) #32, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %1, metadata !1954, metadata !DIExpression()) #32, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %2, metadata !1955, metadata !DIExpression()) #32, !dbg !2009
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2011
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2011
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1956, metadata !DIExpression()) #32, !dbg !2012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013) #32, !dbg !2016
  call void @llvm.dbg.value(metadata i32 %0, metadata !1930, metadata !DIExpression()) #32, !dbg !2017
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1935, metadata !DIExpression()) #32, !dbg !2019
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2019, !alias.scope !2013
  %6 = icmp eq i32 %0, 10, !dbg !2020
  br i1 %6, label %7, label %8, !dbg !2021

7:                                                ; preds = %3
  tail call void @abort() #33, !dbg !2022, !noalias !2013
  unreachable, !dbg !2022

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2023
  store i32 %0, i32* %9, align 8, !dbg !2024, !tbaa !1032, !alias.scope !2013
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2025
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2026
  ret i8* %10, !dbg !2027
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2028 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2032, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %1, metadata !2033, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %2, metadata !2034, metadata !DIExpression()), !dbg !2036
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2037
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2037
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2035, metadata !DIExpression()), !dbg !2038
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2039, !tbaa.struct !2040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1050, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8 %2, metadata !1051, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 1, metadata !1052, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8 %2, metadata !1053, metadata !DIExpression()), !dbg !2041
  %6 = lshr i8 %2, 5, !dbg !2043
  %7 = zext i8 %6 to i64, !dbg !2043
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2044
  call void @llvm.dbg.value(metadata i32* %8, metadata !1054, metadata !DIExpression()), !dbg !2041
  %9 = and i8 %2, 31, !dbg !2045
  %10 = zext i8 %9 to i32, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %10, metadata !1056, metadata !DIExpression()), !dbg !2041
  %11 = load i32, i32* %8, align 4, !dbg !2046, !tbaa !431
  %12 = lshr i32 %11, %10, !dbg !2047
  %13 = and i32 %12, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %13, metadata !1057, metadata !DIExpression()), !dbg !2041
  %14 = xor i32 %13, 1, !dbg !2049
  %15 = shl i32 %14, %10, !dbg !2050
  %16 = xor i32 %15, %11, !dbg !2051
  store i32 %16, i32* %8, align 4, !dbg !2051, !tbaa !431
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2052
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2053
  ret i8* %17, !dbg !2054
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2055 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2059, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 %1, metadata !2060, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8* %0, metadata !2032, metadata !DIExpression()) #32, !dbg !2062
  call void @llvm.dbg.value(metadata i64 -1, metadata !2033, metadata !DIExpression()) #32, !dbg !2062
  call void @llvm.dbg.value(metadata i8 %1, metadata !2034, metadata !DIExpression()) #32, !dbg !2062
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2064
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2064
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2035, metadata !DIExpression()) #32, !dbg !2065
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2066, !tbaa.struct !2040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1050, metadata !DIExpression()) #32, !dbg !2067
  call void @llvm.dbg.value(metadata i8 %1, metadata !1051, metadata !DIExpression()) #32, !dbg !2067
  call void @llvm.dbg.value(metadata i32 1, metadata !1052, metadata !DIExpression()) #32, !dbg !2067
  call void @llvm.dbg.value(metadata i8 %1, metadata !1053, metadata !DIExpression()) #32, !dbg !2067
  %5 = lshr i8 %1, 5, !dbg !2069
  %6 = zext i8 %5 to i64, !dbg !2069
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2070
  call void @llvm.dbg.value(metadata i32* %7, metadata !1054, metadata !DIExpression()) #32, !dbg !2067
  %8 = and i8 %1, 31, !dbg !2071
  %9 = zext i8 %8 to i32, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %9, metadata !1056, metadata !DIExpression()) #32, !dbg !2067
  %10 = load i32, i32* %7, align 4, !dbg !2072, !tbaa !431
  %11 = lshr i32 %10, %9, !dbg !2073
  %12 = and i32 %11, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i32 %12, metadata !1057, metadata !DIExpression()) #32, !dbg !2067
  %13 = xor i32 %12, 1, !dbg !2075
  %14 = shl i32 %13, %9, !dbg !2076
  %15 = xor i32 %14, %10, !dbg !2077
  store i32 %15, i32* %7, align 4, !dbg !2077, !tbaa !431
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2078
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2079
  ret i8* %16, !dbg !2080
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2081 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2083, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %0, metadata !2059, metadata !DIExpression()) #32, !dbg !2085
  call void @llvm.dbg.value(metadata i8 58, metadata !2060, metadata !DIExpression()) #32, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %0, metadata !2032, metadata !DIExpression()) #32, !dbg !2087
  call void @llvm.dbg.value(metadata i64 -1, metadata !2033, metadata !DIExpression()) #32, !dbg !2087
  call void @llvm.dbg.value(metadata i8 58, metadata !2034, metadata !DIExpression()) #32, !dbg !2087
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2089
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2089
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2035, metadata !DIExpression()) #32, !dbg !2090
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2091, !tbaa.struct !2040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1050, metadata !DIExpression()) #32, !dbg !2092
  call void @llvm.dbg.value(metadata i8 58, metadata !1051, metadata !DIExpression()) #32, !dbg !2092
  call void @llvm.dbg.value(metadata i32 1, metadata !1052, metadata !DIExpression()) #32, !dbg !2092
  call void @llvm.dbg.value(metadata i8 58, metadata !1053, metadata !DIExpression()) #32, !dbg !2092
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2094
  call void @llvm.dbg.value(metadata i32* %4, metadata !1054, metadata !DIExpression()) #32, !dbg !2092
  call void @llvm.dbg.value(metadata i32 26, metadata !1056, metadata !DIExpression()) #32, !dbg !2092
  %5 = load i32, i32* %4, align 4, !dbg !2095, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %5, metadata !1057, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2092
  %6 = or i32 %5, 67108864, !dbg !2096
  store i32 %6, i32* %4, align 4, !dbg !2096, !tbaa !431
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2098
  ret i8* %7, !dbg !2099
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2100 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2102, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %1, metadata !2103, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8* %0, metadata !2032, metadata !DIExpression()) #32, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %1, metadata !2033, metadata !DIExpression()) #32, !dbg !2105
  call void @llvm.dbg.value(metadata i8 58, metadata !2034, metadata !DIExpression()) #32, !dbg !2105
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2107
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2107
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2035, metadata !DIExpression()) #32, !dbg !2108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2109, !tbaa.struct !2040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1050, metadata !DIExpression()) #32, !dbg !2110
  call void @llvm.dbg.value(metadata i8 58, metadata !1051, metadata !DIExpression()) #32, !dbg !2110
  call void @llvm.dbg.value(metadata i32 1, metadata !1052, metadata !DIExpression()) #32, !dbg !2110
  call void @llvm.dbg.value(metadata i8 58, metadata !1053, metadata !DIExpression()) #32, !dbg !2110
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2112
  call void @llvm.dbg.value(metadata i32* %5, metadata !1054, metadata !DIExpression()) #32, !dbg !2110
  call void @llvm.dbg.value(metadata i32 26, metadata !1056, metadata !DIExpression()) #32, !dbg !2110
  %6 = load i32, i32* %5, align 4, !dbg !2113, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %6, metadata !1057, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2110
  %7 = or i32 %6, 67108864, !dbg !2114
  store i32 %7, i32* %5, align 4, !dbg !2114, !tbaa !431
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2115
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2116
  ret i8* %8, !dbg !2117
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2118 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2120, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %1, metadata !2121, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* %2, metadata !2122, metadata !DIExpression()), !dbg !2124
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2125
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2125
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2123, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %1, metadata !1930, metadata !DIExpression()) #32, !dbg !2127
  call void @llvm.dbg.value(metadata i32 0, metadata !1935, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2127
  %6 = icmp eq i32 %1, 10, !dbg !2129
  br i1 %6, label %7, label %8, !dbg !2130

7:                                                ; preds = %3
  tail call void @abort() #33, !dbg !2131, !noalias !2132
  unreachable, !dbg !2131

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !1935, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2127
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2135
  store i32 %1, i32* %9, align 8, !dbg !2135, !tbaa.struct !2040
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2135
  %11 = bitcast i32* %10 to i8*, !dbg !2135
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2135
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1050, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 58, metadata !1051, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 1, metadata !1052, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 58, metadata !1053, metadata !DIExpression()), !dbg !2136
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2138
  call void @llvm.dbg.value(metadata i32* %12, metadata !1054, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 26, metadata !1056, metadata !DIExpression()), !dbg !2136
  %13 = load i32, i32* %12, align 4, !dbg !2139, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %13, metadata !1057, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2136
  %14 = or i32 %13, 67108864, !dbg !2140
  store i32 %14, i32* %12, align 4, !dbg !2140, !tbaa !431
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2141
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2142
  ret i8* %15, !dbg !2143
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2144 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2148, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %1, metadata !2149, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %2, metadata !2150, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %3, metadata !2151, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i32 %0, metadata !2153, metadata !DIExpression()) #32, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %1, metadata !2158, metadata !DIExpression()) #32, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %2, metadata !2159, metadata !DIExpression()) #32, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %3, metadata !2160, metadata !DIExpression()) #32, !dbg !2163
  call void @llvm.dbg.value(metadata i64 -1, metadata !2161, metadata !DIExpression()) #32, !dbg !2163
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2165
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2165
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2162, metadata !DIExpression()) #32, !dbg !2166
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2167, !tbaa.struct !2040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1090, metadata !DIExpression()) #32, !dbg !2168
  call void @llvm.dbg.value(metadata i8* %1, metadata !1091, metadata !DIExpression()) #32, !dbg !2168
  call void @llvm.dbg.value(metadata i8* %2, metadata !1092, metadata !DIExpression()) #32, !dbg !2168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1090, metadata !DIExpression()) #32, !dbg !2168
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2170
  store i32 10, i32* %7, align 8, !dbg !2171, !tbaa !1032
  %8 = icmp ne i8* %1, null, !dbg !2172
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2173
  br i1 %10, label %12, label %11, !dbg !2173

11:                                               ; preds = %4
  tail call void @abort() #33, !dbg !2174
  unreachable, !dbg !2174

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2175
  store i8* %1, i8** %13, align 8, !dbg !2176, !tbaa !1105
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2177
  store i8* %2, i8** %14, align 8, !dbg !2178, !tbaa !1108
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2179
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2180
  ret i8* %15, !dbg !2181
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2154 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2153, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8* %1, metadata !2158, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8* %2, metadata !2159, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8* %3, metadata !2160, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i64 %4, metadata !2161, metadata !DIExpression()), !dbg !2182
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2183
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2183
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2162, metadata !DIExpression()), !dbg !2184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2185, !tbaa.struct !2040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1090, metadata !DIExpression()) #32, !dbg !2186
  call void @llvm.dbg.value(metadata i8* %1, metadata !1091, metadata !DIExpression()) #32, !dbg !2186
  call void @llvm.dbg.value(metadata i8* %2, metadata !1092, metadata !DIExpression()) #32, !dbg !2186
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1090, metadata !DIExpression()) #32, !dbg !2186
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2188
  store i32 10, i32* %8, align 8, !dbg !2189, !tbaa !1032
  %9 = icmp ne i8* %1, null, !dbg !2190
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2191
  br i1 %11, label %13, label %12, !dbg !2191

12:                                               ; preds = %5
  tail call void @abort() #33, !dbg !2192
  unreachable, !dbg !2192

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2193
  store i8* %1, i8** %14, align 8, !dbg !2194, !tbaa !1105
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2195
  store i8* %2, i8** %15, align 8, !dbg !2196, !tbaa !1108
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2198
  ret i8* %16, !dbg !2199
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2200 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8* %1, metadata !2205, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8* %2, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 0, metadata !2148, metadata !DIExpression()) #32, !dbg !2208
  call void @llvm.dbg.value(metadata i8* %0, metadata !2149, metadata !DIExpression()) #32, !dbg !2208
  call void @llvm.dbg.value(metadata i8* %1, metadata !2150, metadata !DIExpression()) #32, !dbg !2208
  call void @llvm.dbg.value(metadata i8* %2, metadata !2151, metadata !DIExpression()) #32, !dbg !2208
  call void @llvm.dbg.value(metadata i32 0, metadata !2153, metadata !DIExpression()) #32, !dbg !2210
  call void @llvm.dbg.value(metadata i8* %0, metadata !2158, metadata !DIExpression()) #32, !dbg !2210
  call void @llvm.dbg.value(metadata i8* %1, metadata !2159, metadata !DIExpression()) #32, !dbg !2210
  call void @llvm.dbg.value(metadata i8* %2, metadata !2160, metadata !DIExpression()) #32, !dbg !2210
  call void @llvm.dbg.value(metadata i64 -1, metadata !2161, metadata !DIExpression()) #32, !dbg !2210
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2212
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2212
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2162, metadata !DIExpression()) #32, !dbg !2213
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2214, !tbaa.struct !2040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1090, metadata !DIExpression()) #32, !dbg !2215
  call void @llvm.dbg.value(metadata i8* %0, metadata !1091, metadata !DIExpression()) #32, !dbg !2215
  call void @llvm.dbg.value(metadata i8* %1, metadata !1092, metadata !DIExpression()) #32, !dbg !2215
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1090, metadata !DIExpression()) #32, !dbg !2215
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2217
  store i32 10, i32* %6, align 8, !dbg !2218, !tbaa !1032
  %7 = icmp ne i8* %0, null, !dbg !2219
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2220
  br i1 %9, label %11, label %10, !dbg !2220

10:                                               ; preds = %3
  tail call void @abort() #33, !dbg !2221
  unreachable, !dbg !2221

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2222
  store i8* %0, i8** %12, align 8, !dbg !2223, !tbaa !1105
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2224
  store i8* %1, i8** %13, align 8, !dbg !2225, !tbaa !1108
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2226
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2227
  ret i8* %14, !dbg !2228
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2229 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2233, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8* %1, metadata !2234, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8* %2, metadata !2235, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i64 %3, metadata !2236, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 0, metadata !2153, metadata !DIExpression()) #32, !dbg !2238
  call void @llvm.dbg.value(metadata i8* %0, metadata !2158, metadata !DIExpression()) #32, !dbg !2238
  call void @llvm.dbg.value(metadata i8* %1, metadata !2159, metadata !DIExpression()) #32, !dbg !2238
  call void @llvm.dbg.value(metadata i8* %2, metadata !2160, metadata !DIExpression()) #32, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %3, metadata !2161, metadata !DIExpression()) #32, !dbg !2238
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2240
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2240
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2162, metadata !DIExpression()) #32, !dbg !2241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2242, !tbaa.struct !2040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1090, metadata !DIExpression()) #32, !dbg !2243
  call void @llvm.dbg.value(metadata i8* %0, metadata !1091, metadata !DIExpression()) #32, !dbg !2243
  call void @llvm.dbg.value(metadata i8* %1, metadata !1092, metadata !DIExpression()) #32, !dbg !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1090, metadata !DIExpression()) #32, !dbg !2243
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2245
  store i32 10, i32* %7, align 8, !dbg !2246, !tbaa !1032
  %8 = icmp ne i8* %0, null, !dbg !2247
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2248
  br i1 %10, label %12, label %11, !dbg !2248

11:                                               ; preds = %4
  tail call void @abort() #33, !dbg !2249
  unreachable, !dbg !2249

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2250
  store i8* %0, i8** %13, align 8, !dbg !2251, !tbaa !1105
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2252
  store i8* %1, i8** %14, align 8, !dbg !2253, !tbaa !1108
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2254
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2255
  ret i8* %15, !dbg !2256
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2261, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8* %1, metadata !2262, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i64 %2, metadata !2263, metadata !DIExpression()), !dbg !2264
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2265
  ret i8* %4, !dbg !2266
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2267 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2271, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %1, metadata !2272, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 0, metadata !2261, metadata !DIExpression()) #32, !dbg !2274
  call void @llvm.dbg.value(metadata i8* %0, metadata !2262, metadata !DIExpression()) #32, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %1, metadata !2263, metadata !DIExpression()) #32, !dbg !2274
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2276
  ret i8* %3, !dbg !2277
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2278 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2282, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8* %1, metadata !2283, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %0, metadata !2261, metadata !DIExpression()) #32, !dbg !2285
  call void @llvm.dbg.value(metadata i8* %1, metadata !2262, metadata !DIExpression()) #32, !dbg !2285
  call void @llvm.dbg.value(metadata i64 -1, metadata !2263, metadata !DIExpression()) #32, !dbg !2285
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2287
  ret i8* %3, !dbg !2288
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2289 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2293, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()) #32, !dbg !2295
  call void @llvm.dbg.value(metadata i8* %0, metadata !2283, metadata !DIExpression()) #32, !dbg !2295
  call void @llvm.dbg.value(metadata i32 0, metadata !2261, metadata !DIExpression()) #32, !dbg !2297
  call void @llvm.dbg.value(metadata i8* %0, metadata !2262, metadata !DIExpression()) #32, !dbg !2297
  call void @llvm.dbg.value(metadata i64 -1, metadata !2263, metadata !DIExpression()) #32, !dbg !2297
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2299
  ret i8* %2, !dbg !2300
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2301 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2340, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* %1, metadata !2341, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* %2, metadata !2342, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* %3, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8** %4, metadata !2344, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %5, metadata !2345, metadata !DIExpression()), !dbg !2346
  %7 = icmp eq i8* %1, null, !dbg !2347
  br i1 %7, label %10, label %8, !dbg !2349

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2350
  br label %12, !dbg !2350

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.68, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2351
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.70, i64 0, i64 0), i32 noundef 5) #32, !dbg !2352
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2352
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.71, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2353
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.72, i64 0, i64 0), i32 noundef 5) #32, !dbg !2354
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.73, i64 0, i64 0)) #32, !dbg !2354
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.71, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2355
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
  ], !dbg !2356

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.74, i64 0, i64 0), i32 noundef 5) #32, !dbg !2357
  %21 = load i8*, i8** %4, align 8, !dbg !2357, !tbaa !414
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2357
  br label %147, !dbg !2359

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.75, i64 0, i64 0), i32 noundef 5) #32, !dbg !2360
  %25 = load i8*, i8** %4, align 8, !dbg !2360, !tbaa !414
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2360
  %27 = load i8*, i8** %26, align 8, !dbg !2360, !tbaa !414
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2360
  br label %147, !dbg !2361

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.76, i64 0, i64 0), i32 noundef 5) #32, !dbg !2362
  %31 = load i8*, i8** %4, align 8, !dbg !2362, !tbaa !414
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2362
  %33 = load i8*, i8** %32, align 8, !dbg !2362, !tbaa !414
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2362
  %35 = load i8*, i8** %34, align 8, !dbg !2362, !tbaa !414
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2362
  br label %147, !dbg !2363

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.77, i64 0, i64 0), i32 noundef 5) #32, !dbg !2364
  %39 = load i8*, i8** %4, align 8, !dbg !2364, !tbaa !414
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2364
  %41 = load i8*, i8** %40, align 8, !dbg !2364, !tbaa !414
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2364
  %43 = load i8*, i8** %42, align 8, !dbg !2364, !tbaa !414
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2364
  %45 = load i8*, i8** %44, align 8, !dbg !2364, !tbaa !414
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2364
  br label %147, !dbg !2365

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.78, i64 0, i64 0), i32 noundef 5) #32, !dbg !2366
  %49 = load i8*, i8** %4, align 8, !dbg !2366, !tbaa !414
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2366
  %51 = load i8*, i8** %50, align 8, !dbg !2366, !tbaa !414
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2366
  %53 = load i8*, i8** %52, align 8, !dbg !2366, !tbaa !414
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2366
  %55 = load i8*, i8** %54, align 8, !dbg !2366, !tbaa !414
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2366
  %57 = load i8*, i8** %56, align 8, !dbg !2366, !tbaa !414
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2366
  br label %147, !dbg !2367

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.79, i64 0, i64 0), i32 noundef 5) #32, !dbg !2368
  %61 = load i8*, i8** %4, align 8, !dbg !2368, !tbaa !414
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2368
  %63 = load i8*, i8** %62, align 8, !dbg !2368, !tbaa !414
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2368
  %65 = load i8*, i8** %64, align 8, !dbg !2368, !tbaa !414
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2368
  %67 = load i8*, i8** %66, align 8, !dbg !2368, !tbaa !414
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2368
  %69 = load i8*, i8** %68, align 8, !dbg !2368, !tbaa !414
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2368
  %71 = load i8*, i8** %70, align 8, !dbg !2368, !tbaa !414
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2368
  br label %147, !dbg !2369

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.80, i64 0, i64 0), i32 noundef 5) #32, !dbg !2370
  %75 = load i8*, i8** %4, align 8, !dbg !2370, !tbaa !414
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2370
  %77 = load i8*, i8** %76, align 8, !dbg !2370, !tbaa !414
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2370
  %79 = load i8*, i8** %78, align 8, !dbg !2370, !tbaa !414
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2370
  %81 = load i8*, i8** %80, align 8, !dbg !2370, !tbaa !414
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2370
  %83 = load i8*, i8** %82, align 8, !dbg !2370, !tbaa !414
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2370
  %85 = load i8*, i8** %84, align 8, !dbg !2370, !tbaa !414
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2370
  %87 = load i8*, i8** %86, align 8, !dbg !2370, !tbaa !414
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2370
  br label %147, !dbg !2371

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.81, i64 0, i64 0), i32 noundef 5) #32, !dbg !2372
  %91 = load i8*, i8** %4, align 8, !dbg !2372, !tbaa !414
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2372
  %93 = load i8*, i8** %92, align 8, !dbg !2372, !tbaa !414
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2372
  %95 = load i8*, i8** %94, align 8, !dbg !2372, !tbaa !414
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2372
  %97 = load i8*, i8** %96, align 8, !dbg !2372, !tbaa !414
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2372
  %99 = load i8*, i8** %98, align 8, !dbg !2372, !tbaa !414
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2372
  %101 = load i8*, i8** %100, align 8, !dbg !2372, !tbaa !414
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2372
  %103 = load i8*, i8** %102, align 8, !dbg !2372, !tbaa !414
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2372
  %105 = load i8*, i8** %104, align 8, !dbg !2372, !tbaa !414
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2372
  br label %147, !dbg !2373

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.82, i64 0, i64 0), i32 noundef 5) #32, !dbg !2374
  %109 = load i8*, i8** %4, align 8, !dbg !2374, !tbaa !414
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2374
  %111 = load i8*, i8** %110, align 8, !dbg !2374, !tbaa !414
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2374
  %113 = load i8*, i8** %112, align 8, !dbg !2374, !tbaa !414
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2374
  %115 = load i8*, i8** %114, align 8, !dbg !2374, !tbaa !414
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2374
  %117 = load i8*, i8** %116, align 8, !dbg !2374, !tbaa !414
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2374
  %119 = load i8*, i8** %118, align 8, !dbg !2374, !tbaa !414
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2374
  %121 = load i8*, i8** %120, align 8, !dbg !2374, !tbaa !414
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2374
  %123 = load i8*, i8** %122, align 8, !dbg !2374, !tbaa !414
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2374
  %125 = load i8*, i8** %124, align 8, !dbg !2374, !tbaa !414
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2374
  br label %147, !dbg !2375

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.83, i64 0, i64 0), i32 noundef 5) #32, !dbg !2376
  %129 = load i8*, i8** %4, align 8, !dbg !2376, !tbaa !414
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2376
  %131 = load i8*, i8** %130, align 8, !dbg !2376, !tbaa !414
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2376
  %133 = load i8*, i8** %132, align 8, !dbg !2376, !tbaa !414
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2376
  %135 = load i8*, i8** %134, align 8, !dbg !2376, !tbaa !414
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2376
  %137 = load i8*, i8** %136, align 8, !dbg !2376, !tbaa !414
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2376
  %139 = load i8*, i8** %138, align 8, !dbg !2376, !tbaa !414
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2376
  %141 = load i8*, i8** %140, align 8, !dbg !2376, !tbaa !414
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2376
  %143 = load i8*, i8** %142, align 8, !dbg !2376, !tbaa !414
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2376
  %145 = load i8*, i8** %144, align 8, !dbg !2376, !tbaa !414
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2376
  br label %147, !dbg !2377

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2378
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2379 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2383, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %1, metadata !2384, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %2, metadata !2385, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %3, metadata !2386, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8** %4, metadata !2387, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 0, metadata !2388, metadata !DIExpression()), !dbg !2389
  br label %6, !dbg !2390

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2392
  call void @llvm.dbg.value(metadata i64 %7, metadata !2388, metadata !DIExpression()), !dbg !2389
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2393
  %9 = load i8*, i8** %8, align 8, !dbg !2393, !tbaa !414
  %10 = icmp eq i8* %9, null, !dbg !2395
  %11 = add i64 %7, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %11, metadata !2388, metadata !DIExpression()), !dbg !2389
  br i1 %10, label %12, label %6, !dbg !2395, !llvm.loop !2397

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2399
  ret void, !dbg !2400
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2401 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2416, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %1, metadata !2417, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %2, metadata !2418, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %3, metadata !2419, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2420, metadata !DIExpression()), !dbg !2425
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2426
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2426
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2422, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 0, metadata !2421, metadata !DIExpression()), !dbg !2424
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2421, metadata !DIExpression()), !dbg !2424
  %11 = load i32, i32* %8, align 8, !dbg !2428
  %12 = icmp sgt i32 %11, -1, !dbg !2428
  br i1 %12, label %20, label %13, !dbg !2428

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2428
  store i32 %14, i32* %8, align 8, !dbg !2428
  %15 = icmp ult i32 %11, -7, !dbg !2428
  br i1 %15, label %16, label %20, !dbg !2428

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2428
  %18 = sext i32 %11 to i64, !dbg !2428
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2428
  br label %24, !dbg !2428

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2428
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2428
  store i8* %23, i8** %10, align 8, !dbg !2428
  br label %24, !dbg !2428

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2428
  %28 = load i8*, i8** %27, align 8, !dbg !2428
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2431
  store i8* %28, i8** %29, align 8, !dbg !2432, !tbaa !414
  %30 = icmp eq i8* %28, null, !dbg !2433
  br i1 %30, label %210, label %31, !dbg !2434

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 1, metadata !2421, metadata !DIExpression()), !dbg !2424
  %32 = icmp sgt i32 %25, -1, !dbg !2428
  br i1 %32, label %40, label %33, !dbg !2428

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2428
  store i32 %34, i32* %8, align 8, !dbg !2428
  %35 = icmp ult i32 %25, -7, !dbg !2428
  br i1 %35, label %36, label %40, !dbg !2428

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2428
  %38 = sext i32 %25 to i64, !dbg !2428
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2428
  br label %44, !dbg !2428

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2428
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2428
  store i8* %43, i8** %10, align 8, !dbg !2428
  br label %44, !dbg !2428

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2428
  %48 = load i8*, i8** %47, align 8, !dbg !2428
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2431
  store i8* %48, i8** %49, align 8, !dbg !2432, !tbaa !414
  %50 = icmp eq i8* %48, null, !dbg !2433
  br i1 %50, label %210, label %51, !dbg !2434

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 2, metadata !2421, metadata !DIExpression()), !dbg !2424
  %52 = icmp sgt i32 %45, -1, !dbg !2428
  br i1 %52, label %60, label %53, !dbg !2428

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2428
  store i32 %54, i32* %8, align 8, !dbg !2428
  %55 = icmp ult i32 %45, -7, !dbg !2428
  br i1 %55, label %56, label %60, !dbg !2428

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2428
  %58 = sext i32 %45 to i64, !dbg !2428
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2428
  br label %64, !dbg !2428

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2428
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2428
  store i8* %63, i8** %10, align 8, !dbg !2428
  br label %64, !dbg !2428

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2428
  %68 = load i8*, i8** %67, align 8, !dbg !2428
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2431
  store i8* %68, i8** %69, align 8, !dbg !2432, !tbaa !414
  %70 = icmp eq i8* %68, null, !dbg !2433
  br i1 %70, label %210, label %71, !dbg !2434

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 3, metadata !2421, metadata !DIExpression()), !dbg !2424
  %72 = icmp sgt i32 %65, -1, !dbg !2428
  br i1 %72, label %80, label %73, !dbg !2428

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2428
  store i32 %74, i32* %8, align 8, !dbg !2428
  %75 = icmp ult i32 %65, -7, !dbg !2428
  br i1 %75, label %76, label %80, !dbg !2428

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2428
  %78 = sext i32 %65 to i64, !dbg !2428
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2428
  br label %84, !dbg !2428

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2428
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2428
  store i8* %83, i8** %10, align 8, !dbg !2428
  br label %84, !dbg !2428

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2428
  %88 = load i8*, i8** %87, align 8, !dbg !2428
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2431
  store i8* %88, i8** %89, align 8, !dbg !2432, !tbaa !414
  %90 = icmp eq i8* %88, null, !dbg !2433
  br i1 %90, label %210, label %91, !dbg !2434

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 4, metadata !2421, metadata !DIExpression()), !dbg !2424
  %92 = icmp sgt i32 %85, -1, !dbg !2428
  br i1 %92, label %100, label %93, !dbg !2428

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2428
  store i32 %94, i32* %8, align 8, !dbg !2428
  %95 = icmp ult i32 %85, -7, !dbg !2428
  br i1 %95, label %96, label %100, !dbg !2428

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2428
  %98 = sext i32 %85 to i64, !dbg !2428
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2428
  br label %104, !dbg !2428

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2428
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2428
  store i8* %103, i8** %10, align 8, !dbg !2428
  br label %104, !dbg !2428

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2428
  %108 = load i8*, i8** %107, align 8, !dbg !2428
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2431
  store i8* %108, i8** %109, align 8, !dbg !2432, !tbaa !414
  %110 = icmp eq i8* %108, null, !dbg !2433
  br i1 %110, label %210, label %111, !dbg !2434

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 5, metadata !2421, metadata !DIExpression()), !dbg !2424
  %112 = icmp sgt i32 %105, -1, !dbg !2428
  br i1 %112, label %120, label %113, !dbg !2428

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2428
  store i32 %114, i32* %8, align 8, !dbg !2428
  %115 = icmp ult i32 %105, -7, !dbg !2428
  br i1 %115, label %116, label %120, !dbg !2428

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2428
  %118 = sext i32 %105 to i64, !dbg !2428
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2428
  br label %124, !dbg !2428

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2428
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2428
  store i8* %123, i8** %10, align 8, !dbg !2428
  br label %124, !dbg !2428

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2428
  %128 = load i8*, i8** %127, align 8, !dbg !2428
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2431
  store i8* %128, i8** %129, align 8, !dbg !2432, !tbaa !414
  %130 = icmp eq i8* %128, null, !dbg !2433
  br i1 %130, label %210, label %131, !dbg !2434

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 6, metadata !2421, metadata !DIExpression()), !dbg !2424
  %132 = icmp sgt i32 %125, -1, !dbg !2428
  br i1 %132, label %140, label %133, !dbg !2428

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2428
  store i32 %134, i32* %8, align 8, !dbg !2428
  %135 = icmp ult i32 %125, -7, !dbg !2428
  br i1 %135, label %136, label %140, !dbg !2428

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2428
  %138 = sext i32 %125 to i64, !dbg !2428
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2428
  br label %144, !dbg !2428

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2428
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2428
  store i8* %143, i8** %10, align 8, !dbg !2428
  br label %144, !dbg !2428

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2428
  %148 = load i8*, i8** %147, align 8, !dbg !2428
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2431
  store i8* %148, i8** %149, align 8, !dbg !2432, !tbaa !414
  %150 = icmp eq i8* %148, null, !dbg !2433
  br i1 %150, label %210, label %151, !dbg !2434

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 7, metadata !2421, metadata !DIExpression()), !dbg !2424
  %152 = icmp sgt i32 %145, -1, !dbg !2428
  br i1 %152, label %160, label %153, !dbg !2428

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2428
  store i32 %154, i32* %8, align 8, !dbg !2428
  %155 = icmp ult i32 %145, -7, !dbg !2428
  br i1 %155, label %156, label %160, !dbg !2428

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2428
  %158 = sext i32 %145 to i64, !dbg !2428
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2428
  br label %164, !dbg !2428

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2428
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2428
  store i8* %163, i8** %10, align 8, !dbg !2428
  br label %164, !dbg !2428

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2428
  %168 = load i8*, i8** %167, align 8, !dbg !2428
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2431
  store i8* %168, i8** %169, align 8, !dbg !2432, !tbaa !414
  %170 = icmp eq i8* %168, null, !dbg !2433
  br i1 %170, label %210, label %171, !dbg !2434

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 8, metadata !2421, metadata !DIExpression()), !dbg !2424
  %172 = icmp sgt i32 %165, -1, !dbg !2428
  br i1 %172, label %180, label %173, !dbg !2428

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2428
  store i32 %174, i32* %8, align 8, !dbg !2428
  %175 = icmp ult i32 %165, -7, !dbg !2428
  br i1 %175, label %176, label %180, !dbg !2428

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2428
  %178 = sext i32 %165 to i64, !dbg !2428
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2428
  br label %184, !dbg !2428

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2428
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2428
  store i8* %183, i8** %10, align 8, !dbg !2428
  br label %184, !dbg !2428

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2428
  %188 = load i8*, i8** %187, align 8, !dbg !2428
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2431
  store i8* %188, i8** %189, align 8, !dbg !2432, !tbaa !414
  %190 = icmp eq i8* %188, null, !dbg !2433
  br i1 %190, label %210, label %191, !dbg !2434

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 9, metadata !2421, metadata !DIExpression()), !dbg !2424
  %192 = icmp sgt i32 %185, -1, !dbg !2428
  br i1 %192, label %200, label %193, !dbg !2428

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2428
  store i32 %194, i32* %8, align 8, !dbg !2428
  %195 = icmp ult i32 %185, -7, !dbg !2428
  br i1 %195, label %196, label %200, !dbg !2428

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2428
  %198 = sext i32 %185 to i64, !dbg !2428
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2428
  br label %203, !dbg !2428

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2428
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2428
  store i8* %202, i8** %10, align 8, !dbg !2428
  br label %203, !dbg !2428

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2428
  %206 = load i8*, i8** %205, align 8, !dbg !2428
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2431
  store i8* %206, i8** %207, align 8, !dbg !2432, !tbaa !414
  %208 = icmp eq i8* %206, null, !dbg !2433
  %209 = select i1 %208, i64 9, i64 10, !dbg !2434
  br label %210, !dbg !2434

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2435
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2436
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2437
  ret void, !dbg !2437
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2438 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2442, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8* %1, metadata !2443, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8* %2, metadata !2444, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8* %3, metadata !2445, metadata !DIExpression()), !dbg !2447
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2448
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2448
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2446, metadata !DIExpression()), !dbg !2449
  call void @llvm.va_start(i8* nonnull %7), !dbg !2450
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2451
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2451
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2451, !tbaa.struct !730
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2451
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2451
  call void @llvm.va_end(i8* nonnull %7), !dbg !2452
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2453
  ret void, !dbg !2453
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2454 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2455, !tbaa !414
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.71, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2455
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !2456
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.89, i64 0, i64 0)) #32, !dbg !2456
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.90, i64 0, i64 0), i32 noundef 5) #32, !dbg !2457
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #32, !dbg !2457
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !2458
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !2458
  ret void, !dbg !2459
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2460 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2465, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %1, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %2, metadata !2467, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8* %0, metadata !2469, metadata !DIExpression()) #32, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %1, metadata !2472, metadata !DIExpression()) #32, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %2, metadata !2473, metadata !DIExpression()) #32, !dbg !2474
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2476
  call void @llvm.dbg.value(metadata i8* %4, metadata !2477, metadata !DIExpression()) #32, !dbg !2482
  %5 = icmp eq i8* %4, null, !dbg !2484
  br i1 %5, label %6, label %7, !dbg !2486

6:                                                ; preds = %3
  tail call void @xalloc_die() #33, !dbg !2487
  unreachable, !dbg !2487

7:                                                ; preds = %3
  ret i8* %4, !dbg !2488
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2470 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2469, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i64 %1, metadata !2472, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i64 %2, metadata !2473, metadata !DIExpression()), !dbg !2489
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %4, metadata !2477, metadata !DIExpression()) #32, !dbg !2491
  %5 = icmp eq i8* %4, null, !dbg !2493
  br i1 %5, label %6, label %7, !dbg !2494

6:                                                ; preds = %3
  tail call void @xalloc_die() #33, !dbg !2495
  unreachable, !dbg !2495

7:                                                ; preds = %3
  ret i8* %4, !dbg !2496
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2497 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2501, metadata !DIExpression()), !dbg !2502
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2503
  call void @llvm.dbg.value(metadata i8* %2, metadata !2477, metadata !DIExpression()) #32, !dbg !2504
  %3 = icmp eq i8* %2, null, !dbg !2506
  br i1 %3, label %4, label %5, !dbg !2507

4:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2508
  unreachable, !dbg !2508

5:                                                ; preds = %1
  ret i8* %2, !dbg !2509
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2510 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2514, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %0, metadata !2516, metadata !DIExpression()) #32, !dbg !2520
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %2, metadata !2477, metadata !DIExpression()) #32, !dbg !2523
  %3 = icmp eq i8* %2, null, !dbg !2525
  br i1 %3, label %4, label %5, !dbg !2526

4:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2527
  unreachable, !dbg !2527

5:                                                ; preds = %1
  ret i8* %2, !dbg !2528
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2529 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2533, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i64 %0, metadata !2501, metadata !DIExpression()) #32, !dbg !2535
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2537
  call void @llvm.dbg.value(metadata i8* %2, metadata !2477, metadata !DIExpression()) #32, !dbg !2538
  %3 = icmp eq i8* %2, null, !dbg !2540
  br i1 %3, label %4, label %5, !dbg !2541

4:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2542
  unreachable, !dbg !2542

5:                                                ; preds = %1
  ret i8* %2, !dbg !2543
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2544 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2548, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i64 %1, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %0, metadata !2551, metadata !DIExpression()) #32, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %1, metadata !2555, metadata !DIExpression()) #32, !dbg !2556
  %3 = icmp eq i64 %1, 0, !dbg !2558
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2558
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2559
  call void @llvm.dbg.value(metadata i8* %5, metadata !2477, metadata !DIExpression()) #32, !dbg !2560
  %6 = icmp eq i8* %5, null, !dbg !2562
  br i1 %6, label %7, label %8, !dbg !2563

7:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2564
  unreachable, !dbg !2564

8:                                                ; preds = %2
  ret i8* %5, !dbg !2565
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2570, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %1, metadata !2571, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %0, metadata !2573, metadata !DIExpression()) #32, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %1, metadata !2576, metadata !DIExpression()) #32, !dbg !2577
  call void @llvm.dbg.value(metadata i8* %0, metadata !2551, metadata !DIExpression()) #32, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %1, metadata !2555, metadata !DIExpression()) #32, !dbg !2579
  %3 = icmp eq i64 %1, 0, !dbg !2581
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2581
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %5, metadata !2477, metadata !DIExpression()) #32, !dbg !2583
  %6 = icmp eq i8* %5, null, !dbg !2585
  br i1 %6, label %7, label %8, !dbg !2586

7:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2587
  unreachable, !dbg !2587

8:                                                ; preds = %2
  ret i8* %5, !dbg !2588
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2589 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %1, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i64 %2, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %0, metadata !2597, metadata !DIExpression()) #32, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %1, metadata !2600, metadata !DIExpression()) #32, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %2, metadata !2601, metadata !DIExpression()) #32, !dbg !2602
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2604
  call void @llvm.dbg.value(metadata i8* %4, metadata !2477, metadata !DIExpression()) #32, !dbg !2605
  %5 = icmp eq i8* %4, null, !dbg !2607
  br i1 %5, label %6, label %7, !dbg !2608

6:                                                ; preds = %3
  tail call void @xalloc_die() #33, !dbg !2609
  unreachable, !dbg !2609

7:                                                ; preds = %3
  ret i8* %4, !dbg !2610
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2611 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2615, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64 %1, metadata !2616, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* null, metadata !2469, metadata !DIExpression()) #32, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %0, metadata !2472, metadata !DIExpression()) #32, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %1, metadata !2473, metadata !DIExpression()) #32, !dbg !2618
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %3, metadata !2477, metadata !DIExpression()) #32, !dbg !2621
  %4 = icmp eq i8* %3, null, !dbg !2623
  br i1 %4, label %5, label %6, !dbg !2624

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2625
  unreachable, !dbg !2625

6:                                                ; preds = %2
  ret i8* %3, !dbg !2626
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2627 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2631, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %1, metadata !2632, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8* null, metadata !2593, metadata !DIExpression()) #32, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %0, metadata !2594, metadata !DIExpression()) #32, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %1, metadata !2595, metadata !DIExpression()) #32, !dbg !2634
  call void @llvm.dbg.value(metadata i8* null, metadata !2597, metadata !DIExpression()) #32, !dbg !2636
  call void @llvm.dbg.value(metadata i64 %0, metadata !2600, metadata !DIExpression()) #32, !dbg !2636
  call void @llvm.dbg.value(metadata i64 %1, metadata !2601, metadata !DIExpression()) #32, !dbg !2636
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2638
  call void @llvm.dbg.value(metadata i8* %3, metadata !2477, metadata !DIExpression()) #32, !dbg !2639
  %4 = icmp eq i8* %3, null, !dbg !2641
  br i1 %4, label %5, label %6, !dbg !2642

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2643
  unreachable, !dbg !2643

6:                                                ; preds = %2
  ret i8* %3, !dbg !2644
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2645 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2649, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i64* %1, metadata !2650, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %0, metadata !351, metadata !DIExpression()) #32, !dbg !2652
  call void @llvm.dbg.value(metadata i64* %1, metadata !352, metadata !DIExpression()) #32, !dbg !2652
  call void @llvm.dbg.value(metadata i64 1, metadata !353, metadata !DIExpression()) #32, !dbg !2652
  %3 = load i64, i64* %1, align 8, !dbg !2654, !tbaa !1750
  call void @llvm.dbg.value(metadata i64 %3, metadata !354, metadata !DIExpression()) #32, !dbg !2652
  %4 = icmp eq i8* %0, null, !dbg !2655
  br i1 %4, label %5, label %8, !dbg !2657

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2658
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2661
  br label %15, !dbg !2661

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2662
  %10 = add nuw i64 %9, 1, !dbg !2662
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !2662
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2662
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %13, metadata !354, metadata !DIExpression()) #32, !dbg !2652
  br i1 %12, label %14, label %15, !dbg !2665

14:                                               ; preds = %8
  tail call void @xalloc_die() #33, !dbg !2666
  unreachable, !dbg !2666

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2652
  call void @llvm.dbg.value(metadata i64 %16, metadata !354, metadata !DIExpression()) #32, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %0, metadata !2469, metadata !DIExpression()) #32, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %16, metadata !2472, metadata !DIExpression()) #32, !dbg !2667
  call void @llvm.dbg.value(metadata i64 1, metadata !2473, metadata !DIExpression()) #32, !dbg !2667
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !2669
  call void @llvm.dbg.value(metadata i8* %17, metadata !2477, metadata !DIExpression()) #32, !dbg !2670
  %18 = icmp eq i8* %17, null, !dbg !2672
  br i1 %18, label %19, label %20, !dbg !2673

19:                                               ; preds = %15
  tail call void @xalloc_die() #33, !dbg !2674
  unreachable, !dbg !2674

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !351, metadata !DIExpression()) #32, !dbg !2652
  store i64 %16, i64* %1, align 8, !dbg !2675, !tbaa !1750
  ret i8* %17, !dbg !2676
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !346 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !351, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64* %1, metadata !352, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64 %2, metadata !353, metadata !DIExpression()), !dbg !2677
  %4 = load i64, i64* %1, align 8, !dbg !2678, !tbaa !1750
  call void @llvm.dbg.value(metadata i64 %4, metadata !354, metadata !DIExpression()), !dbg !2677
  %5 = icmp eq i8* %0, null, !dbg !2679
  br i1 %5, label %6, label %13, !dbg !2680

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2681
  br i1 %7, label %8, label %20, !dbg !2682

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %9, metadata !354, metadata !DIExpression()), !dbg !2677
  %10 = icmp ugt i64 %2, 128, !dbg !2685
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2686
  call void @llvm.dbg.value(metadata i64 %12, metadata !354, metadata !DIExpression()), !dbg !2677
  br label %20, !dbg !2687

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2688
  %15 = add nuw i64 %14, 1, !dbg !2688
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2688
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2688
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %18, metadata !354, metadata !DIExpression()), !dbg !2677
  br i1 %17, label %19, label %20, !dbg !2689

19:                                               ; preds = %13
  tail call void @xalloc_die() #33, !dbg !2690
  unreachable, !dbg !2690

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2677
  call void @llvm.dbg.value(metadata i64 %21, metadata !354, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8* %0, metadata !2469, metadata !DIExpression()) #32, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %21, metadata !2472, metadata !DIExpression()) #32, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %2, metadata !2473, metadata !DIExpression()) #32, !dbg !2691
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !2693
  call void @llvm.dbg.value(metadata i8* %22, metadata !2477, metadata !DIExpression()) #32, !dbg !2694
  %23 = icmp eq i8* %22, null, !dbg !2696
  br i1 %23, label %24, label %25, !dbg !2697

24:                                               ; preds = %20
  tail call void @xalloc_die() #33, !dbg !2698
  unreachable, !dbg !2698

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !351, metadata !DIExpression()), !dbg !2677
  store i64 %21, i64* %1, align 8, !dbg !2699, !tbaa !1750
  ret i8* %22, !dbg !2700
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !358 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !366, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64* %1, metadata !367, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %2, metadata !368, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %3, metadata !369, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %4, metadata !370, metadata !DIExpression()), !dbg !2701
  %6 = load i64, i64* %1, align 8, !dbg !2702, !tbaa !1750
  call void @llvm.dbg.value(metadata i64 %6, metadata !371, metadata !DIExpression()), !dbg !2701
  %7 = ashr i64 %6, 1, !dbg !2703
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2703
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2703
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %10, metadata !372, metadata !DIExpression()), !dbg !2701
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %11, metadata !372, metadata !DIExpression()), !dbg !2701
  %12 = icmp sgt i64 %3, -1, !dbg !2706
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2708
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2708
  call void @llvm.dbg.value(metadata i64 %15, metadata !372, metadata !DIExpression()), !dbg !2701
  %16 = icmp slt i64 %4, 0, !dbg !2709
  br i1 %16, label %17, label %30, !dbg !2709

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2709
  br i1 %18, label %19, label %24, !dbg !2709

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2709
  %21 = udiv i64 9223372036854775807, %20, !dbg !2709
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2709
  br i1 %23, label %46, label %43, !dbg !2709

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2709
  br i1 %25, label %43, label %26, !dbg !2709

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2709
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2709
  %29 = icmp ult i64 %28, %15, !dbg !2709
  br i1 %29, label %46, label %43, !dbg !2709

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2709
  br i1 %31, label %43, label %32, !dbg !2709

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2709
  br i1 %33, label %34, label %40, !dbg !2709

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2709
  br i1 %35, label %43, label %36, !dbg !2709

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2709
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2709
  %39 = icmp ult i64 %38, %4, !dbg !2709
  br i1 %39, label %46, label %43, !dbg !2709

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2709
  %42 = icmp ult i64 %41, %15, !dbg !2709
  br i1 %42, label %46, label %43, !dbg !2709

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2701
  %44 = mul i64 %15, %4, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %44, metadata !373, metadata !DIExpression()), !dbg !2701
  %45 = icmp slt i64 %44, 128, !dbg !2709
  br i1 %45, label %46, label %52, !dbg !2709

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !374, metadata !DIExpression()), !dbg !2701
  %48 = sdiv i64 %47, %4, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %48, metadata !372, metadata !DIExpression()), !dbg !2701
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %51, metadata !373, metadata !DIExpression()), !dbg !2701
  br label %52, !dbg !2714

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2701
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2701
  call void @llvm.dbg.value(metadata i64 %54, metadata !373, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %53, metadata !372, metadata !DIExpression()), !dbg !2701
  %55 = icmp eq i8* %0, null, !dbg !2715
  br i1 %55, label %56, label %57, !dbg !2717

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2718, !tbaa !1750
  br label %57, !dbg !2719

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2720
  %59 = icmp slt i64 %58, %2, !dbg !2722
  br i1 %59, label %60, label %97, !dbg !2723

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2724
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2724
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %63, metadata !372, metadata !DIExpression()), !dbg !2701
  br i1 %62, label %96, label %64, !dbg !2725

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2726
  br i1 %66, label %96, label %67, !dbg !2726

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2727

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2727
  br i1 %69, label %70, label %75, !dbg !2727

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2727
  %72 = udiv i64 9223372036854775807, %71, !dbg !2727
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2727
  br i1 %74, label %96, label %94, !dbg !2727

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2727
  br i1 %76, label %94, label %77, !dbg !2727

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2727
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2727
  %80 = icmp ult i64 %79, %63, !dbg !2727
  br i1 %80, label %96, label %94, !dbg !2727

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2727
  br i1 %82, label %94, label %83, !dbg !2727

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2727
  br i1 %84, label %85, label %91, !dbg !2727

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2727
  br i1 %86, label %94, label %87, !dbg !2727

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2727
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2727
  %90 = icmp ult i64 %89, %4, !dbg !2727
  br i1 %90, label %96, label %94, !dbg !2727

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2727
  %93 = icmp ult i64 %92, %63, !dbg !2727
  br i1 %93, label %96, label %94, !dbg !2727

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2701
  %95 = mul i64 %63, %4, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %95, metadata !373, metadata !DIExpression()), !dbg !2701
  br label %97, !dbg !2728

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #33, !dbg !2729
  unreachable, !dbg !2729

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2701
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2701
  call void @llvm.dbg.value(metadata i64 %99, metadata !373, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %98, metadata !372, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %0, metadata !2548, metadata !DIExpression()) #32, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %99, metadata !2549, metadata !DIExpression()) #32, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %0, metadata !2551, metadata !DIExpression()) #32, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %99, metadata !2555, metadata !DIExpression()) #32, !dbg !2732
  %100 = icmp eq i64 %99, 0, !dbg !2734
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2734
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %102, metadata !2477, metadata !DIExpression()) #32, !dbg !2736
  %103 = icmp eq i8* %102, null, !dbg !2738
  br i1 %103, label %104, label %105, !dbg !2739

104:                                              ; preds = %97
  tail call void @xalloc_die() #33, !dbg !2740
  unreachable, !dbg !2740

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !366, metadata !DIExpression()), !dbg !2701
  store i64 %98, i64* %1, align 8, !dbg !2741, !tbaa !1750
  ret i8* %102, !dbg !2742
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2743 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2745, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 %0, metadata !2747, metadata !DIExpression()) #32, !dbg !2751
  call void @llvm.dbg.value(metadata i64 1, metadata !2750, metadata !DIExpression()) #32, !dbg !2751
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2753
  call void @llvm.dbg.value(metadata i8* %2, metadata !2477, metadata !DIExpression()) #32, !dbg !2754
  %3 = icmp eq i8* %2, null, !dbg !2756
  br i1 %3, label %4, label %5, !dbg !2757

4:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2758
  unreachable, !dbg !2758

5:                                                ; preds = %1
  ret i8* %2, !dbg !2759
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2748 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2747, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %1, metadata !2750, metadata !DIExpression()), !dbg !2760
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %3, metadata !2477, metadata !DIExpression()) #32, !dbg !2762
  %4 = icmp eq i8* %3, null, !dbg !2764
  br i1 %4, label %5, label %6, !dbg !2765

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2766
  unreachable, !dbg !2766

6:                                                ; preds = %2
  ret i8* %3, !dbg !2767
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2768 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %0, metadata !2772, metadata !DIExpression()) #32, !dbg !2776
  call void @llvm.dbg.value(metadata i64 1, metadata !2775, metadata !DIExpression()) #32, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %0, metadata !2778, metadata !DIExpression()) #32, !dbg !2782
  call void @llvm.dbg.value(metadata i64 1, metadata !2781, metadata !DIExpression()) #32, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %0, metadata !2778, metadata !DIExpression()) #32, !dbg !2782
  call void @llvm.dbg.value(metadata i64 1, metadata !2781, metadata !DIExpression()) #32, !dbg !2782
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2784
  call void @llvm.dbg.value(metadata i8* %2, metadata !2477, metadata !DIExpression()) #32, !dbg !2785
  %3 = icmp eq i8* %2, null, !dbg !2787
  br i1 %3, label %4, label %5, !dbg !2788

4:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2789
  unreachable, !dbg !2789

5:                                                ; preds = %1
  ret i8* %2, !dbg !2790
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2773 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2772, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %1, metadata !2775, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %0, metadata !2778, metadata !DIExpression()) #32, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %1, metadata !2781, metadata !DIExpression()) #32, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %0, metadata !2778, metadata !DIExpression()) #32, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %1, metadata !2781, metadata !DIExpression()) #32, !dbg !2792
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %3, metadata !2477, metadata !DIExpression()) #32, !dbg !2795
  %4 = icmp eq i8* %3, null, !dbg !2797
  br i1 %4, label %5, label %6, !dbg !2798

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2799
  unreachable, !dbg !2799

6:                                                ; preds = %2
  ret i8* %3, !dbg !2800
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2801 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2805, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %1, metadata !2806, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %1, metadata !2501, metadata !DIExpression()) #32, !dbg !2808
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %3, metadata !2477, metadata !DIExpression()) #32, !dbg !2811
  %4 = icmp eq i8* %3, null, !dbg !2813
  br i1 %4, label %5, label %6, !dbg !2814

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2815
  unreachable, !dbg !2815

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2816, metadata !DIExpression()) #32, !dbg !2824
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #32, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %1, metadata !2823, metadata !DIExpression()) #32, !dbg !2824
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2826
  ret i8* %3, !dbg !2827
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %1, metadata !2833, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %1, metadata !2514, metadata !DIExpression()) #32, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %1, metadata !2516, metadata !DIExpression()) #32, !dbg !2837
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %3, metadata !2477, metadata !DIExpression()) #32, !dbg !2840
  %4 = icmp eq i8* %3, null, !dbg !2842
  br i1 %4, label %5, label %6, !dbg !2843

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2844
  unreachable, !dbg !2844

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2816, metadata !DIExpression()) #32, !dbg !2845
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #32, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %1, metadata !2823, metadata !DIExpression()) #32, !dbg !2845
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2847
  ret i8* %3, !dbg !2848
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2849 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2853, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %1, metadata !2854, metadata !DIExpression()), !dbg !2856
  %3 = add nsw i64 %1, 1, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %3, metadata !2514, metadata !DIExpression()) #32, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %3, metadata !2516, metadata !DIExpression()) #32, !dbg !2860
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %4, metadata !2477, metadata !DIExpression()) #32, !dbg !2863
  %5 = icmp eq i8* %4, null, !dbg !2865
  br i1 %5, label %6, label %7, !dbg !2866

6:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2867
  unreachable, !dbg !2867

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !2855, metadata !DIExpression()), !dbg !2856
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2868
  store i8 0, i8* %8, align 1, !dbg !2869, !tbaa !440
  call void @llvm.dbg.value(metadata i8* %4, metadata !2816, metadata !DIExpression()) #32, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #32, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1, metadata !2823, metadata !DIExpression()) #32, !dbg !2870
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2872
  ret i8* %4, !dbg !2873
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !2874 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2876, metadata !DIExpression()), !dbg !2877
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !2878
  %3 = add i64 %2, 1, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %0, metadata !2805, metadata !DIExpression()) #32, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %3, metadata !2806, metadata !DIExpression()) #32, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %3, metadata !2501, metadata !DIExpression()) #32, !dbg !2882
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %4, metadata !2477, metadata !DIExpression()) #32, !dbg !2885
  %5 = icmp eq i8* %4, null, !dbg !2887
  br i1 %5, label %6, label %7, !dbg !2888

6:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2889
  unreachable, !dbg !2889

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2816, metadata !DIExpression()) #32, !dbg !2890
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #32, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %3, metadata !2823, metadata !DIExpression()) #32, !dbg !2890
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !2892
  ret i8* %4, !dbg !2893
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2894 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2899, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %1, metadata !2896, metadata !DIExpression()), !dbg !2900
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.103, i64 0, i64 0), i32 noundef 5) #32, !dbg !2899
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* noundef %2) #32, !dbg !2899
  %3 = icmp eq i32 %1, 0, !dbg !2899
  tail call void @llvm.assume(i1 %3), !dbg !2899
  tail call void @abort() #33, !dbg !2901
  unreachable, !dbg !2901
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !2902 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2940, metadata !DIExpression()), !dbg !2945
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !2946
  call void @llvm.dbg.value(metadata i1 undef, metadata !2941, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2945
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2947, metadata !DIExpression()), !dbg !2950
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2952
  %4 = load i32, i32* %3, align 8, !dbg !2952, !tbaa !2953
  %5 = and i32 %4, 32, !dbg !2954
  %6 = icmp eq i32 %5, 0, !dbg !2954
  call void @llvm.dbg.value(metadata i1 %6, metadata !2943, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2945
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !2955
  %8 = icmp eq i32 %7, 0, !dbg !2956
  call void @llvm.dbg.value(metadata i1 %8, metadata !2944, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2945
  br i1 %6, label %9, label %19, !dbg !2957

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2959
  call void @llvm.dbg.value(metadata i1 %10, metadata !2941, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2945
  %11 = select i1 %8, i1 true, i1 %10, !dbg !2960
  %12 = xor i1 %8, true, !dbg !2960
  %13 = sext i1 %12 to i32, !dbg !2960
  br i1 %11, label %22, label %14, !dbg !2960

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !2961
  %16 = load i32, i32* %15, align 4, !dbg !2961, !tbaa !431
  %17 = icmp ne i32 %16, 9, !dbg !2962
  %18 = sext i1 %17 to i32, !dbg !2963
  br label %22, !dbg !2963

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2964

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !2966
  store i32 0, i32* %21, align 4, !dbg !2968, !tbaa !431
  br label %22, !dbg !2966

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2945
  ret i32 %23, !dbg !2969
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !2970 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3008, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 0, metadata !3009, metadata !DIExpression()), !dbg !3012
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3013
  call void @llvm.dbg.value(metadata i32 %2, metadata !3010, metadata !DIExpression()), !dbg !3012
  %3 = icmp slt i32 %2, 0, !dbg !3014
  br i1 %3, label %4, label %6, !dbg !3016

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3017
  br label %24, !dbg !3018

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3019
  %8 = icmp eq i32 %7, 0, !dbg !3019
  br i1 %8, label %13, label %9, !dbg !3021

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3022
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3023
  %12 = icmp eq i64 %11, -1, !dbg !3024
  br i1 %12, label %16, label %13, !dbg !3025

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3026
  %15 = icmp eq i32 %14, 0, !dbg !3026
  br i1 %15, label %16, label %18, !dbg !3027

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3009, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 0, metadata !3011, metadata !DIExpression()), !dbg !3012
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %21, metadata !3011, metadata !DIExpression()), !dbg !3012
  br label %24, !dbg !3029

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3030
  %20 = load i32, i32* %19, align 4, !dbg !3030, !tbaa !431
  call void @llvm.dbg.value(metadata i32 %20, metadata !3009, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 0, metadata !3011, metadata !DIExpression()), !dbg !3012
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %21, metadata !3011, metadata !DIExpression()), !dbg !3012
  %22 = icmp eq i32 %20, 0, !dbg !3031
  br i1 %22, label %24, label %23, !dbg !3029

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3033, !tbaa !431
  call void @llvm.dbg.value(metadata i32 -1, metadata !3011, metadata !DIExpression()), !dbg !3012
  br label %24, !dbg !3035

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3012
  ret i32 %25, !dbg !3036
}

; Function Attrs: nofree nounwind
declare !dbg !3037 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !3038 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3039 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3043 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3081, metadata !DIExpression()), !dbg !3082
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3083
  br i1 %2, label %6, label %3, !dbg !3085

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3086
  %5 = icmp eq i32 %4, 0, !dbg !3086
  br i1 %5, label %6, label %8, !dbg !3087

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3088
  br label %17, !dbg !3089

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3090, metadata !DIExpression()) #32, !dbg !3095
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3097
  %10 = load i32, i32* %9, align 8, !dbg !3097, !tbaa !2953
  %11 = and i32 %10, 256, !dbg !3099
  %12 = icmp eq i32 %11, 0, !dbg !3099
  br i1 %12, label %15, label %13, !dbg !3100

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3101
  br label %15, !dbg !3101

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3102
  br label %17, !dbg !3103

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3082
  ret i32 %18, !dbg !3104
}

; Function Attrs: nofree nounwind
declare !dbg !3105 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3106 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3145, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 %2, metadata !3147, metadata !DIExpression()), !dbg !3151
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3152
  %5 = load i8*, i8** %4, align 8, !dbg !3152, !tbaa !3153
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3154
  %7 = load i8*, i8** %6, align 8, !dbg !3154, !tbaa !3155
  %8 = icmp eq i8* %5, %7, !dbg !3156
  br i1 %8, label %9, label %28, !dbg !3157

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3158
  %11 = load i8*, i8** %10, align 8, !dbg !3158, !tbaa !845
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3159
  %13 = load i8*, i8** %12, align 8, !dbg !3159, !tbaa !3160
  %14 = icmp eq i8* %11, %13, !dbg !3161
  br i1 %14, label %15, label %28, !dbg !3162

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3163
  %17 = load i8*, i8** %16, align 8, !dbg !3163, !tbaa !3164
  %18 = icmp eq i8* %17, null, !dbg !3165
  br i1 %18, label %19, label %28, !dbg !3166

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3167
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %21, metadata !3148, metadata !DIExpression()), !dbg !3169
  %22 = icmp eq i64 %21, -1, !dbg !3170
  br i1 %22, label %30, label %23, !dbg !3172

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3173
  %25 = load i32, i32* %24, align 8, !dbg !3174, !tbaa !2953
  %26 = and i32 %25, -17, !dbg !3174
  store i32 %26, i32* %24, align 8, !dbg !3174, !tbaa !2953
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3175
  store i64 %21, i64* %27, align 8, !dbg !3176, !tbaa !3177
  br label %30, !dbg !3178

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3179
  br label %30, !dbg !3180

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3151
  ret i32 %31, !dbg !3181
}

; Function Attrs: nofree nounwind
declare !dbg !3182 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3185 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3190, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %1, metadata !3191, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %2, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3193, metadata !DIExpression()), !dbg !3195
  %5 = icmp eq i8* %1, null, !dbg !3196
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3198
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i64 0, i64 0), i8* %1, !dbg !3198
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %8, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %7, metadata !3191, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i32* %6, metadata !3190, metadata !DIExpression()), !dbg !3195
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3199
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3201
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3193, metadata !DIExpression()), !dbg !3195
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3202
  call void @llvm.dbg.value(metadata i64 %11, metadata !3194, metadata !DIExpression()), !dbg !3195
  %12 = icmp ult i64 %11, -3, !dbg !3203
  br i1 %12, label %13, label %18, !dbg !3205

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !3206
  %15 = icmp eq i32 %14, 0, !dbg !3206
  br i1 %15, label %16, label %30, !dbg !3207

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3208, metadata !DIExpression()) #32, !dbg !3213
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3215, metadata !DIExpression()) #32, !dbg !3220
  call void @llvm.dbg.value(metadata i32 0, metadata !3218, metadata !DIExpression()) #32, !dbg !3220
  call void @llvm.dbg.value(metadata i64 8, metadata !3219, metadata !DIExpression()) #32, !dbg !3220
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3222
  store i64 0, i64* %17, align 1, !dbg !3222
  br label %30, !dbg !3223

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3224
  br i1 %19, label %20, label %21, !dbg !3226

20:                                               ; preds = %18
  tail call void @abort() #33, !dbg !3227
  unreachable, !dbg !3227

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3228

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3230
  br i1 %24, label %30, label %25, !dbg !3231

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3232
  br i1 %26, label %30, label %27, !dbg !3235

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3236, !tbaa !440
  %29 = zext i8 %28 to i32, !dbg !3237
  store i32 %29, i32* %6, align 4, !dbg !3238, !tbaa !431
  br label %30, !dbg !3239

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3195
  ret i64 %31, !dbg !3240
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3241 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3247 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3249, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %1, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %2, metadata !3251, metadata !DIExpression()), !dbg !3253
  %4 = icmp eq i64 %2, 0, !dbg !3254
  br i1 %4, label %8, label %5, !dbg !3254

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3254
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3254
  br i1 %7, label %13, label %8, !dbg !3254

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3252, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3253
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3252, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3253
  %9 = mul i64 %2, %1, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %9, metadata !3252, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %0, metadata !3256, metadata !DIExpression()) #32, !dbg !3260
  call void @llvm.dbg.value(metadata i64 %9, metadata !3259, metadata !DIExpression()) #32, !dbg !3260
  %10 = icmp eq i64 %9, 0, !dbg !3262
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3262
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3263
  br label %15, !dbg !3264

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3252, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3253
  %14 = tail call i32* @__errno_location() #35, !dbg !3265
  store i32 12, i32* %14, align 4, !dbg !3267, !tbaa !431
  br label %15, !dbg !3268

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3253
  ret i8* %16, !dbg !3269
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3270 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3274, metadata !DIExpression()), !dbg !3279
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3280
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3280
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3275, metadata !DIExpression()), !dbg !3281
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3282
  %5 = icmp eq i32 %4, 0, !dbg !3282
  br i1 %5, label %6, label %13, !dbg !3284

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3285, metadata !DIExpression()) #32, !dbg !3289
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0), metadata !3288, metadata !DIExpression()) #32, !dbg !3289
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0), i64 2), !dbg !3292
  %8 = icmp eq i32 %7, 0, !dbg !3293
  br i1 %8, label %12, label %9, !dbg !3294

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3285, metadata !DIExpression()) #32, !dbg !3295
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0), metadata !3288, metadata !DIExpression()) #32, !dbg !3295
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0), i64 6), !dbg !3297
  %11 = icmp eq i32 %10, 0, !dbg !3298
  br i1 %11, label %12, label %13, !dbg !3299

12:                                               ; preds = %9, %6
  br label %13, !dbg !3300

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3301
  ret i1 %14, !dbg !3301
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3302 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %1, metadata !3307, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i64 %2, metadata !3308, metadata !DIExpression()), !dbg !3309
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3310
  ret i32 %4, !dbg !3311
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3312 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3316, metadata !DIExpression()), !dbg !3317
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3318
  ret i8* %2, !dbg !3319
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3322, metadata !DIExpression()), !dbg !3324
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3325
  call void @llvm.dbg.value(metadata i8* %2, metadata !3323, metadata !DIExpression()), !dbg !3324
  ret i8* %2, !dbg !3326
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3329, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i8* %1, metadata !3330, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %2, metadata !3331, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %0, metadata !3322, metadata !DIExpression()) #32, !dbg !3337
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %4, metadata !3323, metadata !DIExpression()) #32, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %4, metadata !3332, metadata !DIExpression()), !dbg !3336
  %5 = icmp eq i8* %4, null, !dbg !3340
  br i1 %5, label %6, label %9, !dbg !3341

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3342
  br i1 %7, label %19, label %8, !dbg !3345

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3346, !tbaa !440
  br label %19, !dbg !3347

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !3348
  call void @llvm.dbg.value(metadata i64 %10, metadata !3333, metadata !DIExpression()), !dbg !3349
  %11 = icmp ult i64 %10, %2, !dbg !3350
  br i1 %11, label %12, label %14, !dbg !3352

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %1, metadata !3355, metadata !DIExpression()) #32, !dbg !3360
  call void @llvm.dbg.value(metadata i8* %4, metadata !3358, metadata !DIExpression()) #32, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %13, metadata !3359, metadata !DIExpression()) #32, !dbg !3360
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3362
  br label %19, !dbg !3363

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3364
  br i1 %15, label %19, label %16, !dbg !3367

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3368
  call void @llvm.dbg.value(metadata i8* %1, metadata !3355, metadata !DIExpression()) #32, !dbg !3370
  call void @llvm.dbg.value(metadata i8* %4, metadata !3358, metadata !DIExpression()) #32, !dbg !3370
  call void @llvm.dbg.value(metadata i64 %17, metadata !3359, metadata !DIExpression()) #32, !dbg !3370
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3372
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3373
  store i8 0, i8* %18, align 1, !dbg !3374, !tbaa !440
  br label %19, !dbg !3375

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3376
  ret i32 %20, !dbg !3377
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind readonly willreturn }
attributes #35 = { nounwind readnone willreturn }
attributes #36 = { noreturn }
attributes #37 = { cold }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!9, !121, !126, !133, !313, !333, !174, !184, !216, !335, !305, !342, !376, !378, !380, !382, !384, !319, !386, !389, !391, !393}
!llvm.ident = !{!395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395, !395}
!llvm.module.flags = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !38)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !28, globals: !37, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/true.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ce7e4fa94fdaa872b3d469aaea1081c9")
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
!28 = !{!29, !30, !31, !32, !33, !6, !36}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !{!0}
!38 = !{!39, !40, !41, !44, !46, !47, !48, !52, !53, !54, !55, !57, !113, !114, !115, !117, !118}
!39 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!40 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!41 = !DILocalVariable(name: "term", scope: !42, file: !3, line: 585, type: !6)
!42 = distinct !DILexicalBlock(scope: !43, file: !3, line: 582, column: 5)
!43 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!44 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !45)
!45 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!46 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!47 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!48 = !DILocalVariable(name: "s", scope: !49, file: !3, line: 608, type: !6)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 605, column: 5)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 604, column: 12)
!51 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!52 = !DILocalVariable(name: "spaces", scope: !49, file: !3, line: 609, type: !33)
!53 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !33)
!54 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!55 = !DILocalVariable(name: "__ptr", scope: !56, file: !3, line: 644, type: !6)
!56 = distinct !DILexicalBlock(scope: !2, file: !3, line: 644, column: 3)
!57 = !DILocalVariable(name: "__stream", scope: !56, file: !3, line: 644, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !61)
!60 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !63)
!62 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !79, !81, !82, !83, !87, !88, !90, !94, !97, !99, !102, !105, !106, !107, !108, !109}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !61, file: !62, line: 51, baseType: !31, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !61, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !61, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !61, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !61, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !61, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !61, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !61, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !61, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !61, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !61, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !61, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !61, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !62, line: 36, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !61, file: !62, line: 70, baseType: !80, size: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !61, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !61, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !61, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !85, line: 152, baseType: !86)
!85 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!86 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !61, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !61, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!89 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !61, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 1)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !61, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !62, line: 43, baseType: null)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !61, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !85, line: 153, baseType: !86)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !61, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !62, line: 37, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !61, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !62, line: 38, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !61, file: !62, line: 93, baseType: !80, size: 64, offset: 1344)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !61, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !61, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !61, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !61, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 20)
!113 = !DILocalVariable(name: "__cnt", scope: !56, file: !3, line: 644, type: !33)
!114 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!115 = !DILocalVariable(name: "__ptr", scope: !116, file: !3, line: 686, type: !6)
!116 = distinct !DILexicalBlock(scope: !2, file: !3, line: 686, column: 3)
!117 = !DILocalVariable(name: "__stream", scope: !116, file: !3, line: 686, type: !58)
!118 = !DILocalVariable(name: "__cnt", scope: !116, file: !3, line: 686, type: !33)
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
!130 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !126, file: !127, line: 55, type: !45, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !133, file: !134, line: 66, type: !169, isLocal: false, isDefinition: true)
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !135, globals: !136, splitDebugInlining: false, nameTableKind: None)
!134 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!135 = !{!30, !36}
!136 = !{!137, !163, !131, !165, !167}
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "old_file_name", scope: !139, file: !134, line: 304, type: !6, isLocal: true, isDefinition: true)
!139 = distinct !DISubprogram(name: "verror_at_line", scope: !134, file: !134, line: 298, type: !140, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !156)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !31, !31, !6, !14, !6, !142}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 52, baseType: !144)
!143 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !145, line: 32, baseType: !146)
!145 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !147, baseType: !148)
!147 = !DIFile(filename: "lib/error.c", directory: "/src")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !149, size: 256, elements: !150)
!149 = !DINamespace(name: "std", scope: null)
!150 = !{!151, !152, !153, !154, !155}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !148, file: !147, baseType: !30, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !148, file: !147, baseType: !30, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !148, file: !147, baseType: !30, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !148, file: !147, baseType: !31, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !148, file: !147, baseType: !31, size: 32, offset: 224)
!156 = !{!157, !158, !159, !160, !161, !162}
!157 = !DILocalVariable(name: "status", arg: 1, scope: !139, file: !134, line: 298, type: !31)
!158 = !DILocalVariable(name: "errnum", arg: 2, scope: !139, file: !134, line: 298, type: !31)
!159 = !DILocalVariable(name: "file_name", arg: 3, scope: !139, file: !134, line: 298, type: !6)
!160 = !DILocalVariable(name: "line_number", arg: 4, scope: !139, file: !134, line: 298, type: !14)
!161 = !DILocalVariable(name: "message", arg: 5, scope: !139, file: !134, line: 298, type: !6)
!162 = !DILocalVariable(name: "args", arg: 6, scope: !139, file: !134, line: 298, type: !142)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "old_line_number", scope: !139, file: !134, line: 305, type: !14, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "error_message_count", scope: !133, file: !134, line: 69, type: !14, isLocal: false, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !133, file: !134, line: 295, type: !31, isLocal: false, isDefinition: true)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "program_name", scope: !174, file: !175, line: 31, type: !6, isLocal: false, isDefinition: true)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !176, globals: !177, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!176 = !{!29}
!177 = !{!172}
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "utf07FF", scope: !180, file: !181, line: 46, type: !211, isLocal: true, isDefinition: true)
!180 = distinct !DISubprogram(name: "proper_name_lite", scope: !181, file: !181, line: 38, type: !182, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !186)
!181 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!182 = !DISubroutineType(types: !183)
!183 = !{!6, !6, !6}
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !185, splitDebugInlining: false, nameTableKind: None)
!185 = !{!178}
!186 = !{!187, !188, !189, !190, !195}
!187 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !180, file: !181, line: 38, type: !6)
!188 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !180, file: !181, line: 38, type: !6)
!189 = !DILocalVariable(name: "translation", scope: !180, file: !181, line: 40, type: !6)
!190 = !DILocalVariable(name: "w", scope: !180, file: !181, line: 47, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !192, line: 37, baseType: !193)
!192 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !85, line: 57, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !85, line: 42, baseType: !14)
!195 = !DILocalVariable(name: "mbs", scope: !180, file: !181, line: 48, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !197, line: 6, baseType: !198)
!197 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !199, line: 21, baseType: !200)
!199 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 13, size: 64, elements: !201)
!201 = !{!202, !203}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !200, file: !199, line: 15, baseType: !31, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !200, file: !199, line: 20, baseType: !204, size: 32, offset: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !199, line: 16, size: 32, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !204, file: !199, line: 18, baseType: !14, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !204, file: !199, line: 19, baseType: !208, size: 32)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 4)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 2)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !216, file: !217, line: 76, type: !299, isLocal: false, isDefinition: true)
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !218, retainedTypes: !238, globals: !239, splitDebugInlining: false, nameTableKind: None)
!217 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!218 = !{!219, !233, !12}
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !220, line: 42, baseType: !14, size: 32, elements: !221)
!220 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!222 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!223 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!224 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!225 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!226 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!227 = !DIEnumerator(name: "c_quoting_style", value: 5)
!228 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!229 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!230 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!231 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!232 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !220, line: 254, baseType: !14, size: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!236 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!237 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!238 = !{!31, !32, !33}
!239 = !{!214, !240, !246, !258, !260, !265, !288, !295, !297}
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !216, file: !217, line: 92, type: !242, isLocal: false, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 320, elements: !244)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!244 = !{!245}
!245 = !DISubrange(count: 10)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !216, file: !217, line: 1040, type: !248, isLocal: false, isDefinition: true)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !217, line: 56, size: 448, elements: !249)
!249 = !{!250, !251, !252, !256, !257}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !248, file: !217, line: 59, baseType: !219, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !217, line: 62, baseType: !31, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !248, file: !217, line: 66, baseType: !253, size: 256, offset: 64)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 8)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !248, file: !217, line: 69, baseType: !6, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !248, file: !217, line: 72, baseType: !6, size: 64, offset: 384)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !216, file: !217, line: 107, type: !248, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "slot0", scope: !216, file: !217, line: 831, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 256)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "quote", scope: !267, file: !217, line: 228, type: !286, isLocal: true, isDefinition: true)
!267 = distinct !DISubprogram(name: "gettext_quote", scope: !217, file: !217, line: 197, type: !268, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !270)
!268 = !DISubroutineType(types: !269)
!269 = !{!6, !6, !219}
!270 = !{!271, !272, !273, !274, !275}
!271 = !DILocalVariable(name: "msgid", arg: 1, scope: !267, file: !217, line: 197, type: !6)
!272 = !DILocalVariable(name: "s", arg: 2, scope: !267, file: !217, line: 197, type: !219)
!273 = !DILocalVariable(name: "translation", scope: !267, file: !217, line: 199, type: !6)
!274 = !DILocalVariable(name: "w", scope: !267, file: !217, line: 229, type: !191)
!275 = !DILocalVariable(name: "mbs", scope: !267, file: !217, line: 230, type: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !197, line: 6, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !199, line: 21, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 13, size: 64, elements: !279)
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !278, file: !199, line: 15, baseType: !31, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !278, file: !199, line: 20, baseType: !282, size: 32, offset: 32)
!282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !199, line: 16, size: 32, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !282, file: !199, line: 18, baseType: !14, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !282, file: !199, line: 19, baseType: !208, size: 32)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !287)
!287 = !{!213, !210}
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "slotvec", scope: !216, file: !217, line: 834, type: !290, isLocal: true, isDefinition: true)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !217, line: 823, size: 128, elements: !292)
!292 = !{!293, !294}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !291, file: !217, line: 825, baseType: !33, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !291, file: !217, line: 826, baseType: !29, size: 64, offset: 64)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "nslots", scope: !216, file: !217, line: 832, type: !31, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "slotvec0", scope: !216, file: !217, line: 833, type: !291, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 704, elements: !301)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!301 = !{!302}
!302 = !DISubrange(count: 11)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !305, file: !306, line: 26, type: !308, isLocal: false, isDefinition: true)
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !307, splitDebugInlining: false, nameTableKind: None)
!306 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!307 = !{!303}
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 47)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "exit_failure", scope: !313, file: !314, line: 24, type: !316, isLocal: false, isDefinition: true)
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !315, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!315 = !{!311}
!316 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "internal_state", scope: !319, file: !320, line: 97, type: !323, isLocal: true, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !321, globals: !322, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!321 = !{!30, !33, !36}
!322 = !{!317}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !197, line: 6, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !199, line: 21, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 13, size: 64, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !325, file: !199, line: 15, baseType: !31, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !325, file: !199, line: 20, baseType: !329, size: 32, offset: 32)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !199, line: 16, size: 32, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !329, file: !199, line: 18, baseType: !14, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !329, file: !199, line: 19, baseType: !208, size: 32)
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!334 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!335 = distinct !DICompileUnit(language: DW_LANG_C99, file: !336, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !337, retainedTypes: !341, splitDebugInlining: false, nameTableKind: None)
!336 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!337 = !{!338}
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !336, line: 40, baseType: !14, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!341 = !{!30}
!342 = distinct !DICompileUnit(language: DW_LANG_C99, file: !343, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !344, retainedTypes: !375, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!344 = !{!345, !357}
!345 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !346, file: !343, line: 188, baseType: !14, size: 32, elements: !355)
!346 = distinct !DISubprogram(name: "x2nrealloc", scope: !343, file: !343, line: 176, type: !347, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !350)
!347 = !DISubroutineType(types: !348)
!348 = !{!30, !30, !349, !33}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!350 = !{!351, !352, !353, !354}
!351 = !DILocalVariable(name: "p", arg: 1, scope: !346, file: !343, line: 176, type: !30)
!352 = !DILocalVariable(name: "pn", arg: 2, scope: !346, file: !343, line: 176, type: !349)
!353 = !DILocalVariable(name: "s", arg: 3, scope: !346, file: !343, line: 176, type: !33)
!354 = !DILocalVariable(name: "n", scope: !346, file: !343, line: 178, type: !33)
!355 = !{!356}
!356 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!357 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !358, file: !343, line: 228, baseType: !14, size: 32, elements: !355)
!358 = distinct !DISubprogram(name: "xpalloc", scope: !343, file: !343, line: 223, type: !359, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !365)
!359 = !DISubroutineType(types: !360)
!360 = !{!30, !30, !361, !362, !364, !362}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !363, line: 130, baseType: !364)
!363 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !34, line: 35, baseType: !86)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374}
!366 = !DILocalVariable(name: "pa", arg: 1, scope: !358, file: !343, line: 223, type: !30)
!367 = !DILocalVariable(name: "pn", arg: 2, scope: !358, file: !343, line: 223, type: !361)
!368 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !358, file: !343, line: 223, type: !362)
!369 = !DILocalVariable(name: "n_max", arg: 4, scope: !358, file: !343, line: 223, type: !364)
!370 = !DILocalVariable(name: "s", arg: 5, scope: !358, file: !343, line: 223, type: !362)
!371 = !DILocalVariable(name: "n0", scope: !358, file: !343, line: 230, type: !362)
!372 = !DILocalVariable(name: "n", scope: !358, file: !343, line: 237, type: !362)
!373 = !DILocalVariable(name: "nbytes", scope: !358, file: !343, line: 248, type: !362)
!374 = !DILocalVariable(name: "adjusted_nbytes", scope: !358, file: !343, line: 252, type: !362)
!375 = !{!29, !30, !45, !86, !35}
!376 = distinct !DICompileUnit(language: DW_LANG_C99, file: !377, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!378 = distinct !DICompileUnit(language: DW_LANG_C99, file: !379, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!379 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !341, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!384 = distinct !DICompileUnit(language: DW_LANG_C99, file: !385, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !341, splitDebugInlining: false, nameTableKind: None)
!385 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!386 = distinct !DICompileUnit(language: DW_LANG_C99, file: !387, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !388, splitDebugInlining: false, nameTableKind: None)
!387 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!388 = !{!45, !35, !30}
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!392 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!393 = distinct !DICompileUnit(language: DW_LANG_C99, file: !394, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !341, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!395 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!396 = !{i32 7, !"Dwarf Version", i32 5}
!397 = !{i32 2, !"Debug Info Version", i32 3}
!398 = !{i32 1, !"wchar_size", i32 4}
!399 = !{i32 1, !"branch-target-enforcement", i32 0}
!400 = !{i32 1, !"sign-return-address", i32 0}
!401 = !{i32 1, !"sign-return-address-all", i32 0}
!402 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!403 = !{i32 7, !"PIC Level", i32 2}
!404 = !{i32 7, !"PIE Level", i32 2}
!405 = !{i32 7, !"uwtable", i32 1}
!406 = !{i32 7, !"frame-pointer", i32 1}
!407 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 36, type: !408, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !31}
!410 = !{!411}
!411 = !DILocalVariable(name: "status", arg: 1, scope: !407, file: !10, line: 36, type: !31)
!412 = !DILocation(line: 0, scope: !407)
!413 = !DILocation(line: 38, column: 3, scope: !407)
!414 = !{!415, !415, i64 0}
!415 = !{!"any pointer", !416, i64 0}
!416 = !{!"omnipotent char", !417, i64 0}
!417 = !{!"Simple C/C++ TBAA"}
!418 = !DILocation(line: 43, column: 3, scope: !407)
!419 = !DILocation(line: 47, column: 3, scope: !407)
!420 = !DILocation(line: 48, column: 3, scope: !407)
!421 = !DILocation(line: 49, column: 3, scope: !407)
!422 = !DILocation(line: 50, column: 3, scope: !407)
!423 = !DILocation(line: 51, column: 3, scope: !407)
!424 = !DISubprogram(name: "dcgettext", scope: !425, file: !425, line: 51, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!425 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!426 = !DISubroutineType(types: !427)
!427 = !{!29, !6, !6, !31}
!428 = !{}
!429 = !DILocation(line: 0, scope: !2)
!430 = !DILocation(line: 581, column: 7, scope: !43)
!431 = !{!432, !432, i64 0}
!432 = !{!"int", !416, i64 0}
!433 = !DILocation(line: 581, column: 19, scope: !43)
!434 = !DILocation(line: 581, column: 7, scope: !2)
!435 = !DILocation(line: 585, column: 26, scope: !42)
!436 = !DILocation(line: 0, scope: !42)
!437 = !DILocation(line: 586, column: 23, scope: !42)
!438 = !DILocation(line: 586, column: 28, scope: !42)
!439 = !DILocation(line: 586, column: 32, scope: !42)
!440 = !{!416, !416, i64 0}
!441 = !DILocation(line: 586, column: 38, scope: !42)
!442 = !DILocalVariable(name: "__s1", arg: 1, scope: !443, file: !444, line: 1359, type: !6)
!443 = distinct !DISubprogram(name: "streq", scope: !444, file: !444, line: 1359, type: !445, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !447)
!444 = !DIFile(filename: "./lib/string.h", directory: "/src")
!445 = !DISubroutineType(types: !446)
!446 = !{!45, !6, !6}
!447 = !{!442, !448}
!448 = !DILocalVariable(name: "__s2", arg: 2, scope: !443, file: !444, line: 1359, type: !6)
!449 = !DILocation(line: 0, scope: !443, inlinedAt: !450)
!450 = distinct !DILocation(line: 586, column: 41, scope: !42)
!451 = !DILocation(line: 1361, column: 11, scope: !443, inlinedAt: !450)
!452 = !DILocation(line: 1361, column: 10, scope: !443, inlinedAt: !450)
!453 = !DILocation(line: 586, column: 19, scope: !42)
!454 = !DILocation(line: 587, column: 5, scope: !42)
!455 = !DILocation(line: 588, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!457 = !DILocation(line: 588, column: 7, scope: !2)
!458 = !DILocation(line: 590, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !3, line: 589, column: 5)
!460 = !DILocation(line: 591, column: 7, scope: !459)
!461 = !DILocation(line: 595, column: 37, scope: !2)
!462 = !DILocation(line: 595, column: 35, scope: !2)
!463 = !DILocation(line: 596, column: 29, scope: !2)
!464 = !DILocation(line: 597, column: 8, scope: !51)
!465 = !DILocation(line: 597, column: 7, scope: !2)
!466 = !DILocation(line: 604, column: 24, scope: !50)
!467 = !DILocation(line: 604, column: 12, scope: !51)
!468 = !DILocation(line: 0, scope: !49)
!469 = !DILocation(line: 610, column: 16, scope: !49)
!470 = !DILocation(line: 610, column: 7, scope: !49)
!471 = !DILocation(line: 611, column: 21, scope: !49)
!472 = !{!473, !473, i64 0}
!473 = !{!"short", !416, i64 0}
!474 = !DILocation(line: 611, column: 19, scope: !49)
!475 = !DILocation(line: 611, column: 16, scope: !49)
!476 = !DILocation(line: 610, column: 30, scope: !49)
!477 = distinct !{!477, !470, !471, !478}
!478 = !{!"llvm.loop.mustprogress"}
!479 = !DILocation(line: 612, column: 18, scope: !480)
!480 = distinct !DILexicalBlock(scope: !49, file: !3, line: 612, column: 11)
!481 = !DILocation(line: 612, column: 11, scope: !49)
!482 = !DILocation(line: 620, column: 23, scope: !2)
!483 = !DILocation(line: 625, column: 39, scope: !2)
!484 = !DILocation(line: 626, column: 3, scope: !2)
!485 = !DILocation(line: 626, column: 10, scope: !2)
!486 = !DILocation(line: 626, column: 21, scope: !2)
!487 = !DILocation(line: 628, column: 44, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 628, column: 11)
!489 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!490 = !DILocation(line: 628, column: 32, scope: !488)
!491 = !DILocation(line: 628, column: 49, scope: !488)
!492 = !DILocation(line: 628, column: 11, scope: !489)
!493 = !DILocation(line: 630, column: 11, scope: !494)
!494 = distinct !DILexicalBlock(scope: !489, file: !3, line: 630, column: 11)
!495 = !DILocation(line: 630, column: 11, scope: !489)
!496 = !DILocation(line: 632, column: 26, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 632, column: 15)
!498 = distinct !DILexicalBlock(scope: !494, file: !3, line: 631, column: 9)
!499 = !DILocation(line: 632, column: 34, scope: !497)
!500 = !DILocation(line: 632, column: 37, scope: !497)
!501 = !DILocation(line: 632, column: 15, scope: !498)
!502 = !DILocation(line: 636, column: 29, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !3, line: 636, column: 15)
!504 = !DILocation(line: 640, column: 16, scope: !489)
!505 = distinct !{!505, !484, !506, !478}
!506 = !DILocation(line: 641, column: 5, scope: !2)
!507 = !DILocation(line: 644, column: 3, scope: !2)
!508 = !DILocation(line: 0, scope: !443, inlinedAt: !509)
!509 = distinct !DILocation(line: 648, column: 31, scope: !2)
!510 = !DILocation(line: 0, scope: !443, inlinedAt: !511)
!511 = distinct !DILocation(line: 649, column: 31, scope: !2)
!512 = !DILocation(line: 0, scope: !443, inlinedAt: !513)
!513 = distinct !DILocation(line: 650, column: 31, scope: !2)
!514 = !DILocation(line: 0, scope: !443, inlinedAt: !515)
!515 = distinct !DILocation(line: 651, column: 31, scope: !2)
!516 = !DILocation(line: 0, scope: !443, inlinedAt: !517)
!517 = distinct !DILocation(line: 652, column: 31, scope: !2)
!518 = !DILocation(line: 0, scope: !443, inlinedAt: !519)
!519 = distinct !DILocation(line: 653, column: 31, scope: !2)
!520 = !DILocation(line: 0, scope: !443, inlinedAt: !521)
!521 = distinct !DILocation(line: 654, column: 31, scope: !2)
!522 = !DILocation(line: 0, scope: !443, inlinedAt: !523)
!523 = distinct !DILocation(line: 655, column: 31, scope: !2)
!524 = !DILocation(line: 0, scope: !443, inlinedAt: !525)
!525 = distinct !DILocation(line: 656, column: 31, scope: !2)
!526 = !DILocation(line: 0, scope: !443, inlinedAt: !527)
!527 = distinct !DILocation(line: 657, column: 31, scope: !2)
!528 = !DILocation(line: 663, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!530 = !DILocation(line: 664, column: 7, scope: !529)
!531 = !DILocation(line: 664, column: 10, scope: !529)
!532 = !DILocation(line: 663, column: 7, scope: !2)
!533 = !DILocation(line: 669, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !529, file: !3, line: 665, column: 5)
!535 = !DILocation(line: 671, column: 5, scope: !534)
!536 = !DILocation(line: 676, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !529, file: !3, line: 673, column: 5)
!538 = !DILocation(line: 679, column: 3, scope: !2)
!539 = !DILocation(line: 683, column: 3, scope: !2)
!540 = !DILocation(line: 686, column: 3, scope: !2)
!541 = !DILocation(line: 688, column: 3, scope: !2)
!542 = !DILocation(line: 691, column: 3, scope: !2)
!543 = !DILocation(line: 695, column: 3, scope: !2)
!544 = !DILocation(line: 696, column: 1, scope: !2)
!545 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !546, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !6}
!548 = !{!549, !550, !559, !560, !562, !563}
!549 = !DILocalVariable(name: "program", arg: 1, scope: !545, file: !3, line: 836, type: !6)
!550 = !DILocalVariable(name: "infomap", scope: !545, file: !3, line: 838, type: !551)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 896, elements: !557)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !545, file: !3, line: 838, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !553, file: !3, line: 838, baseType: !6, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !553, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!557 = !{!558}
!558 = !DISubrange(count: 7)
!559 = !DILocalVariable(name: "node", scope: !545, file: !3, line: 848, type: !6)
!560 = !DILocalVariable(name: "map_prog", scope: !545, file: !3, line: 849, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!562 = !DILocalVariable(name: "lc_messages", scope: !545, file: !3, line: 861, type: !6)
!563 = !DILocalVariable(name: "url_program", scope: !545, file: !3, line: 874, type: !6)
!564 = !DILocation(line: 0, scope: !545)
!565 = !DILocation(line: 838, column: 3, scope: !545)
!566 = !DILocation(line: 838, column: 67, scope: !545)
!567 = !DILocation(line: 849, column: 36, scope: !545)
!568 = !DILocation(line: 851, column: 3, scope: !545)
!569 = !DILocation(line: 0, scope: !443, inlinedAt: !570)
!570 = distinct !DILocation(line: 851, column: 33, scope: !545)
!571 = !DILocation(line: 1361, column: 11, scope: !443, inlinedAt: !570)
!572 = !DILocation(line: 1361, column: 10, scope: !443, inlinedAt: !570)
!573 = !DILocation(line: 852, column: 13, scope: !545)
!574 = !DILocation(line: 851, column: 20, scope: !545)
!575 = !{!576, !415, i64 0}
!576 = !{!"infomap", !415, i64 0, !415, i64 8}
!577 = !DILocation(line: 851, column: 10, scope: !545)
!578 = !DILocation(line: 851, column: 28, scope: !545)
!579 = distinct !{!579, !568, !573, !478}
!580 = !DILocation(line: 854, column: 17, scope: !581)
!581 = distinct !DILexicalBlock(scope: !545, file: !3, line: 854, column: 7)
!582 = !{!576, !415, i64 8}
!583 = !DILocation(line: 854, column: 7, scope: !581)
!584 = !DILocation(line: 854, column: 7, scope: !545)
!585 = !DILocation(line: 857, column: 3, scope: !545)
!586 = !DILocation(line: 861, column: 29, scope: !545)
!587 = !DILocation(line: 862, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !545, file: !3, line: 862, column: 7)
!589 = !DILocation(line: 862, column: 19, scope: !588)
!590 = !DILocation(line: 862, column: 22, scope: !588)
!591 = !DILocation(line: 862, column: 7, scope: !545)
!592 = !DILocation(line: 868, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !588, file: !3, line: 863, column: 5)
!594 = !DILocation(line: 870, column: 5, scope: !593)
!595 = !DILocation(line: 0, scope: !443, inlinedAt: !596)
!596 = distinct !DILocation(line: 874, column: 29, scope: !545)
!597 = !DILocation(line: 875, column: 3, scope: !545)
!598 = !DILocation(line: 877, column: 3, scope: !545)
!599 = !DILocation(line: 879, column: 1, scope: !545)
!600 = !DISubprogram(name: "setlocale", scope: !601, file: !601, line: 122, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!601 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!602 = !DISubroutineType(types: !603)
!603 = !{!29, !31, !6}
!604 = !DISubprogram(name: "fputs_unlocked", scope: !143, file: !143, line: 691, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!605 = !DISubroutineType(types: !606)
!606 = !{!31, !607, !608}
!607 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!608 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!609 = !DISubprogram(name: "getenv", scope: !610, file: !610, line: 641, type: !611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!610 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!611 = !DISubroutineType(types: !612)
!612 = !{!29, !6}
!613 = !DISubprogram(name: "fwrite_unlocked", scope: !143, file: !143, line: 704, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!614 = !DISubroutineType(types: !615)
!615 = !{!33, !616, !33, !33, !608}
!616 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!619 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 55, type: !620, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !623)
!620 = !DISubroutineType(types: !621)
!621 = !{!31, !31, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!623 = !{!624, !625}
!624 = !DILocalVariable(name: "argc", arg: 1, scope: !619, file: !10, line: 55, type: !31)
!625 = !DILocalVariable(name: "argv", arg: 2, scope: !619, file: !10, line: 55, type: !622)
!626 = !DILocation(line: 0, scope: !619)
!627 = !DILocation(line: 59, column: 12, scope: !628)
!628 = distinct !DILexicalBlock(scope: !619, file: !10, line: 59, column: 7)
!629 = !DILocation(line: 59, column: 7, scope: !619)
!630 = !DILocation(line: 62, column: 25, scope: !631)
!631 = distinct !DILexicalBlock(scope: !628, file: !10, line: 60, column: 5)
!632 = !DILocation(line: 62, column: 7, scope: !631)
!633 = !DILocation(line: 63, column: 7, scope: !631)
!634 = !DILocation(line: 64, column: 7, scope: !631)
!635 = !DILocation(line: 65, column: 7, scope: !631)
!636 = !DILocation(line: 69, column: 7, scope: !631)
!637 = !DILocation(line: 71, column: 18, scope: !638)
!638 = distinct !DILexicalBlock(scope: !631, file: !10, line: 71, column: 11)
!639 = !DILocation(line: 0, scope: !443, inlinedAt: !640)
!640 = distinct !DILocation(line: 71, column: 11, scope: !638)
!641 = !DILocation(line: 1361, column: 11, scope: !443, inlinedAt: !640)
!642 = !DILocation(line: 1361, column: 10, scope: !443, inlinedAt: !640)
!643 = !DILocation(line: 71, column: 11, scope: !631)
!644 = !DILocation(line: 72, column: 9, scope: !638)
!645 = !DILocation(line: 0, scope: !443, inlinedAt: !646)
!646 = distinct !DILocation(line: 74, column: 11, scope: !647)
!647 = distinct !DILexicalBlock(scope: !631, file: !10, line: 74, column: 11)
!648 = !DILocation(line: 1361, column: 11, scope: !443, inlinedAt: !646)
!649 = !DILocation(line: 1361, column: 10, scope: !443, inlinedAt: !646)
!650 = !DILocation(line: 74, column: 11, scope: !631)
!651 = !DILocation(line: 75, column: 22, scope: !647)
!652 = !DILocation(line: 75, column: 58, scope: !647)
!653 = !DILocation(line: 75, column: 67, scope: !647)
!654 = !DILocation(line: 75, column: 9, scope: !647)
!655 = !DILocation(line: 79, column: 3, scope: !619)
!656 = !DISubprogram(name: "bindtextdomain", scope: !425, file: !425, line: 86, type: !657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!657 = !DISubroutineType(types: !658)
!658 = !{!29, !6, !6}
!659 = !DISubprogram(name: "textdomain", scope: !425, file: !425, line: 82, type: !611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!660 = !DISubprogram(name: "atexit", scope: !610, file: !610, line: 602, type: !661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!661 = !DISubroutineType(types: !662)
!662 = !{!31, !169}
!663 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !127, file: !127, line: 50, type: !546, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !664)
!664 = !{!665}
!665 = !DILocalVariable(name: "file", arg: 1, scope: !663, file: !127, line: 50, type: !6)
!666 = !DILocation(line: 0, scope: !663)
!667 = !DILocation(line: 52, column: 13, scope: !663)
!668 = !DILocation(line: 53, column: 1, scope: !663)
!669 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !127, file: !127, line: 87, type: !670, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !672)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !45}
!672 = !{!673}
!673 = !DILocalVariable(name: "ignore", arg: 1, scope: !669, file: !127, line: 87, type: !45)
!674 = !DILocation(line: 0, scope: !669)
!675 = !DILocation(line: 89, column: 16, scope: !669)
!676 = !{!677, !677, i64 0}
!677 = !{!"_Bool", !416, i64 0}
!678 = !DILocation(line: 90, column: 1, scope: !669)
!679 = distinct !DISubprogram(name: "close_stdout", scope: !127, file: !127, line: 116, type: !170, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !680)
!680 = !{!681}
!681 = !DILocalVariable(name: "write_error", scope: !682, file: !127, line: 121, type: !6)
!682 = distinct !DILexicalBlock(scope: !683, file: !127, line: 120, column: 5)
!683 = distinct !DILexicalBlock(scope: !679, file: !127, line: 118, column: 7)
!684 = !DILocation(line: 118, column: 21, scope: !683)
!685 = !DILocation(line: 118, column: 7, scope: !683)
!686 = !DILocation(line: 118, column: 29, scope: !683)
!687 = !DILocation(line: 119, column: 7, scope: !683)
!688 = !DILocation(line: 119, column: 12, scope: !683)
!689 = !{i8 0, i8 2}
!690 = !DILocation(line: 119, column: 25, scope: !683)
!691 = !DILocation(line: 119, column: 28, scope: !683)
!692 = !DILocation(line: 119, column: 34, scope: !683)
!693 = !DILocation(line: 118, column: 7, scope: !679)
!694 = !DILocation(line: 121, column: 33, scope: !682)
!695 = !DILocation(line: 0, scope: !682)
!696 = !DILocation(line: 122, column: 11, scope: !697)
!697 = distinct !DILexicalBlock(scope: !682, file: !127, line: 122, column: 11)
!698 = !DILocation(line: 0, scope: !697)
!699 = !DILocation(line: 122, column: 11, scope: !682)
!700 = !DILocation(line: 123, column: 9, scope: !697)
!701 = !DILocation(line: 126, column: 9, scope: !697)
!702 = !DILocation(line: 128, column: 14, scope: !682)
!703 = !DILocation(line: 128, column: 7, scope: !682)
!704 = !DILocation(line: 133, column: 42, scope: !705)
!705 = distinct !DILexicalBlock(scope: !679, file: !127, line: 133, column: 7)
!706 = !DILocation(line: 133, column: 28, scope: !705)
!707 = !DILocation(line: 133, column: 50, scope: !705)
!708 = !DILocation(line: 133, column: 7, scope: !679)
!709 = !DILocation(line: 134, column: 12, scope: !705)
!710 = !DILocation(line: 134, column: 5, scope: !705)
!711 = !DILocation(line: 135, column: 1, scope: !679)
!712 = distinct !DISubprogram(name: "verror", scope: !134, file: !134, line: 251, type: !713, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !715)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !31, !31, !6, !142}
!715 = !{!716, !717, !718, !719}
!716 = !DILocalVariable(name: "status", arg: 1, scope: !712, file: !134, line: 251, type: !31)
!717 = !DILocalVariable(name: "errnum", arg: 2, scope: !712, file: !134, line: 251, type: !31)
!718 = !DILocalVariable(name: "message", arg: 3, scope: !712, file: !134, line: 251, type: !6)
!719 = !DILocalVariable(name: "args", arg: 4, scope: !712, file: !134, line: 251, type: !142)
!720 = !DILocation(line: 0, scope: !712)
!721 = !DILocation(line: 251, column: 1, scope: !712)
!722 = !DILocation(line: 261, column: 3, scope: !712)
!723 = !DILocation(line: 265, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !712, file: !134, line: 265, column: 7)
!725 = !DILocation(line: 265, column: 7, scope: !712)
!726 = !DILocation(line: 266, column: 5, scope: !724)
!727 = !DILocation(line: 272, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !134, line: 268, column: 5)
!729 = !DILocation(line: 276, column: 3, scope: !712)
!730 = !{i64 0, i64 8, !414, i64 8, i64 8, !414, i64 16, i64 8, !414, i64 24, i64 4, !431, i64 28, i64 4, !431}
!731 = !DILocation(line: 282, column: 1, scope: !712)
!732 = distinct !DISubprogram(name: "flush_stdout", scope: !134, file: !134, line: 163, type: !170, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !733)
!733 = !{!734}
!734 = !DILocalVariable(name: "stdout_fd", scope: !732, file: !134, line: 166, type: !31)
!735 = !DILocation(line: 0, scope: !732)
!736 = !DILocalVariable(name: "fd", arg: 1, scope: !737, file: !134, line: 145, type: !31)
!737 = distinct !DISubprogram(name: "is_open", scope: !134, file: !134, line: 145, type: !738, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{!31, !31}
!740 = !{!736}
!741 = !DILocation(line: 0, scope: !737, inlinedAt: !742)
!742 = distinct !DILocation(line: 182, column: 25, scope: !743)
!743 = distinct !DILexicalBlock(scope: !732, file: !134, line: 182, column: 7)
!744 = !DILocation(line: 157, column: 15, scope: !737, inlinedAt: !742)
!745 = !DILocation(line: 182, column: 25, scope: !743)
!746 = !DILocation(line: 182, column: 7, scope: !732)
!747 = !DILocation(line: 184, column: 5, scope: !743)
!748 = !DILocation(line: 185, column: 1, scope: !732)
!749 = distinct !DISubprogram(name: "error_tail", scope: !134, file: !134, line: 219, type: !713, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !750)
!750 = !{!751, !752, !753, !754}
!751 = !DILocalVariable(name: "status", arg: 1, scope: !749, file: !134, line: 219, type: !31)
!752 = !DILocalVariable(name: "errnum", arg: 2, scope: !749, file: !134, line: 219, type: !31)
!753 = !DILocalVariable(name: "message", arg: 3, scope: !749, file: !134, line: 219, type: !6)
!754 = !DILocalVariable(name: "args", arg: 4, scope: !749, file: !134, line: 219, type: !142)
!755 = !DILocation(line: 0, scope: !749)
!756 = !DILocation(line: 219, column: 1, scope: !749)
!757 = !DILocation(line: 229, column: 13, scope: !749)
!758 = !DILocation(line: 229, column: 3, scope: !749)
!759 = !DILocalVariable(name: "__stream", arg: 1, scope: !760, file: !761, line: 132, type: !764)
!760 = distinct !DISubprogram(name: "vfprintf", scope: !761, file: !761, line: 132, type: !762, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !799)
!761 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!762 = !DISubroutineType(types: !763)
!763 = !{!31, !764, !607, !144}
!764 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !767, file: !62, line: 51, baseType: !31, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !767, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !767, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !767, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !767, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !767, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !767, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !767, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !767, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !767, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !767, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !767, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !767, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !767, file: !62, line: 70, baseType: !783, size: 64, offset: 832)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !767, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !767, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !767, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !767, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !767, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !767, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !767, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !767, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !767, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !767, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !767, file: !62, line: 93, baseType: !783, size: 64, offset: 1344)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !767, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !767, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !767, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !767, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!799 = !{!759, !800, !801}
!800 = !DILocalVariable(name: "__fmt", arg: 2, scope: !760, file: !761, line: 133, type: !607)
!801 = !DILocalVariable(name: "__ap", arg: 3, scope: !760, file: !761, line: 133, type: !144)
!802 = !DILocation(line: 0, scope: !760, inlinedAt: !803)
!803 = distinct !DILocation(line: 229, column: 3, scope: !749)
!804 = !DILocation(line: 135, column: 10, scope: !760, inlinedAt: !803)
!805 = !{!806, !808}
!806 = distinct !{!806, !807, !"vfprintf.inline: argument 0"}
!807 = distinct !{!807, !"vfprintf.inline"}
!808 = distinct !{!808, !807, !"vfprintf.inline: argument 1"}
!809 = !DILocation(line: 232, column: 3, scope: !749)
!810 = !DILocation(line: 233, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !749, file: !134, line: 233, column: 7)
!812 = !DILocation(line: 233, column: 7, scope: !749)
!813 = !DILocalVariable(name: "errnum", arg: 1, scope: !814, file: !134, line: 188, type: !31)
!814 = distinct !DISubprogram(name: "print_errno_message", scope: !134, file: !134, line: 188, type: !408, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !815)
!815 = !{!813, !816, !817}
!816 = !DILocalVariable(name: "s", scope: !814, file: !134, line: 190, type: !6)
!817 = !DILocalVariable(name: "errbuf", scope: !814, file: !134, line: 193, type: !818)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 1024)
!821 = !DILocation(line: 0, scope: !814, inlinedAt: !822)
!822 = distinct !DILocation(line: 234, column: 5, scope: !811)
!823 = !DILocation(line: 193, column: 3, scope: !814, inlinedAt: !822)
!824 = !DILocation(line: 193, column: 8, scope: !814, inlinedAt: !822)
!825 = !DILocation(line: 195, column: 7, scope: !814, inlinedAt: !822)
!826 = !DILocation(line: 207, column: 9, scope: !827, inlinedAt: !822)
!827 = distinct !DILexicalBlock(scope: !814, file: !134, line: 207, column: 7)
!828 = !DILocation(line: 207, column: 7, scope: !814, inlinedAt: !822)
!829 = !DILocation(line: 208, column: 9, scope: !827, inlinedAt: !822)
!830 = !DILocation(line: 208, column: 5, scope: !827, inlinedAt: !822)
!831 = !DILocation(line: 214, column: 3, scope: !814, inlinedAt: !822)
!832 = !DILocation(line: 216, column: 1, scope: !814, inlinedAt: !822)
!833 = !DILocation(line: 234, column: 5, scope: !811)
!834 = !DILocation(line: 238, column: 3, scope: !749)
!835 = !DILocalVariable(name: "__c", arg: 1, scope: !836, file: !837, line: 101, type: !31)
!836 = distinct !DISubprogram(name: "putc_unlocked", scope: !837, file: !837, line: 101, type: !838, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !840)
!837 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!838 = !DISubroutineType(types: !839)
!839 = !{!31, !31, !765}
!840 = !{!835, !841}
!841 = !DILocalVariable(name: "__stream", arg: 2, scope: !836, file: !837, line: 101, type: !765)
!842 = !DILocation(line: 0, scope: !836, inlinedAt: !843)
!843 = distinct !DILocation(line: 238, column: 3, scope: !749)
!844 = !DILocation(line: 103, column: 10, scope: !836, inlinedAt: !843)
!845 = !{!846, !415, i64 40}
!846 = !{!"_IO_FILE", !432, i64 0, !415, i64 8, !415, i64 16, !415, i64 24, !415, i64 32, !415, i64 40, !415, i64 48, !415, i64 56, !415, i64 64, !415, i64 72, !415, i64 80, !415, i64 88, !415, i64 96, !415, i64 104, !432, i64 112, !432, i64 116, !847, i64 120, !473, i64 128, !416, i64 130, !416, i64 131, !415, i64 136, !847, i64 144, !415, i64 152, !415, i64 160, !415, i64 168, !415, i64 176, !847, i64 184, !432, i64 192, !416, i64 196}
!847 = !{!"long", !416, i64 0}
!848 = !{!846, !415, i64 48}
!849 = !{!"branch_weights", i32 2000, i32 1}
!850 = !DILocation(line: 240, column: 3, scope: !749)
!851 = !DILocation(line: 241, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !749, file: !134, line: 241, column: 7)
!853 = !DILocation(line: 241, column: 7, scope: !749)
!854 = !DILocation(line: 242, column: 5, scope: !852)
!855 = !DILocation(line: 243, column: 1, scope: !749)
!856 = !DISubprogram(name: "strerror_r", scope: !857, file: !857, line: 444, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!857 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!858 = !DISubroutineType(types: !859)
!859 = !{!29, !31, !29, !33}
!860 = !DISubprogram(name: "fflush_unlocked", scope: !143, file: !143, line: 239, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!861 = !DISubroutineType(types: !862)
!862 = !{!31, !765}
!863 = !DISubprogram(name: "fcntl", scope: !864, file: !864, line: 149, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!864 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!865 = !DISubroutineType(types: !866)
!866 = !{!31, !31, !31, null}
!867 = distinct !DISubprogram(name: "error", scope: !134, file: !134, line: 285, type: !868, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !31, !31, !6, null}
!870 = !{!871, !872, !873, !874}
!871 = !DILocalVariable(name: "status", arg: 1, scope: !867, file: !134, line: 285, type: !31)
!872 = !DILocalVariable(name: "errnum", arg: 2, scope: !867, file: !134, line: 285, type: !31)
!873 = !DILocalVariable(name: "message", arg: 3, scope: !867, file: !134, line: 285, type: !6)
!874 = !DILocalVariable(name: "ap", scope: !867, file: !134, line: 287, type: !142)
!875 = !DILocation(line: 0, scope: !867)
!876 = !DILocation(line: 287, column: 3, scope: !867)
!877 = !DILocation(line: 287, column: 11, scope: !867)
!878 = !DILocation(line: 288, column: 3, scope: !867)
!879 = !DILocation(line: 289, column: 3, scope: !867)
!880 = !DILocation(line: 290, column: 3, scope: !867)
!881 = !DILocation(line: 291, column: 1, scope: !867)
!882 = !DILocation(line: 0, scope: !139)
!883 = !DILocation(line: 298, column: 1, scope: !139)
!884 = !DILocation(line: 302, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !139, file: !134, line: 302, column: 7)
!886 = !DILocation(line: 302, column: 7, scope: !139)
!887 = !DILocation(line: 307, column: 11, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !134, line: 307, column: 11)
!889 = distinct !DILexicalBlock(scope: !885, file: !134, line: 303, column: 5)
!890 = !DILocation(line: 307, column: 27, scope: !888)
!891 = !DILocation(line: 308, column: 11, scope: !888)
!892 = !DILocation(line: 308, column: 28, scope: !888)
!893 = !DILocation(line: 308, column: 25, scope: !888)
!894 = !DILocation(line: 309, column: 15, scope: !888)
!895 = !DILocation(line: 309, column: 33, scope: !888)
!896 = !DILocation(line: 310, column: 19, scope: !888)
!897 = !DILocation(line: 311, column: 22, scope: !888)
!898 = !DILocation(line: 311, column: 56, scope: !888)
!899 = !DILocation(line: 307, column: 11, scope: !889)
!900 = !DILocation(line: 316, column: 21, scope: !889)
!901 = !DILocation(line: 317, column: 23, scope: !889)
!902 = !DILocation(line: 318, column: 5, scope: !889)
!903 = !DILocation(line: 327, column: 3, scope: !139)
!904 = !DILocation(line: 331, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !139, file: !134, line: 331, column: 7)
!906 = !DILocation(line: 331, column: 7, scope: !139)
!907 = !DILocation(line: 332, column: 5, scope: !905)
!908 = !DILocation(line: 338, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !134, line: 334, column: 5)
!910 = !DILocation(line: 346, column: 3, scope: !139)
!911 = !DILocation(line: 350, column: 3, scope: !139)
!912 = !DILocation(line: 356, column: 1, scope: !139)
!913 = distinct !DISubprogram(name: "error_at_line", scope: !134, file: !134, line: 359, type: !914, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !31, !31, !6, !14, !6, null}
!916 = !{!917, !918, !919, !920, !921, !922}
!917 = !DILocalVariable(name: "status", arg: 1, scope: !913, file: !134, line: 359, type: !31)
!918 = !DILocalVariable(name: "errnum", arg: 2, scope: !913, file: !134, line: 359, type: !31)
!919 = !DILocalVariable(name: "file_name", arg: 3, scope: !913, file: !134, line: 359, type: !6)
!920 = !DILocalVariable(name: "line_number", arg: 4, scope: !913, file: !134, line: 360, type: !14)
!921 = !DILocalVariable(name: "message", arg: 5, scope: !913, file: !134, line: 360, type: !6)
!922 = !DILocalVariable(name: "ap", scope: !913, file: !134, line: 362, type: !142)
!923 = !DILocation(line: 0, scope: !913)
!924 = !DILocation(line: 362, column: 3, scope: !913)
!925 = !DILocation(line: 362, column: 11, scope: !913)
!926 = !DILocation(line: 363, column: 3, scope: !913)
!927 = !DILocation(line: 364, column: 3, scope: !913)
!928 = !DILocation(line: 366, column: 3, scope: !913)
!929 = !DILocation(line: 367, column: 1, scope: !913)
!930 = distinct !DISubprogram(name: "getprogname", scope: !334, file: !334, line: 54, type: !931, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !428)
!931 = !DISubroutineType(types: !932)
!932 = !{!6}
!933 = !DILocation(line: 58, column: 10, scope: !930)
!934 = !DILocation(line: 58, column: 3, scope: !930)
!935 = distinct !DISubprogram(name: "set_program_name", scope: !175, file: !175, line: 37, type: !546, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !936)
!936 = !{!937, !938, !939}
!937 = !DILocalVariable(name: "argv0", arg: 1, scope: !935, file: !175, line: 37, type: !6)
!938 = !DILocalVariable(name: "slash", scope: !935, file: !175, line: 44, type: !6)
!939 = !DILocalVariable(name: "base", scope: !935, file: !175, line: 45, type: !6)
!940 = !DILocation(line: 0, scope: !935)
!941 = !DILocation(line: 44, column: 23, scope: !935)
!942 = !DILocation(line: 45, column: 22, scope: !935)
!943 = !DILocation(line: 46, column: 17, scope: !944)
!944 = distinct !DILexicalBlock(scope: !935, file: !175, line: 46, column: 7)
!945 = !DILocation(line: 46, column: 9, scope: !944)
!946 = !DILocation(line: 46, column: 25, scope: !944)
!947 = !DILocation(line: 46, column: 40, scope: !944)
!948 = !DILocalVariable(name: "__s1", arg: 1, scope: !949, file: !444, line: 974, type: !617)
!949 = distinct !DISubprogram(name: "memeq", scope: !444, file: !444, line: 974, type: !950, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !952)
!950 = !DISubroutineType(types: !951)
!951 = !{!45, !617, !617, !33}
!952 = !{!948, !953, !954}
!953 = !DILocalVariable(name: "__s2", arg: 2, scope: !949, file: !444, line: 974, type: !617)
!954 = !DILocalVariable(name: "__n", arg: 3, scope: !949, file: !444, line: 974, type: !33)
!955 = !DILocation(line: 0, scope: !949, inlinedAt: !956)
!956 = distinct !DILocation(line: 46, column: 28, scope: !944)
!957 = !DILocation(line: 976, column: 11, scope: !949, inlinedAt: !956)
!958 = !DILocation(line: 976, column: 10, scope: !949, inlinedAt: !956)
!959 = !DILocation(line: 46, column: 7, scope: !935)
!960 = !DILocation(line: 49, column: 11, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !175, line: 49, column: 11)
!962 = distinct !DILexicalBlock(scope: !944, file: !175, line: 47, column: 5)
!963 = !DILocation(line: 49, column: 36, scope: !961)
!964 = !DILocation(line: 49, column: 11, scope: !962)
!965 = !DILocation(line: 65, column: 16, scope: !935)
!966 = !DILocation(line: 71, column: 27, scope: !935)
!967 = !DILocation(line: 74, column: 33, scope: !935)
!968 = !DILocation(line: 76, column: 1, scope: !935)
!969 = !DILocation(line: 0, scope: !180)
!970 = !DILocation(line: 40, column: 29, scope: !180)
!971 = !DILocation(line: 41, column: 19, scope: !972)
!972 = distinct !DILexicalBlock(scope: !180, file: !181, line: 41, column: 7)
!973 = !DILocation(line: 41, column: 7, scope: !180)
!974 = !DILocation(line: 47, column: 3, scope: !180)
!975 = !DILocation(line: 48, column: 3, scope: !180)
!976 = !DILocation(line: 48, column: 13, scope: !180)
!977 = !DILocalVariable(name: "ps", arg: 1, scope: !978, file: !979, line: 1135, type: !982)
!978 = distinct !DISubprogram(name: "mbszero", scope: !979, file: !979, line: 1135, type: !980, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !983)
!979 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!980 = !DISubroutineType(types: !981)
!981 = !{null, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!983 = !{!977}
!984 = !DILocation(line: 0, scope: !978, inlinedAt: !985)
!985 = distinct !DILocation(line: 48, column: 18, scope: !180)
!986 = !DILocalVariable(name: "__dest", arg: 1, scope: !987, file: !988, line: 57, type: !30)
!987 = distinct !DISubprogram(name: "memset", scope: !988, file: !988, line: 57, type: !989, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !991)
!988 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!989 = !DISubroutineType(types: !990)
!990 = !{!30, !30, !31, !33}
!991 = !{!986, !992, !993}
!992 = !DILocalVariable(name: "__ch", arg: 2, scope: !987, file: !988, line: 57, type: !31)
!993 = !DILocalVariable(name: "__len", arg: 3, scope: !987, file: !988, line: 57, type: !33)
!994 = !DILocation(line: 0, scope: !987, inlinedAt: !995)
!995 = distinct !DILocation(line: 1137, column: 3, scope: !978, inlinedAt: !985)
!996 = !DILocation(line: 59, column: 10, scope: !987, inlinedAt: !995)
!997 = !DILocation(line: 49, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !180, file: !181, line: 49, column: 7)
!999 = !DILocation(line: 49, column: 39, scope: !998)
!1000 = !DILocation(line: 49, column: 44, scope: !998)
!1001 = !DILocation(line: 54, column: 1, scope: !180)
!1002 = !DISubprogram(name: "mbrtoc32", scope: !192, file: !192, line: 57, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!33, !1005, !607, !33, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !982)
!1008 = distinct !DISubprogram(name: "clone_quoting_options", scope: !217, file: !217, line: 113, type: !1009, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1012)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!1011, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1012 = !{!1013, !1014, !1015}
!1013 = !DILocalVariable(name: "o", arg: 1, scope: !1008, file: !217, line: 113, type: !1011)
!1014 = !DILocalVariable(name: "saved_errno", scope: !1008, file: !217, line: 115, type: !31)
!1015 = !DILocalVariable(name: "p", scope: !1008, file: !217, line: 116, type: !1011)
!1016 = !DILocation(line: 0, scope: !1008)
!1017 = !DILocation(line: 115, column: 21, scope: !1008)
!1018 = !DILocation(line: 116, column: 40, scope: !1008)
!1019 = !DILocation(line: 116, column: 31, scope: !1008)
!1020 = !DILocation(line: 118, column: 9, scope: !1008)
!1021 = !DILocation(line: 119, column: 3, scope: !1008)
!1022 = distinct !DISubprogram(name: "get_quoting_style", scope: !217, file: !217, line: 124, type: !1023, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1027)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!219, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!1027 = !{!1028}
!1028 = !DILocalVariable(name: "o", arg: 1, scope: !1022, file: !217, line: 124, type: !1025)
!1029 = !DILocation(line: 0, scope: !1022)
!1030 = !DILocation(line: 126, column: 11, scope: !1022)
!1031 = !DILocation(line: 126, column: 46, scope: !1022)
!1032 = !{!1033, !416, i64 0}
!1033 = !{!"quoting_options", !416, i64 0, !432, i64 4, !416, i64 8, !415, i64 40, !415, i64 48}
!1034 = !DILocation(line: 126, column: 3, scope: !1022)
!1035 = distinct !DISubprogram(name: "set_quoting_style", scope: !217, file: !217, line: 132, type: !1036, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1038)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !1011, !219}
!1038 = !{!1039, !1040}
!1039 = !DILocalVariable(name: "o", arg: 1, scope: !1035, file: !217, line: 132, type: !1011)
!1040 = !DILocalVariable(name: "s", arg: 2, scope: !1035, file: !217, line: 132, type: !219)
!1041 = !DILocation(line: 0, scope: !1035)
!1042 = !DILocation(line: 134, column: 4, scope: !1035)
!1043 = !DILocation(line: 134, column: 39, scope: !1035)
!1044 = !DILocation(line: 134, column: 45, scope: !1035)
!1045 = !DILocation(line: 135, column: 1, scope: !1035)
!1046 = distinct !DISubprogram(name: "set_char_quoting", scope: !217, file: !217, line: 143, type: !1047, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!31, !1011, !8, !31}
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1056, !1057}
!1050 = !DILocalVariable(name: "o", arg: 1, scope: !1046, file: !217, line: 143, type: !1011)
!1051 = !DILocalVariable(name: "c", arg: 2, scope: !1046, file: !217, line: 143, type: !8)
!1052 = !DILocalVariable(name: "i", arg: 3, scope: !1046, file: !217, line: 143, type: !31)
!1053 = !DILocalVariable(name: "uc", scope: !1046, file: !217, line: 145, type: !36)
!1054 = !DILocalVariable(name: "p", scope: !1046, file: !217, line: 146, type: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1056 = !DILocalVariable(name: "shift", scope: !1046, file: !217, line: 148, type: !31)
!1057 = !DILocalVariable(name: "r", scope: !1046, file: !217, line: 149, type: !14)
!1058 = !DILocation(line: 0, scope: !1046)
!1059 = !DILocation(line: 147, column: 6, scope: !1046)
!1060 = !DILocation(line: 147, column: 62, scope: !1046)
!1061 = !DILocation(line: 147, column: 57, scope: !1046)
!1062 = !DILocation(line: 148, column: 15, scope: !1046)
!1063 = !DILocation(line: 149, column: 21, scope: !1046)
!1064 = !DILocation(line: 149, column: 24, scope: !1046)
!1065 = !DILocation(line: 149, column: 34, scope: !1046)
!1066 = !DILocation(line: 150, column: 13, scope: !1046)
!1067 = !DILocation(line: 150, column: 19, scope: !1046)
!1068 = !DILocation(line: 150, column: 24, scope: !1046)
!1069 = !DILocation(line: 150, column: 6, scope: !1046)
!1070 = !DILocation(line: 151, column: 3, scope: !1046)
!1071 = distinct !DISubprogram(name: "set_quoting_flags", scope: !217, file: !217, line: 159, type: !1072, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!31, !1011, !31}
!1074 = !{!1075, !1076, !1077}
!1075 = !DILocalVariable(name: "o", arg: 1, scope: !1071, file: !217, line: 159, type: !1011)
!1076 = !DILocalVariable(name: "i", arg: 2, scope: !1071, file: !217, line: 159, type: !31)
!1077 = !DILocalVariable(name: "r", scope: !1071, file: !217, line: 163, type: !31)
!1078 = !DILocation(line: 0, scope: !1071)
!1079 = !DILocation(line: 161, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1071, file: !217, line: 161, column: 7)
!1081 = !DILocation(line: 161, column: 7, scope: !1071)
!1082 = !DILocation(line: 163, column: 14, scope: !1071)
!1083 = !{!1033, !432, i64 4}
!1084 = !DILocation(line: 164, column: 12, scope: !1071)
!1085 = !DILocation(line: 165, column: 3, scope: !1071)
!1086 = distinct !DISubprogram(name: "set_custom_quoting", scope: !217, file: !217, line: 169, type: !1087, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !1011, !6, !6}
!1089 = !{!1090, !1091, !1092}
!1090 = !DILocalVariable(name: "o", arg: 1, scope: !1086, file: !217, line: 169, type: !1011)
!1091 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1086, file: !217, line: 170, type: !6)
!1092 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1086, file: !217, line: 170, type: !6)
!1093 = !DILocation(line: 0, scope: !1086)
!1094 = !DILocation(line: 172, column: 8, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1086, file: !217, line: 172, column: 7)
!1096 = !DILocation(line: 172, column: 7, scope: !1086)
!1097 = !DILocation(line: 174, column: 6, scope: !1086)
!1098 = !DILocation(line: 174, column: 12, scope: !1086)
!1099 = !DILocation(line: 175, column: 8, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1086, file: !217, line: 175, column: 7)
!1101 = !DILocation(line: 175, column: 19, scope: !1100)
!1102 = !DILocation(line: 176, column: 5, scope: !1100)
!1103 = !DILocation(line: 177, column: 6, scope: !1086)
!1104 = !DILocation(line: 177, column: 17, scope: !1086)
!1105 = !{!1033, !415, i64 40}
!1106 = !DILocation(line: 178, column: 6, scope: !1086)
!1107 = !DILocation(line: 178, column: 18, scope: !1086)
!1108 = !{!1033, !415, i64 48}
!1109 = !DILocation(line: 179, column: 1, scope: !1086)
!1110 = distinct !DISubprogram(name: "quotearg_buffer", scope: !217, file: !217, line: 774, type: !1111, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!33, !29, !33, !6, !33, !1025}
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121}
!1114 = !DILocalVariable(name: "buffer", arg: 1, scope: !1110, file: !217, line: 774, type: !29)
!1115 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1110, file: !217, line: 774, type: !33)
!1116 = !DILocalVariable(name: "arg", arg: 3, scope: !1110, file: !217, line: 775, type: !6)
!1117 = !DILocalVariable(name: "argsize", arg: 4, scope: !1110, file: !217, line: 775, type: !33)
!1118 = !DILocalVariable(name: "o", arg: 5, scope: !1110, file: !217, line: 776, type: !1025)
!1119 = !DILocalVariable(name: "p", scope: !1110, file: !217, line: 778, type: !1025)
!1120 = !DILocalVariable(name: "saved_errno", scope: !1110, file: !217, line: 779, type: !31)
!1121 = !DILocalVariable(name: "r", scope: !1110, file: !217, line: 780, type: !33)
!1122 = !DILocation(line: 0, scope: !1110)
!1123 = !DILocation(line: 778, column: 37, scope: !1110)
!1124 = !DILocation(line: 779, column: 21, scope: !1110)
!1125 = !DILocation(line: 781, column: 43, scope: !1110)
!1126 = !DILocation(line: 781, column: 53, scope: !1110)
!1127 = !DILocation(line: 781, column: 60, scope: !1110)
!1128 = !DILocation(line: 782, column: 43, scope: !1110)
!1129 = !DILocation(line: 782, column: 58, scope: !1110)
!1130 = !DILocation(line: 780, column: 14, scope: !1110)
!1131 = !DILocation(line: 783, column: 9, scope: !1110)
!1132 = !DILocation(line: 784, column: 3, scope: !1110)
!1133 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !217, file: !217, line: 251, type: !1134, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1138)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!33, !29, !33, !6, !33, !219, !31, !1136, !6, !6}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1163, !1165, !1168, !1169, !1170, !1171, !1174, !1175, !1178, !1182, !1183, !1191, !1194, !1195, !1197, !1198, !1199, !1200}
!1139 = !DILocalVariable(name: "buffer", arg: 1, scope: !1133, file: !217, line: 251, type: !29)
!1140 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1133, file: !217, line: 251, type: !33)
!1141 = !DILocalVariable(name: "arg", arg: 3, scope: !1133, file: !217, line: 252, type: !6)
!1142 = !DILocalVariable(name: "argsize", arg: 4, scope: !1133, file: !217, line: 252, type: !33)
!1143 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1133, file: !217, line: 253, type: !219)
!1144 = !DILocalVariable(name: "flags", arg: 6, scope: !1133, file: !217, line: 253, type: !31)
!1145 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1133, file: !217, line: 254, type: !1136)
!1146 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1133, file: !217, line: 255, type: !6)
!1147 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1133, file: !217, line: 256, type: !6)
!1148 = !DILocalVariable(name: "unibyte_locale", scope: !1133, file: !217, line: 258, type: !45)
!1149 = !DILocalVariable(name: "len", scope: !1133, file: !217, line: 260, type: !33)
!1150 = !DILocalVariable(name: "orig_buffersize", scope: !1133, file: !217, line: 261, type: !33)
!1151 = !DILocalVariable(name: "quote_string", scope: !1133, file: !217, line: 262, type: !6)
!1152 = !DILocalVariable(name: "quote_string_len", scope: !1133, file: !217, line: 263, type: !33)
!1153 = !DILocalVariable(name: "backslash_escapes", scope: !1133, file: !217, line: 264, type: !45)
!1154 = !DILocalVariable(name: "elide_outer_quotes", scope: !1133, file: !217, line: 265, type: !45)
!1155 = !DILocalVariable(name: "encountered_single_quote", scope: !1133, file: !217, line: 266, type: !45)
!1156 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1133, file: !217, line: 267, type: !45)
!1157 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1133, file: !217, line: 309, type: !45)
!1158 = !DILocalVariable(name: "lq", scope: !1159, file: !217, line: 361, type: !6)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !217, line: 361, column: 11)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !217, line: 360, column: 13)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !217, line: 333, column: 7)
!1162 = distinct !DILexicalBlock(scope: !1133, file: !217, line: 312, column: 5)
!1163 = !DILocalVariable(name: "i", scope: !1164, file: !217, line: 395, type: !33)
!1164 = distinct !DILexicalBlock(scope: !1133, file: !217, line: 395, column: 3)
!1165 = !DILocalVariable(name: "is_right_quote", scope: !1166, file: !217, line: 397, type: !45)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !217, line: 396, column: 5)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !217, line: 395, column: 3)
!1168 = !DILocalVariable(name: "escaping", scope: !1166, file: !217, line: 398, type: !45)
!1169 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1166, file: !217, line: 399, type: !45)
!1170 = !DILocalVariable(name: "c", scope: !1166, file: !217, line: 417, type: !36)
!1171 = !DILocalVariable(name: "m", scope: !1172, file: !217, line: 598, type: !33)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !217, line: 596, column: 11)
!1173 = distinct !DILexicalBlock(scope: !1166, file: !217, line: 419, column: 9)
!1174 = !DILocalVariable(name: "printable", scope: !1172, file: !217, line: 600, type: !45)
!1175 = !DILocalVariable(name: "mbs", scope: !1176, file: !217, line: 609, type: !276)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !217, line: 608, column: 15)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !217, line: 602, column: 17)
!1178 = !DILocalVariable(name: "w", scope: !1179, file: !217, line: 618, type: !191)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !217, line: 617, column: 19)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !217, line: 616, column: 17)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !217, line: 616, column: 17)
!1182 = !DILocalVariable(name: "bytes", scope: !1179, file: !217, line: 619, type: !33)
!1183 = !DILocalVariable(name: "j", scope: !1184, file: !217, line: 648, type: !33)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !217, line: 648, column: 29)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !217, line: 647, column: 27)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !217, line: 645, column: 29)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !217, line: 636, column: 23)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !217, line: 628, column: 30)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !217, line: 623, column: 30)
!1190 = distinct !DILexicalBlock(scope: !1179, file: !217, line: 621, column: 25)
!1191 = !DILocalVariable(name: "ilim", scope: !1192, file: !217, line: 674, type: !33)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !217, line: 671, column: 15)
!1193 = distinct !DILexicalBlock(scope: !1172, file: !217, line: 670, column: 17)
!1194 = !DILabel(scope: !1133, name: "process_input", file: !217, line: 308)
!1195 = !DILabel(scope: !1196, name: "c_and_shell_escape", file: !217, line: 502)
!1196 = distinct !DILexicalBlock(scope: !1173, file: !217, line: 478, column: 9)
!1197 = !DILabel(scope: !1196, name: "c_escape", file: !217, line: 507)
!1198 = !DILabel(scope: !1166, name: "store_escape", file: !217, line: 709)
!1199 = !DILabel(scope: !1166, name: "store_c", file: !217, line: 712)
!1200 = !DILabel(scope: !1133, name: "force_outer_quoting_style", file: !217, line: 753)
!1201 = !DILocation(line: 0, scope: !1133)
!1202 = !DILocation(line: 258, column: 25, scope: !1133)
!1203 = !DILocation(line: 258, column: 36, scope: !1133)
!1204 = !DILocation(line: 267, column: 3, scope: !1133)
!1205 = !DILocation(line: 261, column: 10, scope: !1133)
!1206 = !DILocation(line: 262, column: 15, scope: !1133)
!1207 = !DILocation(line: 263, column: 10, scope: !1133)
!1208 = !DILocation(line: 308, column: 2, scope: !1133)
!1209 = !DILocation(line: 311, column: 3, scope: !1133)
!1210 = !DILocation(line: 318, column: 11, scope: !1162)
!1211 = !DILocation(line: 319, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !217, line: 319, column: 9)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !217, line: 319, column: 9)
!1214 = distinct !DILexicalBlock(scope: !1162, file: !217, line: 318, column: 11)
!1215 = !DILocation(line: 319, column: 9, scope: !1213)
!1216 = !DILocation(line: 0, scope: !267, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 357, column: 26, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !217, line: 335, column: 11)
!1219 = distinct !DILexicalBlock(scope: !1161, file: !217, line: 334, column: 13)
!1220 = !DILocation(line: 199, column: 29, scope: !267, inlinedAt: !1217)
!1221 = !DILocation(line: 201, column: 19, scope: !1222, inlinedAt: !1217)
!1222 = distinct !DILexicalBlock(scope: !267, file: !217, line: 201, column: 7)
!1223 = !DILocation(line: 201, column: 7, scope: !267, inlinedAt: !1217)
!1224 = !DILocation(line: 229, column: 3, scope: !267, inlinedAt: !1217)
!1225 = !DILocation(line: 230, column: 3, scope: !267, inlinedAt: !1217)
!1226 = !DILocation(line: 230, column: 13, scope: !267, inlinedAt: !1217)
!1227 = !DILocalVariable(name: "ps", arg: 1, scope: !1228, file: !979, line: 1135, type: !1231)
!1228 = distinct !DISubprogram(name: "mbszero", scope: !979, file: !979, line: 1135, type: !1229, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1232)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1232 = !{!1227}
!1233 = !DILocation(line: 0, scope: !1228, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 230, column: 18, scope: !267, inlinedAt: !1217)
!1235 = !DILocalVariable(name: "__dest", arg: 1, scope: !1236, file: !988, line: 57, type: !30)
!1236 = distinct !DISubprogram(name: "memset", scope: !988, file: !988, line: 57, type: !989, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1237)
!1237 = !{!1235, !1238, !1239}
!1238 = !DILocalVariable(name: "__ch", arg: 2, scope: !1236, file: !988, line: 57, type: !31)
!1239 = !DILocalVariable(name: "__len", arg: 3, scope: !1236, file: !988, line: 57, type: !33)
!1240 = !DILocation(line: 0, scope: !1236, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 1137, column: 3, scope: !1228, inlinedAt: !1234)
!1242 = !DILocation(line: 59, column: 10, scope: !1236, inlinedAt: !1241)
!1243 = !DILocation(line: 231, column: 7, scope: !1244, inlinedAt: !1217)
!1244 = distinct !DILexicalBlock(scope: !267, file: !217, line: 231, column: 7)
!1245 = !DILocation(line: 231, column: 40, scope: !1244, inlinedAt: !1217)
!1246 = !DILocation(line: 231, column: 45, scope: !1244, inlinedAt: !1217)
!1247 = !DILocation(line: 235, column: 1, scope: !267, inlinedAt: !1217)
!1248 = !DILocation(line: 0, scope: !267, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 358, column: 27, scope: !1218)
!1250 = !DILocation(line: 199, column: 29, scope: !267, inlinedAt: !1249)
!1251 = !DILocation(line: 201, column: 19, scope: !1222, inlinedAt: !1249)
!1252 = !DILocation(line: 201, column: 7, scope: !267, inlinedAt: !1249)
!1253 = !DILocation(line: 229, column: 3, scope: !267, inlinedAt: !1249)
!1254 = !DILocation(line: 230, column: 3, scope: !267, inlinedAt: !1249)
!1255 = !DILocation(line: 230, column: 13, scope: !267, inlinedAt: !1249)
!1256 = !DILocation(line: 0, scope: !1228, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 230, column: 18, scope: !267, inlinedAt: !1249)
!1258 = !DILocation(line: 0, scope: !1236, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 1137, column: 3, scope: !1228, inlinedAt: !1257)
!1260 = !DILocation(line: 59, column: 10, scope: !1236, inlinedAt: !1259)
!1261 = !DILocation(line: 231, column: 7, scope: !1244, inlinedAt: !1249)
!1262 = !DILocation(line: 231, column: 40, scope: !1244, inlinedAt: !1249)
!1263 = !DILocation(line: 231, column: 45, scope: !1244, inlinedAt: !1249)
!1264 = !DILocation(line: 235, column: 1, scope: !267, inlinedAt: !1249)
!1265 = !DILocation(line: 360, column: 13, scope: !1161)
!1266 = !DILocation(line: 0, scope: !1159)
!1267 = !DILocation(line: 361, column: 45, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1159, file: !217, line: 361, column: 11)
!1269 = !DILocation(line: 361, column: 11, scope: !1159)
!1270 = !DILocation(line: 362, column: 13, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !217, line: 362, column: 13)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !217, line: 362, column: 13)
!1273 = !DILocation(line: 362, column: 13, scope: !1272)
!1274 = !DILocation(line: 361, column: 52, scope: !1268)
!1275 = distinct !{!1275, !1269, !1276, !478}
!1276 = !DILocation(line: 362, column: 13, scope: !1159)
!1277 = !DILocation(line: 260, column: 10, scope: !1133)
!1278 = !DILocation(line: 365, column: 28, scope: !1161)
!1279 = !DILocation(line: 367, column: 7, scope: !1162)
!1280 = !DILocation(line: 370, column: 7, scope: !1162)
!1281 = !DILocation(line: 376, column: 11, scope: !1162)
!1282 = !DILocation(line: 381, column: 11, scope: !1162)
!1283 = !DILocation(line: 382, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !217, line: 382, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !217, line: 382, column: 9)
!1286 = distinct !DILexicalBlock(scope: !1162, file: !217, line: 381, column: 11)
!1287 = !DILocation(line: 382, column: 9, scope: !1285)
!1288 = !DILocation(line: 389, column: 7, scope: !1162)
!1289 = !DILocation(line: 392, column: 7, scope: !1162)
!1290 = !DILocation(line: 0, scope: !1164)
!1291 = !DILocation(line: 395, column: 8, scope: !1164)
!1292 = !DILocation(line: 395, column: 34, scope: !1167)
!1293 = !DILocation(line: 395, column: 26, scope: !1167)
!1294 = !DILocation(line: 395, column: 48, scope: !1167)
!1295 = !DILocation(line: 395, column: 55, scope: !1167)
!1296 = !DILocation(line: 395, column: 3, scope: !1164)
!1297 = !DILocation(line: 395, column: 67, scope: !1167)
!1298 = !DILocation(line: 0, scope: !1166)
!1299 = !DILocation(line: 402, column: 11, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1166, file: !217, line: 401, column: 11)
!1301 = !DILocation(line: 404, column: 17, scope: !1300)
!1302 = !DILocation(line: 405, column: 39, scope: !1300)
!1303 = !DILocation(line: 409, column: 32, scope: !1300)
!1304 = !DILocation(line: 405, column: 19, scope: !1300)
!1305 = !DILocation(line: 405, column: 15, scope: !1300)
!1306 = !DILocation(line: 410, column: 11, scope: !1300)
!1307 = !DILocation(line: 410, column: 25, scope: !1300)
!1308 = !DILocalVariable(name: "__s1", arg: 1, scope: !1309, file: !444, line: 974, type: !617)
!1309 = distinct !DISubprogram(name: "memeq", scope: !444, file: !444, line: 974, type: !950, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1310)
!1310 = !{!1308, !1311, !1312}
!1311 = !DILocalVariable(name: "__s2", arg: 2, scope: !1309, file: !444, line: 974, type: !617)
!1312 = !DILocalVariable(name: "__n", arg: 3, scope: !1309, file: !444, line: 974, type: !33)
!1313 = !DILocation(line: 0, scope: !1309, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 410, column: 14, scope: !1300)
!1315 = !DILocation(line: 976, column: 11, scope: !1309, inlinedAt: !1314)
!1316 = !DILocation(line: 976, column: 10, scope: !1309, inlinedAt: !1314)
!1317 = !DILocation(line: 401, column: 11, scope: !1166)
!1318 = !DILocation(line: 417, column: 25, scope: !1166)
!1319 = !DILocation(line: 418, column: 7, scope: !1166)
!1320 = !DILocation(line: 421, column: 15, scope: !1173)
!1321 = !DILocation(line: 423, column: 15, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !217, line: 423, column: 15)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !217, line: 422, column: 13)
!1324 = distinct !DILexicalBlock(scope: !1173, file: !217, line: 421, column: 15)
!1325 = !DILocation(line: 423, column: 15, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !217, line: 423, column: 15)
!1327 = !DILocation(line: 423, column: 15, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !217, line: 423, column: 15)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !217, line: 423, column: 15)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !217, line: 423, column: 15)
!1331 = !DILocation(line: 423, column: 15, scope: !1329)
!1332 = !DILocation(line: 423, column: 15, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !217, line: 423, column: 15)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !217, line: 423, column: 15)
!1335 = !DILocation(line: 423, column: 15, scope: !1334)
!1336 = !DILocation(line: 423, column: 15, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !217, line: 423, column: 15)
!1338 = distinct !DILexicalBlock(scope: !1330, file: !217, line: 423, column: 15)
!1339 = !DILocation(line: 423, column: 15, scope: !1338)
!1340 = !DILocation(line: 423, column: 15, scope: !1330)
!1341 = !DILocation(line: 423, column: 15, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !217, line: 423, column: 15)
!1343 = distinct !DILexicalBlock(scope: !1322, file: !217, line: 423, column: 15)
!1344 = !DILocation(line: 423, column: 15, scope: !1343)
!1345 = !DILocation(line: 431, column: 19, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1323, file: !217, line: 430, column: 19)
!1347 = !DILocation(line: 431, column: 24, scope: !1346)
!1348 = !DILocation(line: 431, column: 28, scope: !1346)
!1349 = !DILocation(line: 431, column: 38, scope: !1346)
!1350 = !DILocation(line: 431, column: 48, scope: !1346)
!1351 = !DILocation(line: 431, column: 59, scope: !1346)
!1352 = !DILocation(line: 433, column: 19, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !217, line: 433, column: 19)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !217, line: 433, column: 19)
!1355 = distinct !DILexicalBlock(scope: !1346, file: !217, line: 432, column: 17)
!1356 = !DILocation(line: 433, column: 19, scope: !1354)
!1357 = !DILocation(line: 434, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !217, line: 434, column: 19)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !217, line: 434, column: 19)
!1360 = !DILocation(line: 434, column: 19, scope: !1359)
!1361 = !DILocation(line: 435, column: 17, scope: !1355)
!1362 = !DILocation(line: 442, column: 20, scope: !1324)
!1363 = !DILocation(line: 447, column: 11, scope: !1173)
!1364 = !DILocation(line: 450, column: 19, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1173, file: !217, line: 448, column: 13)
!1366 = !DILocation(line: 456, column: 19, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1365, file: !217, line: 455, column: 19)
!1368 = !DILocation(line: 456, column: 24, scope: !1367)
!1369 = !DILocation(line: 456, column: 28, scope: !1367)
!1370 = !DILocation(line: 456, column: 38, scope: !1367)
!1371 = !DILocation(line: 456, column: 47, scope: !1367)
!1372 = !DILocation(line: 456, column: 41, scope: !1367)
!1373 = !DILocation(line: 456, column: 52, scope: !1367)
!1374 = !DILocation(line: 455, column: 19, scope: !1365)
!1375 = !DILocation(line: 457, column: 25, scope: !1367)
!1376 = !DILocation(line: 457, column: 17, scope: !1367)
!1377 = !DILocation(line: 464, column: 25, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1367, file: !217, line: 458, column: 19)
!1379 = !DILocation(line: 468, column: 21, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !217, line: 468, column: 21)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !217, line: 468, column: 21)
!1382 = !DILocation(line: 468, column: 21, scope: !1381)
!1383 = !DILocation(line: 469, column: 21, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !217, line: 469, column: 21)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !217, line: 469, column: 21)
!1386 = !DILocation(line: 469, column: 21, scope: !1385)
!1387 = !DILocation(line: 470, column: 21, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !217, line: 470, column: 21)
!1389 = distinct !DILexicalBlock(scope: !1378, file: !217, line: 470, column: 21)
!1390 = !DILocation(line: 470, column: 21, scope: !1389)
!1391 = !DILocation(line: 471, column: 21, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !217, line: 471, column: 21)
!1393 = distinct !DILexicalBlock(scope: !1378, file: !217, line: 471, column: 21)
!1394 = !DILocation(line: 471, column: 21, scope: !1393)
!1395 = !DILocation(line: 472, column: 21, scope: !1378)
!1396 = !DILocation(line: 482, column: 33, scope: !1196)
!1397 = !DILocation(line: 483, column: 33, scope: !1196)
!1398 = !DILocation(line: 485, column: 33, scope: !1196)
!1399 = !DILocation(line: 486, column: 33, scope: !1196)
!1400 = !DILocation(line: 487, column: 33, scope: !1196)
!1401 = !DILocation(line: 490, column: 17, scope: !1196)
!1402 = !DILocation(line: 492, column: 21, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !217, line: 491, column: 15)
!1404 = distinct !DILexicalBlock(scope: !1196, file: !217, line: 490, column: 17)
!1405 = !DILocation(line: 499, column: 35, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1196, file: !217, line: 499, column: 17)
!1407 = !DILocation(line: 499, column: 57, scope: !1406)
!1408 = !DILocation(line: 0, scope: !1196)
!1409 = !DILocation(line: 502, column: 11, scope: !1196)
!1410 = !DILocation(line: 504, column: 17, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1196, file: !217, line: 503, column: 17)
!1412 = !DILocation(line: 507, column: 11, scope: !1196)
!1413 = !DILocation(line: 508, column: 17, scope: !1196)
!1414 = !DILocation(line: 517, column: 15, scope: !1173)
!1415 = !DILocation(line: 517, column: 40, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1173, file: !217, line: 517, column: 15)
!1417 = !DILocation(line: 517, column: 47, scope: !1416)
!1418 = !DILocation(line: 517, column: 18, scope: !1416)
!1419 = !DILocation(line: 521, column: 17, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1173, file: !217, line: 521, column: 15)
!1421 = !DILocation(line: 521, column: 15, scope: !1173)
!1422 = !DILocation(line: 525, column: 11, scope: !1173)
!1423 = !DILocation(line: 537, column: 15, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1173, file: !217, line: 536, column: 15)
!1425 = !DILocation(line: 536, column: 15, scope: !1173)
!1426 = !DILocation(line: 544, column: 15, scope: !1173)
!1427 = !DILocation(line: 546, column: 19, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !217, line: 545, column: 13)
!1429 = distinct !DILexicalBlock(scope: !1173, file: !217, line: 544, column: 15)
!1430 = !DILocation(line: 549, column: 19, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !217, line: 549, column: 19)
!1432 = !DILocation(line: 549, column: 30, scope: !1431)
!1433 = !DILocation(line: 558, column: 15, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !217, line: 558, column: 15)
!1435 = distinct !DILexicalBlock(scope: !1428, file: !217, line: 558, column: 15)
!1436 = !DILocation(line: 558, column: 15, scope: !1435)
!1437 = !DILocation(line: 559, column: 15, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !217, line: 559, column: 15)
!1439 = distinct !DILexicalBlock(scope: !1428, file: !217, line: 559, column: 15)
!1440 = !DILocation(line: 559, column: 15, scope: !1439)
!1441 = !DILocation(line: 560, column: 15, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !217, line: 560, column: 15)
!1443 = distinct !DILexicalBlock(scope: !1428, file: !217, line: 560, column: 15)
!1444 = !DILocation(line: 560, column: 15, scope: !1443)
!1445 = !DILocation(line: 562, column: 13, scope: !1428)
!1446 = !DILocation(line: 602, column: 17, scope: !1172)
!1447 = !DILocation(line: 0, scope: !1172)
!1448 = !DILocation(line: 605, column: 29, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1177, file: !217, line: 603, column: 15)
!1450 = !DILocation(line: 605, column: 41, scope: !1449)
!1451 = !DILocation(line: 670, column: 23, scope: !1193)
!1452 = !DILocation(line: 609, column: 17, scope: !1176)
!1453 = !DILocation(line: 609, column: 27, scope: !1176)
!1454 = !DILocation(line: 0, scope: !1228, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 609, column: 32, scope: !1176)
!1456 = !DILocation(line: 0, scope: !1236, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 1137, column: 3, scope: !1228, inlinedAt: !1455)
!1458 = !DILocation(line: 59, column: 10, scope: !1236, inlinedAt: !1457)
!1459 = !DILocation(line: 613, column: 29, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1176, file: !217, line: 613, column: 21)
!1461 = !DILocation(line: 613, column: 21, scope: !1176)
!1462 = !DILocation(line: 614, column: 29, scope: !1460)
!1463 = !DILocation(line: 614, column: 19, scope: !1460)
!1464 = !DILocation(line: 618, column: 21, scope: !1179)
!1465 = !DILocation(line: 620, column: 54, scope: !1179)
!1466 = !DILocation(line: 0, scope: !1179)
!1467 = !DILocation(line: 619, column: 36, scope: !1179)
!1468 = !DILocation(line: 621, column: 25, scope: !1179)
!1469 = !DILocation(line: 631, column: 38, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1188, file: !217, line: 629, column: 23)
!1471 = !DILocation(line: 631, column: 48, scope: !1470)
!1472 = !DILocation(line: 665, column: 19, scope: !1180)
!1473 = !DILocation(line: 666, column: 15, scope: !1177)
!1474 = !DILocation(line: 626, column: 25, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1189, file: !217, line: 624, column: 23)
!1476 = !DILocation(line: 631, column: 51, scope: !1470)
!1477 = !DILocation(line: 631, column: 25, scope: !1470)
!1478 = !DILocation(line: 632, column: 28, scope: !1470)
!1479 = !DILocation(line: 631, column: 34, scope: !1470)
!1480 = distinct !{!1480, !1477, !1478, !478}
!1481 = !DILocation(line: 646, column: 29, scope: !1186)
!1482 = !DILocation(line: 0, scope: !1184)
!1483 = !DILocation(line: 649, column: 49, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1184, file: !217, line: 648, column: 29)
!1485 = !DILocation(line: 649, column: 39, scope: !1484)
!1486 = !DILocation(line: 649, column: 31, scope: !1484)
!1487 = !DILocation(line: 648, column: 60, scope: !1484)
!1488 = !DILocation(line: 648, column: 50, scope: !1484)
!1489 = !DILocation(line: 648, column: 29, scope: !1184)
!1490 = distinct !{!1490, !1489, !1491, !478}
!1491 = !DILocation(line: 654, column: 33, scope: !1184)
!1492 = !DILocation(line: 657, column: 43, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1187, file: !217, line: 657, column: 29)
!1494 = !DILocalVariable(name: "wc", arg: 1, scope: !1495, file: !1496, line: 865, type: !1499)
!1495 = distinct !DISubprogram(name: "c32isprint", scope: !1496, file: !1496, line: 865, type: !1497, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1501)
!1496 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!31, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1500, line: 20, baseType: !14)
!1500 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1501 = !{!1494}
!1502 = !DILocation(line: 0, scope: !1495, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 657, column: 31, scope: !1493)
!1504 = !DILocation(line: 871, column: 10, scope: !1495, inlinedAt: !1503)
!1505 = !DILocation(line: 657, column: 31, scope: !1493)
!1506 = !DILocation(line: 664, column: 23, scope: !1179)
!1507 = !DILocation(line: 753, column: 2, scope: !1133)
!1508 = !DILocation(line: 756, column: 51, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1133, file: !217, line: 756, column: 7)
!1510 = !DILocation(line: 670, column: 19, scope: !1193)
!1511 = !DILocation(line: 670, column: 45, scope: !1193)
!1512 = !DILocation(line: 674, column: 33, scope: !1192)
!1513 = !DILocation(line: 0, scope: !1192)
!1514 = !DILocation(line: 676, column: 17, scope: !1192)
!1515 = !DILocation(line: 398, column: 12, scope: !1166)
!1516 = !DILocation(line: 678, column: 43, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !217, line: 678, column: 25)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !217, line: 677, column: 19)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !217, line: 676, column: 17)
!1520 = distinct !DILexicalBlock(scope: !1192, file: !217, line: 676, column: 17)
!1521 = !DILocation(line: 680, column: 25, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !217, line: 680, column: 25)
!1523 = distinct !DILexicalBlock(scope: !1517, file: !217, line: 679, column: 23)
!1524 = !DILocation(line: 680, column: 25, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !217, line: 680, column: 25)
!1526 = !DILocation(line: 680, column: 25, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !217, line: 680, column: 25)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !217, line: 680, column: 25)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !217, line: 680, column: 25)
!1530 = !DILocation(line: 680, column: 25, scope: !1528)
!1531 = !DILocation(line: 680, column: 25, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !217, line: 680, column: 25)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !217, line: 680, column: 25)
!1534 = !DILocation(line: 680, column: 25, scope: !1533)
!1535 = !DILocation(line: 680, column: 25, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !217, line: 680, column: 25)
!1537 = distinct !DILexicalBlock(scope: !1529, file: !217, line: 680, column: 25)
!1538 = !DILocation(line: 680, column: 25, scope: !1537)
!1539 = !DILocation(line: 680, column: 25, scope: !1529)
!1540 = !DILocation(line: 680, column: 25, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !217, line: 680, column: 25)
!1542 = distinct !DILexicalBlock(scope: !1522, file: !217, line: 680, column: 25)
!1543 = !DILocation(line: 680, column: 25, scope: !1542)
!1544 = !DILocation(line: 681, column: 25, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !217, line: 681, column: 25)
!1546 = distinct !DILexicalBlock(scope: !1523, file: !217, line: 681, column: 25)
!1547 = !DILocation(line: 681, column: 25, scope: !1546)
!1548 = !DILocation(line: 682, column: 25, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !217, line: 682, column: 25)
!1550 = distinct !DILexicalBlock(scope: !1523, file: !217, line: 682, column: 25)
!1551 = !DILocation(line: 682, column: 25, scope: !1550)
!1552 = !DILocation(line: 683, column: 38, scope: !1523)
!1553 = !DILocation(line: 683, column: 33, scope: !1523)
!1554 = !DILocation(line: 684, column: 23, scope: !1523)
!1555 = !DILocation(line: 685, column: 30, scope: !1517)
!1556 = !DILocation(line: 687, column: 25, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !217, line: 687, column: 25)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !217, line: 687, column: 25)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !217, line: 686, column: 23)
!1560 = distinct !DILexicalBlock(scope: !1517, file: !217, line: 685, column: 30)
!1561 = !DILocation(line: 687, column: 25, scope: !1558)
!1562 = !DILocation(line: 689, column: 23, scope: !1559)
!1563 = !DILocation(line: 690, column: 35, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1518, file: !217, line: 690, column: 25)
!1565 = !DILocation(line: 690, column: 30, scope: !1564)
!1566 = !DILocation(line: 690, column: 25, scope: !1518)
!1567 = !DILocation(line: 692, column: 21, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !217, line: 692, column: 21)
!1569 = distinct !DILexicalBlock(scope: !1518, file: !217, line: 692, column: 21)
!1570 = !DILocation(line: 692, column: 21, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !217, line: 692, column: 21)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !217, line: 692, column: 21)
!1573 = distinct !DILexicalBlock(scope: !1568, file: !217, line: 692, column: 21)
!1574 = !DILocation(line: 692, column: 21, scope: !1572)
!1575 = !DILocation(line: 692, column: 21, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !217, line: 692, column: 21)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !217, line: 692, column: 21)
!1578 = !DILocation(line: 692, column: 21, scope: !1577)
!1579 = !DILocation(line: 692, column: 21, scope: !1573)
!1580 = !DILocation(line: 0, scope: !1518)
!1581 = !DILocation(line: 693, column: 21, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !217, line: 693, column: 21)
!1583 = distinct !DILexicalBlock(scope: !1518, file: !217, line: 693, column: 21)
!1584 = !DILocation(line: 693, column: 21, scope: !1583)
!1585 = !DILocation(line: 694, column: 25, scope: !1518)
!1586 = !DILocation(line: 676, column: 17, scope: !1519)
!1587 = distinct !{!1587, !1588, !1589}
!1588 = !DILocation(line: 676, column: 17, scope: !1520)
!1589 = !DILocation(line: 695, column: 19, scope: !1520)
!1590 = !DILocation(line: 409, column: 30, scope: !1300)
!1591 = !DILocation(line: 702, column: 34, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1166, file: !217, line: 702, column: 11)
!1593 = !DILocation(line: 704, column: 14, scope: !1592)
!1594 = !DILocation(line: 705, column: 14, scope: !1592)
!1595 = !DILocation(line: 705, column: 35, scope: !1592)
!1596 = !DILocation(line: 705, column: 17, scope: !1592)
!1597 = !DILocation(line: 705, column: 47, scope: !1592)
!1598 = !DILocation(line: 705, column: 65, scope: !1592)
!1599 = !DILocation(line: 706, column: 11, scope: !1592)
!1600 = !DILocation(line: 702, column: 11, scope: !1166)
!1601 = !DILocation(line: 395, column: 15, scope: !1164)
!1602 = !DILocation(line: 709, column: 5, scope: !1166)
!1603 = !DILocation(line: 710, column: 7, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1166, file: !217, line: 710, column: 7)
!1605 = !DILocation(line: 710, column: 7, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1604, file: !217, line: 710, column: 7)
!1607 = !DILocation(line: 710, column: 7, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !217, line: 710, column: 7)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !217, line: 710, column: 7)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !217, line: 710, column: 7)
!1611 = !DILocation(line: 710, column: 7, scope: !1609)
!1612 = !DILocation(line: 710, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !217, line: 710, column: 7)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !217, line: 710, column: 7)
!1615 = !DILocation(line: 710, column: 7, scope: !1614)
!1616 = !DILocation(line: 710, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !217, line: 710, column: 7)
!1618 = distinct !DILexicalBlock(scope: !1610, file: !217, line: 710, column: 7)
!1619 = !DILocation(line: 710, column: 7, scope: !1618)
!1620 = !DILocation(line: 710, column: 7, scope: !1610)
!1621 = !DILocation(line: 710, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !217, line: 710, column: 7)
!1623 = distinct !DILexicalBlock(scope: !1604, file: !217, line: 710, column: 7)
!1624 = !DILocation(line: 710, column: 7, scope: !1623)
!1625 = !DILocation(line: 712, column: 5, scope: !1166)
!1626 = !DILocation(line: 713, column: 7, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !217, line: 713, column: 7)
!1628 = distinct !DILexicalBlock(scope: !1166, file: !217, line: 713, column: 7)
!1629 = !DILocation(line: 417, column: 21, scope: !1166)
!1630 = !DILocation(line: 713, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !217, line: 713, column: 7)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !217, line: 713, column: 7)
!1633 = distinct !DILexicalBlock(scope: !1627, file: !217, line: 713, column: 7)
!1634 = !DILocation(line: 713, column: 7, scope: !1632)
!1635 = !DILocation(line: 713, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !217, line: 713, column: 7)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !217, line: 713, column: 7)
!1638 = !DILocation(line: 713, column: 7, scope: !1637)
!1639 = !DILocation(line: 713, column: 7, scope: !1633)
!1640 = !DILocation(line: 714, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !217, line: 714, column: 7)
!1642 = distinct !DILexicalBlock(scope: !1166, file: !217, line: 714, column: 7)
!1643 = !DILocation(line: 714, column: 7, scope: !1642)
!1644 = !DILocation(line: 716, column: 11, scope: !1166)
!1645 = !DILocation(line: 718, column: 5, scope: !1167)
!1646 = !DILocation(line: 395, column: 82, scope: !1167)
!1647 = !DILocation(line: 395, column: 3, scope: !1167)
!1648 = distinct !{!1648, !1296, !1649, !478}
!1649 = !DILocation(line: 718, column: 5, scope: !1164)
!1650 = !DILocation(line: 720, column: 11, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1133, file: !217, line: 720, column: 7)
!1652 = !DILocation(line: 720, column: 16, scope: !1651)
!1653 = !DILocation(line: 728, column: 51, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1133, file: !217, line: 728, column: 7)
!1655 = !DILocation(line: 731, column: 11, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1654, file: !217, line: 730, column: 5)
!1657 = !DILocation(line: 732, column: 16, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1656, file: !217, line: 731, column: 11)
!1659 = !DILocation(line: 732, column: 9, scope: !1658)
!1660 = !DILocation(line: 736, column: 18, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !217, line: 736, column: 16)
!1662 = !DILocation(line: 736, column: 29, scope: !1661)
!1663 = !DILocation(line: 745, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1133, file: !217, line: 745, column: 7)
!1665 = !DILocation(line: 745, column: 20, scope: !1664)
!1666 = !DILocation(line: 746, column: 12, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !217, line: 746, column: 5)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !217, line: 746, column: 5)
!1669 = !DILocation(line: 746, column: 5, scope: !1668)
!1670 = !DILocation(line: 747, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !217, line: 747, column: 7)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !217, line: 747, column: 7)
!1673 = !DILocation(line: 747, column: 7, scope: !1672)
!1674 = !DILocation(line: 746, column: 39, scope: !1667)
!1675 = distinct !{!1675, !1669, !1676, !478}
!1676 = !DILocation(line: 747, column: 7, scope: !1668)
!1677 = !DILocation(line: 749, column: 11, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1133, file: !217, line: 749, column: 7)
!1679 = !DILocation(line: 749, column: 7, scope: !1133)
!1680 = !DILocation(line: 750, column: 5, scope: !1678)
!1681 = !DILocation(line: 750, column: 17, scope: !1678)
!1682 = !DILocation(line: 756, column: 21, scope: !1509)
!1683 = !DILocation(line: 760, column: 42, scope: !1133)
!1684 = !DILocation(line: 758, column: 10, scope: !1133)
!1685 = !DILocation(line: 758, column: 3, scope: !1133)
!1686 = !DILocation(line: 762, column: 1, scope: !1133)
!1687 = !DISubprogram(name: "iswprint", scope: !1688, file: !1688, line: 120, type: !1497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!1688 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1689 = distinct !DISubprogram(name: "quotearg_alloc", scope: !217, file: !217, line: 788, type: !1690, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!29, !6, !33, !1025}
!1692 = !{!1693, !1694, !1695}
!1693 = !DILocalVariable(name: "arg", arg: 1, scope: !1689, file: !217, line: 788, type: !6)
!1694 = !DILocalVariable(name: "argsize", arg: 2, scope: !1689, file: !217, line: 788, type: !33)
!1695 = !DILocalVariable(name: "o", arg: 3, scope: !1689, file: !217, line: 789, type: !1025)
!1696 = !DILocation(line: 0, scope: !1689)
!1697 = !DILocalVariable(name: "arg", arg: 1, scope: !1698, file: !217, line: 801, type: !6)
!1698 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !217, file: !217, line: 801, type: !1699, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!29, !6, !33, !349, !1025}
!1701 = !{!1697, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1702 = !DILocalVariable(name: "argsize", arg: 2, scope: !1698, file: !217, line: 801, type: !33)
!1703 = !DILocalVariable(name: "size", arg: 3, scope: !1698, file: !217, line: 801, type: !349)
!1704 = !DILocalVariable(name: "o", arg: 4, scope: !1698, file: !217, line: 802, type: !1025)
!1705 = !DILocalVariable(name: "p", scope: !1698, file: !217, line: 804, type: !1025)
!1706 = !DILocalVariable(name: "saved_errno", scope: !1698, file: !217, line: 805, type: !31)
!1707 = !DILocalVariable(name: "flags", scope: !1698, file: !217, line: 807, type: !31)
!1708 = !DILocalVariable(name: "bufsize", scope: !1698, file: !217, line: 808, type: !33)
!1709 = !DILocalVariable(name: "buf", scope: !1698, file: !217, line: 812, type: !29)
!1710 = !DILocation(line: 0, scope: !1698, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 791, column: 10, scope: !1689)
!1712 = !DILocation(line: 804, column: 37, scope: !1698, inlinedAt: !1711)
!1713 = !DILocation(line: 805, column: 21, scope: !1698, inlinedAt: !1711)
!1714 = !DILocation(line: 807, column: 18, scope: !1698, inlinedAt: !1711)
!1715 = !DILocation(line: 807, column: 24, scope: !1698, inlinedAt: !1711)
!1716 = !DILocation(line: 808, column: 72, scope: !1698, inlinedAt: !1711)
!1717 = !DILocation(line: 809, column: 53, scope: !1698, inlinedAt: !1711)
!1718 = !DILocation(line: 810, column: 49, scope: !1698, inlinedAt: !1711)
!1719 = !DILocation(line: 811, column: 49, scope: !1698, inlinedAt: !1711)
!1720 = !DILocation(line: 808, column: 20, scope: !1698, inlinedAt: !1711)
!1721 = !DILocation(line: 811, column: 62, scope: !1698, inlinedAt: !1711)
!1722 = !DILocation(line: 812, column: 15, scope: !1698, inlinedAt: !1711)
!1723 = !DILocation(line: 813, column: 60, scope: !1698, inlinedAt: !1711)
!1724 = !DILocation(line: 815, column: 32, scope: !1698, inlinedAt: !1711)
!1725 = !DILocation(line: 815, column: 47, scope: !1698, inlinedAt: !1711)
!1726 = !DILocation(line: 813, column: 3, scope: !1698, inlinedAt: !1711)
!1727 = !DILocation(line: 816, column: 9, scope: !1698, inlinedAt: !1711)
!1728 = !DILocation(line: 791, column: 3, scope: !1689)
!1729 = !DILocation(line: 0, scope: !1698)
!1730 = !DILocation(line: 804, column: 37, scope: !1698)
!1731 = !DILocation(line: 805, column: 21, scope: !1698)
!1732 = !DILocation(line: 807, column: 18, scope: !1698)
!1733 = !DILocation(line: 807, column: 27, scope: !1698)
!1734 = !DILocation(line: 807, column: 24, scope: !1698)
!1735 = !DILocation(line: 808, column: 72, scope: !1698)
!1736 = !DILocation(line: 809, column: 53, scope: !1698)
!1737 = !DILocation(line: 810, column: 49, scope: !1698)
!1738 = !DILocation(line: 811, column: 49, scope: !1698)
!1739 = !DILocation(line: 808, column: 20, scope: !1698)
!1740 = !DILocation(line: 811, column: 62, scope: !1698)
!1741 = !DILocation(line: 812, column: 15, scope: !1698)
!1742 = !DILocation(line: 813, column: 60, scope: !1698)
!1743 = !DILocation(line: 815, column: 32, scope: !1698)
!1744 = !DILocation(line: 815, column: 47, scope: !1698)
!1745 = !DILocation(line: 813, column: 3, scope: !1698)
!1746 = !DILocation(line: 816, column: 9, scope: !1698)
!1747 = !DILocation(line: 817, column: 7, scope: !1698)
!1748 = !DILocation(line: 818, column: 11, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1698, file: !217, line: 817, column: 7)
!1750 = !{!847, !847, i64 0}
!1751 = !DILocation(line: 818, column: 5, scope: !1749)
!1752 = !DILocation(line: 819, column: 3, scope: !1698)
!1753 = distinct !DISubprogram(name: "quotearg_free", scope: !217, file: !217, line: 837, type: !170, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1754)
!1754 = !{!1755, !1756}
!1755 = !DILocalVariable(name: "sv", scope: !1753, file: !217, line: 839, type: !290)
!1756 = !DILocalVariable(name: "i", scope: !1757, file: !217, line: 840, type: !31)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !217, line: 840, column: 3)
!1758 = !DILocation(line: 839, column: 24, scope: !1753)
!1759 = !DILocation(line: 0, scope: !1753)
!1760 = !DILocation(line: 0, scope: !1757)
!1761 = !DILocation(line: 840, column: 21, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !217, line: 840, column: 3)
!1763 = !DILocation(line: 840, column: 3, scope: !1757)
!1764 = !DILocation(line: 842, column: 13, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1753, file: !217, line: 842, column: 7)
!1766 = !{!1767, !415, i64 8}
!1767 = !{!"slotvec", !847, i64 0, !415, i64 8}
!1768 = !DILocation(line: 842, column: 17, scope: !1765)
!1769 = !DILocation(line: 842, column: 7, scope: !1753)
!1770 = !DILocation(line: 841, column: 17, scope: !1762)
!1771 = !DILocation(line: 841, column: 5, scope: !1762)
!1772 = !DILocation(line: 840, column: 32, scope: !1762)
!1773 = distinct !{!1773, !1763, !1774, !478}
!1774 = !DILocation(line: 841, column: 20, scope: !1757)
!1775 = !DILocation(line: 844, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1765, file: !217, line: 843, column: 5)
!1777 = !DILocation(line: 845, column: 21, scope: !1776)
!1778 = !{!1767, !847, i64 0}
!1779 = !DILocation(line: 846, column: 20, scope: !1776)
!1780 = !DILocation(line: 847, column: 5, scope: !1776)
!1781 = !DILocation(line: 848, column: 10, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1753, file: !217, line: 848, column: 7)
!1783 = !DILocation(line: 848, column: 7, scope: !1753)
!1784 = !DILocation(line: 850, column: 13, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !217, line: 849, column: 5)
!1786 = !DILocation(line: 850, column: 7, scope: !1785)
!1787 = !DILocation(line: 851, column: 15, scope: !1785)
!1788 = !DILocation(line: 852, column: 5, scope: !1785)
!1789 = !DILocation(line: 853, column: 10, scope: !1753)
!1790 = !DILocation(line: 854, column: 1, scope: !1753)
!1791 = distinct !DISubprogram(name: "quotearg_n", scope: !217, file: !217, line: 919, type: !602, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1792)
!1792 = !{!1793, !1794}
!1793 = !DILocalVariable(name: "n", arg: 1, scope: !1791, file: !217, line: 919, type: !31)
!1794 = !DILocalVariable(name: "arg", arg: 2, scope: !1791, file: !217, line: 919, type: !6)
!1795 = !DILocation(line: 0, scope: !1791)
!1796 = !DILocation(line: 921, column: 10, scope: !1791)
!1797 = !DILocation(line: 921, column: 3, scope: !1791)
!1798 = distinct !DISubprogram(name: "quotearg_n_options", scope: !217, file: !217, line: 866, type: !1799, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!29, !31, !6, !33, !1025}
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1812, !1813, !1815, !1816, !1817}
!1802 = !DILocalVariable(name: "n", arg: 1, scope: !1798, file: !217, line: 866, type: !31)
!1803 = !DILocalVariable(name: "arg", arg: 2, scope: !1798, file: !217, line: 866, type: !6)
!1804 = !DILocalVariable(name: "argsize", arg: 3, scope: !1798, file: !217, line: 866, type: !33)
!1805 = !DILocalVariable(name: "options", arg: 4, scope: !1798, file: !217, line: 867, type: !1025)
!1806 = !DILocalVariable(name: "saved_errno", scope: !1798, file: !217, line: 869, type: !31)
!1807 = !DILocalVariable(name: "sv", scope: !1798, file: !217, line: 871, type: !290)
!1808 = !DILocalVariable(name: "nslots_max", scope: !1798, file: !217, line: 873, type: !31)
!1809 = !DILocalVariable(name: "preallocated", scope: !1810, file: !217, line: 879, type: !45)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !217, line: 878, column: 5)
!1811 = distinct !DILexicalBlock(scope: !1798, file: !217, line: 877, column: 7)
!1812 = !DILocalVariable(name: "new_nslots", scope: !1810, file: !217, line: 880, type: !362)
!1813 = !DILocalVariable(name: "size", scope: !1814, file: !217, line: 891, type: !33)
!1814 = distinct !DILexicalBlock(scope: !1798, file: !217, line: 890, column: 3)
!1815 = !DILocalVariable(name: "val", scope: !1814, file: !217, line: 892, type: !29)
!1816 = !DILocalVariable(name: "flags", scope: !1814, file: !217, line: 894, type: !31)
!1817 = !DILocalVariable(name: "qsize", scope: !1814, file: !217, line: 895, type: !33)
!1818 = !DILocation(line: 0, scope: !1798)
!1819 = !DILocation(line: 869, column: 21, scope: !1798)
!1820 = !DILocation(line: 871, column: 24, scope: !1798)
!1821 = !DILocation(line: 874, column: 17, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1798, file: !217, line: 874, column: 7)
!1823 = !DILocation(line: 875, column: 5, scope: !1822)
!1824 = !DILocation(line: 877, column: 7, scope: !1811)
!1825 = !DILocation(line: 877, column: 14, scope: !1811)
!1826 = !DILocation(line: 877, column: 7, scope: !1798)
!1827 = !DILocation(line: 879, column: 31, scope: !1810)
!1828 = !DILocation(line: 0, scope: !1810)
!1829 = !DILocation(line: 880, column: 7, scope: !1810)
!1830 = !DILocation(line: 880, column: 26, scope: !1810)
!1831 = !DILocation(line: 880, column: 13, scope: !1810)
!1832 = !DILocation(line: 882, column: 31, scope: !1810)
!1833 = !DILocation(line: 883, column: 33, scope: !1810)
!1834 = !DILocation(line: 883, column: 42, scope: !1810)
!1835 = !DILocation(line: 883, column: 31, scope: !1810)
!1836 = !DILocation(line: 882, column: 22, scope: !1810)
!1837 = !DILocation(line: 882, column: 15, scope: !1810)
!1838 = !DILocation(line: 884, column: 11, scope: !1810)
!1839 = !DILocation(line: 885, column: 15, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1810, file: !217, line: 884, column: 11)
!1841 = !{i64 0, i64 8, !1750, i64 8, i64 8, !414}
!1842 = !DILocation(line: 885, column: 9, scope: !1840)
!1843 = !DILocation(line: 886, column: 20, scope: !1810)
!1844 = !DILocation(line: 886, column: 18, scope: !1810)
!1845 = !DILocation(line: 886, column: 15, scope: !1810)
!1846 = !DILocation(line: 886, column: 32, scope: !1810)
!1847 = !DILocation(line: 886, column: 43, scope: !1810)
!1848 = !DILocation(line: 886, column: 53, scope: !1810)
!1849 = !DILocation(line: 0, scope: !1236, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 886, column: 7, scope: !1810)
!1851 = !DILocation(line: 59, column: 10, scope: !1236, inlinedAt: !1850)
!1852 = !DILocation(line: 887, column: 16, scope: !1810)
!1853 = !DILocation(line: 887, column: 14, scope: !1810)
!1854 = !DILocation(line: 888, column: 5, scope: !1811)
!1855 = !DILocation(line: 888, column: 5, scope: !1810)
!1856 = !DILocation(line: 891, column: 19, scope: !1814)
!1857 = !DILocation(line: 891, column: 25, scope: !1814)
!1858 = !DILocation(line: 0, scope: !1814)
!1859 = !DILocation(line: 892, column: 23, scope: !1814)
!1860 = !DILocation(line: 894, column: 26, scope: !1814)
!1861 = !DILocation(line: 894, column: 32, scope: !1814)
!1862 = !DILocation(line: 896, column: 55, scope: !1814)
!1863 = !DILocation(line: 897, column: 46, scope: !1814)
!1864 = !DILocation(line: 898, column: 55, scope: !1814)
!1865 = !DILocation(line: 899, column: 55, scope: !1814)
!1866 = !DILocation(line: 895, column: 20, scope: !1814)
!1867 = !DILocation(line: 901, column: 14, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1814, file: !217, line: 901, column: 9)
!1869 = !DILocation(line: 901, column: 9, scope: !1814)
!1870 = !DILocation(line: 903, column: 35, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !217, line: 902, column: 7)
!1872 = !DILocation(line: 903, column: 20, scope: !1871)
!1873 = !DILocation(line: 904, column: 17, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !217, line: 904, column: 13)
!1875 = !DILocation(line: 904, column: 13, scope: !1871)
!1876 = !DILocation(line: 905, column: 11, scope: !1874)
!1877 = !DILocation(line: 906, column: 27, scope: !1871)
!1878 = !DILocation(line: 906, column: 19, scope: !1871)
!1879 = !DILocation(line: 907, column: 69, scope: !1871)
!1880 = !DILocation(line: 909, column: 44, scope: !1871)
!1881 = !DILocation(line: 910, column: 44, scope: !1871)
!1882 = !DILocation(line: 907, column: 9, scope: !1871)
!1883 = !DILocation(line: 911, column: 7, scope: !1871)
!1884 = !DILocation(line: 913, column: 11, scope: !1814)
!1885 = !DILocation(line: 914, column: 5, scope: !1814)
!1886 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !217, file: !217, line: 925, type: !1887, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!29, !31, !6, !33}
!1889 = !{!1890, !1891, !1892}
!1890 = !DILocalVariable(name: "n", arg: 1, scope: !1886, file: !217, line: 925, type: !31)
!1891 = !DILocalVariable(name: "arg", arg: 2, scope: !1886, file: !217, line: 925, type: !6)
!1892 = !DILocalVariable(name: "argsize", arg: 3, scope: !1886, file: !217, line: 925, type: !33)
!1893 = !DILocation(line: 0, scope: !1886)
!1894 = !DILocation(line: 927, column: 10, scope: !1886)
!1895 = !DILocation(line: 927, column: 3, scope: !1886)
!1896 = distinct !DISubprogram(name: "quotearg", scope: !217, file: !217, line: 931, type: !611, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1897)
!1897 = !{!1898}
!1898 = !DILocalVariable(name: "arg", arg: 1, scope: !1896, file: !217, line: 931, type: !6)
!1899 = !DILocation(line: 0, scope: !1896)
!1900 = !DILocation(line: 0, scope: !1791, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 933, column: 10, scope: !1896)
!1902 = !DILocation(line: 921, column: 10, scope: !1791, inlinedAt: !1901)
!1903 = !DILocation(line: 933, column: 3, scope: !1896)
!1904 = distinct !DISubprogram(name: "quotearg_mem", scope: !217, file: !217, line: 937, type: !1905, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!29, !6, !33}
!1907 = !{!1908, !1909}
!1908 = !DILocalVariable(name: "arg", arg: 1, scope: !1904, file: !217, line: 937, type: !6)
!1909 = !DILocalVariable(name: "argsize", arg: 2, scope: !1904, file: !217, line: 937, type: !33)
!1910 = !DILocation(line: 0, scope: !1904)
!1911 = !DILocation(line: 0, scope: !1886, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 939, column: 10, scope: !1904)
!1913 = !DILocation(line: 927, column: 10, scope: !1886, inlinedAt: !1912)
!1914 = !DILocation(line: 939, column: 3, scope: !1904)
!1915 = distinct !DISubprogram(name: "quotearg_n_style", scope: !217, file: !217, line: 943, type: !1916, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1918)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!29, !31, !219, !6}
!1918 = !{!1919, !1920, !1921, !1922}
!1919 = !DILocalVariable(name: "n", arg: 1, scope: !1915, file: !217, line: 943, type: !31)
!1920 = !DILocalVariable(name: "s", arg: 2, scope: !1915, file: !217, line: 943, type: !219)
!1921 = !DILocalVariable(name: "arg", arg: 3, scope: !1915, file: !217, line: 943, type: !6)
!1922 = !DILocalVariable(name: "o", scope: !1915, file: !217, line: 945, type: !1026)
!1923 = !DILocation(line: 0, scope: !1915)
!1924 = !DILocation(line: 945, column: 3, scope: !1915)
!1925 = !DILocation(line: 945, column: 32, scope: !1915)
!1926 = !{!1927}
!1927 = distinct !{!1927, !1928, !"quoting_options_from_style: argument 0"}
!1928 = distinct !{!1928, !"quoting_options_from_style"}
!1929 = !DILocation(line: 945, column: 36, scope: !1915)
!1930 = !DILocalVariable(name: "style", arg: 1, scope: !1931, file: !217, line: 183, type: !219)
!1931 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !217, file: !217, line: 183, type: !1932, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!248, !219}
!1934 = !{!1930, !1935}
!1935 = !DILocalVariable(name: "o", scope: !1931, file: !217, line: 185, type: !248)
!1936 = !DILocation(line: 0, scope: !1931, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 945, column: 36, scope: !1915)
!1938 = !DILocation(line: 185, column: 26, scope: !1931, inlinedAt: !1937)
!1939 = !DILocation(line: 186, column: 13, scope: !1940, inlinedAt: !1937)
!1940 = distinct !DILexicalBlock(scope: !1931, file: !217, line: 186, column: 7)
!1941 = !DILocation(line: 186, column: 7, scope: !1931, inlinedAt: !1937)
!1942 = !DILocation(line: 187, column: 5, scope: !1940, inlinedAt: !1937)
!1943 = !DILocation(line: 188, column: 5, scope: !1931, inlinedAt: !1937)
!1944 = !DILocation(line: 188, column: 11, scope: !1931, inlinedAt: !1937)
!1945 = !DILocation(line: 946, column: 10, scope: !1915)
!1946 = !DILocation(line: 947, column: 1, scope: !1915)
!1947 = !DILocation(line: 946, column: 3, scope: !1915)
!1948 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !217, file: !217, line: 950, type: !1949, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!29, !31, !219, !6, !33}
!1951 = !{!1952, !1953, !1954, !1955, !1956}
!1952 = !DILocalVariable(name: "n", arg: 1, scope: !1948, file: !217, line: 950, type: !31)
!1953 = !DILocalVariable(name: "s", arg: 2, scope: !1948, file: !217, line: 950, type: !219)
!1954 = !DILocalVariable(name: "arg", arg: 3, scope: !1948, file: !217, line: 951, type: !6)
!1955 = !DILocalVariable(name: "argsize", arg: 4, scope: !1948, file: !217, line: 951, type: !33)
!1956 = !DILocalVariable(name: "o", scope: !1948, file: !217, line: 953, type: !1026)
!1957 = !DILocation(line: 0, scope: !1948)
!1958 = !DILocation(line: 953, column: 3, scope: !1948)
!1959 = !DILocation(line: 953, column: 32, scope: !1948)
!1960 = !{!1961}
!1961 = distinct !{!1961, !1962, !"quoting_options_from_style: argument 0"}
!1962 = distinct !{!1962, !"quoting_options_from_style"}
!1963 = !DILocation(line: 953, column: 36, scope: !1948)
!1964 = !DILocation(line: 0, scope: !1931, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 953, column: 36, scope: !1948)
!1966 = !DILocation(line: 185, column: 26, scope: !1931, inlinedAt: !1965)
!1967 = !DILocation(line: 186, column: 13, scope: !1940, inlinedAt: !1965)
!1968 = !DILocation(line: 186, column: 7, scope: !1931, inlinedAt: !1965)
!1969 = !DILocation(line: 187, column: 5, scope: !1940, inlinedAt: !1965)
!1970 = !DILocation(line: 188, column: 5, scope: !1931, inlinedAt: !1965)
!1971 = !DILocation(line: 188, column: 11, scope: !1931, inlinedAt: !1965)
!1972 = !DILocation(line: 954, column: 10, scope: !1948)
!1973 = !DILocation(line: 955, column: 1, scope: !1948)
!1974 = !DILocation(line: 954, column: 3, scope: !1948)
!1975 = distinct !DISubprogram(name: "quotearg_style", scope: !217, file: !217, line: 958, type: !1976, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!29, !219, !6}
!1978 = !{!1979, !1980}
!1979 = !DILocalVariable(name: "s", arg: 1, scope: !1975, file: !217, line: 958, type: !219)
!1980 = !DILocalVariable(name: "arg", arg: 2, scope: !1975, file: !217, line: 958, type: !6)
!1981 = !DILocation(line: 0, scope: !1975)
!1982 = !DILocation(line: 0, scope: !1915, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 960, column: 10, scope: !1975)
!1984 = !DILocation(line: 945, column: 3, scope: !1915, inlinedAt: !1983)
!1985 = !DILocation(line: 945, column: 32, scope: !1915, inlinedAt: !1983)
!1986 = !{!1987}
!1987 = distinct !{!1987, !1988, !"quoting_options_from_style: argument 0"}
!1988 = distinct !{!1988, !"quoting_options_from_style"}
!1989 = !DILocation(line: 945, column: 36, scope: !1915, inlinedAt: !1983)
!1990 = !DILocation(line: 0, scope: !1931, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 945, column: 36, scope: !1915, inlinedAt: !1983)
!1992 = !DILocation(line: 185, column: 26, scope: !1931, inlinedAt: !1991)
!1993 = !DILocation(line: 186, column: 13, scope: !1940, inlinedAt: !1991)
!1994 = !DILocation(line: 186, column: 7, scope: !1931, inlinedAt: !1991)
!1995 = !DILocation(line: 187, column: 5, scope: !1940, inlinedAt: !1991)
!1996 = !DILocation(line: 188, column: 5, scope: !1931, inlinedAt: !1991)
!1997 = !DILocation(line: 188, column: 11, scope: !1931, inlinedAt: !1991)
!1998 = !DILocation(line: 946, column: 10, scope: !1915, inlinedAt: !1983)
!1999 = !DILocation(line: 947, column: 1, scope: !1915, inlinedAt: !1983)
!2000 = !DILocation(line: 960, column: 3, scope: !1975)
!2001 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !217, file: !217, line: 964, type: !2002, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!29, !219, !6, !33}
!2004 = !{!2005, !2006, !2007}
!2005 = !DILocalVariable(name: "s", arg: 1, scope: !2001, file: !217, line: 964, type: !219)
!2006 = !DILocalVariable(name: "arg", arg: 2, scope: !2001, file: !217, line: 964, type: !6)
!2007 = !DILocalVariable(name: "argsize", arg: 3, scope: !2001, file: !217, line: 964, type: !33)
!2008 = !DILocation(line: 0, scope: !2001)
!2009 = !DILocation(line: 0, scope: !1948, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 966, column: 10, scope: !2001)
!2011 = !DILocation(line: 953, column: 3, scope: !1948, inlinedAt: !2010)
!2012 = !DILocation(line: 953, column: 32, scope: !1948, inlinedAt: !2010)
!2013 = !{!2014}
!2014 = distinct !{!2014, !2015, !"quoting_options_from_style: argument 0"}
!2015 = distinct !{!2015, !"quoting_options_from_style"}
!2016 = !DILocation(line: 953, column: 36, scope: !1948, inlinedAt: !2010)
!2017 = !DILocation(line: 0, scope: !1931, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 953, column: 36, scope: !1948, inlinedAt: !2010)
!2019 = !DILocation(line: 185, column: 26, scope: !1931, inlinedAt: !2018)
!2020 = !DILocation(line: 186, column: 13, scope: !1940, inlinedAt: !2018)
!2021 = !DILocation(line: 186, column: 7, scope: !1931, inlinedAt: !2018)
!2022 = !DILocation(line: 187, column: 5, scope: !1940, inlinedAt: !2018)
!2023 = !DILocation(line: 188, column: 5, scope: !1931, inlinedAt: !2018)
!2024 = !DILocation(line: 188, column: 11, scope: !1931, inlinedAt: !2018)
!2025 = !DILocation(line: 954, column: 10, scope: !1948, inlinedAt: !2010)
!2026 = !DILocation(line: 955, column: 1, scope: !1948, inlinedAt: !2010)
!2027 = !DILocation(line: 966, column: 3, scope: !2001)
!2028 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !217, file: !217, line: 970, type: !2029, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!29, !6, !33, !8}
!2031 = !{!2032, !2033, !2034, !2035}
!2032 = !DILocalVariable(name: "arg", arg: 1, scope: !2028, file: !217, line: 970, type: !6)
!2033 = !DILocalVariable(name: "argsize", arg: 2, scope: !2028, file: !217, line: 970, type: !33)
!2034 = !DILocalVariable(name: "ch", arg: 3, scope: !2028, file: !217, line: 970, type: !8)
!2035 = !DILocalVariable(name: "options", scope: !2028, file: !217, line: 972, type: !248)
!2036 = !DILocation(line: 0, scope: !2028)
!2037 = !DILocation(line: 972, column: 3, scope: !2028)
!2038 = !DILocation(line: 972, column: 26, scope: !2028)
!2039 = !DILocation(line: 973, column: 13, scope: !2028)
!2040 = !{i64 0, i64 4, !440, i64 4, i64 4, !431, i64 8, i64 32, !440, i64 40, i64 8, !414, i64 48, i64 8, !414}
!2041 = !DILocation(line: 0, scope: !1046, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 974, column: 3, scope: !2028)
!2043 = !DILocation(line: 147, column: 62, scope: !1046, inlinedAt: !2042)
!2044 = !DILocation(line: 147, column: 57, scope: !1046, inlinedAt: !2042)
!2045 = !DILocation(line: 148, column: 15, scope: !1046, inlinedAt: !2042)
!2046 = !DILocation(line: 149, column: 21, scope: !1046, inlinedAt: !2042)
!2047 = !DILocation(line: 149, column: 24, scope: !1046, inlinedAt: !2042)
!2048 = !DILocation(line: 149, column: 34, scope: !1046, inlinedAt: !2042)
!2049 = !DILocation(line: 150, column: 19, scope: !1046, inlinedAt: !2042)
!2050 = !DILocation(line: 150, column: 24, scope: !1046, inlinedAt: !2042)
!2051 = !DILocation(line: 150, column: 6, scope: !1046, inlinedAt: !2042)
!2052 = !DILocation(line: 975, column: 10, scope: !2028)
!2053 = !DILocation(line: 976, column: 1, scope: !2028)
!2054 = !DILocation(line: 975, column: 3, scope: !2028)
!2055 = distinct !DISubprogram(name: "quotearg_char", scope: !217, file: !217, line: 979, type: !2056, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!29, !6, !8}
!2058 = !{!2059, !2060}
!2059 = !DILocalVariable(name: "arg", arg: 1, scope: !2055, file: !217, line: 979, type: !6)
!2060 = !DILocalVariable(name: "ch", arg: 2, scope: !2055, file: !217, line: 979, type: !8)
!2061 = !DILocation(line: 0, scope: !2055)
!2062 = !DILocation(line: 0, scope: !2028, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 981, column: 10, scope: !2055)
!2064 = !DILocation(line: 972, column: 3, scope: !2028, inlinedAt: !2063)
!2065 = !DILocation(line: 972, column: 26, scope: !2028, inlinedAt: !2063)
!2066 = !DILocation(line: 973, column: 13, scope: !2028, inlinedAt: !2063)
!2067 = !DILocation(line: 0, scope: !1046, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 974, column: 3, scope: !2028, inlinedAt: !2063)
!2069 = !DILocation(line: 147, column: 62, scope: !1046, inlinedAt: !2068)
!2070 = !DILocation(line: 147, column: 57, scope: !1046, inlinedAt: !2068)
!2071 = !DILocation(line: 148, column: 15, scope: !1046, inlinedAt: !2068)
!2072 = !DILocation(line: 149, column: 21, scope: !1046, inlinedAt: !2068)
!2073 = !DILocation(line: 149, column: 24, scope: !1046, inlinedAt: !2068)
!2074 = !DILocation(line: 149, column: 34, scope: !1046, inlinedAt: !2068)
!2075 = !DILocation(line: 150, column: 19, scope: !1046, inlinedAt: !2068)
!2076 = !DILocation(line: 150, column: 24, scope: !1046, inlinedAt: !2068)
!2077 = !DILocation(line: 150, column: 6, scope: !1046, inlinedAt: !2068)
!2078 = !DILocation(line: 975, column: 10, scope: !2028, inlinedAt: !2063)
!2079 = !DILocation(line: 976, column: 1, scope: !2028, inlinedAt: !2063)
!2080 = !DILocation(line: 981, column: 3, scope: !2055)
!2081 = distinct !DISubprogram(name: "quotearg_colon", scope: !217, file: !217, line: 985, type: !611, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2082)
!2082 = !{!2083}
!2083 = !DILocalVariable(name: "arg", arg: 1, scope: !2081, file: !217, line: 985, type: !6)
!2084 = !DILocation(line: 0, scope: !2081)
!2085 = !DILocation(line: 0, scope: !2055, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 987, column: 10, scope: !2081)
!2087 = !DILocation(line: 0, scope: !2028, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 981, column: 10, scope: !2055, inlinedAt: !2086)
!2089 = !DILocation(line: 972, column: 3, scope: !2028, inlinedAt: !2088)
!2090 = !DILocation(line: 972, column: 26, scope: !2028, inlinedAt: !2088)
!2091 = !DILocation(line: 973, column: 13, scope: !2028, inlinedAt: !2088)
!2092 = !DILocation(line: 0, scope: !1046, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 974, column: 3, scope: !2028, inlinedAt: !2088)
!2094 = !DILocation(line: 147, column: 57, scope: !1046, inlinedAt: !2093)
!2095 = !DILocation(line: 149, column: 21, scope: !1046, inlinedAt: !2093)
!2096 = !DILocation(line: 150, column: 6, scope: !1046, inlinedAt: !2093)
!2097 = !DILocation(line: 975, column: 10, scope: !2028, inlinedAt: !2088)
!2098 = !DILocation(line: 976, column: 1, scope: !2028, inlinedAt: !2088)
!2099 = !DILocation(line: 987, column: 3, scope: !2081)
!2100 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !217, file: !217, line: 991, type: !1905, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2101)
!2101 = !{!2102, !2103}
!2102 = !DILocalVariable(name: "arg", arg: 1, scope: !2100, file: !217, line: 991, type: !6)
!2103 = !DILocalVariable(name: "argsize", arg: 2, scope: !2100, file: !217, line: 991, type: !33)
!2104 = !DILocation(line: 0, scope: !2100)
!2105 = !DILocation(line: 0, scope: !2028, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 993, column: 10, scope: !2100)
!2107 = !DILocation(line: 972, column: 3, scope: !2028, inlinedAt: !2106)
!2108 = !DILocation(line: 972, column: 26, scope: !2028, inlinedAt: !2106)
!2109 = !DILocation(line: 973, column: 13, scope: !2028, inlinedAt: !2106)
!2110 = !DILocation(line: 0, scope: !1046, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 974, column: 3, scope: !2028, inlinedAt: !2106)
!2112 = !DILocation(line: 147, column: 57, scope: !1046, inlinedAt: !2111)
!2113 = !DILocation(line: 149, column: 21, scope: !1046, inlinedAt: !2111)
!2114 = !DILocation(line: 150, column: 6, scope: !1046, inlinedAt: !2111)
!2115 = !DILocation(line: 975, column: 10, scope: !2028, inlinedAt: !2106)
!2116 = !DILocation(line: 976, column: 1, scope: !2028, inlinedAt: !2106)
!2117 = !DILocation(line: 993, column: 3, scope: !2100)
!2118 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !217, file: !217, line: 997, type: !1916, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2119)
!2119 = !{!2120, !2121, !2122, !2123}
!2120 = !DILocalVariable(name: "n", arg: 1, scope: !2118, file: !217, line: 997, type: !31)
!2121 = !DILocalVariable(name: "s", arg: 2, scope: !2118, file: !217, line: 997, type: !219)
!2122 = !DILocalVariable(name: "arg", arg: 3, scope: !2118, file: !217, line: 997, type: !6)
!2123 = !DILocalVariable(name: "options", scope: !2118, file: !217, line: 999, type: !248)
!2124 = !DILocation(line: 0, scope: !2118)
!2125 = !DILocation(line: 999, column: 3, scope: !2118)
!2126 = !DILocation(line: 999, column: 26, scope: !2118)
!2127 = !DILocation(line: 0, scope: !1931, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 1000, column: 13, scope: !2118)
!2129 = !DILocation(line: 186, column: 13, scope: !1940, inlinedAt: !2128)
!2130 = !DILocation(line: 186, column: 7, scope: !1931, inlinedAt: !2128)
!2131 = !DILocation(line: 187, column: 5, scope: !1940, inlinedAt: !2128)
!2132 = !{!2133}
!2133 = distinct !{!2133, !2134, !"quoting_options_from_style: argument 0"}
!2134 = distinct !{!2134, !"quoting_options_from_style"}
!2135 = !DILocation(line: 1000, column: 13, scope: !2118)
!2136 = !DILocation(line: 0, scope: !1046, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 1001, column: 3, scope: !2118)
!2138 = !DILocation(line: 147, column: 57, scope: !1046, inlinedAt: !2137)
!2139 = !DILocation(line: 149, column: 21, scope: !1046, inlinedAt: !2137)
!2140 = !DILocation(line: 150, column: 6, scope: !1046, inlinedAt: !2137)
!2141 = !DILocation(line: 1002, column: 10, scope: !2118)
!2142 = !DILocation(line: 1003, column: 1, scope: !2118)
!2143 = !DILocation(line: 1002, column: 3, scope: !2118)
!2144 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !217, file: !217, line: 1006, type: !2145, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!29, !31, !6, !6, !6}
!2147 = !{!2148, !2149, !2150, !2151}
!2148 = !DILocalVariable(name: "n", arg: 1, scope: !2144, file: !217, line: 1006, type: !31)
!2149 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2144, file: !217, line: 1006, type: !6)
!2150 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2144, file: !217, line: 1007, type: !6)
!2151 = !DILocalVariable(name: "arg", arg: 4, scope: !2144, file: !217, line: 1007, type: !6)
!2152 = !DILocation(line: 0, scope: !2144)
!2153 = !DILocalVariable(name: "n", arg: 1, scope: !2154, file: !217, line: 1014, type: !31)
!2154 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !217, file: !217, line: 1014, type: !2155, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!29, !31, !6, !6, !6, !33}
!2157 = !{!2153, !2158, !2159, !2160, !2161, !2162}
!2158 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2154, file: !217, line: 1014, type: !6)
!2159 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2154, file: !217, line: 1015, type: !6)
!2160 = !DILocalVariable(name: "arg", arg: 4, scope: !2154, file: !217, line: 1016, type: !6)
!2161 = !DILocalVariable(name: "argsize", arg: 5, scope: !2154, file: !217, line: 1016, type: !33)
!2162 = !DILocalVariable(name: "o", scope: !2154, file: !217, line: 1018, type: !248)
!2163 = !DILocation(line: 0, scope: !2154, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 1009, column: 10, scope: !2144)
!2165 = !DILocation(line: 1018, column: 3, scope: !2154, inlinedAt: !2164)
!2166 = !DILocation(line: 1018, column: 26, scope: !2154, inlinedAt: !2164)
!2167 = !DILocation(line: 1018, column: 30, scope: !2154, inlinedAt: !2164)
!2168 = !DILocation(line: 0, scope: !1086, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 1019, column: 3, scope: !2154, inlinedAt: !2164)
!2170 = !DILocation(line: 174, column: 6, scope: !1086, inlinedAt: !2169)
!2171 = !DILocation(line: 174, column: 12, scope: !1086, inlinedAt: !2169)
!2172 = !DILocation(line: 175, column: 8, scope: !1100, inlinedAt: !2169)
!2173 = !DILocation(line: 175, column: 19, scope: !1100, inlinedAt: !2169)
!2174 = !DILocation(line: 176, column: 5, scope: !1100, inlinedAt: !2169)
!2175 = !DILocation(line: 177, column: 6, scope: !1086, inlinedAt: !2169)
!2176 = !DILocation(line: 177, column: 17, scope: !1086, inlinedAt: !2169)
!2177 = !DILocation(line: 178, column: 6, scope: !1086, inlinedAt: !2169)
!2178 = !DILocation(line: 178, column: 18, scope: !1086, inlinedAt: !2169)
!2179 = !DILocation(line: 1020, column: 10, scope: !2154, inlinedAt: !2164)
!2180 = !DILocation(line: 1021, column: 1, scope: !2154, inlinedAt: !2164)
!2181 = !DILocation(line: 1009, column: 3, scope: !2144)
!2182 = !DILocation(line: 0, scope: !2154)
!2183 = !DILocation(line: 1018, column: 3, scope: !2154)
!2184 = !DILocation(line: 1018, column: 26, scope: !2154)
!2185 = !DILocation(line: 1018, column: 30, scope: !2154)
!2186 = !DILocation(line: 0, scope: !1086, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 1019, column: 3, scope: !2154)
!2188 = !DILocation(line: 174, column: 6, scope: !1086, inlinedAt: !2187)
!2189 = !DILocation(line: 174, column: 12, scope: !1086, inlinedAt: !2187)
!2190 = !DILocation(line: 175, column: 8, scope: !1100, inlinedAt: !2187)
!2191 = !DILocation(line: 175, column: 19, scope: !1100, inlinedAt: !2187)
!2192 = !DILocation(line: 176, column: 5, scope: !1100, inlinedAt: !2187)
!2193 = !DILocation(line: 177, column: 6, scope: !1086, inlinedAt: !2187)
!2194 = !DILocation(line: 177, column: 17, scope: !1086, inlinedAt: !2187)
!2195 = !DILocation(line: 178, column: 6, scope: !1086, inlinedAt: !2187)
!2196 = !DILocation(line: 178, column: 18, scope: !1086, inlinedAt: !2187)
!2197 = !DILocation(line: 1020, column: 10, scope: !2154)
!2198 = !DILocation(line: 1021, column: 1, scope: !2154)
!2199 = !DILocation(line: 1020, column: 3, scope: !2154)
!2200 = distinct !DISubprogram(name: "quotearg_custom", scope: !217, file: !217, line: 1024, type: !2201, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!29, !6, !6, !6}
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2200, file: !217, line: 1024, type: !6)
!2205 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2200, file: !217, line: 1024, type: !6)
!2206 = !DILocalVariable(name: "arg", arg: 3, scope: !2200, file: !217, line: 1025, type: !6)
!2207 = !DILocation(line: 0, scope: !2200)
!2208 = !DILocation(line: 0, scope: !2144, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 1027, column: 10, scope: !2200)
!2210 = !DILocation(line: 0, scope: !2154, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 1009, column: 10, scope: !2144, inlinedAt: !2209)
!2212 = !DILocation(line: 1018, column: 3, scope: !2154, inlinedAt: !2211)
!2213 = !DILocation(line: 1018, column: 26, scope: !2154, inlinedAt: !2211)
!2214 = !DILocation(line: 1018, column: 30, scope: !2154, inlinedAt: !2211)
!2215 = !DILocation(line: 0, scope: !1086, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 1019, column: 3, scope: !2154, inlinedAt: !2211)
!2217 = !DILocation(line: 174, column: 6, scope: !1086, inlinedAt: !2216)
!2218 = !DILocation(line: 174, column: 12, scope: !1086, inlinedAt: !2216)
!2219 = !DILocation(line: 175, column: 8, scope: !1100, inlinedAt: !2216)
!2220 = !DILocation(line: 175, column: 19, scope: !1100, inlinedAt: !2216)
!2221 = !DILocation(line: 176, column: 5, scope: !1100, inlinedAt: !2216)
!2222 = !DILocation(line: 177, column: 6, scope: !1086, inlinedAt: !2216)
!2223 = !DILocation(line: 177, column: 17, scope: !1086, inlinedAt: !2216)
!2224 = !DILocation(line: 178, column: 6, scope: !1086, inlinedAt: !2216)
!2225 = !DILocation(line: 178, column: 18, scope: !1086, inlinedAt: !2216)
!2226 = !DILocation(line: 1020, column: 10, scope: !2154, inlinedAt: !2211)
!2227 = !DILocation(line: 1021, column: 1, scope: !2154, inlinedAt: !2211)
!2228 = !DILocation(line: 1027, column: 3, scope: !2200)
!2229 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !217, file: !217, line: 1031, type: !2230, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!29, !6, !6, !6, !33}
!2232 = !{!2233, !2234, !2235, !2236}
!2233 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2229, file: !217, line: 1031, type: !6)
!2234 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2229, file: !217, line: 1031, type: !6)
!2235 = !DILocalVariable(name: "arg", arg: 3, scope: !2229, file: !217, line: 1032, type: !6)
!2236 = !DILocalVariable(name: "argsize", arg: 4, scope: !2229, file: !217, line: 1032, type: !33)
!2237 = !DILocation(line: 0, scope: !2229)
!2238 = !DILocation(line: 0, scope: !2154, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 1034, column: 10, scope: !2229)
!2240 = !DILocation(line: 1018, column: 3, scope: !2154, inlinedAt: !2239)
!2241 = !DILocation(line: 1018, column: 26, scope: !2154, inlinedAt: !2239)
!2242 = !DILocation(line: 1018, column: 30, scope: !2154, inlinedAt: !2239)
!2243 = !DILocation(line: 0, scope: !1086, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 1019, column: 3, scope: !2154, inlinedAt: !2239)
!2245 = !DILocation(line: 174, column: 6, scope: !1086, inlinedAt: !2244)
!2246 = !DILocation(line: 174, column: 12, scope: !1086, inlinedAt: !2244)
!2247 = !DILocation(line: 175, column: 8, scope: !1100, inlinedAt: !2244)
!2248 = !DILocation(line: 175, column: 19, scope: !1100, inlinedAt: !2244)
!2249 = !DILocation(line: 176, column: 5, scope: !1100, inlinedAt: !2244)
!2250 = !DILocation(line: 177, column: 6, scope: !1086, inlinedAt: !2244)
!2251 = !DILocation(line: 177, column: 17, scope: !1086, inlinedAt: !2244)
!2252 = !DILocation(line: 178, column: 6, scope: !1086, inlinedAt: !2244)
!2253 = !DILocation(line: 178, column: 18, scope: !1086, inlinedAt: !2244)
!2254 = !DILocation(line: 1020, column: 10, scope: !2154, inlinedAt: !2239)
!2255 = !DILocation(line: 1021, column: 1, scope: !2154, inlinedAt: !2239)
!2256 = !DILocation(line: 1034, column: 3, scope: !2229)
!2257 = distinct !DISubprogram(name: "quote_n_mem", scope: !217, file: !217, line: 1049, type: !2258, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!6, !31, !6, !33}
!2260 = !{!2261, !2262, !2263}
!2261 = !DILocalVariable(name: "n", arg: 1, scope: !2257, file: !217, line: 1049, type: !31)
!2262 = !DILocalVariable(name: "arg", arg: 2, scope: !2257, file: !217, line: 1049, type: !6)
!2263 = !DILocalVariable(name: "argsize", arg: 3, scope: !2257, file: !217, line: 1049, type: !33)
!2264 = !DILocation(line: 0, scope: !2257)
!2265 = !DILocation(line: 1051, column: 10, scope: !2257)
!2266 = !DILocation(line: 1051, column: 3, scope: !2257)
!2267 = distinct !DISubprogram(name: "quote_mem", scope: !217, file: !217, line: 1055, type: !2268, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!6, !6, !33}
!2270 = !{!2271, !2272}
!2271 = !DILocalVariable(name: "arg", arg: 1, scope: !2267, file: !217, line: 1055, type: !6)
!2272 = !DILocalVariable(name: "argsize", arg: 2, scope: !2267, file: !217, line: 1055, type: !33)
!2273 = !DILocation(line: 0, scope: !2267)
!2274 = !DILocation(line: 0, scope: !2257, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 1057, column: 10, scope: !2267)
!2276 = !DILocation(line: 1051, column: 10, scope: !2257, inlinedAt: !2275)
!2277 = !DILocation(line: 1057, column: 3, scope: !2267)
!2278 = distinct !DISubprogram(name: "quote_n", scope: !217, file: !217, line: 1061, type: !2279, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!6, !31, !6}
!2281 = !{!2282, !2283}
!2282 = !DILocalVariable(name: "n", arg: 1, scope: !2278, file: !217, line: 1061, type: !31)
!2283 = !DILocalVariable(name: "arg", arg: 2, scope: !2278, file: !217, line: 1061, type: !6)
!2284 = !DILocation(line: 0, scope: !2278)
!2285 = !DILocation(line: 0, scope: !2257, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 1063, column: 10, scope: !2278)
!2287 = !DILocation(line: 1051, column: 10, scope: !2257, inlinedAt: !2286)
!2288 = !DILocation(line: 1063, column: 3, scope: !2278)
!2289 = distinct !DISubprogram(name: "quote", scope: !217, file: !217, line: 1067, type: !2290, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!6, !6}
!2292 = !{!2293}
!2293 = !DILocalVariable(name: "arg", arg: 1, scope: !2289, file: !217, line: 1067, type: !6)
!2294 = !DILocation(line: 0, scope: !2289)
!2295 = !DILocation(line: 0, scope: !2278, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 1069, column: 10, scope: !2289)
!2297 = !DILocation(line: 0, scope: !2257, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 1063, column: 10, scope: !2278, inlinedAt: !2296)
!2299 = !DILocation(line: 1051, column: 10, scope: !2257, inlinedAt: !2298)
!2300 = !DILocation(line: 1069, column: 3, scope: !2289)
!2301 = distinct !DISubprogram(name: "version_etc_arn", scope: !336, file: !336, line: 61, type: !2302, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2339)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !2304, !6, !6, !6, !2338, !33}
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2306, file: !62, line: 51, baseType: !31, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2306, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2306, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2306, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2306, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2306, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2306, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2306, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2306, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2306, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2306, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2306, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2306, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2306, file: !62, line: 70, baseType: !2322, size: 64, offset: 832)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2306, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2306, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2306, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2306, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2306, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2306, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2306, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2306, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2306, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2306, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2306, file: !62, line: 93, baseType: !2322, size: 64, offset: 1344)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2306, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2306, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2306, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2306, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345}
!2340 = !DILocalVariable(name: "stream", arg: 1, scope: !2301, file: !336, line: 61, type: !2304)
!2341 = !DILocalVariable(name: "command_name", arg: 2, scope: !2301, file: !336, line: 62, type: !6)
!2342 = !DILocalVariable(name: "package", arg: 3, scope: !2301, file: !336, line: 62, type: !6)
!2343 = !DILocalVariable(name: "version", arg: 4, scope: !2301, file: !336, line: 63, type: !6)
!2344 = !DILocalVariable(name: "authors", arg: 5, scope: !2301, file: !336, line: 64, type: !2338)
!2345 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2301, file: !336, line: 64, type: !33)
!2346 = !DILocation(line: 0, scope: !2301)
!2347 = !DILocation(line: 66, column: 7, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2301, file: !336, line: 66, column: 7)
!2349 = !DILocation(line: 66, column: 7, scope: !2301)
!2350 = !DILocation(line: 67, column: 5, scope: !2348)
!2351 = !DILocation(line: 69, column: 5, scope: !2348)
!2352 = !DILocation(line: 83, column: 3, scope: !2301)
!2353 = !DILocation(line: 85, column: 3, scope: !2301)
!2354 = !DILocation(line: 88, column: 3, scope: !2301)
!2355 = !DILocation(line: 95, column: 3, scope: !2301)
!2356 = !DILocation(line: 97, column: 3, scope: !2301)
!2357 = !DILocation(line: 105, column: 7, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2301, file: !336, line: 98, column: 5)
!2359 = !DILocation(line: 106, column: 7, scope: !2358)
!2360 = !DILocation(line: 109, column: 7, scope: !2358)
!2361 = !DILocation(line: 110, column: 7, scope: !2358)
!2362 = !DILocation(line: 113, column: 7, scope: !2358)
!2363 = !DILocation(line: 115, column: 7, scope: !2358)
!2364 = !DILocation(line: 120, column: 7, scope: !2358)
!2365 = !DILocation(line: 122, column: 7, scope: !2358)
!2366 = !DILocation(line: 127, column: 7, scope: !2358)
!2367 = !DILocation(line: 129, column: 7, scope: !2358)
!2368 = !DILocation(line: 134, column: 7, scope: !2358)
!2369 = !DILocation(line: 137, column: 7, scope: !2358)
!2370 = !DILocation(line: 142, column: 7, scope: !2358)
!2371 = !DILocation(line: 145, column: 7, scope: !2358)
!2372 = !DILocation(line: 150, column: 7, scope: !2358)
!2373 = !DILocation(line: 154, column: 7, scope: !2358)
!2374 = !DILocation(line: 159, column: 7, scope: !2358)
!2375 = !DILocation(line: 163, column: 7, scope: !2358)
!2376 = !DILocation(line: 170, column: 7, scope: !2358)
!2377 = !DILocation(line: 174, column: 7, scope: !2358)
!2378 = !DILocation(line: 176, column: 1, scope: !2301)
!2379 = distinct !DISubprogram(name: "version_etc_ar", scope: !336, file: !336, line: 183, type: !2380, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2304, !6, !6, !6, !2338}
!2382 = !{!2383, !2384, !2385, !2386, !2387, !2388}
!2383 = !DILocalVariable(name: "stream", arg: 1, scope: !2379, file: !336, line: 183, type: !2304)
!2384 = !DILocalVariable(name: "command_name", arg: 2, scope: !2379, file: !336, line: 184, type: !6)
!2385 = !DILocalVariable(name: "package", arg: 3, scope: !2379, file: !336, line: 184, type: !6)
!2386 = !DILocalVariable(name: "version", arg: 4, scope: !2379, file: !336, line: 185, type: !6)
!2387 = !DILocalVariable(name: "authors", arg: 5, scope: !2379, file: !336, line: 185, type: !2338)
!2388 = !DILocalVariable(name: "n_authors", scope: !2379, file: !336, line: 187, type: !33)
!2389 = !DILocation(line: 0, scope: !2379)
!2390 = !DILocation(line: 189, column: 8, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2379, file: !336, line: 189, column: 3)
!2392 = !DILocation(line: 0, scope: !2391)
!2393 = !DILocation(line: 189, column: 23, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2391, file: !336, line: 189, column: 3)
!2395 = !DILocation(line: 189, column: 3, scope: !2391)
!2396 = !DILocation(line: 189, column: 52, scope: !2394)
!2397 = distinct !{!2397, !2395, !2398, !478}
!2398 = !DILocation(line: 190, column: 5, scope: !2391)
!2399 = !DILocation(line: 191, column: 3, scope: !2379)
!2400 = !DILocation(line: 192, column: 1, scope: !2379)
!2401 = distinct !DISubprogram(name: "version_etc_va", scope: !336, file: !336, line: 199, type: !2402, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2415)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !2304, !6, !6, !6, !2404}
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 52, baseType: !2405)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !145, line: 32, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2407, baseType: !2408)
!2407 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !149, size: 256, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2413, !2414}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2408, file: !2407, line: 192, baseType: !30, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2408, file: !2407, line: 192, baseType: !30, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2408, file: !2407, line: 192, baseType: !30, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2408, file: !2407, line: 192, baseType: !31, size: 32, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2408, file: !2407, line: 192, baseType: !31, size: 32, offset: 224)
!2415 = !{!2416, !2417, !2418, !2419, !2420, !2421, !2422}
!2416 = !DILocalVariable(name: "stream", arg: 1, scope: !2401, file: !336, line: 199, type: !2304)
!2417 = !DILocalVariable(name: "command_name", arg: 2, scope: !2401, file: !336, line: 200, type: !6)
!2418 = !DILocalVariable(name: "package", arg: 3, scope: !2401, file: !336, line: 200, type: !6)
!2419 = !DILocalVariable(name: "version", arg: 4, scope: !2401, file: !336, line: 201, type: !6)
!2420 = !DILocalVariable(name: "authors", arg: 5, scope: !2401, file: !336, line: 201, type: !2404)
!2421 = !DILocalVariable(name: "n_authors", scope: !2401, file: !336, line: 203, type: !33)
!2422 = !DILocalVariable(name: "authtab", scope: !2401, file: !336, line: 204, type: !2423)
!2423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !244)
!2424 = !DILocation(line: 0, scope: !2401)
!2425 = !DILocation(line: 201, column: 46, scope: !2401)
!2426 = !DILocation(line: 204, column: 3, scope: !2401)
!2427 = !DILocation(line: 204, column: 15, scope: !2401)
!2428 = !DILocation(line: 208, column: 35, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !336, line: 206, column: 3)
!2430 = distinct !DILexicalBlock(scope: !2401, file: !336, line: 206, column: 3)
!2431 = !DILocation(line: 208, column: 14, scope: !2429)
!2432 = !DILocation(line: 208, column: 33, scope: !2429)
!2433 = !DILocation(line: 208, column: 67, scope: !2429)
!2434 = !DILocation(line: 206, column: 3, scope: !2430)
!2435 = !DILocation(line: 0, scope: !2430)
!2436 = !DILocation(line: 211, column: 3, scope: !2401)
!2437 = !DILocation(line: 213, column: 1, scope: !2401)
!2438 = distinct !DISubprogram(name: "version_etc", scope: !336, file: !336, line: 230, type: !2439, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{null, !2304, !6, !6, !6, null}
!2441 = !{!2442, !2443, !2444, !2445, !2446}
!2442 = !DILocalVariable(name: "stream", arg: 1, scope: !2438, file: !336, line: 230, type: !2304)
!2443 = !DILocalVariable(name: "command_name", arg: 2, scope: !2438, file: !336, line: 231, type: !6)
!2444 = !DILocalVariable(name: "package", arg: 3, scope: !2438, file: !336, line: 231, type: !6)
!2445 = !DILocalVariable(name: "version", arg: 4, scope: !2438, file: !336, line: 232, type: !6)
!2446 = !DILocalVariable(name: "authors", scope: !2438, file: !336, line: 234, type: !2404)
!2447 = !DILocation(line: 0, scope: !2438)
!2448 = !DILocation(line: 234, column: 3, scope: !2438)
!2449 = !DILocation(line: 234, column: 11, scope: !2438)
!2450 = !DILocation(line: 235, column: 3, scope: !2438)
!2451 = !DILocation(line: 236, column: 3, scope: !2438)
!2452 = !DILocation(line: 237, column: 3, scope: !2438)
!2453 = !DILocation(line: 238, column: 1, scope: !2438)
!2454 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !336, file: !336, line: 241, type: !170, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !428)
!2455 = !DILocation(line: 243, column: 3, scope: !2454)
!2456 = !DILocation(line: 248, column: 3, scope: !2454)
!2457 = !DILocation(line: 254, column: 3, scope: !2454)
!2458 = !DILocation(line: 259, column: 3, scope: !2454)
!2459 = !DILocation(line: 261, column: 1, scope: !2454)
!2460 = distinct !DISubprogram(name: "xnrealloc", scope: !2461, file: !2461, line: 147, type: !2462, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2464)
!2461 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!30, !30, !33, !33}
!2464 = !{!2465, !2466, !2467}
!2465 = !DILocalVariable(name: "p", arg: 1, scope: !2460, file: !2461, line: 147, type: !30)
!2466 = !DILocalVariable(name: "n", arg: 2, scope: !2460, file: !2461, line: 147, type: !33)
!2467 = !DILocalVariable(name: "s", arg: 3, scope: !2460, file: !2461, line: 147, type: !33)
!2468 = !DILocation(line: 0, scope: !2460)
!2469 = !DILocalVariable(name: "p", arg: 1, scope: !2470, file: !343, line: 83, type: !30)
!2470 = distinct !DISubprogram(name: "xreallocarray", scope: !343, file: !343, line: 83, type: !2462, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2471)
!2471 = !{!2469, !2472, !2473}
!2472 = !DILocalVariable(name: "n", arg: 2, scope: !2470, file: !343, line: 83, type: !33)
!2473 = !DILocalVariable(name: "s", arg: 3, scope: !2470, file: !343, line: 83, type: !33)
!2474 = !DILocation(line: 0, scope: !2470, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 149, column: 10, scope: !2460)
!2476 = !DILocation(line: 85, column: 25, scope: !2470, inlinedAt: !2475)
!2477 = !DILocalVariable(name: "p", arg: 1, scope: !2478, file: !343, line: 37, type: !30)
!2478 = distinct !DISubprogram(name: "check_nonnull", scope: !343, file: !343, line: 37, type: !2479, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!30, !30}
!2481 = !{!2477}
!2482 = !DILocation(line: 0, scope: !2478, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 85, column: 10, scope: !2470, inlinedAt: !2475)
!2484 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2483)
!2485 = distinct !DILexicalBlock(scope: !2478, file: !343, line: 39, column: 7)
!2486 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2483)
!2487 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2483)
!2488 = !DILocation(line: 149, column: 3, scope: !2460)
!2489 = !DILocation(line: 0, scope: !2470)
!2490 = !DILocation(line: 85, column: 25, scope: !2470)
!2491 = !DILocation(line: 0, scope: !2478, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 85, column: 10, scope: !2470)
!2493 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2492)
!2494 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2492)
!2495 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2492)
!2496 = !DILocation(line: 85, column: 3, scope: !2470)
!2497 = distinct !DISubprogram(name: "xmalloc", scope: !343, file: !343, line: 47, type: !2498, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!30, !33}
!2500 = !{!2501}
!2501 = !DILocalVariable(name: "s", arg: 1, scope: !2497, file: !343, line: 47, type: !33)
!2502 = !DILocation(line: 0, scope: !2497)
!2503 = !DILocation(line: 49, column: 25, scope: !2497)
!2504 = !DILocation(line: 0, scope: !2478, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 49, column: 10, scope: !2497)
!2506 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2505)
!2507 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2505)
!2508 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2505)
!2509 = !DILocation(line: 49, column: 3, scope: !2497)
!2510 = distinct !DISubprogram(name: "ximalloc", scope: !343, file: !343, line: 53, type: !2511, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2513)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!30, !362}
!2513 = !{!2514}
!2514 = !DILocalVariable(name: "s", arg: 1, scope: !2510, file: !343, line: 53, type: !362)
!2515 = !DILocation(line: 0, scope: !2510)
!2516 = !DILocalVariable(name: "s", arg: 1, scope: !2517, file: !2518, line: 55, type: !362)
!2517 = distinct !DISubprogram(name: "imalloc", scope: !2518, file: !2518, line: 55, type: !2511, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2519)
!2518 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2519 = !{!2516}
!2520 = !DILocation(line: 0, scope: !2517, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 55, column: 25, scope: !2510)
!2522 = !DILocation(line: 57, column: 26, scope: !2517, inlinedAt: !2521)
!2523 = !DILocation(line: 0, scope: !2478, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 55, column: 10, scope: !2510)
!2525 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2524)
!2526 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2524)
!2527 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2524)
!2528 = !DILocation(line: 55, column: 3, scope: !2510)
!2529 = distinct !DISubprogram(name: "xcharalloc", scope: !343, file: !343, line: 59, type: !2530, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!29, !33}
!2532 = !{!2533}
!2533 = !DILocalVariable(name: "n", arg: 1, scope: !2529, file: !343, line: 59, type: !33)
!2534 = !DILocation(line: 0, scope: !2529)
!2535 = !DILocation(line: 0, scope: !2497, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 61, column: 10, scope: !2529)
!2537 = !DILocation(line: 49, column: 25, scope: !2497, inlinedAt: !2536)
!2538 = !DILocation(line: 0, scope: !2478, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 49, column: 10, scope: !2497, inlinedAt: !2536)
!2540 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2539)
!2541 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2539)
!2542 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2539)
!2543 = !DILocation(line: 61, column: 3, scope: !2529)
!2544 = distinct !DISubprogram(name: "xrealloc", scope: !343, file: !343, line: 68, type: !2545, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!30, !30, !33}
!2547 = !{!2548, !2549}
!2548 = !DILocalVariable(name: "p", arg: 1, scope: !2544, file: !343, line: 68, type: !30)
!2549 = !DILocalVariable(name: "s", arg: 2, scope: !2544, file: !343, line: 68, type: !33)
!2550 = !DILocation(line: 0, scope: !2544)
!2551 = !DILocalVariable(name: "ptr", arg: 1, scope: !2552, file: !2553, line: 2057, type: !30)
!2552 = distinct !DISubprogram(name: "rpl_realloc", scope: !2553, file: !2553, line: 2057, type: !2545, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2554)
!2553 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2554 = !{!2551, !2555}
!2555 = !DILocalVariable(name: "size", arg: 2, scope: !2552, file: !2553, line: 2057, type: !33)
!2556 = !DILocation(line: 0, scope: !2552, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 70, column: 25, scope: !2544)
!2558 = !DILocation(line: 2059, column: 24, scope: !2552, inlinedAt: !2557)
!2559 = !DILocation(line: 2059, column: 10, scope: !2552, inlinedAt: !2557)
!2560 = !DILocation(line: 0, scope: !2478, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 70, column: 10, scope: !2544)
!2562 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2561)
!2563 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2561)
!2564 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2561)
!2565 = !DILocation(line: 70, column: 3, scope: !2544)
!2566 = distinct !DISubprogram(name: "xirealloc", scope: !343, file: !343, line: 74, type: !2567, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!30, !30, !362}
!2569 = !{!2570, !2571}
!2570 = !DILocalVariable(name: "p", arg: 1, scope: !2566, file: !343, line: 74, type: !30)
!2571 = !DILocalVariable(name: "s", arg: 2, scope: !2566, file: !343, line: 74, type: !362)
!2572 = !DILocation(line: 0, scope: !2566)
!2573 = !DILocalVariable(name: "p", arg: 1, scope: !2574, file: !2518, line: 66, type: !30)
!2574 = distinct !DISubprogram(name: "irealloc", scope: !2518, file: !2518, line: 66, type: !2567, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2575)
!2575 = !{!2573, !2576}
!2576 = !DILocalVariable(name: "s", arg: 2, scope: !2574, file: !2518, line: 66, type: !362)
!2577 = !DILocation(line: 0, scope: !2574, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 76, column: 25, scope: !2566)
!2579 = !DILocation(line: 0, scope: !2552, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 68, column: 26, scope: !2574, inlinedAt: !2578)
!2581 = !DILocation(line: 2059, column: 24, scope: !2552, inlinedAt: !2580)
!2582 = !DILocation(line: 2059, column: 10, scope: !2552, inlinedAt: !2580)
!2583 = !DILocation(line: 0, scope: !2478, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 76, column: 10, scope: !2566)
!2585 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2584)
!2586 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2584)
!2587 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2584)
!2588 = !DILocation(line: 76, column: 3, scope: !2566)
!2589 = distinct !DISubprogram(name: "xireallocarray", scope: !343, file: !343, line: 89, type: !2590, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!30, !30, !362, !362}
!2592 = !{!2593, !2594, !2595}
!2593 = !DILocalVariable(name: "p", arg: 1, scope: !2589, file: !343, line: 89, type: !30)
!2594 = !DILocalVariable(name: "n", arg: 2, scope: !2589, file: !343, line: 89, type: !362)
!2595 = !DILocalVariable(name: "s", arg: 3, scope: !2589, file: !343, line: 89, type: !362)
!2596 = !DILocation(line: 0, scope: !2589)
!2597 = !DILocalVariable(name: "p", arg: 1, scope: !2598, file: !2518, line: 98, type: !30)
!2598 = distinct !DISubprogram(name: "ireallocarray", scope: !2518, file: !2518, line: 98, type: !2590, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2599)
!2599 = !{!2597, !2600, !2601}
!2600 = !DILocalVariable(name: "n", arg: 2, scope: !2598, file: !2518, line: 98, type: !362)
!2601 = !DILocalVariable(name: "s", arg: 3, scope: !2598, file: !2518, line: 98, type: !362)
!2602 = !DILocation(line: 0, scope: !2598, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 91, column: 25, scope: !2589)
!2604 = !DILocation(line: 101, column: 13, scope: !2598, inlinedAt: !2603)
!2605 = !DILocation(line: 0, scope: !2478, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 91, column: 10, scope: !2589)
!2607 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2606)
!2608 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2606)
!2609 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2606)
!2610 = !DILocation(line: 91, column: 3, scope: !2589)
!2611 = distinct !DISubprogram(name: "xnmalloc", scope: !343, file: !343, line: 98, type: !2612, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!30, !33, !33}
!2614 = !{!2615, !2616}
!2615 = !DILocalVariable(name: "n", arg: 1, scope: !2611, file: !343, line: 98, type: !33)
!2616 = !DILocalVariable(name: "s", arg: 2, scope: !2611, file: !343, line: 98, type: !33)
!2617 = !DILocation(line: 0, scope: !2611)
!2618 = !DILocation(line: 0, scope: !2470, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 100, column: 10, scope: !2611)
!2620 = !DILocation(line: 85, column: 25, scope: !2470, inlinedAt: !2619)
!2621 = !DILocation(line: 0, scope: !2478, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 85, column: 10, scope: !2470, inlinedAt: !2619)
!2623 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2622)
!2624 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2622)
!2625 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2622)
!2626 = !DILocation(line: 100, column: 3, scope: !2611)
!2627 = distinct !DISubprogram(name: "xinmalloc", scope: !343, file: !343, line: 104, type: !2628, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!30, !362, !362}
!2630 = !{!2631, !2632}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !343, line: 104, type: !362)
!2632 = !DILocalVariable(name: "s", arg: 2, scope: !2627, file: !343, line: 104, type: !362)
!2633 = !DILocation(line: 0, scope: !2627)
!2634 = !DILocation(line: 0, scope: !2589, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 106, column: 10, scope: !2627)
!2636 = !DILocation(line: 0, scope: !2598, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 91, column: 25, scope: !2589, inlinedAt: !2635)
!2638 = !DILocation(line: 101, column: 13, scope: !2598, inlinedAt: !2637)
!2639 = !DILocation(line: 0, scope: !2478, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 91, column: 10, scope: !2589, inlinedAt: !2635)
!2641 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2640)
!2642 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2640)
!2643 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2640)
!2644 = !DILocation(line: 106, column: 3, scope: !2627)
!2645 = distinct !DISubprogram(name: "x2realloc", scope: !343, file: !343, line: 116, type: !2646, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!30, !30, !349}
!2648 = !{!2649, !2650}
!2649 = !DILocalVariable(name: "p", arg: 1, scope: !2645, file: !343, line: 116, type: !30)
!2650 = !DILocalVariable(name: "ps", arg: 2, scope: !2645, file: !343, line: 116, type: !349)
!2651 = !DILocation(line: 0, scope: !2645)
!2652 = !DILocation(line: 0, scope: !346, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 118, column: 10, scope: !2645)
!2654 = !DILocation(line: 178, column: 14, scope: !346, inlinedAt: !2653)
!2655 = !DILocation(line: 180, column: 9, scope: !2656, inlinedAt: !2653)
!2656 = distinct !DILexicalBlock(scope: !346, file: !343, line: 180, column: 7)
!2657 = !DILocation(line: 180, column: 7, scope: !346, inlinedAt: !2653)
!2658 = !DILocation(line: 182, column: 13, scope: !2659, inlinedAt: !2653)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !343, line: 182, column: 11)
!2660 = distinct !DILexicalBlock(scope: !2656, file: !343, line: 181, column: 5)
!2661 = !DILocation(line: 182, column: 11, scope: !2660, inlinedAt: !2653)
!2662 = !DILocation(line: 197, column: 11, scope: !2663, inlinedAt: !2653)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !343, line: 197, column: 11)
!2664 = distinct !DILexicalBlock(scope: !2656, file: !343, line: 195, column: 5)
!2665 = !DILocation(line: 197, column: 11, scope: !2664, inlinedAt: !2653)
!2666 = !DILocation(line: 198, column: 9, scope: !2663, inlinedAt: !2653)
!2667 = !DILocation(line: 0, scope: !2470, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 201, column: 7, scope: !346, inlinedAt: !2653)
!2669 = !DILocation(line: 85, column: 25, scope: !2470, inlinedAt: !2668)
!2670 = !DILocation(line: 0, scope: !2478, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 85, column: 10, scope: !2470, inlinedAt: !2668)
!2672 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2671)
!2673 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2671)
!2674 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2671)
!2675 = !DILocation(line: 202, column: 7, scope: !346, inlinedAt: !2653)
!2676 = !DILocation(line: 118, column: 3, scope: !2645)
!2677 = !DILocation(line: 0, scope: !346)
!2678 = !DILocation(line: 178, column: 14, scope: !346)
!2679 = !DILocation(line: 180, column: 9, scope: !2656)
!2680 = !DILocation(line: 180, column: 7, scope: !346)
!2681 = !DILocation(line: 182, column: 13, scope: !2659)
!2682 = !DILocation(line: 182, column: 11, scope: !2660)
!2683 = !DILocation(line: 190, column: 30, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2659, file: !343, line: 183, column: 9)
!2685 = !DILocation(line: 191, column: 16, scope: !2684)
!2686 = !DILocation(line: 191, column: 13, scope: !2684)
!2687 = !DILocation(line: 192, column: 9, scope: !2684)
!2688 = !DILocation(line: 197, column: 11, scope: !2663)
!2689 = !DILocation(line: 197, column: 11, scope: !2664)
!2690 = !DILocation(line: 198, column: 9, scope: !2663)
!2691 = !DILocation(line: 0, scope: !2470, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 201, column: 7, scope: !346)
!2693 = !DILocation(line: 85, column: 25, scope: !2470, inlinedAt: !2692)
!2694 = !DILocation(line: 0, scope: !2478, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 85, column: 10, scope: !2470, inlinedAt: !2692)
!2696 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2695)
!2697 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2695)
!2698 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2695)
!2699 = !DILocation(line: 202, column: 7, scope: !346)
!2700 = !DILocation(line: 203, column: 3, scope: !346)
!2701 = !DILocation(line: 0, scope: !358)
!2702 = !DILocation(line: 230, column: 14, scope: !358)
!2703 = !DILocation(line: 238, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !358, file: !343, line: 238, column: 7)
!2705 = !DILocation(line: 238, column: 7, scope: !358)
!2706 = !DILocation(line: 240, column: 9, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !358, file: !343, line: 240, column: 7)
!2708 = !DILocation(line: 240, column: 18, scope: !2707)
!2709 = !DILocation(line: 253, column: 8, scope: !358)
!2710 = !DILocation(line: 258, column: 27, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !343, line: 257, column: 5)
!2712 = distinct !DILexicalBlock(scope: !358, file: !343, line: 256, column: 7)
!2713 = !DILocation(line: 259, column: 32, scope: !2711)
!2714 = !DILocation(line: 260, column: 5, scope: !2711)
!2715 = !DILocation(line: 262, column: 9, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !358, file: !343, line: 262, column: 7)
!2717 = !DILocation(line: 262, column: 7, scope: !358)
!2718 = !DILocation(line: 263, column: 9, scope: !2716)
!2719 = !DILocation(line: 263, column: 5, scope: !2716)
!2720 = !DILocation(line: 264, column: 9, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !358, file: !343, line: 264, column: 7)
!2722 = !DILocation(line: 264, column: 14, scope: !2721)
!2723 = !DILocation(line: 265, column: 7, scope: !2721)
!2724 = !DILocation(line: 265, column: 11, scope: !2721)
!2725 = !DILocation(line: 266, column: 11, scope: !2721)
!2726 = !DILocation(line: 266, column: 26, scope: !2721)
!2727 = !DILocation(line: 267, column: 14, scope: !2721)
!2728 = !DILocation(line: 264, column: 7, scope: !358)
!2729 = !DILocation(line: 268, column: 5, scope: !2721)
!2730 = !DILocation(line: 0, scope: !2544, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 269, column: 8, scope: !358)
!2732 = !DILocation(line: 0, scope: !2552, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 70, column: 25, scope: !2544, inlinedAt: !2731)
!2734 = !DILocation(line: 2059, column: 24, scope: !2552, inlinedAt: !2733)
!2735 = !DILocation(line: 2059, column: 10, scope: !2552, inlinedAt: !2733)
!2736 = !DILocation(line: 0, scope: !2478, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 70, column: 10, scope: !2544, inlinedAt: !2731)
!2738 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2737)
!2739 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2737)
!2740 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2737)
!2741 = !DILocation(line: 270, column: 7, scope: !358)
!2742 = !DILocation(line: 271, column: 3, scope: !358)
!2743 = distinct !DISubprogram(name: "xzalloc", scope: !343, file: !343, line: 279, type: !2498, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2744)
!2744 = !{!2745}
!2745 = !DILocalVariable(name: "s", arg: 1, scope: !2743, file: !343, line: 279, type: !33)
!2746 = !DILocation(line: 0, scope: !2743)
!2747 = !DILocalVariable(name: "n", arg: 1, scope: !2748, file: !343, line: 294, type: !33)
!2748 = distinct !DISubprogram(name: "xcalloc", scope: !343, file: !343, line: 294, type: !2612, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2749)
!2749 = !{!2747, !2750}
!2750 = !DILocalVariable(name: "s", arg: 2, scope: !2748, file: !343, line: 294, type: !33)
!2751 = !DILocation(line: 0, scope: !2748, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 281, column: 10, scope: !2743)
!2753 = !DILocation(line: 296, column: 25, scope: !2748, inlinedAt: !2752)
!2754 = !DILocation(line: 0, scope: !2478, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 296, column: 10, scope: !2748, inlinedAt: !2752)
!2756 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2755)
!2757 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2755)
!2758 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2755)
!2759 = !DILocation(line: 281, column: 3, scope: !2743)
!2760 = !DILocation(line: 0, scope: !2748)
!2761 = !DILocation(line: 296, column: 25, scope: !2748)
!2762 = !DILocation(line: 0, scope: !2478, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 296, column: 10, scope: !2748)
!2764 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2763)
!2765 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2763)
!2766 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2763)
!2767 = !DILocation(line: 296, column: 3, scope: !2748)
!2768 = distinct !DISubprogram(name: "xizalloc", scope: !343, file: !343, line: 285, type: !2511, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2769)
!2769 = !{!2770}
!2770 = !DILocalVariable(name: "s", arg: 1, scope: !2768, file: !343, line: 285, type: !362)
!2771 = !DILocation(line: 0, scope: !2768)
!2772 = !DILocalVariable(name: "n", arg: 1, scope: !2773, file: !343, line: 300, type: !362)
!2773 = distinct !DISubprogram(name: "xicalloc", scope: !343, file: !343, line: 300, type: !2628, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2774)
!2774 = !{!2772, !2775}
!2775 = !DILocalVariable(name: "s", arg: 2, scope: !2773, file: !343, line: 300, type: !362)
!2776 = !DILocation(line: 0, scope: !2773, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 287, column: 10, scope: !2768)
!2778 = !DILocalVariable(name: "n", arg: 1, scope: !2779, file: !2518, line: 77, type: !362)
!2779 = distinct !DISubprogram(name: "icalloc", scope: !2518, file: !2518, line: 77, type: !2628, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2780)
!2780 = !{!2778, !2781}
!2781 = !DILocalVariable(name: "s", arg: 2, scope: !2779, file: !2518, line: 77, type: !362)
!2782 = !DILocation(line: 0, scope: !2779, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 302, column: 25, scope: !2773, inlinedAt: !2777)
!2784 = !DILocation(line: 91, column: 10, scope: !2779, inlinedAt: !2783)
!2785 = !DILocation(line: 0, scope: !2478, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 302, column: 10, scope: !2773, inlinedAt: !2777)
!2787 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2786)
!2788 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2786)
!2789 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2786)
!2790 = !DILocation(line: 287, column: 3, scope: !2768)
!2791 = !DILocation(line: 0, scope: !2773)
!2792 = !DILocation(line: 0, scope: !2779, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 302, column: 25, scope: !2773)
!2794 = !DILocation(line: 91, column: 10, scope: !2779, inlinedAt: !2793)
!2795 = !DILocation(line: 0, scope: !2478, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 302, column: 10, scope: !2773)
!2797 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2796)
!2798 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2796)
!2799 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2796)
!2800 = !DILocation(line: 302, column: 3, scope: !2773)
!2801 = distinct !DISubprogram(name: "xmemdup", scope: !343, file: !343, line: 310, type: !2802, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!30, !617, !33}
!2804 = !{!2805, !2806}
!2805 = !DILocalVariable(name: "p", arg: 1, scope: !2801, file: !343, line: 310, type: !617)
!2806 = !DILocalVariable(name: "s", arg: 2, scope: !2801, file: !343, line: 310, type: !33)
!2807 = !DILocation(line: 0, scope: !2801)
!2808 = !DILocation(line: 0, scope: !2497, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 312, column: 18, scope: !2801)
!2810 = !DILocation(line: 49, column: 25, scope: !2497, inlinedAt: !2809)
!2811 = !DILocation(line: 0, scope: !2478, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 49, column: 10, scope: !2497, inlinedAt: !2809)
!2813 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2812)
!2814 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2812)
!2815 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2812)
!2816 = !DILocalVariable(name: "__dest", arg: 1, scope: !2817, file: !988, line: 26, type: !2820)
!2817 = distinct !DISubprogram(name: "memcpy", scope: !988, file: !988, line: 26, type: !2818, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2821)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!30, !2820, !616, !33}
!2820 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!2821 = !{!2816, !2822, !2823}
!2822 = !DILocalVariable(name: "__src", arg: 2, scope: !2817, file: !988, line: 26, type: !616)
!2823 = !DILocalVariable(name: "__len", arg: 3, scope: !2817, file: !988, line: 26, type: !33)
!2824 = !DILocation(line: 0, scope: !2817, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 312, column: 10, scope: !2801)
!2826 = !DILocation(line: 29, column: 10, scope: !2817, inlinedAt: !2825)
!2827 = !DILocation(line: 312, column: 3, scope: !2801)
!2828 = distinct !DISubprogram(name: "ximemdup", scope: !343, file: !343, line: 316, type: !2829, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!30, !617, !362}
!2831 = !{!2832, !2833}
!2832 = !DILocalVariable(name: "p", arg: 1, scope: !2828, file: !343, line: 316, type: !617)
!2833 = !DILocalVariable(name: "s", arg: 2, scope: !2828, file: !343, line: 316, type: !362)
!2834 = !DILocation(line: 0, scope: !2828)
!2835 = !DILocation(line: 0, scope: !2510, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 318, column: 18, scope: !2828)
!2837 = !DILocation(line: 0, scope: !2517, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 55, column: 25, scope: !2510, inlinedAt: !2836)
!2839 = !DILocation(line: 57, column: 26, scope: !2517, inlinedAt: !2838)
!2840 = !DILocation(line: 0, scope: !2478, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 55, column: 10, scope: !2510, inlinedAt: !2836)
!2842 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2841)
!2843 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2841)
!2844 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2841)
!2845 = !DILocation(line: 0, scope: !2817, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 318, column: 10, scope: !2828)
!2847 = !DILocation(line: 29, column: 10, scope: !2817, inlinedAt: !2846)
!2848 = !DILocation(line: 318, column: 3, scope: !2828)
!2849 = distinct !DISubprogram(name: "ximemdup0", scope: !343, file: !343, line: 325, type: !2850, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!29, !617, !362}
!2852 = !{!2853, !2854, !2855}
!2853 = !DILocalVariable(name: "p", arg: 1, scope: !2849, file: !343, line: 325, type: !617)
!2854 = !DILocalVariable(name: "s", arg: 2, scope: !2849, file: !343, line: 325, type: !362)
!2855 = !DILocalVariable(name: "result", scope: !2849, file: !343, line: 327, type: !29)
!2856 = !DILocation(line: 0, scope: !2849)
!2857 = !DILocation(line: 327, column: 30, scope: !2849)
!2858 = !DILocation(line: 0, scope: !2510, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 327, column: 18, scope: !2849)
!2860 = !DILocation(line: 0, scope: !2517, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 55, column: 25, scope: !2510, inlinedAt: !2859)
!2862 = !DILocation(line: 57, column: 26, scope: !2517, inlinedAt: !2861)
!2863 = !DILocation(line: 0, scope: !2478, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 55, column: 10, scope: !2510, inlinedAt: !2859)
!2865 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2864)
!2866 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2864)
!2867 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2864)
!2868 = !DILocation(line: 328, column: 3, scope: !2849)
!2869 = !DILocation(line: 328, column: 13, scope: !2849)
!2870 = !DILocation(line: 0, scope: !2817, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 329, column: 10, scope: !2849)
!2872 = !DILocation(line: 29, column: 10, scope: !2817, inlinedAt: !2871)
!2873 = !DILocation(line: 329, column: 3, scope: !2849)
!2874 = distinct !DISubprogram(name: "xstrdup", scope: !343, file: !343, line: 335, type: !611, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2875)
!2875 = !{!2876}
!2876 = !DILocalVariable(name: "string", arg: 1, scope: !2874, file: !343, line: 335, type: !6)
!2877 = !DILocation(line: 0, scope: !2874)
!2878 = !DILocation(line: 337, column: 27, scope: !2874)
!2879 = !DILocation(line: 337, column: 43, scope: !2874)
!2880 = !DILocation(line: 0, scope: !2801, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 337, column: 10, scope: !2874)
!2882 = !DILocation(line: 0, scope: !2497, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 312, column: 18, scope: !2801, inlinedAt: !2881)
!2884 = !DILocation(line: 49, column: 25, scope: !2497, inlinedAt: !2883)
!2885 = !DILocation(line: 0, scope: !2478, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 49, column: 10, scope: !2497, inlinedAt: !2883)
!2887 = !DILocation(line: 39, column: 8, scope: !2485, inlinedAt: !2886)
!2888 = !DILocation(line: 39, column: 7, scope: !2478, inlinedAt: !2886)
!2889 = !DILocation(line: 40, column: 5, scope: !2485, inlinedAt: !2886)
!2890 = !DILocation(line: 0, scope: !2817, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 312, column: 10, scope: !2801, inlinedAt: !2881)
!2892 = !DILocation(line: 29, column: 10, scope: !2817, inlinedAt: !2891)
!2893 = !DILocation(line: 337, column: 3, scope: !2874)
!2894 = distinct !DISubprogram(name: "xalloc_die", scope: !377, file: !377, line: 32, type: !170, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2895)
!2895 = !{!2896}
!2896 = !DILocalVariable(name: "__errstatus", scope: !2897, file: !377, line: 34, type: !2898)
!2897 = distinct !DILexicalBlock(scope: !2894, file: !377, line: 34, column: 3)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!2899 = !DILocation(line: 34, column: 3, scope: !2897)
!2900 = !DILocation(line: 0, scope: !2897)
!2901 = !DILocation(line: 40, column: 3, scope: !2894)
!2902 = distinct !DISubprogram(name: "close_stream", scope: !379, file: !379, line: 55, type: !2903, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !2939)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!31, !2905}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !2907)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !2908)
!2908 = !{!2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2907, file: !62, line: 51, baseType: !31, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2907, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2907, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2907, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2907, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2907, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2907, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2907, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2907, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2907, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2907, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2907, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2907, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2907, file: !62, line: 70, baseType: !2923, size: 64, offset: 832)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2907, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2907, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2907, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2907, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2907, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2907, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2907, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2907, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2907, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2907, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2907, file: !62, line: 93, baseType: !2923, size: 64, offset: 1344)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2907, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2907, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2907, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2907, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!2939 = !{!2940, !2941, !2943, !2944}
!2940 = !DILocalVariable(name: "stream", arg: 1, scope: !2902, file: !379, line: 55, type: !2905)
!2941 = !DILocalVariable(name: "some_pending", scope: !2902, file: !379, line: 57, type: !2942)
!2942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!2943 = !DILocalVariable(name: "prev_fail", scope: !2902, file: !379, line: 58, type: !2942)
!2944 = !DILocalVariable(name: "fclose_fail", scope: !2902, file: !379, line: 59, type: !2942)
!2945 = !DILocation(line: 0, scope: !2902)
!2946 = !DILocation(line: 57, column: 30, scope: !2902)
!2947 = !DILocalVariable(name: "__stream", arg: 1, scope: !2948, file: !837, line: 135, type: !2905)
!2948 = distinct !DISubprogram(name: "ferror_unlocked", scope: !837, file: !837, line: 135, type: !2903, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !2949)
!2949 = !{!2947}
!2950 = !DILocation(line: 0, scope: !2948, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 58, column: 27, scope: !2902)
!2952 = !DILocation(line: 137, column: 10, scope: !2948, inlinedAt: !2951)
!2953 = !{!846, !432, i64 0}
!2954 = !DILocation(line: 58, column: 43, scope: !2902)
!2955 = !DILocation(line: 59, column: 29, scope: !2902)
!2956 = !DILocation(line: 59, column: 45, scope: !2902)
!2957 = !DILocation(line: 69, column: 17, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2902, file: !379, line: 69, column: 7)
!2959 = !DILocation(line: 57, column: 50, scope: !2902)
!2960 = !DILocation(line: 69, column: 33, scope: !2958)
!2961 = !DILocation(line: 69, column: 53, scope: !2958)
!2962 = !DILocation(line: 69, column: 59, scope: !2958)
!2963 = !DILocation(line: 69, column: 7, scope: !2902)
!2964 = !DILocation(line: 71, column: 11, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2958, file: !379, line: 70, column: 5)
!2966 = !DILocation(line: 72, column: 9, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2965, file: !379, line: 71, column: 11)
!2968 = !DILocation(line: 72, column: 15, scope: !2967)
!2969 = !DILocation(line: 77, column: 1, scope: !2902)
!2970 = distinct !DISubprogram(name: "rpl_fclose", scope: !381, file: !381, line: 58, type: !2971, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3007)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!31, !2973}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !2975)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !2976)
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2975, file: !62, line: 51, baseType: !31, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2975, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2975, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2975, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2975, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2975, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2975, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2975, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2975, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2975, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2975, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2975, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2975, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2975, file: !62, line: 70, baseType: !2991, size: 64, offset: 832)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2975, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2975, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2975, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2975, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2975, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2975, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2975, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2975, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2975, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2975, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2975, file: !62, line: 93, baseType: !2991, size: 64, offset: 1344)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2975, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2975, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2975, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2975, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!3007 = !{!3008, !3009, !3010, !3011}
!3008 = !DILocalVariable(name: "fp", arg: 1, scope: !2970, file: !381, line: 58, type: !2973)
!3009 = !DILocalVariable(name: "saved_errno", scope: !2970, file: !381, line: 60, type: !31)
!3010 = !DILocalVariable(name: "fd", scope: !2970, file: !381, line: 63, type: !31)
!3011 = !DILocalVariable(name: "result", scope: !2970, file: !381, line: 74, type: !31)
!3012 = !DILocation(line: 0, scope: !2970)
!3013 = !DILocation(line: 63, column: 12, scope: !2970)
!3014 = !DILocation(line: 64, column: 10, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2970, file: !381, line: 64, column: 7)
!3016 = !DILocation(line: 64, column: 7, scope: !2970)
!3017 = !DILocation(line: 65, column: 12, scope: !3015)
!3018 = !DILocation(line: 65, column: 5, scope: !3015)
!3019 = !DILocation(line: 70, column: 9, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2970, file: !381, line: 70, column: 7)
!3021 = !DILocation(line: 70, column: 23, scope: !3020)
!3022 = !DILocation(line: 70, column: 33, scope: !3020)
!3023 = !DILocation(line: 70, column: 26, scope: !3020)
!3024 = !DILocation(line: 70, column: 59, scope: !3020)
!3025 = !DILocation(line: 71, column: 7, scope: !3020)
!3026 = !DILocation(line: 71, column: 10, scope: !3020)
!3027 = !DILocation(line: 70, column: 7, scope: !2970)
!3028 = !DILocation(line: 100, column: 12, scope: !2970)
!3029 = !DILocation(line: 105, column: 7, scope: !2970)
!3030 = !DILocation(line: 72, column: 19, scope: !3020)
!3031 = !DILocation(line: 105, column: 19, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2970, file: !381, line: 105, column: 7)
!3033 = !DILocation(line: 107, column: 13, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3032, file: !381, line: 106, column: 5)
!3035 = !DILocation(line: 109, column: 5, scope: !3034)
!3036 = !DILocation(line: 112, column: 1, scope: !2970)
!3037 = !DISubprogram(name: "fileno", scope: !143, file: !143, line: 809, type: !2971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!3038 = !DISubprogram(name: "fclose", scope: !143, file: !143, line: 178, type: !2971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!3039 = !DISubprogram(name: "lseek", scope: !3040, file: !3040, line: 339, type: !3041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!3040 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!84, !31, !84, !31}
!3043 = distinct !DISubprogram(name: "rpl_fflush", scope: !383, file: !383, line: 130, type: !3044, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3080)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!31, !3046}
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !3048)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !3049)
!3049 = !{!3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3048, file: !62, line: 51, baseType: !31, size: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3048, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3048, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3048, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3048, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3048, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3048, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3048, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3048, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3048, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3048, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3048, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3048, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3048, file: !62, line: 70, baseType: !3064, size: 64, offset: 832)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3048, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3048, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3048, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3048, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3048, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3048, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3048, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3048, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3048, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3048, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3048, file: !62, line: 93, baseType: !3064, size: 64, offset: 1344)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3048, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3048, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3048, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3048, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!3080 = !{!3081}
!3081 = !DILocalVariable(name: "stream", arg: 1, scope: !3043, file: !383, line: 130, type: !3046)
!3082 = !DILocation(line: 0, scope: !3043)
!3083 = !DILocation(line: 151, column: 14, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3043, file: !383, line: 151, column: 7)
!3085 = !DILocation(line: 151, column: 22, scope: !3084)
!3086 = !DILocation(line: 151, column: 27, scope: !3084)
!3087 = !DILocation(line: 151, column: 7, scope: !3043)
!3088 = !DILocation(line: 152, column: 12, scope: !3084)
!3089 = !DILocation(line: 152, column: 5, scope: !3084)
!3090 = !DILocalVariable(name: "fp", arg: 1, scope: !3091, file: !383, line: 42, type: !3046)
!3091 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !383, file: !383, line: 42, type: !3092, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !3046}
!3094 = !{!3090}
!3095 = !DILocation(line: 0, scope: !3091, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 157, column: 3, scope: !3043)
!3097 = !DILocation(line: 44, column: 12, scope: !3098, inlinedAt: !3096)
!3098 = distinct !DILexicalBlock(scope: !3091, file: !383, line: 44, column: 7)
!3099 = !DILocation(line: 44, column: 19, scope: !3098, inlinedAt: !3096)
!3100 = !DILocation(line: 44, column: 7, scope: !3091, inlinedAt: !3096)
!3101 = !DILocation(line: 46, column: 5, scope: !3098, inlinedAt: !3096)
!3102 = !DILocation(line: 159, column: 10, scope: !3043)
!3103 = !DILocation(line: 159, column: 3, scope: !3043)
!3104 = !DILocation(line: 236, column: 1, scope: !3043)
!3105 = !DISubprogram(name: "fflush", scope: !143, file: !143, line: 230, type: !3044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!3106 = distinct !DISubprogram(name: "rpl_fseeko", scope: !385, file: !385, line: 28, type: !3107, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !384, retainedNodes: !3144)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!31, !3109, !3143, !31}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !3111)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3111, file: !62, line: 51, baseType: !31, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3111, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3111, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3111, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3111, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3111, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3111, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3111, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3111, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3111, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3111, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3111, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3111, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3111, file: !62, line: 70, baseType: !3127, size: 64, offset: 832)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3111, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3111, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3111, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3111, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3111, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3111, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3111, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3111, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3111, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3111, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3111, file: !62, line: 93, baseType: !3127, size: 64, offset: 1344)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3111, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3111, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3111, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3111, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !143, line: 63, baseType: !84)
!3144 = !{!3145, !3146, !3147, !3148}
!3145 = !DILocalVariable(name: "fp", arg: 1, scope: !3106, file: !385, line: 28, type: !3109)
!3146 = !DILocalVariable(name: "offset", arg: 2, scope: !3106, file: !385, line: 28, type: !3143)
!3147 = !DILocalVariable(name: "whence", arg: 3, scope: !3106, file: !385, line: 28, type: !31)
!3148 = !DILocalVariable(name: "pos", scope: !3149, file: !385, line: 123, type: !3143)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !385, line: 119, column: 5)
!3150 = distinct !DILexicalBlock(scope: !3106, file: !385, line: 55, column: 7)
!3151 = !DILocation(line: 0, scope: !3106)
!3152 = !DILocation(line: 55, column: 12, scope: !3150)
!3153 = !{!846, !415, i64 16}
!3154 = !DILocation(line: 55, column: 33, scope: !3150)
!3155 = !{!846, !415, i64 8}
!3156 = !DILocation(line: 55, column: 25, scope: !3150)
!3157 = !DILocation(line: 56, column: 7, scope: !3150)
!3158 = !DILocation(line: 56, column: 15, scope: !3150)
!3159 = !DILocation(line: 56, column: 37, scope: !3150)
!3160 = !{!846, !415, i64 32}
!3161 = !DILocation(line: 56, column: 29, scope: !3150)
!3162 = !DILocation(line: 57, column: 7, scope: !3150)
!3163 = !DILocation(line: 57, column: 15, scope: !3150)
!3164 = !{!846, !415, i64 72}
!3165 = !DILocation(line: 57, column: 29, scope: !3150)
!3166 = !DILocation(line: 55, column: 7, scope: !3106)
!3167 = !DILocation(line: 123, column: 26, scope: !3149)
!3168 = !DILocation(line: 123, column: 19, scope: !3149)
!3169 = !DILocation(line: 0, scope: !3149)
!3170 = !DILocation(line: 124, column: 15, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3149, file: !385, line: 124, column: 11)
!3172 = !DILocation(line: 124, column: 11, scope: !3149)
!3173 = !DILocation(line: 135, column: 12, scope: !3149)
!3174 = !DILocation(line: 135, column: 19, scope: !3149)
!3175 = !DILocation(line: 136, column: 12, scope: !3149)
!3176 = !DILocation(line: 136, column: 20, scope: !3149)
!3177 = !{!846, !847, i64 144}
!3178 = !DILocation(line: 167, column: 7, scope: !3149)
!3179 = !DILocation(line: 169, column: 10, scope: !3106)
!3180 = !DILocation(line: 169, column: 3, scope: !3106)
!3181 = !DILocation(line: 170, column: 1, scope: !3106)
!3182 = !DISubprogram(name: "fseeko", scope: !143, file: !143, line: 736, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!31, !3109, !84, !31}
!3185 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !320, file: !320, line: 100, type: !3186, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !3189)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!33, !1006, !6, !33, !3188}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!3189 = !{!3190, !3191, !3192, !3193, !3194}
!3190 = !DILocalVariable(name: "pwc", arg: 1, scope: !3185, file: !320, line: 100, type: !1006)
!3191 = !DILocalVariable(name: "s", arg: 2, scope: !3185, file: !320, line: 100, type: !6)
!3192 = !DILocalVariable(name: "n", arg: 3, scope: !3185, file: !320, line: 100, type: !33)
!3193 = !DILocalVariable(name: "ps", arg: 4, scope: !3185, file: !320, line: 100, type: !3188)
!3194 = !DILocalVariable(name: "ret", scope: !3185, file: !320, line: 130, type: !33)
!3195 = !DILocation(line: 0, scope: !3185)
!3196 = !DILocation(line: 105, column: 9, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3185, file: !320, line: 105, column: 7)
!3198 = !DILocation(line: 105, column: 7, scope: !3185)
!3199 = !DILocation(line: 117, column: 10, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3185, file: !320, line: 117, column: 7)
!3201 = !DILocation(line: 117, column: 7, scope: !3185)
!3202 = !DILocation(line: 130, column: 16, scope: !3185)
!3203 = !DILocation(line: 135, column: 11, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3185, file: !320, line: 135, column: 7)
!3205 = !DILocation(line: 135, column: 25, scope: !3204)
!3206 = !DILocation(line: 135, column: 30, scope: !3204)
!3207 = !DILocation(line: 135, column: 7, scope: !3185)
!3208 = !DILocalVariable(name: "ps", arg: 1, scope: !3209, file: !979, line: 1135, type: !3188)
!3209 = distinct !DISubprogram(name: "mbszero", scope: !979, file: !979, line: 1135, type: !3210, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !3188}
!3212 = !{!3208}
!3213 = !DILocation(line: 0, scope: !3209, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 137, column: 5, scope: !3204)
!3215 = !DILocalVariable(name: "__dest", arg: 1, scope: !3216, file: !988, line: 57, type: !30)
!3216 = distinct !DISubprogram(name: "memset", scope: !988, file: !988, line: 57, type: !989, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !3217)
!3217 = !{!3215, !3218, !3219}
!3218 = !DILocalVariable(name: "__ch", arg: 2, scope: !3216, file: !988, line: 57, type: !31)
!3219 = !DILocalVariable(name: "__len", arg: 3, scope: !3216, file: !988, line: 57, type: !33)
!3220 = !DILocation(line: 0, scope: !3216, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 1137, column: 3, scope: !3209, inlinedAt: !3214)
!3222 = !DILocation(line: 59, column: 10, scope: !3216, inlinedAt: !3221)
!3223 = !DILocation(line: 137, column: 5, scope: !3204)
!3224 = !DILocation(line: 138, column: 11, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3185, file: !320, line: 138, column: 7)
!3226 = !DILocation(line: 138, column: 7, scope: !3185)
!3227 = !DILocation(line: 139, column: 5, scope: !3225)
!3228 = !DILocation(line: 143, column: 26, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3185, file: !320, line: 143, column: 7)
!3230 = !DILocation(line: 143, column: 41, scope: !3229)
!3231 = !DILocation(line: 143, column: 7, scope: !3185)
!3232 = !DILocation(line: 145, column: 15, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !320, line: 145, column: 11)
!3234 = distinct !DILexicalBlock(scope: !3229, file: !320, line: 144, column: 5)
!3235 = !DILocation(line: 145, column: 11, scope: !3234)
!3236 = !DILocation(line: 146, column: 32, scope: !3233)
!3237 = !DILocation(line: 146, column: 16, scope: !3233)
!3238 = !DILocation(line: 146, column: 14, scope: !3233)
!3239 = !DILocation(line: 146, column: 9, scope: !3233)
!3240 = !DILocation(line: 286, column: 1, scope: !3185)
!3241 = !DISubprogram(name: "mbsinit", scope: !3242, file: !3242, line: 293, type: !3243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !428)
!3242 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!31, !3245}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!3247 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !387, file: !387, line: 27, type: !2462, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3248)
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DILocalVariable(name: "ptr", arg: 1, scope: !3247, file: !387, line: 27, type: !30)
!3250 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3247, file: !387, line: 27, type: !33)
!3251 = !DILocalVariable(name: "size", arg: 3, scope: !3247, file: !387, line: 27, type: !33)
!3252 = !DILocalVariable(name: "nbytes", scope: !3247, file: !387, line: 29, type: !33)
!3253 = !DILocation(line: 0, scope: !3247)
!3254 = !DILocation(line: 30, column: 7, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3247, file: !387, line: 30, column: 7)
!3256 = !DILocalVariable(name: "ptr", arg: 1, scope: !3257, file: !2553, line: 2057, type: !30)
!3257 = distinct !DISubprogram(name: "rpl_realloc", scope: !2553, file: !2553, line: 2057, type: !2545, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3258)
!3258 = !{!3256, !3259}
!3259 = !DILocalVariable(name: "size", arg: 2, scope: !3257, file: !2553, line: 2057, type: !33)
!3260 = !DILocation(line: 0, scope: !3257, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 37, column: 10, scope: !3247)
!3262 = !DILocation(line: 2059, column: 24, scope: !3257, inlinedAt: !3261)
!3263 = !DILocation(line: 2059, column: 10, scope: !3257, inlinedAt: !3261)
!3264 = !DILocation(line: 37, column: 3, scope: !3247)
!3265 = !DILocation(line: 32, column: 7, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3255, file: !387, line: 31, column: 5)
!3267 = !DILocation(line: 32, column: 13, scope: !3266)
!3268 = !DILocation(line: 33, column: 7, scope: !3266)
!3269 = !DILocation(line: 38, column: 1, scope: !3247)
!3270 = distinct !DISubprogram(name: "hard_locale", scope: !390, file: !390, line: 28, type: !3271, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !3273)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!45, !31}
!3273 = !{!3274, !3275}
!3274 = !DILocalVariable(name: "category", arg: 1, scope: !3270, file: !390, line: 28, type: !31)
!3275 = !DILocalVariable(name: "locale", scope: !3270, file: !390, line: 30, type: !3276)
!3276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3277)
!3277 = !{!3278}
!3278 = !DISubrange(count: 257)
!3279 = !DILocation(line: 0, scope: !3270)
!3280 = !DILocation(line: 30, column: 3, scope: !3270)
!3281 = !DILocation(line: 30, column: 8, scope: !3270)
!3282 = !DILocation(line: 32, column: 7, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3270, file: !390, line: 32, column: 7)
!3284 = !DILocation(line: 32, column: 7, scope: !3270)
!3285 = !DILocalVariable(name: "__s1", arg: 1, scope: !3286, file: !444, line: 1359, type: !6)
!3286 = distinct !DISubprogram(name: "streq", scope: !444, file: !444, line: 1359, type: !445, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !3287)
!3287 = !{!3285, !3288}
!3288 = !DILocalVariable(name: "__s2", arg: 2, scope: !3286, file: !444, line: 1359, type: !6)
!3289 = !DILocation(line: 0, scope: !3286, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 35, column: 9, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3270, file: !390, line: 35, column: 7)
!3292 = !DILocation(line: 1361, column: 11, scope: !3286, inlinedAt: !3290)
!3293 = !DILocation(line: 1361, column: 10, scope: !3286, inlinedAt: !3290)
!3294 = !DILocation(line: 35, column: 29, scope: !3291)
!3295 = !DILocation(line: 0, scope: !3286, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 35, column: 32, scope: !3291)
!3297 = !DILocation(line: 1361, column: 11, scope: !3286, inlinedAt: !3296)
!3298 = !DILocation(line: 1361, column: 10, scope: !3286, inlinedAt: !3296)
!3299 = !DILocation(line: 35, column: 7, scope: !3270)
!3300 = !DILocation(line: 46, column: 3, scope: !3270)
!3301 = !DILocation(line: 47, column: 1, scope: !3270)
!3302 = distinct !DISubprogram(name: "setlocale_null_r", scope: !392, file: !392, line: 154, type: !3303, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!31, !31, !29, !33}
!3305 = !{!3306, !3307, !3308}
!3306 = !DILocalVariable(name: "category", arg: 1, scope: !3302, file: !392, line: 154, type: !31)
!3307 = !DILocalVariable(name: "buf", arg: 2, scope: !3302, file: !392, line: 154, type: !29)
!3308 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3302, file: !392, line: 154, type: !33)
!3309 = !DILocation(line: 0, scope: !3302)
!3310 = !DILocation(line: 159, column: 10, scope: !3302)
!3311 = !DILocation(line: 159, column: 3, scope: !3302)
!3312 = distinct !DISubprogram(name: "setlocale_null", scope: !392, file: !392, line: 186, type: !3313, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!6, !31}
!3315 = !{!3316}
!3316 = !DILocalVariable(name: "category", arg: 1, scope: !3312, file: !392, line: 186, type: !31)
!3317 = !DILocation(line: 0, scope: !3312)
!3318 = !DILocation(line: 189, column: 10, scope: !3312)
!3319 = !DILocation(line: 189, column: 3, scope: !3312)
!3320 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !394, file: !394, line: 35, type: !3313, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3321)
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "category", arg: 1, scope: !3320, file: !394, line: 35, type: !31)
!3323 = !DILocalVariable(name: "result", scope: !3320, file: !394, line: 37, type: !6)
!3324 = !DILocation(line: 0, scope: !3320)
!3325 = !DILocation(line: 37, column: 24, scope: !3320)
!3326 = !DILocation(line: 62, column: 3, scope: !3320)
!3327 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !394, file: !394, line: 66, type: !3303, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333}
!3329 = !DILocalVariable(name: "category", arg: 1, scope: !3327, file: !394, line: 66, type: !31)
!3330 = !DILocalVariable(name: "buf", arg: 2, scope: !3327, file: !394, line: 66, type: !29)
!3331 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3327, file: !394, line: 66, type: !33)
!3332 = !DILocalVariable(name: "result", scope: !3327, file: !394, line: 111, type: !6)
!3333 = !DILocalVariable(name: "length", scope: !3334, file: !394, line: 125, type: !33)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !394, line: 124, column: 5)
!3335 = distinct !DILexicalBlock(scope: !3327, file: !394, line: 113, column: 7)
!3336 = !DILocation(line: 0, scope: !3327)
!3337 = !DILocation(line: 0, scope: !3320, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 111, column: 24, scope: !3327)
!3339 = !DILocation(line: 37, column: 24, scope: !3320, inlinedAt: !3338)
!3340 = !DILocation(line: 113, column: 14, scope: !3335)
!3341 = !DILocation(line: 113, column: 7, scope: !3327)
!3342 = !DILocation(line: 116, column: 19, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !394, line: 116, column: 11)
!3344 = distinct !DILexicalBlock(scope: !3335, file: !394, line: 114, column: 5)
!3345 = !DILocation(line: 116, column: 11, scope: !3344)
!3346 = !DILocation(line: 120, column: 16, scope: !3343)
!3347 = !DILocation(line: 120, column: 9, scope: !3343)
!3348 = !DILocation(line: 125, column: 23, scope: !3334)
!3349 = !DILocation(line: 0, scope: !3334)
!3350 = !DILocation(line: 126, column: 18, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3334, file: !394, line: 126, column: 11)
!3352 = !DILocation(line: 126, column: 11, scope: !3334)
!3353 = !DILocation(line: 128, column: 39, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3351, file: !394, line: 127, column: 9)
!3355 = !DILocalVariable(name: "__dest", arg: 1, scope: !3356, file: !988, line: 26, type: !2820)
!3356 = distinct !DISubprogram(name: "memcpy", scope: !988, file: !988, line: 26, type: !2818, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3357)
!3357 = !{!3355, !3358, !3359}
!3358 = !DILocalVariable(name: "__src", arg: 2, scope: !3356, file: !988, line: 26, type: !616)
!3359 = !DILocalVariable(name: "__len", arg: 3, scope: !3356, file: !988, line: 26, type: !33)
!3360 = !DILocation(line: 0, scope: !3356, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 128, column: 11, scope: !3354)
!3362 = !DILocation(line: 29, column: 10, scope: !3356, inlinedAt: !3361)
!3363 = !DILocation(line: 129, column: 11, scope: !3354)
!3364 = !DILocation(line: 133, column: 23, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !394, line: 133, column: 15)
!3366 = distinct !DILexicalBlock(scope: !3351, file: !394, line: 132, column: 9)
!3367 = !DILocation(line: 133, column: 15, scope: !3366)
!3368 = !DILocation(line: 138, column: 44, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3365, file: !394, line: 134, column: 13)
!3370 = !DILocation(line: 0, scope: !3356, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 138, column: 15, scope: !3369)
!3372 = !DILocation(line: 29, column: 10, scope: !3356, inlinedAt: !3371)
!3373 = !DILocation(line: 139, column: 15, scope: !3369)
!3374 = !DILocation(line: 139, column: 32, scope: !3369)
!3375 = !DILocation(line: 140, column: 13, scope: !3369)
!3376 = !DILocation(line: 0, scope: !3335)
!3377 = !DILocation(line: 145, column: 1, scope: !3327)
