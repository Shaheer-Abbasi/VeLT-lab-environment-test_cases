; ModuleID = 'src/false.bc'
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
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating failure.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !412, metadata !DIExpression()), !dbg !413
  %2 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !414
  %3 = load i8*, i8** @program_name, align 8, !dbg !414, !tbaa !415
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %2, i8* noundef %3, i8* noundef %3) #32, !dbg !414
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !419
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* noundef %5) #32, !dbg !419
  %7 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !420
  tail call fastcc void @oputs_(i8* noundef %7), !dbg !420
  %8 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !421
  tail call fastcc void @oputs_(i8* noundef %8), !dbg !421
  %9 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #32, !dbg !422
  %10 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %9, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !422
  tail call fastcc void @emit_ancillary_info(), !dbg !423
  tail call void @exit(i32 noundef %0) #33, !dbg !424
  unreachable, !dbg !424
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !425 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #4 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !39, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i8* %0, metadata !40, metadata !DIExpression()), !dbg !430
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !431, !tbaa !432
  %3 = icmp eq i32 %2, -1, !dbg !434
  br i1 %3, label %4, label %16, !dbg !435

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #32, !dbg !436
  call void @llvm.dbg.value(metadata i8* %5, metadata !41, metadata !DIExpression()), !dbg !437
  %6 = icmp eq i8* %5, null, !dbg !438
  br i1 %6, label %14, label %7, !dbg !439

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !440, !tbaa !441
  %9 = icmp eq i8 %8, 0, !dbg !440
  br i1 %9, label %14, label %10, !dbg !442

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !443, metadata !DIExpression()) #32, !dbg !450
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), metadata !449, metadata !DIExpression()) #32, !dbg !450
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #34, !dbg !452
  %12 = icmp eq i32 %11, 0, !dbg !453
  %13 = zext i1 %12 to i32, !dbg !442
  br label %14, !dbg !442

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !454, !tbaa !432
  br label %16, !dbg !455

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !456
  %18 = icmp eq i32 %17, 0, !dbg !456
  br i1 %18, label %22, label %19, !dbg !458

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !459, !tbaa !415
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !459
  br label %121, !dbg !461

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !44, metadata !DIExpression()), !dbg !430
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #34, !dbg !462
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !463
  call void @llvm.dbg.value(metadata i8* %24, metadata !46, metadata !DIExpression()), !dbg !430
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !464
  call void @llvm.dbg.value(metadata i8* %25, metadata !47, metadata !DIExpression()), !dbg !430
  %26 = icmp eq i8* %25, null, !dbg !465
  br i1 %26, label %53, label %27, !dbg !466

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !467
  br i1 %28, label %53, label %29, !dbg !468

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !48, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !469
  %30 = icmp ult i8* %24, %25, !dbg !470
  br i1 %30, label %31, label %53, !dbg !471

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !430
  %33 = load i16*, i16** %32, align 8, !tbaa !415
  br label %34, !dbg !471

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !48, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i64 %36, metadata !52, metadata !DIExpression()), !dbg !469
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !472
  call void @llvm.dbg.value(metadata i8* %37, metadata !48, metadata !DIExpression()), !dbg !469
  %38 = load i8, i8* %35, align 1, !dbg !472, !tbaa !441
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !472
  %41 = load i16, i16* %40, align 2, !dbg !472, !tbaa !473
  %42 = lshr i16 %41, 13, !dbg !475
  %43 = and i16 %42, 1, !dbg !475
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !476
  call void @llvm.dbg.value(metadata i64 %45, metadata !52, metadata !DIExpression()), !dbg !469
  %46 = icmp ult i8* %37, %25, !dbg !470
  %47 = icmp ult i64 %45, 2, !dbg !477
  %48 = select i1 %46, i1 %47, i1 false, !dbg !477
  br i1 %48, label %34, label %49, !dbg !471, !llvm.loop !478

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !480
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !482
  %52 = xor i1 %50, true, !dbg !482
  br label %53, !dbg !482

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !430
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !44, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i8* %54, metadata !47, metadata !DIExpression()), !dbg !430
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #34, !dbg !483
  call void @llvm.dbg.value(metadata i64 %56, metadata !53, metadata !DIExpression()), !dbg !430
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !484
  call void @llvm.dbg.value(metadata i8* %57, metadata !54, metadata !DIExpression()), !dbg !430
  br label %58, !dbg !485

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !430
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !44, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i8* %59, metadata !54, metadata !DIExpression()), !dbg !430
  %61 = load i8, i8* %59, align 1, !dbg !486, !tbaa !441
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !487

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !488
  %64 = load i8, i8* %63, align 1, !dbg !491, !tbaa !441
  %65 = icmp ne i8 %64, 45, !dbg !492
  %66 = select i1 %65, i1 %60, i1 false, !dbg !493
  br label %67, !dbg !493

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !44, metadata !DIExpression()), !dbg !430
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !494
  %70 = load i16*, i16** %69, align 8, !dbg !494, !tbaa !415
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !494
  %73 = load i16, i16* %72, align 2, !dbg !494, !tbaa !473
  %74 = and i16 %73, 8192, !dbg !494
  %75 = icmp eq i16 %74, 0, !dbg !494
  br i1 %75, label %89, label %76, !dbg !496

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !497
  br i1 %77, label %91, label %78, !dbg !500

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !501
  %80 = load i8, i8* %79, align 1, !dbg !501, !tbaa !441
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !501
  %83 = load i16, i16* %82, align 2, !dbg !501, !tbaa !473
  %84 = and i16 %83, 8192, !dbg !501
  %85 = icmp eq i16 %84, 0, !dbg !501
  br i1 %85, label %86, label %91, !dbg !502

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !503
  br i1 %88, label %89, label %91, !dbg !503

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !505
  call void @llvm.dbg.value(metadata i8* %90, metadata !54, metadata !DIExpression()), !dbg !430
  br label %58, !dbg !485, !llvm.loop !506

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !508
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !508, !tbaa !415
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !508
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), metadata !449, metadata !DIExpression()) #32, !dbg !509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !511
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !513
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !515
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !517
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !519
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !521
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !523
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !525
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !527
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !114, metadata !DIExpression()), !dbg !430
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 noundef 6) #34, !dbg !529
  %96 = icmp eq i32 %95, 0, !dbg !529
  br i1 %96, label %100, label %97, !dbg !531

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 noundef 9) #34, !dbg !532
  %99 = icmp eq i32 %98, 0, !dbg !532
  br i1 %99, label %100, label %103, !dbg !533

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !534
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !534
  br label %106, !dbg !536

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !537
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !537
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !539, !tbaa !415
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !539
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !540, !tbaa !415
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !540
  %111 = ptrtoint i8* %59 to i64, !dbg !541
  %112 = sub i64 %111, %92, !dbg !541
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !541, !tbaa !415
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !541
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !542, !tbaa !415
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !542
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !543, !tbaa !415
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !543
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !544, !tbaa !415
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !544
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !545
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #4 !dbg !546 {
  %1 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !550, metadata !DIExpression()), !dbg !565
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !566
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #32, !dbg !566
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !551, metadata !DIExpression()), !dbg !567
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %2, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !567
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !560, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %1, metadata !561, metadata !DIExpression()), !dbg !565
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !568
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !561, metadata !DIExpression()), !dbg !565
  br label %4, !dbg !569

4:                                                ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !561, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !570
  call void @llvm.dbg.value(metadata i8* %5, metadata !449, metadata !DIExpression()) #32, !dbg !570
  %7 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %5) #34, !dbg !572
  %8 = icmp eq i32 %7, 0, !dbg !573
  br i1 %8, label %14, label %9, !dbg !569

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !574
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !561, metadata !DIExpression()), !dbg !565
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !575
  %12 = load i8*, i8** %11, align 8, !dbg !575, !tbaa !576
  %13 = icmp eq i8* %12, null, !dbg !578
  br i1 %13, label %14, label %4, !dbg !579, !llvm.loop !580

14:                                               ; preds = %4, %9
  %15 = phi %struct.infomap* [ %6, %4 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !581
  %17 = load i8*, i8** %16, align 8, !dbg !581, !tbaa !583
  %18 = icmp eq i8* %17, null, !dbg !584
  %19 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %17, !dbg !585
  call void @llvm.dbg.value(metadata i8* %19, metadata !560, metadata !DIExpression()), !dbg !565
  tail call void @emit_bug_reporting_address() #32, !dbg !586
  %20 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !587
  call void @llvm.dbg.value(metadata i8* %20, metadata !563, metadata !DIExpression()), !dbg !565
  %21 = icmp eq i8* %20, null, !dbg !588
  br i1 %21, label %29, label %22, !dbg !590

22:                                               ; preds = %14
  %23 = tail call i32 @strncmp(i8* noundef nonnull %20, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i64 noundef 3) #34, !dbg !591
  %24 = icmp eq i32 %23, 0, !dbg !591
  br i1 %24, label %29, label %25, !dbg !592

25:                                               ; preds = %22
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.43, i64 0, i64 0), i32 noundef 5) #32, !dbg !593
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !593, !tbaa !415
  %28 = tail call i32 @fputs_unlocked(i8* noundef %26, %struct._IO_FILE* noundef %27), !dbg !593
  br label %29, !dbg !595

29:                                               ; preds = %25, %22, %14
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !443, metadata !DIExpression()) #32, !dbg !596
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), metadata !449, metadata !DIExpression()) #32, !dbg !596
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !564, metadata !DIExpression()), !dbg !565
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i32 noundef 5) #32, !dbg !598
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %30, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !598
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #32, !dbg !599
  %33 = icmp eq i8* %19, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), !dbg !599
  %34 = select i1 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !599
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %32, i8* noundef %19, i8* noundef %34) #32, !dbg !599
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #32, !dbg !600
  ret void, !dbg !600
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
declare !dbg !601 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !605 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nounwind readonly
declare !dbg !610 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !614 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #12 !dbg !620 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !625, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i8** %1, metadata !626, metadata !DIExpression()), !dbg !627
  %3 = icmp eq i32 %0, 2, !dbg !628
  br i1 %3, label %4, label %22, !dbg !630

4:                                                ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !631, !tbaa !415
  tail call void @set_program_name(i8* noundef %5) #32, !dbg !633
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !634
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #32, !dbg !635
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #32, !dbg !636
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !637
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !638
  %11 = load i8*, i8** %10, align 8, !dbg !638, !tbaa !415
  call void @llvm.dbg.value(metadata i8* %11, metadata !443, metadata !DIExpression()) #32, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !449, metadata !DIExpression()) #32, !dbg !640
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #34, !dbg !642
  %13 = icmp eq i32 %12, 0, !dbg !643
  br i1 %13, label %14, label %15, !dbg !644

14:                                               ; preds = %4
  tail call void @usage(i32 noundef 1) #36, !dbg !645
  unreachable, !dbg !645

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %11, metadata !443, metadata !DIExpression()) #32, !dbg !646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), metadata !449, metadata !DIExpression()) #32, !dbg !646
  %16 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #34, !dbg !649
  %17 = icmp eq i32 %16, 0, !dbg !650
  br i1 %17, label %18, label %22, !dbg !651

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !652, !tbaa !415
  %20 = load i8*, i8** @Version, align 8, !dbg !653, !tbaa !415
  %21 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #32, !dbg !654
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %20, i8* noundef %21, i8* noundef null) #32, !dbg !655
  br label %22, !dbg !655

22:                                               ; preds = %15, %18, %2
  ret i32 1, !dbg !656
}

; Function Attrs: nounwind
declare !dbg !657 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !660 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !661 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #13 !dbg !664 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !666, metadata !DIExpression()), !dbg !667
  store i8* %0, i8** @file_name, align 8, !dbg !668, !tbaa !415
  ret void, !dbg !669
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !670 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !674, metadata !DIExpression()), !dbg !675
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !676, !tbaa !677
  ret void, !dbg !679
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !680 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !415
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !686
  %3 = icmp eq i32 %2, 0, !dbg !687
  br i1 %3, label %22, label %4, !dbg !688

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !689, !tbaa !677, !range !690
  %6 = icmp eq i8 %5, 0, !dbg !689
  br i1 %6, label %11, label %7, !dbg !691

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !692
  %9 = load i32, i32* %8, align 4, !dbg !692, !tbaa !432
  %10 = icmp eq i32 %9, 32, !dbg !693
  br i1 %10, label %22, label %11, !dbg !694

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.23, i64 0, i64 0), i32 noundef 5) #32, !dbg !695
  call void @llvm.dbg.value(metadata i8* %12, metadata !682, metadata !DIExpression()), !dbg !696
  %13 = load i8*, i8** @file_name, align 8, !dbg !697, !tbaa !415
  %14 = icmp eq i8* %13, null, !dbg !697
  %15 = tail call i32* @__errno_location() #35, !dbg !699
  %16 = load i32, i32* %15, align 4, !dbg !699, !tbaa !432
  br i1 %14, label %19, label %17, !dbg !700

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !701
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.24, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !701
  br label %20, !dbg !701

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.25, i64 0, i64 0), i8* noundef %12) #32, !dbg !702
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !703, !tbaa !432
  tail call void @_exit(i32 noundef %21) #33, !dbg !704
  unreachable, !dbg !704

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !705, !tbaa !415
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !707
  %25 = icmp eq i32 %24, 0, !dbg !708
  br i1 %25, label %28, label %26, !dbg !709

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !710, !tbaa !432
  tail call void @_exit(i32 noundef %27) #33, !dbg !711
  unreachable, !dbg !711

28:                                               ; preds = %22
  ret void, !dbg !712
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !713 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !717, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i32 %1, metadata !718, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8* %2, metadata !719, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !720, metadata !DIExpression()), !dbg !722
  tail call fastcc void @flush_stdout(), !dbg !723
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !724, !tbaa !415
  %7 = icmp eq void ()* %6, null, !dbg !724
  br i1 %7, label %9, label %8, !dbg !726

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !727
  br label %13, !dbg !727

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !728, !tbaa !415
  %11 = tail call i8* @getprogname() #34, !dbg !728
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* noundef %11) #32, !dbg !728
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !730
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !730
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !730
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !730, !tbaa.struct !731
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !730
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !730
  ret void, !dbg !732
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !733 {
  call void @llvm.dbg.value(metadata i32 1, metadata !735, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32 1, metadata !737, metadata !DIExpression()) #32, !dbg !742
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !745
  %2 = icmp slt i32 %1, 0, !dbg !746
  br i1 %2, label %6, label %3, !dbg !747

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !748, !tbaa !415
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !748
  br label %6, !dbg !748

6:                                                ; preds = %3, %0
  ret void, !dbg !749
}

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !750 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !752, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i32 %1, metadata !753, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i8* %2, metadata !754, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !755, metadata !DIExpression()), !dbg !757
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !758, !tbaa !415
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !759
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !760, metadata !DIExpression()) #32, !dbg !803
  call void @llvm.dbg.value(metadata i8* %2, metadata !801, metadata !DIExpression()) #32, !dbg !803
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !805
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !805, !noalias !806
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !805
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !805, !noalias !806
  %11 = load i32, i32* @error_message_count, align 4, !dbg !810, !tbaa !432
  %12 = add i32 %11, 1, !dbg !810
  store i32 %12, i32* @error_message_count, align 4, !dbg !810, !tbaa !432
  %13 = icmp eq i32 %1, 0, !dbg !811
  br i1 %13, label %24, label %14, !dbg !813

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !814, metadata !DIExpression()) #32, !dbg !822
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !824
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !824
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !818, metadata !DIExpression()) #32, !dbg !825
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !826
  call void @llvm.dbg.value(metadata i8* %16, metadata !817, metadata !DIExpression()) #32, !dbg !822
  %17 = icmp eq i8* %16, null, !dbg !827
  br i1 %17, label %18, label %20, !dbg !829

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.28, i64 0, i64 0), i32 noundef 5) #32, !dbg !830
  call void @llvm.dbg.value(metadata i8* %19, metadata !817, metadata !DIExpression()) #32, !dbg !822
  br label %20, !dbg !831

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !822
  call void @llvm.dbg.value(metadata i8* %21, metadata !817, metadata !DIExpression()) #32, !dbg !822
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !832, !tbaa !415
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.29, i64 0, i64 0), i8* noundef %21) #32, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !833
  br label %24, !dbg !834

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !835, !tbaa !415
  call void @llvm.dbg.value(metadata i32 10, metadata !836, metadata !DIExpression()) #32, !dbg !843
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !842, metadata !DIExpression()) #32, !dbg !843
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !845
  %27 = load i8*, i8** %26, align 8, !dbg !845, !tbaa !846
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !845
  %29 = load i8*, i8** %28, align 8, !dbg !845, !tbaa !849
  %30 = icmp ult i8* %27, %29, !dbg !845
  br i1 %30, label %33, label %31, !dbg !845, !prof !850

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !845
  br label %35, !dbg !845

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !845
  store i8* %34, i8** %26, align 8, !dbg !845, !tbaa !846
  store i8 10, i8* %27, align 1, !dbg !845, !tbaa !441
  br label %35, !dbg !845

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !851, !tbaa !415
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !851
  %38 = icmp eq i32 %0, 0, !dbg !852
  br i1 %38, label %40, label %39, !dbg !854

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #33, !dbg !855
  unreachable, !dbg !855

40:                                               ; preds = %35
  ret void, !dbg !856
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !857 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !861 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !864 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !868 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !872, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i32 %1, metadata !873, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i8* %2, metadata !874, metadata !DIExpression()), !dbg !876
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !877
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !877
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !875, metadata !DIExpression()), !dbg !878
  call void @llvm.va_start(i8* nonnull %6), !dbg !879
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !880
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !880, !tbaa.struct !731
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !880
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !880
  call void @llvm.va_end(i8* nonnull %6), !dbg !881
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !882
  ret void, !dbg !882
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !139 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !157, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i32 %1, metadata !158, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8* %2, metadata !159, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i32 %3, metadata !160, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8* %4, metadata !161, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !162, metadata !DIExpression()), !dbg !884
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !885, !tbaa !432
  %9 = icmp eq i32 %8, 0, !dbg !885
  br i1 %9, label %24, label %10, !dbg !887

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !888, !tbaa !432
  %12 = icmp eq i32 %11, %3, !dbg !891
  br i1 %12, label %13, label %23, !dbg !892

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !893, !tbaa !415
  %15 = icmp eq i8* %14, %2, !dbg !894
  br i1 %15, label %39, label %16, !dbg !895

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !896
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !897
  br i1 %19, label %20, label %23, !dbg !897

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !898
  %22 = icmp eq i32 %21, 0, !dbg !899
  br i1 %22, label %39, label %23, !dbg !900

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !901, !tbaa !415
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !902, !tbaa !432
  br label %24, !dbg !903

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !904
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !905, !tbaa !415
  %26 = icmp eq void ()* %25, null, !dbg !905
  br i1 %26, label %28, label %27, !dbg !907

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !908
  br label %32, !dbg !908

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !909, !tbaa !415
  %30 = tail call i8* @getprogname() #34, !dbg !909
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.32, i64 0, i64 0), i8* noundef %30) #32, !dbg !909
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !911, !tbaa !415
  %34 = icmp eq i8* %2, null, !dbg !911
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.33, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.34, i64 0, i64 0), !dbg !911
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !911
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !912
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !912
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !912
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !912, !tbaa.struct !731
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !912
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !912
  br label %39, !dbg !913

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !913
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !914 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !918, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 %1, metadata !919, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8* %2, metadata !920, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 %3, metadata !921, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8* %4, metadata !922, metadata !DIExpression()), !dbg !924
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !925
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !925
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !923, metadata !DIExpression()), !dbg !926
  call void @llvm.va_start(i8* nonnull %8), !dbg !927
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !928
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !928
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !928, !tbaa.struct !731
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !928
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !928
  call void @llvm.va_end(i8* nonnull %8), !dbg !929
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !930
  ret void, !dbg !930
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #17 !dbg !931 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !934, !tbaa !415
  ret i8* %1, !dbg !935
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #18 !dbg !936 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !938, metadata !DIExpression()), !dbg !941
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !942
  call void @llvm.dbg.value(metadata i8* %2, metadata !939, metadata !DIExpression()), !dbg !941
  %3 = icmp eq i8* %2, null, !dbg !943
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !943
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !943
  call void @llvm.dbg.value(metadata i8* %5, metadata !940, metadata !DIExpression()), !dbg !941
  %6 = ptrtoint i8* %5 to i64, !dbg !944
  %7 = ptrtoint i8* %0 to i64, !dbg !944
  %8 = sub i64 %6, %7, !dbg !944
  %9 = icmp sgt i64 %8, 6, !dbg !946
  br i1 %9, label %10, label %19, !dbg !947

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !948
  call void @llvm.dbg.value(metadata i8* %11, metadata !949, metadata !DIExpression()) #32, !dbg !956
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), metadata !954, metadata !DIExpression()) #32, !dbg !956
  call void @llvm.dbg.value(metadata i64 7, metadata !955, metadata !DIExpression()) #32, !dbg !956
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i64 7) #32, !dbg !958
  %13 = icmp eq i32 %12, 0, !dbg !959
  br i1 %13, label %14, label %19, !dbg !960

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !938, metadata !DIExpression()), !dbg !941
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.48, i64 0, i64 0), i64 noundef 3) #34, !dbg !961
  %16 = icmp eq i32 %15, 0, !dbg !964
  %17 = select i1 %16, i64 3, i64 0, !dbg !965
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !965
  br label %19, !dbg !965

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !941
  call void @llvm.dbg.value(metadata i8* %21, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i8* %20, metadata !938, metadata !DIExpression()), !dbg !941
  store i8* %20, i8** @program_name, align 8, !dbg !966, !tbaa !415
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !967, !tbaa !415
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !968, !tbaa !415
  ret void, !dbg !969
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !180 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !187, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* %1, metadata !188, metadata !DIExpression()), !dbg !970
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !971
  call void @llvm.dbg.value(metadata i8* %5, metadata !189, metadata !DIExpression()), !dbg !970
  %6 = icmp eq i8* %5, %0, !dbg !972
  br i1 %6, label %7, label %17, !dbg !974

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !975
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !975
  %10 = bitcast i64* %4 to i8*, !dbg !976
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !976
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !195, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !978, metadata !DIExpression()) #32, !dbg !985
  call void @llvm.dbg.value(metadata i8* %10, metadata !987, metadata !DIExpression()) #32, !dbg !995
  call void @llvm.dbg.value(metadata i32 0, metadata !993, metadata !DIExpression()) #32, !dbg !995
  call void @llvm.dbg.value(metadata i64 8, metadata !994, metadata !DIExpression()) #32, !dbg !995
  store i64 0, i64* %4, align 8, !dbg !997
  call void @llvm.dbg.value(metadata i32* %3, metadata !190, metadata !DIExpression(DW_OP_deref)), !dbg !970
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !998
  %12 = icmp eq i64 %11, 2, !dbg !1000
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !190, metadata !DIExpression()), !dbg !970
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1001
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !970
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1002
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1002
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !970
  ret i8* %18, !dbg !1002
}

; Function Attrs: nounwind
declare !dbg !1003 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1009 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1014, metadata !DIExpression()), !dbg !1017
  %2 = tail call i32* @__errno_location() #35, !dbg !1018
  %3 = load i32, i32* %2, align 4, !dbg !1018, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %3, metadata !1015, metadata !DIExpression()), !dbg !1017
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1019
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1019
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1019
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #38, !dbg !1020
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1016, metadata !DIExpression()), !dbg !1017
  store i32 %3, i32* %2, align 4, !dbg !1021, !tbaa !432
  ret %struct.quoting_options* %8, !dbg !1022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #17 !dbg !1023 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1029, metadata !DIExpression()), !dbg !1030
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1031
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1031
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1032
  %5 = load i32, i32* %4, align 8, !dbg !1032, !tbaa !1033
  ret i32 %5, !dbg !1035
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #13 !dbg !1036 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1040, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata i32 %1, metadata !1041, metadata !DIExpression()), !dbg !1042
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1043
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1043
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1044
  store i32 %1, i32* %5, align 8, !dbg !1045, !tbaa !1033
  ret void, !dbg !1046
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #20 !dbg !1047 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1051, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %1, metadata !1052, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 %2, metadata !1053, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %1, metadata !1054, metadata !DIExpression()), !dbg !1059
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1060
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1060
  %6 = lshr i8 %1, 5, !dbg !1061
  %7 = zext i8 %6 to i64, !dbg !1061
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1062
  call void @llvm.dbg.value(metadata i32* %8, metadata !1055, metadata !DIExpression()), !dbg !1059
  %9 = and i8 %1, 31, !dbg !1063
  %10 = zext i8 %9 to i32, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %10, metadata !1057, metadata !DIExpression()), !dbg !1059
  %11 = load i32, i32* %8, align 4, !dbg !1064, !tbaa !432
  %12 = lshr i32 %11, %10, !dbg !1065
  %13 = and i32 %12, 1, !dbg !1066
  call void @llvm.dbg.value(metadata i32 %13, metadata !1058, metadata !DIExpression()), !dbg !1059
  %14 = and i32 %2, 1, !dbg !1067
  %15 = xor i32 %13, %14, !dbg !1068
  %16 = shl i32 %15, %10, !dbg !1069
  %17 = xor i32 %16, %11, !dbg !1070
  store i32 %17, i32* %8, align 4, !dbg !1070, !tbaa !432
  ret i32 %13, !dbg !1071
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1072 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1076, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32 %1, metadata !1077, metadata !DIExpression()), !dbg !1079
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1080
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1076, metadata !DIExpression()), !dbg !1079
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1083
  %6 = load i32, i32* %5, align 4, !dbg !1083, !tbaa !1084
  call void @llvm.dbg.value(metadata i32 %6, metadata !1078, metadata !DIExpression()), !dbg !1079
  store i32 %1, i32* %5, align 4, !dbg !1085, !tbaa !1084
  ret i32 %6, !dbg !1086
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1087 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1091, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %1, metadata !1092, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %2, metadata !1093, metadata !DIExpression()), !dbg !1094
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1095
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1097
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1091, metadata !DIExpression()), !dbg !1094
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1098
  store i32 10, i32* %6, align 8, !dbg !1099, !tbaa !1033
  %7 = icmp ne i8* %1, null, !dbg !1100
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1102
  br i1 %9, label %11, label %10, !dbg !1102

10:                                               ; preds = %3
  tail call void @abort() #33, !dbg !1103
  unreachable, !dbg !1103

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1104
  store i8* %1, i8** %12, align 8, !dbg !1105, !tbaa !1106
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1107
  store i8* %2, i8** %13, align 8, !dbg !1108, !tbaa !1109
  ret void, !dbg !1110
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1115, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %1, metadata !1116, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %2, metadata !1117, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %3, metadata !1118, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1119, metadata !DIExpression()), !dbg !1123
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1124
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1120, metadata !DIExpression()), !dbg !1123
  %8 = tail call i32* @__errno_location() #35, !dbg !1125
  %9 = load i32, i32* %8, align 4, !dbg !1125, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %9, metadata !1121, metadata !DIExpression()), !dbg !1123
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1126
  %11 = load i32, i32* %10, align 8, !dbg !1126, !tbaa !1033
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1127
  %13 = load i32, i32* %12, align 4, !dbg !1127, !tbaa !1084
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1128
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1129
  %16 = load i8*, i8** %15, align 8, !dbg !1129, !tbaa !1106
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1130
  %18 = load i8*, i8** %17, align 8, !dbg !1130, !tbaa !1109
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %19, metadata !1122, metadata !DIExpression()), !dbg !1123
  store i32 %9, i32* %8, align 4, !dbg !1132, !tbaa !432
  ret i64 %19, !dbg !1133
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1134 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1140, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %1, metadata !1141, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %2, metadata !1142, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %3, metadata !1143, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %4, metadata !1144, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %5, metadata !1145, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32* %6, metadata !1146, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %7, metadata !1147, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %8, metadata !1148, metadata !DIExpression()), !dbg !1202
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1203
  %18 = icmp eq i64 %17, 1, !dbg !1204
  call void @llvm.dbg.value(metadata i1 %18, metadata !1149, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1202
  call void @llvm.dbg.value(metadata i64 0, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 0, metadata !1151, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* null, metadata !1152, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 0, metadata !1153, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 0, metadata !1154, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %5, metadata !1155, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1202
  call void @llvm.dbg.value(metadata i8 0, metadata !1156, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 1, metadata !1157, metadata !DIExpression()), !dbg !1202
  %19 = and i32 %5, 2, !dbg !1205
  %20 = icmp ne i32 %19, 0, !dbg !1205
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
  br label %36, !dbg !1205

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1206
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1207
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1208
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1141, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %43, metadata !1153, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %42, metadata !1152, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %41, metadata !1151, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 0, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %40, metadata !1143, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %39, metadata !1148, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %38, metadata !1147, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %37, metadata !1144, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.label(metadata !1195), !dbg !1209
  call void @llvm.dbg.value(metadata i8 0, metadata !1158, metadata !DIExpression()), !dbg !1202
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
  ], !dbg !1210

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 5, metadata !1144, metadata !DIExpression()), !dbg !1202
  br label %111, !dbg !1211

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 5, metadata !1144, metadata !DIExpression()), !dbg !1202
  br i1 %45, label %111, label %51, !dbg !1211

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1212
  br i1 %52, label %111, label %53, !dbg !1216

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1212, !tbaa !441
  br label %111, !dbg !1212

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), metadata !271, metadata !DIExpression()) #32, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %37, metadata !272, metadata !DIExpression()) #32, !dbg !1217
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 noundef 5) #32, !dbg !1221
  call void @llvm.dbg.value(metadata i8* %55, metadata !273, metadata !DIExpression()) #32, !dbg !1217
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), !dbg !1222
  br i1 %56, label %57, label %66, !dbg !1224

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1225
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1226
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !275, metadata !DIExpression()) #32, !dbg !1227
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1228, metadata !DIExpression()) #32, !dbg !1234
  call void @llvm.dbg.value(metadata i8* %23, metadata !1236, metadata !DIExpression()) #32, !dbg !1241
  call void @llvm.dbg.value(metadata i32 0, metadata !1239, metadata !DIExpression()) #32, !dbg !1241
  call void @llvm.dbg.value(metadata i64 8, metadata !1240, metadata !DIExpression()) #32, !dbg !1241
  store i64 0, i64* %13, align 8, !dbg !1243
  call void @llvm.dbg.value(metadata i32* %12, metadata !274, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1217
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1244
  %59 = icmp eq i64 %58, 3, !dbg !1246
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !274, metadata !DIExpression()) #32, !dbg !1217
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1247
  %63 = icmp eq i32 %37, 9, !dbg !1247
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !1247
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1247
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1248
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1217
  call void @llvm.dbg.value(metadata i8* %67, metadata !1147, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), metadata !271, metadata !DIExpression()) #32, !dbg !1249
  call void @llvm.dbg.value(metadata i32 %37, metadata !272, metadata !DIExpression()) #32, !dbg !1249
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 noundef 5) #32, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %68, metadata !273, metadata !DIExpression()) #32, !dbg !1249
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !1252
  br i1 %69, label %70, label %79, !dbg !1253

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1254
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1255
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !275, metadata !DIExpression()) #32, !dbg !1256
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1228, metadata !DIExpression()) #32, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %26, metadata !1236, metadata !DIExpression()) #32, !dbg !1259
  call void @llvm.dbg.value(metadata i32 0, metadata !1239, metadata !DIExpression()) #32, !dbg !1259
  call void @llvm.dbg.value(metadata i64 8, metadata !1240, metadata !DIExpression()) #32, !dbg !1259
  store i64 0, i64* %11, align 8, !dbg !1261
  call void @llvm.dbg.value(metadata i32* %10, metadata !274, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1249
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1262
  %72 = icmp eq i64 %71, 3, !dbg !1263
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !274, metadata !DIExpression()) #32, !dbg !1249
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1264
  %76 = icmp eq i32 %37, 9, !dbg !1264
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !1264
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1264
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1265
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1148, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %80, metadata !1147, metadata !DIExpression()), !dbg !1202
  br i1 %45, label %97, label %82, !dbg !1266

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1159, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 0, metadata !1150, metadata !DIExpression()), !dbg !1202
  %83 = load i8, i8* %80, align 1, !dbg !1268, !tbaa !441
  %84 = icmp eq i8 %83, 0, !dbg !1270
  br i1 %84, label %97, label %85, !dbg !1270

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1159, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i64 %88, metadata !1150, metadata !DIExpression()), !dbg !1202
  %89 = icmp ult i64 %88, %48, !dbg !1271
  br i1 %89, label %90, label %92, !dbg !1274

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1271
  store i8 %86, i8* %91, align 1, !dbg !1271, !tbaa !441
  br label %92, !dbg !1271

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %93, metadata !1150, metadata !DIExpression()), !dbg !1202
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1275
  call void @llvm.dbg.value(metadata i8* %94, metadata !1159, metadata !DIExpression()), !dbg !1267
  %95 = load i8, i8* %94, align 1, !dbg !1268, !tbaa !441
  %96 = icmp eq i8 %95, 0, !dbg !1270
  br i1 %96, label %97, label %85, !dbg !1270, !llvm.loop !1276

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1278
  call void @llvm.dbg.value(metadata i64 %98, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 1, metadata !1154, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %81, metadata !1152, metadata !DIExpression()), !dbg !1202
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %99, metadata !1153, metadata !DIExpression()), !dbg !1202
  br label %111, !dbg !1280

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1154, metadata !DIExpression()), !dbg !1202
  br label %102, !dbg !1281

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1202
  br i1 %45, label %102, label %105, !dbg !1282

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 2, metadata !1144, metadata !DIExpression()), !dbg !1202
  br label %111, !dbg !1283

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 2, metadata !1144, metadata !DIExpression()), !dbg !1202
  br i1 %45, label %111, label %105, !dbg !1283

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1284
  br i1 %107, label %111, label %108, !dbg !1288

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1284, !tbaa !441
  br label %111, !dbg !1284

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1155, metadata !DIExpression()), !dbg !1202
  br label %111, !dbg !1289

110:                                              ; preds = %36
  call void @abort() #33, !dbg !1290
  unreachable, !dbg !1290

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1278
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %102 ], !dbg !1202
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1202
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1155, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1154, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %117, metadata !1153, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %116, metadata !1152, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %115, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %114, metadata !1148, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %113, metadata !1147, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %112, metadata !1144, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 0, metadata !1164, metadata !DIExpression()), !dbg !1291
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
  br label %132, !dbg !1292

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1278
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1206
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1291
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1141, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %139, metadata !1164, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %135, metadata !1151, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %134, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %133, metadata !1143, metadata !DIExpression()), !dbg !1202
  %141 = icmp eq i64 %133, -1, !dbg !1293
  br i1 %141, label %142, label %146, !dbg !1294

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1295
  %144 = load i8, i8* %143, align 1, !dbg !1295, !tbaa !441
  %145 = icmp eq i8 %144, 0, !dbg !1296
  br i1 %145, label %596, label %148, !dbg !1297

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1298
  br i1 %147, label %596, label %148, !dbg !1297

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1166, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 0, metadata !1169, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 0, metadata !1170, metadata !DIExpression()), !dbg !1299
  br i1 %123, label %149, label %163, !dbg !1300

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1302
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1303
  br i1 %151, label %152, label %154, !dbg !1303

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %153, metadata !1143, metadata !DIExpression()), !dbg !1202
  br label %154, !dbg !1305

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1305
  call void @llvm.dbg.value(metadata i64 %155, metadata !1143, metadata !DIExpression()), !dbg !1202
  %156 = icmp ugt i64 %150, %155, !dbg !1306
  br i1 %156, label %163, label %157, !dbg !1307

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %158, metadata !1309, metadata !DIExpression()) #32, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %116, metadata !1312, metadata !DIExpression()) #32, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %117, metadata !1313, metadata !DIExpression()) #32, !dbg !1314
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1316
  %160 = icmp ne i32 %159, 0, !dbg !1317
  %161 = or i1 %160, %125, !dbg !1318
  %162 = xor i1 %160, true, !dbg !1318
  br i1 %161, label %163, label %647, !dbg !1318

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1166, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %164, metadata !1143, metadata !DIExpression()), !dbg !1202
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1319
  %167 = load i8, i8* %166, align 1, !dbg !1319, !tbaa !441
  call void @llvm.dbg.value(metadata i8 %167, metadata !1171, metadata !DIExpression()), !dbg !1299
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
  ], !dbg !1320

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1321

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1322

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1169, metadata !DIExpression()), !dbg !1299
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1326
  br i1 %171, label %188, label %172, !dbg !1326

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1328
  br i1 %173, label %174, label %176, !dbg !1332

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1328
  store i8 39, i8* %175, align 1, !dbg !1328, !tbaa !441
  br label %176, !dbg !1328

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %177, metadata !1150, metadata !DIExpression()), !dbg !1202
  %178 = icmp ult i64 %177, %140, !dbg !1333
  br i1 %178, label %179, label %181, !dbg !1336

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1333
  store i8 36, i8* %180, align 1, !dbg !1333, !tbaa !441
  br label %181, !dbg !1333

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %182, metadata !1150, metadata !DIExpression()), !dbg !1202
  %183 = icmp ult i64 %182, %140, !dbg !1337
  br i1 %183, label %184, label %186, !dbg !1340

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1337
  store i8 39, i8* %185, align 1, !dbg !1337, !tbaa !441
  br label %186, !dbg !1337

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %187, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 1, metadata !1158, metadata !DIExpression()), !dbg !1202
  br label %188, !dbg !1341

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1202
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %189, metadata !1150, metadata !DIExpression()), !dbg !1202
  %191 = icmp ult i64 %189, %140, !dbg !1342
  br i1 %191, label %192, label %194, !dbg !1345

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1342
  store i8 92, i8* %193, align 1, !dbg !1342, !tbaa !441
  br label %194, !dbg !1342

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %195, metadata !1150, metadata !DIExpression()), !dbg !1202
  br i1 %120, label %196, label %499, !dbg !1346

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1348
  %198 = icmp ult i64 %197, %164, !dbg !1349
  br i1 %198, label %199, label %456, !dbg !1350

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1351
  %201 = load i8, i8* %200, align 1, !dbg !1351, !tbaa !441
  %202 = add i8 %201, -48, !dbg !1352
  %203 = icmp ult i8 %202, 10, !dbg !1352
  br i1 %203, label %204, label %456, !dbg !1352

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1353
  br i1 %205, label %206, label %208, !dbg !1357

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1353
  store i8 48, i8* %207, align 1, !dbg !1353, !tbaa !441
  br label %208, !dbg !1353

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %209, metadata !1150, metadata !DIExpression()), !dbg !1202
  %210 = icmp ult i64 %209, %140, !dbg !1358
  br i1 %210, label %211, label %213, !dbg !1361

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1358
  store i8 48, i8* %212, align 1, !dbg !1358, !tbaa !441
  br label %213, !dbg !1358

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %214, metadata !1150, metadata !DIExpression()), !dbg !1202
  br label %456, !dbg !1362

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1363

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1364

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1365

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1367

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1369
  %221 = icmp ult i64 %220, %164, !dbg !1370
  br i1 %221, label %222, label %456, !dbg !1371

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1372
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1373
  %225 = load i8, i8* %224, align 1, !dbg !1373, !tbaa !441
  %226 = icmp eq i8 %225, 63, !dbg !1374
  br i1 %226, label %227, label %456, !dbg !1375

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1376
  %229 = load i8, i8* %228, align 1, !dbg !1376, !tbaa !441
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
  ], !dbg !1377

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1378

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1171, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %220, metadata !1164, metadata !DIExpression()), !dbg !1291
  %232 = icmp ult i64 %134, %140, !dbg !1380
  br i1 %232, label %233, label %235, !dbg !1383

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1380
  store i8 63, i8* %234, align 1, !dbg !1380, !tbaa !441
  br label %235, !dbg !1380

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %236, metadata !1150, metadata !DIExpression()), !dbg !1202
  %237 = icmp ult i64 %236, %140, !dbg !1384
  br i1 %237, label %238, label %240, !dbg !1387

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1384
  store i8 34, i8* %239, align 1, !dbg !1384, !tbaa !441
  br label %240, !dbg !1384

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %241, metadata !1150, metadata !DIExpression()), !dbg !1202
  %242 = icmp ult i64 %241, %140, !dbg !1388
  br i1 %242, label %243, label %245, !dbg !1391

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1388
  store i8 34, i8* %244, align 1, !dbg !1388, !tbaa !441
  br label %245, !dbg !1388

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %246, metadata !1150, metadata !DIExpression()), !dbg !1202
  %247 = icmp ult i64 %246, %140, !dbg !1392
  br i1 %247, label %248, label %250, !dbg !1395

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1392
  store i8 63, i8* %249, align 1, !dbg !1392, !tbaa !441
  br label %250, !dbg !1392

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %251, metadata !1150, metadata !DIExpression()), !dbg !1202
  br label %456, !dbg !1396

252:                                              ; preds = %163
  br label %263, !dbg !1397

253:                                              ; preds = %163
  br label %263, !dbg !1398

254:                                              ; preds = %163
  br label %261, !dbg !1399

255:                                              ; preds = %163
  br label %261, !dbg !1400

256:                                              ; preds = %163
  br label %263, !dbg !1401

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1402

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1403

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1406

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1408

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1409
  call void @llvm.dbg.label(metadata !1196), !dbg !1410
  br i1 %128, label %263, label %638, !dbg !1411

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1409
  call void @llvm.dbg.label(metadata !1198), !dbg !1413
  br i1 %118, label %510, label %467, !dbg !1414

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1415

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1416, !tbaa !441
  %268 = icmp eq i8 %267, 0, !dbg !1418
  br i1 %268, label %269, label %456, !dbg !1419

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1420
  br i1 %270, label %271, label %456, !dbg !1422

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1170, metadata !DIExpression()), !dbg !1299
  br label %272, !dbg !1423

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1170, metadata !DIExpression()), !dbg !1299
  br i1 %126, label %274, label %456, !dbg !1424

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1426

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1156, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 1, metadata !1170, metadata !DIExpression()), !dbg !1299
  br i1 %126, label %276, label %456, !dbg !1427

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1428

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1431
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1433
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1433
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %282, metadata !1141, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %281, metadata !1151, metadata !DIExpression()), !dbg !1202
  %283 = icmp ult i64 %134, %282, !dbg !1434
  br i1 %283, label %284, label %286, !dbg !1437

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1434
  store i8 39, i8* %285, align 1, !dbg !1434, !tbaa !441
  br label %286, !dbg !1434

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %287, metadata !1150, metadata !DIExpression()), !dbg !1202
  %288 = icmp ult i64 %287, %282, !dbg !1438
  br i1 %288, label %289, label %291, !dbg !1441

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1438
  store i8 92, i8* %290, align 1, !dbg !1438, !tbaa !441
  br label %291, !dbg !1438

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %292, metadata !1150, metadata !DIExpression()), !dbg !1202
  %293 = icmp ult i64 %292, %282, !dbg !1442
  br i1 %293, label %294, label %296, !dbg !1445

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1442
  store i8 39, i8* %295, align 1, !dbg !1442, !tbaa !441
  br label %296, !dbg !1442

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %297, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 0, metadata !1158, metadata !DIExpression()), !dbg !1202
  br label %456, !dbg !1446

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1447

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1172, metadata !DIExpression()), !dbg !1448
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1449
  %301 = load i16*, i16** %300, align 8, !dbg !1449, !tbaa !415
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1449
  %304 = load i16, i16* %303, align 2, !dbg !1449, !tbaa !473
  %305 = and i16 %304, 16384, !dbg !1449
  %306 = icmp ne i16 %305, 0, !dbg !1451
  call void @llvm.dbg.value(metadata i8 poison, metadata !1175, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %349, metadata !1172, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %312, metadata !1143, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i1 %350, metadata !1170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1299
  br label %352, !dbg !1452

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1453
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1176, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1228, metadata !DIExpression()) #32, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %32, metadata !1236, metadata !DIExpression()) #32, !dbg !1457
  call void @llvm.dbg.value(metadata i32 0, metadata !1239, metadata !DIExpression()) #32, !dbg !1457
  call void @llvm.dbg.value(metadata i64 8, metadata !1240, metadata !DIExpression()) #32, !dbg !1457
  store i64 0, i64* %14, align 8, !dbg !1459
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 1, metadata !1175, metadata !DIExpression()), !dbg !1448
  %308 = icmp eq i64 %164, -1, !dbg !1460
  br i1 %308, label %309, label %311, !dbg !1462

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %310, metadata !1143, metadata !DIExpression()), !dbg !1202
  br label %311, !dbg !1464

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1299
  call void @llvm.dbg.value(metadata i64 %312, metadata !1143, metadata !DIExpression()), !dbg !1202
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1465
  %313 = sub i64 %312, %139, !dbg !1466
  call void @llvm.dbg.value(metadata i32* %16, metadata !1179, metadata !DIExpression(DW_OP_deref)), !dbg !1467
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %314, metadata !1183, metadata !DIExpression()), !dbg !1467
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1469

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1448
  %316 = icmp ugt i64 %312, %139, !dbg !1470
  br i1 %316, label %319, label %317, !dbg !1472

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1175, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %349, metadata !1172, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %312, metadata !1143, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i1 %350, metadata !1170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1299
  br label %352, !dbg !1452

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1175, metadata !DIExpression()), !dbg !1448
  br label %346, !dbg !1475

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1172, metadata !DIExpression()), !dbg !1448
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1477
  %323 = load i8, i8* %322, align 1, !dbg !1477, !tbaa !441
  %324 = icmp eq i8 %323, 0, !dbg !1472
  br i1 %324, label %348, label %325, !dbg !1478

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %326, metadata !1172, metadata !DIExpression()), !dbg !1448
  %327 = add i64 %326, %139, !dbg !1480
  %328 = icmp eq i64 %326, %313, !dbg !1470
  br i1 %328, label %348, label %319, !dbg !1472, !llvm.loop !1481

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1482
  call void @llvm.dbg.value(metadata i64 1, metadata !1184, metadata !DIExpression()), !dbg !1483
  br i1 %331, label %332, label %340, !dbg !1482

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1184, metadata !DIExpression()), !dbg !1483
  %334 = add i64 %333, %139, !dbg !1484
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1486
  %336 = load i8, i8* %335, align 1, !dbg !1486, !tbaa !441
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1487

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %338, metadata !1184, metadata !DIExpression()), !dbg !1483
  %339 = icmp eq i64 %338, %314, !dbg !1489
  br i1 %339, label %340, label %332, !dbg !1490, !llvm.loop !1491

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1493, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %341, metadata !1179, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 %341, metadata !1495, metadata !DIExpression()) #32, !dbg !1503
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1505
  %343 = icmp ne i32 %342, 0, !dbg !1506
  call void @llvm.dbg.value(metadata i8 poison, metadata !1175, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %314, metadata !1172, metadata !DIExpression()), !dbg !1448
  br label %348, !dbg !1507

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1175, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1474
  call void @llvm.dbg.label(metadata !1201), !dbg !1508
  %345 = select i1 %118, i32 4, i32 2, !dbg !1509
  br label %643, !dbg !1509

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1175, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %349, metadata !1172, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %312, metadata !1143, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i1 %350, metadata !1170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1299
  br label %352, !dbg !1452

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1175, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %349, metadata !1172, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %312, metadata !1143, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i1 %350, metadata !1170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1299
  %351 = icmp ugt i64 %349, 1, !dbg !1511
  br i1 %351, label %357, label %352, !dbg !1452

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1512
  br i1 %356, label %456, label %357, !dbg !1512

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %361, metadata !1192, metadata !DIExpression()), !dbg !1514
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1515

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1202
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1291
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1516
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1299
  call void @llvm.dbg.value(metadata i8 %369, metadata !1171, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 %368, metadata !1169, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1166, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %366, metadata !1164, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %364, metadata !1150, metadata !DIExpression()), !dbg !1202
  br i1 %362, label %414, label %370, !dbg !1517

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1522

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1169, metadata !DIExpression()), !dbg !1299
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1525
  br i1 %372, label %389, label %373, !dbg !1525

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1527
  br i1 %374, label %375, label %377, !dbg !1531

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1527
  store i8 39, i8* %376, align 1, !dbg !1527, !tbaa !441
  br label %377, !dbg !1527

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %378, metadata !1150, metadata !DIExpression()), !dbg !1202
  %379 = icmp ult i64 %378, %140, !dbg !1532
  br i1 %379, label %380, label %382, !dbg !1535

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1532
  store i8 36, i8* %381, align 1, !dbg !1532, !tbaa !441
  br label %382, !dbg !1532

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %383, metadata !1150, metadata !DIExpression()), !dbg !1202
  %384 = icmp ult i64 %383, %140, !dbg !1536
  br i1 %384, label %385, label %387, !dbg !1539

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1536
  store i8 39, i8* %386, align 1, !dbg !1536, !tbaa !441
  br label %387, !dbg !1536

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %388, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 1, metadata !1158, metadata !DIExpression()), !dbg !1202
  br label %389, !dbg !1540

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1202
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %390, metadata !1150, metadata !DIExpression()), !dbg !1202
  %392 = icmp ult i64 %390, %140, !dbg !1541
  br i1 %392, label %393, label %395, !dbg !1544

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1541
  store i8 92, i8* %394, align 1, !dbg !1541, !tbaa !441
  br label %395, !dbg !1541

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %396, metadata !1150, metadata !DIExpression()), !dbg !1202
  %397 = icmp ult i64 %396, %140, !dbg !1545
  br i1 %397, label %398, label %402, !dbg !1548

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1545
  %400 = or i8 %399, 48, !dbg !1545
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1545
  store i8 %400, i8* %401, align 1, !dbg !1545, !tbaa !441
  br label %402, !dbg !1545

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %403, metadata !1150, metadata !DIExpression()), !dbg !1202
  %404 = icmp ult i64 %403, %140, !dbg !1549
  br i1 %404, label %405, label %410, !dbg !1552

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1549
  %407 = and i8 %406, 7, !dbg !1549
  %408 = or i8 %407, 48, !dbg !1549
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1549
  store i8 %408, i8* %409, align 1, !dbg !1549, !tbaa !441
  br label %410, !dbg !1549

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %411, metadata !1150, metadata !DIExpression()), !dbg !1202
  %412 = and i8 %369, 7, !dbg !1553
  %413 = or i8 %412, 48, !dbg !1554
  call void @llvm.dbg.value(metadata i8 %413, metadata !1171, metadata !DIExpression()), !dbg !1299
  br label %421, !dbg !1555

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1556

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1557
  br i1 %416, label %417, label %419, !dbg !1562

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1557
  store i8 92, i8* %418, align 1, !dbg !1557, !tbaa !441
  br label %419, !dbg !1557

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %420, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 0, metadata !1166, metadata !DIExpression()), !dbg !1299
  br label %421, !dbg !1563

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1202
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1299
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1299
  call void @llvm.dbg.value(metadata i8 %426, metadata !1171, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 %425, metadata !1169, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1166, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %422, metadata !1150, metadata !DIExpression()), !dbg !1202
  %427 = add i64 %366, 1, !dbg !1564
  %428 = icmp ugt i64 %361, %427, !dbg !1566
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1567

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1568
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1568
  br i1 %432, label %433, label %444, !dbg !1568

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1571
  br i1 %434, label %435, label %437, !dbg !1575

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1571
  store i8 39, i8* %436, align 1, !dbg !1571, !tbaa !441
  br label %437, !dbg !1571

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %438, metadata !1150, metadata !DIExpression()), !dbg !1202
  %439 = icmp ult i64 %438, %140, !dbg !1576
  br i1 %439, label %440, label %442, !dbg !1579

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1576
  store i8 39, i8* %441, align 1, !dbg !1576, !tbaa !441
  br label %442, !dbg !1576

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %443, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 0, metadata !1158, metadata !DIExpression()), !dbg !1202
  br label %444, !dbg !1580

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1581
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %445, metadata !1150, metadata !DIExpression()), !dbg !1202
  %447 = icmp ult i64 %445, %140, !dbg !1582
  br i1 %447, label %448, label %450, !dbg !1585

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1582
  store i8 %426, i8* %449, align 1, !dbg !1582, !tbaa !441
  br label %450, !dbg !1582

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %451, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %427, metadata !1164, metadata !DIExpression()), !dbg !1291
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1586
  %453 = load i8, i8* %452, align 1, !dbg !1586, !tbaa !441
  call void @llvm.dbg.value(metadata i8 %453, metadata !1171, metadata !DIExpression()), !dbg !1299
  br label %363, !dbg !1587, !llvm.loop !1588

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1171, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i1 %358, metadata !1170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1299
  call void @llvm.dbg.value(metadata i8 %425, metadata !1169, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1166, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %366, metadata !1164, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %422, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %360, metadata !1143, metadata !DIExpression()), !dbg !1202
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1591
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1202
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1206
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1291
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1299
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1141, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 %465, metadata !1171, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1170, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1169, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1166, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %462, metadata !1164, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %459, metadata !1151, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %458, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %457, metadata !1143, metadata !DIExpression()), !dbg !1202
  br i1 %121, label %478, label %467, !dbg !1592

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
  br i1 %131, label %479, label %499, !dbg !1594

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1595

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
  %490 = lshr i8 %481, 5, !dbg !1596
  %491 = zext i8 %490 to i64, !dbg !1596
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1597
  %493 = load i32, i32* %492, align 4, !dbg !1597, !tbaa !432
  %494 = and i8 %481, 31, !dbg !1598
  %495 = zext i8 %494 to i32, !dbg !1598
  %496 = shl nuw i32 1, %495, !dbg !1599
  %497 = and i32 %493, %496, !dbg !1599
  %498 = icmp eq i32 %497, 0, !dbg !1599
  br i1 %498, label %499, label %510, !dbg !1600

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
  br i1 %165, label %510, label %546, !dbg !1601

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1591
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1202
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1206
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1602
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1299
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1141, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 %518, metadata !1171, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1170, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %516, metadata !1164, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %513, metadata !1151, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %512, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %511, metadata !1143, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.label(metadata !1199), !dbg !1603
  br i1 %119, label %638, label %520, !dbg !1604

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1169, metadata !DIExpression()), !dbg !1299
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1606
  br i1 %521, label %538, label %522, !dbg !1606

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1608
  br i1 %523, label %524, label %526, !dbg !1612

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1608
  store i8 39, i8* %525, align 1, !dbg !1608, !tbaa !441
  br label %526, !dbg !1608

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %527, metadata !1150, metadata !DIExpression()), !dbg !1202
  %528 = icmp ult i64 %527, %519, !dbg !1613
  br i1 %528, label %529, label %531, !dbg !1616

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1613
  store i8 36, i8* %530, align 1, !dbg !1613, !tbaa !441
  br label %531, !dbg !1613

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %532, metadata !1150, metadata !DIExpression()), !dbg !1202
  %533 = icmp ult i64 %532, %519, !dbg !1617
  br i1 %533, label %534, label %536, !dbg !1620

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1617
  store i8 39, i8* %535, align 1, !dbg !1617, !tbaa !441
  br label %536, !dbg !1617

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %537, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 1, metadata !1158, metadata !DIExpression()), !dbg !1202
  br label %538, !dbg !1621

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1299
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %539, metadata !1150, metadata !DIExpression()), !dbg !1202
  %541 = icmp ult i64 %539, %519, !dbg !1622
  br i1 %541, label %542, label %544, !dbg !1625

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1622
  store i8 92, i8* %543, align 1, !dbg !1622, !tbaa !441
  br label %544, !dbg !1622

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %556, metadata !1141, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 %555, metadata !1171, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1170, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1169, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %552, metadata !1164, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %549, metadata !1151, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %548, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %547, metadata !1143, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.label(metadata !1200), !dbg !1626
  br label %570, !dbg !1627

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1591
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1202
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1206
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1602
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1630
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1141, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 %555, metadata !1171, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1170, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i8 poison, metadata !1169, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i64 %552, metadata !1164, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %549, metadata !1151, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %548, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %547, metadata !1143, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.label(metadata !1200), !dbg !1626
  %557 = xor i1 %551, true, !dbg !1627
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1627
  br i1 %558, label %570, label %559, !dbg !1627

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1631
  br i1 %560, label %561, label %563, !dbg !1635

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1631
  store i8 39, i8* %562, align 1, !dbg !1631, !tbaa !441
  br label %563, !dbg !1631

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %564, metadata !1150, metadata !DIExpression()), !dbg !1202
  %565 = icmp ult i64 %564, %556, !dbg !1636
  br i1 %565, label %566, label %568, !dbg !1639

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1636
  store i8 39, i8* %567, align 1, !dbg !1636, !tbaa !441
  br label %568, !dbg !1636

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %569, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 0, metadata !1158, metadata !DIExpression()), !dbg !1202
  br label %570, !dbg !1640

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1299
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %578, metadata !1150, metadata !DIExpression()), !dbg !1202
  %580 = icmp ult i64 %578, %571, !dbg !1641
  br i1 %580, label %581, label %583, !dbg !1644

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1641
  store i8 %572, i8* %582, align 1, !dbg !1641, !tbaa !441
  br label %583, !dbg !1641

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %584, metadata !1150, metadata !DIExpression()), !dbg !1202
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1202
  br label %586, !dbg !1646

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1591
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1202
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1206
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1602
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1141, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %593, metadata !1164, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8 poison, metadata !1158, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %589, metadata !1151, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %588, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %587, metadata !1143, metadata !DIExpression()), !dbg !1202
  %595 = add i64 %593, 1, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %595, metadata !1164, metadata !DIExpression()), !dbg !1291
  br label %132, !dbg !1648, !llvm.loop !1649

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1141, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1157, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8 poison, metadata !1156, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 undef, metadata !1151, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 undef, metadata !1150, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 undef, metadata !1143, metadata !DIExpression()), !dbg !1202
  %597 = icmp eq i64 %134, 0, !dbg !1651
  %598 = and i1 %126, %597, !dbg !1653
  %599 = and i1 %598, %119, !dbg !1653
  br i1 %599, label %638, label %600, !dbg !1653

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1654
  %602 = or i1 %119, %601, !dbg !1654
  %603 = xor i1 %136, true, !dbg !1654
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1654
  br i1 %604, label %612, label %605, !dbg !1654

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1656

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1658
  br label %653, !dbg !1660

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1661
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1663
  br i1 %611, label %36, label %612, !dbg !1663

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1664
  %615 = or i1 %614, %613, !dbg !1666
  br i1 %615, label %631, label %616, !dbg !1666

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1152, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %134, metadata !1150, metadata !DIExpression()), !dbg !1202
  %617 = load i8, i8* %116, align 1, !dbg !1667, !tbaa !441
  %618 = icmp eq i8 %617, 0, !dbg !1670
  br i1 %618, label %631, label %619, !dbg !1670

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1152, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 %622, metadata !1150, metadata !DIExpression()), !dbg !1202
  %623 = icmp ult i64 %622, %140, !dbg !1671
  br i1 %623, label %624, label %626, !dbg !1674

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1671
  store i8 %620, i8* %625, align 1, !dbg !1671, !tbaa !441
  br label %626, !dbg !1671

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %627, metadata !1150, metadata !DIExpression()), !dbg !1202
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1675
  call void @llvm.dbg.value(metadata i8* %628, metadata !1152, metadata !DIExpression()), !dbg !1202
  %629 = load i8, i8* %628, align 1, !dbg !1667, !tbaa !441
  %630 = icmp eq i8 %629, 0, !dbg !1670
  br i1 %630, label %631, label %619, !dbg !1670, !llvm.loop !1676

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1278
  call void @llvm.dbg.value(metadata i64 %632, metadata !1150, metadata !DIExpression()), !dbg !1202
  %633 = icmp ult i64 %632, %140, !dbg !1678
  br i1 %633, label %634, label %653, !dbg !1680

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1681
  store i8 0, i8* %635, align 1, !dbg !1682, !tbaa !441
  br label %653, !dbg !1681

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1201), !dbg !1508
  %637 = icmp eq i32 %112, 2, !dbg !1683
  br i1 %637, label %643, label %647, !dbg !1509

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1201), !dbg !1508
  %641 = icmp eq i32 %112, 2, !dbg !1683
  %642 = select i1 %118, i32 4, i32 2, !dbg !1509
  br i1 %641, label %643, label %647, !dbg !1509

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1509

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1144, metadata !DIExpression()), !dbg !1202
  %651 = and i32 %5, -3, !dbg !1684
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1685
  br label %653, !dbg !1686

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1687
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1688 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1690 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1694, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 %1, metadata !1695, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1696, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %0, metadata !1698, metadata !DIExpression()) #32, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %1, metadata !1703, metadata !DIExpression()) #32, !dbg !1711
  call void @llvm.dbg.value(metadata i64* null, metadata !1704, metadata !DIExpression()) #32, !dbg !1711
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1705, metadata !DIExpression()) #32, !dbg !1711
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1713
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1713
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1706, metadata !DIExpression()) #32, !dbg !1711
  %6 = tail call i32* @__errno_location() #35, !dbg !1714
  %7 = load i32, i32* %6, align 4, !dbg !1714, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %7, metadata !1707, metadata !DIExpression()) #32, !dbg !1711
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1715
  %9 = load i32, i32* %8, align 4, !dbg !1715, !tbaa !1084
  %10 = or i32 %9, 1, !dbg !1716
  call void @llvm.dbg.value(metadata i32 %10, metadata !1708, metadata !DIExpression()) #32, !dbg !1711
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1717
  %12 = load i32, i32* %11, align 8, !dbg !1717, !tbaa !1033
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1718
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1719
  %15 = load i8*, i8** %14, align 8, !dbg !1719, !tbaa !1106
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1720
  %17 = load i8*, i8** %16, align 8, !dbg !1720, !tbaa !1109
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !1721
  %19 = add i64 %18, 1, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %19, metadata !1709, metadata !DIExpression()) #32, !dbg !1711
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #39, !dbg !1723
  call void @llvm.dbg.value(metadata i8* %20, metadata !1710, metadata !DIExpression()) #32, !dbg !1711
  %21 = load i32, i32* %11, align 8, !dbg !1724, !tbaa !1033
  %22 = load i8*, i8** %14, align 8, !dbg !1725, !tbaa !1106
  %23 = load i8*, i8** %16, align 8, !dbg !1726, !tbaa !1109
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !1727
  store i32 %7, i32* %6, align 4, !dbg !1728, !tbaa !432
  ret i8* %20, !dbg !1729
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1699 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1698, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %1, metadata !1703, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64* %2, metadata !1704, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1705, metadata !DIExpression()), !dbg !1730
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1731
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1731
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1706, metadata !DIExpression()), !dbg !1730
  %7 = tail call i32* @__errno_location() #35, !dbg !1732
  %8 = load i32, i32* %7, align 4, !dbg !1732, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %8, metadata !1707, metadata !DIExpression()), !dbg !1730
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1733
  %10 = load i32, i32* %9, align 4, !dbg !1733, !tbaa !1084
  %11 = icmp eq i64* %2, null, !dbg !1734
  %12 = zext i1 %11 to i32, !dbg !1734
  %13 = or i32 %10, %12, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %13, metadata !1708, metadata !DIExpression()), !dbg !1730
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1736
  %15 = load i32, i32* %14, align 8, !dbg !1736, !tbaa !1033
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1737
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1738
  %18 = load i8*, i8** %17, align 8, !dbg !1738, !tbaa !1106
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1739
  %20 = load i8*, i8** %19, align 8, !dbg !1739, !tbaa !1109
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1740
  %22 = add i64 %21, 1, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %22, metadata !1709, metadata !DIExpression()), !dbg !1730
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #39, !dbg !1742
  call void @llvm.dbg.value(metadata i8* %23, metadata !1710, metadata !DIExpression()), !dbg !1730
  %24 = load i32, i32* %14, align 8, !dbg !1743, !tbaa !1033
  %25 = load i8*, i8** %17, align 8, !dbg !1744, !tbaa !1106
  %26 = load i8*, i8** %19, align 8, !dbg !1745, !tbaa !1109
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1746
  store i32 %8, i32* %7, align 4, !dbg !1747, !tbaa !432
  br i1 %11, label %29, label %28, !dbg !1748

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1749, !tbaa !1751
  br label %29, !dbg !1752

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1753
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1754 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1759, !tbaa !415
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1756, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 1, metadata !1757, metadata !DIExpression()), !dbg !1761
  %2 = load i32, i32* @nslots, align 4, !tbaa !432
  call void @llvm.dbg.value(metadata i32 1, metadata !1757, metadata !DIExpression()), !dbg !1761
  %3 = icmp sgt i32 %2, 1, !dbg !1762
  br i1 %3, label %4, label %6, !dbg !1764

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1762
  br label %10, !dbg !1764

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1765
  %8 = load i8*, i8** %7, align 8, !dbg !1765, !tbaa !1767
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1769
  br i1 %9, label %17, label %16, !dbg !1770

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1757, metadata !DIExpression()), !dbg !1761
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1771
  %13 = load i8*, i8** %12, align 8, !dbg !1771, !tbaa !1767
  tail call void @free(i8* noundef %13) #32, !dbg !1772
  %14 = add nuw nsw i64 %11, 1, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %14, metadata !1757, metadata !DIExpression()), !dbg !1761
  %15 = icmp eq i64 %14, %5, !dbg !1762
  br i1 %15, label %6, label %10, !dbg !1764, !llvm.loop !1774

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !1776
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1778, !tbaa !1779
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1780, !tbaa !1767
  br label %17, !dbg !1781

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1782
  br i1 %18, label %21, label %19, !dbg !1784

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1785
  tail call void @free(i8* noundef %20) #32, !dbg !1787
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1788, !tbaa !415
  br label %21, !dbg !1789

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1790, !tbaa !432
  ret void, !dbg !1791
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1794, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8* %1, metadata !1795, metadata !DIExpression()), !dbg !1796
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1797
  ret i8* %3, !dbg !1798
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1799 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1803, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %1, metadata !1804, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 %2, metadata !1805, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1806, metadata !DIExpression()), !dbg !1819
  %6 = tail call i32* @__errno_location() #35, !dbg !1820
  %7 = load i32, i32* %6, align 4, !dbg !1820, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %7, metadata !1807, metadata !DIExpression()), !dbg !1819
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1821, !tbaa !415
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !1808, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !1809, metadata !DIExpression()), !dbg !1819
  %9 = icmp ugt i32 %0, 2147483646, !dbg !1822
  br i1 %9, label %10, label %11, !dbg !1822

10:                                               ; preds = %4
  tail call void @abort() #33, !dbg !1824
  unreachable, !dbg !1824

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !1825, !tbaa !432
  %13 = icmp sgt i32 %12, %0, !dbg !1826
  br i1 %13, label %36, label %14, !dbg !1827

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !1828
  call void @llvm.dbg.value(metadata i1 %15, metadata !1810, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1829
  %16 = bitcast i64* %5 to i8*, !dbg !1830
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1830
  %17 = sext i32 %12 to i64, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %17, metadata !1813, metadata !DIExpression()), !dbg !1829
  store i64 %17, i64* %5, align 8, !dbg !1832, !tbaa !1751
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !1833
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1833
  %20 = add nuw nsw i32 %0, 1, !dbg !1834
  %21 = sub i32 %20, %12, !dbg !1835
  %22 = sext i32 %21 to i64, !dbg !1836
  call void @llvm.dbg.value(metadata i64* %5, metadata !1813, metadata !DIExpression(DW_OP_deref)), !dbg !1829
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !1837
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1837
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1808, metadata !DIExpression()), !dbg !1819
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1838, !tbaa !415
  br i1 %15, label %25, label %26, !dbg !1839

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1840, !tbaa.struct !1842
  br label %26, !dbg !1843

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !1844, !tbaa !432
  %28 = sext i32 %27 to i64, !dbg !1845
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1845
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1846
  %31 = load i64, i64* %5, align 8, !dbg !1847, !tbaa !1751
  call void @llvm.dbg.value(metadata i64 %31, metadata !1813, metadata !DIExpression()), !dbg !1829
  %32 = sub nsw i64 %31, %28, !dbg !1848
  %33 = shl i64 %32, 4, !dbg !1849
  call void @llvm.dbg.value(metadata i8* %30, metadata !1236, metadata !DIExpression()) #32, !dbg !1850
  call void @llvm.dbg.value(metadata i32 0, metadata !1239, metadata !DIExpression()) #32, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %33, metadata !1240, metadata !DIExpression()) #32, !dbg !1850
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !1852
  %34 = load i64, i64* %5, align 8, !dbg !1853, !tbaa !1751
  call void @llvm.dbg.value(metadata i64 %34, metadata !1813, metadata !DIExpression()), !dbg !1829
  %35 = trunc i64 %34 to i32, !dbg !1853
  store i32 %35, i32* @nslots, align 4, !dbg !1854, !tbaa !432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !1855
  br label %36, !dbg !1856

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !1819
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !1808, metadata !DIExpression()), !dbg !1819
  %38 = zext i32 %0 to i64, !dbg !1857
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !1858
  %40 = load i64, i64* %39, align 8, !dbg !1858, !tbaa !1779
  call void @llvm.dbg.value(metadata i64 %40, metadata !1814, metadata !DIExpression()), !dbg !1859
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !1860
  %42 = load i8*, i8** %41, align 8, !dbg !1860, !tbaa !1767
  call void @llvm.dbg.value(metadata i8* %42, metadata !1816, metadata !DIExpression()), !dbg !1859
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1861
  %44 = load i32, i32* %43, align 4, !dbg !1861, !tbaa !1084
  %45 = or i32 %44, 1, !dbg !1862
  call void @llvm.dbg.value(metadata i32 %45, metadata !1817, metadata !DIExpression()), !dbg !1859
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1863
  %47 = load i32, i32* %46, align 8, !dbg !1863, !tbaa !1033
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1864
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1865
  %50 = load i8*, i8** %49, align 8, !dbg !1865, !tbaa !1106
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1866
  %52 = load i8*, i8** %51, align 8, !dbg !1866, !tbaa !1109
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %53, metadata !1818, metadata !DIExpression()), !dbg !1859
  %54 = icmp ugt i64 %40, %53, !dbg !1868
  br i1 %54, label %65, label %55, !dbg !1870

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %56, metadata !1814, metadata !DIExpression()), !dbg !1859
  store i64 %56, i64* %39, align 8, !dbg !1873, !tbaa !1779
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1874
  br i1 %57, label %59, label %58, !dbg !1876

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !1877
  br label %59, !dbg !1877

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #39, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %60, metadata !1816, metadata !DIExpression()), !dbg !1859
  store i8* %60, i8** %41, align 8, !dbg !1879, !tbaa !1767
  %61 = load i32, i32* %46, align 8, !dbg !1880, !tbaa !1033
  %62 = load i8*, i8** %49, align 8, !dbg !1881, !tbaa !1106
  %63 = load i8*, i8** %51, align 8, !dbg !1882, !tbaa !1109
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !1883
  br label %65, !dbg !1884

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !1859
  call void @llvm.dbg.value(metadata i8* %66, metadata !1816, metadata !DIExpression()), !dbg !1859
  store i32 %7, i32* %6, align 4, !dbg !1885, !tbaa !432
  ret i8* %66, !dbg !1886
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1891, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8* %1, metadata !1892, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %2, metadata !1893, metadata !DIExpression()), !dbg !1894
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1895
  ret i8* %4, !dbg !1896
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !1897 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1899, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i32 0, metadata !1794, metadata !DIExpression()) #32, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %0, metadata !1795, metadata !DIExpression()) #32, !dbg !1901
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !1903
  ret i8* %2, !dbg !1904
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !1905 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1909, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %1, metadata !1910, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 0, metadata !1891, metadata !DIExpression()) #32, !dbg !1912
  call void @llvm.dbg.value(metadata i8* %0, metadata !1892, metadata !DIExpression()) #32, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %1, metadata !1893, metadata !DIExpression()) #32, !dbg !1912
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !1914
  ret i8* %3, !dbg !1915
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1916 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1920, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i32 %1, metadata !1921, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8* %2, metadata !1922, metadata !DIExpression()), !dbg !1924
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !1925
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !1925
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1923, metadata !DIExpression()), !dbg !1926
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927), !dbg !1930
  call void @llvm.dbg.value(metadata i32 %1, metadata !1931, metadata !DIExpression()) #32, !dbg !1937
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1936, metadata !DIExpression()) #32, !dbg !1939
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !1939, !alias.scope !1927
  %6 = icmp eq i32 %1, 10, !dbg !1940
  br i1 %6, label %7, label %8, !dbg !1942

7:                                                ; preds = %3
  tail call void @abort() #33, !dbg !1943, !noalias !1927
  unreachable, !dbg !1943

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1944
  store i32 %1, i32* %9, align 8, !dbg !1945, !tbaa !1033, !alias.scope !1927
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !1946
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !1947
  ret i8* %10, !dbg !1948
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !1949 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1953, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i32 %1, metadata !1954, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %2, metadata !1955, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %3, metadata !1956, metadata !DIExpression()), !dbg !1958
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1959
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !1959
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !1957, metadata !DIExpression()), !dbg !1960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1961), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %1, metadata !1931, metadata !DIExpression()) #32, !dbg !1965
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !1936, metadata !DIExpression()) #32, !dbg !1967
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !1967, !alias.scope !1961
  %7 = icmp eq i32 %1, 10, !dbg !1968
  br i1 %7, label %8, label %9, !dbg !1969

8:                                                ; preds = %4
  tail call void @abort() #33, !dbg !1970, !noalias !1961
  unreachable, !dbg !1970

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1971
  store i32 %1, i32* %10, align 8, !dbg !1972, !tbaa !1033, !alias.scope !1961
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !1973
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !1974
  ret i8* %11, !dbg !1975
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1976 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1980, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8* %1, metadata !1981, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i32 0, metadata !1920, metadata !DIExpression()) #32, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %0, metadata !1921, metadata !DIExpression()) #32, !dbg !1983
  call void @llvm.dbg.value(metadata i8* %1, metadata !1922, metadata !DIExpression()) #32, !dbg !1983
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !1985
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !1985
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !1923, metadata !DIExpression()) #32, !dbg !1986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1987) #32, !dbg !1990
  call void @llvm.dbg.value(metadata i32 %0, metadata !1931, metadata !DIExpression()) #32, !dbg !1991
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !1936, metadata !DIExpression()) #32, !dbg !1993
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !1993, !alias.scope !1987
  %5 = icmp eq i32 %0, 10, !dbg !1994
  br i1 %5, label %6, label %7, !dbg !1995

6:                                                ; preds = %2
  tail call void @abort() #33, !dbg !1996, !noalias !1987
  unreachable, !dbg !1996

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1997
  store i32 %0, i32* %8, align 8, !dbg !1998, !tbaa !1033, !alias.scope !1987
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !1999
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2000
  ret i8* %9, !dbg !2001
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2002 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2006, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8* %1, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %2, metadata !2008, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 0, metadata !1953, metadata !DIExpression()) #32, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %0, metadata !1954, metadata !DIExpression()) #32, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %1, metadata !1955, metadata !DIExpression()) #32, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %2, metadata !1956, metadata !DIExpression()) #32, !dbg !2010
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2012
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2012
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1957, metadata !DIExpression()) #32, !dbg !2013
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014) #32, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %0, metadata !1931, metadata !DIExpression()) #32, !dbg !2018
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !1936, metadata !DIExpression()) #32, !dbg !2020
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2020, !alias.scope !2014
  %6 = icmp eq i32 %0, 10, !dbg !2021
  br i1 %6, label %7, label %8, !dbg !2022

7:                                                ; preds = %3
  tail call void @abort() #33, !dbg !2023, !noalias !2014
  unreachable, !dbg !2023

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2024
  store i32 %0, i32* %9, align 8, !dbg !2025, !tbaa !1033, !alias.scope !2014
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2026
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2027
  ret i8* %10, !dbg !2028
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2029 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2033, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %1, metadata !2034, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8 %2, metadata !2035, metadata !DIExpression()), !dbg !2037
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2038
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2038
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2036, metadata !DIExpression()), !dbg !2039
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2040, !tbaa.struct !2041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1051, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 %2, metadata !1052, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i32 1, metadata !1053, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 %2, metadata !1054, metadata !DIExpression()), !dbg !2042
  %6 = lshr i8 %2, 5, !dbg !2044
  %7 = zext i8 %6 to i64, !dbg !2044
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2045
  call void @llvm.dbg.value(metadata i32* %8, metadata !1055, metadata !DIExpression()), !dbg !2042
  %9 = and i8 %2, 31, !dbg !2046
  %10 = zext i8 %9 to i32, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %10, metadata !1057, metadata !DIExpression()), !dbg !2042
  %11 = load i32, i32* %8, align 4, !dbg !2047, !tbaa !432
  %12 = lshr i32 %11, %10, !dbg !2048
  %13 = and i32 %12, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %13, metadata !1058, metadata !DIExpression()), !dbg !2042
  %14 = xor i32 %13, 1, !dbg !2050
  %15 = shl i32 %14, %10, !dbg !2051
  %16 = xor i32 %15, %11, !dbg !2052
  store i32 %16, i32* %8, align 4, !dbg !2052, !tbaa !432
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2053
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2054
  ret i8* %17, !dbg !2055
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2056 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2060, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 %1, metadata !2061, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8* %0, metadata !2033, metadata !DIExpression()) #32, !dbg !2063
  call void @llvm.dbg.value(metadata i64 -1, metadata !2034, metadata !DIExpression()) #32, !dbg !2063
  call void @llvm.dbg.value(metadata i8 %1, metadata !2035, metadata !DIExpression()) #32, !dbg !2063
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2065
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2065
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2036, metadata !DIExpression()) #32, !dbg !2066
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2067, !tbaa.struct !2041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1051, metadata !DIExpression()) #32, !dbg !2068
  call void @llvm.dbg.value(metadata i8 %1, metadata !1052, metadata !DIExpression()) #32, !dbg !2068
  call void @llvm.dbg.value(metadata i32 1, metadata !1053, metadata !DIExpression()) #32, !dbg !2068
  call void @llvm.dbg.value(metadata i8 %1, metadata !1054, metadata !DIExpression()) #32, !dbg !2068
  %5 = lshr i8 %1, 5, !dbg !2070
  %6 = zext i8 %5 to i64, !dbg !2070
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2071
  call void @llvm.dbg.value(metadata i32* %7, metadata !1055, metadata !DIExpression()) #32, !dbg !2068
  %8 = and i8 %1, 31, !dbg !2072
  %9 = zext i8 %8 to i32, !dbg !2072
  call void @llvm.dbg.value(metadata i32 %9, metadata !1057, metadata !DIExpression()) #32, !dbg !2068
  %10 = load i32, i32* %7, align 4, !dbg !2073, !tbaa !432
  %11 = lshr i32 %10, %9, !dbg !2074
  %12 = and i32 %11, 1, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %12, metadata !1058, metadata !DIExpression()) #32, !dbg !2068
  %13 = xor i32 %12, 1, !dbg !2076
  %14 = shl i32 %13, %9, !dbg !2077
  %15 = xor i32 %14, %10, !dbg !2078
  store i32 %15, i32* %7, align 4, !dbg !2078, !tbaa !432
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2079
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2080
  ret i8* %16, !dbg !2081
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2082 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2084, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %0, metadata !2060, metadata !DIExpression()) #32, !dbg !2086
  call void @llvm.dbg.value(metadata i8 58, metadata !2061, metadata !DIExpression()) #32, !dbg !2086
  call void @llvm.dbg.value(metadata i8* %0, metadata !2033, metadata !DIExpression()) #32, !dbg !2088
  call void @llvm.dbg.value(metadata i64 -1, metadata !2034, metadata !DIExpression()) #32, !dbg !2088
  call void @llvm.dbg.value(metadata i8 58, metadata !2035, metadata !DIExpression()) #32, !dbg !2088
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2090
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2090
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2036, metadata !DIExpression()) #32, !dbg !2091
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2092, !tbaa.struct !2041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1051, metadata !DIExpression()) #32, !dbg !2093
  call void @llvm.dbg.value(metadata i8 58, metadata !1052, metadata !DIExpression()) #32, !dbg !2093
  call void @llvm.dbg.value(metadata i32 1, metadata !1053, metadata !DIExpression()) #32, !dbg !2093
  call void @llvm.dbg.value(metadata i8 58, metadata !1054, metadata !DIExpression()) #32, !dbg !2093
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2095
  call void @llvm.dbg.value(metadata i32* %4, metadata !1055, metadata !DIExpression()) #32, !dbg !2093
  call void @llvm.dbg.value(metadata i32 26, metadata !1057, metadata !DIExpression()) #32, !dbg !2093
  %5 = load i32, i32* %4, align 4, !dbg !2096, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %5, metadata !1058, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2093
  %6 = or i32 %5, 67108864, !dbg !2097
  store i32 %6, i32* %4, align 4, !dbg !2097, !tbaa !432
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2098
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2099
  ret i8* %7, !dbg !2100
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2101 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2103, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %1, metadata !2104, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %0, metadata !2033, metadata !DIExpression()) #32, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %1, metadata !2034, metadata !DIExpression()) #32, !dbg !2106
  call void @llvm.dbg.value(metadata i8 58, metadata !2035, metadata !DIExpression()) #32, !dbg !2106
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2108
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2108
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2036, metadata !DIExpression()) #32, !dbg !2109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2110, !tbaa.struct !2041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1051, metadata !DIExpression()) #32, !dbg !2111
  call void @llvm.dbg.value(metadata i8 58, metadata !1052, metadata !DIExpression()) #32, !dbg !2111
  call void @llvm.dbg.value(metadata i32 1, metadata !1053, metadata !DIExpression()) #32, !dbg !2111
  call void @llvm.dbg.value(metadata i8 58, metadata !1054, metadata !DIExpression()) #32, !dbg !2111
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2113
  call void @llvm.dbg.value(metadata i32* %5, metadata !1055, metadata !DIExpression()) #32, !dbg !2111
  call void @llvm.dbg.value(metadata i32 26, metadata !1057, metadata !DIExpression()) #32, !dbg !2111
  %6 = load i32, i32* %5, align 4, !dbg !2114, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %6, metadata !1058, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2111
  %7 = or i32 %6, 67108864, !dbg !2115
  store i32 %7, i32* %5, align 4, !dbg !2115, !tbaa !432
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2116
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2117
  ret i8* %8, !dbg !2118
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2119 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2121, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %1, metadata !2122, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %2, metadata !2123, metadata !DIExpression()), !dbg !2125
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2126
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2126
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2124, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i32 %1, metadata !1931, metadata !DIExpression()) #32, !dbg !2128
  call void @llvm.dbg.value(metadata i32 0, metadata !1936, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2128
  %6 = icmp eq i32 %1, 10, !dbg !2130
  br i1 %6, label %7, label %8, !dbg !2131

7:                                                ; preds = %3
  tail call void @abort() #33, !dbg !2132, !noalias !2133
  unreachable, !dbg !2132

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !1936, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2128
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2136
  store i32 %1, i32* %9, align 8, !dbg !2136, !tbaa.struct !2041
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2136
  %11 = bitcast i32* %10 to i8*, !dbg !2136
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1051, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 58, metadata !1052, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i32 1, metadata !1053, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 58, metadata !1054, metadata !DIExpression()), !dbg !2137
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2139
  call void @llvm.dbg.value(metadata i32* %12, metadata !1055, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i32 26, metadata !1057, metadata !DIExpression()), !dbg !2137
  %13 = load i32, i32* %12, align 4, !dbg !2140, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %13, metadata !1058, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2137
  %14 = or i32 %13, 67108864, !dbg !2141
  store i32 %14, i32* %12, align 4, !dbg !2141, !tbaa !432
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2142
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2143
  ret i8* %15, !dbg !2144
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2145 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2149, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8* %1, metadata !2150, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8* %2, metadata !2151, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8* %3, metadata !2152, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %0, metadata !2154, metadata !DIExpression()) #32, !dbg !2164
  call void @llvm.dbg.value(metadata i8* %1, metadata !2159, metadata !DIExpression()) #32, !dbg !2164
  call void @llvm.dbg.value(metadata i8* %2, metadata !2160, metadata !DIExpression()) #32, !dbg !2164
  call void @llvm.dbg.value(metadata i8* %3, metadata !2161, metadata !DIExpression()) #32, !dbg !2164
  call void @llvm.dbg.value(metadata i64 -1, metadata !2162, metadata !DIExpression()) #32, !dbg !2164
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2166
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2166
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2163, metadata !DIExpression()) #32, !dbg !2167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2168, !tbaa.struct !2041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1091, metadata !DIExpression()) #32, !dbg !2169
  call void @llvm.dbg.value(metadata i8* %1, metadata !1092, metadata !DIExpression()) #32, !dbg !2169
  call void @llvm.dbg.value(metadata i8* %2, metadata !1093, metadata !DIExpression()) #32, !dbg !2169
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1091, metadata !DIExpression()) #32, !dbg !2169
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2171
  store i32 10, i32* %7, align 8, !dbg !2172, !tbaa !1033
  %8 = icmp ne i8* %1, null, !dbg !2173
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2174
  br i1 %10, label %12, label %11, !dbg !2174

11:                                               ; preds = %4
  tail call void @abort() #33, !dbg !2175
  unreachable, !dbg !2175

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2176
  store i8* %1, i8** %13, align 8, !dbg !2177, !tbaa !1106
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2178
  store i8* %2, i8** %14, align 8, !dbg !2179, !tbaa !1109
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2180
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2181
  ret i8* %15, !dbg !2182
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2155 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2154, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* %1, metadata !2159, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* %2, metadata !2160, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* %3, metadata !2161, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %4, metadata !2162, metadata !DIExpression()), !dbg !2183
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2184
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2184
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2163, metadata !DIExpression()), !dbg !2185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2186, !tbaa.struct !2041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1091, metadata !DIExpression()) #32, !dbg !2187
  call void @llvm.dbg.value(metadata i8* %1, metadata !1092, metadata !DIExpression()) #32, !dbg !2187
  call void @llvm.dbg.value(metadata i8* %2, metadata !1093, metadata !DIExpression()) #32, !dbg !2187
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1091, metadata !DIExpression()) #32, !dbg !2187
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2189
  store i32 10, i32* %8, align 8, !dbg !2190, !tbaa !1033
  %9 = icmp ne i8* %1, null, !dbg !2191
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2192
  br i1 %11, label %13, label %12, !dbg !2192

12:                                               ; preds = %5
  tail call void @abort() #33, !dbg !2193
  unreachable, !dbg !2193

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2194
  store i8* %1, i8** %14, align 8, !dbg !2195, !tbaa !1106
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2196
  store i8* %2, i8** %15, align 8, !dbg !2197, !tbaa !1109
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2198
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2199
  ret i8* %16, !dbg !2200
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2201 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2205, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8* %1, metadata !2206, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8* %2, metadata !2207, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i32 0, metadata !2149, metadata !DIExpression()) #32, !dbg !2209
  call void @llvm.dbg.value(metadata i8* %0, metadata !2150, metadata !DIExpression()) #32, !dbg !2209
  call void @llvm.dbg.value(metadata i8* %1, metadata !2151, metadata !DIExpression()) #32, !dbg !2209
  call void @llvm.dbg.value(metadata i8* %2, metadata !2152, metadata !DIExpression()) #32, !dbg !2209
  call void @llvm.dbg.value(metadata i32 0, metadata !2154, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.dbg.value(metadata i8* %0, metadata !2159, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.dbg.value(metadata i8* %1, metadata !2160, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.dbg.value(metadata i8* %2, metadata !2161, metadata !DIExpression()) #32, !dbg !2211
  call void @llvm.dbg.value(metadata i64 -1, metadata !2162, metadata !DIExpression()) #32, !dbg !2211
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2213
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2213
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2163, metadata !DIExpression()) #32, !dbg !2214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2215, !tbaa.struct !2041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1091, metadata !DIExpression()) #32, !dbg !2216
  call void @llvm.dbg.value(metadata i8* %0, metadata !1092, metadata !DIExpression()) #32, !dbg !2216
  call void @llvm.dbg.value(metadata i8* %1, metadata !1093, metadata !DIExpression()) #32, !dbg !2216
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1091, metadata !DIExpression()) #32, !dbg !2216
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2218
  store i32 10, i32* %6, align 8, !dbg !2219, !tbaa !1033
  %7 = icmp ne i8* %0, null, !dbg !2220
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2221
  br i1 %9, label %11, label %10, !dbg !2221

10:                                               ; preds = %3
  tail call void @abort() #33, !dbg !2222
  unreachable, !dbg !2222

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2223
  store i8* %0, i8** %12, align 8, !dbg !2224, !tbaa !1106
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2225
  store i8* %1, i8** %13, align 8, !dbg !2226, !tbaa !1109
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2228
  ret i8* %14, !dbg !2229
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2230 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2234, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8* %1, metadata !2235, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8* %2, metadata !2236, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i64 %3, metadata !2237, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32 0, metadata !2154, metadata !DIExpression()) #32, !dbg !2239
  call void @llvm.dbg.value(metadata i8* %0, metadata !2159, metadata !DIExpression()) #32, !dbg !2239
  call void @llvm.dbg.value(metadata i8* %1, metadata !2160, metadata !DIExpression()) #32, !dbg !2239
  call void @llvm.dbg.value(metadata i8* %2, metadata !2161, metadata !DIExpression()) #32, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %3, metadata !2162, metadata !DIExpression()) #32, !dbg !2239
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2241
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2241
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2163, metadata !DIExpression()) #32, !dbg !2242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2243, !tbaa.struct !2041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1091, metadata !DIExpression()) #32, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %0, metadata !1092, metadata !DIExpression()) #32, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %1, metadata !1093, metadata !DIExpression()) #32, !dbg !2244
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1091, metadata !DIExpression()) #32, !dbg !2244
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2246
  store i32 10, i32* %7, align 8, !dbg !2247, !tbaa !1033
  %8 = icmp ne i8* %0, null, !dbg !2248
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2249
  br i1 %10, label %12, label %11, !dbg !2249

11:                                               ; preds = %4
  tail call void @abort() #33, !dbg !2250
  unreachable, !dbg !2250

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2251
  store i8* %0, i8** %13, align 8, !dbg !2252, !tbaa !1106
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2253
  store i8* %1, i8** %14, align 8, !dbg !2254, !tbaa !1109
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2255
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2256
  ret i8* %15, !dbg !2257
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2262, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %1, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %2, metadata !2264, metadata !DIExpression()), !dbg !2265
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2266
  ret i8* %4, !dbg !2267
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2268 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %1, metadata !2273, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 0, metadata !2262, metadata !DIExpression()) #32, !dbg !2275
  call void @llvm.dbg.value(metadata i8* %0, metadata !2263, metadata !DIExpression()) #32, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %1, metadata !2264, metadata !DIExpression()) #32, !dbg !2275
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2277
  ret i8* %3, !dbg !2278
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2279 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2283, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %1, metadata !2284, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 %0, metadata !2262, metadata !DIExpression()) #32, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %1, metadata !2263, metadata !DIExpression()) #32, !dbg !2286
  call void @llvm.dbg.value(metadata i64 -1, metadata !2264, metadata !DIExpression()) #32, !dbg !2286
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2288
  ret i8* %3, !dbg !2289
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2290 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2294, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 0, metadata !2283, metadata !DIExpression()) #32, !dbg !2296
  call void @llvm.dbg.value(metadata i8* %0, metadata !2284, metadata !DIExpression()) #32, !dbg !2296
  call void @llvm.dbg.value(metadata i32 0, metadata !2262, metadata !DIExpression()) #32, !dbg !2298
  call void @llvm.dbg.value(metadata i8* %0, metadata !2263, metadata !DIExpression()) #32, !dbg !2298
  call void @llvm.dbg.value(metadata i64 -1, metadata !2264, metadata !DIExpression()) #32, !dbg !2298
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2300
  ret i8* %2, !dbg !2301
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2302 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2341, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %1, metadata !2342, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %2, metadata !2343, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %3, metadata !2344, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8** %4, metadata !2345, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %5, metadata !2346, metadata !DIExpression()), !dbg !2347
  %7 = icmp eq i8* %1, null, !dbg !2348
  br i1 %7, label %10, label %8, !dbg !2350

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2351
  br label %12, !dbg !2351

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.68, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2352
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.70, i64 0, i64 0), i32 noundef 5) #32, !dbg !2353
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2353
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.71, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2354
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.72, i64 0, i64 0), i32 noundef 5) #32, !dbg !2355
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.73, i64 0, i64 0)) #32, !dbg !2355
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.71, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2356
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
  ], !dbg !2357

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.74, i64 0, i64 0), i32 noundef 5) #32, !dbg !2358
  %21 = load i8*, i8** %4, align 8, !dbg !2358, !tbaa !415
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2358
  br label %147, !dbg !2360

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.75, i64 0, i64 0), i32 noundef 5) #32, !dbg !2361
  %25 = load i8*, i8** %4, align 8, !dbg !2361, !tbaa !415
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2361
  %27 = load i8*, i8** %26, align 8, !dbg !2361, !tbaa !415
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2361
  br label %147, !dbg !2362

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.76, i64 0, i64 0), i32 noundef 5) #32, !dbg !2363
  %31 = load i8*, i8** %4, align 8, !dbg !2363, !tbaa !415
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2363
  %33 = load i8*, i8** %32, align 8, !dbg !2363, !tbaa !415
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2363
  %35 = load i8*, i8** %34, align 8, !dbg !2363, !tbaa !415
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2363
  br label %147, !dbg !2364

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.77, i64 0, i64 0), i32 noundef 5) #32, !dbg !2365
  %39 = load i8*, i8** %4, align 8, !dbg !2365, !tbaa !415
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2365
  %41 = load i8*, i8** %40, align 8, !dbg !2365, !tbaa !415
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2365
  %43 = load i8*, i8** %42, align 8, !dbg !2365, !tbaa !415
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2365
  %45 = load i8*, i8** %44, align 8, !dbg !2365, !tbaa !415
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2365
  br label %147, !dbg !2366

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.78, i64 0, i64 0), i32 noundef 5) #32, !dbg !2367
  %49 = load i8*, i8** %4, align 8, !dbg !2367, !tbaa !415
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2367
  %51 = load i8*, i8** %50, align 8, !dbg !2367, !tbaa !415
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2367
  %53 = load i8*, i8** %52, align 8, !dbg !2367, !tbaa !415
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2367
  %55 = load i8*, i8** %54, align 8, !dbg !2367, !tbaa !415
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2367
  %57 = load i8*, i8** %56, align 8, !dbg !2367, !tbaa !415
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2367
  br label %147, !dbg !2368

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.79, i64 0, i64 0), i32 noundef 5) #32, !dbg !2369
  %61 = load i8*, i8** %4, align 8, !dbg !2369, !tbaa !415
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2369
  %63 = load i8*, i8** %62, align 8, !dbg !2369, !tbaa !415
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2369
  %65 = load i8*, i8** %64, align 8, !dbg !2369, !tbaa !415
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2369
  %67 = load i8*, i8** %66, align 8, !dbg !2369, !tbaa !415
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2369
  %69 = load i8*, i8** %68, align 8, !dbg !2369, !tbaa !415
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2369
  %71 = load i8*, i8** %70, align 8, !dbg !2369, !tbaa !415
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2369
  br label %147, !dbg !2370

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.80, i64 0, i64 0), i32 noundef 5) #32, !dbg !2371
  %75 = load i8*, i8** %4, align 8, !dbg !2371, !tbaa !415
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2371
  %77 = load i8*, i8** %76, align 8, !dbg !2371, !tbaa !415
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2371
  %79 = load i8*, i8** %78, align 8, !dbg !2371, !tbaa !415
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2371
  %81 = load i8*, i8** %80, align 8, !dbg !2371, !tbaa !415
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2371
  %83 = load i8*, i8** %82, align 8, !dbg !2371, !tbaa !415
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2371
  %85 = load i8*, i8** %84, align 8, !dbg !2371, !tbaa !415
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2371
  %87 = load i8*, i8** %86, align 8, !dbg !2371, !tbaa !415
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2371
  br label %147, !dbg !2372

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.81, i64 0, i64 0), i32 noundef 5) #32, !dbg !2373
  %91 = load i8*, i8** %4, align 8, !dbg !2373, !tbaa !415
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2373
  %93 = load i8*, i8** %92, align 8, !dbg !2373, !tbaa !415
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2373
  %95 = load i8*, i8** %94, align 8, !dbg !2373, !tbaa !415
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2373
  %97 = load i8*, i8** %96, align 8, !dbg !2373, !tbaa !415
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2373
  %99 = load i8*, i8** %98, align 8, !dbg !2373, !tbaa !415
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2373
  %101 = load i8*, i8** %100, align 8, !dbg !2373, !tbaa !415
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2373
  %103 = load i8*, i8** %102, align 8, !dbg !2373, !tbaa !415
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2373
  %105 = load i8*, i8** %104, align 8, !dbg !2373, !tbaa !415
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2373
  br label %147, !dbg !2374

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.82, i64 0, i64 0), i32 noundef 5) #32, !dbg !2375
  %109 = load i8*, i8** %4, align 8, !dbg !2375, !tbaa !415
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2375
  %111 = load i8*, i8** %110, align 8, !dbg !2375, !tbaa !415
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2375
  %113 = load i8*, i8** %112, align 8, !dbg !2375, !tbaa !415
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2375
  %115 = load i8*, i8** %114, align 8, !dbg !2375, !tbaa !415
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2375
  %117 = load i8*, i8** %116, align 8, !dbg !2375, !tbaa !415
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2375
  %119 = load i8*, i8** %118, align 8, !dbg !2375, !tbaa !415
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2375
  %121 = load i8*, i8** %120, align 8, !dbg !2375, !tbaa !415
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2375
  %123 = load i8*, i8** %122, align 8, !dbg !2375, !tbaa !415
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2375
  %125 = load i8*, i8** %124, align 8, !dbg !2375, !tbaa !415
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2375
  br label %147, !dbg !2376

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.83, i64 0, i64 0), i32 noundef 5) #32, !dbg !2377
  %129 = load i8*, i8** %4, align 8, !dbg !2377, !tbaa !415
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2377
  %131 = load i8*, i8** %130, align 8, !dbg !2377, !tbaa !415
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2377
  %133 = load i8*, i8** %132, align 8, !dbg !2377, !tbaa !415
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2377
  %135 = load i8*, i8** %134, align 8, !dbg !2377, !tbaa !415
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2377
  %137 = load i8*, i8** %136, align 8, !dbg !2377, !tbaa !415
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2377
  %139 = load i8*, i8** %138, align 8, !dbg !2377, !tbaa !415
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2377
  %141 = load i8*, i8** %140, align 8, !dbg !2377, !tbaa !415
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2377
  %143 = load i8*, i8** %142, align 8, !dbg !2377, !tbaa !415
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2377
  %145 = load i8*, i8** %144, align 8, !dbg !2377, !tbaa !415
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2377
  br label %147, !dbg !2378

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2379
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2380 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2384, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %1, metadata !2385, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %2, metadata !2386, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %3, metadata !2387, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8** %4, metadata !2388, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 0, metadata !2389, metadata !DIExpression()), !dbg !2390
  br label %6, !dbg !2391

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2393
  call void @llvm.dbg.value(metadata i64 %7, metadata !2389, metadata !DIExpression()), !dbg !2390
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2394
  %9 = load i8*, i8** %8, align 8, !dbg !2394, !tbaa !415
  %10 = icmp eq i8* %9, null, !dbg !2396
  %11 = add i64 %7, 1, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %11, metadata !2389, metadata !DIExpression()), !dbg !2390
  br i1 %10, label %12, label %6, !dbg !2396, !llvm.loop !2398

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2400
  ret void, !dbg !2401
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2402 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2417, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* %1, metadata !2418, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* %2, metadata !2419, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* %3, metadata !2420, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2421, metadata !DIExpression()), !dbg !2426
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2427
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2427
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2423, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i64 0, metadata !2422, metadata !DIExpression()), !dbg !2425
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2422, metadata !DIExpression()), !dbg !2425
  %11 = load i32, i32* %8, align 8, !dbg !2429
  %12 = icmp sgt i32 %11, -1, !dbg !2429
  br i1 %12, label %20, label %13, !dbg !2429

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2429
  store i32 %14, i32* %8, align 8, !dbg !2429
  %15 = icmp ult i32 %11, -7, !dbg !2429
  br i1 %15, label %16, label %20, !dbg !2429

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2429
  %18 = sext i32 %11 to i64, !dbg !2429
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2429
  br label %24, !dbg !2429

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2429
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2429
  store i8* %23, i8** %10, align 8, !dbg !2429
  br label %24, !dbg !2429

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2429
  %28 = load i8*, i8** %27, align 8, !dbg !2429
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2432
  store i8* %28, i8** %29, align 8, !dbg !2433, !tbaa !415
  %30 = icmp eq i8* %28, null, !dbg !2434
  br i1 %30, label %210, label %31, !dbg !2435

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 1, metadata !2422, metadata !DIExpression()), !dbg !2425
  %32 = icmp sgt i32 %25, -1, !dbg !2429
  br i1 %32, label %40, label %33, !dbg !2429

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2429
  store i32 %34, i32* %8, align 8, !dbg !2429
  %35 = icmp ult i32 %25, -7, !dbg !2429
  br i1 %35, label %36, label %40, !dbg !2429

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2429
  %38 = sext i32 %25 to i64, !dbg !2429
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2429
  br label %44, !dbg !2429

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2429
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2429
  store i8* %43, i8** %10, align 8, !dbg !2429
  br label %44, !dbg !2429

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2429
  %48 = load i8*, i8** %47, align 8, !dbg !2429
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2432
  store i8* %48, i8** %49, align 8, !dbg !2433, !tbaa !415
  %50 = icmp eq i8* %48, null, !dbg !2434
  br i1 %50, label %210, label %51, !dbg !2435

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 2, metadata !2422, metadata !DIExpression()), !dbg !2425
  %52 = icmp sgt i32 %45, -1, !dbg !2429
  br i1 %52, label %60, label %53, !dbg !2429

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2429
  store i32 %54, i32* %8, align 8, !dbg !2429
  %55 = icmp ult i32 %45, -7, !dbg !2429
  br i1 %55, label %56, label %60, !dbg !2429

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2429
  %58 = sext i32 %45 to i64, !dbg !2429
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2429
  br label %64, !dbg !2429

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2429
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2429
  store i8* %63, i8** %10, align 8, !dbg !2429
  br label %64, !dbg !2429

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2429
  %68 = load i8*, i8** %67, align 8, !dbg !2429
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2432
  store i8* %68, i8** %69, align 8, !dbg !2433, !tbaa !415
  %70 = icmp eq i8* %68, null, !dbg !2434
  br i1 %70, label %210, label %71, !dbg !2435

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 3, metadata !2422, metadata !DIExpression()), !dbg !2425
  %72 = icmp sgt i32 %65, -1, !dbg !2429
  br i1 %72, label %80, label %73, !dbg !2429

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2429
  store i32 %74, i32* %8, align 8, !dbg !2429
  %75 = icmp ult i32 %65, -7, !dbg !2429
  br i1 %75, label %76, label %80, !dbg !2429

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2429
  %78 = sext i32 %65 to i64, !dbg !2429
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2429
  br label %84, !dbg !2429

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2429
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2429
  store i8* %83, i8** %10, align 8, !dbg !2429
  br label %84, !dbg !2429

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2429
  %88 = load i8*, i8** %87, align 8, !dbg !2429
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2432
  store i8* %88, i8** %89, align 8, !dbg !2433, !tbaa !415
  %90 = icmp eq i8* %88, null, !dbg !2434
  br i1 %90, label %210, label %91, !dbg !2435

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 4, metadata !2422, metadata !DIExpression()), !dbg !2425
  %92 = icmp sgt i32 %85, -1, !dbg !2429
  br i1 %92, label %100, label %93, !dbg !2429

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2429
  store i32 %94, i32* %8, align 8, !dbg !2429
  %95 = icmp ult i32 %85, -7, !dbg !2429
  br i1 %95, label %96, label %100, !dbg !2429

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2429
  %98 = sext i32 %85 to i64, !dbg !2429
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2429
  br label %104, !dbg !2429

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2429
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2429
  store i8* %103, i8** %10, align 8, !dbg !2429
  br label %104, !dbg !2429

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2429
  %108 = load i8*, i8** %107, align 8, !dbg !2429
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2432
  store i8* %108, i8** %109, align 8, !dbg !2433, !tbaa !415
  %110 = icmp eq i8* %108, null, !dbg !2434
  br i1 %110, label %210, label %111, !dbg !2435

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 5, metadata !2422, metadata !DIExpression()), !dbg !2425
  %112 = icmp sgt i32 %105, -1, !dbg !2429
  br i1 %112, label %120, label %113, !dbg !2429

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2429
  store i32 %114, i32* %8, align 8, !dbg !2429
  %115 = icmp ult i32 %105, -7, !dbg !2429
  br i1 %115, label %116, label %120, !dbg !2429

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2429
  %118 = sext i32 %105 to i64, !dbg !2429
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2429
  br label %124, !dbg !2429

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2429
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2429
  store i8* %123, i8** %10, align 8, !dbg !2429
  br label %124, !dbg !2429

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2429
  %128 = load i8*, i8** %127, align 8, !dbg !2429
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2432
  store i8* %128, i8** %129, align 8, !dbg !2433, !tbaa !415
  %130 = icmp eq i8* %128, null, !dbg !2434
  br i1 %130, label %210, label %131, !dbg !2435

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 6, metadata !2422, metadata !DIExpression()), !dbg !2425
  %132 = icmp sgt i32 %125, -1, !dbg !2429
  br i1 %132, label %140, label %133, !dbg !2429

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2429
  store i32 %134, i32* %8, align 8, !dbg !2429
  %135 = icmp ult i32 %125, -7, !dbg !2429
  br i1 %135, label %136, label %140, !dbg !2429

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2429
  %138 = sext i32 %125 to i64, !dbg !2429
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2429
  br label %144, !dbg !2429

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2429
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2429
  store i8* %143, i8** %10, align 8, !dbg !2429
  br label %144, !dbg !2429

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2429
  %148 = load i8*, i8** %147, align 8, !dbg !2429
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2432
  store i8* %148, i8** %149, align 8, !dbg !2433, !tbaa !415
  %150 = icmp eq i8* %148, null, !dbg !2434
  br i1 %150, label %210, label %151, !dbg !2435

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 7, metadata !2422, metadata !DIExpression()), !dbg !2425
  %152 = icmp sgt i32 %145, -1, !dbg !2429
  br i1 %152, label %160, label %153, !dbg !2429

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2429
  store i32 %154, i32* %8, align 8, !dbg !2429
  %155 = icmp ult i32 %145, -7, !dbg !2429
  br i1 %155, label %156, label %160, !dbg !2429

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2429
  %158 = sext i32 %145 to i64, !dbg !2429
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2429
  br label %164, !dbg !2429

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2429
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2429
  store i8* %163, i8** %10, align 8, !dbg !2429
  br label %164, !dbg !2429

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2429
  %168 = load i8*, i8** %167, align 8, !dbg !2429
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2432
  store i8* %168, i8** %169, align 8, !dbg !2433, !tbaa !415
  %170 = icmp eq i8* %168, null, !dbg !2434
  br i1 %170, label %210, label %171, !dbg !2435

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 8, metadata !2422, metadata !DIExpression()), !dbg !2425
  %172 = icmp sgt i32 %165, -1, !dbg !2429
  br i1 %172, label %180, label %173, !dbg !2429

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2429
  store i32 %174, i32* %8, align 8, !dbg !2429
  %175 = icmp ult i32 %165, -7, !dbg !2429
  br i1 %175, label %176, label %180, !dbg !2429

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2429
  %178 = sext i32 %165 to i64, !dbg !2429
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2429
  br label %184, !dbg !2429

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2429
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2429
  store i8* %183, i8** %10, align 8, !dbg !2429
  br label %184, !dbg !2429

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2429
  %188 = load i8*, i8** %187, align 8, !dbg !2429
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2432
  store i8* %188, i8** %189, align 8, !dbg !2433, !tbaa !415
  %190 = icmp eq i8* %188, null, !dbg !2434
  br i1 %190, label %210, label %191, !dbg !2435

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 9, metadata !2422, metadata !DIExpression()), !dbg !2425
  %192 = icmp sgt i32 %185, -1, !dbg !2429
  br i1 %192, label %200, label %193, !dbg !2429

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2429
  store i32 %194, i32* %8, align 8, !dbg !2429
  %195 = icmp ult i32 %185, -7, !dbg !2429
  br i1 %195, label %196, label %200, !dbg !2429

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2429
  %198 = sext i32 %185 to i64, !dbg !2429
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2429
  br label %203, !dbg !2429

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2429
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2429
  store i8* %202, i8** %10, align 8, !dbg !2429
  br label %203, !dbg !2429

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2429
  %206 = load i8*, i8** %205, align 8, !dbg !2429
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2432
  store i8* %206, i8** %207, align 8, !dbg !2433, !tbaa !415
  %208 = icmp eq i8* %206, null, !dbg !2434
  %209 = select i1 %208, i64 9, i64 10, !dbg !2435
  br label %210, !dbg !2435

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2436
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2437
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2438
  ret void, !dbg !2438
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2439 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2443, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %1, metadata !2444, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %2, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %3, metadata !2446, metadata !DIExpression()), !dbg !2448
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2449
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2449
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.va_start(i8* nonnull %7), !dbg !2451
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2452
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2452, !tbaa.struct !731
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2452
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2452
  call void @llvm.va_end(i8* nonnull %7), !dbg !2453
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2454
  ret void, !dbg !2454
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2455 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2456, !tbaa !415
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.71, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2456
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !2457
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.89, i64 0, i64 0)) #32, !dbg !2457
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.90, i64 0, i64 0), i32 noundef 5) #32, !dbg !2458
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #32, !dbg !2458
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !2459
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !2459
  ret void, !dbg !2460
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2461 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %1, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %2, metadata !2468, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %0, metadata !2470, metadata !DIExpression()) #32, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %1, metadata !2473, metadata !DIExpression()) #32, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %2, metadata !2474, metadata !DIExpression()) #32, !dbg !2475
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2477
  call void @llvm.dbg.value(metadata i8* %4, metadata !2478, metadata !DIExpression()) #32, !dbg !2483
  %5 = icmp eq i8* %4, null, !dbg !2485
  br i1 %5, label %6, label %7, !dbg !2487

6:                                                ; preds = %3
  tail call void @xalloc_die() #33, !dbg !2488
  unreachable, !dbg !2488

7:                                                ; preds = %3
  ret i8* %4, !dbg !2489
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2471 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2470, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i64 %1, metadata !2473, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i64 %2, metadata !2474, metadata !DIExpression()), !dbg !2490
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2491
  call void @llvm.dbg.value(metadata i8* %4, metadata !2478, metadata !DIExpression()) #32, !dbg !2492
  %5 = icmp eq i8* %4, null, !dbg !2494
  br i1 %5, label %6, label %7, !dbg !2495

6:                                                ; preds = %3
  tail call void @xalloc_die() #33, !dbg !2496
  unreachable, !dbg !2496

7:                                                ; preds = %3
  ret i8* %4, !dbg !2497
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2498 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2502, metadata !DIExpression()), !dbg !2503
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2504
  call void @llvm.dbg.value(metadata i8* %2, metadata !2478, metadata !DIExpression()) #32, !dbg !2505
  %3 = icmp eq i8* %2, null, !dbg !2507
  br i1 %3, label %4, label %5, !dbg !2508

4:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2509
  unreachable, !dbg !2509

5:                                                ; preds = %1
  ret i8* %2, !dbg !2510
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2511 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2515, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i64 %0, metadata !2517, metadata !DIExpression()) #32, !dbg !2521
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2523
  call void @llvm.dbg.value(metadata i8* %2, metadata !2478, metadata !DIExpression()) #32, !dbg !2524
  %3 = icmp eq i8* %2, null, !dbg !2526
  br i1 %3, label %4, label %5, !dbg !2527

4:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2528
  unreachable, !dbg !2528

5:                                                ; preds = %1
  ret i8* %2, !dbg !2529
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2530 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2534, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %0, metadata !2502, metadata !DIExpression()) #32, !dbg !2536
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %2, metadata !2478, metadata !DIExpression()) #32, !dbg !2539
  %3 = icmp eq i8* %2, null, !dbg !2541
  br i1 %3, label %4, label %5, !dbg !2542

4:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2543
  unreachable, !dbg !2543

5:                                                ; preds = %1
  ret i8* %2, !dbg !2544
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2545 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2549, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %1, metadata !2550, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %0, metadata !2552, metadata !DIExpression()) #32, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %1, metadata !2556, metadata !DIExpression()) #32, !dbg !2557
  %3 = icmp eq i64 %1, 0, !dbg !2559
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2559
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2560
  call void @llvm.dbg.value(metadata i8* %5, metadata !2478, metadata !DIExpression()) #32, !dbg !2561
  %6 = icmp eq i8* %5, null, !dbg !2563
  br i1 %6, label %7, label %8, !dbg !2564

7:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2565
  unreachable, !dbg !2565

8:                                                ; preds = %2
  ret i8* %5, !dbg !2566
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2567 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2571, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 %1, metadata !2572, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %0, metadata !2574, metadata !DIExpression()) #32, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %1, metadata !2577, metadata !DIExpression()) #32, !dbg !2578
  call void @llvm.dbg.value(metadata i8* %0, metadata !2552, metadata !DIExpression()) #32, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %1, metadata !2556, metadata !DIExpression()) #32, !dbg !2580
  %3 = icmp eq i64 %1, 0, !dbg !2582
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2582
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %5, metadata !2478, metadata !DIExpression()) #32, !dbg !2584
  %6 = icmp eq i8* %5, null, !dbg !2586
  br i1 %6, label %7, label %8, !dbg !2587

7:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2588
  unreachable, !dbg !2588

8:                                                ; preds = %2
  ret i8* %5, !dbg !2589
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2590 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2594, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %1, metadata !2595, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 %2, metadata !2596, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8* %0, metadata !2598, metadata !DIExpression()) #32, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %1, metadata !2601, metadata !DIExpression()) #32, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %2, metadata !2602, metadata !DIExpression()) #32, !dbg !2603
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2605
  call void @llvm.dbg.value(metadata i8* %4, metadata !2478, metadata !DIExpression()) #32, !dbg !2606
  %5 = icmp eq i8* %4, null, !dbg !2608
  br i1 %5, label %6, label %7, !dbg !2609

6:                                                ; preds = %3
  tail call void @xalloc_die() #33, !dbg !2610
  unreachable, !dbg !2610

7:                                                ; preds = %3
  ret i8* %4, !dbg !2611
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2612 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2616, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %1, metadata !2617, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* null, metadata !2470, metadata !DIExpression()) #32, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %0, metadata !2473, metadata !DIExpression()) #32, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %1, metadata !2474, metadata !DIExpression()) #32, !dbg !2619
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2621
  call void @llvm.dbg.value(metadata i8* %3, metadata !2478, metadata !DIExpression()) #32, !dbg !2622
  %4 = icmp eq i8* %3, null, !dbg !2624
  br i1 %4, label %5, label %6, !dbg !2625

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2626
  unreachable, !dbg !2626

6:                                                ; preds = %2
  ret i8* %3, !dbg !2627
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2628 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2632, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i64 %1, metadata !2633, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8* null, metadata !2594, metadata !DIExpression()) #32, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %0, metadata !2595, metadata !DIExpression()) #32, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %1, metadata !2596, metadata !DIExpression()) #32, !dbg !2635
  call void @llvm.dbg.value(metadata i8* null, metadata !2598, metadata !DIExpression()) #32, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %0, metadata !2601, metadata !DIExpression()) #32, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %1, metadata !2602, metadata !DIExpression()) #32, !dbg !2637
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %3, metadata !2478, metadata !DIExpression()) #32, !dbg !2640
  %4 = icmp eq i8* %3, null, !dbg !2642
  br i1 %4, label %5, label %6, !dbg !2643

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2644
  unreachable, !dbg !2644

6:                                                ; preds = %2
  ret i8* %3, !dbg !2645
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2650, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i64* %1, metadata !2651, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8* %0, metadata !351, metadata !DIExpression()) #32, !dbg !2653
  call void @llvm.dbg.value(metadata i64* %1, metadata !352, metadata !DIExpression()) #32, !dbg !2653
  call void @llvm.dbg.value(metadata i64 1, metadata !353, metadata !DIExpression()) #32, !dbg !2653
  %3 = load i64, i64* %1, align 8, !dbg !2655, !tbaa !1751
  call void @llvm.dbg.value(metadata i64 %3, metadata !354, metadata !DIExpression()) #32, !dbg !2653
  %4 = icmp eq i8* %0, null, !dbg !2656
  br i1 %4, label %5, label %8, !dbg !2658

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2659
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2662
  br label %15, !dbg !2662

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2663
  %10 = add nuw i64 %9, 1, !dbg !2663
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !2663
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2663
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %13, metadata !354, metadata !DIExpression()) #32, !dbg !2653
  br i1 %12, label %14, label %15, !dbg !2666

14:                                               ; preds = %8
  tail call void @xalloc_die() #33, !dbg !2667
  unreachable, !dbg !2667

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2653
  call void @llvm.dbg.value(metadata i64 %16, metadata !354, metadata !DIExpression()) #32, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %0, metadata !2470, metadata !DIExpression()) #32, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %16, metadata !2473, metadata !DIExpression()) #32, !dbg !2668
  call void @llvm.dbg.value(metadata i64 1, metadata !2474, metadata !DIExpression()) #32, !dbg !2668
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !2670
  call void @llvm.dbg.value(metadata i8* %17, metadata !2478, metadata !DIExpression()) #32, !dbg !2671
  %18 = icmp eq i8* %17, null, !dbg !2673
  br i1 %18, label %19, label %20, !dbg !2674

19:                                               ; preds = %15
  tail call void @xalloc_die() #33, !dbg !2675
  unreachable, !dbg !2675

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !351, metadata !DIExpression()) #32, !dbg !2653
  store i64 %16, i64* %1, align 8, !dbg !2676, !tbaa !1751
  ret i8* %17, !dbg !2677
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !346 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !351, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i64* %1, metadata !352, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i64 %2, metadata !353, metadata !DIExpression()), !dbg !2678
  %4 = load i64, i64* %1, align 8, !dbg !2679, !tbaa !1751
  call void @llvm.dbg.value(metadata i64 %4, metadata !354, metadata !DIExpression()), !dbg !2678
  %5 = icmp eq i8* %0, null, !dbg !2680
  br i1 %5, label %6, label %13, !dbg !2681

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2682
  br i1 %7, label %8, label %20, !dbg !2683

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %9, metadata !354, metadata !DIExpression()), !dbg !2678
  %10 = icmp ugt i64 %2, 128, !dbg !2686
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %12, metadata !354, metadata !DIExpression()), !dbg !2678
  br label %20, !dbg !2688

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2689
  %15 = add nuw i64 %14, 1, !dbg !2689
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2689
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2689
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %18, metadata !354, metadata !DIExpression()), !dbg !2678
  br i1 %17, label %19, label %20, !dbg !2690

19:                                               ; preds = %13
  tail call void @xalloc_die() #33, !dbg !2691
  unreachable, !dbg !2691

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2678
  call void @llvm.dbg.value(metadata i64 %21, metadata !354, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8* %0, metadata !2470, metadata !DIExpression()) #32, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %21, metadata !2473, metadata !DIExpression()) #32, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %2, metadata !2474, metadata !DIExpression()) #32, !dbg !2692
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %22, metadata !2478, metadata !DIExpression()) #32, !dbg !2695
  %23 = icmp eq i8* %22, null, !dbg !2697
  br i1 %23, label %24, label %25, !dbg !2698

24:                                               ; preds = %20
  tail call void @xalloc_die() #33, !dbg !2699
  unreachable, !dbg !2699

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !351, metadata !DIExpression()), !dbg !2678
  store i64 %21, i64* %1, align 8, !dbg !2700, !tbaa !1751
  ret i8* %22, !dbg !2701
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !358 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !366, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64* %1, metadata !367, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %2, metadata !368, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %3, metadata !369, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %4, metadata !370, metadata !DIExpression()), !dbg !2702
  %6 = load i64, i64* %1, align 8, !dbg !2703, !tbaa !1751
  call void @llvm.dbg.value(metadata i64 %6, metadata !371, metadata !DIExpression()), !dbg !2702
  %7 = ashr i64 %6, 1, !dbg !2704
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2704
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2704
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %10, metadata !372, metadata !DIExpression()), !dbg !2702
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %11, metadata !372, metadata !DIExpression()), !dbg !2702
  %12 = icmp sgt i64 %3, -1, !dbg !2707
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2709
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %15, metadata !372, metadata !DIExpression()), !dbg !2702
  %16 = icmp slt i64 %4, 0, !dbg !2710
  br i1 %16, label %17, label %30, !dbg !2710

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2710
  br i1 %18, label %19, label %24, !dbg !2710

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2710
  %21 = udiv i64 9223372036854775807, %20, !dbg !2710
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2710
  br i1 %23, label %46, label %43, !dbg !2710

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2710
  br i1 %25, label %43, label %26, !dbg !2710

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2710
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2710
  %29 = icmp ult i64 %28, %15, !dbg !2710
  br i1 %29, label %46, label %43, !dbg !2710

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2710
  br i1 %31, label %43, label %32, !dbg !2710

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2710
  br i1 %33, label %34, label %40, !dbg !2710

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2710
  br i1 %35, label %43, label %36, !dbg !2710

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2710
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2710
  %39 = icmp ult i64 %38, %4, !dbg !2710
  br i1 %39, label %46, label %43, !dbg !2710

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2710
  %42 = icmp ult i64 %41, %15, !dbg !2710
  br i1 %42, label %46, label %43, !dbg !2710

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2702
  %44 = mul i64 %15, %4, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %44, metadata !373, metadata !DIExpression()), !dbg !2702
  %45 = icmp slt i64 %44, 128, !dbg !2710
  br i1 %45, label %46, label %52, !dbg !2710

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !374, metadata !DIExpression()), !dbg !2702
  %48 = sdiv i64 %47, %4, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %48, metadata !372, metadata !DIExpression()), !dbg !2702
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %51, metadata !373, metadata !DIExpression()), !dbg !2702
  br label %52, !dbg !2715

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2702
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2702
  call void @llvm.dbg.value(metadata i64 %54, metadata !373, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %53, metadata !372, metadata !DIExpression()), !dbg !2702
  %55 = icmp eq i8* %0, null, !dbg !2716
  br i1 %55, label %56, label %57, !dbg !2718

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2719, !tbaa !1751
  br label %57, !dbg !2720

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2721
  %59 = icmp slt i64 %58, %2, !dbg !2723
  br i1 %59, label %60, label %97, !dbg !2724

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2725
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2725
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %63, metadata !372, metadata !DIExpression()), !dbg !2702
  br i1 %62, label %96, label %64, !dbg !2726

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2727
  br i1 %66, label %96, label %67, !dbg !2727

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2728

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2728
  br i1 %69, label %70, label %75, !dbg !2728

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2728
  %72 = udiv i64 9223372036854775807, %71, !dbg !2728
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2728
  br i1 %74, label %96, label %94, !dbg !2728

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2728
  br i1 %76, label %94, label %77, !dbg !2728

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2728
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2728
  %80 = icmp ult i64 %79, %63, !dbg !2728
  br i1 %80, label %96, label %94, !dbg !2728

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2728
  br i1 %82, label %94, label %83, !dbg !2728

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2728
  br i1 %84, label %85, label %91, !dbg !2728

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2728
  br i1 %86, label %94, label %87, !dbg !2728

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2728
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2728
  %90 = icmp ult i64 %89, %4, !dbg !2728
  br i1 %90, label %96, label %94, !dbg !2728

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2728
  %93 = icmp ult i64 %92, %63, !dbg !2728
  br i1 %93, label %96, label %94, !dbg !2728

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !373, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2702
  %95 = mul i64 %63, %4, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %95, metadata !373, metadata !DIExpression()), !dbg !2702
  br label %97, !dbg !2729

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #33, !dbg !2730
  unreachable, !dbg !2730

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2702
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2702
  call void @llvm.dbg.value(metadata i64 %99, metadata !373, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %98, metadata !372, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8* %0, metadata !2549, metadata !DIExpression()) #32, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %99, metadata !2550, metadata !DIExpression()) #32, !dbg !2731
  call void @llvm.dbg.value(metadata i8* %0, metadata !2552, metadata !DIExpression()) #32, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %99, metadata !2556, metadata !DIExpression()) #32, !dbg !2733
  %100 = icmp eq i64 %99, 0, !dbg !2735
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2735
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !2736
  call void @llvm.dbg.value(metadata i8* %102, metadata !2478, metadata !DIExpression()) #32, !dbg !2737
  %103 = icmp eq i8* %102, null, !dbg !2739
  br i1 %103, label %104, label %105, !dbg !2740

104:                                              ; preds = %97
  tail call void @xalloc_die() #33, !dbg !2741
  unreachable, !dbg !2741

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !366, metadata !DIExpression()), !dbg !2702
  store i64 %98, i64* %1, align 8, !dbg !2742, !tbaa !1751
  ret i8* %102, !dbg !2743
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2744 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %0, metadata !2748, metadata !DIExpression()) #32, !dbg !2752
  call void @llvm.dbg.value(metadata i64 1, metadata !2751, metadata !DIExpression()) #32, !dbg !2752
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2754
  call void @llvm.dbg.value(metadata i8* %2, metadata !2478, metadata !DIExpression()) #32, !dbg !2755
  %3 = icmp eq i8* %2, null, !dbg !2757
  br i1 %3, label %4, label %5, !dbg !2758

4:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2759
  unreachable, !dbg !2759

5:                                                ; preds = %1
  ret i8* %2, !dbg !2760
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2749 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2748, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %1, metadata !2751, metadata !DIExpression()), !dbg !2761
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2762
  call void @llvm.dbg.value(metadata i8* %3, metadata !2478, metadata !DIExpression()) #32, !dbg !2763
  %4 = icmp eq i8* %3, null, !dbg !2765
  br i1 %4, label %5, label %6, !dbg !2766

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2767
  unreachable, !dbg !2767

6:                                                ; preds = %2
  ret i8* %3, !dbg !2768
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2769 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2771, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %0, metadata !2773, metadata !DIExpression()) #32, !dbg !2777
  call void @llvm.dbg.value(metadata i64 1, metadata !2776, metadata !DIExpression()) #32, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %0, metadata !2779, metadata !DIExpression()) #32, !dbg !2783
  call void @llvm.dbg.value(metadata i64 1, metadata !2782, metadata !DIExpression()) #32, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %0, metadata !2779, metadata !DIExpression()) #32, !dbg !2783
  call void @llvm.dbg.value(metadata i64 1, metadata !2782, metadata !DIExpression()) #32, !dbg !2783
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !2785
  call void @llvm.dbg.value(metadata i8* %2, metadata !2478, metadata !DIExpression()) #32, !dbg !2786
  %3 = icmp eq i8* %2, null, !dbg !2788
  br i1 %3, label %4, label %5, !dbg !2789

4:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2790
  unreachable, !dbg !2790

5:                                                ; preds = %1
  ret i8* %2, !dbg !2791
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2774 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2773, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %1, metadata !2776, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %0, metadata !2779, metadata !DIExpression()) #32, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %1, metadata !2782, metadata !DIExpression()) #32, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %0, metadata !2779, metadata !DIExpression()) #32, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %1, metadata !2782, metadata !DIExpression()) #32, !dbg !2793
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !2795
  call void @llvm.dbg.value(metadata i8* %3, metadata !2478, metadata !DIExpression()) #32, !dbg !2796
  %4 = icmp eq i8* %3, null, !dbg !2798
  br i1 %4, label %5, label %6, !dbg !2799

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2800
  unreachable, !dbg !2800

6:                                                ; preds = %2
  ret i8* %3, !dbg !2801
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2802 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2806, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 %1, metadata !2807, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 %1, metadata !2502, metadata !DIExpression()) #32, !dbg !2809
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %3, metadata !2478, metadata !DIExpression()) #32, !dbg !2812
  %4 = icmp eq i8* %3, null, !dbg !2814
  br i1 %4, label %5, label %6, !dbg !2815

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2816
  unreachable, !dbg !2816

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2817, metadata !DIExpression()) #32, !dbg !2825
  call void @llvm.dbg.value(metadata i8* %0, metadata !2823, metadata !DIExpression()) #32, !dbg !2825
  call void @llvm.dbg.value(metadata i64 %1, metadata !2824, metadata !DIExpression()) #32, !dbg !2825
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2827
  ret i8* %3, !dbg !2828
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2829 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2833, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 %1, metadata !2834, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 %1, metadata !2515, metadata !DIExpression()) #32, !dbg !2836
  call void @llvm.dbg.value(metadata i64 %1, metadata !2517, metadata !DIExpression()) #32, !dbg !2838
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !2840
  call void @llvm.dbg.value(metadata i8* %3, metadata !2478, metadata !DIExpression()) #32, !dbg !2841
  %4 = icmp eq i8* %3, null, !dbg !2843
  br i1 %4, label %5, label %6, !dbg !2844

5:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2845
  unreachable, !dbg !2845

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2817, metadata !DIExpression()) #32, !dbg !2846
  call void @llvm.dbg.value(metadata i8* %0, metadata !2823, metadata !DIExpression()) #32, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %1, metadata !2824, metadata !DIExpression()) #32, !dbg !2846
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2848
  ret i8* %3, !dbg !2849
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2850 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %1, metadata !2855, metadata !DIExpression()), !dbg !2857
  %3 = add nsw i64 %1, 1, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %3, metadata !2515, metadata !DIExpression()) #32, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %3, metadata !2517, metadata !DIExpression()) #32, !dbg !2861
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2863
  call void @llvm.dbg.value(metadata i8* %4, metadata !2478, metadata !DIExpression()) #32, !dbg !2864
  %5 = icmp eq i8* %4, null, !dbg !2866
  br i1 %5, label %6, label %7, !dbg !2867

6:                                                ; preds = %2
  tail call void @xalloc_die() #33, !dbg !2868
  unreachable, !dbg !2868

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !2856, metadata !DIExpression()), !dbg !2857
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !2869
  store i8 0, i8* %8, align 1, !dbg !2870, !tbaa !441
  call void @llvm.dbg.value(metadata i8* %4, metadata !2817, metadata !DIExpression()) #32, !dbg !2871
  call void @llvm.dbg.value(metadata i8* %0, metadata !2823, metadata !DIExpression()) #32, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %1, metadata !2824, metadata !DIExpression()) #32, !dbg !2871
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !2873
  ret i8* %4, !dbg !2874
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !2875 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2877, metadata !DIExpression()), !dbg !2878
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !2879
  %3 = add i64 %2, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %0, metadata !2806, metadata !DIExpression()) #32, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %3, metadata !2807, metadata !DIExpression()) #32, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %3, metadata !2502, metadata !DIExpression()) #32, !dbg !2883
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !2885
  call void @llvm.dbg.value(metadata i8* %4, metadata !2478, metadata !DIExpression()) #32, !dbg !2886
  %5 = icmp eq i8* %4, null, !dbg !2888
  br i1 %5, label %6, label %7, !dbg !2889

6:                                                ; preds = %1
  tail call void @xalloc_die() #33, !dbg !2890
  unreachable, !dbg !2890

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2817, metadata !DIExpression()) #32, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %0, metadata !2823, metadata !DIExpression()) #32, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %3, metadata !2824, metadata !DIExpression()) #32, !dbg !2891
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !2893
  ret i8* %4, !dbg !2894
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2895 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2900, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %1, metadata !2897, metadata !DIExpression()), !dbg !2901
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.103, i64 0, i64 0), i32 noundef 5) #32, !dbg !2900
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* noundef %2) #32, !dbg !2900
  %3 = icmp eq i32 %1, 0, !dbg !2900
  tail call void @llvm.assume(i1 %3), !dbg !2900
  tail call void @abort() #33, !dbg !2902
  unreachable, !dbg !2902
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !2903 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2941, metadata !DIExpression()), !dbg !2946
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !2947
  call void @llvm.dbg.value(metadata i1 undef, metadata !2942, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2946
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2948, metadata !DIExpression()), !dbg !2951
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2953
  %4 = load i32, i32* %3, align 8, !dbg !2953, !tbaa !2954
  %5 = and i32 %4, 32, !dbg !2955
  %6 = icmp eq i32 %5, 0, !dbg !2955
  call void @llvm.dbg.value(metadata i1 %6, metadata !2944, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2946
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !2956
  %8 = icmp eq i32 %7, 0, !dbg !2957
  call void @llvm.dbg.value(metadata i1 %8, metadata !2945, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2946
  br i1 %6, label %9, label %19, !dbg !2958

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2960
  call void @llvm.dbg.value(metadata i1 %10, metadata !2942, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2946
  %11 = select i1 %8, i1 true, i1 %10, !dbg !2961
  %12 = xor i1 %8, true, !dbg !2961
  %13 = sext i1 %12 to i32, !dbg !2961
  br i1 %11, label %22, label %14, !dbg !2961

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !2962
  %16 = load i32, i32* %15, align 4, !dbg !2962, !tbaa !432
  %17 = icmp ne i32 %16, 9, !dbg !2963
  %18 = sext i1 %17 to i32, !dbg !2964
  br label %22, !dbg !2964

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2965

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !2967
  store i32 0, i32* %21, align 4, !dbg !2969, !tbaa !432
  br label %22, !dbg !2967

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2946
  ret i32 %23, !dbg !2970
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !2971 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3009, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 0, metadata !3010, metadata !DIExpression()), !dbg !3013
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3014
  call void @llvm.dbg.value(metadata i32 %2, metadata !3011, metadata !DIExpression()), !dbg !3013
  %3 = icmp slt i32 %2, 0, !dbg !3015
  br i1 %3, label %4, label %6, !dbg !3017

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3018
  br label %24, !dbg !3019

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3020
  %8 = icmp eq i32 %7, 0, !dbg !3020
  br i1 %8, label %13, label %9, !dbg !3022

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3023
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3024
  %12 = icmp eq i64 %11, -1, !dbg !3025
  br i1 %12, label %16, label %13, !dbg !3026

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3027
  %15 = icmp eq i32 %14, 0, !dbg !3027
  br i1 %15, label %16, label %18, !dbg !3028

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3010, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 0, metadata !3012, metadata !DIExpression()), !dbg !3013
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %21, metadata !3012, metadata !DIExpression()), !dbg !3013
  br label %24, !dbg !3030

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3031
  %20 = load i32, i32* %19, align 4, !dbg !3031, !tbaa !432
  call void @llvm.dbg.value(metadata i32 %20, metadata !3010, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 0, metadata !3012, metadata !DIExpression()), !dbg !3013
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %21, metadata !3012, metadata !DIExpression()), !dbg !3013
  %22 = icmp eq i32 %20, 0, !dbg !3032
  br i1 %22, label %24, label %23, !dbg !3030

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3034, !tbaa !432
  call void @llvm.dbg.value(metadata i32 -1, metadata !3012, metadata !DIExpression()), !dbg !3013
  br label %24, !dbg !3036

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3013
  ret i32 %25, !dbg !3037
}

; Function Attrs: nofree nounwind
declare !dbg !3038 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !3039 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3040 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3044 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3082, metadata !DIExpression()), !dbg !3083
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3084
  br i1 %2, label %6, label %3, !dbg !3086

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3087
  %5 = icmp eq i32 %4, 0, !dbg !3087
  br i1 %5, label %6, label %8, !dbg !3088

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3089
  br label %17, !dbg !3090

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3091, metadata !DIExpression()) #32, !dbg !3096
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3098
  %10 = load i32, i32* %9, align 8, !dbg !3098, !tbaa !2954
  %11 = and i32 %10, 256, !dbg !3100
  %12 = icmp eq i32 %11, 0, !dbg !3100
  br i1 %12, label %15, label %13, !dbg !3101

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3102
  br label %15, !dbg !3102

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3103
  br label %17, !dbg !3104

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3083
  ret i32 %18, !dbg !3105
}

; Function Attrs: nofree nounwind
declare !dbg !3106 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3107 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3146, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i64 %1, metadata !3147, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i32 %2, metadata !3148, metadata !DIExpression()), !dbg !3152
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3153
  %5 = load i8*, i8** %4, align 8, !dbg !3153, !tbaa !3154
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3155
  %7 = load i8*, i8** %6, align 8, !dbg !3155, !tbaa !3156
  %8 = icmp eq i8* %5, %7, !dbg !3157
  br i1 %8, label %9, label %28, !dbg !3158

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3159
  %11 = load i8*, i8** %10, align 8, !dbg !3159, !tbaa !846
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3160
  %13 = load i8*, i8** %12, align 8, !dbg !3160, !tbaa !3161
  %14 = icmp eq i8* %11, %13, !dbg !3162
  br i1 %14, label %15, label %28, !dbg !3163

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3164
  %17 = load i8*, i8** %16, align 8, !dbg !3164, !tbaa !3165
  %18 = icmp eq i8* %17, null, !dbg !3166
  br i1 %18, label %19, label %28, !dbg !3167

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3168
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %21, metadata !3149, metadata !DIExpression()), !dbg !3170
  %22 = icmp eq i64 %21, -1, !dbg !3171
  br i1 %22, label %30, label %23, !dbg !3173

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3174
  %25 = load i32, i32* %24, align 8, !dbg !3175, !tbaa !2954
  %26 = and i32 %25, -17, !dbg !3175
  store i32 %26, i32* %24, align 8, !dbg !3175, !tbaa !2954
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3176
  store i64 %21, i64* %27, align 8, !dbg !3177, !tbaa !3178
  br label %30, !dbg !3179

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3180
  br label %30, !dbg !3181

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3152
  ret i32 %31, !dbg !3182
}

; Function Attrs: nofree nounwind
declare !dbg !3183 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3186 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3191, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* %1, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %2, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3194, metadata !DIExpression()), !dbg !3196
  %5 = icmp eq i8* %1, null, !dbg !3197
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3199
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i64 0, i64 0), i8* %1, !dbg !3199
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %8, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* %7, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32* %6, metadata !3191, metadata !DIExpression()), !dbg !3196
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3200
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3202
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3194, metadata !DIExpression()), !dbg !3196
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %11, metadata !3195, metadata !DIExpression()), !dbg !3196
  %12 = icmp ult i64 %11, -3, !dbg !3204
  br i1 %12, label %13, label %18, !dbg !3206

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !3207
  %15 = icmp eq i32 %14, 0, !dbg !3207
  br i1 %15, label %16, label %30, !dbg !3208

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3209, metadata !DIExpression()) #32, !dbg !3214
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3216, metadata !DIExpression()) #32, !dbg !3221
  call void @llvm.dbg.value(metadata i32 0, metadata !3219, metadata !DIExpression()) #32, !dbg !3221
  call void @llvm.dbg.value(metadata i64 8, metadata !3220, metadata !DIExpression()) #32, !dbg !3221
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3223
  store i64 0, i64* %17, align 1, !dbg !3223
  br label %30, !dbg !3224

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3225
  br i1 %19, label %20, label %21, !dbg !3227

20:                                               ; preds = %18
  tail call void @abort() #33, !dbg !3228
  unreachable, !dbg !3228

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3229

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3231
  br i1 %24, label %30, label %25, !dbg !3232

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3233
  br i1 %26, label %30, label %27, !dbg !3236

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3237, !tbaa !441
  %29 = zext i8 %28 to i32, !dbg !3238
  store i32 %29, i32* %6, align 4, !dbg !3239, !tbaa !432
  br label %30, !dbg !3240

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3196
  ret i64 %31, !dbg !3241
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3242 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3248 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3250, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %1, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %2, metadata !3252, metadata !DIExpression()), !dbg !3254
  %4 = icmp eq i64 %2, 0, !dbg !3255
  br i1 %4, label %8, label %5, !dbg !3255

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3255
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3255
  br i1 %7, label %13, label %8, !dbg !3255

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3253, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3254
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3253, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3254
  %9 = mul i64 %2, %1, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %9, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8* %0, metadata !3257, metadata !DIExpression()) #32, !dbg !3261
  call void @llvm.dbg.value(metadata i64 %9, metadata !3260, metadata !DIExpression()) #32, !dbg !3261
  %10 = icmp eq i64 %9, 0, !dbg !3263
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3263
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3264
  br label %15, !dbg !3265

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3253, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3254
  %14 = tail call i32* @__errno_location() #35, !dbg !3266
  store i32 12, i32* %14, align 4, !dbg !3268, !tbaa !432
  br label %15, !dbg !3269

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3254
  ret i8* %16, !dbg !3270
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3271 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3275, metadata !DIExpression()), !dbg !3280
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3281
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3281
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3276, metadata !DIExpression()), !dbg !3282
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3283
  %5 = icmp eq i32 %4, 0, !dbg !3283
  br i1 %5, label %6, label %13, !dbg !3285

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3286, metadata !DIExpression()) #32, !dbg !3290
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0), metadata !3289, metadata !DIExpression()) #32, !dbg !3290
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0), i64 2), !dbg !3293
  %8 = icmp eq i32 %7, 0, !dbg !3294
  br i1 %8, label %12, label %9, !dbg !3295

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3286, metadata !DIExpression()) #32, !dbg !3296
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0), metadata !3289, metadata !DIExpression()) #32, !dbg !3296
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0), i64 6), !dbg !3298
  %11 = icmp eq i32 %10, 0, !dbg !3299
  br i1 %11, label %12, label %13, !dbg !3300

12:                                               ; preds = %9, %6
  br label %13, !dbg !3301

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3280
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3302
  ret i1 %14, !dbg !3302
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3303 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %1, metadata !3308, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !3309, metadata !DIExpression()), !dbg !3310
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3311
  ret i32 %4, !dbg !3312
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3313 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3317, metadata !DIExpression()), !dbg !3318
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3319
  ret i8* %2, !dbg !3320
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3321 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3323, metadata !DIExpression()), !dbg !3325
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3326
  call void @llvm.dbg.value(metadata i8* %2, metadata !3324, metadata !DIExpression()), !dbg !3325
  ret i8* %2, !dbg !3327
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3330, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i8* %1, metadata !3331, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %2, metadata !3332, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %0, metadata !3323, metadata !DIExpression()) #32, !dbg !3338
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3340
  call void @llvm.dbg.value(metadata i8* %4, metadata !3324, metadata !DIExpression()) #32, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %4, metadata !3333, metadata !DIExpression()), !dbg !3337
  %5 = icmp eq i8* %4, null, !dbg !3341
  br i1 %5, label %6, label %9, !dbg !3342

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3343
  br i1 %7, label %19, label %8, !dbg !3346

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3347, !tbaa !441
  br label %19, !dbg !3348

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %10, metadata !3334, metadata !DIExpression()), !dbg !3350
  %11 = icmp ult i64 %10, %2, !dbg !3351
  br i1 %11, label %12, label %14, !dbg !3353

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3354
  call void @llvm.dbg.value(metadata i8* %1, metadata !3356, metadata !DIExpression()) #32, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %4, metadata !3359, metadata !DIExpression()) #32, !dbg !3361
  call void @llvm.dbg.value(metadata i64 %13, metadata !3360, metadata !DIExpression()) #32, !dbg !3361
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3363
  br label %19, !dbg !3364

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3365
  br i1 %15, label %19, label %16, !dbg !3368

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3369
  call void @llvm.dbg.value(metadata i8* %1, metadata !3356, metadata !DIExpression()) #32, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %4, metadata !3359, metadata !DIExpression()) #32, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %17, metadata !3360, metadata !DIExpression()) #32, !dbg !3371
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3373
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3374
  store i8 0, i8* %18, align 1, !dbg !3375, !tbaa !441
  br label %19, !dbg !3376

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3377
  ret i32 %20, !dbg !3378
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
!10 = !DIFile(filename: "src/false.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ed5d534ba214f45e03a0431e09453924")
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
!407 = distinct !DISubprogram(name: "usage", scope: !408, file: !408, line: 36, type: !409, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !411)
!408 = !DIFile(filename: "src/true.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ce7e4fa94fdaa872b3d469aaea1081c9")
!409 = !DISubroutineType(types: !410)
!410 = !{null, !31}
!411 = !{!412}
!412 = !DILocalVariable(name: "status", arg: 1, scope: !407, file: !408, line: 36, type: !31)
!413 = !DILocation(line: 0, scope: !407)
!414 = !DILocation(line: 38, column: 3, scope: !407)
!415 = !{!416, !416, i64 0}
!416 = !{!"any pointer", !417, i64 0}
!417 = !{!"omnipotent char", !418, i64 0}
!418 = !{!"Simple C/C++ TBAA"}
!419 = !DILocation(line: 43, column: 3, scope: !407)
!420 = !DILocation(line: 47, column: 3, scope: !407)
!421 = !DILocation(line: 48, column: 3, scope: !407)
!422 = !DILocation(line: 49, column: 3, scope: !407)
!423 = !DILocation(line: 50, column: 3, scope: !407)
!424 = !DILocation(line: 51, column: 3, scope: !407)
!425 = !DISubprogram(name: "dcgettext", scope: !426, file: !426, line: 51, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!426 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!427 = !DISubroutineType(types: !428)
!428 = !{!29, !6, !6, !31}
!429 = !{}
!430 = !DILocation(line: 0, scope: !2)
!431 = !DILocation(line: 581, column: 7, scope: !43)
!432 = !{!433, !433, i64 0}
!433 = !{!"int", !417, i64 0}
!434 = !DILocation(line: 581, column: 19, scope: !43)
!435 = !DILocation(line: 581, column: 7, scope: !2)
!436 = !DILocation(line: 585, column: 26, scope: !42)
!437 = !DILocation(line: 0, scope: !42)
!438 = !DILocation(line: 586, column: 23, scope: !42)
!439 = !DILocation(line: 586, column: 28, scope: !42)
!440 = !DILocation(line: 586, column: 32, scope: !42)
!441 = !{!417, !417, i64 0}
!442 = !DILocation(line: 586, column: 38, scope: !42)
!443 = !DILocalVariable(name: "__s1", arg: 1, scope: !444, file: !445, line: 1359, type: !6)
!444 = distinct !DISubprogram(name: "streq", scope: !445, file: !445, line: 1359, type: !446, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !448)
!445 = !DIFile(filename: "./lib/string.h", directory: "/src")
!446 = !DISubroutineType(types: !447)
!447 = !{!45, !6, !6}
!448 = !{!443, !449}
!449 = !DILocalVariable(name: "__s2", arg: 2, scope: !444, file: !445, line: 1359, type: !6)
!450 = !DILocation(line: 0, scope: !444, inlinedAt: !451)
!451 = distinct !DILocation(line: 586, column: 41, scope: !42)
!452 = !DILocation(line: 1361, column: 11, scope: !444, inlinedAt: !451)
!453 = !DILocation(line: 1361, column: 10, scope: !444, inlinedAt: !451)
!454 = !DILocation(line: 586, column: 19, scope: !42)
!455 = !DILocation(line: 587, column: 5, scope: !42)
!456 = !DILocation(line: 588, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!458 = !DILocation(line: 588, column: 7, scope: !2)
!459 = !DILocation(line: 590, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !3, line: 589, column: 5)
!461 = !DILocation(line: 591, column: 7, scope: !460)
!462 = !DILocation(line: 595, column: 37, scope: !2)
!463 = !DILocation(line: 595, column: 35, scope: !2)
!464 = !DILocation(line: 596, column: 29, scope: !2)
!465 = !DILocation(line: 597, column: 8, scope: !51)
!466 = !DILocation(line: 597, column: 7, scope: !2)
!467 = !DILocation(line: 604, column: 24, scope: !50)
!468 = !DILocation(line: 604, column: 12, scope: !51)
!469 = !DILocation(line: 0, scope: !49)
!470 = !DILocation(line: 610, column: 16, scope: !49)
!471 = !DILocation(line: 610, column: 7, scope: !49)
!472 = !DILocation(line: 611, column: 21, scope: !49)
!473 = !{!474, !474, i64 0}
!474 = !{!"short", !417, i64 0}
!475 = !DILocation(line: 611, column: 19, scope: !49)
!476 = !DILocation(line: 611, column: 16, scope: !49)
!477 = !DILocation(line: 610, column: 30, scope: !49)
!478 = distinct !{!478, !471, !472, !479}
!479 = !{!"llvm.loop.mustprogress"}
!480 = !DILocation(line: 612, column: 18, scope: !481)
!481 = distinct !DILexicalBlock(scope: !49, file: !3, line: 612, column: 11)
!482 = !DILocation(line: 612, column: 11, scope: !49)
!483 = !DILocation(line: 620, column: 23, scope: !2)
!484 = !DILocation(line: 625, column: 39, scope: !2)
!485 = !DILocation(line: 626, column: 3, scope: !2)
!486 = !DILocation(line: 626, column: 10, scope: !2)
!487 = !DILocation(line: 626, column: 21, scope: !2)
!488 = !DILocation(line: 628, column: 44, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 628, column: 11)
!490 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!491 = !DILocation(line: 628, column: 32, scope: !489)
!492 = !DILocation(line: 628, column: 49, scope: !489)
!493 = !DILocation(line: 628, column: 11, scope: !490)
!494 = !DILocation(line: 630, column: 11, scope: !495)
!495 = distinct !DILexicalBlock(scope: !490, file: !3, line: 630, column: 11)
!496 = !DILocation(line: 630, column: 11, scope: !490)
!497 = !DILocation(line: 632, column: 26, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 632, column: 15)
!499 = distinct !DILexicalBlock(scope: !495, file: !3, line: 631, column: 9)
!500 = !DILocation(line: 632, column: 34, scope: !498)
!501 = !DILocation(line: 632, column: 37, scope: !498)
!502 = !DILocation(line: 632, column: 15, scope: !499)
!503 = !DILocation(line: 636, column: 29, scope: !504)
!504 = distinct !DILexicalBlock(scope: !499, file: !3, line: 636, column: 15)
!505 = !DILocation(line: 640, column: 16, scope: !490)
!506 = distinct !{!506, !485, !507, !479}
!507 = !DILocation(line: 641, column: 5, scope: !2)
!508 = !DILocation(line: 644, column: 3, scope: !2)
!509 = !DILocation(line: 0, scope: !444, inlinedAt: !510)
!510 = distinct !DILocation(line: 648, column: 31, scope: !2)
!511 = !DILocation(line: 0, scope: !444, inlinedAt: !512)
!512 = distinct !DILocation(line: 649, column: 31, scope: !2)
!513 = !DILocation(line: 0, scope: !444, inlinedAt: !514)
!514 = distinct !DILocation(line: 650, column: 31, scope: !2)
!515 = !DILocation(line: 0, scope: !444, inlinedAt: !516)
!516 = distinct !DILocation(line: 651, column: 31, scope: !2)
!517 = !DILocation(line: 0, scope: !444, inlinedAt: !518)
!518 = distinct !DILocation(line: 652, column: 31, scope: !2)
!519 = !DILocation(line: 0, scope: !444, inlinedAt: !520)
!520 = distinct !DILocation(line: 653, column: 31, scope: !2)
!521 = !DILocation(line: 0, scope: !444, inlinedAt: !522)
!522 = distinct !DILocation(line: 654, column: 31, scope: !2)
!523 = !DILocation(line: 0, scope: !444, inlinedAt: !524)
!524 = distinct !DILocation(line: 655, column: 31, scope: !2)
!525 = !DILocation(line: 0, scope: !444, inlinedAt: !526)
!526 = distinct !DILocation(line: 656, column: 31, scope: !2)
!527 = !DILocation(line: 0, scope: !444, inlinedAt: !528)
!528 = distinct !DILocation(line: 657, column: 31, scope: !2)
!529 = !DILocation(line: 663, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!531 = !DILocation(line: 664, column: 7, scope: !530)
!532 = !DILocation(line: 664, column: 10, scope: !530)
!533 = !DILocation(line: 663, column: 7, scope: !2)
!534 = !DILocation(line: 669, column: 7, scope: !535)
!535 = distinct !DILexicalBlock(scope: !530, file: !3, line: 665, column: 5)
!536 = !DILocation(line: 671, column: 5, scope: !535)
!537 = !DILocation(line: 676, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !530, file: !3, line: 673, column: 5)
!539 = !DILocation(line: 679, column: 3, scope: !2)
!540 = !DILocation(line: 683, column: 3, scope: !2)
!541 = !DILocation(line: 686, column: 3, scope: !2)
!542 = !DILocation(line: 688, column: 3, scope: !2)
!543 = !DILocation(line: 691, column: 3, scope: !2)
!544 = !DILocation(line: 695, column: 3, scope: !2)
!545 = !DILocation(line: 696, column: 1, scope: !2)
!546 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !547, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !6}
!549 = !{!550, !551, !560, !561, !563, !564}
!550 = !DILocalVariable(name: "program", arg: 1, scope: !546, file: !3, line: 836, type: !6)
!551 = !DILocalVariable(name: "infomap", scope: !546, file: !3, line: 838, type: !552)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 896, elements: !558)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !546, file: !3, line: 838, size: 128, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !554, file: !3, line: 838, baseType: !6, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !554, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!558 = !{!559}
!559 = !DISubrange(count: 7)
!560 = !DILocalVariable(name: "node", scope: !546, file: !3, line: 848, type: !6)
!561 = !DILocalVariable(name: "map_prog", scope: !546, file: !3, line: 849, type: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!563 = !DILocalVariable(name: "lc_messages", scope: !546, file: !3, line: 861, type: !6)
!564 = !DILocalVariable(name: "url_program", scope: !546, file: !3, line: 874, type: !6)
!565 = !DILocation(line: 0, scope: !546)
!566 = !DILocation(line: 838, column: 3, scope: !546)
!567 = !DILocation(line: 838, column: 67, scope: !546)
!568 = !DILocation(line: 849, column: 36, scope: !546)
!569 = !DILocation(line: 851, column: 3, scope: !546)
!570 = !DILocation(line: 0, scope: !444, inlinedAt: !571)
!571 = distinct !DILocation(line: 851, column: 33, scope: !546)
!572 = !DILocation(line: 1361, column: 11, scope: !444, inlinedAt: !571)
!573 = !DILocation(line: 1361, column: 10, scope: !444, inlinedAt: !571)
!574 = !DILocation(line: 852, column: 13, scope: !546)
!575 = !DILocation(line: 851, column: 20, scope: !546)
!576 = !{!577, !416, i64 0}
!577 = !{!"infomap", !416, i64 0, !416, i64 8}
!578 = !DILocation(line: 851, column: 10, scope: !546)
!579 = !DILocation(line: 851, column: 28, scope: !546)
!580 = distinct !{!580, !569, !574, !479}
!581 = !DILocation(line: 854, column: 17, scope: !582)
!582 = distinct !DILexicalBlock(scope: !546, file: !3, line: 854, column: 7)
!583 = !{!577, !416, i64 8}
!584 = !DILocation(line: 854, column: 7, scope: !582)
!585 = !DILocation(line: 854, column: 7, scope: !546)
!586 = !DILocation(line: 857, column: 3, scope: !546)
!587 = !DILocation(line: 861, column: 29, scope: !546)
!588 = !DILocation(line: 862, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !546, file: !3, line: 862, column: 7)
!590 = !DILocation(line: 862, column: 19, scope: !589)
!591 = !DILocation(line: 862, column: 22, scope: !589)
!592 = !DILocation(line: 862, column: 7, scope: !546)
!593 = !DILocation(line: 868, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !589, file: !3, line: 863, column: 5)
!595 = !DILocation(line: 870, column: 5, scope: !594)
!596 = !DILocation(line: 0, scope: !444, inlinedAt: !597)
!597 = distinct !DILocation(line: 874, column: 29, scope: !546)
!598 = !DILocation(line: 875, column: 3, scope: !546)
!599 = !DILocation(line: 877, column: 3, scope: !546)
!600 = !DILocation(line: 879, column: 1, scope: !546)
!601 = !DISubprogram(name: "setlocale", scope: !602, file: !602, line: 122, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!602 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!603 = !DISubroutineType(types: !604)
!604 = !{!29, !31, !6}
!605 = !DISubprogram(name: "fputs_unlocked", scope: !143, file: !143, line: 691, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!606 = !DISubroutineType(types: !607)
!607 = !{!31, !608, !609}
!608 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!609 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!610 = !DISubprogram(name: "getenv", scope: !611, file: !611, line: 641, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!611 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!612 = !DISubroutineType(types: !613)
!613 = !{!29, !6}
!614 = !DISubprogram(name: "fwrite_unlocked", scope: !143, file: !143, line: 704, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!615 = !DISubroutineType(types: !616)
!616 = !{!33, !617, !33, !33, !609}
!617 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!620 = distinct !DISubprogram(name: "main", scope: !408, file: !408, line: 55, type: !621, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !624)
!621 = !DISubroutineType(types: !622)
!622 = !{!31, !31, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!624 = !{!625, !626}
!625 = !DILocalVariable(name: "argc", arg: 1, scope: !620, file: !408, line: 55, type: !31)
!626 = !DILocalVariable(name: "argv", arg: 2, scope: !620, file: !408, line: 55, type: !623)
!627 = !DILocation(line: 0, scope: !620)
!628 = !DILocation(line: 59, column: 12, scope: !629)
!629 = distinct !DILexicalBlock(scope: !620, file: !408, line: 59, column: 7)
!630 = !DILocation(line: 59, column: 7, scope: !620)
!631 = !DILocation(line: 62, column: 25, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !408, line: 60, column: 5)
!633 = !DILocation(line: 62, column: 7, scope: !632)
!634 = !DILocation(line: 63, column: 7, scope: !632)
!635 = !DILocation(line: 64, column: 7, scope: !632)
!636 = !DILocation(line: 65, column: 7, scope: !632)
!637 = !DILocation(line: 69, column: 7, scope: !632)
!638 = !DILocation(line: 71, column: 18, scope: !639)
!639 = distinct !DILexicalBlock(scope: !632, file: !408, line: 71, column: 11)
!640 = !DILocation(line: 0, scope: !444, inlinedAt: !641)
!641 = distinct !DILocation(line: 71, column: 11, scope: !639)
!642 = !DILocation(line: 1361, column: 11, scope: !444, inlinedAt: !641)
!643 = !DILocation(line: 1361, column: 10, scope: !444, inlinedAt: !641)
!644 = !DILocation(line: 71, column: 11, scope: !632)
!645 = !DILocation(line: 72, column: 9, scope: !639)
!646 = !DILocation(line: 0, scope: !444, inlinedAt: !647)
!647 = distinct !DILocation(line: 74, column: 11, scope: !648)
!648 = distinct !DILexicalBlock(scope: !632, file: !408, line: 74, column: 11)
!649 = !DILocation(line: 1361, column: 11, scope: !444, inlinedAt: !647)
!650 = !DILocation(line: 1361, column: 10, scope: !444, inlinedAt: !647)
!651 = !DILocation(line: 74, column: 11, scope: !632)
!652 = !DILocation(line: 75, column: 22, scope: !648)
!653 = !DILocation(line: 75, column: 58, scope: !648)
!654 = !DILocation(line: 75, column: 67, scope: !648)
!655 = !DILocation(line: 75, column: 9, scope: !648)
!656 = !DILocation(line: 79, column: 3, scope: !620)
!657 = !DISubprogram(name: "bindtextdomain", scope: !426, file: !426, line: 86, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!658 = !DISubroutineType(types: !659)
!659 = !{!29, !6, !6}
!660 = !DISubprogram(name: "textdomain", scope: !426, file: !426, line: 82, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!661 = !DISubprogram(name: "atexit", scope: !611, file: !611, line: 602, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!662 = !DISubroutineType(types: !663)
!663 = !{!31, !169}
!664 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !127, file: !127, line: 50, type: !547, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !665)
!665 = !{!666}
!666 = !DILocalVariable(name: "file", arg: 1, scope: !664, file: !127, line: 50, type: !6)
!667 = !DILocation(line: 0, scope: !664)
!668 = !DILocation(line: 52, column: 13, scope: !664)
!669 = !DILocation(line: 53, column: 1, scope: !664)
!670 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !127, file: !127, line: 87, type: !671, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !45}
!673 = !{!674}
!674 = !DILocalVariable(name: "ignore", arg: 1, scope: !670, file: !127, line: 87, type: !45)
!675 = !DILocation(line: 0, scope: !670)
!676 = !DILocation(line: 89, column: 16, scope: !670)
!677 = !{!678, !678, i64 0}
!678 = !{!"_Bool", !417, i64 0}
!679 = !DILocation(line: 90, column: 1, scope: !670)
!680 = distinct !DISubprogram(name: "close_stdout", scope: !127, file: !127, line: 116, type: !170, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !681)
!681 = !{!682}
!682 = !DILocalVariable(name: "write_error", scope: !683, file: !127, line: 121, type: !6)
!683 = distinct !DILexicalBlock(scope: !684, file: !127, line: 120, column: 5)
!684 = distinct !DILexicalBlock(scope: !680, file: !127, line: 118, column: 7)
!685 = !DILocation(line: 118, column: 21, scope: !684)
!686 = !DILocation(line: 118, column: 7, scope: !684)
!687 = !DILocation(line: 118, column: 29, scope: !684)
!688 = !DILocation(line: 119, column: 7, scope: !684)
!689 = !DILocation(line: 119, column: 12, scope: !684)
!690 = !{i8 0, i8 2}
!691 = !DILocation(line: 119, column: 25, scope: !684)
!692 = !DILocation(line: 119, column: 28, scope: !684)
!693 = !DILocation(line: 119, column: 34, scope: !684)
!694 = !DILocation(line: 118, column: 7, scope: !680)
!695 = !DILocation(line: 121, column: 33, scope: !683)
!696 = !DILocation(line: 0, scope: !683)
!697 = !DILocation(line: 122, column: 11, scope: !698)
!698 = distinct !DILexicalBlock(scope: !683, file: !127, line: 122, column: 11)
!699 = !DILocation(line: 0, scope: !698)
!700 = !DILocation(line: 122, column: 11, scope: !683)
!701 = !DILocation(line: 123, column: 9, scope: !698)
!702 = !DILocation(line: 126, column: 9, scope: !698)
!703 = !DILocation(line: 128, column: 14, scope: !683)
!704 = !DILocation(line: 128, column: 7, scope: !683)
!705 = !DILocation(line: 133, column: 42, scope: !706)
!706 = distinct !DILexicalBlock(scope: !680, file: !127, line: 133, column: 7)
!707 = !DILocation(line: 133, column: 28, scope: !706)
!708 = !DILocation(line: 133, column: 50, scope: !706)
!709 = !DILocation(line: 133, column: 7, scope: !680)
!710 = !DILocation(line: 134, column: 12, scope: !706)
!711 = !DILocation(line: 134, column: 5, scope: !706)
!712 = !DILocation(line: 135, column: 1, scope: !680)
!713 = distinct !DISubprogram(name: "verror", scope: !134, file: !134, line: 251, type: !714, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !716)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !31, !31, !6, !142}
!716 = !{!717, !718, !719, !720}
!717 = !DILocalVariable(name: "status", arg: 1, scope: !713, file: !134, line: 251, type: !31)
!718 = !DILocalVariable(name: "errnum", arg: 2, scope: !713, file: !134, line: 251, type: !31)
!719 = !DILocalVariable(name: "message", arg: 3, scope: !713, file: !134, line: 251, type: !6)
!720 = !DILocalVariable(name: "args", arg: 4, scope: !713, file: !134, line: 251, type: !142)
!721 = !DILocation(line: 0, scope: !713)
!722 = !DILocation(line: 251, column: 1, scope: !713)
!723 = !DILocation(line: 261, column: 3, scope: !713)
!724 = !DILocation(line: 265, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !713, file: !134, line: 265, column: 7)
!726 = !DILocation(line: 265, column: 7, scope: !713)
!727 = !DILocation(line: 266, column: 5, scope: !725)
!728 = !DILocation(line: 272, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !134, line: 268, column: 5)
!730 = !DILocation(line: 276, column: 3, scope: !713)
!731 = !{i64 0, i64 8, !415, i64 8, i64 8, !415, i64 16, i64 8, !415, i64 24, i64 4, !432, i64 28, i64 4, !432}
!732 = !DILocation(line: 282, column: 1, scope: !713)
!733 = distinct !DISubprogram(name: "flush_stdout", scope: !134, file: !134, line: 163, type: !170, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !734)
!734 = !{!735}
!735 = !DILocalVariable(name: "stdout_fd", scope: !733, file: !134, line: 166, type: !31)
!736 = !DILocation(line: 0, scope: !733)
!737 = !DILocalVariable(name: "fd", arg: 1, scope: !738, file: !134, line: 145, type: !31)
!738 = distinct !DISubprogram(name: "is_open", scope: !134, file: !134, line: 145, type: !739, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!31, !31}
!741 = !{!737}
!742 = !DILocation(line: 0, scope: !738, inlinedAt: !743)
!743 = distinct !DILocation(line: 182, column: 25, scope: !744)
!744 = distinct !DILexicalBlock(scope: !733, file: !134, line: 182, column: 7)
!745 = !DILocation(line: 157, column: 15, scope: !738, inlinedAt: !743)
!746 = !DILocation(line: 182, column: 25, scope: !744)
!747 = !DILocation(line: 182, column: 7, scope: !733)
!748 = !DILocation(line: 184, column: 5, scope: !744)
!749 = !DILocation(line: 185, column: 1, scope: !733)
!750 = distinct !DISubprogram(name: "error_tail", scope: !134, file: !134, line: 219, type: !714, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !751)
!751 = !{!752, !753, !754, !755}
!752 = !DILocalVariable(name: "status", arg: 1, scope: !750, file: !134, line: 219, type: !31)
!753 = !DILocalVariable(name: "errnum", arg: 2, scope: !750, file: !134, line: 219, type: !31)
!754 = !DILocalVariable(name: "message", arg: 3, scope: !750, file: !134, line: 219, type: !6)
!755 = !DILocalVariable(name: "args", arg: 4, scope: !750, file: !134, line: 219, type: !142)
!756 = !DILocation(line: 0, scope: !750)
!757 = !DILocation(line: 219, column: 1, scope: !750)
!758 = !DILocation(line: 229, column: 13, scope: !750)
!759 = !DILocation(line: 229, column: 3, scope: !750)
!760 = !DILocalVariable(name: "__stream", arg: 1, scope: !761, file: !762, line: 132, type: !765)
!761 = distinct !DISubprogram(name: "vfprintf", scope: !762, file: !762, line: 132, type: !763, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !800)
!762 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!763 = !DISubroutineType(types: !764)
!764 = !{!31, !765, !608, !144}
!765 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !768, file: !62, line: 51, baseType: !31, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !768, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !768, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !768, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !768, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !768, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !768, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !768, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !768, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !768, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !768, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !768, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !768, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !768, file: !62, line: 70, baseType: !784, size: 64, offset: 832)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !768, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !768, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !768, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !768, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !768, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !768, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !768, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !768, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !768, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !768, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !768, file: !62, line: 93, baseType: !784, size: 64, offset: 1344)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !768, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !768, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !768, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !768, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!800 = !{!760, !801, !802}
!801 = !DILocalVariable(name: "__fmt", arg: 2, scope: !761, file: !762, line: 133, type: !608)
!802 = !DILocalVariable(name: "__ap", arg: 3, scope: !761, file: !762, line: 133, type: !144)
!803 = !DILocation(line: 0, scope: !761, inlinedAt: !804)
!804 = distinct !DILocation(line: 229, column: 3, scope: !750)
!805 = !DILocation(line: 135, column: 10, scope: !761, inlinedAt: !804)
!806 = !{!807, !809}
!807 = distinct !{!807, !808, !"vfprintf.inline: argument 0"}
!808 = distinct !{!808, !"vfprintf.inline"}
!809 = distinct !{!809, !808, !"vfprintf.inline: argument 1"}
!810 = !DILocation(line: 232, column: 3, scope: !750)
!811 = !DILocation(line: 233, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !750, file: !134, line: 233, column: 7)
!813 = !DILocation(line: 233, column: 7, scope: !750)
!814 = !DILocalVariable(name: "errnum", arg: 1, scope: !815, file: !134, line: 188, type: !31)
!815 = distinct !DISubprogram(name: "print_errno_message", scope: !134, file: !134, line: 188, type: !409, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !816)
!816 = !{!814, !817, !818}
!817 = !DILocalVariable(name: "s", scope: !815, file: !134, line: 190, type: !6)
!818 = !DILocalVariable(name: "errbuf", scope: !815, file: !134, line: 193, type: !819)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 1024)
!822 = !DILocation(line: 0, scope: !815, inlinedAt: !823)
!823 = distinct !DILocation(line: 234, column: 5, scope: !812)
!824 = !DILocation(line: 193, column: 3, scope: !815, inlinedAt: !823)
!825 = !DILocation(line: 193, column: 8, scope: !815, inlinedAt: !823)
!826 = !DILocation(line: 195, column: 7, scope: !815, inlinedAt: !823)
!827 = !DILocation(line: 207, column: 9, scope: !828, inlinedAt: !823)
!828 = distinct !DILexicalBlock(scope: !815, file: !134, line: 207, column: 7)
!829 = !DILocation(line: 207, column: 7, scope: !815, inlinedAt: !823)
!830 = !DILocation(line: 208, column: 9, scope: !828, inlinedAt: !823)
!831 = !DILocation(line: 208, column: 5, scope: !828, inlinedAt: !823)
!832 = !DILocation(line: 214, column: 3, scope: !815, inlinedAt: !823)
!833 = !DILocation(line: 216, column: 1, scope: !815, inlinedAt: !823)
!834 = !DILocation(line: 234, column: 5, scope: !812)
!835 = !DILocation(line: 238, column: 3, scope: !750)
!836 = !DILocalVariable(name: "__c", arg: 1, scope: !837, file: !838, line: 101, type: !31)
!837 = distinct !DISubprogram(name: "putc_unlocked", scope: !838, file: !838, line: 101, type: !839, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !841)
!838 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!839 = !DISubroutineType(types: !840)
!840 = !{!31, !31, !766}
!841 = !{!836, !842}
!842 = !DILocalVariable(name: "__stream", arg: 2, scope: !837, file: !838, line: 101, type: !766)
!843 = !DILocation(line: 0, scope: !837, inlinedAt: !844)
!844 = distinct !DILocation(line: 238, column: 3, scope: !750)
!845 = !DILocation(line: 103, column: 10, scope: !837, inlinedAt: !844)
!846 = !{!847, !416, i64 40}
!847 = !{!"_IO_FILE", !433, i64 0, !416, i64 8, !416, i64 16, !416, i64 24, !416, i64 32, !416, i64 40, !416, i64 48, !416, i64 56, !416, i64 64, !416, i64 72, !416, i64 80, !416, i64 88, !416, i64 96, !416, i64 104, !433, i64 112, !433, i64 116, !848, i64 120, !474, i64 128, !417, i64 130, !417, i64 131, !416, i64 136, !848, i64 144, !416, i64 152, !416, i64 160, !416, i64 168, !416, i64 176, !848, i64 184, !433, i64 192, !417, i64 196}
!848 = !{!"long", !417, i64 0}
!849 = !{!847, !416, i64 48}
!850 = !{!"branch_weights", i32 2000, i32 1}
!851 = !DILocation(line: 240, column: 3, scope: !750)
!852 = !DILocation(line: 241, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !750, file: !134, line: 241, column: 7)
!854 = !DILocation(line: 241, column: 7, scope: !750)
!855 = !DILocation(line: 242, column: 5, scope: !853)
!856 = !DILocation(line: 243, column: 1, scope: !750)
!857 = !DISubprogram(name: "strerror_r", scope: !858, file: !858, line: 444, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!858 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!859 = !DISubroutineType(types: !860)
!860 = !{!29, !31, !29, !33}
!861 = !DISubprogram(name: "fflush_unlocked", scope: !143, file: !143, line: 239, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!862 = !DISubroutineType(types: !863)
!863 = !{!31, !766}
!864 = !DISubprogram(name: "fcntl", scope: !865, file: !865, line: 149, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!865 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!866 = !DISubroutineType(types: !867)
!867 = !{!31, !31, !31, null}
!868 = distinct !DISubprogram(name: "error", scope: !134, file: !134, line: 285, type: !869, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !31, !31, !6, null}
!871 = !{!872, !873, !874, !875}
!872 = !DILocalVariable(name: "status", arg: 1, scope: !868, file: !134, line: 285, type: !31)
!873 = !DILocalVariable(name: "errnum", arg: 2, scope: !868, file: !134, line: 285, type: !31)
!874 = !DILocalVariable(name: "message", arg: 3, scope: !868, file: !134, line: 285, type: !6)
!875 = !DILocalVariable(name: "ap", scope: !868, file: !134, line: 287, type: !142)
!876 = !DILocation(line: 0, scope: !868)
!877 = !DILocation(line: 287, column: 3, scope: !868)
!878 = !DILocation(line: 287, column: 11, scope: !868)
!879 = !DILocation(line: 288, column: 3, scope: !868)
!880 = !DILocation(line: 289, column: 3, scope: !868)
!881 = !DILocation(line: 290, column: 3, scope: !868)
!882 = !DILocation(line: 291, column: 1, scope: !868)
!883 = !DILocation(line: 0, scope: !139)
!884 = !DILocation(line: 298, column: 1, scope: !139)
!885 = !DILocation(line: 302, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !139, file: !134, line: 302, column: 7)
!887 = !DILocation(line: 302, column: 7, scope: !139)
!888 = !DILocation(line: 307, column: 11, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !134, line: 307, column: 11)
!890 = distinct !DILexicalBlock(scope: !886, file: !134, line: 303, column: 5)
!891 = !DILocation(line: 307, column: 27, scope: !889)
!892 = !DILocation(line: 308, column: 11, scope: !889)
!893 = !DILocation(line: 308, column: 28, scope: !889)
!894 = !DILocation(line: 308, column: 25, scope: !889)
!895 = !DILocation(line: 309, column: 15, scope: !889)
!896 = !DILocation(line: 309, column: 33, scope: !889)
!897 = !DILocation(line: 310, column: 19, scope: !889)
!898 = !DILocation(line: 311, column: 22, scope: !889)
!899 = !DILocation(line: 311, column: 56, scope: !889)
!900 = !DILocation(line: 307, column: 11, scope: !890)
!901 = !DILocation(line: 316, column: 21, scope: !890)
!902 = !DILocation(line: 317, column: 23, scope: !890)
!903 = !DILocation(line: 318, column: 5, scope: !890)
!904 = !DILocation(line: 327, column: 3, scope: !139)
!905 = !DILocation(line: 331, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !139, file: !134, line: 331, column: 7)
!907 = !DILocation(line: 331, column: 7, scope: !139)
!908 = !DILocation(line: 332, column: 5, scope: !906)
!909 = !DILocation(line: 338, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !906, file: !134, line: 334, column: 5)
!911 = !DILocation(line: 346, column: 3, scope: !139)
!912 = !DILocation(line: 350, column: 3, scope: !139)
!913 = !DILocation(line: 356, column: 1, scope: !139)
!914 = distinct !DISubprogram(name: "error_at_line", scope: !134, file: !134, line: 359, type: !915, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !133, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !31, !31, !6, !14, !6, null}
!917 = !{!918, !919, !920, !921, !922, !923}
!918 = !DILocalVariable(name: "status", arg: 1, scope: !914, file: !134, line: 359, type: !31)
!919 = !DILocalVariable(name: "errnum", arg: 2, scope: !914, file: !134, line: 359, type: !31)
!920 = !DILocalVariable(name: "file_name", arg: 3, scope: !914, file: !134, line: 359, type: !6)
!921 = !DILocalVariable(name: "line_number", arg: 4, scope: !914, file: !134, line: 360, type: !14)
!922 = !DILocalVariable(name: "message", arg: 5, scope: !914, file: !134, line: 360, type: !6)
!923 = !DILocalVariable(name: "ap", scope: !914, file: !134, line: 362, type: !142)
!924 = !DILocation(line: 0, scope: !914)
!925 = !DILocation(line: 362, column: 3, scope: !914)
!926 = !DILocation(line: 362, column: 11, scope: !914)
!927 = !DILocation(line: 363, column: 3, scope: !914)
!928 = !DILocation(line: 364, column: 3, scope: !914)
!929 = !DILocation(line: 366, column: 3, scope: !914)
!930 = !DILocation(line: 367, column: 1, scope: !914)
!931 = distinct !DISubprogram(name: "getprogname", scope: !334, file: !334, line: 54, type: !932, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !429)
!932 = !DISubroutineType(types: !933)
!933 = !{!6}
!934 = !DILocation(line: 58, column: 10, scope: !931)
!935 = !DILocation(line: 58, column: 3, scope: !931)
!936 = distinct !DISubprogram(name: "set_program_name", scope: !175, file: !175, line: 37, type: !547, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !937)
!937 = !{!938, !939, !940}
!938 = !DILocalVariable(name: "argv0", arg: 1, scope: !936, file: !175, line: 37, type: !6)
!939 = !DILocalVariable(name: "slash", scope: !936, file: !175, line: 44, type: !6)
!940 = !DILocalVariable(name: "base", scope: !936, file: !175, line: 45, type: !6)
!941 = !DILocation(line: 0, scope: !936)
!942 = !DILocation(line: 44, column: 23, scope: !936)
!943 = !DILocation(line: 45, column: 22, scope: !936)
!944 = !DILocation(line: 46, column: 17, scope: !945)
!945 = distinct !DILexicalBlock(scope: !936, file: !175, line: 46, column: 7)
!946 = !DILocation(line: 46, column: 9, scope: !945)
!947 = !DILocation(line: 46, column: 25, scope: !945)
!948 = !DILocation(line: 46, column: 40, scope: !945)
!949 = !DILocalVariable(name: "__s1", arg: 1, scope: !950, file: !445, line: 974, type: !618)
!950 = distinct !DISubprogram(name: "memeq", scope: !445, file: !445, line: 974, type: !951, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !953)
!951 = !DISubroutineType(types: !952)
!952 = !{!45, !618, !618, !33}
!953 = !{!949, !954, !955}
!954 = !DILocalVariable(name: "__s2", arg: 2, scope: !950, file: !445, line: 974, type: !618)
!955 = !DILocalVariable(name: "__n", arg: 3, scope: !950, file: !445, line: 974, type: !33)
!956 = !DILocation(line: 0, scope: !950, inlinedAt: !957)
!957 = distinct !DILocation(line: 46, column: 28, scope: !945)
!958 = !DILocation(line: 976, column: 11, scope: !950, inlinedAt: !957)
!959 = !DILocation(line: 976, column: 10, scope: !950, inlinedAt: !957)
!960 = !DILocation(line: 46, column: 7, scope: !936)
!961 = !DILocation(line: 49, column: 11, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !175, line: 49, column: 11)
!963 = distinct !DILexicalBlock(scope: !945, file: !175, line: 47, column: 5)
!964 = !DILocation(line: 49, column: 36, scope: !962)
!965 = !DILocation(line: 49, column: 11, scope: !963)
!966 = !DILocation(line: 65, column: 16, scope: !936)
!967 = !DILocation(line: 71, column: 27, scope: !936)
!968 = !DILocation(line: 74, column: 33, scope: !936)
!969 = !DILocation(line: 76, column: 1, scope: !936)
!970 = !DILocation(line: 0, scope: !180)
!971 = !DILocation(line: 40, column: 29, scope: !180)
!972 = !DILocation(line: 41, column: 19, scope: !973)
!973 = distinct !DILexicalBlock(scope: !180, file: !181, line: 41, column: 7)
!974 = !DILocation(line: 41, column: 7, scope: !180)
!975 = !DILocation(line: 47, column: 3, scope: !180)
!976 = !DILocation(line: 48, column: 3, scope: !180)
!977 = !DILocation(line: 48, column: 13, scope: !180)
!978 = !DILocalVariable(name: "ps", arg: 1, scope: !979, file: !980, line: 1135, type: !983)
!979 = distinct !DISubprogram(name: "mbszero", scope: !980, file: !980, line: 1135, type: !981, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !984)
!980 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!981 = !DISubroutineType(types: !982)
!982 = !{null, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!984 = !{!978}
!985 = !DILocation(line: 0, scope: !979, inlinedAt: !986)
!986 = distinct !DILocation(line: 48, column: 18, scope: !180)
!987 = !DILocalVariable(name: "__dest", arg: 1, scope: !988, file: !989, line: 57, type: !30)
!988 = distinct !DISubprogram(name: "memset", scope: !989, file: !989, line: 57, type: !990, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !992)
!989 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!990 = !DISubroutineType(types: !991)
!991 = !{!30, !30, !31, !33}
!992 = !{!987, !993, !994}
!993 = !DILocalVariable(name: "__ch", arg: 2, scope: !988, file: !989, line: 57, type: !31)
!994 = !DILocalVariable(name: "__len", arg: 3, scope: !988, file: !989, line: 57, type: !33)
!995 = !DILocation(line: 0, scope: !988, inlinedAt: !996)
!996 = distinct !DILocation(line: 1137, column: 3, scope: !979, inlinedAt: !986)
!997 = !DILocation(line: 59, column: 10, scope: !988, inlinedAt: !996)
!998 = !DILocation(line: 49, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !180, file: !181, line: 49, column: 7)
!1000 = !DILocation(line: 49, column: 39, scope: !999)
!1001 = !DILocation(line: 49, column: 44, scope: !999)
!1002 = !DILocation(line: 54, column: 1, scope: !180)
!1003 = !DISubprogram(name: "mbrtoc32", scope: !192, file: !192, line: 57, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!33, !1006, !608, !33, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !983)
!1009 = distinct !DISubprogram(name: "clone_quoting_options", scope: !217, file: !217, line: 113, type: !1010, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1013)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!1012, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1013 = !{!1014, !1015, !1016}
!1014 = !DILocalVariable(name: "o", arg: 1, scope: !1009, file: !217, line: 113, type: !1012)
!1015 = !DILocalVariable(name: "saved_errno", scope: !1009, file: !217, line: 115, type: !31)
!1016 = !DILocalVariable(name: "p", scope: !1009, file: !217, line: 116, type: !1012)
!1017 = !DILocation(line: 0, scope: !1009)
!1018 = !DILocation(line: 115, column: 21, scope: !1009)
!1019 = !DILocation(line: 116, column: 40, scope: !1009)
!1020 = !DILocation(line: 116, column: 31, scope: !1009)
!1021 = !DILocation(line: 118, column: 9, scope: !1009)
!1022 = !DILocation(line: 119, column: 3, scope: !1009)
!1023 = distinct !DISubprogram(name: "get_quoting_style", scope: !217, file: !217, line: 124, type: !1024, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1028)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!219, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!1028 = !{!1029}
!1029 = !DILocalVariable(name: "o", arg: 1, scope: !1023, file: !217, line: 124, type: !1026)
!1030 = !DILocation(line: 0, scope: !1023)
!1031 = !DILocation(line: 126, column: 11, scope: !1023)
!1032 = !DILocation(line: 126, column: 46, scope: !1023)
!1033 = !{!1034, !417, i64 0}
!1034 = !{!"quoting_options", !417, i64 0, !433, i64 4, !417, i64 8, !416, i64 40, !416, i64 48}
!1035 = !DILocation(line: 126, column: 3, scope: !1023)
!1036 = distinct !DISubprogram(name: "set_quoting_style", scope: !217, file: !217, line: 132, type: !1037, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1039)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1012, !219}
!1039 = !{!1040, !1041}
!1040 = !DILocalVariable(name: "o", arg: 1, scope: !1036, file: !217, line: 132, type: !1012)
!1041 = !DILocalVariable(name: "s", arg: 2, scope: !1036, file: !217, line: 132, type: !219)
!1042 = !DILocation(line: 0, scope: !1036)
!1043 = !DILocation(line: 134, column: 4, scope: !1036)
!1044 = !DILocation(line: 134, column: 39, scope: !1036)
!1045 = !DILocation(line: 134, column: 45, scope: !1036)
!1046 = !DILocation(line: 135, column: 1, scope: !1036)
!1047 = distinct !DISubprogram(name: "set_char_quoting", scope: !217, file: !217, line: 143, type: !1048, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!31, !1012, !8, !31}
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1057, !1058}
!1051 = !DILocalVariable(name: "o", arg: 1, scope: !1047, file: !217, line: 143, type: !1012)
!1052 = !DILocalVariable(name: "c", arg: 2, scope: !1047, file: !217, line: 143, type: !8)
!1053 = !DILocalVariable(name: "i", arg: 3, scope: !1047, file: !217, line: 143, type: !31)
!1054 = !DILocalVariable(name: "uc", scope: !1047, file: !217, line: 145, type: !36)
!1055 = !DILocalVariable(name: "p", scope: !1047, file: !217, line: 146, type: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1057 = !DILocalVariable(name: "shift", scope: !1047, file: !217, line: 148, type: !31)
!1058 = !DILocalVariable(name: "r", scope: !1047, file: !217, line: 149, type: !14)
!1059 = !DILocation(line: 0, scope: !1047)
!1060 = !DILocation(line: 147, column: 6, scope: !1047)
!1061 = !DILocation(line: 147, column: 62, scope: !1047)
!1062 = !DILocation(line: 147, column: 57, scope: !1047)
!1063 = !DILocation(line: 148, column: 15, scope: !1047)
!1064 = !DILocation(line: 149, column: 21, scope: !1047)
!1065 = !DILocation(line: 149, column: 24, scope: !1047)
!1066 = !DILocation(line: 149, column: 34, scope: !1047)
!1067 = !DILocation(line: 150, column: 13, scope: !1047)
!1068 = !DILocation(line: 150, column: 19, scope: !1047)
!1069 = !DILocation(line: 150, column: 24, scope: !1047)
!1070 = !DILocation(line: 150, column: 6, scope: !1047)
!1071 = !DILocation(line: 151, column: 3, scope: !1047)
!1072 = distinct !DISubprogram(name: "set_quoting_flags", scope: !217, file: !217, line: 159, type: !1073, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1075)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!31, !1012, !31}
!1075 = !{!1076, !1077, !1078}
!1076 = !DILocalVariable(name: "o", arg: 1, scope: !1072, file: !217, line: 159, type: !1012)
!1077 = !DILocalVariable(name: "i", arg: 2, scope: !1072, file: !217, line: 159, type: !31)
!1078 = !DILocalVariable(name: "r", scope: !1072, file: !217, line: 163, type: !31)
!1079 = !DILocation(line: 0, scope: !1072)
!1080 = !DILocation(line: 161, column: 8, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1072, file: !217, line: 161, column: 7)
!1082 = !DILocation(line: 161, column: 7, scope: !1072)
!1083 = !DILocation(line: 163, column: 14, scope: !1072)
!1084 = !{!1034, !433, i64 4}
!1085 = !DILocation(line: 164, column: 12, scope: !1072)
!1086 = !DILocation(line: 165, column: 3, scope: !1072)
!1087 = distinct !DISubprogram(name: "set_custom_quoting", scope: !217, file: !217, line: 169, type: !1088, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1012, !6, !6}
!1090 = !{!1091, !1092, !1093}
!1091 = !DILocalVariable(name: "o", arg: 1, scope: !1087, file: !217, line: 169, type: !1012)
!1092 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1087, file: !217, line: 170, type: !6)
!1093 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1087, file: !217, line: 170, type: !6)
!1094 = !DILocation(line: 0, scope: !1087)
!1095 = !DILocation(line: 172, column: 8, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1087, file: !217, line: 172, column: 7)
!1097 = !DILocation(line: 172, column: 7, scope: !1087)
!1098 = !DILocation(line: 174, column: 6, scope: !1087)
!1099 = !DILocation(line: 174, column: 12, scope: !1087)
!1100 = !DILocation(line: 175, column: 8, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1087, file: !217, line: 175, column: 7)
!1102 = !DILocation(line: 175, column: 19, scope: !1101)
!1103 = !DILocation(line: 176, column: 5, scope: !1101)
!1104 = !DILocation(line: 177, column: 6, scope: !1087)
!1105 = !DILocation(line: 177, column: 17, scope: !1087)
!1106 = !{!1034, !416, i64 40}
!1107 = !DILocation(line: 178, column: 6, scope: !1087)
!1108 = !DILocation(line: 178, column: 18, scope: !1087)
!1109 = !{!1034, !416, i64 48}
!1110 = !DILocation(line: 179, column: 1, scope: !1087)
!1111 = distinct !DISubprogram(name: "quotearg_buffer", scope: !217, file: !217, line: 774, type: !1112, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!33, !29, !33, !6, !33, !1026}
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122}
!1115 = !DILocalVariable(name: "buffer", arg: 1, scope: !1111, file: !217, line: 774, type: !29)
!1116 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1111, file: !217, line: 774, type: !33)
!1117 = !DILocalVariable(name: "arg", arg: 3, scope: !1111, file: !217, line: 775, type: !6)
!1118 = !DILocalVariable(name: "argsize", arg: 4, scope: !1111, file: !217, line: 775, type: !33)
!1119 = !DILocalVariable(name: "o", arg: 5, scope: !1111, file: !217, line: 776, type: !1026)
!1120 = !DILocalVariable(name: "p", scope: !1111, file: !217, line: 778, type: !1026)
!1121 = !DILocalVariable(name: "saved_errno", scope: !1111, file: !217, line: 779, type: !31)
!1122 = !DILocalVariable(name: "r", scope: !1111, file: !217, line: 780, type: !33)
!1123 = !DILocation(line: 0, scope: !1111)
!1124 = !DILocation(line: 778, column: 37, scope: !1111)
!1125 = !DILocation(line: 779, column: 21, scope: !1111)
!1126 = !DILocation(line: 781, column: 43, scope: !1111)
!1127 = !DILocation(line: 781, column: 53, scope: !1111)
!1128 = !DILocation(line: 781, column: 60, scope: !1111)
!1129 = !DILocation(line: 782, column: 43, scope: !1111)
!1130 = !DILocation(line: 782, column: 58, scope: !1111)
!1131 = !DILocation(line: 780, column: 14, scope: !1111)
!1132 = !DILocation(line: 783, column: 9, scope: !1111)
!1133 = !DILocation(line: 784, column: 3, scope: !1111)
!1134 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !217, file: !217, line: 251, type: !1135, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1139)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!33, !29, !33, !6, !33, !219, !31, !1137, !6, !6}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1164, !1166, !1169, !1170, !1171, !1172, !1175, !1176, !1179, !1183, !1184, !1192, !1195, !1196, !1198, !1199, !1200, !1201}
!1140 = !DILocalVariable(name: "buffer", arg: 1, scope: !1134, file: !217, line: 251, type: !29)
!1141 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1134, file: !217, line: 251, type: !33)
!1142 = !DILocalVariable(name: "arg", arg: 3, scope: !1134, file: !217, line: 252, type: !6)
!1143 = !DILocalVariable(name: "argsize", arg: 4, scope: !1134, file: !217, line: 252, type: !33)
!1144 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1134, file: !217, line: 253, type: !219)
!1145 = !DILocalVariable(name: "flags", arg: 6, scope: !1134, file: !217, line: 253, type: !31)
!1146 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1134, file: !217, line: 254, type: !1137)
!1147 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1134, file: !217, line: 255, type: !6)
!1148 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1134, file: !217, line: 256, type: !6)
!1149 = !DILocalVariable(name: "unibyte_locale", scope: !1134, file: !217, line: 258, type: !45)
!1150 = !DILocalVariable(name: "len", scope: !1134, file: !217, line: 260, type: !33)
!1151 = !DILocalVariable(name: "orig_buffersize", scope: !1134, file: !217, line: 261, type: !33)
!1152 = !DILocalVariable(name: "quote_string", scope: !1134, file: !217, line: 262, type: !6)
!1153 = !DILocalVariable(name: "quote_string_len", scope: !1134, file: !217, line: 263, type: !33)
!1154 = !DILocalVariable(name: "backslash_escapes", scope: !1134, file: !217, line: 264, type: !45)
!1155 = !DILocalVariable(name: "elide_outer_quotes", scope: !1134, file: !217, line: 265, type: !45)
!1156 = !DILocalVariable(name: "encountered_single_quote", scope: !1134, file: !217, line: 266, type: !45)
!1157 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1134, file: !217, line: 267, type: !45)
!1158 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1134, file: !217, line: 309, type: !45)
!1159 = !DILocalVariable(name: "lq", scope: !1160, file: !217, line: 361, type: !6)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !217, line: 361, column: 11)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !217, line: 360, column: 13)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !217, line: 333, column: 7)
!1163 = distinct !DILexicalBlock(scope: !1134, file: !217, line: 312, column: 5)
!1164 = !DILocalVariable(name: "i", scope: !1165, file: !217, line: 395, type: !33)
!1165 = distinct !DILexicalBlock(scope: !1134, file: !217, line: 395, column: 3)
!1166 = !DILocalVariable(name: "is_right_quote", scope: !1167, file: !217, line: 397, type: !45)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !217, line: 396, column: 5)
!1168 = distinct !DILexicalBlock(scope: !1165, file: !217, line: 395, column: 3)
!1169 = !DILocalVariable(name: "escaping", scope: !1167, file: !217, line: 398, type: !45)
!1170 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1167, file: !217, line: 399, type: !45)
!1171 = !DILocalVariable(name: "c", scope: !1167, file: !217, line: 417, type: !36)
!1172 = !DILocalVariable(name: "m", scope: !1173, file: !217, line: 598, type: !33)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !217, line: 596, column: 11)
!1174 = distinct !DILexicalBlock(scope: !1167, file: !217, line: 419, column: 9)
!1175 = !DILocalVariable(name: "printable", scope: !1173, file: !217, line: 600, type: !45)
!1176 = !DILocalVariable(name: "mbs", scope: !1177, file: !217, line: 609, type: !276)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !217, line: 608, column: 15)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !217, line: 602, column: 17)
!1179 = !DILocalVariable(name: "w", scope: !1180, file: !217, line: 618, type: !191)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !217, line: 617, column: 19)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !217, line: 616, column: 17)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !217, line: 616, column: 17)
!1183 = !DILocalVariable(name: "bytes", scope: !1180, file: !217, line: 619, type: !33)
!1184 = !DILocalVariable(name: "j", scope: !1185, file: !217, line: 648, type: !33)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !217, line: 648, column: 29)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !217, line: 647, column: 27)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !217, line: 645, column: 29)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !217, line: 636, column: 23)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !217, line: 628, column: 30)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !217, line: 623, column: 30)
!1191 = distinct !DILexicalBlock(scope: !1180, file: !217, line: 621, column: 25)
!1192 = !DILocalVariable(name: "ilim", scope: !1193, file: !217, line: 674, type: !33)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !217, line: 671, column: 15)
!1194 = distinct !DILexicalBlock(scope: !1173, file: !217, line: 670, column: 17)
!1195 = !DILabel(scope: !1134, name: "process_input", file: !217, line: 308)
!1196 = !DILabel(scope: !1197, name: "c_and_shell_escape", file: !217, line: 502)
!1197 = distinct !DILexicalBlock(scope: !1174, file: !217, line: 478, column: 9)
!1198 = !DILabel(scope: !1197, name: "c_escape", file: !217, line: 507)
!1199 = !DILabel(scope: !1167, name: "store_escape", file: !217, line: 709)
!1200 = !DILabel(scope: !1167, name: "store_c", file: !217, line: 712)
!1201 = !DILabel(scope: !1134, name: "force_outer_quoting_style", file: !217, line: 753)
!1202 = !DILocation(line: 0, scope: !1134)
!1203 = !DILocation(line: 258, column: 25, scope: !1134)
!1204 = !DILocation(line: 258, column: 36, scope: !1134)
!1205 = !DILocation(line: 267, column: 3, scope: !1134)
!1206 = !DILocation(line: 261, column: 10, scope: !1134)
!1207 = !DILocation(line: 262, column: 15, scope: !1134)
!1208 = !DILocation(line: 263, column: 10, scope: !1134)
!1209 = !DILocation(line: 308, column: 2, scope: !1134)
!1210 = !DILocation(line: 311, column: 3, scope: !1134)
!1211 = !DILocation(line: 318, column: 11, scope: !1163)
!1212 = !DILocation(line: 319, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !217, line: 319, column: 9)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !217, line: 319, column: 9)
!1215 = distinct !DILexicalBlock(scope: !1163, file: !217, line: 318, column: 11)
!1216 = !DILocation(line: 319, column: 9, scope: !1214)
!1217 = !DILocation(line: 0, scope: !267, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 357, column: 26, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !217, line: 335, column: 11)
!1220 = distinct !DILexicalBlock(scope: !1162, file: !217, line: 334, column: 13)
!1221 = !DILocation(line: 199, column: 29, scope: !267, inlinedAt: !1218)
!1222 = !DILocation(line: 201, column: 19, scope: !1223, inlinedAt: !1218)
!1223 = distinct !DILexicalBlock(scope: !267, file: !217, line: 201, column: 7)
!1224 = !DILocation(line: 201, column: 7, scope: !267, inlinedAt: !1218)
!1225 = !DILocation(line: 229, column: 3, scope: !267, inlinedAt: !1218)
!1226 = !DILocation(line: 230, column: 3, scope: !267, inlinedAt: !1218)
!1227 = !DILocation(line: 230, column: 13, scope: !267, inlinedAt: !1218)
!1228 = !DILocalVariable(name: "ps", arg: 1, scope: !1229, file: !980, line: 1135, type: !1232)
!1229 = distinct !DISubprogram(name: "mbszero", scope: !980, file: !980, line: 1135, type: !1230, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1233)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1233 = !{!1228}
!1234 = !DILocation(line: 0, scope: !1229, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 230, column: 18, scope: !267, inlinedAt: !1218)
!1236 = !DILocalVariable(name: "__dest", arg: 1, scope: !1237, file: !989, line: 57, type: !30)
!1237 = distinct !DISubprogram(name: "memset", scope: !989, file: !989, line: 57, type: !990, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1238)
!1238 = !{!1236, !1239, !1240}
!1239 = !DILocalVariable(name: "__ch", arg: 2, scope: !1237, file: !989, line: 57, type: !31)
!1240 = !DILocalVariable(name: "__len", arg: 3, scope: !1237, file: !989, line: 57, type: !33)
!1241 = !DILocation(line: 0, scope: !1237, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 1137, column: 3, scope: !1229, inlinedAt: !1235)
!1243 = !DILocation(line: 59, column: 10, scope: !1237, inlinedAt: !1242)
!1244 = !DILocation(line: 231, column: 7, scope: !1245, inlinedAt: !1218)
!1245 = distinct !DILexicalBlock(scope: !267, file: !217, line: 231, column: 7)
!1246 = !DILocation(line: 231, column: 40, scope: !1245, inlinedAt: !1218)
!1247 = !DILocation(line: 231, column: 45, scope: !1245, inlinedAt: !1218)
!1248 = !DILocation(line: 235, column: 1, scope: !267, inlinedAt: !1218)
!1249 = !DILocation(line: 0, scope: !267, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 358, column: 27, scope: !1219)
!1251 = !DILocation(line: 199, column: 29, scope: !267, inlinedAt: !1250)
!1252 = !DILocation(line: 201, column: 19, scope: !1223, inlinedAt: !1250)
!1253 = !DILocation(line: 201, column: 7, scope: !267, inlinedAt: !1250)
!1254 = !DILocation(line: 229, column: 3, scope: !267, inlinedAt: !1250)
!1255 = !DILocation(line: 230, column: 3, scope: !267, inlinedAt: !1250)
!1256 = !DILocation(line: 230, column: 13, scope: !267, inlinedAt: !1250)
!1257 = !DILocation(line: 0, scope: !1229, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 230, column: 18, scope: !267, inlinedAt: !1250)
!1259 = !DILocation(line: 0, scope: !1237, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 1137, column: 3, scope: !1229, inlinedAt: !1258)
!1261 = !DILocation(line: 59, column: 10, scope: !1237, inlinedAt: !1260)
!1262 = !DILocation(line: 231, column: 7, scope: !1245, inlinedAt: !1250)
!1263 = !DILocation(line: 231, column: 40, scope: !1245, inlinedAt: !1250)
!1264 = !DILocation(line: 231, column: 45, scope: !1245, inlinedAt: !1250)
!1265 = !DILocation(line: 235, column: 1, scope: !267, inlinedAt: !1250)
!1266 = !DILocation(line: 360, column: 13, scope: !1162)
!1267 = !DILocation(line: 0, scope: !1160)
!1268 = !DILocation(line: 361, column: 45, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1160, file: !217, line: 361, column: 11)
!1270 = !DILocation(line: 361, column: 11, scope: !1160)
!1271 = !DILocation(line: 362, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !217, line: 362, column: 13)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !217, line: 362, column: 13)
!1274 = !DILocation(line: 362, column: 13, scope: !1273)
!1275 = !DILocation(line: 361, column: 52, scope: !1269)
!1276 = distinct !{!1276, !1270, !1277, !479}
!1277 = !DILocation(line: 362, column: 13, scope: !1160)
!1278 = !DILocation(line: 260, column: 10, scope: !1134)
!1279 = !DILocation(line: 365, column: 28, scope: !1162)
!1280 = !DILocation(line: 367, column: 7, scope: !1163)
!1281 = !DILocation(line: 370, column: 7, scope: !1163)
!1282 = !DILocation(line: 376, column: 11, scope: !1163)
!1283 = !DILocation(line: 381, column: 11, scope: !1163)
!1284 = !DILocation(line: 382, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !217, line: 382, column: 9)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !217, line: 382, column: 9)
!1287 = distinct !DILexicalBlock(scope: !1163, file: !217, line: 381, column: 11)
!1288 = !DILocation(line: 382, column: 9, scope: !1286)
!1289 = !DILocation(line: 389, column: 7, scope: !1163)
!1290 = !DILocation(line: 392, column: 7, scope: !1163)
!1291 = !DILocation(line: 0, scope: !1165)
!1292 = !DILocation(line: 395, column: 8, scope: !1165)
!1293 = !DILocation(line: 395, column: 34, scope: !1168)
!1294 = !DILocation(line: 395, column: 26, scope: !1168)
!1295 = !DILocation(line: 395, column: 48, scope: !1168)
!1296 = !DILocation(line: 395, column: 55, scope: !1168)
!1297 = !DILocation(line: 395, column: 3, scope: !1165)
!1298 = !DILocation(line: 395, column: 67, scope: !1168)
!1299 = !DILocation(line: 0, scope: !1167)
!1300 = !DILocation(line: 402, column: 11, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1167, file: !217, line: 401, column: 11)
!1302 = !DILocation(line: 404, column: 17, scope: !1301)
!1303 = !DILocation(line: 405, column: 39, scope: !1301)
!1304 = !DILocation(line: 409, column: 32, scope: !1301)
!1305 = !DILocation(line: 405, column: 19, scope: !1301)
!1306 = !DILocation(line: 405, column: 15, scope: !1301)
!1307 = !DILocation(line: 410, column: 11, scope: !1301)
!1308 = !DILocation(line: 410, column: 25, scope: !1301)
!1309 = !DILocalVariable(name: "__s1", arg: 1, scope: !1310, file: !445, line: 974, type: !618)
!1310 = distinct !DISubprogram(name: "memeq", scope: !445, file: !445, line: 974, type: !951, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1311)
!1311 = !{!1309, !1312, !1313}
!1312 = !DILocalVariable(name: "__s2", arg: 2, scope: !1310, file: !445, line: 974, type: !618)
!1313 = !DILocalVariable(name: "__n", arg: 3, scope: !1310, file: !445, line: 974, type: !33)
!1314 = !DILocation(line: 0, scope: !1310, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 410, column: 14, scope: !1301)
!1316 = !DILocation(line: 976, column: 11, scope: !1310, inlinedAt: !1315)
!1317 = !DILocation(line: 976, column: 10, scope: !1310, inlinedAt: !1315)
!1318 = !DILocation(line: 401, column: 11, scope: !1167)
!1319 = !DILocation(line: 417, column: 25, scope: !1167)
!1320 = !DILocation(line: 418, column: 7, scope: !1167)
!1321 = !DILocation(line: 421, column: 15, scope: !1174)
!1322 = !DILocation(line: 423, column: 15, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !217, line: 423, column: 15)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !217, line: 422, column: 13)
!1325 = distinct !DILexicalBlock(scope: !1174, file: !217, line: 421, column: 15)
!1326 = !DILocation(line: 423, column: 15, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !217, line: 423, column: 15)
!1328 = !DILocation(line: 423, column: 15, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !217, line: 423, column: 15)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !217, line: 423, column: 15)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !217, line: 423, column: 15)
!1332 = !DILocation(line: 423, column: 15, scope: !1330)
!1333 = !DILocation(line: 423, column: 15, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !217, line: 423, column: 15)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !217, line: 423, column: 15)
!1336 = !DILocation(line: 423, column: 15, scope: !1335)
!1337 = !DILocation(line: 423, column: 15, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !217, line: 423, column: 15)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !217, line: 423, column: 15)
!1340 = !DILocation(line: 423, column: 15, scope: !1339)
!1341 = !DILocation(line: 423, column: 15, scope: !1331)
!1342 = !DILocation(line: 423, column: 15, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !217, line: 423, column: 15)
!1344 = distinct !DILexicalBlock(scope: !1323, file: !217, line: 423, column: 15)
!1345 = !DILocation(line: 423, column: 15, scope: !1344)
!1346 = !DILocation(line: 431, column: 19, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1324, file: !217, line: 430, column: 19)
!1348 = !DILocation(line: 431, column: 24, scope: !1347)
!1349 = !DILocation(line: 431, column: 28, scope: !1347)
!1350 = !DILocation(line: 431, column: 38, scope: !1347)
!1351 = !DILocation(line: 431, column: 48, scope: !1347)
!1352 = !DILocation(line: 431, column: 59, scope: !1347)
!1353 = !DILocation(line: 433, column: 19, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !217, line: 433, column: 19)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !217, line: 433, column: 19)
!1356 = distinct !DILexicalBlock(scope: !1347, file: !217, line: 432, column: 17)
!1357 = !DILocation(line: 433, column: 19, scope: !1355)
!1358 = !DILocation(line: 434, column: 19, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !217, line: 434, column: 19)
!1360 = distinct !DILexicalBlock(scope: !1356, file: !217, line: 434, column: 19)
!1361 = !DILocation(line: 434, column: 19, scope: !1360)
!1362 = !DILocation(line: 435, column: 17, scope: !1356)
!1363 = !DILocation(line: 442, column: 20, scope: !1325)
!1364 = !DILocation(line: 447, column: 11, scope: !1174)
!1365 = !DILocation(line: 450, column: 19, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1174, file: !217, line: 448, column: 13)
!1367 = !DILocation(line: 456, column: 19, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1366, file: !217, line: 455, column: 19)
!1369 = !DILocation(line: 456, column: 24, scope: !1368)
!1370 = !DILocation(line: 456, column: 28, scope: !1368)
!1371 = !DILocation(line: 456, column: 38, scope: !1368)
!1372 = !DILocation(line: 456, column: 47, scope: !1368)
!1373 = !DILocation(line: 456, column: 41, scope: !1368)
!1374 = !DILocation(line: 456, column: 52, scope: !1368)
!1375 = !DILocation(line: 455, column: 19, scope: !1366)
!1376 = !DILocation(line: 457, column: 25, scope: !1368)
!1377 = !DILocation(line: 457, column: 17, scope: !1368)
!1378 = !DILocation(line: 464, column: 25, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1368, file: !217, line: 458, column: 19)
!1380 = !DILocation(line: 468, column: 21, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !217, line: 468, column: 21)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !217, line: 468, column: 21)
!1383 = !DILocation(line: 468, column: 21, scope: !1382)
!1384 = !DILocation(line: 469, column: 21, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !217, line: 469, column: 21)
!1386 = distinct !DILexicalBlock(scope: !1379, file: !217, line: 469, column: 21)
!1387 = !DILocation(line: 469, column: 21, scope: !1386)
!1388 = !DILocation(line: 470, column: 21, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !217, line: 470, column: 21)
!1390 = distinct !DILexicalBlock(scope: !1379, file: !217, line: 470, column: 21)
!1391 = !DILocation(line: 470, column: 21, scope: !1390)
!1392 = !DILocation(line: 471, column: 21, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !217, line: 471, column: 21)
!1394 = distinct !DILexicalBlock(scope: !1379, file: !217, line: 471, column: 21)
!1395 = !DILocation(line: 471, column: 21, scope: !1394)
!1396 = !DILocation(line: 472, column: 21, scope: !1379)
!1397 = !DILocation(line: 482, column: 33, scope: !1197)
!1398 = !DILocation(line: 483, column: 33, scope: !1197)
!1399 = !DILocation(line: 485, column: 33, scope: !1197)
!1400 = !DILocation(line: 486, column: 33, scope: !1197)
!1401 = !DILocation(line: 487, column: 33, scope: !1197)
!1402 = !DILocation(line: 490, column: 17, scope: !1197)
!1403 = !DILocation(line: 492, column: 21, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !217, line: 491, column: 15)
!1405 = distinct !DILexicalBlock(scope: !1197, file: !217, line: 490, column: 17)
!1406 = !DILocation(line: 499, column: 35, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1197, file: !217, line: 499, column: 17)
!1408 = !DILocation(line: 499, column: 57, scope: !1407)
!1409 = !DILocation(line: 0, scope: !1197)
!1410 = !DILocation(line: 502, column: 11, scope: !1197)
!1411 = !DILocation(line: 504, column: 17, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1197, file: !217, line: 503, column: 17)
!1413 = !DILocation(line: 507, column: 11, scope: !1197)
!1414 = !DILocation(line: 508, column: 17, scope: !1197)
!1415 = !DILocation(line: 517, column: 15, scope: !1174)
!1416 = !DILocation(line: 517, column: 40, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1174, file: !217, line: 517, column: 15)
!1418 = !DILocation(line: 517, column: 47, scope: !1417)
!1419 = !DILocation(line: 517, column: 18, scope: !1417)
!1420 = !DILocation(line: 521, column: 17, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1174, file: !217, line: 521, column: 15)
!1422 = !DILocation(line: 521, column: 15, scope: !1174)
!1423 = !DILocation(line: 525, column: 11, scope: !1174)
!1424 = !DILocation(line: 537, column: 15, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1174, file: !217, line: 536, column: 15)
!1426 = !DILocation(line: 536, column: 15, scope: !1174)
!1427 = !DILocation(line: 544, column: 15, scope: !1174)
!1428 = !DILocation(line: 546, column: 19, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !217, line: 545, column: 13)
!1430 = distinct !DILexicalBlock(scope: !1174, file: !217, line: 544, column: 15)
!1431 = !DILocation(line: 549, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !217, line: 549, column: 19)
!1433 = !DILocation(line: 549, column: 30, scope: !1432)
!1434 = !DILocation(line: 558, column: 15, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !217, line: 558, column: 15)
!1436 = distinct !DILexicalBlock(scope: !1429, file: !217, line: 558, column: 15)
!1437 = !DILocation(line: 558, column: 15, scope: !1436)
!1438 = !DILocation(line: 559, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !217, line: 559, column: 15)
!1440 = distinct !DILexicalBlock(scope: !1429, file: !217, line: 559, column: 15)
!1441 = !DILocation(line: 559, column: 15, scope: !1440)
!1442 = !DILocation(line: 560, column: 15, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !217, line: 560, column: 15)
!1444 = distinct !DILexicalBlock(scope: !1429, file: !217, line: 560, column: 15)
!1445 = !DILocation(line: 560, column: 15, scope: !1444)
!1446 = !DILocation(line: 562, column: 13, scope: !1429)
!1447 = !DILocation(line: 602, column: 17, scope: !1173)
!1448 = !DILocation(line: 0, scope: !1173)
!1449 = !DILocation(line: 605, column: 29, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1178, file: !217, line: 603, column: 15)
!1451 = !DILocation(line: 605, column: 41, scope: !1450)
!1452 = !DILocation(line: 670, column: 23, scope: !1194)
!1453 = !DILocation(line: 609, column: 17, scope: !1177)
!1454 = !DILocation(line: 609, column: 27, scope: !1177)
!1455 = !DILocation(line: 0, scope: !1229, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 609, column: 32, scope: !1177)
!1457 = !DILocation(line: 0, scope: !1237, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 1137, column: 3, scope: !1229, inlinedAt: !1456)
!1459 = !DILocation(line: 59, column: 10, scope: !1237, inlinedAt: !1458)
!1460 = !DILocation(line: 613, column: 29, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1177, file: !217, line: 613, column: 21)
!1462 = !DILocation(line: 613, column: 21, scope: !1177)
!1463 = !DILocation(line: 614, column: 29, scope: !1461)
!1464 = !DILocation(line: 614, column: 19, scope: !1461)
!1465 = !DILocation(line: 618, column: 21, scope: !1180)
!1466 = !DILocation(line: 620, column: 54, scope: !1180)
!1467 = !DILocation(line: 0, scope: !1180)
!1468 = !DILocation(line: 619, column: 36, scope: !1180)
!1469 = !DILocation(line: 621, column: 25, scope: !1180)
!1470 = !DILocation(line: 631, column: 38, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1189, file: !217, line: 629, column: 23)
!1472 = !DILocation(line: 631, column: 48, scope: !1471)
!1473 = !DILocation(line: 665, column: 19, scope: !1181)
!1474 = !DILocation(line: 666, column: 15, scope: !1178)
!1475 = !DILocation(line: 626, column: 25, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1190, file: !217, line: 624, column: 23)
!1477 = !DILocation(line: 631, column: 51, scope: !1471)
!1478 = !DILocation(line: 631, column: 25, scope: !1471)
!1479 = !DILocation(line: 632, column: 28, scope: !1471)
!1480 = !DILocation(line: 631, column: 34, scope: !1471)
!1481 = distinct !{!1481, !1478, !1479, !479}
!1482 = !DILocation(line: 646, column: 29, scope: !1187)
!1483 = !DILocation(line: 0, scope: !1185)
!1484 = !DILocation(line: 649, column: 49, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1185, file: !217, line: 648, column: 29)
!1486 = !DILocation(line: 649, column: 39, scope: !1485)
!1487 = !DILocation(line: 649, column: 31, scope: !1485)
!1488 = !DILocation(line: 648, column: 60, scope: !1485)
!1489 = !DILocation(line: 648, column: 50, scope: !1485)
!1490 = !DILocation(line: 648, column: 29, scope: !1185)
!1491 = distinct !{!1491, !1490, !1492, !479}
!1492 = !DILocation(line: 654, column: 33, scope: !1185)
!1493 = !DILocation(line: 657, column: 43, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1188, file: !217, line: 657, column: 29)
!1495 = !DILocalVariable(name: "wc", arg: 1, scope: !1496, file: !1497, line: 865, type: !1500)
!1496 = distinct !DISubprogram(name: "c32isprint", scope: !1497, file: !1497, line: 865, type: !1498, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1502)
!1497 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!31, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1501, line: 20, baseType: !14)
!1501 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1502 = !{!1495}
!1503 = !DILocation(line: 0, scope: !1496, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 657, column: 31, scope: !1494)
!1505 = !DILocation(line: 871, column: 10, scope: !1496, inlinedAt: !1504)
!1506 = !DILocation(line: 657, column: 31, scope: !1494)
!1507 = !DILocation(line: 664, column: 23, scope: !1180)
!1508 = !DILocation(line: 753, column: 2, scope: !1134)
!1509 = !DILocation(line: 756, column: 51, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1134, file: !217, line: 756, column: 7)
!1511 = !DILocation(line: 670, column: 19, scope: !1194)
!1512 = !DILocation(line: 670, column: 45, scope: !1194)
!1513 = !DILocation(line: 674, column: 33, scope: !1193)
!1514 = !DILocation(line: 0, scope: !1193)
!1515 = !DILocation(line: 676, column: 17, scope: !1193)
!1516 = !DILocation(line: 398, column: 12, scope: !1167)
!1517 = !DILocation(line: 678, column: 43, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !217, line: 678, column: 25)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !217, line: 677, column: 19)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !217, line: 676, column: 17)
!1521 = distinct !DILexicalBlock(scope: !1193, file: !217, line: 676, column: 17)
!1522 = !DILocation(line: 680, column: 25, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !217, line: 680, column: 25)
!1524 = distinct !DILexicalBlock(scope: !1518, file: !217, line: 679, column: 23)
!1525 = !DILocation(line: 680, column: 25, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !217, line: 680, column: 25)
!1527 = !DILocation(line: 680, column: 25, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !217, line: 680, column: 25)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !217, line: 680, column: 25)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !217, line: 680, column: 25)
!1531 = !DILocation(line: 680, column: 25, scope: !1529)
!1532 = !DILocation(line: 680, column: 25, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !217, line: 680, column: 25)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !217, line: 680, column: 25)
!1535 = !DILocation(line: 680, column: 25, scope: !1534)
!1536 = !DILocation(line: 680, column: 25, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !217, line: 680, column: 25)
!1538 = distinct !DILexicalBlock(scope: !1530, file: !217, line: 680, column: 25)
!1539 = !DILocation(line: 680, column: 25, scope: !1538)
!1540 = !DILocation(line: 680, column: 25, scope: !1530)
!1541 = !DILocation(line: 680, column: 25, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !217, line: 680, column: 25)
!1543 = distinct !DILexicalBlock(scope: !1523, file: !217, line: 680, column: 25)
!1544 = !DILocation(line: 680, column: 25, scope: !1543)
!1545 = !DILocation(line: 681, column: 25, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !217, line: 681, column: 25)
!1547 = distinct !DILexicalBlock(scope: !1524, file: !217, line: 681, column: 25)
!1548 = !DILocation(line: 681, column: 25, scope: !1547)
!1549 = !DILocation(line: 682, column: 25, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !217, line: 682, column: 25)
!1551 = distinct !DILexicalBlock(scope: !1524, file: !217, line: 682, column: 25)
!1552 = !DILocation(line: 682, column: 25, scope: !1551)
!1553 = !DILocation(line: 683, column: 38, scope: !1524)
!1554 = !DILocation(line: 683, column: 33, scope: !1524)
!1555 = !DILocation(line: 684, column: 23, scope: !1524)
!1556 = !DILocation(line: 685, column: 30, scope: !1518)
!1557 = !DILocation(line: 687, column: 25, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !217, line: 687, column: 25)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !217, line: 687, column: 25)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !217, line: 686, column: 23)
!1561 = distinct !DILexicalBlock(scope: !1518, file: !217, line: 685, column: 30)
!1562 = !DILocation(line: 687, column: 25, scope: !1559)
!1563 = !DILocation(line: 689, column: 23, scope: !1560)
!1564 = !DILocation(line: 690, column: 35, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1519, file: !217, line: 690, column: 25)
!1566 = !DILocation(line: 690, column: 30, scope: !1565)
!1567 = !DILocation(line: 690, column: 25, scope: !1519)
!1568 = !DILocation(line: 692, column: 21, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !217, line: 692, column: 21)
!1570 = distinct !DILexicalBlock(scope: !1519, file: !217, line: 692, column: 21)
!1571 = !DILocation(line: 692, column: 21, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !217, line: 692, column: 21)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !217, line: 692, column: 21)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !217, line: 692, column: 21)
!1575 = !DILocation(line: 692, column: 21, scope: !1573)
!1576 = !DILocation(line: 692, column: 21, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !217, line: 692, column: 21)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !217, line: 692, column: 21)
!1579 = !DILocation(line: 692, column: 21, scope: !1578)
!1580 = !DILocation(line: 692, column: 21, scope: !1574)
!1581 = !DILocation(line: 0, scope: !1519)
!1582 = !DILocation(line: 693, column: 21, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !217, line: 693, column: 21)
!1584 = distinct !DILexicalBlock(scope: !1519, file: !217, line: 693, column: 21)
!1585 = !DILocation(line: 693, column: 21, scope: !1584)
!1586 = !DILocation(line: 694, column: 25, scope: !1519)
!1587 = !DILocation(line: 676, column: 17, scope: !1520)
!1588 = distinct !{!1588, !1589, !1590}
!1589 = !DILocation(line: 676, column: 17, scope: !1521)
!1590 = !DILocation(line: 695, column: 19, scope: !1521)
!1591 = !DILocation(line: 409, column: 30, scope: !1301)
!1592 = !DILocation(line: 702, column: 34, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1167, file: !217, line: 702, column: 11)
!1594 = !DILocation(line: 704, column: 14, scope: !1593)
!1595 = !DILocation(line: 705, column: 14, scope: !1593)
!1596 = !DILocation(line: 705, column: 35, scope: !1593)
!1597 = !DILocation(line: 705, column: 17, scope: !1593)
!1598 = !DILocation(line: 705, column: 47, scope: !1593)
!1599 = !DILocation(line: 705, column: 65, scope: !1593)
!1600 = !DILocation(line: 706, column: 11, scope: !1593)
!1601 = !DILocation(line: 702, column: 11, scope: !1167)
!1602 = !DILocation(line: 395, column: 15, scope: !1165)
!1603 = !DILocation(line: 709, column: 5, scope: !1167)
!1604 = !DILocation(line: 710, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1167, file: !217, line: 710, column: 7)
!1606 = !DILocation(line: 710, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1605, file: !217, line: 710, column: 7)
!1608 = !DILocation(line: 710, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !217, line: 710, column: 7)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !217, line: 710, column: 7)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !217, line: 710, column: 7)
!1612 = !DILocation(line: 710, column: 7, scope: !1610)
!1613 = !DILocation(line: 710, column: 7, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !217, line: 710, column: 7)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !217, line: 710, column: 7)
!1616 = !DILocation(line: 710, column: 7, scope: !1615)
!1617 = !DILocation(line: 710, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !217, line: 710, column: 7)
!1619 = distinct !DILexicalBlock(scope: !1611, file: !217, line: 710, column: 7)
!1620 = !DILocation(line: 710, column: 7, scope: !1619)
!1621 = !DILocation(line: 710, column: 7, scope: !1611)
!1622 = !DILocation(line: 710, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !217, line: 710, column: 7)
!1624 = distinct !DILexicalBlock(scope: !1605, file: !217, line: 710, column: 7)
!1625 = !DILocation(line: 710, column: 7, scope: !1624)
!1626 = !DILocation(line: 712, column: 5, scope: !1167)
!1627 = !DILocation(line: 713, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !217, line: 713, column: 7)
!1629 = distinct !DILexicalBlock(scope: !1167, file: !217, line: 713, column: 7)
!1630 = !DILocation(line: 417, column: 21, scope: !1167)
!1631 = !DILocation(line: 713, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !217, line: 713, column: 7)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !217, line: 713, column: 7)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !217, line: 713, column: 7)
!1635 = !DILocation(line: 713, column: 7, scope: !1633)
!1636 = !DILocation(line: 713, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !217, line: 713, column: 7)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !217, line: 713, column: 7)
!1639 = !DILocation(line: 713, column: 7, scope: !1638)
!1640 = !DILocation(line: 713, column: 7, scope: !1634)
!1641 = !DILocation(line: 714, column: 7, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !217, line: 714, column: 7)
!1643 = distinct !DILexicalBlock(scope: !1167, file: !217, line: 714, column: 7)
!1644 = !DILocation(line: 714, column: 7, scope: !1643)
!1645 = !DILocation(line: 716, column: 11, scope: !1167)
!1646 = !DILocation(line: 718, column: 5, scope: !1168)
!1647 = !DILocation(line: 395, column: 82, scope: !1168)
!1648 = !DILocation(line: 395, column: 3, scope: !1168)
!1649 = distinct !{!1649, !1297, !1650, !479}
!1650 = !DILocation(line: 718, column: 5, scope: !1165)
!1651 = !DILocation(line: 720, column: 11, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1134, file: !217, line: 720, column: 7)
!1653 = !DILocation(line: 720, column: 16, scope: !1652)
!1654 = !DILocation(line: 728, column: 51, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1134, file: !217, line: 728, column: 7)
!1656 = !DILocation(line: 731, column: 11, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1655, file: !217, line: 730, column: 5)
!1658 = !DILocation(line: 732, column: 16, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1657, file: !217, line: 731, column: 11)
!1660 = !DILocation(line: 732, column: 9, scope: !1659)
!1661 = !DILocation(line: 736, column: 18, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !217, line: 736, column: 16)
!1663 = !DILocation(line: 736, column: 29, scope: !1662)
!1664 = !DILocation(line: 745, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1134, file: !217, line: 745, column: 7)
!1666 = !DILocation(line: 745, column: 20, scope: !1665)
!1667 = !DILocation(line: 746, column: 12, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !217, line: 746, column: 5)
!1669 = distinct !DILexicalBlock(scope: !1665, file: !217, line: 746, column: 5)
!1670 = !DILocation(line: 746, column: 5, scope: !1669)
!1671 = !DILocation(line: 747, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !217, line: 747, column: 7)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !217, line: 747, column: 7)
!1674 = !DILocation(line: 747, column: 7, scope: !1673)
!1675 = !DILocation(line: 746, column: 39, scope: !1668)
!1676 = distinct !{!1676, !1670, !1677, !479}
!1677 = !DILocation(line: 747, column: 7, scope: !1669)
!1678 = !DILocation(line: 749, column: 11, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1134, file: !217, line: 749, column: 7)
!1680 = !DILocation(line: 749, column: 7, scope: !1134)
!1681 = !DILocation(line: 750, column: 5, scope: !1679)
!1682 = !DILocation(line: 750, column: 17, scope: !1679)
!1683 = !DILocation(line: 756, column: 21, scope: !1510)
!1684 = !DILocation(line: 760, column: 42, scope: !1134)
!1685 = !DILocation(line: 758, column: 10, scope: !1134)
!1686 = !DILocation(line: 758, column: 3, scope: !1134)
!1687 = !DILocation(line: 762, column: 1, scope: !1134)
!1688 = !DISubprogram(name: "iswprint", scope: !1689, file: !1689, line: 120, type: !1498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!1689 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1690 = distinct !DISubprogram(name: "quotearg_alloc", scope: !217, file: !217, line: 788, type: !1691, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1693)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!29, !6, !33, !1026}
!1693 = !{!1694, !1695, !1696}
!1694 = !DILocalVariable(name: "arg", arg: 1, scope: !1690, file: !217, line: 788, type: !6)
!1695 = !DILocalVariable(name: "argsize", arg: 2, scope: !1690, file: !217, line: 788, type: !33)
!1696 = !DILocalVariable(name: "o", arg: 3, scope: !1690, file: !217, line: 789, type: !1026)
!1697 = !DILocation(line: 0, scope: !1690)
!1698 = !DILocalVariable(name: "arg", arg: 1, scope: !1699, file: !217, line: 801, type: !6)
!1699 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !217, file: !217, line: 801, type: !1700, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!29, !6, !33, !349, !1026}
!1702 = !{!1698, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710}
!1703 = !DILocalVariable(name: "argsize", arg: 2, scope: !1699, file: !217, line: 801, type: !33)
!1704 = !DILocalVariable(name: "size", arg: 3, scope: !1699, file: !217, line: 801, type: !349)
!1705 = !DILocalVariable(name: "o", arg: 4, scope: !1699, file: !217, line: 802, type: !1026)
!1706 = !DILocalVariable(name: "p", scope: !1699, file: !217, line: 804, type: !1026)
!1707 = !DILocalVariable(name: "saved_errno", scope: !1699, file: !217, line: 805, type: !31)
!1708 = !DILocalVariable(name: "flags", scope: !1699, file: !217, line: 807, type: !31)
!1709 = !DILocalVariable(name: "bufsize", scope: !1699, file: !217, line: 808, type: !33)
!1710 = !DILocalVariable(name: "buf", scope: !1699, file: !217, line: 812, type: !29)
!1711 = !DILocation(line: 0, scope: !1699, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 791, column: 10, scope: !1690)
!1713 = !DILocation(line: 804, column: 37, scope: !1699, inlinedAt: !1712)
!1714 = !DILocation(line: 805, column: 21, scope: !1699, inlinedAt: !1712)
!1715 = !DILocation(line: 807, column: 18, scope: !1699, inlinedAt: !1712)
!1716 = !DILocation(line: 807, column: 24, scope: !1699, inlinedAt: !1712)
!1717 = !DILocation(line: 808, column: 72, scope: !1699, inlinedAt: !1712)
!1718 = !DILocation(line: 809, column: 53, scope: !1699, inlinedAt: !1712)
!1719 = !DILocation(line: 810, column: 49, scope: !1699, inlinedAt: !1712)
!1720 = !DILocation(line: 811, column: 49, scope: !1699, inlinedAt: !1712)
!1721 = !DILocation(line: 808, column: 20, scope: !1699, inlinedAt: !1712)
!1722 = !DILocation(line: 811, column: 62, scope: !1699, inlinedAt: !1712)
!1723 = !DILocation(line: 812, column: 15, scope: !1699, inlinedAt: !1712)
!1724 = !DILocation(line: 813, column: 60, scope: !1699, inlinedAt: !1712)
!1725 = !DILocation(line: 815, column: 32, scope: !1699, inlinedAt: !1712)
!1726 = !DILocation(line: 815, column: 47, scope: !1699, inlinedAt: !1712)
!1727 = !DILocation(line: 813, column: 3, scope: !1699, inlinedAt: !1712)
!1728 = !DILocation(line: 816, column: 9, scope: !1699, inlinedAt: !1712)
!1729 = !DILocation(line: 791, column: 3, scope: !1690)
!1730 = !DILocation(line: 0, scope: !1699)
!1731 = !DILocation(line: 804, column: 37, scope: !1699)
!1732 = !DILocation(line: 805, column: 21, scope: !1699)
!1733 = !DILocation(line: 807, column: 18, scope: !1699)
!1734 = !DILocation(line: 807, column: 27, scope: !1699)
!1735 = !DILocation(line: 807, column: 24, scope: !1699)
!1736 = !DILocation(line: 808, column: 72, scope: !1699)
!1737 = !DILocation(line: 809, column: 53, scope: !1699)
!1738 = !DILocation(line: 810, column: 49, scope: !1699)
!1739 = !DILocation(line: 811, column: 49, scope: !1699)
!1740 = !DILocation(line: 808, column: 20, scope: !1699)
!1741 = !DILocation(line: 811, column: 62, scope: !1699)
!1742 = !DILocation(line: 812, column: 15, scope: !1699)
!1743 = !DILocation(line: 813, column: 60, scope: !1699)
!1744 = !DILocation(line: 815, column: 32, scope: !1699)
!1745 = !DILocation(line: 815, column: 47, scope: !1699)
!1746 = !DILocation(line: 813, column: 3, scope: !1699)
!1747 = !DILocation(line: 816, column: 9, scope: !1699)
!1748 = !DILocation(line: 817, column: 7, scope: !1699)
!1749 = !DILocation(line: 818, column: 11, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1699, file: !217, line: 817, column: 7)
!1751 = !{!848, !848, i64 0}
!1752 = !DILocation(line: 818, column: 5, scope: !1750)
!1753 = !DILocation(line: 819, column: 3, scope: !1699)
!1754 = distinct !DISubprogram(name: "quotearg_free", scope: !217, file: !217, line: 837, type: !170, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1755)
!1755 = !{!1756, !1757}
!1756 = !DILocalVariable(name: "sv", scope: !1754, file: !217, line: 839, type: !290)
!1757 = !DILocalVariable(name: "i", scope: !1758, file: !217, line: 840, type: !31)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !217, line: 840, column: 3)
!1759 = !DILocation(line: 839, column: 24, scope: !1754)
!1760 = !DILocation(line: 0, scope: !1754)
!1761 = !DILocation(line: 0, scope: !1758)
!1762 = !DILocation(line: 840, column: 21, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !217, line: 840, column: 3)
!1764 = !DILocation(line: 840, column: 3, scope: !1758)
!1765 = !DILocation(line: 842, column: 13, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1754, file: !217, line: 842, column: 7)
!1767 = !{!1768, !416, i64 8}
!1768 = !{!"slotvec", !848, i64 0, !416, i64 8}
!1769 = !DILocation(line: 842, column: 17, scope: !1766)
!1770 = !DILocation(line: 842, column: 7, scope: !1754)
!1771 = !DILocation(line: 841, column: 17, scope: !1763)
!1772 = !DILocation(line: 841, column: 5, scope: !1763)
!1773 = !DILocation(line: 840, column: 32, scope: !1763)
!1774 = distinct !{!1774, !1764, !1775, !479}
!1775 = !DILocation(line: 841, column: 20, scope: !1758)
!1776 = !DILocation(line: 844, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1766, file: !217, line: 843, column: 5)
!1778 = !DILocation(line: 845, column: 21, scope: !1777)
!1779 = !{!1768, !848, i64 0}
!1780 = !DILocation(line: 846, column: 20, scope: !1777)
!1781 = !DILocation(line: 847, column: 5, scope: !1777)
!1782 = !DILocation(line: 848, column: 10, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1754, file: !217, line: 848, column: 7)
!1784 = !DILocation(line: 848, column: 7, scope: !1754)
!1785 = !DILocation(line: 850, column: 13, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !217, line: 849, column: 5)
!1787 = !DILocation(line: 850, column: 7, scope: !1786)
!1788 = !DILocation(line: 851, column: 15, scope: !1786)
!1789 = !DILocation(line: 852, column: 5, scope: !1786)
!1790 = !DILocation(line: 853, column: 10, scope: !1754)
!1791 = !DILocation(line: 854, column: 1, scope: !1754)
!1792 = distinct !DISubprogram(name: "quotearg_n", scope: !217, file: !217, line: 919, type: !603, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1793)
!1793 = !{!1794, !1795}
!1794 = !DILocalVariable(name: "n", arg: 1, scope: !1792, file: !217, line: 919, type: !31)
!1795 = !DILocalVariable(name: "arg", arg: 2, scope: !1792, file: !217, line: 919, type: !6)
!1796 = !DILocation(line: 0, scope: !1792)
!1797 = !DILocation(line: 921, column: 10, scope: !1792)
!1798 = !DILocation(line: 921, column: 3, scope: !1792)
!1799 = distinct !DISubprogram(name: "quotearg_n_options", scope: !217, file: !217, line: 866, type: !1800, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1802)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!29, !31, !6, !33, !1026}
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1813, !1814, !1816, !1817, !1818}
!1803 = !DILocalVariable(name: "n", arg: 1, scope: !1799, file: !217, line: 866, type: !31)
!1804 = !DILocalVariable(name: "arg", arg: 2, scope: !1799, file: !217, line: 866, type: !6)
!1805 = !DILocalVariable(name: "argsize", arg: 3, scope: !1799, file: !217, line: 866, type: !33)
!1806 = !DILocalVariable(name: "options", arg: 4, scope: !1799, file: !217, line: 867, type: !1026)
!1807 = !DILocalVariable(name: "saved_errno", scope: !1799, file: !217, line: 869, type: !31)
!1808 = !DILocalVariable(name: "sv", scope: !1799, file: !217, line: 871, type: !290)
!1809 = !DILocalVariable(name: "nslots_max", scope: !1799, file: !217, line: 873, type: !31)
!1810 = !DILocalVariable(name: "preallocated", scope: !1811, file: !217, line: 879, type: !45)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !217, line: 878, column: 5)
!1812 = distinct !DILexicalBlock(scope: !1799, file: !217, line: 877, column: 7)
!1813 = !DILocalVariable(name: "new_nslots", scope: !1811, file: !217, line: 880, type: !362)
!1814 = !DILocalVariable(name: "size", scope: !1815, file: !217, line: 891, type: !33)
!1815 = distinct !DILexicalBlock(scope: !1799, file: !217, line: 890, column: 3)
!1816 = !DILocalVariable(name: "val", scope: !1815, file: !217, line: 892, type: !29)
!1817 = !DILocalVariable(name: "flags", scope: !1815, file: !217, line: 894, type: !31)
!1818 = !DILocalVariable(name: "qsize", scope: !1815, file: !217, line: 895, type: !33)
!1819 = !DILocation(line: 0, scope: !1799)
!1820 = !DILocation(line: 869, column: 21, scope: !1799)
!1821 = !DILocation(line: 871, column: 24, scope: !1799)
!1822 = !DILocation(line: 874, column: 17, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1799, file: !217, line: 874, column: 7)
!1824 = !DILocation(line: 875, column: 5, scope: !1823)
!1825 = !DILocation(line: 877, column: 7, scope: !1812)
!1826 = !DILocation(line: 877, column: 14, scope: !1812)
!1827 = !DILocation(line: 877, column: 7, scope: !1799)
!1828 = !DILocation(line: 879, column: 31, scope: !1811)
!1829 = !DILocation(line: 0, scope: !1811)
!1830 = !DILocation(line: 880, column: 7, scope: !1811)
!1831 = !DILocation(line: 880, column: 26, scope: !1811)
!1832 = !DILocation(line: 880, column: 13, scope: !1811)
!1833 = !DILocation(line: 882, column: 31, scope: !1811)
!1834 = !DILocation(line: 883, column: 33, scope: !1811)
!1835 = !DILocation(line: 883, column: 42, scope: !1811)
!1836 = !DILocation(line: 883, column: 31, scope: !1811)
!1837 = !DILocation(line: 882, column: 22, scope: !1811)
!1838 = !DILocation(line: 882, column: 15, scope: !1811)
!1839 = !DILocation(line: 884, column: 11, scope: !1811)
!1840 = !DILocation(line: 885, column: 15, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1811, file: !217, line: 884, column: 11)
!1842 = !{i64 0, i64 8, !1751, i64 8, i64 8, !415}
!1843 = !DILocation(line: 885, column: 9, scope: !1841)
!1844 = !DILocation(line: 886, column: 20, scope: !1811)
!1845 = !DILocation(line: 886, column: 18, scope: !1811)
!1846 = !DILocation(line: 886, column: 15, scope: !1811)
!1847 = !DILocation(line: 886, column: 32, scope: !1811)
!1848 = !DILocation(line: 886, column: 43, scope: !1811)
!1849 = !DILocation(line: 886, column: 53, scope: !1811)
!1850 = !DILocation(line: 0, scope: !1237, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 886, column: 7, scope: !1811)
!1852 = !DILocation(line: 59, column: 10, scope: !1237, inlinedAt: !1851)
!1853 = !DILocation(line: 887, column: 16, scope: !1811)
!1854 = !DILocation(line: 887, column: 14, scope: !1811)
!1855 = !DILocation(line: 888, column: 5, scope: !1812)
!1856 = !DILocation(line: 888, column: 5, scope: !1811)
!1857 = !DILocation(line: 891, column: 19, scope: !1815)
!1858 = !DILocation(line: 891, column: 25, scope: !1815)
!1859 = !DILocation(line: 0, scope: !1815)
!1860 = !DILocation(line: 892, column: 23, scope: !1815)
!1861 = !DILocation(line: 894, column: 26, scope: !1815)
!1862 = !DILocation(line: 894, column: 32, scope: !1815)
!1863 = !DILocation(line: 896, column: 55, scope: !1815)
!1864 = !DILocation(line: 897, column: 46, scope: !1815)
!1865 = !DILocation(line: 898, column: 55, scope: !1815)
!1866 = !DILocation(line: 899, column: 55, scope: !1815)
!1867 = !DILocation(line: 895, column: 20, scope: !1815)
!1868 = !DILocation(line: 901, column: 14, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1815, file: !217, line: 901, column: 9)
!1870 = !DILocation(line: 901, column: 9, scope: !1815)
!1871 = !DILocation(line: 903, column: 35, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !217, line: 902, column: 7)
!1873 = !DILocation(line: 903, column: 20, scope: !1872)
!1874 = !DILocation(line: 904, column: 17, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1872, file: !217, line: 904, column: 13)
!1876 = !DILocation(line: 904, column: 13, scope: !1872)
!1877 = !DILocation(line: 905, column: 11, scope: !1875)
!1878 = !DILocation(line: 906, column: 27, scope: !1872)
!1879 = !DILocation(line: 906, column: 19, scope: !1872)
!1880 = !DILocation(line: 907, column: 69, scope: !1872)
!1881 = !DILocation(line: 909, column: 44, scope: !1872)
!1882 = !DILocation(line: 910, column: 44, scope: !1872)
!1883 = !DILocation(line: 907, column: 9, scope: !1872)
!1884 = !DILocation(line: 911, column: 7, scope: !1872)
!1885 = !DILocation(line: 913, column: 11, scope: !1815)
!1886 = !DILocation(line: 914, column: 5, scope: !1815)
!1887 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !217, file: !217, line: 925, type: !1888, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1890)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!29, !31, !6, !33}
!1890 = !{!1891, !1892, !1893}
!1891 = !DILocalVariable(name: "n", arg: 1, scope: !1887, file: !217, line: 925, type: !31)
!1892 = !DILocalVariable(name: "arg", arg: 2, scope: !1887, file: !217, line: 925, type: !6)
!1893 = !DILocalVariable(name: "argsize", arg: 3, scope: !1887, file: !217, line: 925, type: !33)
!1894 = !DILocation(line: 0, scope: !1887)
!1895 = !DILocation(line: 927, column: 10, scope: !1887)
!1896 = !DILocation(line: 927, column: 3, scope: !1887)
!1897 = distinct !DISubprogram(name: "quotearg", scope: !217, file: !217, line: 931, type: !612, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1898)
!1898 = !{!1899}
!1899 = !DILocalVariable(name: "arg", arg: 1, scope: !1897, file: !217, line: 931, type: !6)
!1900 = !DILocation(line: 0, scope: !1897)
!1901 = !DILocation(line: 0, scope: !1792, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 933, column: 10, scope: !1897)
!1903 = !DILocation(line: 921, column: 10, scope: !1792, inlinedAt: !1902)
!1904 = !DILocation(line: 933, column: 3, scope: !1897)
!1905 = distinct !DISubprogram(name: "quotearg_mem", scope: !217, file: !217, line: 937, type: !1906, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1908)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!29, !6, !33}
!1908 = !{!1909, !1910}
!1909 = !DILocalVariable(name: "arg", arg: 1, scope: !1905, file: !217, line: 937, type: !6)
!1910 = !DILocalVariable(name: "argsize", arg: 2, scope: !1905, file: !217, line: 937, type: !33)
!1911 = !DILocation(line: 0, scope: !1905)
!1912 = !DILocation(line: 0, scope: !1887, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 939, column: 10, scope: !1905)
!1914 = !DILocation(line: 927, column: 10, scope: !1887, inlinedAt: !1913)
!1915 = !DILocation(line: 939, column: 3, scope: !1905)
!1916 = distinct !DISubprogram(name: "quotearg_n_style", scope: !217, file: !217, line: 943, type: !1917, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!29, !31, !219, !6}
!1919 = !{!1920, !1921, !1922, !1923}
!1920 = !DILocalVariable(name: "n", arg: 1, scope: !1916, file: !217, line: 943, type: !31)
!1921 = !DILocalVariable(name: "s", arg: 2, scope: !1916, file: !217, line: 943, type: !219)
!1922 = !DILocalVariable(name: "arg", arg: 3, scope: !1916, file: !217, line: 943, type: !6)
!1923 = !DILocalVariable(name: "o", scope: !1916, file: !217, line: 945, type: !1027)
!1924 = !DILocation(line: 0, scope: !1916)
!1925 = !DILocation(line: 945, column: 3, scope: !1916)
!1926 = !DILocation(line: 945, column: 32, scope: !1916)
!1927 = !{!1928}
!1928 = distinct !{!1928, !1929, !"quoting_options_from_style: argument 0"}
!1929 = distinct !{!1929, !"quoting_options_from_style"}
!1930 = !DILocation(line: 945, column: 36, scope: !1916)
!1931 = !DILocalVariable(name: "style", arg: 1, scope: !1932, file: !217, line: 183, type: !219)
!1932 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !217, file: !217, line: 183, type: !1933, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!248, !219}
!1935 = !{!1931, !1936}
!1936 = !DILocalVariable(name: "o", scope: !1932, file: !217, line: 185, type: !248)
!1937 = !DILocation(line: 0, scope: !1932, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 945, column: 36, scope: !1916)
!1939 = !DILocation(line: 185, column: 26, scope: !1932, inlinedAt: !1938)
!1940 = !DILocation(line: 186, column: 13, scope: !1941, inlinedAt: !1938)
!1941 = distinct !DILexicalBlock(scope: !1932, file: !217, line: 186, column: 7)
!1942 = !DILocation(line: 186, column: 7, scope: !1932, inlinedAt: !1938)
!1943 = !DILocation(line: 187, column: 5, scope: !1941, inlinedAt: !1938)
!1944 = !DILocation(line: 188, column: 5, scope: !1932, inlinedAt: !1938)
!1945 = !DILocation(line: 188, column: 11, scope: !1932, inlinedAt: !1938)
!1946 = !DILocation(line: 946, column: 10, scope: !1916)
!1947 = !DILocation(line: 947, column: 1, scope: !1916)
!1948 = !DILocation(line: 946, column: 3, scope: !1916)
!1949 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !217, file: !217, line: 950, type: !1950, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!29, !31, !219, !6, !33}
!1952 = !{!1953, !1954, !1955, !1956, !1957}
!1953 = !DILocalVariable(name: "n", arg: 1, scope: !1949, file: !217, line: 950, type: !31)
!1954 = !DILocalVariable(name: "s", arg: 2, scope: !1949, file: !217, line: 950, type: !219)
!1955 = !DILocalVariable(name: "arg", arg: 3, scope: !1949, file: !217, line: 951, type: !6)
!1956 = !DILocalVariable(name: "argsize", arg: 4, scope: !1949, file: !217, line: 951, type: !33)
!1957 = !DILocalVariable(name: "o", scope: !1949, file: !217, line: 953, type: !1027)
!1958 = !DILocation(line: 0, scope: !1949)
!1959 = !DILocation(line: 953, column: 3, scope: !1949)
!1960 = !DILocation(line: 953, column: 32, scope: !1949)
!1961 = !{!1962}
!1962 = distinct !{!1962, !1963, !"quoting_options_from_style: argument 0"}
!1963 = distinct !{!1963, !"quoting_options_from_style"}
!1964 = !DILocation(line: 953, column: 36, scope: !1949)
!1965 = !DILocation(line: 0, scope: !1932, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 953, column: 36, scope: !1949)
!1967 = !DILocation(line: 185, column: 26, scope: !1932, inlinedAt: !1966)
!1968 = !DILocation(line: 186, column: 13, scope: !1941, inlinedAt: !1966)
!1969 = !DILocation(line: 186, column: 7, scope: !1932, inlinedAt: !1966)
!1970 = !DILocation(line: 187, column: 5, scope: !1941, inlinedAt: !1966)
!1971 = !DILocation(line: 188, column: 5, scope: !1932, inlinedAt: !1966)
!1972 = !DILocation(line: 188, column: 11, scope: !1932, inlinedAt: !1966)
!1973 = !DILocation(line: 954, column: 10, scope: !1949)
!1974 = !DILocation(line: 955, column: 1, scope: !1949)
!1975 = !DILocation(line: 954, column: 3, scope: !1949)
!1976 = distinct !DISubprogram(name: "quotearg_style", scope: !217, file: !217, line: 958, type: !1977, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1979)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!29, !219, !6}
!1979 = !{!1980, !1981}
!1980 = !DILocalVariable(name: "s", arg: 1, scope: !1976, file: !217, line: 958, type: !219)
!1981 = !DILocalVariable(name: "arg", arg: 2, scope: !1976, file: !217, line: 958, type: !6)
!1982 = !DILocation(line: 0, scope: !1976)
!1983 = !DILocation(line: 0, scope: !1916, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 960, column: 10, scope: !1976)
!1985 = !DILocation(line: 945, column: 3, scope: !1916, inlinedAt: !1984)
!1986 = !DILocation(line: 945, column: 32, scope: !1916, inlinedAt: !1984)
!1987 = !{!1988}
!1988 = distinct !{!1988, !1989, !"quoting_options_from_style: argument 0"}
!1989 = distinct !{!1989, !"quoting_options_from_style"}
!1990 = !DILocation(line: 945, column: 36, scope: !1916, inlinedAt: !1984)
!1991 = !DILocation(line: 0, scope: !1932, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 945, column: 36, scope: !1916, inlinedAt: !1984)
!1993 = !DILocation(line: 185, column: 26, scope: !1932, inlinedAt: !1992)
!1994 = !DILocation(line: 186, column: 13, scope: !1941, inlinedAt: !1992)
!1995 = !DILocation(line: 186, column: 7, scope: !1932, inlinedAt: !1992)
!1996 = !DILocation(line: 187, column: 5, scope: !1941, inlinedAt: !1992)
!1997 = !DILocation(line: 188, column: 5, scope: !1932, inlinedAt: !1992)
!1998 = !DILocation(line: 188, column: 11, scope: !1932, inlinedAt: !1992)
!1999 = !DILocation(line: 946, column: 10, scope: !1916, inlinedAt: !1984)
!2000 = !DILocation(line: 947, column: 1, scope: !1916, inlinedAt: !1984)
!2001 = !DILocation(line: 960, column: 3, scope: !1976)
!2002 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !217, file: !217, line: 964, type: !2003, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!29, !219, !6, !33}
!2005 = !{!2006, !2007, !2008}
!2006 = !DILocalVariable(name: "s", arg: 1, scope: !2002, file: !217, line: 964, type: !219)
!2007 = !DILocalVariable(name: "arg", arg: 2, scope: !2002, file: !217, line: 964, type: !6)
!2008 = !DILocalVariable(name: "argsize", arg: 3, scope: !2002, file: !217, line: 964, type: !33)
!2009 = !DILocation(line: 0, scope: !2002)
!2010 = !DILocation(line: 0, scope: !1949, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 966, column: 10, scope: !2002)
!2012 = !DILocation(line: 953, column: 3, scope: !1949, inlinedAt: !2011)
!2013 = !DILocation(line: 953, column: 32, scope: !1949, inlinedAt: !2011)
!2014 = !{!2015}
!2015 = distinct !{!2015, !2016, !"quoting_options_from_style: argument 0"}
!2016 = distinct !{!2016, !"quoting_options_from_style"}
!2017 = !DILocation(line: 953, column: 36, scope: !1949, inlinedAt: !2011)
!2018 = !DILocation(line: 0, scope: !1932, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 953, column: 36, scope: !1949, inlinedAt: !2011)
!2020 = !DILocation(line: 185, column: 26, scope: !1932, inlinedAt: !2019)
!2021 = !DILocation(line: 186, column: 13, scope: !1941, inlinedAt: !2019)
!2022 = !DILocation(line: 186, column: 7, scope: !1932, inlinedAt: !2019)
!2023 = !DILocation(line: 187, column: 5, scope: !1941, inlinedAt: !2019)
!2024 = !DILocation(line: 188, column: 5, scope: !1932, inlinedAt: !2019)
!2025 = !DILocation(line: 188, column: 11, scope: !1932, inlinedAt: !2019)
!2026 = !DILocation(line: 954, column: 10, scope: !1949, inlinedAt: !2011)
!2027 = !DILocation(line: 955, column: 1, scope: !1949, inlinedAt: !2011)
!2028 = !DILocation(line: 966, column: 3, scope: !2002)
!2029 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !217, file: !217, line: 970, type: !2030, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!29, !6, !33, !8}
!2032 = !{!2033, !2034, !2035, !2036}
!2033 = !DILocalVariable(name: "arg", arg: 1, scope: !2029, file: !217, line: 970, type: !6)
!2034 = !DILocalVariable(name: "argsize", arg: 2, scope: !2029, file: !217, line: 970, type: !33)
!2035 = !DILocalVariable(name: "ch", arg: 3, scope: !2029, file: !217, line: 970, type: !8)
!2036 = !DILocalVariable(name: "options", scope: !2029, file: !217, line: 972, type: !248)
!2037 = !DILocation(line: 0, scope: !2029)
!2038 = !DILocation(line: 972, column: 3, scope: !2029)
!2039 = !DILocation(line: 972, column: 26, scope: !2029)
!2040 = !DILocation(line: 973, column: 13, scope: !2029)
!2041 = !{i64 0, i64 4, !441, i64 4, i64 4, !432, i64 8, i64 32, !441, i64 40, i64 8, !415, i64 48, i64 8, !415}
!2042 = !DILocation(line: 0, scope: !1047, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 974, column: 3, scope: !2029)
!2044 = !DILocation(line: 147, column: 62, scope: !1047, inlinedAt: !2043)
!2045 = !DILocation(line: 147, column: 57, scope: !1047, inlinedAt: !2043)
!2046 = !DILocation(line: 148, column: 15, scope: !1047, inlinedAt: !2043)
!2047 = !DILocation(line: 149, column: 21, scope: !1047, inlinedAt: !2043)
!2048 = !DILocation(line: 149, column: 24, scope: !1047, inlinedAt: !2043)
!2049 = !DILocation(line: 149, column: 34, scope: !1047, inlinedAt: !2043)
!2050 = !DILocation(line: 150, column: 19, scope: !1047, inlinedAt: !2043)
!2051 = !DILocation(line: 150, column: 24, scope: !1047, inlinedAt: !2043)
!2052 = !DILocation(line: 150, column: 6, scope: !1047, inlinedAt: !2043)
!2053 = !DILocation(line: 975, column: 10, scope: !2029)
!2054 = !DILocation(line: 976, column: 1, scope: !2029)
!2055 = !DILocation(line: 975, column: 3, scope: !2029)
!2056 = distinct !DISubprogram(name: "quotearg_char", scope: !217, file: !217, line: 979, type: !2057, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!29, !6, !8}
!2059 = !{!2060, !2061}
!2060 = !DILocalVariable(name: "arg", arg: 1, scope: !2056, file: !217, line: 979, type: !6)
!2061 = !DILocalVariable(name: "ch", arg: 2, scope: !2056, file: !217, line: 979, type: !8)
!2062 = !DILocation(line: 0, scope: !2056)
!2063 = !DILocation(line: 0, scope: !2029, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 981, column: 10, scope: !2056)
!2065 = !DILocation(line: 972, column: 3, scope: !2029, inlinedAt: !2064)
!2066 = !DILocation(line: 972, column: 26, scope: !2029, inlinedAt: !2064)
!2067 = !DILocation(line: 973, column: 13, scope: !2029, inlinedAt: !2064)
!2068 = !DILocation(line: 0, scope: !1047, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 974, column: 3, scope: !2029, inlinedAt: !2064)
!2070 = !DILocation(line: 147, column: 62, scope: !1047, inlinedAt: !2069)
!2071 = !DILocation(line: 147, column: 57, scope: !1047, inlinedAt: !2069)
!2072 = !DILocation(line: 148, column: 15, scope: !1047, inlinedAt: !2069)
!2073 = !DILocation(line: 149, column: 21, scope: !1047, inlinedAt: !2069)
!2074 = !DILocation(line: 149, column: 24, scope: !1047, inlinedAt: !2069)
!2075 = !DILocation(line: 149, column: 34, scope: !1047, inlinedAt: !2069)
!2076 = !DILocation(line: 150, column: 19, scope: !1047, inlinedAt: !2069)
!2077 = !DILocation(line: 150, column: 24, scope: !1047, inlinedAt: !2069)
!2078 = !DILocation(line: 150, column: 6, scope: !1047, inlinedAt: !2069)
!2079 = !DILocation(line: 975, column: 10, scope: !2029, inlinedAt: !2064)
!2080 = !DILocation(line: 976, column: 1, scope: !2029, inlinedAt: !2064)
!2081 = !DILocation(line: 981, column: 3, scope: !2056)
!2082 = distinct !DISubprogram(name: "quotearg_colon", scope: !217, file: !217, line: 985, type: !612, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2083)
!2083 = !{!2084}
!2084 = !DILocalVariable(name: "arg", arg: 1, scope: !2082, file: !217, line: 985, type: !6)
!2085 = !DILocation(line: 0, scope: !2082)
!2086 = !DILocation(line: 0, scope: !2056, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 987, column: 10, scope: !2082)
!2088 = !DILocation(line: 0, scope: !2029, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 981, column: 10, scope: !2056, inlinedAt: !2087)
!2090 = !DILocation(line: 972, column: 3, scope: !2029, inlinedAt: !2089)
!2091 = !DILocation(line: 972, column: 26, scope: !2029, inlinedAt: !2089)
!2092 = !DILocation(line: 973, column: 13, scope: !2029, inlinedAt: !2089)
!2093 = !DILocation(line: 0, scope: !1047, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 974, column: 3, scope: !2029, inlinedAt: !2089)
!2095 = !DILocation(line: 147, column: 57, scope: !1047, inlinedAt: !2094)
!2096 = !DILocation(line: 149, column: 21, scope: !1047, inlinedAt: !2094)
!2097 = !DILocation(line: 150, column: 6, scope: !1047, inlinedAt: !2094)
!2098 = !DILocation(line: 975, column: 10, scope: !2029, inlinedAt: !2089)
!2099 = !DILocation(line: 976, column: 1, scope: !2029, inlinedAt: !2089)
!2100 = !DILocation(line: 987, column: 3, scope: !2082)
!2101 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !217, file: !217, line: 991, type: !1906, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2102)
!2102 = !{!2103, !2104}
!2103 = !DILocalVariable(name: "arg", arg: 1, scope: !2101, file: !217, line: 991, type: !6)
!2104 = !DILocalVariable(name: "argsize", arg: 2, scope: !2101, file: !217, line: 991, type: !33)
!2105 = !DILocation(line: 0, scope: !2101)
!2106 = !DILocation(line: 0, scope: !2029, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 993, column: 10, scope: !2101)
!2108 = !DILocation(line: 972, column: 3, scope: !2029, inlinedAt: !2107)
!2109 = !DILocation(line: 972, column: 26, scope: !2029, inlinedAt: !2107)
!2110 = !DILocation(line: 973, column: 13, scope: !2029, inlinedAt: !2107)
!2111 = !DILocation(line: 0, scope: !1047, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 974, column: 3, scope: !2029, inlinedAt: !2107)
!2113 = !DILocation(line: 147, column: 57, scope: !1047, inlinedAt: !2112)
!2114 = !DILocation(line: 149, column: 21, scope: !1047, inlinedAt: !2112)
!2115 = !DILocation(line: 150, column: 6, scope: !1047, inlinedAt: !2112)
!2116 = !DILocation(line: 975, column: 10, scope: !2029, inlinedAt: !2107)
!2117 = !DILocation(line: 976, column: 1, scope: !2029, inlinedAt: !2107)
!2118 = !DILocation(line: 993, column: 3, scope: !2101)
!2119 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !217, file: !217, line: 997, type: !1917, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2120)
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DILocalVariable(name: "n", arg: 1, scope: !2119, file: !217, line: 997, type: !31)
!2122 = !DILocalVariable(name: "s", arg: 2, scope: !2119, file: !217, line: 997, type: !219)
!2123 = !DILocalVariable(name: "arg", arg: 3, scope: !2119, file: !217, line: 997, type: !6)
!2124 = !DILocalVariable(name: "options", scope: !2119, file: !217, line: 999, type: !248)
!2125 = !DILocation(line: 0, scope: !2119)
!2126 = !DILocation(line: 999, column: 3, scope: !2119)
!2127 = !DILocation(line: 999, column: 26, scope: !2119)
!2128 = !DILocation(line: 0, scope: !1932, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 1000, column: 13, scope: !2119)
!2130 = !DILocation(line: 186, column: 13, scope: !1941, inlinedAt: !2129)
!2131 = !DILocation(line: 186, column: 7, scope: !1932, inlinedAt: !2129)
!2132 = !DILocation(line: 187, column: 5, scope: !1941, inlinedAt: !2129)
!2133 = !{!2134}
!2134 = distinct !{!2134, !2135, !"quoting_options_from_style: argument 0"}
!2135 = distinct !{!2135, !"quoting_options_from_style"}
!2136 = !DILocation(line: 1000, column: 13, scope: !2119)
!2137 = !DILocation(line: 0, scope: !1047, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 1001, column: 3, scope: !2119)
!2139 = !DILocation(line: 147, column: 57, scope: !1047, inlinedAt: !2138)
!2140 = !DILocation(line: 149, column: 21, scope: !1047, inlinedAt: !2138)
!2141 = !DILocation(line: 150, column: 6, scope: !1047, inlinedAt: !2138)
!2142 = !DILocation(line: 1002, column: 10, scope: !2119)
!2143 = !DILocation(line: 1003, column: 1, scope: !2119)
!2144 = !DILocation(line: 1002, column: 3, scope: !2119)
!2145 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !217, file: !217, line: 1006, type: !2146, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2148)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!29, !31, !6, !6, !6}
!2148 = !{!2149, !2150, !2151, !2152}
!2149 = !DILocalVariable(name: "n", arg: 1, scope: !2145, file: !217, line: 1006, type: !31)
!2150 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2145, file: !217, line: 1006, type: !6)
!2151 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2145, file: !217, line: 1007, type: !6)
!2152 = !DILocalVariable(name: "arg", arg: 4, scope: !2145, file: !217, line: 1007, type: !6)
!2153 = !DILocation(line: 0, scope: !2145)
!2154 = !DILocalVariable(name: "n", arg: 1, scope: !2155, file: !217, line: 1014, type: !31)
!2155 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !217, file: !217, line: 1014, type: !2156, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!29, !31, !6, !6, !6, !33}
!2158 = !{!2154, !2159, !2160, !2161, !2162, !2163}
!2159 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2155, file: !217, line: 1014, type: !6)
!2160 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2155, file: !217, line: 1015, type: !6)
!2161 = !DILocalVariable(name: "arg", arg: 4, scope: !2155, file: !217, line: 1016, type: !6)
!2162 = !DILocalVariable(name: "argsize", arg: 5, scope: !2155, file: !217, line: 1016, type: !33)
!2163 = !DILocalVariable(name: "o", scope: !2155, file: !217, line: 1018, type: !248)
!2164 = !DILocation(line: 0, scope: !2155, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 1009, column: 10, scope: !2145)
!2166 = !DILocation(line: 1018, column: 3, scope: !2155, inlinedAt: !2165)
!2167 = !DILocation(line: 1018, column: 26, scope: !2155, inlinedAt: !2165)
!2168 = !DILocation(line: 1018, column: 30, scope: !2155, inlinedAt: !2165)
!2169 = !DILocation(line: 0, scope: !1087, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 1019, column: 3, scope: !2155, inlinedAt: !2165)
!2171 = !DILocation(line: 174, column: 6, scope: !1087, inlinedAt: !2170)
!2172 = !DILocation(line: 174, column: 12, scope: !1087, inlinedAt: !2170)
!2173 = !DILocation(line: 175, column: 8, scope: !1101, inlinedAt: !2170)
!2174 = !DILocation(line: 175, column: 19, scope: !1101, inlinedAt: !2170)
!2175 = !DILocation(line: 176, column: 5, scope: !1101, inlinedAt: !2170)
!2176 = !DILocation(line: 177, column: 6, scope: !1087, inlinedAt: !2170)
!2177 = !DILocation(line: 177, column: 17, scope: !1087, inlinedAt: !2170)
!2178 = !DILocation(line: 178, column: 6, scope: !1087, inlinedAt: !2170)
!2179 = !DILocation(line: 178, column: 18, scope: !1087, inlinedAt: !2170)
!2180 = !DILocation(line: 1020, column: 10, scope: !2155, inlinedAt: !2165)
!2181 = !DILocation(line: 1021, column: 1, scope: !2155, inlinedAt: !2165)
!2182 = !DILocation(line: 1009, column: 3, scope: !2145)
!2183 = !DILocation(line: 0, scope: !2155)
!2184 = !DILocation(line: 1018, column: 3, scope: !2155)
!2185 = !DILocation(line: 1018, column: 26, scope: !2155)
!2186 = !DILocation(line: 1018, column: 30, scope: !2155)
!2187 = !DILocation(line: 0, scope: !1087, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 1019, column: 3, scope: !2155)
!2189 = !DILocation(line: 174, column: 6, scope: !1087, inlinedAt: !2188)
!2190 = !DILocation(line: 174, column: 12, scope: !1087, inlinedAt: !2188)
!2191 = !DILocation(line: 175, column: 8, scope: !1101, inlinedAt: !2188)
!2192 = !DILocation(line: 175, column: 19, scope: !1101, inlinedAt: !2188)
!2193 = !DILocation(line: 176, column: 5, scope: !1101, inlinedAt: !2188)
!2194 = !DILocation(line: 177, column: 6, scope: !1087, inlinedAt: !2188)
!2195 = !DILocation(line: 177, column: 17, scope: !1087, inlinedAt: !2188)
!2196 = !DILocation(line: 178, column: 6, scope: !1087, inlinedAt: !2188)
!2197 = !DILocation(line: 178, column: 18, scope: !1087, inlinedAt: !2188)
!2198 = !DILocation(line: 1020, column: 10, scope: !2155)
!2199 = !DILocation(line: 1021, column: 1, scope: !2155)
!2200 = !DILocation(line: 1020, column: 3, scope: !2155)
!2201 = distinct !DISubprogram(name: "quotearg_custom", scope: !217, file: !217, line: 1024, type: !2202, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2204)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!29, !6, !6, !6}
!2204 = !{!2205, !2206, !2207}
!2205 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2201, file: !217, line: 1024, type: !6)
!2206 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2201, file: !217, line: 1024, type: !6)
!2207 = !DILocalVariable(name: "arg", arg: 3, scope: !2201, file: !217, line: 1025, type: !6)
!2208 = !DILocation(line: 0, scope: !2201)
!2209 = !DILocation(line: 0, scope: !2145, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 1027, column: 10, scope: !2201)
!2211 = !DILocation(line: 0, scope: !2155, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 1009, column: 10, scope: !2145, inlinedAt: !2210)
!2213 = !DILocation(line: 1018, column: 3, scope: !2155, inlinedAt: !2212)
!2214 = !DILocation(line: 1018, column: 26, scope: !2155, inlinedAt: !2212)
!2215 = !DILocation(line: 1018, column: 30, scope: !2155, inlinedAt: !2212)
!2216 = !DILocation(line: 0, scope: !1087, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 1019, column: 3, scope: !2155, inlinedAt: !2212)
!2218 = !DILocation(line: 174, column: 6, scope: !1087, inlinedAt: !2217)
!2219 = !DILocation(line: 174, column: 12, scope: !1087, inlinedAt: !2217)
!2220 = !DILocation(line: 175, column: 8, scope: !1101, inlinedAt: !2217)
!2221 = !DILocation(line: 175, column: 19, scope: !1101, inlinedAt: !2217)
!2222 = !DILocation(line: 176, column: 5, scope: !1101, inlinedAt: !2217)
!2223 = !DILocation(line: 177, column: 6, scope: !1087, inlinedAt: !2217)
!2224 = !DILocation(line: 177, column: 17, scope: !1087, inlinedAt: !2217)
!2225 = !DILocation(line: 178, column: 6, scope: !1087, inlinedAt: !2217)
!2226 = !DILocation(line: 178, column: 18, scope: !1087, inlinedAt: !2217)
!2227 = !DILocation(line: 1020, column: 10, scope: !2155, inlinedAt: !2212)
!2228 = !DILocation(line: 1021, column: 1, scope: !2155, inlinedAt: !2212)
!2229 = !DILocation(line: 1027, column: 3, scope: !2201)
!2230 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !217, file: !217, line: 1031, type: !2231, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!29, !6, !6, !6, !33}
!2233 = !{!2234, !2235, !2236, !2237}
!2234 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2230, file: !217, line: 1031, type: !6)
!2235 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2230, file: !217, line: 1031, type: !6)
!2236 = !DILocalVariable(name: "arg", arg: 3, scope: !2230, file: !217, line: 1032, type: !6)
!2237 = !DILocalVariable(name: "argsize", arg: 4, scope: !2230, file: !217, line: 1032, type: !33)
!2238 = !DILocation(line: 0, scope: !2230)
!2239 = !DILocation(line: 0, scope: !2155, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 1034, column: 10, scope: !2230)
!2241 = !DILocation(line: 1018, column: 3, scope: !2155, inlinedAt: !2240)
!2242 = !DILocation(line: 1018, column: 26, scope: !2155, inlinedAt: !2240)
!2243 = !DILocation(line: 1018, column: 30, scope: !2155, inlinedAt: !2240)
!2244 = !DILocation(line: 0, scope: !1087, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 1019, column: 3, scope: !2155, inlinedAt: !2240)
!2246 = !DILocation(line: 174, column: 6, scope: !1087, inlinedAt: !2245)
!2247 = !DILocation(line: 174, column: 12, scope: !1087, inlinedAt: !2245)
!2248 = !DILocation(line: 175, column: 8, scope: !1101, inlinedAt: !2245)
!2249 = !DILocation(line: 175, column: 19, scope: !1101, inlinedAt: !2245)
!2250 = !DILocation(line: 176, column: 5, scope: !1101, inlinedAt: !2245)
!2251 = !DILocation(line: 177, column: 6, scope: !1087, inlinedAt: !2245)
!2252 = !DILocation(line: 177, column: 17, scope: !1087, inlinedAt: !2245)
!2253 = !DILocation(line: 178, column: 6, scope: !1087, inlinedAt: !2245)
!2254 = !DILocation(line: 178, column: 18, scope: !1087, inlinedAt: !2245)
!2255 = !DILocation(line: 1020, column: 10, scope: !2155, inlinedAt: !2240)
!2256 = !DILocation(line: 1021, column: 1, scope: !2155, inlinedAt: !2240)
!2257 = !DILocation(line: 1034, column: 3, scope: !2230)
!2258 = distinct !DISubprogram(name: "quote_n_mem", scope: !217, file: !217, line: 1049, type: !2259, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!6, !31, !6, !33}
!2261 = !{!2262, !2263, !2264}
!2262 = !DILocalVariable(name: "n", arg: 1, scope: !2258, file: !217, line: 1049, type: !31)
!2263 = !DILocalVariable(name: "arg", arg: 2, scope: !2258, file: !217, line: 1049, type: !6)
!2264 = !DILocalVariable(name: "argsize", arg: 3, scope: !2258, file: !217, line: 1049, type: !33)
!2265 = !DILocation(line: 0, scope: !2258)
!2266 = !DILocation(line: 1051, column: 10, scope: !2258)
!2267 = !DILocation(line: 1051, column: 3, scope: !2258)
!2268 = distinct !DISubprogram(name: "quote_mem", scope: !217, file: !217, line: 1055, type: !2269, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!6, !6, !33}
!2271 = !{!2272, !2273}
!2272 = !DILocalVariable(name: "arg", arg: 1, scope: !2268, file: !217, line: 1055, type: !6)
!2273 = !DILocalVariable(name: "argsize", arg: 2, scope: !2268, file: !217, line: 1055, type: !33)
!2274 = !DILocation(line: 0, scope: !2268)
!2275 = !DILocation(line: 0, scope: !2258, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 1057, column: 10, scope: !2268)
!2277 = !DILocation(line: 1051, column: 10, scope: !2258, inlinedAt: !2276)
!2278 = !DILocation(line: 1057, column: 3, scope: !2268)
!2279 = distinct !DISubprogram(name: "quote_n", scope: !217, file: !217, line: 1061, type: !2280, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!6, !31, !6}
!2282 = !{!2283, !2284}
!2283 = !DILocalVariable(name: "n", arg: 1, scope: !2279, file: !217, line: 1061, type: !31)
!2284 = !DILocalVariable(name: "arg", arg: 2, scope: !2279, file: !217, line: 1061, type: !6)
!2285 = !DILocation(line: 0, scope: !2279)
!2286 = !DILocation(line: 0, scope: !2258, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 1063, column: 10, scope: !2279)
!2288 = !DILocation(line: 1051, column: 10, scope: !2258, inlinedAt: !2287)
!2289 = !DILocation(line: 1063, column: 3, scope: !2279)
!2290 = distinct !DISubprogram(name: "quote", scope: !217, file: !217, line: 1067, type: !2291, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!6, !6}
!2293 = !{!2294}
!2294 = !DILocalVariable(name: "arg", arg: 1, scope: !2290, file: !217, line: 1067, type: !6)
!2295 = !DILocation(line: 0, scope: !2290)
!2296 = !DILocation(line: 0, scope: !2279, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 1069, column: 10, scope: !2290)
!2298 = !DILocation(line: 0, scope: !2258, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 1063, column: 10, scope: !2279, inlinedAt: !2297)
!2300 = !DILocation(line: 1051, column: 10, scope: !2258, inlinedAt: !2299)
!2301 = !DILocation(line: 1069, column: 3, scope: !2290)
!2302 = distinct !DISubprogram(name: "version_etc_arn", scope: !336, file: !336, line: 61, type: !2303, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2340)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !2305, !6, !6, !6, !2339, !33}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !2307)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !2308)
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2307, file: !62, line: 51, baseType: !31, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2307, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2307, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2307, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2307, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2307, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2307, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2307, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2307, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2307, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2307, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2307, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2307, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2307, file: !62, line: 70, baseType: !2323, size: 64, offset: 832)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2307, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2307, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2307, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2307, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2307, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2307, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2307, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2307, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2307, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2307, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2307, file: !62, line: 93, baseType: !2323, size: 64, offset: 1344)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2307, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2307, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2307, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2307, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346}
!2341 = !DILocalVariable(name: "stream", arg: 1, scope: !2302, file: !336, line: 61, type: !2305)
!2342 = !DILocalVariable(name: "command_name", arg: 2, scope: !2302, file: !336, line: 62, type: !6)
!2343 = !DILocalVariable(name: "package", arg: 3, scope: !2302, file: !336, line: 62, type: !6)
!2344 = !DILocalVariable(name: "version", arg: 4, scope: !2302, file: !336, line: 63, type: !6)
!2345 = !DILocalVariable(name: "authors", arg: 5, scope: !2302, file: !336, line: 64, type: !2339)
!2346 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2302, file: !336, line: 64, type: !33)
!2347 = !DILocation(line: 0, scope: !2302)
!2348 = !DILocation(line: 66, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2302, file: !336, line: 66, column: 7)
!2350 = !DILocation(line: 66, column: 7, scope: !2302)
!2351 = !DILocation(line: 67, column: 5, scope: !2349)
!2352 = !DILocation(line: 69, column: 5, scope: !2349)
!2353 = !DILocation(line: 83, column: 3, scope: !2302)
!2354 = !DILocation(line: 85, column: 3, scope: !2302)
!2355 = !DILocation(line: 88, column: 3, scope: !2302)
!2356 = !DILocation(line: 95, column: 3, scope: !2302)
!2357 = !DILocation(line: 97, column: 3, scope: !2302)
!2358 = !DILocation(line: 105, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2302, file: !336, line: 98, column: 5)
!2360 = !DILocation(line: 106, column: 7, scope: !2359)
!2361 = !DILocation(line: 109, column: 7, scope: !2359)
!2362 = !DILocation(line: 110, column: 7, scope: !2359)
!2363 = !DILocation(line: 113, column: 7, scope: !2359)
!2364 = !DILocation(line: 115, column: 7, scope: !2359)
!2365 = !DILocation(line: 120, column: 7, scope: !2359)
!2366 = !DILocation(line: 122, column: 7, scope: !2359)
!2367 = !DILocation(line: 127, column: 7, scope: !2359)
!2368 = !DILocation(line: 129, column: 7, scope: !2359)
!2369 = !DILocation(line: 134, column: 7, scope: !2359)
!2370 = !DILocation(line: 137, column: 7, scope: !2359)
!2371 = !DILocation(line: 142, column: 7, scope: !2359)
!2372 = !DILocation(line: 145, column: 7, scope: !2359)
!2373 = !DILocation(line: 150, column: 7, scope: !2359)
!2374 = !DILocation(line: 154, column: 7, scope: !2359)
!2375 = !DILocation(line: 159, column: 7, scope: !2359)
!2376 = !DILocation(line: 163, column: 7, scope: !2359)
!2377 = !DILocation(line: 170, column: 7, scope: !2359)
!2378 = !DILocation(line: 174, column: 7, scope: !2359)
!2379 = !DILocation(line: 176, column: 1, scope: !2302)
!2380 = distinct !DISubprogram(name: "version_etc_ar", scope: !336, file: !336, line: 183, type: !2381, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2305, !6, !6, !6, !2339}
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389}
!2384 = !DILocalVariable(name: "stream", arg: 1, scope: !2380, file: !336, line: 183, type: !2305)
!2385 = !DILocalVariable(name: "command_name", arg: 2, scope: !2380, file: !336, line: 184, type: !6)
!2386 = !DILocalVariable(name: "package", arg: 3, scope: !2380, file: !336, line: 184, type: !6)
!2387 = !DILocalVariable(name: "version", arg: 4, scope: !2380, file: !336, line: 185, type: !6)
!2388 = !DILocalVariable(name: "authors", arg: 5, scope: !2380, file: !336, line: 185, type: !2339)
!2389 = !DILocalVariable(name: "n_authors", scope: !2380, file: !336, line: 187, type: !33)
!2390 = !DILocation(line: 0, scope: !2380)
!2391 = !DILocation(line: 189, column: 8, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2380, file: !336, line: 189, column: 3)
!2393 = !DILocation(line: 0, scope: !2392)
!2394 = !DILocation(line: 189, column: 23, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2392, file: !336, line: 189, column: 3)
!2396 = !DILocation(line: 189, column: 3, scope: !2392)
!2397 = !DILocation(line: 189, column: 52, scope: !2395)
!2398 = distinct !{!2398, !2396, !2399, !479}
!2399 = !DILocation(line: 190, column: 5, scope: !2392)
!2400 = !DILocation(line: 191, column: 3, scope: !2380)
!2401 = !DILocation(line: 192, column: 1, scope: !2380)
!2402 = distinct !DISubprogram(name: "version_etc_va", scope: !336, file: !336, line: 199, type: !2403, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2416)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{null, !2305, !6, !6, !6, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 52, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !145, line: 32, baseType: !2407)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2408, baseType: !2409)
!2408 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !149, size: 256, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414, !2415}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2409, file: !2408, line: 192, baseType: !30, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2409, file: !2408, line: 192, baseType: !30, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2409, file: !2408, line: 192, baseType: !30, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2409, file: !2408, line: 192, baseType: !31, size: 32, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2409, file: !2408, line: 192, baseType: !31, size: 32, offset: 224)
!2416 = !{!2417, !2418, !2419, !2420, !2421, !2422, !2423}
!2417 = !DILocalVariable(name: "stream", arg: 1, scope: !2402, file: !336, line: 199, type: !2305)
!2418 = !DILocalVariable(name: "command_name", arg: 2, scope: !2402, file: !336, line: 200, type: !6)
!2419 = !DILocalVariable(name: "package", arg: 3, scope: !2402, file: !336, line: 200, type: !6)
!2420 = !DILocalVariable(name: "version", arg: 4, scope: !2402, file: !336, line: 201, type: !6)
!2421 = !DILocalVariable(name: "authors", arg: 5, scope: !2402, file: !336, line: 201, type: !2405)
!2422 = !DILocalVariable(name: "n_authors", scope: !2402, file: !336, line: 203, type: !33)
!2423 = !DILocalVariable(name: "authtab", scope: !2402, file: !336, line: 204, type: !2424)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !244)
!2425 = !DILocation(line: 0, scope: !2402)
!2426 = !DILocation(line: 201, column: 46, scope: !2402)
!2427 = !DILocation(line: 204, column: 3, scope: !2402)
!2428 = !DILocation(line: 204, column: 15, scope: !2402)
!2429 = !DILocation(line: 208, column: 35, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !336, line: 206, column: 3)
!2431 = distinct !DILexicalBlock(scope: !2402, file: !336, line: 206, column: 3)
!2432 = !DILocation(line: 208, column: 14, scope: !2430)
!2433 = !DILocation(line: 208, column: 33, scope: !2430)
!2434 = !DILocation(line: 208, column: 67, scope: !2430)
!2435 = !DILocation(line: 206, column: 3, scope: !2431)
!2436 = !DILocation(line: 0, scope: !2431)
!2437 = !DILocation(line: 211, column: 3, scope: !2402)
!2438 = !DILocation(line: 213, column: 1, scope: !2402)
!2439 = distinct !DISubprogram(name: "version_etc", scope: !336, file: !336, line: 230, type: !2440, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !2305, !6, !6, !6, null}
!2442 = !{!2443, !2444, !2445, !2446, !2447}
!2443 = !DILocalVariable(name: "stream", arg: 1, scope: !2439, file: !336, line: 230, type: !2305)
!2444 = !DILocalVariable(name: "command_name", arg: 2, scope: !2439, file: !336, line: 231, type: !6)
!2445 = !DILocalVariable(name: "package", arg: 3, scope: !2439, file: !336, line: 231, type: !6)
!2446 = !DILocalVariable(name: "version", arg: 4, scope: !2439, file: !336, line: 232, type: !6)
!2447 = !DILocalVariable(name: "authors", scope: !2439, file: !336, line: 234, type: !2405)
!2448 = !DILocation(line: 0, scope: !2439)
!2449 = !DILocation(line: 234, column: 3, scope: !2439)
!2450 = !DILocation(line: 234, column: 11, scope: !2439)
!2451 = !DILocation(line: 235, column: 3, scope: !2439)
!2452 = !DILocation(line: 236, column: 3, scope: !2439)
!2453 = !DILocation(line: 237, column: 3, scope: !2439)
!2454 = !DILocation(line: 238, column: 1, scope: !2439)
!2455 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !336, file: !336, line: 241, type: !170, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !429)
!2456 = !DILocation(line: 243, column: 3, scope: !2455)
!2457 = !DILocation(line: 248, column: 3, scope: !2455)
!2458 = !DILocation(line: 254, column: 3, scope: !2455)
!2459 = !DILocation(line: 259, column: 3, scope: !2455)
!2460 = !DILocation(line: 261, column: 1, scope: !2455)
!2461 = distinct !DISubprogram(name: "xnrealloc", scope: !2462, file: !2462, line: 147, type: !2463, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2465)
!2462 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!30, !30, !33, !33}
!2465 = !{!2466, !2467, !2468}
!2466 = !DILocalVariable(name: "p", arg: 1, scope: !2461, file: !2462, line: 147, type: !30)
!2467 = !DILocalVariable(name: "n", arg: 2, scope: !2461, file: !2462, line: 147, type: !33)
!2468 = !DILocalVariable(name: "s", arg: 3, scope: !2461, file: !2462, line: 147, type: !33)
!2469 = !DILocation(line: 0, scope: !2461)
!2470 = !DILocalVariable(name: "p", arg: 1, scope: !2471, file: !343, line: 83, type: !30)
!2471 = distinct !DISubprogram(name: "xreallocarray", scope: !343, file: !343, line: 83, type: !2463, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2472)
!2472 = !{!2470, !2473, !2474}
!2473 = !DILocalVariable(name: "n", arg: 2, scope: !2471, file: !343, line: 83, type: !33)
!2474 = !DILocalVariable(name: "s", arg: 3, scope: !2471, file: !343, line: 83, type: !33)
!2475 = !DILocation(line: 0, scope: !2471, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 149, column: 10, scope: !2461)
!2477 = !DILocation(line: 85, column: 25, scope: !2471, inlinedAt: !2476)
!2478 = !DILocalVariable(name: "p", arg: 1, scope: !2479, file: !343, line: 37, type: !30)
!2479 = distinct !DISubprogram(name: "check_nonnull", scope: !343, file: !343, line: 37, type: !2480, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!30, !30}
!2482 = !{!2478}
!2483 = !DILocation(line: 0, scope: !2479, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 85, column: 10, scope: !2471, inlinedAt: !2476)
!2485 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2484)
!2486 = distinct !DILexicalBlock(scope: !2479, file: !343, line: 39, column: 7)
!2487 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2484)
!2488 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2484)
!2489 = !DILocation(line: 149, column: 3, scope: !2461)
!2490 = !DILocation(line: 0, scope: !2471)
!2491 = !DILocation(line: 85, column: 25, scope: !2471)
!2492 = !DILocation(line: 0, scope: !2479, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 85, column: 10, scope: !2471)
!2494 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2493)
!2495 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2493)
!2496 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2493)
!2497 = !DILocation(line: 85, column: 3, scope: !2471)
!2498 = distinct !DISubprogram(name: "xmalloc", scope: !343, file: !343, line: 47, type: !2499, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!30, !33}
!2501 = !{!2502}
!2502 = !DILocalVariable(name: "s", arg: 1, scope: !2498, file: !343, line: 47, type: !33)
!2503 = !DILocation(line: 0, scope: !2498)
!2504 = !DILocation(line: 49, column: 25, scope: !2498)
!2505 = !DILocation(line: 0, scope: !2479, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 49, column: 10, scope: !2498)
!2507 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2506)
!2508 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2506)
!2509 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2506)
!2510 = !DILocation(line: 49, column: 3, scope: !2498)
!2511 = distinct !DISubprogram(name: "ximalloc", scope: !343, file: !343, line: 53, type: !2512, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!30, !362}
!2514 = !{!2515}
!2515 = !DILocalVariable(name: "s", arg: 1, scope: !2511, file: !343, line: 53, type: !362)
!2516 = !DILocation(line: 0, scope: !2511)
!2517 = !DILocalVariable(name: "s", arg: 1, scope: !2518, file: !2519, line: 55, type: !362)
!2518 = distinct !DISubprogram(name: "imalloc", scope: !2519, file: !2519, line: 55, type: !2512, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2520)
!2519 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2520 = !{!2517}
!2521 = !DILocation(line: 0, scope: !2518, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 55, column: 25, scope: !2511)
!2523 = !DILocation(line: 57, column: 26, scope: !2518, inlinedAt: !2522)
!2524 = !DILocation(line: 0, scope: !2479, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 55, column: 10, scope: !2511)
!2526 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2525)
!2527 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2525)
!2528 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2525)
!2529 = !DILocation(line: 55, column: 3, scope: !2511)
!2530 = distinct !DISubprogram(name: "xcharalloc", scope: !343, file: !343, line: 59, type: !2531, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!29, !33}
!2533 = !{!2534}
!2534 = !DILocalVariable(name: "n", arg: 1, scope: !2530, file: !343, line: 59, type: !33)
!2535 = !DILocation(line: 0, scope: !2530)
!2536 = !DILocation(line: 0, scope: !2498, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 61, column: 10, scope: !2530)
!2538 = !DILocation(line: 49, column: 25, scope: !2498, inlinedAt: !2537)
!2539 = !DILocation(line: 0, scope: !2479, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 49, column: 10, scope: !2498, inlinedAt: !2537)
!2541 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2540)
!2542 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2540)
!2543 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2540)
!2544 = !DILocation(line: 61, column: 3, scope: !2530)
!2545 = distinct !DISubprogram(name: "xrealloc", scope: !343, file: !343, line: 68, type: !2546, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!30, !30, !33}
!2548 = !{!2549, !2550}
!2549 = !DILocalVariable(name: "p", arg: 1, scope: !2545, file: !343, line: 68, type: !30)
!2550 = !DILocalVariable(name: "s", arg: 2, scope: !2545, file: !343, line: 68, type: !33)
!2551 = !DILocation(line: 0, scope: !2545)
!2552 = !DILocalVariable(name: "ptr", arg: 1, scope: !2553, file: !2554, line: 2057, type: !30)
!2553 = distinct !DISubprogram(name: "rpl_realloc", scope: !2554, file: !2554, line: 2057, type: !2546, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2555)
!2554 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2555 = !{!2552, !2556}
!2556 = !DILocalVariable(name: "size", arg: 2, scope: !2553, file: !2554, line: 2057, type: !33)
!2557 = !DILocation(line: 0, scope: !2553, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 70, column: 25, scope: !2545)
!2559 = !DILocation(line: 2059, column: 24, scope: !2553, inlinedAt: !2558)
!2560 = !DILocation(line: 2059, column: 10, scope: !2553, inlinedAt: !2558)
!2561 = !DILocation(line: 0, scope: !2479, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 70, column: 10, scope: !2545)
!2563 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2562)
!2564 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2562)
!2565 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2562)
!2566 = !DILocation(line: 70, column: 3, scope: !2545)
!2567 = distinct !DISubprogram(name: "xirealloc", scope: !343, file: !343, line: 74, type: !2568, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!30, !30, !362}
!2570 = !{!2571, !2572}
!2571 = !DILocalVariable(name: "p", arg: 1, scope: !2567, file: !343, line: 74, type: !30)
!2572 = !DILocalVariable(name: "s", arg: 2, scope: !2567, file: !343, line: 74, type: !362)
!2573 = !DILocation(line: 0, scope: !2567)
!2574 = !DILocalVariable(name: "p", arg: 1, scope: !2575, file: !2519, line: 66, type: !30)
!2575 = distinct !DISubprogram(name: "irealloc", scope: !2519, file: !2519, line: 66, type: !2568, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2576)
!2576 = !{!2574, !2577}
!2577 = !DILocalVariable(name: "s", arg: 2, scope: !2575, file: !2519, line: 66, type: !362)
!2578 = !DILocation(line: 0, scope: !2575, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 76, column: 25, scope: !2567)
!2580 = !DILocation(line: 0, scope: !2553, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 68, column: 26, scope: !2575, inlinedAt: !2579)
!2582 = !DILocation(line: 2059, column: 24, scope: !2553, inlinedAt: !2581)
!2583 = !DILocation(line: 2059, column: 10, scope: !2553, inlinedAt: !2581)
!2584 = !DILocation(line: 0, scope: !2479, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 76, column: 10, scope: !2567)
!2586 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2585)
!2587 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2585)
!2588 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2585)
!2589 = !DILocation(line: 76, column: 3, scope: !2567)
!2590 = distinct !DISubprogram(name: "xireallocarray", scope: !343, file: !343, line: 89, type: !2591, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!30, !30, !362, !362}
!2593 = !{!2594, !2595, !2596}
!2594 = !DILocalVariable(name: "p", arg: 1, scope: !2590, file: !343, line: 89, type: !30)
!2595 = !DILocalVariable(name: "n", arg: 2, scope: !2590, file: !343, line: 89, type: !362)
!2596 = !DILocalVariable(name: "s", arg: 3, scope: !2590, file: !343, line: 89, type: !362)
!2597 = !DILocation(line: 0, scope: !2590)
!2598 = !DILocalVariable(name: "p", arg: 1, scope: !2599, file: !2519, line: 98, type: !30)
!2599 = distinct !DISubprogram(name: "ireallocarray", scope: !2519, file: !2519, line: 98, type: !2591, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2600)
!2600 = !{!2598, !2601, !2602}
!2601 = !DILocalVariable(name: "n", arg: 2, scope: !2599, file: !2519, line: 98, type: !362)
!2602 = !DILocalVariable(name: "s", arg: 3, scope: !2599, file: !2519, line: 98, type: !362)
!2603 = !DILocation(line: 0, scope: !2599, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 91, column: 25, scope: !2590)
!2605 = !DILocation(line: 101, column: 13, scope: !2599, inlinedAt: !2604)
!2606 = !DILocation(line: 0, scope: !2479, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 91, column: 10, scope: !2590)
!2608 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2607)
!2609 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2607)
!2610 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2607)
!2611 = !DILocation(line: 91, column: 3, scope: !2590)
!2612 = distinct !DISubprogram(name: "xnmalloc", scope: !343, file: !343, line: 98, type: !2613, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!30, !33, !33}
!2615 = !{!2616, !2617}
!2616 = !DILocalVariable(name: "n", arg: 1, scope: !2612, file: !343, line: 98, type: !33)
!2617 = !DILocalVariable(name: "s", arg: 2, scope: !2612, file: !343, line: 98, type: !33)
!2618 = !DILocation(line: 0, scope: !2612)
!2619 = !DILocation(line: 0, scope: !2471, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 100, column: 10, scope: !2612)
!2621 = !DILocation(line: 85, column: 25, scope: !2471, inlinedAt: !2620)
!2622 = !DILocation(line: 0, scope: !2479, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 85, column: 10, scope: !2471, inlinedAt: !2620)
!2624 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2623)
!2625 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2623)
!2626 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2623)
!2627 = !DILocation(line: 100, column: 3, scope: !2612)
!2628 = distinct !DISubprogram(name: "xinmalloc", scope: !343, file: !343, line: 104, type: !2629, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!30, !362, !362}
!2631 = !{!2632, !2633}
!2632 = !DILocalVariable(name: "n", arg: 1, scope: !2628, file: !343, line: 104, type: !362)
!2633 = !DILocalVariable(name: "s", arg: 2, scope: !2628, file: !343, line: 104, type: !362)
!2634 = !DILocation(line: 0, scope: !2628)
!2635 = !DILocation(line: 0, scope: !2590, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 106, column: 10, scope: !2628)
!2637 = !DILocation(line: 0, scope: !2599, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 91, column: 25, scope: !2590, inlinedAt: !2636)
!2639 = !DILocation(line: 101, column: 13, scope: !2599, inlinedAt: !2638)
!2640 = !DILocation(line: 0, scope: !2479, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 91, column: 10, scope: !2590, inlinedAt: !2636)
!2642 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2641)
!2643 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2641)
!2644 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2641)
!2645 = !DILocation(line: 106, column: 3, scope: !2628)
!2646 = distinct !DISubprogram(name: "x2realloc", scope: !343, file: !343, line: 116, type: !2647, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!30, !30, !349}
!2649 = !{!2650, !2651}
!2650 = !DILocalVariable(name: "p", arg: 1, scope: !2646, file: !343, line: 116, type: !30)
!2651 = !DILocalVariable(name: "ps", arg: 2, scope: !2646, file: !343, line: 116, type: !349)
!2652 = !DILocation(line: 0, scope: !2646)
!2653 = !DILocation(line: 0, scope: !346, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 118, column: 10, scope: !2646)
!2655 = !DILocation(line: 178, column: 14, scope: !346, inlinedAt: !2654)
!2656 = !DILocation(line: 180, column: 9, scope: !2657, inlinedAt: !2654)
!2657 = distinct !DILexicalBlock(scope: !346, file: !343, line: 180, column: 7)
!2658 = !DILocation(line: 180, column: 7, scope: !346, inlinedAt: !2654)
!2659 = !DILocation(line: 182, column: 13, scope: !2660, inlinedAt: !2654)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !343, line: 182, column: 11)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !343, line: 181, column: 5)
!2662 = !DILocation(line: 182, column: 11, scope: !2661, inlinedAt: !2654)
!2663 = !DILocation(line: 197, column: 11, scope: !2664, inlinedAt: !2654)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !343, line: 197, column: 11)
!2665 = distinct !DILexicalBlock(scope: !2657, file: !343, line: 195, column: 5)
!2666 = !DILocation(line: 197, column: 11, scope: !2665, inlinedAt: !2654)
!2667 = !DILocation(line: 198, column: 9, scope: !2664, inlinedAt: !2654)
!2668 = !DILocation(line: 0, scope: !2471, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 201, column: 7, scope: !346, inlinedAt: !2654)
!2670 = !DILocation(line: 85, column: 25, scope: !2471, inlinedAt: !2669)
!2671 = !DILocation(line: 0, scope: !2479, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 85, column: 10, scope: !2471, inlinedAt: !2669)
!2673 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2672)
!2674 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2672)
!2675 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2672)
!2676 = !DILocation(line: 202, column: 7, scope: !346, inlinedAt: !2654)
!2677 = !DILocation(line: 118, column: 3, scope: !2646)
!2678 = !DILocation(line: 0, scope: !346)
!2679 = !DILocation(line: 178, column: 14, scope: !346)
!2680 = !DILocation(line: 180, column: 9, scope: !2657)
!2681 = !DILocation(line: 180, column: 7, scope: !346)
!2682 = !DILocation(line: 182, column: 13, scope: !2660)
!2683 = !DILocation(line: 182, column: 11, scope: !2661)
!2684 = !DILocation(line: 190, column: 30, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2660, file: !343, line: 183, column: 9)
!2686 = !DILocation(line: 191, column: 16, scope: !2685)
!2687 = !DILocation(line: 191, column: 13, scope: !2685)
!2688 = !DILocation(line: 192, column: 9, scope: !2685)
!2689 = !DILocation(line: 197, column: 11, scope: !2664)
!2690 = !DILocation(line: 197, column: 11, scope: !2665)
!2691 = !DILocation(line: 198, column: 9, scope: !2664)
!2692 = !DILocation(line: 0, scope: !2471, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 201, column: 7, scope: !346)
!2694 = !DILocation(line: 85, column: 25, scope: !2471, inlinedAt: !2693)
!2695 = !DILocation(line: 0, scope: !2479, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 85, column: 10, scope: !2471, inlinedAt: !2693)
!2697 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2696)
!2698 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2696)
!2699 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2696)
!2700 = !DILocation(line: 202, column: 7, scope: !346)
!2701 = !DILocation(line: 203, column: 3, scope: !346)
!2702 = !DILocation(line: 0, scope: !358)
!2703 = !DILocation(line: 230, column: 14, scope: !358)
!2704 = !DILocation(line: 238, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !358, file: !343, line: 238, column: 7)
!2706 = !DILocation(line: 238, column: 7, scope: !358)
!2707 = !DILocation(line: 240, column: 9, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !358, file: !343, line: 240, column: 7)
!2709 = !DILocation(line: 240, column: 18, scope: !2708)
!2710 = !DILocation(line: 253, column: 8, scope: !358)
!2711 = !DILocation(line: 258, column: 27, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !343, line: 257, column: 5)
!2713 = distinct !DILexicalBlock(scope: !358, file: !343, line: 256, column: 7)
!2714 = !DILocation(line: 259, column: 32, scope: !2712)
!2715 = !DILocation(line: 260, column: 5, scope: !2712)
!2716 = !DILocation(line: 262, column: 9, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !358, file: !343, line: 262, column: 7)
!2718 = !DILocation(line: 262, column: 7, scope: !358)
!2719 = !DILocation(line: 263, column: 9, scope: !2717)
!2720 = !DILocation(line: 263, column: 5, scope: !2717)
!2721 = !DILocation(line: 264, column: 9, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !358, file: !343, line: 264, column: 7)
!2723 = !DILocation(line: 264, column: 14, scope: !2722)
!2724 = !DILocation(line: 265, column: 7, scope: !2722)
!2725 = !DILocation(line: 265, column: 11, scope: !2722)
!2726 = !DILocation(line: 266, column: 11, scope: !2722)
!2727 = !DILocation(line: 266, column: 26, scope: !2722)
!2728 = !DILocation(line: 267, column: 14, scope: !2722)
!2729 = !DILocation(line: 264, column: 7, scope: !358)
!2730 = !DILocation(line: 268, column: 5, scope: !2722)
!2731 = !DILocation(line: 0, scope: !2545, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 269, column: 8, scope: !358)
!2733 = !DILocation(line: 0, scope: !2553, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 70, column: 25, scope: !2545, inlinedAt: !2732)
!2735 = !DILocation(line: 2059, column: 24, scope: !2553, inlinedAt: !2734)
!2736 = !DILocation(line: 2059, column: 10, scope: !2553, inlinedAt: !2734)
!2737 = !DILocation(line: 0, scope: !2479, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 70, column: 10, scope: !2545, inlinedAt: !2732)
!2739 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2738)
!2740 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2738)
!2741 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2738)
!2742 = !DILocation(line: 270, column: 7, scope: !358)
!2743 = !DILocation(line: 271, column: 3, scope: !358)
!2744 = distinct !DISubprogram(name: "xzalloc", scope: !343, file: !343, line: 279, type: !2499, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2745)
!2745 = !{!2746}
!2746 = !DILocalVariable(name: "s", arg: 1, scope: !2744, file: !343, line: 279, type: !33)
!2747 = !DILocation(line: 0, scope: !2744)
!2748 = !DILocalVariable(name: "n", arg: 1, scope: !2749, file: !343, line: 294, type: !33)
!2749 = distinct !DISubprogram(name: "xcalloc", scope: !343, file: !343, line: 294, type: !2613, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2750)
!2750 = !{!2748, !2751}
!2751 = !DILocalVariable(name: "s", arg: 2, scope: !2749, file: !343, line: 294, type: !33)
!2752 = !DILocation(line: 0, scope: !2749, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 281, column: 10, scope: !2744)
!2754 = !DILocation(line: 296, column: 25, scope: !2749, inlinedAt: !2753)
!2755 = !DILocation(line: 0, scope: !2479, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 296, column: 10, scope: !2749, inlinedAt: !2753)
!2757 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2756)
!2758 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2756)
!2759 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2756)
!2760 = !DILocation(line: 281, column: 3, scope: !2744)
!2761 = !DILocation(line: 0, scope: !2749)
!2762 = !DILocation(line: 296, column: 25, scope: !2749)
!2763 = !DILocation(line: 0, scope: !2479, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 296, column: 10, scope: !2749)
!2765 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2764)
!2766 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2764)
!2767 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2764)
!2768 = !DILocation(line: 296, column: 3, scope: !2749)
!2769 = distinct !DISubprogram(name: "xizalloc", scope: !343, file: !343, line: 285, type: !2512, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2770)
!2770 = !{!2771}
!2771 = !DILocalVariable(name: "s", arg: 1, scope: !2769, file: !343, line: 285, type: !362)
!2772 = !DILocation(line: 0, scope: !2769)
!2773 = !DILocalVariable(name: "n", arg: 1, scope: !2774, file: !343, line: 300, type: !362)
!2774 = distinct !DISubprogram(name: "xicalloc", scope: !343, file: !343, line: 300, type: !2629, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2775)
!2775 = !{!2773, !2776}
!2776 = !DILocalVariable(name: "s", arg: 2, scope: !2774, file: !343, line: 300, type: !362)
!2777 = !DILocation(line: 0, scope: !2774, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 287, column: 10, scope: !2769)
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !2519, line: 77, type: !362)
!2780 = distinct !DISubprogram(name: "icalloc", scope: !2519, file: !2519, line: 77, type: !2629, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2781)
!2781 = !{!2779, !2782}
!2782 = !DILocalVariable(name: "s", arg: 2, scope: !2780, file: !2519, line: 77, type: !362)
!2783 = !DILocation(line: 0, scope: !2780, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 302, column: 25, scope: !2774, inlinedAt: !2778)
!2785 = !DILocation(line: 91, column: 10, scope: !2780, inlinedAt: !2784)
!2786 = !DILocation(line: 0, scope: !2479, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 302, column: 10, scope: !2774, inlinedAt: !2778)
!2788 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2787)
!2789 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2787)
!2790 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2787)
!2791 = !DILocation(line: 287, column: 3, scope: !2769)
!2792 = !DILocation(line: 0, scope: !2774)
!2793 = !DILocation(line: 0, scope: !2780, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 302, column: 25, scope: !2774)
!2795 = !DILocation(line: 91, column: 10, scope: !2780, inlinedAt: !2794)
!2796 = !DILocation(line: 0, scope: !2479, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 302, column: 10, scope: !2774)
!2798 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2797)
!2799 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2797)
!2800 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2797)
!2801 = !DILocation(line: 302, column: 3, scope: !2774)
!2802 = distinct !DISubprogram(name: "xmemdup", scope: !343, file: !343, line: 310, type: !2803, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!30, !618, !33}
!2805 = !{!2806, !2807}
!2806 = !DILocalVariable(name: "p", arg: 1, scope: !2802, file: !343, line: 310, type: !618)
!2807 = !DILocalVariable(name: "s", arg: 2, scope: !2802, file: !343, line: 310, type: !33)
!2808 = !DILocation(line: 0, scope: !2802)
!2809 = !DILocation(line: 0, scope: !2498, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 312, column: 18, scope: !2802)
!2811 = !DILocation(line: 49, column: 25, scope: !2498, inlinedAt: !2810)
!2812 = !DILocation(line: 0, scope: !2479, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 49, column: 10, scope: !2498, inlinedAt: !2810)
!2814 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2813)
!2815 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2813)
!2816 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2813)
!2817 = !DILocalVariable(name: "__dest", arg: 1, scope: !2818, file: !989, line: 26, type: !2821)
!2818 = distinct !DISubprogram(name: "memcpy", scope: !989, file: !989, line: 26, type: !2819, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2822)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!30, !2821, !617, !33}
!2821 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!2822 = !{!2817, !2823, !2824}
!2823 = !DILocalVariable(name: "__src", arg: 2, scope: !2818, file: !989, line: 26, type: !617)
!2824 = !DILocalVariable(name: "__len", arg: 3, scope: !2818, file: !989, line: 26, type: !33)
!2825 = !DILocation(line: 0, scope: !2818, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 312, column: 10, scope: !2802)
!2827 = !DILocation(line: 29, column: 10, scope: !2818, inlinedAt: !2826)
!2828 = !DILocation(line: 312, column: 3, scope: !2802)
!2829 = distinct !DISubprogram(name: "ximemdup", scope: !343, file: !343, line: 316, type: !2830, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!30, !618, !362}
!2832 = !{!2833, !2834}
!2833 = !DILocalVariable(name: "p", arg: 1, scope: !2829, file: !343, line: 316, type: !618)
!2834 = !DILocalVariable(name: "s", arg: 2, scope: !2829, file: !343, line: 316, type: !362)
!2835 = !DILocation(line: 0, scope: !2829)
!2836 = !DILocation(line: 0, scope: !2511, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 318, column: 18, scope: !2829)
!2838 = !DILocation(line: 0, scope: !2518, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 55, column: 25, scope: !2511, inlinedAt: !2837)
!2840 = !DILocation(line: 57, column: 26, scope: !2518, inlinedAt: !2839)
!2841 = !DILocation(line: 0, scope: !2479, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 55, column: 10, scope: !2511, inlinedAt: !2837)
!2843 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2842)
!2844 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2842)
!2845 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2842)
!2846 = !DILocation(line: 0, scope: !2818, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 318, column: 10, scope: !2829)
!2848 = !DILocation(line: 29, column: 10, scope: !2818, inlinedAt: !2847)
!2849 = !DILocation(line: 318, column: 3, scope: !2829)
!2850 = distinct !DISubprogram(name: "ximemdup0", scope: !343, file: !343, line: 325, type: !2851, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!29, !618, !362}
!2853 = !{!2854, !2855, !2856}
!2854 = !DILocalVariable(name: "p", arg: 1, scope: !2850, file: !343, line: 325, type: !618)
!2855 = !DILocalVariable(name: "s", arg: 2, scope: !2850, file: !343, line: 325, type: !362)
!2856 = !DILocalVariable(name: "result", scope: !2850, file: !343, line: 327, type: !29)
!2857 = !DILocation(line: 0, scope: !2850)
!2858 = !DILocation(line: 327, column: 30, scope: !2850)
!2859 = !DILocation(line: 0, scope: !2511, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 327, column: 18, scope: !2850)
!2861 = !DILocation(line: 0, scope: !2518, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 55, column: 25, scope: !2511, inlinedAt: !2860)
!2863 = !DILocation(line: 57, column: 26, scope: !2518, inlinedAt: !2862)
!2864 = !DILocation(line: 0, scope: !2479, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 55, column: 10, scope: !2511, inlinedAt: !2860)
!2866 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2865)
!2867 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2865)
!2868 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2865)
!2869 = !DILocation(line: 328, column: 3, scope: !2850)
!2870 = !DILocation(line: 328, column: 13, scope: !2850)
!2871 = !DILocation(line: 0, scope: !2818, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 329, column: 10, scope: !2850)
!2873 = !DILocation(line: 29, column: 10, scope: !2818, inlinedAt: !2872)
!2874 = !DILocation(line: 329, column: 3, scope: !2850)
!2875 = distinct !DISubprogram(name: "xstrdup", scope: !343, file: !343, line: 335, type: !612, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2876)
!2876 = !{!2877}
!2877 = !DILocalVariable(name: "string", arg: 1, scope: !2875, file: !343, line: 335, type: !6)
!2878 = !DILocation(line: 0, scope: !2875)
!2879 = !DILocation(line: 337, column: 27, scope: !2875)
!2880 = !DILocation(line: 337, column: 43, scope: !2875)
!2881 = !DILocation(line: 0, scope: !2802, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 337, column: 10, scope: !2875)
!2883 = !DILocation(line: 0, scope: !2498, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 312, column: 18, scope: !2802, inlinedAt: !2882)
!2885 = !DILocation(line: 49, column: 25, scope: !2498, inlinedAt: !2884)
!2886 = !DILocation(line: 0, scope: !2479, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 49, column: 10, scope: !2498, inlinedAt: !2884)
!2888 = !DILocation(line: 39, column: 8, scope: !2486, inlinedAt: !2887)
!2889 = !DILocation(line: 39, column: 7, scope: !2479, inlinedAt: !2887)
!2890 = !DILocation(line: 40, column: 5, scope: !2486, inlinedAt: !2887)
!2891 = !DILocation(line: 0, scope: !2818, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 312, column: 10, scope: !2802, inlinedAt: !2882)
!2893 = !DILocation(line: 29, column: 10, scope: !2818, inlinedAt: !2892)
!2894 = !DILocation(line: 337, column: 3, scope: !2875)
!2895 = distinct !DISubprogram(name: "xalloc_die", scope: !377, file: !377, line: 32, type: !170, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2896)
!2896 = !{!2897}
!2897 = !DILocalVariable(name: "__errstatus", scope: !2898, file: !377, line: 34, type: !2899)
!2898 = distinct !DILexicalBlock(scope: !2895, file: !377, line: 34, column: 3)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!2900 = !DILocation(line: 34, column: 3, scope: !2898)
!2901 = !DILocation(line: 0, scope: !2898)
!2902 = !DILocation(line: 40, column: 3, scope: !2895)
!2903 = distinct !DISubprogram(name: "close_stream", scope: !379, file: !379, line: 55, type: !2904, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !2940)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!31, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !2908)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !2909)
!2909 = !{!2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2908, file: !62, line: 51, baseType: !31, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2908, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2908, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2908, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2908, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2908, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2908, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2908, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2908, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2908, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2908, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2908, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2908, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2908, file: !62, line: 70, baseType: !2924, size: 64, offset: 832)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2908, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2908, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2908, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2908, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2908, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2908, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2908, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2908, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2908, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2908, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2908, file: !62, line: 93, baseType: !2924, size: 64, offset: 1344)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2908, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2908, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2908, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2908, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!2940 = !{!2941, !2942, !2944, !2945}
!2941 = !DILocalVariable(name: "stream", arg: 1, scope: !2903, file: !379, line: 55, type: !2906)
!2942 = !DILocalVariable(name: "some_pending", scope: !2903, file: !379, line: 57, type: !2943)
!2943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!2944 = !DILocalVariable(name: "prev_fail", scope: !2903, file: !379, line: 58, type: !2943)
!2945 = !DILocalVariable(name: "fclose_fail", scope: !2903, file: !379, line: 59, type: !2943)
!2946 = !DILocation(line: 0, scope: !2903)
!2947 = !DILocation(line: 57, column: 30, scope: !2903)
!2948 = !DILocalVariable(name: "__stream", arg: 1, scope: !2949, file: !838, line: 135, type: !2906)
!2949 = distinct !DISubprogram(name: "ferror_unlocked", scope: !838, file: !838, line: 135, type: !2904, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !2950)
!2950 = !{!2948}
!2951 = !DILocation(line: 0, scope: !2949, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 58, column: 27, scope: !2903)
!2953 = !DILocation(line: 137, column: 10, scope: !2949, inlinedAt: !2952)
!2954 = !{!847, !433, i64 0}
!2955 = !DILocation(line: 58, column: 43, scope: !2903)
!2956 = !DILocation(line: 59, column: 29, scope: !2903)
!2957 = !DILocation(line: 59, column: 45, scope: !2903)
!2958 = !DILocation(line: 69, column: 17, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2903, file: !379, line: 69, column: 7)
!2960 = !DILocation(line: 57, column: 50, scope: !2903)
!2961 = !DILocation(line: 69, column: 33, scope: !2959)
!2962 = !DILocation(line: 69, column: 53, scope: !2959)
!2963 = !DILocation(line: 69, column: 59, scope: !2959)
!2964 = !DILocation(line: 69, column: 7, scope: !2903)
!2965 = !DILocation(line: 71, column: 11, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2959, file: !379, line: 70, column: 5)
!2967 = !DILocation(line: 72, column: 9, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2966, file: !379, line: 71, column: 11)
!2969 = !DILocation(line: 72, column: 15, scope: !2968)
!2970 = !DILocation(line: 77, column: 1, scope: !2903)
!2971 = distinct !DISubprogram(name: "rpl_fclose", scope: !381, file: !381, line: 58, type: !2972, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3008)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!31, !2974}
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2976, file: !62, line: 51, baseType: !31, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2976, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2976, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2976, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2976, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2976, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2976, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2976, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2976, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2976, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2976, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2976, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2976, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2976, file: !62, line: 70, baseType: !2992, size: 64, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2976, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2976, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2976, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2976, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2976, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2976, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2976, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2976, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2976, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2976, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2976, file: !62, line: 93, baseType: !2992, size: 64, offset: 1344)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2976, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2976, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2976, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2976, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!3008 = !{!3009, !3010, !3011, !3012}
!3009 = !DILocalVariable(name: "fp", arg: 1, scope: !2971, file: !381, line: 58, type: !2974)
!3010 = !DILocalVariable(name: "saved_errno", scope: !2971, file: !381, line: 60, type: !31)
!3011 = !DILocalVariable(name: "fd", scope: !2971, file: !381, line: 63, type: !31)
!3012 = !DILocalVariable(name: "result", scope: !2971, file: !381, line: 74, type: !31)
!3013 = !DILocation(line: 0, scope: !2971)
!3014 = !DILocation(line: 63, column: 12, scope: !2971)
!3015 = !DILocation(line: 64, column: 10, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2971, file: !381, line: 64, column: 7)
!3017 = !DILocation(line: 64, column: 7, scope: !2971)
!3018 = !DILocation(line: 65, column: 12, scope: !3016)
!3019 = !DILocation(line: 65, column: 5, scope: !3016)
!3020 = !DILocation(line: 70, column: 9, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2971, file: !381, line: 70, column: 7)
!3022 = !DILocation(line: 70, column: 23, scope: !3021)
!3023 = !DILocation(line: 70, column: 33, scope: !3021)
!3024 = !DILocation(line: 70, column: 26, scope: !3021)
!3025 = !DILocation(line: 70, column: 59, scope: !3021)
!3026 = !DILocation(line: 71, column: 7, scope: !3021)
!3027 = !DILocation(line: 71, column: 10, scope: !3021)
!3028 = !DILocation(line: 70, column: 7, scope: !2971)
!3029 = !DILocation(line: 100, column: 12, scope: !2971)
!3030 = !DILocation(line: 105, column: 7, scope: !2971)
!3031 = !DILocation(line: 72, column: 19, scope: !3021)
!3032 = !DILocation(line: 105, column: 19, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2971, file: !381, line: 105, column: 7)
!3034 = !DILocation(line: 107, column: 13, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3033, file: !381, line: 106, column: 5)
!3036 = !DILocation(line: 109, column: 5, scope: !3035)
!3037 = !DILocation(line: 112, column: 1, scope: !2971)
!3038 = !DISubprogram(name: "fileno", scope: !143, file: !143, line: 809, type: !2972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!3039 = !DISubprogram(name: "fclose", scope: !143, file: !143, line: 178, type: !2972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!3040 = !DISubprogram(name: "lseek", scope: !3041, file: !3041, line: 339, type: !3042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!3041 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!84, !31, !84, !31}
!3044 = distinct !DISubprogram(name: "rpl_fflush", scope: !383, file: !383, line: 130, type: !3045, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3081)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!31, !3047}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !3049)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3049, file: !62, line: 51, baseType: !31, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3049, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3049, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3049, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3049, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3049, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3049, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3049, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3049, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3049, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3049, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3049, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3049, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3049, file: !62, line: 70, baseType: !3065, size: 64, offset: 832)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3049, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3049, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3049, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3049, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3049, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3049, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3049, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3049, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3049, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3049, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3049, file: !62, line: 93, baseType: !3065, size: 64, offset: 1344)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3049, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3049, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3049, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3049, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!3081 = !{!3082}
!3082 = !DILocalVariable(name: "stream", arg: 1, scope: !3044, file: !383, line: 130, type: !3047)
!3083 = !DILocation(line: 0, scope: !3044)
!3084 = !DILocation(line: 151, column: 14, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3044, file: !383, line: 151, column: 7)
!3086 = !DILocation(line: 151, column: 22, scope: !3085)
!3087 = !DILocation(line: 151, column: 27, scope: !3085)
!3088 = !DILocation(line: 151, column: 7, scope: !3044)
!3089 = !DILocation(line: 152, column: 12, scope: !3085)
!3090 = !DILocation(line: 152, column: 5, scope: !3085)
!3091 = !DILocalVariable(name: "fp", arg: 1, scope: !3092, file: !383, line: 42, type: !3047)
!3092 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !383, file: !383, line: 42, type: !3093, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !3047}
!3095 = !{!3091}
!3096 = !DILocation(line: 0, scope: !3092, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 157, column: 3, scope: !3044)
!3098 = !DILocation(line: 44, column: 12, scope: !3099, inlinedAt: !3097)
!3099 = distinct !DILexicalBlock(scope: !3092, file: !383, line: 44, column: 7)
!3100 = !DILocation(line: 44, column: 19, scope: !3099, inlinedAt: !3097)
!3101 = !DILocation(line: 44, column: 7, scope: !3092, inlinedAt: !3097)
!3102 = !DILocation(line: 46, column: 5, scope: !3099, inlinedAt: !3097)
!3103 = !DILocation(line: 159, column: 10, scope: !3044)
!3104 = !DILocation(line: 159, column: 3, scope: !3044)
!3105 = !DILocation(line: 236, column: 1, scope: !3044)
!3106 = !DISubprogram(name: "fflush", scope: !143, file: !143, line: 230, type: !3045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!3107 = distinct !DISubprogram(name: "rpl_fseeko", scope: !385, file: !385, line: 28, type: !3108, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !384, retainedNodes: !3145)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!31, !3110, !3144, !31}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !3112)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !3113)
!3113 = !{!3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3112, file: !62, line: 51, baseType: !31, size: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3112, file: !62, line: 54, baseType: !29, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3112, file: !62, line: 55, baseType: !29, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3112, file: !62, line: 56, baseType: !29, size: 64, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3112, file: !62, line: 57, baseType: !29, size: 64, offset: 256)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3112, file: !62, line: 58, baseType: !29, size: 64, offset: 320)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3112, file: !62, line: 59, baseType: !29, size: 64, offset: 384)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3112, file: !62, line: 60, baseType: !29, size: 64, offset: 448)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3112, file: !62, line: 61, baseType: !29, size: 64, offset: 512)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3112, file: !62, line: 64, baseType: !29, size: 64, offset: 576)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3112, file: !62, line: 65, baseType: !29, size: 64, offset: 640)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3112, file: !62, line: 66, baseType: !29, size: 64, offset: 704)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3112, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3112, file: !62, line: 70, baseType: !3128, size: 64, offset: 832)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3112, file: !62, line: 72, baseType: !31, size: 32, offset: 896)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3112, file: !62, line: 73, baseType: !31, size: 32, offset: 928)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3112, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3112, file: !62, line: 77, baseType: !32, size: 16, offset: 1024)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3112, file: !62, line: 78, baseType: !89, size: 8, offset: 1040)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3112, file: !62, line: 79, baseType: !91, size: 8, offset: 1048)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3112, file: !62, line: 81, baseType: !95, size: 64, offset: 1088)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3112, file: !62, line: 89, baseType: !98, size: 64, offset: 1152)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3112, file: !62, line: 91, baseType: !100, size: 64, offset: 1216)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3112, file: !62, line: 92, baseType: !103, size: 64, offset: 1280)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3112, file: !62, line: 93, baseType: !3128, size: 64, offset: 1344)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3112, file: !62, line: 94, baseType: !30, size: 64, offset: 1408)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3112, file: !62, line: 95, baseType: !33, size: 64, offset: 1472)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3112, file: !62, line: 96, baseType: !31, size: 32, offset: 1536)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3112, file: !62, line: 98, baseType: !110, size: 160, offset: 1568)
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !143, line: 63, baseType: !84)
!3145 = !{!3146, !3147, !3148, !3149}
!3146 = !DILocalVariable(name: "fp", arg: 1, scope: !3107, file: !385, line: 28, type: !3110)
!3147 = !DILocalVariable(name: "offset", arg: 2, scope: !3107, file: !385, line: 28, type: !3144)
!3148 = !DILocalVariable(name: "whence", arg: 3, scope: !3107, file: !385, line: 28, type: !31)
!3149 = !DILocalVariable(name: "pos", scope: !3150, file: !385, line: 123, type: !3144)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !385, line: 119, column: 5)
!3151 = distinct !DILexicalBlock(scope: !3107, file: !385, line: 55, column: 7)
!3152 = !DILocation(line: 0, scope: !3107)
!3153 = !DILocation(line: 55, column: 12, scope: !3151)
!3154 = !{!847, !416, i64 16}
!3155 = !DILocation(line: 55, column: 33, scope: !3151)
!3156 = !{!847, !416, i64 8}
!3157 = !DILocation(line: 55, column: 25, scope: !3151)
!3158 = !DILocation(line: 56, column: 7, scope: !3151)
!3159 = !DILocation(line: 56, column: 15, scope: !3151)
!3160 = !DILocation(line: 56, column: 37, scope: !3151)
!3161 = !{!847, !416, i64 32}
!3162 = !DILocation(line: 56, column: 29, scope: !3151)
!3163 = !DILocation(line: 57, column: 7, scope: !3151)
!3164 = !DILocation(line: 57, column: 15, scope: !3151)
!3165 = !{!847, !416, i64 72}
!3166 = !DILocation(line: 57, column: 29, scope: !3151)
!3167 = !DILocation(line: 55, column: 7, scope: !3107)
!3168 = !DILocation(line: 123, column: 26, scope: !3150)
!3169 = !DILocation(line: 123, column: 19, scope: !3150)
!3170 = !DILocation(line: 0, scope: !3150)
!3171 = !DILocation(line: 124, column: 15, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3150, file: !385, line: 124, column: 11)
!3173 = !DILocation(line: 124, column: 11, scope: !3150)
!3174 = !DILocation(line: 135, column: 12, scope: !3150)
!3175 = !DILocation(line: 135, column: 19, scope: !3150)
!3176 = !DILocation(line: 136, column: 12, scope: !3150)
!3177 = !DILocation(line: 136, column: 20, scope: !3150)
!3178 = !{!847, !848, i64 144}
!3179 = !DILocation(line: 167, column: 7, scope: !3150)
!3180 = !DILocation(line: 169, column: 10, scope: !3107)
!3181 = !DILocation(line: 169, column: 3, scope: !3107)
!3182 = !DILocation(line: 170, column: 1, scope: !3107)
!3183 = !DISubprogram(name: "fseeko", scope: !143, file: !143, line: 736, type: !3184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!31, !3110, !84, !31}
!3186 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !320, file: !320, line: 100, type: !3187, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !3190)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!33, !1007, !6, !33, !3189}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!3190 = !{!3191, !3192, !3193, !3194, !3195}
!3191 = !DILocalVariable(name: "pwc", arg: 1, scope: !3186, file: !320, line: 100, type: !1007)
!3192 = !DILocalVariable(name: "s", arg: 2, scope: !3186, file: !320, line: 100, type: !6)
!3193 = !DILocalVariable(name: "n", arg: 3, scope: !3186, file: !320, line: 100, type: !33)
!3194 = !DILocalVariable(name: "ps", arg: 4, scope: !3186, file: !320, line: 100, type: !3189)
!3195 = !DILocalVariable(name: "ret", scope: !3186, file: !320, line: 130, type: !33)
!3196 = !DILocation(line: 0, scope: !3186)
!3197 = !DILocation(line: 105, column: 9, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3186, file: !320, line: 105, column: 7)
!3199 = !DILocation(line: 105, column: 7, scope: !3186)
!3200 = !DILocation(line: 117, column: 10, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3186, file: !320, line: 117, column: 7)
!3202 = !DILocation(line: 117, column: 7, scope: !3186)
!3203 = !DILocation(line: 130, column: 16, scope: !3186)
!3204 = !DILocation(line: 135, column: 11, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3186, file: !320, line: 135, column: 7)
!3206 = !DILocation(line: 135, column: 25, scope: !3205)
!3207 = !DILocation(line: 135, column: 30, scope: !3205)
!3208 = !DILocation(line: 135, column: 7, scope: !3186)
!3209 = !DILocalVariable(name: "ps", arg: 1, scope: !3210, file: !980, line: 1135, type: !3189)
!3210 = distinct !DISubprogram(name: "mbszero", scope: !980, file: !980, line: 1135, type: !3211, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !3189}
!3213 = !{!3209}
!3214 = !DILocation(line: 0, scope: !3210, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 137, column: 5, scope: !3205)
!3216 = !DILocalVariable(name: "__dest", arg: 1, scope: !3217, file: !989, line: 57, type: !30)
!3217 = distinct !DISubprogram(name: "memset", scope: !989, file: !989, line: 57, type: !990, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !3218)
!3218 = !{!3216, !3219, !3220}
!3219 = !DILocalVariable(name: "__ch", arg: 2, scope: !3217, file: !989, line: 57, type: !31)
!3220 = !DILocalVariable(name: "__len", arg: 3, scope: !3217, file: !989, line: 57, type: !33)
!3221 = !DILocation(line: 0, scope: !3217, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 1137, column: 3, scope: !3210, inlinedAt: !3215)
!3223 = !DILocation(line: 59, column: 10, scope: !3217, inlinedAt: !3222)
!3224 = !DILocation(line: 137, column: 5, scope: !3205)
!3225 = !DILocation(line: 138, column: 11, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3186, file: !320, line: 138, column: 7)
!3227 = !DILocation(line: 138, column: 7, scope: !3186)
!3228 = !DILocation(line: 139, column: 5, scope: !3226)
!3229 = !DILocation(line: 143, column: 26, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3186, file: !320, line: 143, column: 7)
!3231 = !DILocation(line: 143, column: 41, scope: !3230)
!3232 = !DILocation(line: 143, column: 7, scope: !3186)
!3233 = !DILocation(line: 145, column: 15, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !320, line: 145, column: 11)
!3235 = distinct !DILexicalBlock(scope: !3230, file: !320, line: 144, column: 5)
!3236 = !DILocation(line: 145, column: 11, scope: !3235)
!3237 = !DILocation(line: 146, column: 32, scope: !3234)
!3238 = !DILocation(line: 146, column: 16, scope: !3234)
!3239 = !DILocation(line: 146, column: 14, scope: !3234)
!3240 = !DILocation(line: 146, column: 9, scope: !3234)
!3241 = !DILocation(line: 286, column: 1, scope: !3186)
!3242 = !DISubprogram(name: "mbsinit", scope: !3243, file: !3243, line: 293, type: !3244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !429)
!3243 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!31, !3246}
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!3248 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !387, file: !387, line: 27, type: !2463, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3249)
!3249 = !{!3250, !3251, !3252, !3253}
!3250 = !DILocalVariable(name: "ptr", arg: 1, scope: !3248, file: !387, line: 27, type: !30)
!3251 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3248, file: !387, line: 27, type: !33)
!3252 = !DILocalVariable(name: "size", arg: 3, scope: !3248, file: !387, line: 27, type: !33)
!3253 = !DILocalVariable(name: "nbytes", scope: !3248, file: !387, line: 29, type: !33)
!3254 = !DILocation(line: 0, scope: !3248)
!3255 = !DILocation(line: 30, column: 7, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3248, file: !387, line: 30, column: 7)
!3257 = !DILocalVariable(name: "ptr", arg: 1, scope: !3258, file: !2554, line: 2057, type: !30)
!3258 = distinct !DISubprogram(name: "rpl_realloc", scope: !2554, file: !2554, line: 2057, type: !2546, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !3259)
!3259 = !{!3257, !3260}
!3260 = !DILocalVariable(name: "size", arg: 2, scope: !3258, file: !2554, line: 2057, type: !33)
!3261 = !DILocation(line: 0, scope: !3258, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 37, column: 10, scope: !3248)
!3263 = !DILocation(line: 2059, column: 24, scope: !3258, inlinedAt: !3262)
!3264 = !DILocation(line: 2059, column: 10, scope: !3258, inlinedAt: !3262)
!3265 = !DILocation(line: 37, column: 3, scope: !3248)
!3266 = !DILocation(line: 32, column: 7, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3256, file: !387, line: 31, column: 5)
!3268 = !DILocation(line: 32, column: 13, scope: !3267)
!3269 = !DILocation(line: 33, column: 7, scope: !3267)
!3270 = !DILocation(line: 38, column: 1, scope: !3248)
!3271 = distinct !DISubprogram(name: "hard_locale", scope: !390, file: !390, line: 28, type: !3272, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!45, !31}
!3274 = !{!3275, !3276}
!3275 = !DILocalVariable(name: "category", arg: 1, scope: !3271, file: !390, line: 28, type: !31)
!3276 = !DILocalVariable(name: "locale", scope: !3271, file: !390, line: 30, type: !3277)
!3277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3278)
!3278 = !{!3279}
!3279 = !DISubrange(count: 257)
!3280 = !DILocation(line: 0, scope: !3271)
!3281 = !DILocation(line: 30, column: 3, scope: !3271)
!3282 = !DILocation(line: 30, column: 8, scope: !3271)
!3283 = !DILocation(line: 32, column: 7, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3271, file: !390, line: 32, column: 7)
!3285 = !DILocation(line: 32, column: 7, scope: !3271)
!3286 = !DILocalVariable(name: "__s1", arg: 1, scope: !3287, file: !445, line: 1359, type: !6)
!3287 = distinct !DISubprogram(name: "streq", scope: !445, file: !445, line: 1359, type: !446, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !3288)
!3288 = !{!3286, !3289}
!3289 = !DILocalVariable(name: "__s2", arg: 2, scope: !3287, file: !445, line: 1359, type: !6)
!3290 = !DILocation(line: 0, scope: !3287, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 35, column: 9, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3271, file: !390, line: 35, column: 7)
!3293 = !DILocation(line: 1361, column: 11, scope: !3287, inlinedAt: !3291)
!3294 = !DILocation(line: 1361, column: 10, scope: !3287, inlinedAt: !3291)
!3295 = !DILocation(line: 35, column: 29, scope: !3292)
!3296 = !DILocation(line: 0, scope: !3287, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 35, column: 32, scope: !3292)
!3298 = !DILocation(line: 1361, column: 11, scope: !3287, inlinedAt: !3297)
!3299 = !DILocation(line: 1361, column: 10, scope: !3287, inlinedAt: !3297)
!3300 = !DILocation(line: 35, column: 7, scope: !3271)
!3301 = !DILocation(line: 46, column: 3, scope: !3271)
!3302 = !DILocation(line: 47, column: 1, scope: !3271)
!3303 = distinct !DISubprogram(name: "setlocale_null_r", scope: !392, file: !392, line: 154, type: !3304, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!31, !31, !29, !33}
!3306 = !{!3307, !3308, !3309}
!3307 = !DILocalVariable(name: "category", arg: 1, scope: !3303, file: !392, line: 154, type: !31)
!3308 = !DILocalVariable(name: "buf", arg: 2, scope: !3303, file: !392, line: 154, type: !29)
!3309 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3303, file: !392, line: 154, type: !33)
!3310 = !DILocation(line: 0, scope: !3303)
!3311 = !DILocation(line: 159, column: 10, scope: !3303)
!3312 = !DILocation(line: 159, column: 3, scope: !3303)
!3313 = distinct !DISubprogram(name: "setlocale_null", scope: !392, file: !392, line: 186, type: !3314, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!6, !31}
!3316 = !{!3317}
!3317 = !DILocalVariable(name: "category", arg: 1, scope: !3313, file: !392, line: 186, type: !31)
!3318 = !DILocation(line: 0, scope: !3313)
!3319 = !DILocation(line: 189, column: 10, scope: !3313)
!3320 = !DILocation(line: 189, column: 3, scope: !3313)
!3321 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !394, file: !394, line: 35, type: !3314, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3322)
!3322 = !{!3323, !3324}
!3323 = !DILocalVariable(name: "category", arg: 1, scope: !3321, file: !394, line: 35, type: !31)
!3324 = !DILocalVariable(name: "result", scope: !3321, file: !394, line: 37, type: !6)
!3325 = !DILocation(line: 0, scope: !3321)
!3326 = !DILocation(line: 37, column: 24, scope: !3321)
!3327 = !DILocation(line: 62, column: 3, scope: !3321)
!3328 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !394, file: !394, line: 66, type: !3304, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3334}
!3330 = !DILocalVariable(name: "category", arg: 1, scope: !3328, file: !394, line: 66, type: !31)
!3331 = !DILocalVariable(name: "buf", arg: 2, scope: !3328, file: !394, line: 66, type: !29)
!3332 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3328, file: !394, line: 66, type: !33)
!3333 = !DILocalVariable(name: "result", scope: !3328, file: !394, line: 111, type: !6)
!3334 = !DILocalVariable(name: "length", scope: !3335, file: !394, line: 125, type: !33)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !394, line: 124, column: 5)
!3336 = distinct !DILexicalBlock(scope: !3328, file: !394, line: 113, column: 7)
!3337 = !DILocation(line: 0, scope: !3328)
!3338 = !DILocation(line: 0, scope: !3321, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 111, column: 24, scope: !3328)
!3340 = !DILocation(line: 37, column: 24, scope: !3321, inlinedAt: !3339)
!3341 = !DILocation(line: 113, column: 14, scope: !3336)
!3342 = !DILocation(line: 113, column: 7, scope: !3328)
!3343 = !DILocation(line: 116, column: 19, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !394, line: 116, column: 11)
!3345 = distinct !DILexicalBlock(scope: !3336, file: !394, line: 114, column: 5)
!3346 = !DILocation(line: 116, column: 11, scope: !3345)
!3347 = !DILocation(line: 120, column: 16, scope: !3344)
!3348 = !DILocation(line: 120, column: 9, scope: !3344)
!3349 = !DILocation(line: 125, column: 23, scope: !3335)
!3350 = !DILocation(line: 0, scope: !3335)
!3351 = !DILocation(line: 126, column: 18, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3335, file: !394, line: 126, column: 11)
!3353 = !DILocation(line: 126, column: 11, scope: !3335)
!3354 = !DILocation(line: 128, column: 39, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3352, file: !394, line: 127, column: 9)
!3356 = !DILocalVariable(name: "__dest", arg: 1, scope: !3357, file: !989, line: 26, type: !2821)
!3357 = distinct !DISubprogram(name: "memcpy", scope: !989, file: !989, line: 26, type: !2819, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !3358)
!3358 = !{!3356, !3359, !3360}
!3359 = !DILocalVariable(name: "__src", arg: 2, scope: !3357, file: !989, line: 26, type: !617)
!3360 = !DILocalVariable(name: "__len", arg: 3, scope: !3357, file: !989, line: 26, type: !33)
!3361 = !DILocation(line: 0, scope: !3357, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 128, column: 11, scope: !3355)
!3363 = !DILocation(line: 29, column: 10, scope: !3357, inlinedAt: !3362)
!3364 = !DILocation(line: 129, column: 11, scope: !3355)
!3365 = !DILocation(line: 133, column: 23, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !394, line: 133, column: 15)
!3367 = distinct !DILexicalBlock(scope: !3352, file: !394, line: 132, column: 9)
!3368 = !DILocation(line: 133, column: 15, scope: !3367)
!3369 = !DILocation(line: 138, column: 44, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3366, file: !394, line: 134, column: 13)
!3371 = !DILocation(line: 0, scope: !3357, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 138, column: 15, scope: !3370)
!3373 = !DILocation(line: 29, column: 10, scope: !3357, inlinedAt: !3372)
!3374 = !DILocation(line: 139, column: 15, scope: !3370)
!3375 = !DILocation(line: 139, column: 32, scope: !3370)
!3376 = !DILocation(line: 140, column: 13, scope: !3370)
!3377 = !DILocation(line: 0, scope: !3336)
!3378 = !DILocation(line: 145, column: 1, scope: !3328)
