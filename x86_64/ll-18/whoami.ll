; ModuleID = 'src/whoami.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [85 x i8] c"Print the user name associated with the current effective user ID.\0ASame as id -un.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"whoami\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [33 x i8] c"cannot find name for user ID %ju\00", align 1, !dbg !59
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !64
@.str.13 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !103
@.str.14 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !108
@.str.15 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !110
@.str.16 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !115
@.str.30 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !155
@.str.31 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !157
@.str.32 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !159
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !161
@.str.34 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !166
@.str.35 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !171
@.str.36 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !176
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !178
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !180
@.str.39 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !182
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !196
@.str.44 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !198
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !203
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !208
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !213
@.str.17 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !296
@Version = dso_local local_unnamed_addr global ptr @.str.17, align 8, !dbg !299
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !303
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !316
@.str.20 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !308
@.str.1.21 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !310
@.str.2.22 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !312
@.str.3.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !314
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !318
@stderr = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !324
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !355
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !326
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !345
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !347
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !349
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !351
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !353
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !357
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !359
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !364
@opterr = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !369
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.41, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.42, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !372
@optind = external local_unnamed_addr global i32, align 4
@.str.1.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !377
@.str.2.41 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !379
@.str.3.42 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !381
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !393
@.str.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !399
@.str.1.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !401
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !403
@.str.54 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !434
@.str.1.55 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !437
@.str.2.56 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !439
@.str.3.57 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !444
@.str.4.58 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !446
@.str.5.59 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !448
@.str.6.60 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !450
@.str.7.61 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !452
@.str.8.62 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !454
@.str.9.63 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !456
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.54, ptr @.str.1.55, ptr @.str.2.56, ptr @.str.3.57, ptr @.str.4.58, ptr @.str.5.59, ptr @.str.6.60, ptr @.str.7.61, ptr @.str.8.62, ptr @.str.9.63, ptr null], align 16, !dbg !458
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !483
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !497
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !535
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !542
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !499
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !544
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !487
@.str.10.66 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !504
@.str.11.64 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !506
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !508
@.str.13.65 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !510
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !512
@.str.72 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !550
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !553
@.str.2.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !555
@.str.3.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !557
@.str.4.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !559
@.str.5.77 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !561
@.str.6.78 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !566
@.str.7.79 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !571
@.str.8.80 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !573
@.str.9.81 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !575
@.str.10.82 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !580
@.str.11.83 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !585
@.str.12.84 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !590
@.str.13.85 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !592
@.str.14.86 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !597
@.str.15.87 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !602
@.str.16.88 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !607
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.93 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !612
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !614
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !616
@.str.20.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !618
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !620
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !622
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !624
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !629
@exit_failure = dso_local global i32 1, align 4, !dbg !637
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !643
@.str.1.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !646
@.str.2.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !648
@.str.118 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !650
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !653
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !668

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !742 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !746, metadata !DIExpression()), !dbg !747
  %2 = icmp eq i32 %0, 0, !dbg !748
  br i1 %2, label %8, label %3, !dbg !750

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !751, !tbaa !753
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !751
  %6 = load ptr, ptr @program_name, align 8, !dbg !751, !tbaa !753
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !751
  br label %31, !dbg !751

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !757
  %10 = load ptr, ptr @program_name, align 8, !dbg !757, !tbaa !753
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !757
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !759
  %13 = load ptr, ptr @stdout, align 8, !dbg !759, !tbaa !753
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !759
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !760
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !760
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !761
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !761
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !762, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata !781, metadata !775, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata ptr poison, metadata !774, metadata !DIExpression()), !dbg !779
  tail call void @emit_bug_reporting_address() #37, !dbg !782
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !783
  call void @llvm.dbg.value(metadata ptr %17, metadata !777, metadata !DIExpression()), !dbg !779
  %18 = icmp eq ptr %17, null, !dbg !784
  br i1 %18, label %26, label %19, !dbg !786

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #38, !dbg !787
  %21 = icmp eq i32 %20, 0, !dbg !787
  br i1 %21, label %26, label %22, !dbg !788

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #37, !dbg !789
  %24 = load ptr, ptr @stdout, align 8, !dbg !789, !tbaa !753
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !789
  br label %26, !dbg !791

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !774, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !778, metadata !DIExpression()), !dbg !779
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !792
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #37, !dbg !792
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !793
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #37, !dbg !793
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !794
  unreachable, !dbg !794
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !795 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !799 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !805 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !808 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !219, metadata !DIExpression()), !dbg !812
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !220, metadata !DIExpression()), !dbg !812
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !813, !tbaa !814
  %3 = icmp eq i32 %2, -1, !dbg !816
  br i1 %3, label %4, label %16, !dbg !817

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #37, !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !221, metadata !DIExpression()), !dbg !819
  %6 = icmp eq ptr %5, null, !dbg !820
  br i1 %6, label %14, label %7, !dbg !821

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !822, !tbaa !823
  %9 = icmp eq i8 %8, 0, !dbg !822
  br i1 %9, label %14, label %10, !dbg !824

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !825, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !831, metadata !DIExpression()), !dbg !832
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #38, !dbg !834
  %12 = icmp eq i32 %11, 0, !dbg !835
  %13 = zext i1 %12 to i32, !dbg !824
  br label %14, !dbg !824

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !836, !tbaa !814
  br label %16, !dbg !837

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !838
  %18 = icmp eq i32 %17, 0, !dbg !838
  br i1 %18, label %22, label %19, !dbg !840

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !841, !tbaa !753
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !841
  br label %124, !dbg !843

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !224, metadata !DIExpression()), !dbg !812
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #38, !dbg !844
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !845
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !812
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !846
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !227, metadata !DIExpression()), !dbg !812
  %26 = icmp eq ptr %25, null, !dbg !847
  br i1 %26, label %54, label %27, !dbg !848

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !849
  br i1 %28, label %54, label %29, !dbg !850

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !228, metadata !DIExpression()), !dbg !851
  tail call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()), !dbg !851
  %30 = icmp ult ptr %24, %25, !dbg !852
  br i1 %30, label %31, label %54, !dbg !853

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !812
  %33 = load ptr, ptr %32, align 8, !tbaa !753
  br label %34, !dbg !853

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !228, metadata !DIExpression()), !dbg !851
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !232, metadata !DIExpression()), !dbg !851
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !854
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !228, metadata !DIExpression()), !dbg !851
  %38 = load i8, ptr %35, align 1, !dbg !854, !tbaa !823
  %39 = sext i8 %38 to i64, !dbg !854
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !854
  %41 = load i16, ptr %40, align 2, !dbg !854, !tbaa !855
  %42 = freeze i16 %41, !dbg !857
  %43 = lshr i16 %42, 13, !dbg !857
  %44 = and i16 %43, 1, !dbg !857
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !858
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !232, metadata !DIExpression()), !dbg !851
  %47 = icmp ult ptr %37, %25, !dbg !852
  %48 = icmp ult i64 %46, 2, !dbg !859
  %49 = select i1 %47, i1 %48, i1 false, !dbg !859
  br i1 %49, label %34, label %50, !dbg !853, !llvm.loop !860

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !862
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !864
  %53 = zext i1 %51 to i8, !dbg !864
  br label %54, !dbg !864

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !812
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !812
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !224, metadata !DIExpression()), !dbg !812
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !227, metadata !DIExpression()), !dbg !812
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.16) #38, !dbg !865
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !233, metadata !DIExpression()), !dbg !812
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !866
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !234, metadata !DIExpression()), !dbg !812
  br label %59, !dbg !867

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !812
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !812
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !224, metadata !DIExpression()), !dbg !812
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !234, metadata !DIExpression()), !dbg !812
  %62 = load i8, ptr %60, align 1, !dbg !868, !tbaa !823
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !869

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !870
  %65 = load i8, ptr %64, align 1, !dbg !873, !tbaa !823
  %66 = icmp eq i8 %65, 45, !dbg !874
  %67 = select i1 %66, i8 0, i8 %61, !dbg !875
  br label %68, !dbg !875

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !812
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !224, metadata !DIExpression()), !dbg !812
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !876
  %71 = load ptr, ptr %70, align 8, !dbg !876, !tbaa !753
  %72 = sext i8 %62 to i64, !dbg !876
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !876
  %74 = load i16, ptr %73, align 2, !dbg !876, !tbaa !855
  %75 = and i16 %74, 8192, !dbg !876
  %76 = icmp eq i16 %75, 0, !dbg !876
  br i1 %76, label %92, label %77, !dbg !878

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !879
  br i1 %78, label %94, label %79, !dbg !882

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !883
  %81 = load i8, ptr %80, align 1, !dbg !883, !tbaa !823
  %82 = sext i8 %81 to i64, !dbg !883
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !883
  %84 = load i16, ptr %83, align 2, !dbg !883, !tbaa !855
  %85 = and i16 %84, 8192, !dbg !883
  %86 = icmp eq i16 %85, 0, !dbg !883
  br i1 %86, label %87, label %94, !dbg !884

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !885
  %89 = icmp ne i8 %88, 0, !dbg !885
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !887
  br i1 %91, label %92, label %94, !dbg !887

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !888
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !234, metadata !DIExpression()), !dbg !812
  br label %59, !dbg !867, !llvm.loop !889

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !891
  %96 = load ptr, ptr @stdout, align 8, !dbg !891, !tbaa !753
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !891
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata !781, metadata !831, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata !781, metadata !831, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata !781, metadata !831, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata !781, metadata !831, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata !781, metadata !831, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata !781, metadata !831, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata !781, metadata !831, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata !781, metadata !831, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata !781, metadata !831, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata !781, metadata !831, metadata !DIExpression()), !dbg !910
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !291, metadata !DIExpression()), !dbg !812
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #38, !dbg !912
  %99 = icmp eq i32 %98, 0, !dbg !912
  br i1 %99, label %103, label %100, !dbg !914

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #38, !dbg !915
  %102 = icmp eq i32 %101, 0, !dbg !915
  br i1 %102, label %103, label %106, !dbg !916

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !917
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !917
  br label %109, !dbg !919

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !920
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !920
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !922, !tbaa !753
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %110), !dbg !922
  %112 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !753
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %112), !dbg !923
  %114 = ptrtoint ptr %60 to i64, !dbg !924
  %115 = sub i64 %114, %95, !dbg !924
  %116 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !753
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !924
  %118 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !753
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %118), !dbg !925
  %120 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !753
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %120), !dbg !926
  %122 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !753
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !927
  br label %124, !dbg !928

124:                                              ; preds = %109, %19
  ret void, !dbg !928
}

; Function Attrs: nounwind
declare !dbg !929 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !933 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !937 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !939 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !942 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !945 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !948 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !951 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !957 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !958 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !964 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !969, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !970, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !971, metadata !DIExpression()), !dbg !989
  %3 = load ptr, ptr %1, align 8, !dbg !990, !tbaa !753
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !991
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #37, !dbg !992
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #37, !dbg !993
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #37, !dbg !994
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !995
  %8 = load ptr, ptr @Version, align 8, !dbg !996, !tbaa !753
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #37, !dbg !997
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #37, !dbg !998
  %10 = load i32, ptr @optind, align 4, !dbg !999, !tbaa !814
  %11 = icmp eq i32 %10, %0, !dbg !1001
  br i1 %11, label %19, label %12, !dbg !1002

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !1003
  %14 = load i32, ptr @optind, align 4, !dbg !1003, !tbaa !814
  %15 = sext i32 %14 to i64, !dbg !1003
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1003
  %17 = load ptr, ptr %16, align 8, !dbg !1003, !tbaa !753
  %18 = tail call ptr @quote(ptr noundef %17) #37, !dbg !1003
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #37, !dbg !1003
  tail call void @usage(i32 noundef 1) #41, !dbg !1005
  unreachable, !dbg !1005

19:                                               ; preds = %2
  %20 = tail call ptr @__errno_location() #40, !dbg !1006
  store i32 0, ptr %20, align 4, !dbg !1007, !tbaa !814
  %21 = tail call i32 @geteuid() #37, !dbg !1008
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !975, metadata !DIExpression()), !dbg !989
  %22 = icmp eq i32 %21, -1, !dbg !1009
  br i1 %22, label %23, label %26, !dbg !1010

23:                                               ; preds = %19
  %24 = load i32, ptr %20, align 4, !dbg !1011, !tbaa !814
  %25 = icmp eq i32 %24, 0, !dbg !1011
  br i1 %25, label %26, label %31, !dbg !1012

26:                                               ; preds = %19, %23
  %27 = tail call ptr @getpwuid(i32 noundef %21) #37, !dbg !1013
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !976, metadata !DIExpression()), !dbg !989
  %28 = icmp eq ptr %27, null, !dbg !1014
  br i1 %28, label %29, label %35, !dbg !1016

29:                                               ; preds = %26
  %30 = load i32, ptr %20, align 4, !dbg !1017, !tbaa !814
  br label %31, !dbg !1016

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %30, %29 ], [ %24, %23 ], !dbg !1017
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !1017
  %34 = zext i32 %21 to i64, !dbg !1017
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %32, ptr noundef %33, i64 noundef %34) #37, !dbg !1017
  unreachable, !dbg !1017

35:                                               ; preds = %26
  %36 = load ptr, ptr %27, align 8, !dbg !1018, !tbaa !1019
  %37 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %36), !dbg !1021
  ret i32 0, !dbg !1022
}

; Function Attrs: nounwind
declare !dbg !1023 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1026 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1027 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1030 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1034 i32 @geteuid() local_unnamed_addr #2

declare !dbg !1038 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1041 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1044 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1046, metadata !DIExpression()), !dbg !1047
  store ptr %0, ptr @file_name, align 8, !dbg !1048, !tbaa !753
  ret void, !dbg !1049
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1050 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1054, metadata !DIExpression()), !dbg !1055
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1056, !tbaa !1057
  ret void, !dbg !1059
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1060 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1065, !tbaa !753
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1066
  %3 = icmp eq i32 %2, 0, !dbg !1067
  br i1 %3, label %22, label %4, !dbg !1068

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1069, !tbaa !1057, !range !1070, !noundef !781
  %6 = icmp eq i8 %5, 0, !dbg !1069
  br i1 %6, label %11, label %7, !dbg !1071

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1072
  %9 = load i32, ptr %8, align 4, !dbg !1072, !tbaa !814
  %10 = icmp eq i32 %9, 32, !dbg !1073
  br i1 %10, label %22, label %11, !dbg !1074

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #37, !dbg !1075
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1062, metadata !DIExpression()), !dbg !1076
  %13 = load ptr, ptr @file_name, align 8, !dbg !1077, !tbaa !753
  %14 = icmp eq ptr %13, null, !dbg !1077
  %15 = tail call ptr @__errno_location() #40, !dbg !1079
  %16 = load i32, ptr %15, align 4, !dbg !1079, !tbaa !814
  br i1 %14, label %19, label %17, !dbg !1080

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1081
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #37, !dbg !1081
  br label %20, !dbg !1081

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #37, !dbg !1082
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1083, !tbaa !814
  tail call void @_exit(i32 noundef %21) #39, !dbg !1084
  unreachable, !dbg !1084

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1085, !tbaa !753
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1087
  %25 = icmp eq i32 %24, 0, !dbg !1088
  br i1 %25, label %28, label %26, !dbg !1089

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1090, !tbaa !814
  tail call void @_exit(i32 noundef %27) #39, !dbg !1091
  unreachable, !dbg !1091

28:                                               ; preds = %22
  ret void, !dbg !1092
}

; Function Attrs: noreturn
declare !dbg !1093 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1094 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1098, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1099, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1100, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1101, metadata !DIExpression()), !dbg !1102
  tail call fastcc void @flush_stdout(), !dbg !1103
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1104, !tbaa !753
  %6 = icmp eq ptr %5, null, !dbg !1104
  br i1 %6, label %8, label %7, !dbg !1106

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1107
  br label %12, !dbg !1107

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1108, !tbaa !753
  %10 = tail call ptr @getprogname() #38, !dbg !1108
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %10) #37, !dbg !1108
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1110
  ret void, !dbg !1111
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1112 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1114, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i32 1, metadata !1116, metadata !DIExpression()), !dbg !1121
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1124
  %2 = icmp slt i32 %1, 0, !dbg !1125
  br i1 %2, label %6, label %3, !dbg !1126

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1127, !tbaa !753
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1127
  br label %6, !dbg !1127

6:                                                ; preds = %3, %0
  ret void, !dbg !1128
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1129 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1135
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1131, metadata !DIExpression()), !dbg !1136
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1132, metadata !DIExpression()), !dbg !1136
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1133, metadata !DIExpression()), !dbg !1136
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1134, metadata !DIExpression()), !dbg !1136
  %6 = load ptr, ptr @stderr, align 8, !dbg !1137, !tbaa !753
  call void @llvm.dbg.value(metadata ptr %6, metadata !1138, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr %2, metadata !1178, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr %3, metadata !1179, metadata !DIExpression()), !dbg !1180
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1182
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1183, !tbaa !814
  %9 = add i32 %8, 1, !dbg !1183
  store i32 %9, ptr @error_message_count, align 4, !dbg !1183, !tbaa !814
  %10 = icmp eq i32 %1, 0, !dbg !1184
  br i1 %10, label %20, label %11, !dbg !1186

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1187, metadata !DIExpression(), metadata !1135, metadata ptr %5, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 %1, metadata !1190, metadata !DIExpression()), !dbg !1195
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1197
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1198
  call void @llvm.dbg.value(metadata ptr %12, metadata !1191, metadata !DIExpression()), !dbg !1195
  %13 = icmp eq ptr %12, null, !dbg !1199
  br i1 %13, label %14, label %16, !dbg !1201

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #37, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %15, metadata !1191, metadata !DIExpression()), !dbg !1195
  br label %16, !dbg !1203

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1195
  call void @llvm.dbg.value(metadata ptr %17, metadata !1191, metadata !DIExpression()), !dbg !1195
  %18 = load ptr, ptr @stderr, align 8, !dbg !1204, !tbaa !753
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %17) #37, !dbg !1204
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1205
  br label %20, !dbg !1206

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1207, !tbaa !753
  call void @llvm.dbg.value(metadata i32 10, metadata !1208, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata ptr %21, metadata !1214, metadata !DIExpression()), !dbg !1215
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1217
  %23 = load ptr, ptr %22, align 8, !dbg !1217, !tbaa !1218
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1217
  %25 = load ptr, ptr %24, align 8, !dbg !1217, !tbaa !1221
  %26 = icmp ult ptr %23, %25, !dbg !1217
  br i1 %26, label %29, label %27, !dbg !1217, !prof !1222

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1217
  br label %31, !dbg !1217

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1217
  store ptr %30, ptr %22, align 8, !dbg !1217, !tbaa !1218
  store i8 10, ptr %23, align 1, !dbg !1217, !tbaa !823
  br label %31, !dbg !1217

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1223, !tbaa !753
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1223
  %34 = icmp eq i32 %0, 0, !dbg !1224
  br i1 %34, label %36, label %35, !dbg !1226

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1227
  unreachable, !dbg !1227

36:                                               ; preds = %31
  ret void, !dbg !1228
}

declare !dbg !1229 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1232 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1235 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1238 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1241 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1245 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1258
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1252, metadata !DIExpression(), metadata !1258, metadata ptr %4, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1249, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1250, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1251, metadata !DIExpression()), !dbg !1259
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1260
  call void @llvm.va_start(ptr nonnull %4), !dbg !1261
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1262
  call void @llvm.va_end(ptr nonnull %4), !dbg !1263
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1264
  ret void, !dbg !1264
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !328 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !339, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !340, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !341, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !342, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !343, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !344, metadata !DIExpression()), !dbg !1265
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1266, !tbaa !814
  %8 = icmp eq i32 %7, 0, !dbg !1266
  br i1 %8, label %23, label %9, !dbg !1268

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1269, !tbaa !814
  %11 = icmp eq i32 %10, %3, !dbg !1272
  br i1 %11, label %12, label %22, !dbg !1273

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1274, !tbaa !753
  %14 = icmp eq ptr %13, %2, !dbg !1275
  br i1 %14, label %36, label %15, !dbg !1276

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1277
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1278
  br i1 %18, label %19, label %22, !dbg !1278

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1279
  %21 = icmp eq i32 %20, 0, !dbg !1280
  br i1 %21, label %36, label %22, !dbg !1281

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1282, !tbaa !753
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1283, !tbaa !814
  br label %23, !dbg !1284

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1285
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1286, !tbaa !753
  %25 = icmp eq ptr %24, null, !dbg !1286
  br i1 %25, label %27, label %26, !dbg !1288

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1289
  br label %31, !dbg !1289

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1290, !tbaa !753
  %29 = tail call ptr @getprogname() #38, !dbg !1290
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %29) #37, !dbg !1290
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1292, !tbaa !753
  %33 = icmp eq ptr %2, null, !dbg !1292
  %34 = select i1 %33, ptr @.str.3.31, ptr @.str.2.32, !dbg !1292
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1292
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1293
  br label %36, !dbg !1294

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1294
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1295 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1305
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1304, metadata !DIExpression(), metadata !1305, metadata ptr %6, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1299, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1300, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1301, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1302, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1303, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1307
  call void @llvm.va_start(ptr nonnull %6), !dbg !1308
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1309
  call void @llvm.va_end(ptr nonnull %6), !dbg !1310
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1311
  ret void, !dbg !1311
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1312 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1315, !tbaa !753
  ret ptr %1, !dbg !1316
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1317 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1347
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1332, metadata !DIExpression(), metadata !1347, metadata ptr %7, metadata !DIExpression()), !dbg !1348
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1322, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1323, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1324, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1325, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1326, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1327, metadata !DIExpression()), !dbg !1349
  %8 = load i32, ptr @opterr, align 4, !dbg !1350, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1328, metadata !DIExpression()), !dbg !1349
  store i32 0, ptr @opterr, align 4, !dbg !1351, !tbaa !814
  %9 = icmp eq i32 %0, 2, !dbg !1352
  br i1 %9, label %10, label %15, !dbg !1353

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1354
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1329, metadata !DIExpression()), !dbg !1355
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1356

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #37, !dbg !1357
  br label %15, !dbg !1358

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #37, !dbg !1359
  call void @llvm.va_start(ptr nonnull %7), !dbg !1360
  %14 = load ptr, ptr @stdout, align 8, !dbg !1361, !tbaa !753
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #37, !dbg !1362
  call void @exit(i32 noundef 0) #39, !dbg !1363
  unreachable, !dbg !1363

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1364, !tbaa !814
  store i32 0, ptr @optind, align 4, !dbg !1365, !tbaa !814
  ret void, !dbg !1366
}

; Function Attrs: nounwind
declare !dbg !1367 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1373 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1387, metadata !DIExpression(), metadata !1392, metadata ptr %8, metadata !DIExpression()), !dbg !1393
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1377, metadata !DIExpression()), !dbg !1394
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1378, metadata !DIExpression()), !dbg !1394
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1379, metadata !DIExpression()), !dbg !1394
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1380, metadata !DIExpression()), !dbg !1394
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1381, metadata !DIExpression()), !dbg !1394
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1382, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1394
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1383, metadata !DIExpression()), !dbg !1394
  %9 = load i32, ptr @opterr, align 4, !dbg !1395, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1384, metadata !DIExpression()), !dbg !1394
  store i32 1, ptr @opterr, align 4, !dbg !1396, !tbaa !814
  %10 = select i1 %5, ptr @.str.1.45, ptr @.str.40, !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1385, metadata !DIExpression()), !dbg !1394
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1386, metadata !DIExpression()), !dbg !1394
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1399

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #37, !dbg !1400
  call void @llvm.va_start(ptr nonnull %8), !dbg !1401
  %13 = load ptr, ptr @stdout, align 8, !dbg !1402, !tbaa !753
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #37, !dbg !1403
  call void @exit(i32 noundef 0) #39, !dbg !1404
  unreachable, !dbg !1404

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1405, !tbaa !814
  br label %16, !dbg !1406

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #37, !dbg !1407
  br label %18, !dbg !1408

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1408, !tbaa !814
  ret void, !dbg !1409
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1410 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1412, metadata !DIExpression()), !dbg !1415
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1416
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1413, metadata !DIExpression()), !dbg !1415
  %3 = icmp eq ptr %2, null, !dbg !1417
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1417
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1417
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1414, metadata !DIExpression()), !dbg !1415
  %6 = ptrtoint ptr %5 to i64, !dbg !1418
  %7 = ptrtoint ptr %0 to i64, !dbg !1418
  %8 = sub i64 %6, %7, !dbg !1418
  %9 = icmp sgt i64 %8, 6, !dbg !1420
  br i1 %9, label %10, label %19, !dbg !1421

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1422
  call void @llvm.dbg.value(metadata ptr %11, metadata !1423, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1428, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 7, metadata !1429, metadata !DIExpression()), !dbg !1430
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.50, i64 7), !dbg !1432
  %13 = icmp eq i32 %12, 0, !dbg !1433
  br i1 %13, label %14, label %19, !dbg !1434

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1412, metadata !DIExpression()), !dbg !1415
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.51, i64 noundef 3) #38, !dbg !1435
  %16 = icmp eq i32 %15, 0, !dbg !1438
  %17 = select i1 %16, i64 3, i64 0, !dbg !1439
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1439
  br label %19, !dbg !1439

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1415
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1414, metadata !DIExpression()), !dbg !1415
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1412, metadata !DIExpression()), !dbg !1415
  store ptr %20, ptr @program_name, align 8, !dbg !1440, !tbaa !753
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1441, !tbaa !753
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1442, !tbaa !753
  ret void, !dbg !1443
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1444 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !405 {
  %3 = alloca i32, align 4, !DIAssignID !1445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !415, metadata !DIExpression(), metadata !1445, metadata ptr %3, metadata !DIExpression()), !dbg !1446
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1447
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !1447, metadata ptr %4, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !412, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !413, metadata !DIExpression()), !dbg !1446
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1448
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !414, metadata !DIExpression()), !dbg !1446
  %6 = icmp eq ptr %5, %0, !dbg !1449
  br i1 %6, label %7, label %14, !dbg !1451

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1452
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %4, metadata !1454, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata ptr %4, metadata !1463, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1469, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 8, metadata !1470, metadata !DIExpression()), !dbg !1471
  store i64 0, ptr %4, align 8, !dbg !1473
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1474
  %9 = icmp eq i64 %8, 2, !dbg !1476
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1477
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1446
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1478
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1478
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1446
  ret ptr %15, !dbg !1478
}

; Function Attrs: nounwind
declare !dbg !1479 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1485 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1490, metadata !DIExpression()), !dbg !1493
  %2 = tail call ptr @__errno_location() #40, !dbg !1494
  %3 = load i32, ptr %2, align 4, !dbg !1494, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1491, metadata !DIExpression()), !dbg !1493
  %4 = icmp eq ptr %0, null, !dbg !1495
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1495
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1496
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1492, metadata !DIExpression()), !dbg !1493
  store i32 %3, ptr %2, align 4, !dbg !1497, !tbaa !814
  ret ptr %6, !dbg !1498
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1499 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1505, metadata !DIExpression()), !dbg !1506
  %2 = icmp eq ptr %0, null, !dbg !1507
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1507
  %4 = load i32, ptr %3, align 8, !dbg !1508, !tbaa !1509
  ret i32 %4, !dbg !1511
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1512 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1516, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1517, metadata !DIExpression()), !dbg !1518
  %3 = icmp eq ptr %0, null, !dbg !1519
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1519
  store i32 %1, ptr %4, align 8, !dbg !1520, !tbaa !1509
  ret void, !dbg !1521
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1522 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1526, metadata !DIExpression()), !dbg !1534
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !1534
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1528, metadata !DIExpression()), !dbg !1534
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1529, metadata !DIExpression()), !dbg !1534
  %4 = icmp eq ptr %0, null, !dbg !1535
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1535
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1536
  %7 = lshr i8 %1, 5, !dbg !1537
  %8 = zext nneg i8 %7 to i64, !dbg !1537
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1538
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1530, metadata !DIExpression()), !dbg !1534
  %10 = and i8 %1, 31, !dbg !1539
  %11 = zext nneg i8 %10 to i32, !dbg !1539
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1532, metadata !DIExpression()), !dbg !1534
  %12 = load i32, ptr %9, align 4, !dbg !1540, !tbaa !814
  %13 = lshr i32 %12, %11, !dbg !1541
  %14 = and i32 %13, 1, !dbg !1542
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1533, metadata !DIExpression()), !dbg !1534
  %15 = xor i32 %13, %2, !dbg !1543
  %16 = and i32 %15, 1, !dbg !1543
  %17 = shl nuw i32 %16, %11, !dbg !1544
  %18 = xor i32 %17, %12, !dbg !1545
  store i32 %18, ptr %9, align 4, !dbg !1545, !tbaa !814
  ret i32 %14, !dbg !1546
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1547 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1551, metadata !DIExpression()), !dbg !1554
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1552, metadata !DIExpression()), !dbg !1554
  %3 = icmp eq ptr %0, null, !dbg !1555
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1557
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1551, metadata !DIExpression()), !dbg !1554
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1558
  %6 = load i32, ptr %5, align 4, !dbg !1558, !tbaa !1559
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1553, metadata !DIExpression()), !dbg !1554
  store i32 %1, ptr %5, align 4, !dbg !1560, !tbaa !1559
  ret i32 %6, !dbg !1561
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1562 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1566, metadata !DIExpression()), !dbg !1569
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1567, metadata !DIExpression()), !dbg !1569
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1568, metadata !DIExpression()), !dbg !1569
  %4 = icmp eq ptr %0, null, !dbg !1570
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !1569
  store i32 10, ptr %5, align 8, !dbg !1573, !tbaa !1509
  %6 = icmp ne ptr %1, null, !dbg !1574
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1576
  br i1 %8, label %10, label %9, !dbg !1576

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1577
  unreachable, !dbg !1577

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1578
  store ptr %1, ptr %11, align 8, !dbg !1579, !tbaa !1580
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1581
  store ptr %2, ptr %12, align 8, !dbg !1582, !tbaa !1583
  ret void, !dbg !1584
}

; Function Attrs: noreturn nounwind
declare !dbg !1585 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1586 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1590, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1591, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1592, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1593, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1594, metadata !DIExpression()), !dbg !1598
  %6 = icmp eq ptr %4, null, !dbg !1599
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1599
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1595, metadata !DIExpression()), !dbg !1598
  %8 = tail call ptr @__errno_location() #40, !dbg !1600
  %9 = load i32, ptr %8, align 4, !dbg !1600, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1596, metadata !DIExpression()), !dbg !1598
  %10 = load i32, ptr %7, align 8, !dbg !1601, !tbaa !1509
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1602
  %12 = load i32, ptr %11, align 4, !dbg !1602, !tbaa !1559
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1603
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1604
  %15 = load ptr, ptr %14, align 8, !dbg !1604, !tbaa !1580
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1605
  %17 = load ptr, ptr %16, align 8, !dbg !1605, !tbaa !1583
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1597, metadata !DIExpression()), !dbg !1598
  store i32 %9, ptr %8, align 4, !dbg !1607, !tbaa !814
  ret i64 %18, !dbg !1608
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1609 {
  %10 = alloca i32, align 4, !DIAssignID !1677
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1678
  %12 = alloca i32, align 4, !DIAssignID !1679
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1680
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1681
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1655, metadata !DIExpression(), metadata !1681, metadata ptr %14, metadata !DIExpression()), !dbg !1682
  %15 = alloca i32, align 4, !DIAssignID !1683
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1658, metadata !DIExpression(), metadata !1683, metadata ptr %15, metadata !DIExpression()), !dbg !1684
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1615, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1617, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1618, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1619, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1620, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1621, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1622, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1623, metadata !DIExpression()), !dbg !1685
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1686
  %17 = icmp eq i64 %16, 1, !dbg !1687
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1624, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1627, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1628, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1685
  %18 = trunc i32 %5 to i8, !dbg !1688
  %19 = lshr i8 %18, 1, !dbg !1688
  %20 = and i8 %19, 1, !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1685
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1689

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1690
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1691
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1692
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1693
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1685
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1694
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1695
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1632, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1628, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1627, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1618, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1623, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1622, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1619, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.label(metadata !1633), !dbg !1696
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1685
  switch i32 %29, label %113 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %114
    i32 0, label %112
    i32 2, label %104
    i32 4, label %98
    i32 3, label %96
    i32 1, label %97
    i32 10, label %73
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1697

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1619, metadata !DIExpression()), !dbg !1685
  br label %114, !dbg !1698

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1619, metadata !DIExpression()), !dbg !1685
  %43 = and i8 %37, 1, !dbg !1699
  %44 = icmp eq i8 %43, 0, !dbg !1699
  br i1 %44, label %45, label %114, !dbg !1698

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1701
  br i1 %46, label %114, label %47, !dbg !1704

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1701, !tbaa !823
  br label %114, !dbg !1701

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !521, metadata !DIExpression(), metadata !1679, metadata ptr %12, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.assign(metadata i1 undef, metadata !522, metadata !DIExpression(), metadata !1680, metadata ptr %13, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata ptr @.str.11.64, metadata !518, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %29, metadata !519, metadata !DIExpression()), !dbg !1705
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.11.64, i32 noundef 5) #37, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %49, metadata !520, metadata !DIExpression()), !dbg !1705
  %50 = icmp eq ptr %49, @.str.11.64, !dbg !1710
  br i1 %50, label %51, label %60, !dbg !1712

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1713
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1714
  call void @llvm.dbg.value(metadata ptr %13, metadata !1715, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata ptr %13, metadata !1723, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i64 8, metadata !1727, metadata !DIExpression()), !dbg !1728
  store i64 0, ptr %13, align 8, !dbg !1730
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1731
  %53 = icmp eq i64 %52, 3, !dbg !1733
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1734
  %57 = icmp eq i32 %29, 9, !dbg !1734
  %58 = select i1 %57, ptr @.str.10.66, ptr @.str.12.67, !dbg !1734
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1734
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1735
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1735
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1705
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1622, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !521, metadata !DIExpression(), metadata !1677, metadata ptr %10, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.assign(metadata i1 undef, metadata !522, metadata !DIExpression(), metadata !1678, metadata ptr %11, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata ptr @.str.12.67, metadata !518, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i32 %29, metadata !519, metadata !DIExpression()), !dbg !1736
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.12.67, i32 noundef 5) #37, !dbg !1738
  call void @llvm.dbg.value(metadata ptr %62, metadata !520, metadata !DIExpression()), !dbg !1736
  %63 = icmp eq ptr %62, @.str.12.67, !dbg !1739
  br i1 %63, label %64, label %73, !dbg !1740

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1741
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1742
  call void @llvm.dbg.value(metadata ptr %11, metadata !1715, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata ptr %11, metadata !1723, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 8, metadata !1727, metadata !DIExpression()), !dbg !1745
  store i64 0, ptr %11, align 8, !dbg !1747
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1748
  %66 = icmp eq i64 %65, 3, !dbg !1749
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1750
  %70 = icmp eq i32 %29, 9, !dbg !1750
  %71 = select i1 %70, ptr @.str.10.66, ptr @.str.12.67, !dbg !1750
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1750
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1751
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1751
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1623, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1622, metadata !DIExpression()), !dbg !1685
  %76 = and i8 %37, 1, !dbg !1752
  %77 = icmp eq i8 %76, 0, !dbg !1752
  br i1 %77, label %78, label %93, !dbg !1753

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1635, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1685
  %79 = load i8, ptr %74, align 1, !dbg !1755, !tbaa !823
  %80 = icmp eq i8 %79, 0, !dbg !1757
  br i1 %80, label %93, label %81, !dbg !1757

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1635, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1625, metadata !DIExpression()), !dbg !1685
  %85 = icmp ult i64 %84, %40, !dbg !1758
  br i1 %85, label %86, label %88, !dbg !1761

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1758
  store i8 %82, ptr %87, align 1, !dbg !1758, !tbaa !823
  br label %88, !dbg !1758

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1761
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1625, metadata !DIExpression()), !dbg !1685
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1762
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1635, metadata !DIExpression()), !dbg !1754
  %91 = load i8, ptr %90, align 1, !dbg !1755, !tbaa !823
  %92 = icmp eq i8 %91, 0, !dbg !1757
  br i1 %92, label %93, label %81, !dbg !1757, !llvm.loop !1763

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1765
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1627, metadata !DIExpression()), !dbg !1685
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1628, metadata !DIExpression()), !dbg !1685
  br label %114, !dbg !1767

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1629, metadata !DIExpression()), !dbg !1685
  br label %98, !dbg !1768

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1685
  br label %98, !dbg !1769

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1693
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1629, metadata !DIExpression()), !dbg !1685
  %101 = and i8 %100, 1, !dbg !1770
  %102 = icmp eq i8 %101, 0, !dbg !1770
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1772
  br label %104, !dbg !1772

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1685
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1619, metadata !DIExpression()), !dbg !1685
  %107 = and i8 %106, 1, !dbg !1773
  %108 = icmp eq i8 %107, 0, !dbg !1773
  br i1 %108, label %109, label %114, !dbg !1775

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1776
  br i1 %110, label %114, label %111, !dbg !1779

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1776, !tbaa !823
  br label %114, !dbg !1776

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1685
  br label %114, !dbg !1780

113:                                              ; preds = %28
  call void @abort() #39, !dbg !1781
  unreachable, !dbg !1781

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1765
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.66, %45 ], [ @.str.10.66, %47 ], [ @.str.10.66, %42 ], [ %34, %28 ], [ @.str.12.67, %109 ], [ @.str.12.67, %111 ], [ @.str.12.67, %104 ], [ @.str.10.66, %41 ], !dbg !1685
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1685
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1685
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1628, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1627, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1623, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1622, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1619, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1782
  %123 = and i8 %121, 1
  %124 = icmp ne i8 %123, 0
  %125 = icmp ne i32 %115, 2
  %126 = and i1 %125, %124
  %127 = icmp ne i64 %120, 0
  %128 = select i1 %126, i1 %127, i1 false
  %129 = icmp ugt i64 %120, 1
  %130 = and i8 %122, 1
  %131 = icmp eq i8 %130, 0
  %132 = icmp eq i32 %115, 2
  %133 = select i1 %125, i1 true, i1 %131
  %134 = icmp ne i8 %130, 0
  %135 = select i1 %134, i1 %127, i1 false
  %136 = xor i1 %124, true
  %137 = and i1 %26, %134
  br label %138, !dbg !1783

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1765
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1690
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1694
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1695
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1784
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1785
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1640, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1632, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1618, metadata !DIExpression()), !dbg !1685
  %147 = icmp eq i64 %139, -1, !dbg !1786
  br i1 %147, label %148, label %152, !dbg !1787

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1788
  %150 = load i8, ptr %149, align 1, !dbg !1788, !tbaa !823
  %151 = icmp eq i8 %150, 0, !dbg !1789
  br i1 %151, label %612, label %154, !dbg !1790

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1791
  br i1 %153, label %612, label %154, !dbg !1790

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1792
  br i1 %128, label %155, label %170, !dbg !1793

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1795
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1796
  br i1 %157, label %158, label %160, !dbg !1796

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1797
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1618, metadata !DIExpression()), !dbg !1685
  br label %160, !dbg !1798

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1798
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1618, metadata !DIExpression()), !dbg !1685
  %162 = icmp ugt i64 %156, %161, !dbg !1799
  br i1 %162, label %170, label %163, !dbg !1800

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1801
  call void @llvm.dbg.value(metadata ptr %164, metadata !1802, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %119, metadata !1805, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %120, metadata !1806, metadata !DIExpression()), !dbg !1807
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1809
  %166 = icmp ne i32 %165, 0, !dbg !1810
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1811
  %168 = xor i1 %166, true, !dbg !1811
  %169 = zext i1 %168 to i8, !dbg !1811
  br i1 %167, label %170, label %666, !dbg !1811

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1792
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1642, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1618, metadata !DIExpression()), !dbg !1685
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1812
  %175 = load i8, ptr %174, align 1, !dbg !1812, !tbaa !823
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1647, metadata !DIExpression()), !dbg !1792
  switch i8 %175, label %306 [
    i8 0, label %176
    i8 63, label %226
    i8 7, label %272
    i8 8, label %261
    i8 12, label %262
    i8 10, label %270
    i8 13, label %263
    i8 9, label %264
    i8 11, label %265
    i8 92, label %266
    i8 123, label %274
    i8 125, label %274
    i8 35, label %278
    i8 126, label %278
    i8 32, label %280
    i8 33, label %281
    i8 34, label %281
    i8 36, label %281
    i8 38, label %281
    i8 40, label %281
    i8 41, label %281
    i8 42, label %281
    i8 59, label %281
    i8 60, label %281
    i8 61, label %281
    i8 62, label %281
    i8 91, label %281
    i8 94, label %281
    i8 96, label %281
    i8 124, label %281
    i8 39, label %283
    i8 37, label %465
    i8 43, label %465
    i8 44, label %465
    i8 45, label %465
    i8 46, label %465
    i8 47, label %465
    i8 48, label %465
    i8 49, label %465
    i8 50, label %465
    i8 51, label %465
    i8 52, label %465
    i8 53, label %465
    i8 54, label %465
    i8 55, label %465
    i8 56, label %465
    i8 57, label %465
    i8 58, label %465
    i8 65, label %465
    i8 66, label %465
    i8 67, label %465
    i8 68, label %465
    i8 69, label %465
    i8 70, label %465
    i8 71, label %465
    i8 72, label %465
    i8 73, label %465
    i8 74, label %465
    i8 75, label %465
    i8 76, label %465
    i8 77, label %465
    i8 78, label %465
    i8 79, label %465
    i8 80, label %465
    i8 81, label %465
    i8 82, label %465
    i8 83, label %465
    i8 84, label %465
    i8 85, label %465
    i8 86, label %465
    i8 87, label %465
    i8 88, label %465
    i8 89, label %465
    i8 90, label %465
    i8 93, label %465
    i8 95, label %465
    i8 97, label %465
    i8 98, label %465
    i8 99, label %465
    i8 100, label %465
    i8 101, label %465
    i8 102, label %465
    i8 103, label %465
    i8 104, label %465
    i8 105, label %465
    i8 106, label %465
    i8 107, label %465
    i8 108, label %465
    i8 109, label %465
    i8 110, label %465
    i8 111, label %465
    i8 112, label %465
    i8 113, label %465
    i8 114, label %465
    i8 115, label %465
    i8 116, label %465
    i8 117, label %465
    i8 118, label %465
    i8 119, label %465
    i8 120, label %465
    i8 121, label %465
    i8 122, label %465
  ], !dbg !1813

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1814

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1815

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1792
  %179 = and i8 %144, 1, !dbg !1819
  %180 = icmp eq i8 %179, 0, !dbg !1819
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1819
  br i1 %181, label %182, label %198, !dbg !1819

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1821
  br i1 %183, label %184, label %186, !dbg !1825

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1821
  store i8 39, ptr %185, align 1, !dbg !1821, !tbaa !823
  br label %186, !dbg !1821

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1625, metadata !DIExpression()), !dbg !1685
  %188 = icmp ult i64 %187, %146, !dbg !1826
  br i1 %188, label %189, label %191, !dbg !1829

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1826
  store i8 36, ptr %190, align 1, !dbg !1826, !tbaa !823
  br label %191, !dbg !1826

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1829
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1625, metadata !DIExpression()), !dbg !1685
  %193 = icmp ult i64 %192, %146, !dbg !1830
  br i1 %193, label %194, label %196, !dbg !1833

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1830
  store i8 39, ptr %195, align 1, !dbg !1830, !tbaa !823
  br label %196, !dbg !1830

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1833
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %198, !dbg !1834

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1685
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1625, metadata !DIExpression()), !dbg !1685
  %201 = icmp ult i64 %199, %146, !dbg !1835
  br i1 %201, label %202, label %204, !dbg !1838

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1835
  store i8 92, ptr %203, align 1, !dbg !1835, !tbaa !823
  br label %204, !dbg !1835

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1838
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1625, metadata !DIExpression()), !dbg !1685
  br i1 %125, label %206, label %476, !dbg !1839

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1841
  %208 = icmp ult i64 %207, %171, !dbg !1842
  br i1 %208, label %209, label %465, !dbg !1843

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1844
  %211 = load i8, ptr %210, align 1, !dbg !1844, !tbaa !823
  %212 = add i8 %211, -48, !dbg !1845
  %213 = icmp ult i8 %212, 10, !dbg !1845
  br i1 %213, label %214, label %465, !dbg !1845

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1846
  br i1 %215, label %216, label %218, !dbg !1850

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1846
  store i8 48, ptr %217, align 1, !dbg !1846, !tbaa !823
  br label %218, !dbg !1846

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1850
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1625, metadata !DIExpression()), !dbg !1685
  %220 = icmp ult i64 %219, %146, !dbg !1851
  br i1 %220, label %221, label %223, !dbg !1854

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1851
  store i8 48, ptr %222, align 1, !dbg !1851, !tbaa !823
  br label %223, !dbg !1851

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1854
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1625, metadata !DIExpression()), !dbg !1685
  br label %465, !dbg !1855

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1856

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1857

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1858

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1860

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1862
  %231 = icmp ult i64 %230, %171, !dbg !1863
  br i1 %231, label %232, label %465, !dbg !1864

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1865
  %234 = load i8, ptr %233, align 1, !dbg !1865, !tbaa !823
  %235 = icmp eq i8 %234, 63, !dbg !1866
  br i1 %235, label %236, label %465, !dbg !1867

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1868
  %238 = load i8, ptr %237, align 1, !dbg !1868, !tbaa !823
  switch i8 %238, label %465 [
    i8 33, label %239
    i8 39, label %239
    i8 40, label %239
    i8 41, label %239
    i8 45, label %239
    i8 47, label %239
    i8 60, label %239
    i8 61, label %239
    i8 62, label %239
  ], !dbg !1869

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1870

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1647, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1640, metadata !DIExpression()), !dbg !1782
  %241 = icmp ult i64 %140, %146, !dbg !1872
  br i1 %241, label %242, label %244, !dbg !1875

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1872
  store i8 63, ptr %243, align 1, !dbg !1872, !tbaa !823
  br label %244, !dbg !1872

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1875
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1625, metadata !DIExpression()), !dbg !1685
  %246 = icmp ult i64 %245, %146, !dbg !1876
  br i1 %246, label %247, label %249, !dbg !1879

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1876
  store i8 34, ptr %248, align 1, !dbg !1876, !tbaa !823
  br label %249, !dbg !1876

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1625, metadata !DIExpression()), !dbg !1685
  %251 = icmp ult i64 %250, %146, !dbg !1880
  br i1 %251, label %252, label %254, !dbg !1883

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1880
  store i8 34, ptr %253, align 1, !dbg !1880, !tbaa !823
  br label %254, !dbg !1880

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1883
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1625, metadata !DIExpression()), !dbg !1685
  %256 = icmp ult i64 %255, %146, !dbg !1884
  br i1 %256, label %257, label %259, !dbg !1887

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1884
  store i8 63, ptr %258, align 1, !dbg !1884, !tbaa !823
  br label %259, !dbg !1884

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1887
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1625, metadata !DIExpression()), !dbg !1685
  br label %465, !dbg !1888

261:                                              ; preds = %170
  br label %272, !dbg !1889

262:                                              ; preds = %170
  br label %272, !dbg !1890

263:                                              ; preds = %170
  br label %270, !dbg !1891

264:                                              ; preds = %170
  br label %270, !dbg !1892

265:                                              ; preds = %170
  br label %272, !dbg !1893

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1894

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1895

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1898

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1900

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1901
  call void @llvm.dbg.label(metadata !1648), !dbg !1902
  br i1 %133, label %272, label %655, !dbg !1903

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1901
  call void @llvm.dbg.label(metadata !1651), !dbg !1905
  br i1 %124, label %520, label %476, !dbg !1906

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1907

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1908, !tbaa !823
  %277 = icmp eq i8 %276, 0, !dbg !1910
  br i1 %277, label %278, label %465, !dbg !1911

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1912
  br i1 %279, label %280, label %465, !dbg !1914

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1646, metadata !DIExpression()), !dbg !1792
  br label %281, !dbg !1915

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1646, metadata !DIExpression()), !dbg !1792
  br i1 %133, label %465, label %655, !dbg !1916

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1646, metadata !DIExpression()), !dbg !1792
  br i1 %132, label %284, label %465, !dbg !1918

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1919

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1922
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1924
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1924
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1626, metadata !DIExpression()), !dbg !1685
  %291 = icmp ult i64 %140, %290, !dbg !1925
  br i1 %291, label %292, label %294, !dbg !1928

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1925
  store i8 39, ptr %293, align 1, !dbg !1925, !tbaa !823
  br label %294, !dbg !1925

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1625, metadata !DIExpression()), !dbg !1685
  %296 = icmp ult i64 %295, %290, !dbg !1929
  br i1 %296, label %297, label %299, !dbg !1932

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1929
  store i8 92, ptr %298, align 1, !dbg !1929, !tbaa !823
  br label %299, !dbg !1929

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1625, metadata !DIExpression()), !dbg !1685
  %301 = icmp ult i64 %300, %290, !dbg !1933
  br i1 %301, label %302, label %304, !dbg !1936

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !1933
  store i8 39, ptr %303, align 1, !dbg !1933, !tbaa !823
  br label %304, !dbg !1933

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !1936
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %465, !dbg !1937

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !1938

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1652, metadata !DIExpression()), !dbg !1939
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !1940
  %309 = load ptr, ptr %308, align 8, !dbg !1940, !tbaa !753
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !1940
  %312 = load i16, ptr %311, align 2, !dbg !1940, !tbaa !855
  %313 = and i16 %312, 16384, !dbg !1942
  %314 = icmp ne i16 %313, 0, !dbg !1942
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1654, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1939
  br label %355, !dbg !1943

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1944
  call void @llvm.dbg.value(metadata ptr %14, metadata !1715, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata ptr %14, metadata !1723, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 8, metadata !1727, metadata !DIExpression()), !dbg !1947
  store i64 0, ptr %14, align 8, !dbg !1949
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()), !dbg !1939
  %316 = icmp eq i64 %171, -1, !dbg !1950
  br i1 %316, label %317, label %319, !dbg !1952

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1618, metadata !DIExpression()), !dbg !1685
  br label %319, !dbg !1954

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1618, metadata !DIExpression()), !dbg !1685
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1955
  %321 = sub i64 %320, %145, !dbg !1956
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !1957
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1662, metadata !DIExpression()), !dbg !1684
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !1958

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1939
  %324 = icmp ult i64 %145, %320, !dbg !1959
  br i1 %324, label %326, label %351, !dbg !1961

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()), !dbg !1939
  br label %351, !dbg !1962

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1652, metadata !DIExpression()), !dbg !1939
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !1964
  %330 = load i8, ptr %329, align 1, !dbg !1964, !tbaa !823
  %331 = icmp eq i8 %330, 0, !dbg !1961
  br i1 %331, label %351, label %332, !dbg !1965

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !1966
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1652, metadata !DIExpression()), !dbg !1939
  %334 = add i64 %333, %145, !dbg !1967
  %335 = icmp eq i64 %333, %321, !dbg !1959
  br i1 %335, label %351, label %326, !dbg !1961, !llvm.loop !1968

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1663, metadata !DIExpression()), !dbg !1969
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !1970
  %339 = and i1 %338, %132, !dbg !1970
  br i1 %339, label %340, label %347, !dbg !1970

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1663, metadata !DIExpression()), !dbg !1969
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !1971
  %343 = load i8, ptr %342, align 1, !dbg !1971, !tbaa !823
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !1973

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !1974
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1663, metadata !DIExpression()), !dbg !1969
  %346 = icmp eq i64 %345, %322, !dbg !1975
  br i1 %346, label %347, label %340, !dbg !1976, !llvm.loop !1977

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !1979, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %348, metadata !1981, metadata !DIExpression()), !dbg !1989
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !1991
  %350 = icmp ne i32 %349, 0, !dbg !1992
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1652, metadata !DIExpression()), !dbg !1939
  br label %351, !dbg !1993

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1652, metadata !DIExpression()), !dbg !1939
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1995
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1939
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1995
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1792
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !1996
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !1996
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1652, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1618, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1646, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1792
  %359 = icmp ult i64 %357, 2, !dbg !1997
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !1998
  br i1 %361, label %461, label %362, !dbg !1998

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !1999
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1671, metadata !DIExpression()), !dbg !2000
  br label %364, !dbg !2001

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1685
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1784
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1782
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1792
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2002
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1647, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1645, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1642, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1640, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1625, metadata !DIExpression()), !dbg !1685
  br i1 %360, label %417, label %371, !dbg !2003

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2008

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1792
  %373 = and i8 %366, 1, !dbg !2011
  %374 = icmp eq i8 %373, 0, !dbg !2011
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2011
  br i1 %375, label %376, label %392, !dbg !2011

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2013
  br i1 %377, label %378, label %380, !dbg !2017

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2013
  store i8 39, ptr %379, align 1, !dbg !2013, !tbaa !823
  br label %380, !dbg !2013

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2017
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1625, metadata !DIExpression()), !dbg !1685
  %382 = icmp ult i64 %381, %146, !dbg !2018
  br i1 %382, label %383, label %385, !dbg !2021

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2018
  store i8 36, ptr %384, align 1, !dbg !2018, !tbaa !823
  br label %385, !dbg !2018

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1625, metadata !DIExpression()), !dbg !1685
  %387 = icmp ult i64 %386, %146, !dbg !2022
  br i1 %387, label %388, label %390, !dbg !2025

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2022
  store i8 39, ptr %389, align 1, !dbg !2022, !tbaa !823
  br label %390, !dbg !2022

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2025
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %392, !dbg !2026

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1685
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1625, metadata !DIExpression()), !dbg !1685
  %395 = icmp ult i64 %393, %146, !dbg !2027
  br i1 %395, label %396, label %398, !dbg !2030

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2027
  store i8 92, ptr %397, align 1, !dbg !2027, !tbaa !823
  br label %398, !dbg !2027

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1625, metadata !DIExpression()), !dbg !1685
  %400 = icmp ult i64 %399, %146, !dbg !2031
  br i1 %400, label %401, label %405, !dbg !2034

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2031
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2031
  store i8 %403, ptr %404, align 1, !dbg !2031, !tbaa !823
  br label %405, !dbg !2031

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2034
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1625, metadata !DIExpression()), !dbg !1685
  %407 = icmp ult i64 %406, %146, !dbg !2035
  br i1 %407, label %408, label %413, !dbg !2038

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2035
  %411 = or disjoint i8 %410, 48, !dbg !2035
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2035
  store i8 %411, ptr %412, align 1, !dbg !2035, !tbaa !823
  br label %413, !dbg !2035

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2038
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1625, metadata !DIExpression()), !dbg !1685
  %415 = and i8 %370, 7, !dbg !2039
  %416 = or disjoint i8 %415, 48, !dbg !2040
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1647, metadata !DIExpression()), !dbg !1792
  br label %426, !dbg !2041

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2042
  %419 = icmp eq i8 %418, 0, !dbg !2042
  br i1 %419, label %426, label %420, !dbg !2044

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2045
  br i1 %421, label %422, label %424, !dbg !2049

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2045
  store i8 92, ptr %423, align 1, !dbg !2045, !tbaa !823
  br label %424, !dbg !2045

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2049
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1792
  br label %426, !dbg !2050

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1685
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1784
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1792
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1792
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1647, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1645, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1642, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1625, metadata !DIExpression()), !dbg !1685
  %432 = add i64 %367, 1, !dbg !2051
  %433 = icmp ugt i64 %363, %432, !dbg !2053
  br i1 %433, label %434, label %463, !dbg !2054

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2055
  %436 = icmp ne i8 %435, 0, !dbg !2055
  %437 = and i8 %430, 1, !dbg !2055
  %438 = icmp eq i8 %437, 0, !dbg !2055
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2055
  br i1 %439, label %440, label %451, !dbg !2055

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2058
  br i1 %441, label %442, label %444, !dbg !2062

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2058
  store i8 39, ptr %443, align 1, !dbg !2058, !tbaa !823
  br label %444, !dbg !2058

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1625, metadata !DIExpression()), !dbg !1685
  %446 = icmp ult i64 %445, %146, !dbg !2063
  br i1 %446, label %447, label %449, !dbg !2066

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2063
  store i8 39, ptr %448, align 1, !dbg !2063, !tbaa !823
  br label %449, !dbg !2063

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %451, !dbg !2067

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2068
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1625, metadata !DIExpression()), !dbg !1685
  %454 = icmp ult i64 %452, %146, !dbg !2069
  br i1 %454, label %455, label %457, !dbg !2072

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2069
  store i8 %431, ptr %456, align 1, !dbg !2069, !tbaa !823
  br label %457, !dbg !2069

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2072
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1640, metadata !DIExpression()), !dbg !1782
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2073
  %460 = load i8, ptr %459, align 1, !dbg !2073, !tbaa !823
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1647, metadata !DIExpression()), !dbg !1792
  br label %364, !dbg !2074, !llvm.loop !2075

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1647, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1646, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1642, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1640, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1618, metadata !DIExpression()), !dbg !1685
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1647, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1646, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1645, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1642, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1640, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1618, metadata !DIExpression()), !dbg !1685
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2078
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1685
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1690
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1685
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1685
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1782
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1792
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1792
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1792
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1647, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1646, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1645, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1642, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1640, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1618, metadata !DIExpression()), !dbg !1685
  br i1 %126, label %487, label %476, !dbg !2079

476:                                              ; preds = %268, %225, %272, %204, %465
  %477 = phi i64 [ %475, %465 ], [ %146, %204 ], [ %146, %272 ], [ %146, %225 ], [ %146, %268 ]
  %478 = phi i8 [ %474, %465 ], [ 48, %204 ], [ %175, %272 ], [ 0, %225 ], [ 92, %268 ]
  %479 = phi i8 [ %473, %465 ], [ 0, %204 ], [ 0, %272 ], [ 0, %225 ], [ 0, %268 ]
  %480 = phi i8 [ %472, %465 ], [ 1, %204 ], [ 0, %272 ], [ 0, %225 ], [ 0, %268 ]
  %481 = phi i64 [ %471, %465 ], [ %145, %204 ], [ %145, %272 ], [ %145, %225 ], [ %145, %268 ]
  %482 = phi i8 [ %470, %465 ], [ %200, %204 ], [ %144, %272 ], [ %144, %225 ], [ %144, %268 ]
  %483 = phi i8 [ %469, %465 ], [ %142, %204 ], [ %142, %272 ], [ %142, %225 ], [ %142, %268 ]
  %484 = phi i64 [ %468, %465 ], [ %141, %204 ], [ %141, %272 ], [ %141, %225 ], [ %141, %268 ]
  %485 = phi i64 [ %467, %465 ], [ %205, %204 ], [ %140, %272 ], [ %140, %225 ], [ %140, %268 ]
  %486 = phi i64 [ %466, %465 ], [ %171, %204 ], [ %171, %272 ], [ %171, %225 ], [ %171, %268 ]
  br i1 %137, label %488, label %509, !dbg !2081

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2082

488:                                              ; preds = %476, %487
  %489 = phi i64 [ %477, %476 ], [ %475, %487 ]
  %490 = phi i8 [ %478, %476 ], [ %474, %487 ]
  %491 = phi i8 [ %479, %476 ], [ %473, %487 ]
  %492 = phi i8 [ %480, %476 ], [ %472, %487 ]
  %493 = phi i64 [ %481, %476 ], [ %471, %487 ]
  %494 = phi i8 [ %482, %476 ], [ %470, %487 ]
  %495 = phi i8 [ %483, %476 ], [ %469, %487 ]
  %496 = phi i64 [ %484, %476 ], [ %468, %487 ]
  %497 = phi i64 [ %485, %476 ], [ %467, %487 ]
  %498 = phi i64 [ %486, %476 ], [ %466, %487 ]
  %499 = lshr i8 %490, 5, !dbg !2083
  %500 = zext nneg i8 %499 to i64, !dbg !2083
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2084
  %502 = load i32, ptr %501, align 4, !dbg !2084, !tbaa !814
  %503 = and i8 %490, 31, !dbg !2085
  %504 = zext nneg i8 %503 to i32, !dbg !2085
  %505 = shl nuw i32 1, %504, !dbg !2086
  %506 = and i32 %502, %505, !dbg !2086
  %507 = icmp eq i32 %506, 0, !dbg !2086
  %508 = and i1 %172, %507, !dbg !2087
  br i1 %508, label %558, label %520, !dbg !2087

509:                                              ; preds = %487, %476
  %510 = phi i64 [ %475, %487 ], [ %477, %476 ]
  %511 = phi i8 [ %474, %487 ], [ %478, %476 ]
  %512 = phi i8 [ %473, %487 ], [ %479, %476 ]
  %513 = phi i8 [ %472, %487 ], [ %480, %476 ]
  %514 = phi i64 [ %471, %487 ], [ %481, %476 ]
  %515 = phi i8 [ %470, %487 ], [ %482, %476 ]
  %516 = phi i8 [ %469, %487 ], [ %483, %476 ]
  %517 = phi i64 [ %468, %487 ], [ %484, %476 ]
  %518 = phi i64 [ %467, %487 ], [ %485, %476 ]
  %519 = phi i64 [ %466, %487 ], [ %486, %476 ]
  br i1 %172, label %558, label %520, !dbg !2088

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2078
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1685
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1690
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1694
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1784
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2089
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1792
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1792
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1647, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1646, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1640, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1618, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.label(metadata !1674), !dbg !2090
  br i1 %131, label %530, label %659, !dbg !2091

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1792
  %531 = and i8 %525, 1, !dbg !2093
  %532 = icmp eq i8 %531, 0, !dbg !2093
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2093
  br i1 %533, label %534, label %550, !dbg !2093

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2095
  br i1 %535, label %536, label %538, !dbg !2099

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2095
  store i8 39, ptr %537, align 1, !dbg !2095, !tbaa !823
  br label %538, !dbg !2095

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1625, metadata !DIExpression()), !dbg !1685
  %540 = icmp ult i64 %539, %529, !dbg !2100
  br i1 %540, label %541, label %543, !dbg !2103

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2100
  store i8 36, ptr %542, align 1, !dbg !2100, !tbaa !823
  br label %543, !dbg !2100

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2103
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1625, metadata !DIExpression()), !dbg !1685
  %545 = icmp ult i64 %544, %529, !dbg !2104
  br i1 %545, label %546, label %548, !dbg !2107

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2104
  store i8 39, ptr %547, align 1, !dbg !2104, !tbaa !823
  br label %548, !dbg !2104

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %550, !dbg !2108

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1792
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1625, metadata !DIExpression()), !dbg !1685
  %553 = icmp ult i64 %551, %529, !dbg !2109
  br i1 %553, label %554, label %556, !dbg !2112

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2109
  store i8 92, ptr %555, align 1, !dbg !2109, !tbaa !823
  br label %556, !dbg !2109

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2112
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1647, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1646, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1640, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1618, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.label(metadata !1675), !dbg !2113
  br label %585, !dbg !2114

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2078
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1685
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1690
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1694
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1784
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2089
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1792
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1792
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2117
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1647, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1646, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1645, metadata !DIExpression()), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1640, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1618, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.label(metadata !1675), !dbg !2113
  %569 = and i8 %563, 1, !dbg !2114
  %570 = icmp ne i8 %569, 0, !dbg !2114
  %571 = and i8 %565, 1, !dbg !2114
  %572 = icmp eq i8 %571, 0, !dbg !2114
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2114
  br i1 %573, label %574, label %585, !dbg !2114

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2118
  br i1 %575, label %576, label %578, !dbg !2122

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2118
  store i8 39, ptr %577, align 1, !dbg !2118, !tbaa !823
  br label %578, !dbg !2118

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2122
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1625, metadata !DIExpression()), !dbg !1685
  %580 = icmp ult i64 %579, %568, !dbg !2123
  br i1 %580, label %581, label %583, !dbg !2126

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2123
  store i8 39, ptr %582, align 1, !dbg !2123, !tbaa !823
  br label %583, !dbg !2123

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2126
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %585, !dbg !2127

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1792
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1625, metadata !DIExpression()), !dbg !1685
  %595 = icmp ult i64 %593, %586, !dbg !2128
  br i1 %595, label %596, label %598, !dbg !2131

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2128
  store i8 %587, ptr %597, align 1, !dbg !2128, !tbaa !823
  br label %598, !dbg !2128

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2131
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1625, metadata !DIExpression()), !dbg !1685
  %600 = icmp eq i8 %588, 0, !dbg !2132
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2134
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1632, metadata !DIExpression()), !dbg !1685
  br label %602, !dbg !2135

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2078
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1685
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1690
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1694
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1695
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1784
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2089
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1640, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1632, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1618, metadata !DIExpression()), !dbg !1685
  %611 = add i64 %609, 1, !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1640, metadata !DIExpression()), !dbg !1782
  br label %138, !dbg !2137, !llvm.loop !2138

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1632, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1618, metadata !DIExpression()), !dbg !1685
  %613 = icmp eq i64 %140, 0, !dbg !2140
  %614 = and i1 %132, %613, !dbg !2142
  %615 = xor i1 %614, true, !dbg !2142
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2142
  br i1 %616, label %617, label %655, !dbg !2142

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2143
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2143
  br i1 %621, label %622, label %631, !dbg !2143

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2145
  %624 = icmp eq i8 %623, 0, !dbg !2145
  br i1 %624, label %627, label %625, !dbg !2148

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2149
  br label %672, !dbg !2150

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2151
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2153
  br i1 %630, label %28, label %631, !dbg !2153

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2154
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2156
  br i1 %634, label %635, label %650, !dbg !2156

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1627, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1625, metadata !DIExpression()), !dbg !1685
  %636 = load i8, ptr %119, align 1, !dbg !2157, !tbaa !823
  %637 = icmp eq i8 %636, 0, !dbg !2160
  br i1 %637, label %650, label %638, !dbg !2160

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1627, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1625, metadata !DIExpression()), !dbg !1685
  %642 = icmp ult i64 %641, %146, !dbg !2161
  br i1 %642, label %643, label %645, !dbg !2164

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2161
  store i8 %639, ptr %644, align 1, !dbg !2161, !tbaa !823
  br label %645, !dbg !2161

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2164
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1625, metadata !DIExpression()), !dbg !1685
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2165
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1627, metadata !DIExpression()), !dbg !1685
  %648 = load i8, ptr %647, align 1, !dbg !2157, !tbaa !823
  %649 = icmp eq i8 %648, 0, !dbg !2160
  br i1 %649, label %650, label %638, !dbg !2160, !llvm.loop !2166

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1765
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1625, metadata !DIExpression()), !dbg !1685
  %652 = icmp ult i64 %651, %146, !dbg !2168
  br i1 %652, label %653, label %672, !dbg !2170

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2171
  store i8 0, ptr %654, align 1, !dbg !2172, !tbaa !823
  br label %672, !dbg !2171

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1676), !dbg !2173
  %657 = icmp eq i8 %123, 0, !dbg !2174
  %658 = select i1 %657, i32 2, i32 4, !dbg !2174
  br label %666, !dbg !2174

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1676), !dbg !2173
  %662 = icmp eq i32 %115, 2, !dbg !2176
  %663 = icmp eq i8 %123, 0, !dbg !2174
  %664 = select i1 %663, i32 2, i32 4, !dbg !2174
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2174
  br label %666, !dbg !2174

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1619, metadata !DIExpression()), !dbg !1685
  %670 = and i32 %5, -3, !dbg !2177
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2178
  br label %672, !dbg !2179

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2180
}

; Function Attrs: nounwind
declare !dbg !2181 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2184 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2187 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2189 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2193, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2194, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2195, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata ptr %0, metadata !2197, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %1, metadata !2202, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata ptr null, metadata !2203, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata ptr %2, metadata !2204, metadata !DIExpression()), !dbg !2210
  %4 = icmp eq ptr %2, null, !dbg !2212
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2212
  call void @llvm.dbg.value(metadata ptr %5, metadata !2205, metadata !DIExpression()), !dbg !2210
  %6 = tail call ptr @__errno_location() #40, !dbg !2213
  %7 = load i32, ptr %6, align 4, !dbg !2213, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %7, metadata !2206, metadata !DIExpression()), !dbg !2210
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2214
  %9 = load i32, ptr %8, align 4, !dbg !2214, !tbaa !1559
  %10 = or i32 %9, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %10, metadata !2207, metadata !DIExpression()), !dbg !2210
  %11 = load i32, ptr %5, align 8, !dbg !2216, !tbaa !1509
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2217
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2218
  %14 = load ptr, ptr %13, align 8, !dbg !2218, !tbaa !1580
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2219
  %16 = load ptr, ptr %15, align 8, !dbg !2219, !tbaa !1583
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2220
  %18 = add i64 %17, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %18, metadata !2208, metadata !DIExpression()), !dbg !2210
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2222
  call void @llvm.dbg.value(metadata ptr %19, metadata !2209, metadata !DIExpression()), !dbg !2210
  %20 = load i32, ptr %5, align 8, !dbg !2223, !tbaa !1509
  %21 = load ptr, ptr %13, align 8, !dbg !2224, !tbaa !1580
  %22 = load ptr, ptr %15, align 8, !dbg !2225, !tbaa !1583
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2226
  store i32 %7, ptr %6, align 4, !dbg !2227, !tbaa !814
  ret ptr %19, !dbg !2228
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2198 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2197, metadata !DIExpression()), !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2202, metadata !DIExpression()), !dbg !2229
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2203, metadata !DIExpression()), !dbg !2229
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2204, metadata !DIExpression()), !dbg !2229
  %5 = icmp eq ptr %3, null, !dbg !2230
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2230
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2205, metadata !DIExpression()), !dbg !2229
  %7 = tail call ptr @__errno_location() #40, !dbg !2231
  %8 = load i32, ptr %7, align 4, !dbg !2231, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2206, metadata !DIExpression()), !dbg !2229
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2232
  %10 = load i32, ptr %9, align 4, !dbg !2232, !tbaa !1559
  %11 = icmp eq ptr %2, null, !dbg !2233
  %12 = zext i1 %11 to i32, !dbg !2233
  %13 = or i32 %10, %12, !dbg !2234
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2207, metadata !DIExpression()), !dbg !2229
  %14 = load i32, ptr %6, align 8, !dbg !2235, !tbaa !1509
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2236
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2237
  %17 = load ptr, ptr %16, align 8, !dbg !2237, !tbaa !1580
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2238
  %19 = load ptr, ptr %18, align 8, !dbg !2238, !tbaa !1583
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2239
  %21 = add i64 %20, 1, !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2208, metadata !DIExpression()), !dbg !2229
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2241
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2209, metadata !DIExpression()), !dbg !2229
  %23 = load i32, ptr %6, align 8, !dbg !2242, !tbaa !1509
  %24 = load ptr, ptr %16, align 8, !dbg !2243, !tbaa !1580
  %25 = load ptr, ptr %18, align 8, !dbg !2244, !tbaa !1583
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2245
  store i32 %8, ptr %7, align 4, !dbg !2246, !tbaa !814
  br i1 %11, label %28, label %27, !dbg !2247

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2248, !tbaa !2250
  br label %28, !dbg !2251

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2252
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2253 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2258, !tbaa !753
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2255, metadata !DIExpression()), !dbg !2259
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2256, metadata !DIExpression()), !dbg !2260
  %2 = load i32, ptr @nslots, align 4, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2256, metadata !DIExpression()), !dbg !2260
  %3 = icmp sgt i32 %2, 1, !dbg !2261
  br i1 %3, label %4, label %6, !dbg !2263

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2261
  br label %10, !dbg !2263

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2264
  %8 = load ptr, ptr %7, align 8, !dbg !2264, !tbaa !2266
  %9 = icmp eq ptr %8, @slot0, !dbg !2268
  br i1 %9, label %17, label %16, !dbg !2269

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2256, metadata !DIExpression()), !dbg !2260
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2270
  %13 = load ptr, ptr %12, align 8, !dbg !2270, !tbaa !2266
  tail call void @free(ptr noundef %13) #37, !dbg !2271
  %14 = add nuw nsw i64 %11, 1, !dbg !2272
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2256, metadata !DIExpression()), !dbg !2260
  %15 = icmp eq i64 %14, %5, !dbg !2261
  br i1 %15, label %6, label %10, !dbg !2263, !llvm.loop !2273

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2275
  store i64 256, ptr @slotvec0, align 8, !dbg !2277, !tbaa !2278
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2279, !tbaa !2266
  br label %17, !dbg !2280

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2281
  br i1 %18, label %20, label %19, !dbg !2283

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2284
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2286, !tbaa !753
  br label %20, !dbg !2287

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2288, !tbaa !814
  ret void, !dbg !2289
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2290 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2293 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2295, metadata !DIExpression()), !dbg !2297
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2296, metadata !DIExpression()), !dbg !2297
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2298
  ret ptr %3, !dbg !2299
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2300 {
  %5 = alloca i64, align 8, !DIAssignID !2320
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2314, metadata !DIExpression(), metadata !2320, metadata ptr %5, metadata !DIExpression()), !dbg !2321
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2304, metadata !DIExpression()), !dbg !2322
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2305, metadata !DIExpression()), !dbg !2322
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2306, metadata !DIExpression()), !dbg !2322
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2307, metadata !DIExpression()), !dbg !2322
  %6 = tail call ptr @__errno_location() #40, !dbg !2323
  %7 = load i32, ptr %6, align 4, !dbg !2323, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2308, metadata !DIExpression()), !dbg !2322
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2324, !tbaa !753
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2309, metadata !DIExpression()), !dbg !2322
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2310, metadata !DIExpression()), !dbg !2322
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2325
  br i1 %9, label %10, label %11, !dbg !2325

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2327
  unreachable, !dbg !2327

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2328, !tbaa !814
  %13 = icmp sgt i32 %12, %0, !dbg !2329
  br i1 %13, label %32, label %14, !dbg !2330

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2331
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2311, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2321
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2332
  %16 = sext i32 %12 to i64, !dbg !2333
  store i64 %16, ptr %5, align 8, !dbg !2334, !tbaa !2250, !DIAssignID !2335
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2314, metadata !DIExpression(), metadata !2335, metadata ptr %5, metadata !DIExpression()), !dbg !2321
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2336
  %18 = add nuw nsw i32 %0, 1, !dbg !2337
  %19 = sub i32 %18, %12, !dbg !2338
  %20 = sext i32 %19 to i64, !dbg !2339
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2340
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2309, metadata !DIExpression()), !dbg !2322
  store ptr %21, ptr @slotvec, align 8, !dbg !2341, !tbaa !753
  br i1 %15, label %22, label %23, !dbg !2342

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2343, !tbaa.struct !2345
  br label %23, !dbg !2346

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2347, !tbaa !814
  %25 = sext i32 %24 to i64, !dbg !2348
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2348
  %27 = load i64, ptr %5, align 8, !dbg !2349, !tbaa !2250
  %28 = sub nsw i64 %27, %25, !dbg !2350
  %29 = shl i64 %28, 4, !dbg !2351
  call void @llvm.dbg.value(metadata ptr %26, metadata !1723, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %29, metadata !1727, metadata !DIExpression()), !dbg !2352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2354
  %30 = load i64, ptr %5, align 8, !dbg !2355, !tbaa !2250
  %31 = trunc i64 %30 to i32, !dbg !2355
  store i32 %31, ptr @nslots, align 4, !dbg !2356, !tbaa !814
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2357
  br label %32, !dbg !2358

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2322
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2309, metadata !DIExpression()), !dbg !2322
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2359
  %36 = load i64, ptr %35, align 8, !dbg !2360, !tbaa !2278
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2315, metadata !DIExpression()), !dbg !2361
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2362
  %38 = load ptr, ptr %37, align 8, !dbg !2362, !tbaa !2266
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2317, metadata !DIExpression()), !dbg !2361
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2363
  %40 = load i32, ptr %39, align 4, !dbg !2363, !tbaa !1559
  %41 = or i32 %40, 1, !dbg !2364
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2318, metadata !DIExpression()), !dbg !2361
  %42 = load i32, ptr %3, align 8, !dbg !2365, !tbaa !1509
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2366
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2367
  %45 = load ptr, ptr %44, align 8, !dbg !2367, !tbaa !1580
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2368
  %47 = load ptr, ptr %46, align 8, !dbg !2368, !tbaa !1583
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2369
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2319, metadata !DIExpression()), !dbg !2361
  %49 = icmp ugt i64 %36, %48, !dbg !2370
  br i1 %49, label %60, label %50, !dbg !2372

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2373
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2315, metadata !DIExpression()), !dbg !2361
  store i64 %51, ptr %35, align 8, !dbg !2375, !tbaa !2278
  %52 = icmp eq ptr %38, @slot0, !dbg !2376
  br i1 %52, label %54, label %53, !dbg !2378

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2379
  br label %54, !dbg !2379

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2380
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2317, metadata !DIExpression()), !dbg !2361
  store ptr %55, ptr %37, align 8, !dbg !2381, !tbaa !2266
  %56 = load i32, ptr %3, align 8, !dbg !2382, !tbaa !1509
  %57 = load ptr, ptr %44, align 8, !dbg !2383, !tbaa !1580
  %58 = load ptr, ptr %46, align 8, !dbg !2384, !tbaa !1583
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2385
  br label %60, !dbg !2386

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2361
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2317, metadata !DIExpression()), !dbg !2361
  store i32 %7, ptr %6, align 4, !dbg !2387, !tbaa !814
  ret ptr %61, !dbg !2388
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2389 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2393, metadata !DIExpression()), !dbg !2396
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2394, metadata !DIExpression()), !dbg !2396
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2395, metadata !DIExpression()), !dbg !2396
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2397
  ret ptr %4, !dbg !2398
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2399 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2401, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 0, metadata !2295, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata ptr %0, metadata !2296, metadata !DIExpression()), !dbg !2403
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2405
  ret ptr %2, !dbg !2406
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2407 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2411, metadata !DIExpression()), !dbg !2413
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2393, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %0, metadata !2394, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %1, metadata !2395, metadata !DIExpression()), !dbg !2414
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2416
  ret ptr %3, !dbg !2417
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2418 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2426
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2425, metadata !DIExpression(), metadata !2426, metadata ptr %4, metadata !DIExpression()), !dbg !2427
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2427
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2423, metadata !DIExpression()), !dbg !2427
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2424, metadata !DIExpression()), !dbg !2427
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2428
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %1, metadata !2433, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2441, !alias.scope !2429, !DIAssignID !2442
  call void @llvm.dbg.assign(metadata i8 0, metadata !2425, metadata !DIExpression(), metadata !2442, metadata ptr %4, metadata !DIExpression()), !dbg !2427
  %5 = icmp eq i32 %1, 10, !dbg !2443
  br i1 %5, label %6, label %7, !dbg !2445

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2446, !noalias !2429
  unreachable, !dbg !2446

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2447, !tbaa !1509, !alias.scope !2429, !DIAssignID !2448
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2425, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2448, metadata ptr %4, metadata !DIExpression()), !dbg !2427
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2449
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2450
  ret ptr %8, !dbg !2451
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2452 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2461
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2460, metadata !DIExpression(), metadata !2461, metadata ptr %5, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2456, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2457, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2458, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2459, metadata !DIExpression()), !dbg !2462
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2463
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2464), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %1, metadata !2433, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2438, metadata !DIExpression()), !dbg !2470
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2470, !alias.scope !2464, !DIAssignID !2471
  call void @llvm.dbg.assign(metadata i8 0, metadata !2460, metadata !DIExpression(), metadata !2471, metadata ptr %5, metadata !DIExpression()), !dbg !2462
  %6 = icmp eq i32 %1, 10, !dbg !2472
  br i1 %6, label %7, label %8, !dbg !2473

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2474, !noalias !2464
  unreachable, !dbg !2474

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2475, !tbaa !1509, !alias.scope !2464, !DIAssignID !2476
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2460, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2476, metadata ptr %5, metadata !DIExpression()), !dbg !2462
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2477
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2478
  ret ptr %9, !dbg !2479
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2480 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2486
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2485, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2425, metadata !DIExpression(), metadata !2486, metadata ptr %3, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 0, metadata !2422, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata ptr %1, metadata !2424, metadata !DIExpression()), !dbg !2488
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2491), !dbg !2494
  call void @llvm.dbg.value(metadata i32 %0, metadata !2433, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2438, metadata !DIExpression()), !dbg !2497
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2497, !alias.scope !2491, !DIAssignID !2498
  call void @llvm.dbg.assign(metadata i8 0, metadata !2425, metadata !DIExpression(), metadata !2498, metadata ptr %3, metadata !DIExpression()), !dbg !2488
  %4 = icmp eq i32 %0, 10, !dbg !2499
  br i1 %4, label %5, label %6, !dbg !2500

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2501, !noalias !2491
  unreachable, !dbg !2501

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2502, !tbaa !1509, !alias.scope !2491, !DIAssignID !2503
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2425, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2503, metadata ptr %3, metadata !DIExpression()), !dbg !2488
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2504
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2505
  ret ptr %7, !dbg !2506
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2507 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2514
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2511, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2512, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2513, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2460, metadata !DIExpression(), metadata !2514, metadata ptr %4, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 0, metadata !2456, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 %0, metadata !2457, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %1, metadata !2458, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i64 %2, metadata !2459, metadata !DIExpression()), !dbg !2516
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519), !dbg !2522
  call void @llvm.dbg.value(metadata i32 %0, metadata !2433, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2438, metadata !DIExpression()), !dbg !2525
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2525, !alias.scope !2519, !DIAssignID !2526
  call void @llvm.dbg.assign(metadata i8 0, metadata !2460, metadata !DIExpression(), metadata !2526, metadata ptr %4, metadata !DIExpression()), !dbg !2516
  %5 = icmp eq i32 %0, 10, !dbg !2527
  br i1 %5, label %6, label %7, !dbg !2528

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2529, !noalias !2519
  unreachable, !dbg !2529

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2530, !tbaa !1509, !alias.scope !2519, !DIAssignID !2531
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2460, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2531, metadata ptr %4, metadata !DIExpression()), !dbg !2516
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2532
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2533
  ret ptr %8, !dbg !2534
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2535 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2543
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2542, metadata !DIExpression(), metadata !2543, metadata ptr %4, metadata !DIExpression()), !dbg !2544
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2539, metadata !DIExpression()), !dbg !2544
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2540, metadata !DIExpression()), !dbg !2544
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2541, metadata !DIExpression()), !dbg !2544
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2546, !tbaa.struct !2547, !DIAssignID !2548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2542, metadata !DIExpression(), metadata !2548, metadata ptr %4, metadata !DIExpression()), !dbg !2544
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1526, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1527, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1529, metadata !DIExpression()), !dbg !2549
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2551
  %6 = lshr i8 %2, 5, !dbg !2552
  %7 = zext nneg i8 %6 to i64, !dbg !2552
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2553
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1530, metadata !DIExpression()), !dbg !2549
  %9 = and i8 %2, 31, !dbg !2554
  %10 = zext nneg i8 %9 to i32, !dbg !2554
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1532, metadata !DIExpression()), !dbg !2549
  %11 = load i32, ptr %8, align 4, !dbg !2555, !tbaa !814
  %12 = lshr i32 %11, %10, !dbg !2556
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1533, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2549
  %13 = and i32 %12, 1, !dbg !2557
  %14 = xor i32 %13, 1, !dbg !2557
  %15 = shl nuw i32 %14, %10, !dbg !2558
  %16 = xor i32 %15, %11, !dbg !2559
  store i32 %16, ptr %8, align 4, !dbg !2559, !tbaa !814
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2560
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2561
  ret ptr %17, !dbg !2562
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2563 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2569
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2567, metadata !DIExpression()), !dbg !2570
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2542, metadata !DIExpression(), metadata !2569, metadata ptr %3, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %0, metadata !2539, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 -1, metadata !2540, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %1, metadata !2541, metadata !DIExpression()), !dbg !2571
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2574, !tbaa.struct !2547, !DIAssignID !2575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2542, metadata !DIExpression(), metadata !2575, metadata ptr %3, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %3, metadata !1526, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 %1, metadata !1529, metadata !DIExpression()), !dbg !2576
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2578
  %5 = lshr i8 %1, 5, !dbg !2579
  %6 = zext nneg i8 %5 to i64, !dbg !2579
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2580
  call void @llvm.dbg.value(metadata ptr %7, metadata !1530, metadata !DIExpression()), !dbg !2576
  %8 = and i8 %1, 31, !dbg !2581
  %9 = zext nneg i8 %8 to i32, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %9, metadata !1532, metadata !DIExpression()), !dbg !2576
  %10 = load i32, ptr %7, align 4, !dbg !2582, !tbaa !814
  %11 = lshr i32 %10, %9, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %11, metadata !1533, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2576
  %12 = and i32 %11, 1, !dbg !2584
  %13 = xor i32 %12, 1, !dbg !2584
  %14 = shl nuw i32 %13, %9, !dbg !2585
  %15 = xor i32 %14, %10, !dbg !2586
  store i32 %15, ptr %7, align 4, !dbg !2586, !tbaa !814
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2587
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2588
  ret ptr %16, !dbg !2589
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2590 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2593
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2592, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata ptr %0, metadata !2567, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 58, metadata !2568, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2542, metadata !DIExpression(), metadata !2593, metadata ptr %2, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata ptr %0, metadata !2539, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i64 -1, metadata !2540, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8 58, metadata !2541, metadata !DIExpression()), !dbg !2597
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2600, !tbaa.struct !2547, !DIAssignID !2601
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2542, metadata !DIExpression(), metadata !2601, metadata ptr %2, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata ptr %2, metadata !1526, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 58, metadata !1529, metadata !DIExpression()), !dbg !2602
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2604
  call void @llvm.dbg.value(metadata ptr %3, metadata !1530, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 26, metadata !1532, metadata !DIExpression()), !dbg !2602
  %4 = load i32, ptr %3, align 4, !dbg !2605, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %4, metadata !1533, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2602
  %5 = or i32 %4, 67108864, !dbg !2606
  store i32 %5, ptr %3, align 4, !dbg !2606, !tbaa !814
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2607
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2608
  ret ptr %6, !dbg !2609
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2610 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2614
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2612, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2613, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2542, metadata !DIExpression(), metadata !2614, metadata ptr %3, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %0, metadata !2539, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %1, metadata !2540, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 58, metadata !2541, metadata !DIExpression()), !dbg !2616
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2619, !tbaa.struct !2547, !DIAssignID !2620
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2542, metadata !DIExpression(), metadata !2620, metadata ptr %3, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %3, metadata !1526, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 58, metadata !1529, metadata !DIExpression()), !dbg !2621
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2623
  call void @llvm.dbg.value(metadata ptr %4, metadata !1530, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 26, metadata !1532, metadata !DIExpression()), !dbg !2621
  %5 = load i32, ptr %4, align 4, !dbg !2624, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %5, metadata !1533, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2621
  %6 = or i32 %5, 67108864, !dbg !2625
  store i32 %6, ptr %4, align 4, !dbg !2625, !tbaa !814
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2626
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2627
  ret ptr %7, !dbg !2628
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2629 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2635
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2634, metadata !DIExpression(), metadata !2635, metadata ptr %4, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2438, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2631, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2632, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2633, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %1, metadata !2433, metadata !DIExpression()), !dbg !2640
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2438, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2640
  %5 = icmp eq i32 %1, 10, !dbg !2641
  br i1 %5, label %6, label %7, !dbg !2642

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2643, !noalias !2644
  unreachable, !dbg !2643

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2438, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2640
  store i32 %1, ptr %4, align 8, !dbg !2647, !tbaa.struct !2547, !DIAssignID !2648
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2647
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2647
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2634, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2648, metadata ptr %4, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2634, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2649, metadata ptr %8, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1526, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1529, metadata !DIExpression()), !dbg !2650
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2652
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1530, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1532, metadata !DIExpression()), !dbg !2650
  %10 = load i32, ptr %9, align 4, !dbg !2653, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1533, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2650
  %11 = or i32 %10, 67108864, !dbg !2654
  store i32 %11, ptr %9, align 4, !dbg !2654, !tbaa !814, !DIAssignID !2655
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2634, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2655, metadata ptr %9, metadata !DIExpression()), !dbg !2636
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2656
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2657
  ret ptr %12, !dbg !2658
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2659 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2667
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2663, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2664, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2665, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2666, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(), metadata !2667, metadata ptr %5, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i32 %0, metadata !2674, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %1, metadata !2675, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %2, metadata !2676, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %3, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 -1, metadata !2678, metadata !DIExpression()), !dbg !2679
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2682, !tbaa.struct !2547, !DIAssignID !2683
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(), metadata !2683, metadata ptr %5, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2684, metadata ptr undef, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %1, metadata !1567, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %2, metadata !1568, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !2685
  store i32 10, ptr %5, align 8, !dbg !2687, !tbaa !1509, !DIAssignID !2688
  call void @llvm.dbg.assign(metadata i32 10, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2688, metadata ptr %5, metadata !DIExpression()), !dbg !2679
  %6 = icmp ne ptr %1, null, !dbg !2689
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2690
  br i1 %8, label %10, label %9, !dbg !2690

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2691
  unreachable, !dbg !2691

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2692
  store ptr %1, ptr %11, align 8, !dbg !2693, !tbaa !1580, !DIAssignID !2694
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2694, metadata ptr %11, metadata !DIExpression()), !dbg !2679
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2695
  store ptr %2, ptr %12, align 8, !dbg !2696, !tbaa !1583, !DIAssignID !2697
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2697, metadata ptr %12, metadata !DIExpression()), !dbg !2679
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2698
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2699
  ret ptr %13, !dbg !2700
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2670 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2701
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(), metadata !2701, metadata ptr %6, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2674, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2675, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2676, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2677, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2678, metadata !DIExpression()), !dbg !2702
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2704, !tbaa.struct !2547, !DIAssignID !2705
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(), metadata !2705, metadata ptr %6, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2706, metadata ptr undef, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %6, metadata !1566, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %1, metadata !1567, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %2, metadata !1568, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %6, metadata !1566, metadata !DIExpression()), !dbg !2707
  store i32 10, ptr %6, align 8, !dbg !2709, !tbaa !1509, !DIAssignID !2710
  call void @llvm.dbg.assign(metadata i32 10, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2710, metadata ptr %6, metadata !DIExpression()), !dbg !2702
  %7 = icmp ne ptr %1, null, !dbg !2711
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2712
  br i1 %9, label %11, label %10, !dbg !2712

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2713
  unreachable, !dbg !2713

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2714
  store ptr %1, ptr %12, align 8, !dbg !2715, !tbaa !1580, !DIAssignID !2716
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2716, metadata ptr %12, metadata !DIExpression()), !dbg !2702
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2717
  store ptr %2, ptr %13, align 8, !dbg !2718, !tbaa !1583, !DIAssignID !2719
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2719, metadata ptr %13, metadata !DIExpression()), !dbg !2702
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2720
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2721
  ret ptr %14, !dbg !2722
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2723 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2730
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2727, metadata !DIExpression()), !dbg !2731
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2728, metadata !DIExpression()), !dbg !2731
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 0, metadata !2663, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %0, metadata !2664, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %1, metadata !2665, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %2, metadata !2666, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(), metadata !2730, metadata ptr %4, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 0, metadata !2674, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %0, metadata !2675, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %1, metadata !2676, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %2, metadata !2677, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 -1, metadata !2678, metadata !DIExpression()), !dbg !2734
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2737, !tbaa.struct !2547, !DIAssignID !2738
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(), metadata !2738, metadata ptr %4, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2739, metadata ptr undef, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %4, metadata !1566, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %0, metadata !1567, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %1, metadata !1568, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %4, metadata !1566, metadata !DIExpression()), !dbg !2740
  store i32 10, ptr %4, align 8, !dbg !2742, !tbaa !1509, !DIAssignID !2743
  call void @llvm.dbg.assign(metadata i32 10, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2743, metadata ptr %4, metadata !DIExpression()), !dbg !2734
  %5 = icmp ne ptr %0, null, !dbg !2744
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2745
  br i1 %7, label %9, label %8, !dbg !2745

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2746
  unreachable, !dbg !2746

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2747
  store ptr %0, ptr %10, align 8, !dbg !2748, !tbaa !1580, !DIAssignID !2749
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2749, metadata ptr %10, metadata !DIExpression()), !dbg !2734
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2750
  store ptr %1, ptr %11, align 8, !dbg !2751, !tbaa !1583, !DIAssignID !2752
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2752, metadata ptr %11, metadata !DIExpression()), !dbg !2734
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2753
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2754
  ret ptr %12, !dbg !2755
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2756 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2764
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2760, metadata !DIExpression()), !dbg !2765
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2761, metadata !DIExpression()), !dbg !2765
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2762, metadata !DIExpression()), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2763, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(), metadata !2764, metadata ptr %5, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 0, metadata !2674, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %0, metadata !2675, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %1, metadata !2676, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %2, metadata !2677, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %3, metadata !2678, metadata !DIExpression()), !dbg !2766
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2769, !tbaa.struct !2547, !DIAssignID !2770
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(), metadata !2770, metadata ptr %5, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2771, metadata ptr undef, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %0, metadata !1567, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %1, metadata !1568, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !2772
  store i32 10, ptr %5, align 8, !dbg !2774, !tbaa !1509, !DIAssignID !2775
  call void @llvm.dbg.assign(metadata i32 10, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2775, metadata ptr %5, metadata !DIExpression()), !dbg !2766
  %6 = icmp ne ptr %0, null, !dbg !2776
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2777
  br i1 %8, label %10, label %9, !dbg !2777

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2778
  unreachable, !dbg !2778

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2779
  store ptr %0, ptr %11, align 8, !dbg !2780, !tbaa !1580, !DIAssignID !2781
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2781, metadata ptr %11, metadata !DIExpression()), !dbg !2766
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2782
  store ptr %1, ptr %12, align 8, !dbg !2783, !tbaa !1583, !DIAssignID !2784
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2669, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2784, metadata ptr %12, metadata !DIExpression()), !dbg !2766
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2785
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2786
  ret ptr %13, !dbg !2787
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2788 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2792, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2793, metadata !DIExpression()), !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2794, metadata !DIExpression()), !dbg !2795
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2796
  ret ptr %4, !dbg !2797
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2798 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2802, metadata !DIExpression()), !dbg !2804
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2803, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %0, metadata !2793, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %1, metadata !2794, metadata !DIExpression()), !dbg !2805
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2807
  ret ptr %3, !dbg !2808
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2809 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2813, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2814, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %0, metadata !2792, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %1, metadata !2793, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 -1, metadata !2794, metadata !DIExpression()), !dbg !2816
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2818
  ret ptr %3, !dbg !2819
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2820 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2824, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i32 0, metadata !2813, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %0, metadata !2814, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %0, metadata !2793, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 -1, metadata !2794, metadata !DIExpression()), !dbg !2828
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2830
  ret ptr %2, !dbg !2831
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2832 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2871, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2872, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2873, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2874, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2875, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2876, metadata !DIExpression()), !dbg !2877
  %7 = icmp eq ptr %1, null, !dbg !2878
  br i1 %7, label %10, label %8, !dbg !2880

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2881
  br label %12, !dbg !2881

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.73, ptr noundef %2, ptr noundef %3) #37, !dbg !2882
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.3.75, i32 noundef 5) #37, !dbg !2883
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2883
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2884
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.5.77, i32 noundef 5) #37, !dbg !2885
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.78) #37, !dbg !2885
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2886
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
  ], !dbg !2887

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.7.79, i32 noundef 5) #37, !dbg !2888
  %21 = load ptr, ptr %4, align 8, !dbg !2888, !tbaa !753
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2888
  br label %147, !dbg !2890

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.8.80, i32 noundef 5) #37, !dbg !2891
  %25 = load ptr, ptr %4, align 8, !dbg !2891, !tbaa !753
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2891
  %27 = load ptr, ptr %26, align 8, !dbg !2891, !tbaa !753
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2891
  br label %147, !dbg !2892

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.9.81, i32 noundef 5) #37, !dbg !2893
  %31 = load ptr, ptr %4, align 8, !dbg !2893, !tbaa !753
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2893
  %33 = load ptr, ptr %32, align 8, !dbg !2893, !tbaa !753
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2893
  %35 = load ptr, ptr %34, align 8, !dbg !2893, !tbaa !753
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2893
  br label %147, !dbg !2894

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.10.82, i32 noundef 5) #37, !dbg !2895
  %39 = load ptr, ptr %4, align 8, !dbg !2895, !tbaa !753
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2895
  %41 = load ptr, ptr %40, align 8, !dbg !2895, !tbaa !753
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2895
  %43 = load ptr, ptr %42, align 8, !dbg !2895, !tbaa !753
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2895
  %45 = load ptr, ptr %44, align 8, !dbg !2895, !tbaa !753
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2895
  br label %147, !dbg !2896

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.11.83, i32 noundef 5) #37, !dbg !2897
  %49 = load ptr, ptr %4, align 8, !dbg !2897, !tbaa !753
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2897
  %51 = load ptr, ptr %50, align 8, !dbg !2897, !tbaa !753
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2897
  %53 = load ptr, ptr %52, align 8, !dbg !2897, !tbaa !753
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2897
  %55 = load ptr, ptr %54, align 8, !dbg !2897, !tbaa !753
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2897
  %57 = load ptr, ptr %56, align 8, !dbg !2897, !tbaa !753
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2897
  br label %147, !dbg !2898

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.12.84, i32 noundef 5) #37, !dbg !2899
  %61 = load ptr, ptr %4, align 8, !dbg !2899, !tbaa !753
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2899
  %63 = load ptr, ptr %62, align 8, !dbg !2899, !tbaa !753
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2899
  %65 = load ptr, ptr %64, align 8, !dbg !2899, !tbaa !753
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2899
  %67 = load ptr, ptr %66, align 8, !dbg !2899, !tbaa !753
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2899
  %69 = load ptr, ptr %68, align 8, !dbg !2899, !tbaa !753
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2899
  %71 = load ptr, ptr %70, align 8, !dbg !2899, !tbaa !753
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2899
  br label %147, !dbg !2900

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.13.85, i32 noundef 5) #37, !dbg !2901
  %75 = load ptr, ptr %4, align 8, !dbg !2901, !tbaa !753
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2901
  %77 = load ptr, ptr %76, align 8, !dbg !2901, !tbaa !753
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2901
  %79 = load ptr, ptr %78, align 8, !dbg !2901, !tbaa !753
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2901
  %81 = load ptr, ptr %80, align 8, !dbg !2901, !tbaa !753
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2901
  %83 = load ptr, ptr %82, align 8, !dbg !2901, !tbaa !753
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2901
  %85 = load ptr, ptr %84, align 8, !dbg !2901, !tbaa !753
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2901
  %87 = load ptr, ptr %86, align 8, !dbg !2901, !tbaa !753
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2901
  br label %147, !dbg !2902

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.14.86, i32 noundef 5) #37, !dbg !2903
  %91 = load ptr, ptr %4, align 8, !dbg !2903, !tbaa !753
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2903
  %93 = load ptr, ptr %92, align 8, !dbg !2903, !tbaa !753
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2903
  %95 = load ptr, ptr %94, align 8, !dbg !2903, !tbaa !753
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2903
  %97 = load ptr, ptr %96, align 8, !dbg !2903, !tbaa !753
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2903
  %99 = load ptr, ptr %98, align 8, !dbg !2903, !tbaa !753
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2903
  %101 = load ptr, ptr %100, align 8, !dbg !2903, !tbaa !753
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2903
  %103 = load ptr, ptr %102, align 8, !dbg !2903, !tbaa !753
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2903
  %105 = load ptr, ptr %104, align 8, !dbg !2903, !tbaa !753
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2903
  br label %147, !dbg !2904

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.15.87, i32 noundef 5) #37, !dbg !2905
  %109 = load ptr, ptr %4, align 8, !dbg !2905, !tbaa !753
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2905
  %111 = load ptr, ptr %110, align 8, !dbg !2905, !tbaa !753
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2905
  %113 = load ptr, ptr %112, align 8, !dbg !2905, !tbaa !753
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2905
  %115 = load ptr, ptr %114, align 8, !dbg !2905, !tbaa !753
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2905
  %117 = load ptr, ptr %116, align 8, !dbg !2905, !tbaa !753
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2905
  %119 = load ptr, ptr %118, align 8, !dbg !2905, !tbaa !753
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2905
  %121 = load ptr, ptr %120, align 8, !dbg !2905, !tbaa !753
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2905
  %123 = load ptr, ptr %122, align 8, !dbg !2905, !tbaa !753
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2905
  %125 = load ptr, ptr %124, align 8, !dbg !2905, !tbaa !753
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2905
  br label %147, !dbg !2906

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.16.88, i32 noundef 5) #37, !dbg !2907
  %129 = load ptr, ptr %4, align 8, !dbg !2907, !tbaa !753
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2907
  %131 = load ptr, ptr %130, align 8, !dbg !2907, !tbaa !753
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2907
  %133 = load ptr, ptr %132, align 8, !dbg !2907, !tbaa !753
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2907
  %135 = load ptr, ptr %134, align 8, !dbg !2907, !tbaa !753
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2907
  %137 = load ptr, ptr %136, align 8, !dbg !2907, !tbaa !753
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2907
  %139 = load ptr, ptr %138, align 8, !dbg !2907, !tbaa !753
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2907
  %141 = load ptr, ptr %140, align 8, !dbg !2907, !tbaa !753
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2907
  %143 = load ptr, ptr %142, align 8, !dbg !2907, !tbaa !753
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2907
  %145 = load ptr, ptr %144, align 8, !dbg !2907, !tbaa !753
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2907
  br label %147, !dbg !2908

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2909
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2910 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2915, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2916, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2917, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2918, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2919, metadata !DIExpression()), !dbg !2920
  br label %6, !dbg !2921

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2919, metadata !DIExpression()), !dbg !2920
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2924
  %9 = load ptr, ptr %8, align 8, !dbg !2924, !tbaa !753
  %10 = icmp eq ptr %9, null, !dbg !2926
  %11 = add i64 %7, 1, !dbg !2927
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2919, metadata !DIExpression()), !dbg !2920
  br i1 %10, label %12, label %6, !dbg !2926, !llvm.loop !2928

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2930
  ret void, !dbg !2931
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2932 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !2951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2949, metadata !DIExpression(), metadata !2951, metadata ptr %6, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2943, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2944, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2945, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2946, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !2952
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2953
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2948, metadata !DIExpression()), !dbg !2952
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2948, metadata !DIExpression()), !dbg !2952
  %10 = icmp ult i32 %9, 41, !dbg !2954
  br i1 %10, label %11, label %16, !dbg !2954

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2954
  %13 = zext nneg i32 %9 to i64, !dbg !2954
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2954
  %15 = add nuw nsw i32 %9, 8, !dbg !2954
  store i32 %15, ptr %4, align 8, !dbg !2954
  br label %19, !dbg !2954

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2954
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2954
  store ptr %18, ptr %7, align 8, !dbg !2954
  br label %19, !dbg !2954

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2954
  %22 = load ptr, ptr %21, align 8, !dbg !2954
  store ptr %22, ptr %6, align 16, !dbg !2957, !tbaa !753
  %23 = icmp eq ptr %22, null, !dbg !2958
  br i1 %23, label %128, label %24, !dbg !2959

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2948, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2948, metadata !DIExpression()), !dbg !2952
  %25 = icmp ult i32 %20, 41, !dbg !2954
  br i1 %25, label %29, label %26, !dbg !2954

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2954
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2954
  store ptr %28, ptr %7, align 8, !dbg !2954
  br label %34, !dbg !2954

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2954
  %31 = zext nneg i32 %20 to i64, !dbg !2954
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2954
  %33 = add nuw nsw i32 %20, 8, !dbg !2954
  store i32 %33, ptr %4, align 8, !dbg !2954
  br label %34, !dbg !2954

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2954
  %37 = load ptr, ptr %36, align 8, !dbg !2954
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2960
  store ptr %37, ptr %38, align 8, !dbg !2957, !tbaa !753
  %39 = icmp eq ptr %37, null, !dbg !2958
  br i1 %39, label %128, label %40, !dbg !2959

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2948, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2948, metadata !DIExpression()), !dbg !2952
  %41 = icmp ult i32 %35, 41, !dbg !2954
  br i1 %41, label %45, label %42, !dbg !2954

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2954
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2954
  store ptr %44, ptr %7, align 8, !dbg !2954
  br label %50, !dbg !2954

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2954
  %47 = zext nneg i32 %35 to i64, !dbg !2954
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2954
  %49 = add nuw nsw i32 %35, 8, !dbg !2954
  store i32 %49, ptr %4, align 8, !dbg !2954
  br label %50, !dbg !2954

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2954
  %53 = load ptr, ptr %52, align 8, !dbg !2954
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2960
  store ptr %53, ptr %54, align 16, !dbg !2957, !tbaa !753
  %55 = icmp eq ptr %53, null, !dbg !2958
  br i1 %55, label %128, label %56, !dbg !2959

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2948, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2948, metadata !DIExpression()), !dbg !2952
  %57 = icmp ult i32 %51, 41, !dbg !2954
  br i1 %57, label %61, label %58, !dbg !2954

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2954
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2954
  store ptr %60, ptr %7, align 8, !dbg !2954
  br label %66, !dbg !2954

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2954
  %63 = zext nneg i32 %51 to i64, !dbg !2954
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2954
  %65 = add nuw nsw i32 %51, 8, !dbg !2954
  store i32 %65, ptr %4, align 8, !dbg !2954
  br label %66, !dbg !2954

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2954
  %69 = load ptr, ptr %68, align 8, !dbg !2954
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2960
  store ptr %69, ptr %70, align 8, !dbg !2957, !tbaa !753
  %71 = icmp eq ptr %69, null, !dbg !2958
  br i1 %71, label %128, label %72, !dbg !2959

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2948, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2948, metadata !DIExpression()), !dbg !2952
  %73 = icmp ult i32 %67, 41, !dbg !2954
  br i1 %73, label %77, label %74, !dbg !2954

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2954
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2954
  store ptr %76, ptr %7, align 8, !dbg !2954
  br label %82, !dbg !2954

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2954
  %79 = zext nneg i32 %67 to i64, !dbg !2954
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2954
  %81 = add nuw nsw i32 %67, 8, !dbg !2954
  store i32 %81, ptr %4, align 8, !dbg !2954
  br label %82, !dbg !2954

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2954
  %85 = load ptr, ptr %84, align 8, !dbg !2954
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2960
  store ptr %85, ptr %86, align 16, !dbg !2957, !tbaa !753
  %87 = icmp eq ptr %85, null, !dbg !2958
  br i1 %87, label %128, label %88, !dbg !2959

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2948, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2948, metadata !DIExpression()), !dbg !2952
  %89 = icmp ult i32 %83, 41, !dbg !2954
  br i1 %89, label %93, label %90, !dbg !2954

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2954
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2954
  store ptr %92, ptr %7, align 8, !dbg !2954
  br label %98, !dbg !2954

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2954
  %95 = zext nneg i32 %83 to i64, !dbg !2954
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2954
  %97 = add nuw nsw i32 %83, 8, !dbg !2954
  store i32 %97, ptr %4, align 8, !dbg !2954
  br label %98, !dbg !2954

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2954
  %100 = load ptr, ptr %99, align 8, !dbg !2954
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2960
  store ptr %100, ptr %101, align 8, !dbg !2957, !tbaa !753
  %102 = icmp eq ptr %100, null, !dbg !2958
  br i1 %102, label %128, label %103, !dbg !2959

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2948, metadata !DIExpression()), !dbg !2952
  %104 = load ptr, ptr %7, align 8, !dbg !2954
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2954
  store ptr %105, ptr %7, align 8, !dbg !2954
  %106 = load ptr, ptr %104, align 8, !dbg !2954
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2960
  store ptr %106, ptr %107, align 16, !dbg !2957, !tbaa !753
  %108 = icmp eq ptr %106, null, !dbg !2958
  br i1 %108, label %128, label %109, !dbg !2959

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2948, metadata !DIExpression()), !dbg !2952
  %110 = load ptr, ptr %7, align 8, !dbg !2954
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2954
  store ptr %111, ptr %7, align 8, !dbg !2954
  %112 = load ptr, ptr %110, align 8, !dbg !2954
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2960
  store ptr %112, ptr %113, align 8, !dbg !2957, !tbaa !753
  %114 = icmp eq ptr %112, null, !dbg !2958
  br i1 %114, label %128, label %115, !dbg !2959

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2948, metadata !DIExpression()), !dbg !2952
  %116 = load ptr, ptr %7, align 8, !dbg !2954
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2954
  store ptr %117, ptr %7, align 8, !dbg !2954
  %118 = load ptr, ptr %116, align 8, !dbg !2954
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2960
  store ptr %118, ptr %119, align 16, !dbg !2957, !tbaa !753
  %120 = icmp eq ptr %118, null, !dbg !2958
  br i1 %120, label %128, label %121, !dbg !2959

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2948, metadata !DIExpression()), !dbg !2952
  %122 = load ptr, ptr %7, align 8, !dbg !2954
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2954
  store ptr %123, ptr %7, align 8, !dbg !2954
  %124 = load ptr, ptr %122, align 8, !dbg !2954
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2960
  store ptr %124, ptr %125, align 8, !dbg !2957, !tbaa !753
  %126 = icmp eq ptr %124, null, !dbg !2958
  %127 = select i1 %126, i64 9, i64 10, !dbg !2959
  br label %128, !dbg !2959

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2961
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2962
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2963
  ret void, !dbg !2963
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2964 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2977
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2972, metadata !DIExpression(), metadata !2977, metadata ptr %5, metadata !DIExpression()), !dbg !2978
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2968, metadata !DIExpression()), !dbg !2978
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2969, metadata !DIExpression()), !dbg !2978
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2970, metadata !DIExpression()), !dbg !2978
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !2978
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !2979
  call void @llvm.va_start(ptr nonnull %5), !dbg !2980
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2981
  call void @llvm.va_end(ptr nonnull %5), !dbg !2982
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !2983
  ret void, !dbg !2983
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2984 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2985, !tbaa !753
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %1), !dbg !2985
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.17.93, i32 noundef 5) #37, !dbg !2986
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #37, !dbg !2986
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !2987
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.94, ptr noundef nonnull @.str.21) #37, !dbg !2987
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2988
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2988
  ret void, !dbg !2989
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2990 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2995, metadata !DIExpression()), !dbg !2998
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2996, metadata !DIExpression()), !dbg !2998
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata ptr %0, metadata !2999, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %1, metadata !3002, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %2, metadata !3003, metadata !DIExpression()), !dbg !3004
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %4, metadata !3007, metadata !DIExpression()), !dbg !3012
  %5 = icmp eq ptr %4, null, !dbg !3014
  br i1 %5, label %6, label %7, !dbg !3016

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3017
  unreachable, !dbg !3017

7:                                                ; preds = %3
  ret ptr %4, !dbg !3018
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3000 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2999, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3002, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3003, metadata !DIExpression()), !dbg !3019
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3020
  call void @llvm.dbg.value(metadata ptr %4, metadata !3007, metadata !DIExpression()), !dbg !3021
  %5 = icmp eq ptr %4, null, !dbg !3023
  br i1 %5, label %6, label %7, !dbg !3024

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3025
  unreachable, !dbg !3025

7:                                                ; preds = %3
  ret ptr %4, !dbg !3026
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3027 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3031, metadata !DIExpression()), !dbg !3032
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3033
  call void @llvm.dbg.value(metadata ptr %2, metadata !3007, metadata !DIExpression()), !dbg !3034
  %3 = icmp eq ptr %2, null, !dbg !3036
  br i1 %3, label %4, label %5, !dbg !3037

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3038
  unreachable, !dbg !3038

5:                                                ; preds = %1
  ret ptr %2, !dbg !3039
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3040 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3041 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %0, metadata !3047, metadata !DIExpression()), !dbg !3051
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3053
  call void @llvm.dbg.value(metadata ptr %2, metadata !3007, metadata !DIExpression()), !dbg !3054
  %3 = icmp eq ptr %2, null, !dbg !3056
  br i1 %3, label %4, label %5, !dbg !3057

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3058
  unreachable, !dbg !3058

5:                                                ; preds = %1
  ret ptr %2, !dbg !3059
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3060 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %0, metadata !3031, metadata !DIExpression()), !dbg !3066
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3068
  call void @llvm.dbg.value(metadata ptr %2, metadata !3007, metadata !DIExpression()), !dbg !3069
  %3 = icmp eq ptr %2, null, !dbg !3071
  br i1 %3, label %4, label %5, !dbg !3072

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3073
  unreachable, !dbg !3073

5:                                                ; preds = %1
  ret ptr %2, !dbg !3074
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3075 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3079, metadata !DIExpression()), !dbg !3081
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3080, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr %0, metadata !3082, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %1, metadata !3086, metadata !DIExpression()), !dbg !3087
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3089
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3090
  call void @llvm.dbg.value(metadata ptr %4, metadata !3007, metadata !DIExpression()), !dbg !3091
  %5 = icmp eq ptr %4, null, !dbg !3093
  br i1 %5, label %6, label %7, !dbg !3094

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3095
  unreachable, !dbg !3095

7:                                                ; preds = %2
  ret ptr %4, !dbg !3096
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3097 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3098 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3102, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %0, metadata !3105, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata ptr %0, metadata !3082, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %1, metadata !3086, metadata !DIExpression()), !dbg !3111
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3113
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3114
  call void @llvm.dbg.value(metadata ptr %4, metadata !3007, metadata !DIExpression()), !dbg !3115
  %5 = icmp eq ptr %4, null, !dbg !3117
  br i1 %5, label %6, label %7, !dbg !3118

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3119
  unreachable, !dbg !3119

7:                                                ; preds = %2
  ret ptr %4, !dbg !3120
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3121 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3125, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3126, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %1, metadata !3132, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %2, metadata !3133, metadata !DIExpression()), !dbg !3134
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3136
  call void @llvm.dbg.value(metadata ptr %4, metadata !3007, metadata !DIExpression()), !dbg !3137
  %5 = icmp eq ptr %4, null, !dbg !3139
  br i1 %5, label %6, label %7, !dbg !3140

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3141
  unreachable, !dbg !3141

7:                                                ; preds = %3
  ret ptr %4, !dbg !3142
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3143 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3147, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr null, metadata !2999, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %0, metadata !3002, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %1, metadata !3003, metadata !DIExpression()), !dbg !3150
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3152
  call void @llvm.dbg.value(metadata ptr %3, metadata !3007, metadata !DIExpression()), !dbg !3153
  %4 = icmp eq ptr %3, null, !dbg !3155
  br i1 %4, label %5, label %6, !dbg !3156

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3157
  unreachable, !dbg !3157

6:                                                ; preds = %2
  ret ptr %3, !dbg !3158
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3159 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3163, metadata !DIExpression()), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3164, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata ptr null, metadata !3125, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %0, metadata !3126, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata ptr null, metadata !3129, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i64 %0, metadata !3132, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3168
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3170
  call void @llvm.dbg.value(metadata ptr %3, metadata !3007, metadata !DIExpression()), !dbg !3171
  %4 = icmp eq ptr %3, null, !dbg !3173
  br i1 %4, label %5, label %6, !dbg !3174

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3175
  unreachable, !dbg !3175

6:                                                ; preds = %2
  ret ptr %3, !dbg !3176
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3177 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3181, metadata !DIExpression()), !dbg !3183
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3182, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %0, metadata !688, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata ptr %1, metadata !689, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 1, metadata !690, metadata !DIExpression()), !dbg !3184
  %3 = load i64, ptr %1, align 8, !dbg !3186, !tbaa !2250
  call void @llvm.dbg.value(metadata i64 %3, metadata !691, metadata !DIExpression()), !dbg !3184
  %4 = icmp eq ptr %0, null, !dbg !3187
  br i1 %4, label %5, label %8, !dbg !3189

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3190
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3193
  br label %15, !dbg !3193

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3194
  %10 = add nuw i64 %9, 1, !dbg !3194
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3194
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3194
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %13, metadata !691, metadata !DIExpression()), !dbg !3184
  br i1 %12, label %14, label %15, !dbg !3197

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3198
  unreachable, !dbg !3198

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3184
  call void @llvm.dbg.value(metadata i64 %16, metadata !691, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata ptr %0, metadata !2999, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %16, metadata !3002, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 1, metadata !3003, metadata !DIExpression()), !dbg !3199
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3201
  call void @llvm.dbg.value(metadata ptr %17, metadata !3007, metadata !DIExpression()), !dbg !3202
  %18 = icmp eq ptr %17, null, !dbg !3204
  br i1 %18, label %19, label %20, !dbg !3205

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3206
  unreachable, !dbg !3206

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !688, metadata !DIExpression()), !dbg !3184
  store i64 %16, ptr %1, align 8, !dbg !3207, !tbaa !2250
  ret ptr %17, !dbg !3208
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !683 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !688, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !689, metadata !DIExpression()), !dbg !3209
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !690, metadata !DIExpression()), !dbg !3209
  %4 = load i64, ptr %1, align 8, !dbg !3210, !tbaa !2250
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !691, metadata !DIExpression()), !dbg !3209
  %5 = icmp eq ptr %0, null, !dbg !3211
  br i1 %5, label %6, label %13, !dbg !3212

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3213
  br i1 %7, label %8, label %20, !dbg !3214

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !691, metadata !DIExpression()), !dbg !3209
  %10 = icmp ugt i64 %2, 128, !dbg !3217
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !691, metadata !DIExpression()), !dbg !3209
  br label %20, !dbg !3219

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3220
  %15 = add nuw i64 %14, 1, !dbg !3220
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3220
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3220
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !691, metadata !DIExpression()), !dbg !3209
  br i1 %17, label %19, label %20, !dbg !3221

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3222
  unreachable, !dbg !3222

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3209
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !691, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata ptr %0, metadata !2999, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %21, metadata !3002, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %2, metadata !3003, metadata !DIExpression()), !dbg !3223
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3225
  call void @llvm.dbg.value(metadata ptr %22, metadata !3007, metadata !DIExpression()), !dbg !3226
  %23 = icmp eq ptr %22, null, !dbg !3228
  br i1 %23, label %24, label %25, !dbg !3229

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3230
  unreachable, !dbg !3230

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !688, metadata !DIExpression()), !dbg !3209
  store i64 %21, ptr %1, align 8, !dbg !3231, !tbaa !2250
  ret ptr %22, !dbg !3232
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !695 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !704, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !705, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !706, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !707, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !708, metadata !DIExpression()), !dbg !3233
  %6 = load i64, ptr %1, align 8, !dbg !3234, !tbaa !2250
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !709, metadata !DIExpression()), !dbg !3233
  %7 = ashr i64 %6, 1, !dbg !3235
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3235
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3235
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !710, metadata !DIExpression()), !dbg !3233
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !710, metadata !DIExpression()), !dbg !3233
  %12 = icmp sgt i64 %3, -1, !dbg !3238
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3240
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3240
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !710, metadata !DIExpression()), !dbg !3233
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3241
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3241
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !711, metadata !DIExpression()), !dbg !3233
  %18 = icmp slt i64 %17, 128, !dbg !3241
  %19 = select i1 %18, i64 128, i64 0, !dbg !3241
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !712, metadata !DIExpression()), !dbg !3233
  %21 = icmp eq i64 %20, 0, !dbg !3242
  br i1 %21, label %26, label %22, !dbg !3244

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3245
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !710, metadata !DIExpression()), !dbg !3233
  %24 = srem i64 %20, %4, !dbg !3247
  %25 = sub nsw i64 %20, %24, !dbg !3248
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !711, metadata !DIExpression()), !dbg !3233
  br label %26, !dbg !3249

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3233
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !711, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !710, metadata !DIExpression()), !dbg !3233
  %29 = icmp eq ptr %0, null, !dbg !3250
  br i1 %29, label %30, label %31, !dbg !3252

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3253, !tbaa !2250
  br label %31, !dbg !3254

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3255
  %33 = icmp slt i64 %32, %2, !dbg !3257
  br i1 %33, label %34, label %46, !dbg !3258

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3259
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3259
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !710, metadata !DIExpression()), !dbg !3233
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3260
  br i1 %40, label %45, label %41, !dbg !3260

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3261
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3261
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !711, metadata !DIExpression()), !dbg !3233
  br i1 %43, label %45, label %46, !dbg !3262

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3263
  unreachable, !dbg !3263

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3233
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !711, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !710, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %0, metadata !3079, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %48, metadata !3080, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr %0, metadata !3082, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %48, metadata !3086, metadata !DIExpression()), !dbg !3266
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3268
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3269
  call void @llvm.dbg.value(metadata ptr %50, metadata !3007, metadata !DIExpression()), !dbg !3270
  %51 = icmp eq ptr %50, null, !dbg !3272
  br i1 %51, label %52, label %53, !dbg !3273

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3274
  unreachable, !dbg !3274

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !704, metadata !DIExpression()), !dbg !3233
  store i64 %47, ptr %1, align 8, !dbg !3275, !tbaa !2250
  ret ptr %50, !dbg !3276
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3277 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3279, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %0, metadata !3281, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 1, metadata !3284, metadata !DIExpression()), !dbg !3285
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3287
  call void @llvm.dbg.value(metadata ptr %2, metadata !3007, metadata !DIExpression()), !dbg !3288
  %3 = icmp eq ptr %2, null, !dbg !3290
  br i1 %3, label %4, label %5, !dbg !3291

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3292
  unreachable, !dbg !3292

5:                                                ; preds = %1
  ret ptr %2, !dbg !3293
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3294 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3282 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3281, metadata !DIExpression()), !dbg !3295
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3284, metadata !DIExpression()), !dbg !3295
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3296
  call void @llvm.dbg.value(metadata ptr %3, metadata !3007, metadata !DIExpression()), !dbg !3297
  %4 = icmp eq ptr %3, null, !dbg !3299
  br i1 %4, label %5, label %6, !dbg !3300

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3301
  unreachable, !dbg !3301

6:                                                ; preds = %2
  ret ptr %3, !dbg !3302
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3303 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3305, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %0, metadata !3307, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 1, metadata !3310, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %0, metadata !3313, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 1, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %0, metadata !3313, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 1, metadata !3316, metadata !DIExpression()), !dbg !3317
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3319
  call void @llvm.dbg.value(metadata ptr %2, metadata !3007, metadata !DIExpression()), !dbg !3320
  %3 = icmp eq ptr %2, null, !dbg !3322
  br i1 %3, label %4, label %5, !dbg !3323

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3324
  unreachable, !dbg !3324

5:                                                ; preds = %1
  ret ptr %2, !dbg !3325
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3308 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3307, metadata !DIExpression()), !dbg !3326
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3310, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %0, metadata !3313, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3316, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %0, metadata !3313, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3316, metadata !DIExpression()), !dbg !3327
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3329
  call void @llvm.dbg.value(metadata ptr %3, metadata !3007, metadata !DIExpression()), !dbg !3330
  %4 = icmp eq ptr %3, null, !dbg !3332
  br i1 %4, label %5, label %6, !dbg !3333

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3334
  unreachable, !dbg !3334

6:                                                ; preds = %2
  ret ptr %3, !dbg !3335
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3336 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3340, metadata !DIExpression()), !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %1, metadata !3031, metadata !DIExpression()), !dbg !3343
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3345
  call void @llvm.dbg.value(metadata ptr %3, metadata !3007, metadata !DIExpression()), !dbg !3346
  %4 = icmp eq ptr %3, null, !dbg !3348
  br i1 %4, label %5, label %6, !dbg !3349

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3350
  unreachable, !dbg !3350

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3351, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata ptr %0, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %1, metadata !3358, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3361
  ret ptr %3, !dbg !3362
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3363 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3367, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %1, metadata !3045, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %1, metadata !3047, metadata !DIExpression()), !dbg !3372
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3374
  call void @llvm.dbg.value(metadata ptr %3, metadata !3007, metadata !DIExpression()), !dbg !3375
  %4 = icmp eq ptr %3, null, !dbg !3377
  br i1 %4, label %5, label %6, !dbg !3378

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3379
  unreachable, !dbg !3379

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3351, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata ptr %0, metadata !3357, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %1, metadata !3358, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3382
  ret ptr %3, !dbg !3383
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3384 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3388, metadata !DIExpression()), !dbg !3391
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3389, metadata !DIExpression()), !dbg !3391
  %3 = add nsw i64 %1, 1, !dbg !3392
  call void @llvm.dbg.value(metadata i64 %3, metadata !3045, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %3, metadata !3047, metadata !DIExpression()), !dbg !3395
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3397
  call void @llvm.dbg.value(metadata ptr %4, metadata !3007, metadata !DIExpression()), !dbg !3398
  %5 = icmp eq ptr %4, null, !dbg !3400
  br i1 %5, label %6, label %7, !dbg !3401

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3402
  unreachable, !dbg !3402

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3390, metadata !DIExpression()), !dbg !3391
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3403
  store i8 0, ptr %8, align 1, !dbg !3404, !tbaa !823
  call void @llvm.dbg.value(metadata ptr %4, metadata !3351, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata ptr %0, metadata !3357, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %1, metadata !3358, metadata !DIExpression()), !dbg !3405
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3407
  ret ptr %4, !dbg !3408
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3409 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3411, metadata !DIExpression()), !dbg !3412
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3413
  %3 = add i64 %2, 1, !dbg !3414
  call void @llvm.dbg.value(metadata ptr %0, metadata !3340, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %3, metadata !3341, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %3, metadata !3031, metadata !DIExpression()), !dbg !3417
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3419
  call void @llvm.dbg.value(metadata ptr %4, metadata !3007, metadata !DIExpression()), !dbg !3420
  %5 = icmp eq ptr %4, null, !dbg !3422
  br i1 %5, label %6, label %7, !dbg !3423

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3424
  unreachable, !dbg !3424

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3351, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata ptr %0, metadata !3357, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %3, metadata !3358, metadata !DIExpression()), !dbg !3425
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3427
  ret ptr %4, !dbg !3428
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3429 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3434, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()), !dbg !3435
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.105, ptr noundef nonnull @.str.2.106, i32 noundef 5) #37, !dbg !3434
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef %2) #37, !dbg !3434
  %3 = icmp eq i32 %1, 0, !dbg !3434
  tail call void @llvm.assume(i1 %3), !dbg !3434
  tail call void @abort() #39, !dbg !3436
  unreachable, !dbg !3436
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3437 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3475, metadata !DIExpression()), !dbg !3480
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3481
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3476, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3480
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3482, metadata !DIExpression()), !dbg !3485
  %3 = load i32, ptr %0, align 8, !dbg !3487, !tbaa !3488
  %4 = and i32 %3, 32, !dbg !3489
  %5 = icmp eq i32 %4, 0, !dbg !3489
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3478, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3480
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3490
  %7 = icmp eq i32 %6, 0, !dbg !3491
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3479, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3480
  br i1 %5, label %8, label %18, !dbg !3492

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3494
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3476, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3480
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3495
  %11 = xor i1 %7, true, !dbg !3495
  %12 = sext i1 %11 to i32, !dbg !3495
  br i1 %10, label %21, label %13, !dbg !3495

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3496
  %15 = load i32, ptr %14, align 4, !dbg !3496, !tbaa !814
  %16 = icmp ne i32 %15, 9, !dbg !3497
  %17 = sext i1 %16 to i32, !dbg !3498
  br label %21, !dbg !3498

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3499

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3501
  store i32 0, ptr %20, align 4, !dbg !3503, !tbaa !814
  br label %21, !dbg !3501

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3480
  ret i32 %22, !dbg !3504
}

; Function Attrs: nounwind
declare !dbg !3505 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3509 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3547, metadata !DIExpression()), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3548, metadata !DIExpression()), !dbg !3551
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3552
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3549, metadata !DIExpression()), !dbg !3551
  %3 = icmp slt i32 %2, 0, !dbg !3553
  br i1 %3, label %4, label %6, !dbg !3555

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3556
  br label %24, !dbg !3557

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3558
  %8 = icmp eq i32 %7, 0, !dbg !3558
  br i1 %8, label %13, label %9, !dbg !3560

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3561
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3562
  %12 = icmp eq i64 %11, -1, !dbg !3563
  br i1 %12, label %16, label %13, !dbg !3564

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3565
  %15 = icmp eq i32 %14, 0, !dbg !3565
  br i1 %15, label %16, label %18, !dbg !3566

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3548, metadata !DIExpression()), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3550, metadata !DIExpression()), !dbg !3551
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3550, metadata !DIExpression()), !dbg !3551
  br label %24, !dbg !3568

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3569
  %20 = load i32, ptr %19, align 4, !dbg !3569, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3548, metadata !DIExpression()), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3550, metadata !DIExpression()), !dbg !3551
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3550, metadata !DIExpression()), !dbg !3551
  %22 = icmp eq i32 %20, 0, !dbg !3570
  br i1 %22, label %24, label %23, !dbg !3568

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3572, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3550, metadata !DIExpression()), !dbg !3551
  br label %24, !dbg !3574

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3551
  ret i32 %25, !dbg !3575
}

; Function Attrs: nofree nounwind
declare !dbg !3576 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3577 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3578 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3579 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3582 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3620, metadata !DIExpression()), !dbg !3621
  %2 = icmp eq ptr %0, null, !dbg !3622
  br i1 %2, label %6, label %3, !dbg !3624

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3625
  %5 = icmp eq i32 %4, 0, !dbg !3625
  br i1 %5, label %6, label %8, !dbg !3626

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3627
  br label %16, !dbg !3628

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3629, metadata !DIExpression()), !dbg !3634
  %9 = load i32, ptr %0, align 8, !dbg !3636, !tbaa !3488
  %10 = and i32 %9, 256, !dbg !3638
  %11 = icmp eq i32 %10, 0, !dbg !3638
  br i1 %11, label %14, label %12, !dbg !3639

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3640
  br label %14, !dbg !3640

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3641
  br label %16, !dbg !3642

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3621
  ret i32 %17, !dbg !3643
}

; Function Attrs: nofree nounwind
declare !dbg !3644 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3645 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3684, metadata !DIExpression()), !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3685, metadata !DIExpression()), !dbg !3690
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3686, metadata !DIExpression()), !dbg !3690
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3691
  %5 = load ptr, ptr %4, align 8, !dbg !3691, !tbaa !3692
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3693
  %7 = load ptr, ptr %6, align 8, !dbg !3693, !tbaa !3694
  %8 = icmp eq ptr %5, %7, !dbg !3695
  br i1 %8, label %9, label %27, !dbg !3696

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3697
  %11 = load ptr, ptr %10, align 8, !dbg !3697, !tbaa !1218
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3698
  %13 = load ptr, ptr %12, align 8, !dbg !3698, !tbaa !3699
  %14 = icmp eq ptr %11, %13, !dbg !3700
  br i1 %14, label %15, label %27, !dbg !3701

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3702
  %17 = load ptr, ptr %16, align 8, !dbg !3702, !tbaa !3703
  %18 = icmp eq ptr %17, null, !dbg !3704
  br i1 %18, label %19, label %27, !dbg !3705

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3706
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3687, metadata !DIExpression()), !dbg !3708
  %22 = icmp eq i64 %21, -1, !dbg !3709
  br i1 %22, label %29, label %23, !dbg !3711

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3712, !tbaa !3488
  %25 = and i32 %24, -17, !dbg !3712
  store i32 %25, ptr %0, align 8, !dbg !3712, !tbaa !3488
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3713
  store i64 %21, ptr %26, align 8, !dbg !3714, !tbaa !3715
  br label %29, !dbg !3716

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3717
  br label %29, !dbg !3718

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3690
  ret i32 %30, !dbg !3719
}

; Function Attrs: nofree nounwind
declare !dbg !3720 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3723 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3728, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3729, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3730, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3731, metadata !DIExpression()), !dbg !3733
  %5 = icmp eq ptr %1, null, !dbg !3734
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3736
  %7 = select i1 %5, ptr @.str.118, ptr %1, !dbg !3736
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3730, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3729, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3728, metadata !DIExpression()), !dbg !3733
  %9 = icmp eq ptr %3, null, !dbg !3737
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3739
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3731, metadata !DIExpression()), !dbg !3733
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3740
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3732, metadata !DIExpression()), !dbg !3733
  %12 = icmp ult i64 %11, -3, !dbg !3741
  br i1 %12, label %13, label %17, !dbg !3743

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3744
  %15 = icmp eq i32 %14, 0, !dbg !3744
  br i1 %15, label %16, label %29, !dbg !3745

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3746, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %10, metadata !3753, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i32 0, metadata !3756, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 8, metadata !3757, metadata !DIExpression()), !dbg !3758
  store i64 0, ptr %10, align 1, !dbg !3760
  br label %29, !dbg !3761

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3762
  br i1 %18, label %19, label %20, !dbg !3764

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3765
  unreachable, !dbg !3765

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3766

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3768
  br i1 %23, label %29, label %24, !dbg !3769

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3770
  br i1 %25, label %29, label %26, !dbg !3773

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3774, !tbaa !823
  %28 = zext i8 %27 to i32, !dbg !3775
  store i32 %28, ptr %6, align 4, !dbg !3776, !tbaa !814
  br label %29, !dbg !3777

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3733
  ret i64 %30, !dbg !3778
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3779 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3785 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3787, metadata !DIExpression()), !dbg !3791
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3788, metadata !DIExpression()), !dbg !3791
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3789, metadata !DIExpression()), !dbg !3791
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3792
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3792
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3790, metadata !DIExpression()), !dbg !3791
  br i1 %5, label %6, label %8, !dbg !3794

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3795
  store i32 12, ptr %7, align 4, !dbg !3797, !tbaa !814
  br label %12, !dbg !3798

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3792
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3790, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata ptr %0, metadata !3799, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i64 %9, metadata !3802, metadata !DIExpression()), !dbg !3803
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3805
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3806
  br label %12, !dbg !3807

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3791
  ret ptr %13, !dbg !3808
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3809 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3818
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3814, metadata !DIExpression(), metadata !3818, metadata ptr %2, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3813, metadata !DIExpression()), !dbg !3819
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3820
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3821
  %4 = icmp eq i32 %3, 0, !dbg !3821
  br i1 %4, label %5, label %12, !dbg !3823

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3824, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata !781, metadata !3827, metadata !DIExpression()), !dbg !3828
  %6 = load i16, ptr %2, align 16, !dbg !3831
  %7 = icmp eq i16 %6, 67, !dbg !3831
  br i1 %7, label %11, label %8, !dbg !3832

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3824, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata ptr @.str.1.123, metadata !3827, metadata !DIExpression()), !dbg !3833
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.123, i64 6), !dbg !3835
  %10 = icmp eq i32 %9, 0, !dbg !3836
  br i1 %10, label %11, label %12, !dbg !3837

11:                                               ; preds = %8, %5
  br label %12, !dbg !3838

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3819
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3839
  ret i1 %13, !dbg !3839
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3840 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3844, metadata !DIExpression()), !dbg !3847
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3845, metadata !DIExpression()), !dbg !3847
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3846, metadata !DIExpression()), !dbg !3847
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3848
  ret i32 %4, !dbg !3849
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3850 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3854, metadata !DIExpression()), !dbg !3855
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3856
  ret ptr %2, !dbg !3857
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3858 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3860, metadata !DIExpression()), !dbg !3862
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3863
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3861, metadata !DIExpression()), !dbg !3862
  ret ptr %2, !dbg !3864
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3865 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3867, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3868, metadata !DIExpression()), !dbg !3874
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3869, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i32 %0, metadata !3860, metadata !DIExpression()), !dbg !3875
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3877
  call void @llvm.dbg.value(metadata ptr %4, metadata !3861, metadata !DIExpression()), !dbg !3875
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3870, metadata !DIExpression()), !dbg !3874
  %5 = icmp eq ptr %4, null, !dbg !3878
  br i1 %5, label %6, label %9, !dbg !3879

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3880
  br i1 %7, label %19, label %8, !dbg !3883

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3884, !tbaa !823
  br label %19, !dbg !3885

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3886
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3871, metadata !DIExpression()), !dbg !3887
  %11 = icmp ult i64 %10, %2, !dbg !3888
  br i1 %11, label %12, label %14, !dbg !3890

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3891
  call void @llvm.dbg.value(metadata ptr %1, metadata !3893, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata ptr %4, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %13, metadata !3897, metadata !DIExpression()), !dbg !3898
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3900
  br label %19, !dbg !3901

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3902
  br i1 %15, label %19, label %16, !dbg !3905

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3906
  call void @llvm.dbg.value(metadata ptr %1, metadata !3893, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata ptr %4, metadata !3896, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i64 %17, metadata !3897, metadata !DIExpression()), !dbg !3908
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3910
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3911
  store i8 0, ptr %18, align 1, !dbg !3912, !tbaa !823
  br label %19, !dbg !3913

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3914
  ret i32 %20, !dbg !3915
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!72, !301, !305, !320, !639, !671, !374, !395, !409, !460, !673, !631, !679, !714, !716, !718, !720, !722, !655, !724, !726, !730, !732}
!llvm.ident = !{!734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734}
!llvm.module.flags = !{!735, !736, !737, !738, !739, !740, !741}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/whoami.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5c047d082e30b773191158ad69a0e0a3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 23)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 85)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 7)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 14)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 17)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !54, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 33)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !66, file: !67, line: 575, type: !97, isLocal: true, isDefinition: true)
!66 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !68, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !218)
!67 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!68 = !DISubroutineType(cc: DW_CC_nocall, types: !69)
!69 = !{null, !70, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!72 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/whoami.o -MD -MP -MF src/.deps/whoami.Tpo -c src/whoami.c -o src/.whoami.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !90, globals: !102, splitDebugInlining: false, nameTableKind: None)
!73 = !{!74}
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 46, baseType: !76, size: 32, elements: !77)
!75 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!78 = !DIEnumerator(name: "_ISupper", value: 256)
!79 = !DIEnumerator(name: "_ISlower", value: 512)
!80 = !DIEnumerator(name: "_ISalpha", value: 1024)
!81 = !DIEnumerator(name: "_ISdigit", value: 2048)
!82 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!83 = !DIEnumerator(name: "_ISspace", value: 8192)
!84 = !DIEnumerator(name: "_ISprint", value: 16384)
!85 = !DIEnumerator(name: "_ISgraph", value: 32768)
!86 = !DIEnumerator(name: "_ISblank", value: 1)
!87 = !DIEnumerator(name: "_IScntrl", value: 2)
!88 = !DIEnumerator(name: "_ISpunct", value: 4)
!89 = !DIEnumerator(name: "_ISalnum", value: 8)
!90 = !{!70, !91, !92, !97, !98, !99, !101}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !93, line: 102, baseType: !94)
!93 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !95, line: 73, baseType: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!96 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 18, baseType: !96)
!100 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !59, !64, !103, !108, !110, !115, !120, !125, !127, !129, !134, !136, !138, !140, !142, !147, !149, !151, !153, !155, !157, !159, !161, !166, !171, !176, !178, !180, !182, !184, !189, !194, !196, !198, !203, !208, !213}
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !67, line: 585, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 5)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !67, line: 586, type: !105, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !67, line: 595, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !67, line: 620, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 6)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 2)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !105, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !112, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 3)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !67, line: 650, type: !105, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !117, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !117, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !67, line: 652, type: !19, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !67, line: 653, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 8)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !67, line: 654, type: !39, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !67, line: 655, type: !39, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !67, line: 656, type: !39, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !67, line: 657, type: !39, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !67, line: 663, type: !19, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !67, line: 664, type: !39, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !54, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 40)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 15)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 61)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !67, line: 679, type: !131, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !67, line: 683, type: !105, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !67, line: 688, type: !105, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !67, line: 691, type: !144, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !67, line: 839, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 16)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !67, line: 840, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 22)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !67, line: 841, type: !168, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !67, line: 862, type: !112, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !67, line: 868, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 71)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !67, line: 875, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 27)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 51)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 12)
!218 = !{!219, !220, !221, !224, !226, !227, !228, !232, !233, !234, !235, !237, !290, !291, !292, !294, !295}
!219 = !DILocalVariable(name: "program", arg: 1, scope: !66, file: !67, line: 573, type: !70)
!220 = !DILocalVariable(name: "option", arg: 2, scope: !66, file: !67, line: 573, type: !70)
!221 = !DILocalVariable(name: "term", scope: !222, file: !67, line: 585, type: !70)
!222 = distinct !DILexicalBlock(scope: !223, file: !67, line: 582, column: 5)
!223 = distinct !DILexicalBlock(scope: !66, file: !67, line: 581, column: 7)
!224 = !DILocalVariable(name: "double_space", scope: !66, file: !67, line: 594, type: !225)
!225 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!226 = !DILocalVariable(name: "first_word", scope: !66, file: !67, line: 595, type: !70)
!227 = !DILocalVariable(name: "option_text", scope: !66, file: !67, line: 596, type: !70)
!228 = !DILocalVariable(name: "s", scope: !229, file: !67, line: 608, type: !70)
!229 = distinct !DILexicalBlock(scope: !230, file: !67, line: 605, column: 5)
!230 = distinct !DILexicalBlock(scope: !231, file: !67, line: 604, column: 12)
!231 = distinct !DILexicalBlock(scope: !66, file: !67, line: 597, column: 7)
!232 = !DILocalVariable(name: "spaces", scope: !229, file: !67, line: 609, type: !99)
!233 = !DILocalVariable(name: "anchor_len", scope: !66, file: !67, line: 620, type: !99)
!234 = !DILocalVariable(name: "desc_text", scope: !66, file: !67, line: 625, type: !70)
!235 = !DILocalVariable(name: "__ptr", scope: !236, file: !67, line: 644, type: !70)
!236 = distinct !DILexicalBlock(scope: !66, file: !67, line: 644, column: 3)
!237 = !DILocalVariable(name: "__stream", scope: !236, file: !67, line: 644, type: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !243)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!243 = !{!244, !245, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !260, !262, !263, !264, !267, !268, !270, !271, !274, !276, !279, !282, !283, !284, !285, !286}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !241, file: !242, line: 51, baseType: !97, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !241, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !241, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !241, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !241, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !241, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !241, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !241, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !241, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !241, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !241, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !241, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !241, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !242, line: 36, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !241, file: !242, line: 70, baseType: !261, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !241, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !241, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !241, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !95, line: 152, baseType: !266)
!266 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !241, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !241, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!269 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !241, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !241, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !242, line: 43, baseType: null)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !241, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !95, line: 153, baseType: !266)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !241, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !242, line: 37, flags: DIFlagFwdDecl)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !241, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !242, line: 38, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !241, file: !242, line: 93, baseType: !261, size: 64, offset: 1344)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !241, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !241, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !241, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !241, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 20)
!290 = !DILocalVariable(name: "__cnt", scope: !236, file: !67, line: 644, type: !99)
!291 = !DILocalVariable(name: "url_program", scope: !66, file: !67, line: 648, type: !70)
!292 = !DILocalVariable(name: "__ptr", scope: !293, file: !67, line: 686, type: !70)
!293 = distinct !DILexicalBlock(scope: !66, file: !67, line: 686, column: 3)
!294 = !DILocalVariable(name: "__stream", scope: !293, file: !67, line: 686, type: !238)
!295 = !DILocalVariable(name: "__cnt", scope: !293, file: !67, line: 686, type: !99)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !298, line: 3, type: !168, isLocal: true, isDefinition: true)
!298 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "Version", scope: !301, file: !298, line: 3, type: !70, isLocal: false, isDefinition: true)
!301 = distinct !DICompileUnit(language: DW_LANG_C11, file: !298, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !302, splitDebugInlining: false, nameTableKind: None)
!302 = !{!296, !299}
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "file_name", scope: !305, file: !306, line: 45, type: !70, isLocal: true, isDefinition: true)
!305 = distinct !DICompileUnit(language: DW_LANG_C11, file: !306, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !307, splitDebugInlining: false, nameTableKind: None)
!306 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!307 = !{!308, !310, !312, !314, !303, !316}
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !306, line: 121, type: !19, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !306, line: 121, type: !215, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !306, line: 123, type: !19, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !306, line: 126, type: !131, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !305, file: !306, line: 55, type: !225, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !320, file: !321, line: 66, type: !366, isLocal: false, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C11, file: !321, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !322, globals: !323, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!322 = !{!91, !101}
!323 = !{!324, !326, !345, !347, !349, !351, !318, !353, !355, !357, !359, !364}
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !321, line: 272, type: !105, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "old_file_name", scope: !328, file: !321, line: 304, type: !70, isLocal: true, isDefinition: true)
!328 = distinct !DISubprogram(name: "verror_at_line", scope: !321, file: !321, line: 298, type: !329, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !338)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !97, !97, !70, !76, !70, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !333)
!333 = !{!334, !335, !336, !337}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !332, file: !321, baseType: !76, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !332, file: !321, baseType: !76, size: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !332, file: !321, baseType: !91, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !332, file: !321, baseType: !91, size: 64, offset: 128)
!338 = !{!339, !340, !341, !342, !343, !344}
!339 = !DILocalVariable(name: "status", arg: 1, scope: !328, file: !321, line: 298, type: !97)
!340 = !DILocalVariable(name: "errnum", arg: 2, scope: !328, file: !321, line: 298, type: !97)
!341 = !DILocalVariable(name: "file_name", arg: 3, scope: !328, file: !321, line: 298, type: !70)
!342 = !DILocalVariable(name: "line_number", arg: 4, scope: !328, file: !321, line: 298, type: !76)
!343 = !DILocalVariable(name: "message", arg: 5, scope: !328, file: !321, line: 298, type: !70)
!344 = !DILocalVariable(name: "args", arg: 6, scope: !328, file: !321, line: 298, type: !331)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "old_line_number", scope: !328, file: !321, line: 305, type: !76, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !321, line: 338, type: !112, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !321, line: 346, type: !144, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !321, line: 346, type: !122, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "error_message_count", scope: !320, file: !321, line: 69, type: !76, isLocal: false, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !320, file: !321, line: 295, type: !97, isLocal: false, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !321, line: 208, type: !19, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !321, line: 208, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 21)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !321, line: 214, type: !105, isLocal: true, isDefinition: true)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null}
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !371, line: 60, type: !122, isLocal: true, isDefinition: true)
!371 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "long_options", scope: !374, file: !371, line: 34, type: !383, isLocal: true, isDefinition: true)
!374 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !375, globals: !376, splitDebugInlining: false, nameTableKind: None)
!375 = !{!91}
!376 = !{!369, !377, !379, !381, !372}
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !371, line: 112, type: !34, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !371, line: 36, type: !105, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !371, line: 37, type: !144, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 768, elements: !132)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !386, line: 50, size: 256, elements: !387)
!386 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!387 = !{!388, !389, !390, !392}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !386, line: 52, baseType: !70, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !385, file: !386, line: 55, baseType: !97, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !385, file: !386, line: 56, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !385, file: !386, line: 57, baseType: !97, size: 32, offset: 192)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "program_name", scope: !395, file: !396, line: 31, type: !70, isLocal: false, isDefinition: true)
!395 = distinct !DICompileUnit(language: DW_LANG_C11, file: !396, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, globals: !398, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!397 = !{!91, !246}
!398 = !{!393, !399, !401}
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !396, line: 46, type: !144, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !396, line: 49, type: !112, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "utf07FF", scope: !405, file: !406, line: 46, type: !433, isLocal: true, isDefinition: true)
!405 = distinct !DISubprogram(name: "proper_name_lite", scope: !406, file: !406, line: 38, type: !407, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !411)
!406 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!407 = !DISubroutineType(types: !408)
!408 = !{!70, !70, !70}
!409 = distinct !DICompileUnit(language: DW_LANG_C11, file: !406, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !410, splitDebugInlining: false, nameTableKind: None)
!410 = !{!403}
!411 = !{!412, !413, !414, !415, !420}
!412 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !405, file: !406, line: 38, type: !70)
!413 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !405, file: !406, line: 38, type: !70)
!414 = !DILocalVariable(name: "translation", scope: !405, file: !406, line: 40, type: !70)
!415 = !DILocalVariable(name: "w", scope: !405, file: !406, line: 47, type: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !417, line: 37, baseType: !418)
!417 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !95, line: 57, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !95, line: 42, baseType: !76)
!420 = !DILocalVariable(name: "mbs", scope: !405, file: !406, line: 48, type: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !422, line: 6, baseType: !423)
!422 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !424, line: 21, baseType: !425)
!424 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 13, size: 64, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !425, file: !424, line: 15, baseType: !97, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !425, file: !424, line: 20, baseType: !429, size: 32, offset: 32)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !424, line: 16, size: 32, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !429, file: !424, line: 18, baseType: !76, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !429, file: !424, line: 19, baseType: !112, size: 32)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16, elements: !123)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !436, line: 78, type: !144, isLocal: true, isDefinition: true)
!436 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !436, line: 79, type: !117, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !436, line: 80, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 13)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !436, line: 81, type: !441, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !436, line: 82, type: !287, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !436, line: 83, type: !122, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !436, line: 84, type: !144, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !436, line: 85, type: !19, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !436, line: 86, type: !19, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !436, line: 87, type: !144, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !460, file: !436, line: 76, type: !546, isLocal: false, isDefinition: true)
!460 = distinct !DICompileUnit(language: DW_LANG_C11, file: !436, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !461, retainedTypes: !481, globals: !482, splitDebugInlining: false, nameTableKind: None)
!461 = !{!462, !476, !74}
!462 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !463, line: 42, baseType: !76, size: 32, elements: !464)
!463 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!465 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!466 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!467 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!468 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!469 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!470 = !DIEnumerator(name: "c_quoting_style", value: 5)
!471 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!472 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!473 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!474 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!475 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!476 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !463, line: 254, baseType: !76, size: 32, elements: !477)
!477 = !{!478, !479, !480}
!478 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!479 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!480 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!481 = !{!91, !97, !98, !99}
!482 = !{!434, !437, !439, !444, !446, !448, !450, !452, !454, !456, !458, !483, !487, !497, !499, !504, !506, !508, !510, !512, !535, !542, !544}
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !460, file: !436, line: 92, type: !485, isLocal: false, isDefinition: true)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 320, elements: !40)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !460, file: !436, line: 1040, type: !489, isLocal: false, isDefinition: true)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !436, line: 56, size: 448, elements: !490)
!490 = !{!491, !492, !493, !495, !496}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !489, file: !436, line: 59, baseType: !462, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !436, line: 62, baseType: !97, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !489, file: !436, line: 66, baseType: !494, size: 256, offset: 64)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !145)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !489, file: !436, line: 69, baseType: !70, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !489, file: !436, line: 72, baseType: !70, size: 64, offset: 384)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !460, file: !436, line: 107, type: !489, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "slot0", scope: !460, file: !436, line: 831, type: !501, isLocal: true, isDefinition: true)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 256)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !436, line: 321, type: !122, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !436, line: 357, type: !122, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !436, line: 358, type: !122, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !436, line: 199, type: !19, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "quote", scope: !514, file: !436, line: 228, type: !533, isLocal: true, isDefinition: true)
!514 = distinct !DISubprogram(name: "gettext_quote", scope: !436, file: !436, line: 197, type: !515, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{!70, !70, !462}
!517 = !{!518, !519, !520, !521, !522}
!518 = !DILocalVariable(name: "msgid", arg: 1, scope: !514, file: !436, line: 197, type: !70)
!519 = !DILocalVariable(name: "s", arg: 2, scope: !514, file: !436, line: 197, type: !462)
!520 = !DILocalVariable(name: "translation", scope: !514, file: !436, line: 199, type: !70)
!521 = !DILocalVariable(name: "w", scope: !514, file: !436, line: 229, type: !416)
!522 = !DILocalVariable(name: "mbs", scope: !514, file: !436, line: 230, type: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !422, line: 6, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !424, line: 21, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 13, size: 64, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !525, file: !424, line: 15, baseType: !97, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !525, file: !424, line: 20, baseType: !529, size: 32, offset: 32)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !525, file: !424, line: 16, size: 32, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !529, file: !424, line: 18, baseType: !76, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !529, file: !424, line: 19, baseType: !112, size: 32)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !534)
!534 = !{!124, !114}
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "slotvec", scope: !460, file: !436, line: 834, type: !537, isLocal: true, isDefinition: true)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !436, line: 823, size: 128, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !538, file: !436, line: 825, baseType: !99, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !538, file: !436, line: 826, baseType: !246, size: 64, offset: 64)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "nslots", scope: !460, file: !436, line: 832, type: !97, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "slotvec0", scope: !460, file: !436, line: 833, type: !538, isLocal: true, isDefinition: true)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 704, elements: !548)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!548 = !{!549}
!549 = !DISubrange(count: 11)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !552, line: 67, type: !215, isLocal: true, isDefinition: true)
!552 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !552, line: 69, type: !19, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !552, line: 83, type: !19, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !552, line: 83, type: !112, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !552, line: 85, type: !122, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !552, line: 88, type: !563, isLocal: true, isDefinition: true)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 171)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !552, line: 88, type: !568, isLocal: true, isDefinition: true)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 34)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !552, line: 105, type: !186, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !552, line: 109, type: !9, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !552, line: 113, type: !577, isLocal: true, isDefinition: true)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 28)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !552, line: 120, type: !582, isLocal: true, isDefinition: true)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 32)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !552, line: 127, type: !587, isLocal: true, isDefinition: true)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 36)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !552, line: 134, type: !163, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !552, line: 142, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 44)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !552, line: 150, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 48)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !552, line: 159, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 52)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !552, line: 170, type: !609, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 60)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !552, line: 248, type: !287, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !552, line: 248, type: !191, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !552, line: 254, type: !287, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !552, line: 254, type: !49, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !552, line: 254, type: !163, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !552, line: 259, type: !3, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !552, line: 259, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 29)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !631, file: !632, line: 26, type: !634, isLocal: false, isDefinition: true)
!631 = distinct !DICompileUnit(language: DW_LANG_C11, file: !632, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !633, splitDebugInlining: false, nameTableKind: None)
!632 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!633 = !{!629}
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 47)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "exit_failure", scope: !639, file: !640, line: 24, type: !642, isLocal: false, isDefinition: true)
!639 = distinct !DICompileUnit(language: DW_LANG_C11, file: !640, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !641, splitDebugInlining: false, nameTableKind: None)
!640 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!641 = !{!637}
!642 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !645, line: 34, type: !131, isLocal: true, isDefinition: true)
!645 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !645, line: 34, type: !19, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !645, line: 34, type: !54, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !652, line: 108, type: !34, isLocal: true, isDefinition: true)
!652 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "internal_state", scope: !655, file: !652, line: 97, type: !658, isLocal: true, isDefinition: true)
!655 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !656, globals: !657, splitDebugInlining: false, nameTableKind: None)
!656 = !{!91, !99, !101}
!657 = !{!650, !653}
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !422, line: 6, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !424, line: 21, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 13, size: 64, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !660, file: !424, line: 15, baseType: !97, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !660, file: !424, line: 20, baseType: !664, size: 32, offset: 32)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !424, line: 16, size: 32, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !664, file: !424, line: 18, baseType: !76, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !664, file: !424, line: 19, baseType: !112, size: 32)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !670, line: 35, type: !117, isLocal: true, isDefinition: true)
!670 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!671 = distinct !DICompileUnit(language: DW_LANG_C11, file: !672, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!672 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!673 = distinct !DICompileUnit(language: DW_LANG_C11, file: !552, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !674, retainedTypes: !375, globals: !678, splitDebugInlining: false, nameTableKind: None)
!674 = !{!675}
!675 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !552, line: 40, baseType: !76, size: 32, elements: !676)
!676 = !{!677}
!677 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!678 = !{!550, !553, !555, !557, !559, !561, !566, !571, !573, !575, !580, !585, !590, !592, !597, !602, !607, !612, !614, !616, !618, !620, !622, !624}
!679 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !681, retainedTypes: !713, splitDebugInlining: false, nameTableKind: None)
!680 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!681 = !{!682, !694}
!682 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !683, file: !680, line: 188, baseType: !76, size: 32, elements: !692)
!683 = distinct !DISubprogram(name: "x2nrealloc", scope: !680, file: !680, line: 176, type: !684, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !687)
!684 = !DISubroutineType(types: !685)
!685 = !{!91, !91, !686, !99}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(name: "p", arg: 1, scope: !683, file: !680, line: 176, type: !91)
!689 = !DILocalVariable(name: "pn", arg: 2, scope: !683, file: !680, line: 176, type: !686)
!690 = !DILocalVariable(name: "s", arg: 3, scope: !683, file: !680, line: 176, type: !99)
!691 = !DILocalVariable(name: "n", scope: !683, file: !680, line: 178, type: !99)
!692 = !{!693}
!693 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!694 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !695, file: !680, line: 228, baseType: !76, size: 32, elements: !692)
!695 = distinct !DISubprogram(name: "xpalloc", scope: !680, file: !680, line: 223, type: !696, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !703)
!696 = !DISubroutineType(types: !697)
!697 = !{!91, !91, !698, !699, !701, !699}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !700, line: 130, baseType: !701)
!700 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !702, line: 18, baseType: !266)
!702 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712}
!704 = !DILocalVariable(name: "pa", arg: 1, scope: !695, file: !680, line: 223, type: !91)
!705 = !DILocalVariable(name: "pn", arg: 2, scope: !695, file: !680, line: 223, type: !698)
!706 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !695, file: !680, line: 223, type: !699)
!707 = !DILocalVariable(name: "n_max", arg: 4, scope: !695, file: !680, line: 223, type: !701)
!708 = !DILocalVariable(name: "s", arg: 5, scope: !695, file: !680, line: 223, type: !699)
!709 = !DILocalVariable(name: "n0", scope: !695, file: !680, line: 230, type: !699)
!710 = !DILocalVariable(name: "n", scope: !695, file: !680, line: 237, type: !699)
!711 = !DILocalVariable(name: "nbytes", scope: !695, file: !680, line: 248, type: !699)
!712 = !DILocalVariable(name: "adjusted_nbytes", scope: !695, file: !680, line: 252, type: !699)
!713 = !{!246, !91}
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !645, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !715, splitDebugInlining: false, nameTableKind: None)
!715 = !{!643, !646, !648}
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!719 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !721, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !375, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !375, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !375, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !670, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !727, splitDebugInlining: false, nameTableKind: None)
!727 = !{!728, !668}
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !670, line: 35, type: !122, isLocal: true, isDefinition: true)
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !375, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!734 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!735 = !{i32 7, !"Dwarf Version", i32 5}
!736 = !{i32 2, !"Debug Info Version", i32 3}
!737 = !{i32 1, !"wchar_size", i32 4}
!738 = !{i32 8, !"PIC Level", i32 2}
!739 = !{i32 7, !"PIE Level", i32 2}
!740 = !{i32 7, !"uwtable", i32 2}
!741 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!742 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 36, type: !743, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !745)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !97}
!745 = !{!746}
!746 = !DILocalVariable(name: "status", arg: 1, scope: !742, file: !2, line: 36, type: !97)
!747 = !DILocation(line: 0, scope: !742)
!748 = !DILocation(line: 38, column: 14, scope: !749)
!749 = distinct !DILexicalBlock(scope: !742, file: !2, line: 38, column: 7)
!750 = !DILocation(line: 38, column: 7, scope: !742)
!751 = !DILocation(line: 39, column: 5, scope: !752)
!752 = distinct !DILexicalBlock(scope: !749, file: !2, line: 39, column: 5)
!753 = !{!754, !754, i64 0}
!754 = !{!"any pointer", !755, i64 0}
!755 = !{!"omnipotent char", !756, i64 0}
!756 = !{!"Simple C/C++ TBAA"}
!757 = !DILocation(line: 42, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !749, file: !2, line: 41, column: 5)
!759 = !DILocation(line: 43, column: 7, scope: !758)
!760 = !DILocation(line: 48, column: 7, scope: !758)
!761 = !DILocation(line: 49, column: 7, scope: !758)
!762 = !DILocalVariable(name: "program", arg: 1, scope: !763, file: !67, line: 836, type: !70)
!763 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !764, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !70}
!766 = !{!762, !767, !774, !775, !777, !778}
!767 = !DILocalVariable(name: "infomap", scope: !763, file: !67, line: 838, type: !768)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 896, elements: !20)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !763, file: !67, line: 838, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !770, file: !67, line: 838, baseType: !70, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !770, file: !67, line: 838, baseType: !70, size: 64, offset: 64)
!774 = !DILocalVariable(name: "node", scope: !763, file: !67, line: 848, type: !70)
!775 = !DILocalVariable(name: "map_prog", scope: !763, file: !67, line: 849, type: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!777 = !DILocalVariable(name: "lc_messages", scope: !763, file: !67, line: 861, type: !70)
!778 = !DILocalVariable(name: "url_program", scope: !763, file: !67, line: 874, type: !70)
!779 = !DILocation(line: 0, scope: !763, inlinedAt: !780)
!780 = distinct !DILocation(line: 50, column: 7, scope: !758)
!781 = !{}
!782 = !DILocation(line: 857, column: 3, scope: !763, inlinedAt: !780)
!783 = !DILocation(line: 861, column: 29, scope: !763, inlinedAt: !780)
!784 = !DILocation(line: 862, column: 7, scope: !785, inlinedAt: !780)
!785 = distinct !DILexicalBlock(scope: !763, file: !67, line: 862, column: 7)
!786 = !DILocation(line: 862, column: 19, scope: !785, inlinedAt: !780)
!787 = !DILocation(line: 862, column: 22, scope: !785, inlinedAt: !780)
!788 = !DILocation(line: 862, column: 7, scope: !763, inlinedAt: !780)
!789 = !DILocation(line: 868, column: 7, scope: !790, inlinedAt: !780)
!790 = distinct !DILexicalBlock(scope: !785, file: !67, line: 863, column: 5)
!791 = !DILocation(line: 870, column: 5, scope: !790, inlinedAt: !780)
!792 = !DILocation(line: 875, column: 3, scope: !763, inlinedAt: !780)
!793 = !DILocation(line: 877, column: 3, scope: !763, inlinedAt: !780)
!794 = !DILocation(line: 52, column: 3, scope: !742)
!795 = !DISubprogram(name: "dcgettext", scope: !796, file: !796, line: 51, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!797 = !DISubroutineType(types: !798)
!798 = !{!246, !70, !70, !97}
!799 = !DISubprogram(name: "__fprintf_chk", scope: !800, file: !800, line: 93, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!800 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!801 = !DISubroutineType(types: !802)
!802 = !{!97, !803, !97, !804, null}
!803 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!805 = !DISubprogram(name: "__printf_chk", scope: !800, file: !800, line: 95, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DISubroutineType(types: !807)
!807 = !{!97, !97, !804, null}
!808 = !DISubprogram(name: "fputs_unlocked", scope: !809, file: !809, line: 691, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!810 = !DISubroutineType(types: !811)
!811 = !{!97, !804, !803}
!812 = !DILocation(line: 0, scope: !66)
!813 = !DILocation(line: 581, column: 7, scope: !223)
!814 = !{!815, !815, i64 0}
!815 = !{!"int", !755, i64 0}
!816 = !DILocation(line: 581, column: 19, scope: !223)
!817 = !DILocation(line: 581, column: 7, scope: !66)
!818 = !DILocation(line: 585, column: 26, scope: !222)
!819 = !DILocation(line: 0, scope: !222)
!820 = !DILocation(line: 586, column: 23, scope: !222)
!821 = !DILocation(line: 586, column: 28, scope: !222)
!822 = !DILocation(line: 586, column: 32, scope: !222)
!823 = !{!755, !755, i64 0}
!824 = !DILocation(line: 586, column: 38, scope: !222)
!825 = !DILocalVariable(name: "__s1", arg: 1, scope: !826, file: !827, line: 1359, type: !70)
!826 = distinct !DISubprogram(name: "streq", scope: !827, file: !827, line: 1359, type: !828, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !830)
!827 = !DIFile(filename: "./lib/string.h", directory: "/src")
!828 = !DISubroutineType(types: !829)
!829 = !{!225, !70, !70}
!830 = !{!825, !831}
!831 = !DILocalVariable(name: "__s2", arg: 2, scope: !826, file: !827, line: 1359, type: !70)
!832 = !DILocation(line: 0, scope: !826, inlinedAt: !833)
!833 = distinct !DILocation(line: 586, column: 41, scope: !222)
!834 = !DILocation(line: 1361, column: 11, scope: !826, inlinedAt: !833)
!835 = !DILocation(line: 1361, column: 10, scope: !826, inlinedAt: !833)
!836 = !DILocation(line: 586, column: 19, scope: !222)
!837 = !DILocation(line: 587, column: 5, scope: !222)
!838 = !DILocation(line: 588, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !66, file: !67, line: 588, column: 7)
!840 = !DILocation(line: 588, column: 7, scope: !66)
!841 = !DILocation(line: 590, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !67, line: 589, column: 5)
!843 = !DILocation(line: 591, column: 7, scope: !842)
!844 = !DILocation(line: 595, column: 37, scope: !66)
!845 = !DILocation(line: 595, column: 35, scope: !66)
!846 = !DILocation(line: 596, column: 29, scope: !66)
!847 = !DILocation(line: 597, column: 8, scope: !231)
!848 = !DILocation(line: 597, column: 7, scope: !66)
!849 = !DILocation(line: 604, column: 24, scope: !230)
!850 = !DILocation(line: 604, column: 12, scope: !231)
!851 = !DILocation(line: 0, scope: !229)
!852 = !DILocation(line: 610, column: 16, scope: !229)
!853 = !DILocation(line: 610, column: 7, scope: !229)
!854 = !DILocation(line: 611, column: 21, scope: !229)
!855 = !{!856, !856, i64 0}
!856 = !{!"short", !755, i64 0}
!857 = !DILocation(line: 611, column: 19, scope: !229)
!858 = !DILocation(line: 611, column: 16, scope: !229)
!859 = !DILocation(line: 610, column: 30, scope: !229)
!860 = distinct !{!860, !853, !854, !861}
!861 = !{!"llvm.loop.mustprogress"}
!862 = !DILocation(line: 612, column: 18, scope: !863)
!863 = distinct !DILexicalBlock(scope: !229, file: !67, line: 612, column: 11)
!864 = !DILocation(line: 612, column: 11, scope: !229)
!865 = !DILocation(line: 620, column: 23, scope: !66)
!866 = !DILocation(line: 625, column: 39, scope: !66)
!867 = !DILocation(line: 626, column: 3, scope: !66)
!868 = !DILocation(line: 626, column: 10, scope: !66)
!869 = !DILocation(line: 626, column: 21, scope: !66)
!870 = !DILocation(line: 628, column: 44, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !67, line: 628, column: 11)
!872 = distinct !DILexicalBlock(scope: !66, file: !67, line: 627, column: 5)
!873 = !DILocation(line: 628, column: 32, scope: !871)
!874 = !DILocation(line: 628, column: 49, scope: !871)
!875 = !DILocation(line: 628, column: 11, scope: !872)
!876 = !DILocation(line: 630, column: 11, scope: !877)
!877 = distinct !DILexicalBlock(scope: !872, file: !67, line: 630, column: 11)
!878 = !DILocation(line: 630, column: 11, scope: !872)
!879 = !DILocation(line: 632, column: 26, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !67, line: 632, column: 15)
!881 = distinct !DILexicalBlock(scope: !877, file: !67, line: 631, column: 9)
!882 = !DILocation(line: 632, column: 34, scope: !880)
!883 = !DILocation(line: 632, column: 37, scope: !880)
!884 = !DILocation(line: 632, column: 15, scope: !881)
!885 = !DILocation(line: 636, column: 16, scope: !886)
!886 = distinct !DILexicalBlock(scope: !881, file: !67, line: 636, column: 15)
!887 = !DILocation(line: 636, column: 29, scope: !886)
!888 = !DILocation(line: 640, column: 16, scope: !872)
!889 = distinct !{!889, !867, !890, !861}
!890 = !DILocation(line: 641, column: 5, scope: !66)
!891 = !DILocation(line: 644, column: 3, scope: !66)
!892 = !DILocation(line: 0, scope: !826, inlinedAt: !893)
!893 = distinct !DILocation(line: 648, column: 31, scope: !66)
!894 = !DILocation(line: 0, scope: !826, inlinedAt: !895)
!895 = distinct !DILocation(line: 649, column: 31, scope: !66)
!896 = !DILocation(line: 0, scope: !826, inlinedAt: !897)
!897 = distinct !DILocation(line: 650, column: 31, scope: !66)
!898 = !DILocation(line: 0, scope: !826, inlinedAt: !899)
!899 = distinct !DILocation(line: 651, column: 31, scope: !66)
!900 = !DILocation(line: 0, scope: !826, inlinedAt: !901)
!901 = distinct !DILocation(line: 652, column: 31, scope: !66)
!902 = !DILocation(line: 0, scope: !826, inlinedAt: !903)
!903 = distinct !DILocation(line: 653, column: 31, scope: !66)
!904 = !DILocation(line: 0, scope: !826, inlinedAt: !905)
!905 = distinct !DILocation(line: 654, column: 31, scope: !66)
!906 = !DILocation(line: 0, scope: !826, inlinedAt: !907)
!907 = distinct !DILocation(line: 655, column: 31, scope: !66)
!908 = !DILocation(line: 0, scope: !826, inlinedAt: !909)
!909 = distinct !DILocation(line: 656, column: 31, scope: !66)
!910 = !DILocation(line: 0, scope: !826, inlinedAt: !911)
!911 = distinct !DILocation(line: 657, column: 31, scope: !66)
!912 = !DILocation(line: 663, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !66, file: !67, line: 663, column: 7)
!914 = !DILocation(line: 664, column: 7, scope: !913)
!915 = !DILocation(line: 664, column: 10, scope: !913)
!916 = !DILocation(line: 663, column: 7, scope: !66)
!917 = !DILocation(line: 669, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !67, line: 665, column: 5)
!919 = !DILocation(line: 671, column: 5, scope: !918)
!920 = !DILocation(line: 676, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !913, file: !67, line: 673, column: 5)
!922 = !DILocation(line: 679, column: 3, scope: !66)
!923 = !DILocation(line: 683, column: 3, scope: !66)
!924 = !DILocation(line: 686, column: 3, scope: !66)
!925 = !DILocation(line: 688, column: 3, scope: !66)
!926 = !DILocation(line: 691, column: 3, scope: !66)
!927 = !DILocation(line: 695, column: 3, scope: !66)
!928 = !DILocation(line: 696, column: 1, scope: !66)
!929 = !DISubprogram(name: "setlocale", scope: !930, file: !930, line: 122, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!931 = !DISubroutineType(types: !932)
!932 = !{!246, !97, !70}
!933 = !DISubprogram(name: "strncmp", scope: !934, file: !934, line: 159, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!934 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!935 = !DISubroutineType(types: !936)
!936 = !{!97, !70, !70, !99}
!937 = !DISubprogram(name: "exit", scope: !938, file: !938, line: 624, type: !743, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!938 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!939 = !DISubprogram(name: "getenv", scope: !938, file: !938, line: 641, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DISubroutineType(types: !941)
!941 = !{!246, !70}
!942 = !DISubprogram(name: "strcmp", scope: !934, file: !934, line: 156, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DISubroutineType(types: !944)
!944 = !{!97, !70, !70}
!945 = !DISubprogram(name: "strspn", scope: !934, file: !934, line: 297, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!946 = !DISubroutineType(types: !947)
!947 = !{!96, !70, !70}
!948 = !DISubprogram(name: "strchr", scope: !934, file: !934, line: 246, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!949 = !DISubroutineType(types: !950)
!950 = !{!246, !70, !97}
!951 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DISubroutineType(types: !953)
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!957 = !DISubprogram(name: "strcspn", scope: !934, file: !934, line: 293, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DISubprogram(name: "fwrite_unlocked", scope: !809, file: !809, line: 704, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubroutineType(types: !960)
!960 = !{!99, !961, !99, !99, !803}
!961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!964 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 56, type: !965, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !968)
!965 = !DISubroutineType(types: !966)
!966 = !{!97, !97, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!968 = !{!969, !970, !971, !975, !976}
!969 = !DILocalVariable(name: "argc", arg: 1, scope: !964, file: !2, line: 56, type: !97)
!970 = !DILocalVariable(name: "argv", arg: 2, scope: !964, file: !2, line: 56, type: !967)
!971 = !DILocalVariable(name: "NO_UID", scope: !964, file: !2, line: 58, type: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !973, line: 79, baseType: !974)
!973 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !95, line: 146, baseType: !76)
!975 = !DILocalVariable(name: "uid", scope: !964, file: !2, line: 79, type: !972)
!976 = !DILocalVariable(name: "pw", scope: !964, file: !2, line: 80, type: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !979, line: 49, size: 384, elements: !980)
!979 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!980 = !{!981, !982, !983, !984, !986, !987, !988}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !978, file: !979, line: 51, baseType: !246, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !978, file: !979, line: 52, baseType: !246, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !978, file: !979, line: 54, baseType: !974, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !978, file: !979, line: 55, baseType: !985, size: 32, offset: 160)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !95, line: 147, baseType: !76)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !978, file: !979, line: 56, baseType: !246, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !978, file: !979, line: 57, baseType: !246, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !978, file: !979, line: 58, baseType: !246, size: 64, offset: 320)
!989 = !DILocation(line: 0, scope: !964)
!990 = !DILocation(line: 61, column: 21, scope: !964)
!991 = !DILocation(line: 61, column: 3, scope: !964)
!992 = !DILocation(line: 62, column: 3, scope: !964)
!993 = !DILocation(line: 63, column: 3, scope: !964)
!994 = !DILocation(line: 64, column: 3, scope: !964)
!995 = !DILocation(line: 66, column: 3, scope: !964)
!996 = !DILocation(line: 69, column: 36, scope: !964)
!997 = !DILocation(line: 69, column: 58, scope: !964)
!998 = !DILocation(line: 68, column: 3, scope: !964)
!999 = !DILocation(line: 72, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !964, file: !2, line: 72, column: 7)
!1001 = !DILocation(line: 72, column: 14, scope: !1000)
!1002 = !DILocation(line: 72, column: 7, scope: !964)
!1003 = !DILocation(line: 74, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 73, column: 5)
!1005 = !DILocation(line: 75, column: 7, scope: !1004)
!1006 = !DILocation(line: 78, column: 3, scope: !964)
!1007 = !DILocation(line: 78, column: 9, scope: !964)
!1008 = !DILocation(line: 79, column: 15, scope: !964)
!1009 = !DILocation(line: 80, column: 27, scope: !964)
!1010 = !DILocation(line: 80, column: 37, scope: !964)
!1011 = !DILocation(line: 80, column: 40, scope: !964)
!1012 = !DILocation(line: 80, column: 23, scope: !964)
!1013 = !DILocation(line: 80, column: 55, scope: !964)
!1014 = !DILocation(line: 81, column: 8, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !964, file: !2, line: 81, column: 7)
!1016 = !DILocation(line: 81, column: 7, scope: !964)
!1017 = !DILocation(line: 82, column: 5, scope: !1015)
!1018 = !DILocation(line: 84, column: 13, scope: !964)
!1019 = !{!1020, !754, i64 0}
!1020 = !{!"passwd", !754, i64 0, !754, i64 8, !815, i64 16, !815, i64 20, !754, i64 24, !754, i64 32, !754, i64 40}
!1021 = !DILocation(line: 84, column: 3, scope: !964)
!1022 = !DILocation(line: 85, column: 3, scope: !964)
!1023 = !DISubprogram(name: "bindtextdomain", scope: !796, file: !796, line: 86, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!246, !70, !70}
!1026 = !DISubprogram(name: "textdomain", scope: !796, file: !796, line: 82, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DISubprogram(name: "atexit", scope: !938, file: !938, line: 602, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!97, !366}
!1030 = !DISubprogram(name: "__errno_location", scope: !1031, file: !1031, line: 37, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!391}
!1034 = !DISubprogram(name: "geteuid", scope: !1035, file: !1035, line: 700, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1035 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!974}
!1038 = !DISubprogram(name: "getpwuid", scope: !979, file: !979, line: 110, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!977, !974}
!1041 = !DISubprogram(name: "puts", scope: !809, file: !809, line: 661, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!97, !70}
!1044 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !306, file: !306, line: 50, type: !764, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !1045)
!1045 = !{!1046}
!1046 = !DILocalVariable(name: "file", arg: 1, scope: !1044, file: !306, line: 50, type: !70)
!1047 = !DILocation(line: 0, scope: !1044)
!1048 = !DILocation(line: 52, column: 13, scope: !1044)
!1049 = !DILocation(line: 53, column: 1, scope: !1044)
!1050 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !306, file: !306, line: 87, type: !1051, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !225}
!1053 = !{!1054}
!1054 = !DILocalVariable(name: "ignore", arg: 1, scope: !1050, file: !306, line: 87, type: !225)
!1055 = !DILocation(line: 0, scope: !1050)
!1056 = !DILocation(line: 89, column: 16, scope: !1050)
!1057 = !{!1058, !1058, i64 0}
!1058 = !{!"_Bool", !755, i64 0}
!1059 = !DILocation(line: 90, column: 1, scope: !1050)
!1060 = distinct !DISubprogram(name: "close_stdout", scope: !306, file: !306, line: 116, type: !367, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !1061)
!1061 = !{!1062}
!1062 = !DILocalVariable(name: "write_error", scope: !1063, file: !306, line: 121, type: !70)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !306, line: 120, column: 5)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !306, line: 118, column: 7)
!1065 = !DILocation(line: 118, column: 21, scope: !1064)
!1066 = !DILocation(line: 118, column: 7, scope: !1064)
!1067 = !DILocation(line: 118, column: 29, scope: !1064)
!1068 = !DILocation(line: 119, column: 7, scope: !1064)
!1069 = !DILocation(line: 119, column: 12, scope: !1064)
!1070 = !{i8 0, i8 2}
!1071 = !DILocation(line: 119, column: 25, scope: !1064)
!1072 = !DILocation(line: 119, column: 28, scope: !1064)
!1073 = !DILocation(line: 119, column: 34, scope: !1064)
!1074 = !DILocation(line: 118, column: 7, scope: !1060)
!1075 = !DILocation(line: 121, column: 33, scope: !1063)
!1076 = !DILocation(line: 0, scope: !1063)
!1077 = !DILocation(line: 122, column: 11, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1063, file: !306, line: 122, column: 11)
!1079 = !DILocation(line: 0, scope: !1078)
!1080 = !DILocation(line: 122, column: 11, scope: !1063)
!1081 = !DILocation(line: 123, column: 9, scope: !1078)
!1082 = !DILocation(line: 126, column: 9, scope: !1078)
!1083 = !DILocation(line: 128, column: 14, scope: !1063)
!1084 = !DILocation(line: 128, column: 7, scope: !1063)
!1085 = !DILocation(line: 133, column: 42, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1060, file: !306, line: 133, column: 7)
!1087 = !DILocation(line: 133, column: 28, scope: !1086)
!1088 = !DILocation(line: 133, column: 50, scope: !1086)
!1089 = !DILocation(line: 133, column: 7, scope: !1060)
!1090 = !DILocation(line: 134, column: 12, scope: !1086)
!1091 = !DILocation(line: 134, column: 5, scope: !1086)
!1092 = !DILocation(line: 135, column: 1, scope: !1060)
!1093 = !DISubprogram(name: "_exit", scope: !1035, file: !1035, line: 624, type: !743, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1094 = distinct !DISubprogram(name: "verror", scope: !321, file: !321, line: 251, type: !1095, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1097)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !97, !97, !70, !331}
!1097 = !{!1098, !1099, !1100, !1101}
!1098 = !DILocalVariable(name: "status", arg: 1, scope: !1094, file: !321, line: 251, type: !97)
!1099 = !DILocalVariable(name: "errnum", arg: 2, scope: !1094, file: !321, line: 251, type: !97)
!1100 = !DILocalVariable(name: "message", arg: 3, scope: !1094, file: !321, line: 251, type: !70)
!1101 = !DILocalVariable(name: "args", arg: 4, scope: !1094, file: !321, line: 251, type: !331)
!1102 = !DILocation(line: 0, scope: !1094)
!1103 = !DILocation(line: 261, column: 3, scope: !1094)
!1104 = !DILocation(line: 265, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1094, file: !321, line: 265, column: 7)
!1106 = !DILocation(line: 265, column: 7, scope: !1094)
!1107 = !DILocation(line: 266, column: 5, scope: !1105)
!1108 = !DILocation(line: 272, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !321, line: 268, column: 5)
!1110 = !DILocation(line: 276, column: 3, scope: !1094)
!1111 = !DILocation(line: 282, column: 1, scope: !1094)
!1112 = distinct !DISubprogram(name: "flush_stdout", scope: !321, file: !321, line: 163, type: !367, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1113)
!1113 = !{!1114}
!1114 = !DILocalVariable(name: "stdout_fd", scope: !1112, file: !321, line: 166, type: !97)
!1115 = !DILocation(line: 0, scope: !1112)
!1116 = !DILocalVariable(name: "fd", arg: 1, scope: !1117, file: !321, line: 145, type: !97)
!1117 = distinct !DISubprogram(name: "is_open", scope: !321, file: !321, line: 145, type: !1118, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!97, !97}
!1120 = !{!1116}
!1121 = !DILocation(line: 0, scope: !1117, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 182, column: 25, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1112, file: !321, line: 182, column: 7)
!1124 = !DILocation(line: 157, column: 15, scope: !1117, inlinedAt: !1122)
!1125 = !DILocation(line: 157, column: 12, scope: !1117, inlinedAt: !1122)
!1126 = !DILocation(line: 182, column: 7, scope: !1112)
!1127 = !DILocation(line: 184, column: 5, scope: !1123)
!1128 = !DILocation(line: 185, column: 1, scope: !1112)
!1129 = distinct !DISubprogram(name: "error_tail", scope: !321, file: !321, line: 219, type: !1095, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1130)
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DILocalVariable(name: "status", arg: 1, scope: !1129, file: !321, line: 219, type: !97)
!1132 = !DILocalVariable(name: "errnum", arg: 2, scope: !1129, file: !321, line: 219, type: !97)
!1133 = !DILocalVariable(name: "message", arg: 3, scope: !1129, file: !321, line: 219, type: !70)
!1134 = !DILocalVariable(name: "args", arg: 4, scope: !1129, file: !321, line: 219, type: !331)
!1135 = distinct !DIAssignID()
!1136 = !DILocation(line: 0, scope: !1129)
!1137 = !DILocation(line: 229, column: 13, scope: !1129)
!1138 = !DILocalVariable(name: "__stream", arg: 1, scope: !1139, file: !800, line: 132, type: !1142)
!1139 = distinct !DISubprogram(name: "vfprintf", scope: !800, file: !800, line: 132, type: !1140, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1177)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!97, !1142, !804, !331}
!1142 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1145, file: !242, line: 51, baseType: !97, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1145, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1145, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1145, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1145, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1145, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1145, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1145, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1145, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1145, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1145, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1145, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1145, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1145, file: !242, line: 70, baseType: !1161, size: 64, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1145, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1145, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1145, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1145, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1145, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1145, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1145, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1145, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1145, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1145, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1145, file: !242, line: 93, baseType: !1161, size: 64, offset: 1344)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1145, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1145, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1145, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1145, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!1177 = !{!1138, !1178, !1179}
!1178 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1139, file: !800, line: 133, type: !804)
!1179 = !DILocalVariable(name: "__ap", arg: 3, scope: !1139, file: !800, line: 133, type: !331)
!1180 = !DILocation(line: 0, scope: !1139, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 229, column: 3, scope: !1129)
!1182 = !DILocation(line: 135, column: 10, scope: !1139, inlinedAt: !1181)
!1183 = !DILocation(line: 232, column: 3, scope: !1129)
!1184 = !DILocation(line: 233, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1129, file: !321, line: 233, column: 7)
!1186 = !DILocation(line: 233, column: 7, scope: !1129)
!1187 = !DILocalVariable(name: "errbuf", scope: !1188, file: !321, line: 193, type: !1192)
!1188 = distinct !DISubprogram(name: "print_errno_message", scope: !321, file: !321, line: 188, type: !743, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1189)
!1189 = !{!1190, !1191, !1187}
!1190 = !DILocalVariable(name: "errnum", arg: 1, scope: !1188, file: !321, line: 188, type: !97)
!1191 = !DILocalVariable(name: "s", scope: !1188, file: !321, line: 190, type: !70)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1193)
!1193 = !{!1194}
!1194 = !DISubrange(count: 1024)
!1195 = !DILocation(line: 0, scope: !1188, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 234, column: 5, scope: !1185)
!1197 = !DILocation(line: 193, column: 3, scope: !1188, inlinedAt: !1196)
!1198 = !DILocation(line: 195, column: 7, scope: !1188, inlinedAt: !1196)
!1199 = !DILocation(line: 207, column: 9, scope: !1200, inlinedAt: !1196)
!1200 = distinct !DILexicalBlock(scope: !1188, file: !321, line: 207, column: 7)
!1201 = !DILocation(line: 207, column: 7, scope: !1188, inlinedAt: !1196)
!1202 = !DILocation(line: 208, column: 9, scope: !1200, inlinedAt: !1196)
!1203 = !DILocation(line: 208, column: 5, scope: !1200, inlinedAt: !1196)
!1204 = !DILocation(line: 214, column: 3, scope: !1188, inlinedAt: !1196)
!1205 = !DILocation(line: 216, column: 1, scope: !1188, inlinedAt: !1196)
!1206 = !DILocation(line: 234, column: 5, scope: !1185)
!1207 = !DILocation(line: 238, column: 3, scope: !1129)
!1208 = !DILocalVariable(name: "__c", arg: 1, scope: !1209, file: !1210, line: 101, type: !97)
!1209 = distinct !DISubprogram(name: "putc_unlocked", scope: !1210, file: !1210, line: 101, type: !1211, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1213)
!1210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!97, !97, !1143}
!1213 = !{!1208, !1214}
!1214 = !DILocalVariable(name: "__stream", arg: 2, scope: !1209, file: !1210, line: 101, type: !1143)
!1215 = !DILocation(line: 0, scope: !1209, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 238, column: 3, scope: !1129)
!1217 = !DILocation(line: 103, column: 10, scope: !1209, inlinedAt: !1216)
!1218 = !{!1219, !754, i64 40}
!1219 = !{!"_IO_FILE", !815, i64 0, !754, i64 8, !754, i64 16, !754, i64 24, !754, i64 32, !754, i64 40, !754, i64 48, !754, i64 56, !754, i64 64, !754, i64 72, !754, i64 80, !754, i64 88, !754, i64 96, !754, i64 104, !815, i64 112, !815, i64 116, !1220, i64 120, !856, i64 128, !755, i64 130, !755, i64 131, !754, i64 136, !1220, i64 144, !754, i64 152, !754, i64 160, !754, i64 168, !754, i64 176, !1220, i64 184, !815, i64 192, !755, i64 196}
!1220 = !{!"long", !755, i64 0}
!1221 = !{!1219, !754, i64 48}
!1222 = !{!"branch_weights", i32 2000, i32 1}
!1223 = !DILocation(line: 240, column: 3, scope: !1129)
!1224 = !DILocation(line: 241, column: 7, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1129, file: !321, line: 241, column: 7)
!1226 = !DILocation(line: 241, column: 7, scope: !1129)
!1227 = !DILocation(line: 242, column: 5, scope: !1225)
!1228 = !DILocation(line: 243, column: 1, scope: !1129)
!1229 = !DISubprogram(name: "__vfprintf_chk", scope: !800, file: !800, line: 96, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!97, !1142, !97, !804, !331}
!1232 = !DISubprogram(name: "strerror_r", scope: !934, file: !934, line: 444, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!246, !97, !246, !99}
!1235 = !DISubprogram(name: "__overflow", scope: !809, file: !809, line: 886, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!97, !1143, !97}
!1238 = !DISubprogram(name: "fflush_unlocked", scope: !809, file: !809, line: 239, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!97, !1143}
!1241 = !DISubprogram(name: "fcntl", scope: !1242, file: !1242, line: 149, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!97, !97, !97, null}
!1245 = distinct !DISubprogram(name: "error", scope: !321, file: !321, line: 285, type: !1246, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1248)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null, !97, !97, !70, null}
!1248 = !{!1249, !1250, !1251, !1252}
!1249 = !DILocalVariable(name: "status", arg: 1, scope: !1245, file: !321, line: 285, type: !97)
!1250 = !DILocalVariable(name: "errnum", arg: 2, scope: !1245, file: !321, line: 285, type: !97)
!1251 = !DILocalVariable(name: "message", arg: 3, scope: !1245, file: !321, line: 285, type: !70)
!1252 = !DILocalVariable(name: "ap", scope: !1245, file: !321, line: 287, type: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !809, line: 52, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1255, line: 12, baseType: !1256)
!1255 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !321, baseType: !1257)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 192, elements: !35)
!1258 = distinct !DIAssignID()
!1259 = !DILocation(line: 0, scope: !1245)
!1260 = !DILocation(line: 287, column: 3, scope: !1245)
!1261 = !DILocation(line: 288, column: 3, scope: !1245)
!1262 = !DILocation(line: 289, column: 3, scope: !1245)
!1263 = !DILocation(line: 290, column: 3, scope: !1245)
!1264 = !DILocation(line: 291, column: 1, scope: !1245)
!1265 = !DILocation(line: 0, scope: !328)
!1266 = !DILocation(line: 302, column: 7, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !328, file: !321, line: 302, column: 7)
!1268 = !DILocation(line: 302, column: 7, scope: !328)
!1269 = !DILocation(line: 307, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !321, line: 307, column: 11)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !321, line: 303, column: 5)
!1272 = !DILocation(line: 307, column: 27, scope: !1270)
!1273 = !DILocation(line: 308, column: 11, scope: !1270)
!1274 = !DILocation(line: 308, column: 28, scope: !1270)
!1275 = !DILocation(line: 308, column: 25, scope: !1270)
!1276 = !DILocation(line: 309, column: 15, scope: !1270)
!1277 = !DILocation(line: 309, column: 33, scope: !1270)
!1278 = !DILocation(line: 310, column: 19, scope: !1270)
!1279 = !DILocation(line: 311, column: 22, scope: !1270)
!1280 = !DILocation(line: 311, column: 56, scope: !1270)
!1281 = !DILocation(line: 307, column: 11, scope: !1271)
!1282 = !DILocation(line: 316, column: 21, scope: !1271)
!1283 = !DILocation(line: 317, column: 23, scope: !1271)
!1284 = !DILocation(line: 318, column: 5, scope: !1271)
!1285 = !DILocation(line: 327, column: 3, scope: !328)
!1286 = !DILocation(line: 331, column: 7, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !328, file: !321, line: 331, column: 7)
!1288 = !DILocation(line: 331, column: 7, scope: !328)
!1289 = !DILocation(line: 332, column: 5, scope: !1287)
!1290 = !DILocation(line: 338, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !321, line: 334, column: 5)
!1292 = !DILocation(line: 346, column: 3, scope: !328)
!1293 = !DILocation(line: 350, column: 3, scope: !328)
!1294 = !DILocation(line: 356, column: 1, scope: !328)
!1295 = distinct !DISubprogram(name: "error_at_line", scope: !321, file: !321, line: 359, type: !1296, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1298)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !97, !97, !70, !76, !70, null}
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304}
!1299 = !DILocalVariable(name: "status", arg: 1, scope: !1295, file: !321, line: 359, type: !97)
!1300 = !DILocalVariable(name: "errnum", arg: 2, scope: !1295, file: !321, line: 359, type: !97)
!1301 = !DILocalVariable(name: "file_name", arg: 3, scope: !1295, file: !321, line: 359, type: !70)
!1302 = !DILocalVariable(name: "line_number", arg: 4, scope: !1295, file: !321, line: 360, type: !76)
!1303 = !DILocalVariable(name: "message", arg: 5, scope: !1295, file: !321, line: 360, type: !70)
!1304 = !DILocalVariable(name: "ap", scope: !1295, file: !321, line: 362, type: !1253)
!1305 = distinct !DIAssignID()
!1306 = !DILocation(line: 0, scope: !1295)
!1307 = !DILocation(line: 362, column: 3, scope: !1295)
!1308 = !DILocation(line: 363, column: 3, scope: !1295)
!1309 = !DILocation(line: 364, column: 3, scope: !1295)
!1310 = !DILocation(line: 366, column: 3, scope: !1295)
!1311 = !DILocation(line: 367, column: 1, scope: !1295)
!1312 = distinct !DISubprogram(name: "getprogname", scope: !672, file: !672, line: 54, type: !1313, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!70}
!1315 = !DILocation(line: 58, column: 10, scope: !1312)
!1316 = !DILocation(line: 58, column: 3, scope: !1312)
!1317 = distinct !DISubprogram(name: "parse_long_options", scope: !371, file: !371, line: 45, type: !1318, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !1321)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !97, !967, !70, !70, !70, !1320, null}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1332}
!1322 = !DILocalVariable(name: "argc", arg: 1, scope: !1317, file: !371, line: 45, type: !97)
!1323 = !DILocalVariable(name: "argv", arg: 2, scope: !1317, file: !371, line: 46, type: !967)
!1324 = !DILocalVariable(name: "command_name", arg: 3, scope: !1317, file: !371, line: 47, type: !70)
!1325 = !DILocalVariable(name: "package", arg: 4, scope: !1317, file: !371, line: 48, type: !70)
!1326 = !DILocalVariable(name: "version", arg: 5, scope: !1317, file: !371, line: 49, type: !70)
!1327 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1317, file: !371, line: 50, type: !1320)
!1328 = !DILocalVariable(name: "saved_opterr", scope: !1317, file: !371, line: 53, type: !97)
!1329 = !DILocalVariable(name: "c", scope: !1330, file: !371, line: 60, type: !97)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !371, line: 59, column: 5)
!1331 = distinct !DILexicalBlock(scope: !1317, file: !371, line: 58, column: 7)
!1332 = !DILocalVariable(name: "authors", scope: !1333, file: !371, line: 71, type: !1337)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !371, line: 70, column: 15)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !371, line: 64, column: 13)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !371, line: 62, column: 9)
!1336 = distinct !DILexicalBlock(scope: !1330, file: !371, line: 61, column: 11)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !809, line: 52, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1255, line: 12, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !371, baseType: !1340)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1341, size: 192, elements: !35)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1341, file: !371, line: 71, baseType: !76, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1341, file: !371, line: 71, baseType: !76, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1341, file: !371, line: 71, baseType: !91, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1341, file: !371, line: 71, baseType: !91, size: 64, offset: 128)
!1347 = distinct !DIAssignID()
!1348 = !DILocation(line: 0, scope: !1333)
!1349 = !DILocation(line: 0, scope: !1317)
!1350 = !DILocation(line: 53, column: 22, scope: !1317)
!1351 = !DILocation(line: 56, column: 10, scope: !1317)
!1352 = !DILocation(line: 58, column: 12, scope: !1331)
!1353 = !DILocation(line: 58, column: 7, scope: !1317)
!1354 = !DILocation(line: 60, column: 15, scope: !1330)
!1355 = !DILocation(line: 0, scope: !1330)
!1356 = !DILocation(line: 61, column: 11, scope: !1330)
!1357 = !DILocation(line: 66, column: 15, scope: !1334)
!1358 = !DILocation(line: 67, column: 15, scope: !1334)
!1359 = !DILocation(line: 71, column: 17, scope: !1333)
!1360 = !DILocation(line: 72, column: 17, scope: !1333)
!1361 = !DILocation(line: 73, column: 33, scope: !1333)
!1362 = !DILocation(line: 73, column: 17, scope: !1333)
!1363 = !DILocation(line: 74, column: 17, scope: !1333)
!1364 = !DILocation(line: 85, column: 10, scope: !1317)
!1365 = !DILocation(line: 89, column: 10, scope: !1317)
!1366 = !DILocation(line: 90, column: 1, scope: !1317)
!1367 = !DISubprogram(name: "getopt_long", scope: !386, file: !386, line: 66, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!97, !97, !1370, !70, !1372, !391}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!1373 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !371, file: !371, line: 98, type: !1374, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !97, !967, !70, !70, !70, !225, !1320, null}
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387}
!1377 = !DILocalVariable(name: "argc", arg: 1, scope: !1373, file: !371, line: 98, type: !97)
!1378 = !DILocalVariable(name: "argv", arg: 2, scope: !1373, file: !371, line: 99, type: !967)
!1379 = !DILocalVariable(name: "command_name", arg: 3, scope: !1373, file: !371, line: 100, type: !70)
!1380 = !DILocalVariable(name: "package", arg: 4, scope: !1373, file: !371, line: 101, type: !70)
!1381 = !DILocalVariable(name: "version", arg: 5, scope: !1373, file: !371, line: 102, type: !70)
!1382 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1373, file: !371, line: 103, type: !225)
!1383 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1373, file: !371, line: 104, type: !1320)
!1384 = !DILocalVariable(name: "saved_opterr", scope: !1373, file: !371, line: 107, type: !97)
!1385 = !DILocalVariable(name: "optstring", scope: !1373, file: !371, line: 112, type: !70)
!1386 = !DILocalVariable(name: "c", scope: !1373, file: !371, line: 114, type: !97)
!1387 = !DILocalVariable(name: "authors", scope: !1388, file: !371, line: 125, type: !1337)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !371, line: 124, column: 11)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !371, line: 118, column: 9)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !371, line: 116, column: 5)
!1391 = distinct !DILexicalBlock(scope: !1373, file: !371, line: 115, column: 7)
!1392 = distinct !DIAssignID()
!1393 = !DILocation(line: 0, scope: !1388)
!1394 = !DILocation(line: 0, scope: !1373)
!1395 = !DILocation(line: 107, column: 22, scope: !1373)
!1396 = !DILocation(line: 110, column: 10, scope: !1373)
!1397 = !DILocation(line: 112, column: 27, scope: !1373)
!1398 = !DILocation(line: 114, column: 11, scope: !1373)
!1399 = !DILocation(line: 115, column: 7, scope: !1373)
!1400 = !DILocation(line: 125, column: 13, scope: !1388)
!1401 = !DILocation(line: 126, column: 13, scope: !1388)
!1402 = !DILocation(line: 127, column: 29, scope: !1388)
!1403 = !DILocation(line: 127, column: 13, scope: !1388)
!1404 = !DILocation(line: 128, column: 13, scope: !1388)
!1405 = !DILocation(line: 132, column: 26, scope: !1389)
!1406 = !DILocation(line: 133, column: 11, scope: !1389)
!1407 = !DILocation(line: 0, scope: !1389)
!1408 = !DILocation(line: 138, column: 10, scope: !1373)
!1409 = !DILocation(line: 139, column: 1, scope: !1373)
!1410 = distinct !DISubprogram(name: "set_program_name", scope: !396, file: !396, line: 37, type: !764, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DILocalVariable(name: "argv0", arg: 1, scope: !1410, file: !396, line: 37, type: !70)
!1413 = !DILocalVariable(name: "slash", scope: !1410, file: !396, line: 44, type: !70)
!1414 = !DILocalVariable(name: "base", scope: !1410, file: !396, line: 45, type: !70)
!1415 = !DILocation(line: 0, scope: !1410)
!1416 = !DILocation(line: 44, column: 23, scope: !1410)
!1417 = !DILocation(line: 45, column: 22, scope: !1410)
!1418 = !DILocation(line: 46, column: 17, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1410, file: !396, line: 46, column: 7)
!1420 = !DILocation(line: 46, column: 9, scope: !1419)
!1421 = !DILocation(line: 46, column: 25, scope: !1419)
!1422 = !DILocation(line: 46, column: 40, scope: !1419)
!1423 = !DILocalVariable(name: "__s1", arg: 1, scope: !1424, file: !827, line: 974, type: !962)
!1424 = distinct !DISubprogram(name: "memeq", scope: !827, file: !827, line: 974, type: !1425, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!225, !962, !962, !99}
!1427 = !{!1423, !1428, !1429}
!1428 = !DILocalVariable(name: "__s2", arg: 2, scope: !1424, file: !827, line: 974, type: !962)
!1429 = !DILocalVariable(name: "__n", arg: 3, scope: !1424, file: !827, line: 974, type: !99)
!1430 = !DILocation(line: 0, scope: !1424, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 46, column: 28, scope: !1419)
!1432 = !DILocation(line: 976, column: 11, scope: !1424, inlinedAt: !1431)
!1433 = !DILocation(line: 976, column: 10, scope: !1424, inlinedAt: !1431)
!1434 = !DILocation(line: 46, column: 7, scope: !1410)
!1435 = !DILocation(line: 49, column: 11, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !396, line: 49, column: 11)
!1437 = distinct !DILexicalBlock(scope: !1419, file: !396, line: 47, column: 5)
!1438 = !DILocation(line: 49, column: 36, scope: !1436)
!1439 = !DILocation(line: 49, column: 11, scope: !1437)
!1440 = !DILocation(line: 65, column: 16, scope: !1410)
!1441 = !DILocation(line: 71, column: 27, scope: !1410)
!1442 = !DILocation(line: 74, column: 33, scope: !1410)
!1443 = !DILocation(line: 76, column: 1, scope: !1410)
!1444 = !DISubprogram(name: "strrchr", scope: !934, file: !934, line: 273, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1445 = distinct !DIAssignID()
!1446 = !DILocation(line: 0, scope: !405)
!1447 = distinct !DIAssignID()
!1448 = !DILocation(line: 40, column: 29, scope: !405)
!1449 = !DILocation(line: 41, column: 19, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !405, file: !406, line: 41, column: 7)
!1451 = !DILocation(line: 41, column: 7, scope: !405)
!1452 = !DILocation(line: 47, column: 3, scope: !405)
!1453 = !DILocation(line: 48, column: 3, scope: !405)
!1454 = !DILocalVariable(name: "ps", arg: 1, scope: !1455, file: !1456, line: 1135, type: !1459)
!1455 = distinct !DISubprogram(name: "mbszero", scope: !1456, file: !1456, line: 1135, type: !1457, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1460)
!1456 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1460 = !{!1454}
!1461 = !DILocation(line: 0, scope: !1455, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 48, column: 18, scope: !405)
!1463 = !DILocalVariable(name: "__dest", arg: 1, scope: !1464, file: !1465, line: 57, type: !91)
!1464 = distinct !DISubprogram(name: "memset", scope: !1465, file: !1465, line: 57, type: !1466, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1468)
!1465 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!91, !91, !97, !99}
!1468 = !{!1463, !1469, !1470}
!1469 = !DILocalVariable(name: "__ch", arg: 2, scope: !1464, file: !1465, line: 57, type: !97)
!1470 = !DILocalVariable(name: "__len", arg: 3, scope: !1464, file: !1465, line: 57, type: !99)
!1471 = !DILocation(line: 0, scope: !1464, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 1137, column: 3, scope: !1455, inlinedAt: !1462)
!1473 = !DILocation(line: 59, column: 10, scope: !1464, inlinedAt: !1472)
!1474 = !DILocation(line: 49, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !405, file: !406, line: 49, column: 7)
!1476 = !DILocation(line: 49, column: 39, scope: !1475)
!1477 = !DILocation(line: 49, column: 44, scope: !1475)
!1478 = !DILocation(line: 54, column: 1, scope: !405)
!1479 = !DISubprogram(name: "mbrtoc32", scope: !417, file: !417, line: 57, type: !1480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!99, !1482, !804, !99, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1459)
!1485 = distinct !DISubprogram(name: "clone_quoting_options", scope: !436, file: !436, line: 113, type: !1486, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1489)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1488, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1489 = !{!1490, !1491, !1492}
!1490 = !DILocalVariable(name: "o", arg: 1, scope: !1485, file: !436, line: 113, type: !1488)
!1491 = !DILocalVariable(name: "saved_errno", scope: !1485, file: !436, line: 115, type: !97)
!1492 = !DILocalVariable(name: "p", scope: !1485, file: !436, line: 116, type: !1488)
!1493 = !DILocation(line: 0, scope: !1485)
!1494 = !DILocation(line: 115, column: 21, scope: !1485)
!1495 = !DILocation(line: 116, column: 40, scope: !1485)
!1496 = !DILocation(line: 116, column: 31, scope: !1485)
!1497 = !DILocation(line: 118, column: 9, scope: !1485)
!1498 = !DILocation(line: 119, column: 3, scope: !1485)
!1499 = distinct !DISubprogram(name: "get_quoting_style", scope: !436, file: !436, line: 124, type: !1500, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1504)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!462, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!1504 = !{!1505}
!1505 = !DILocalVariable(name: "o", arg: 1, scope: !1499, file: !436, line: 124, type: !1502)
!1506 = !DILocation(line: 0, scope: !1499)
!1507 = !DILocation(line: 126, column: 11, scope: !1499)
!1508 = !DILocation(line: 126, column: 46, scope: !1499)
!1509 = !{!1510, !815, i64 0}
!1510 = !{!"quoting_options", !815, i64 0, !815, i64 4, !755, i64 8, !754, i64 40, !754, i64 48}
!1511 = !DILocation(line: 126, column: 3, scope: !1499)
!1512 = distinct !DISubprogram(name: "set_quoting_style", scope: !436, file: !436, line: 132, type: !1513, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !1488, !462}
!1515 = !{!1516, !1517}
!1516 = !DILocalVariable(name: "o", arg: 1, scope: !1512, file: !436, line: 132, type: !1488)
!1517 = !DILocalVariable(name: "s", arg: 2, scope: !1512, file: !436, line: 132, type: !462)
!1518 = !DILocation(line: 0, scope: !1512)
!1519 = !DILocation(line: 134, column: 4, scope: !1512)
!1520 = !DILocation(line: 134, column: 45, scope: !1512)
!1521 = !DILocation(line: 135, column: 1, scope: !1512)
!1522 = distinct !DISubprogram(name: "set_char_quoting", scope: !436, file: !436, line: 143, type: !1523, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!97, !1488, !4, !97}
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1532, !1533}
!1526 = !DILocalVariable(name: "o", arg: 1, scope: !1522, file: !436, line: 143, type: !1488)
!1527 = !DILocalVariable(name: "c", arg: 2, scope: !1522, file: !436, line: 143, type: !4)
!1528 = !DILocalVariable(name: "i", arg: 3, scope: !1522, file: !436, line: 143, type: !97)
!1529 = !DILocalVariable(name: "uc", scope: !1522, file: !436, line: 145, type: !101)
!1530 = !DILocalVariable(name: "p", scope: !1522, file: !436, line: 146, type: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1532 = !DILocalVariable(name: "shift", scope: !1522, file: !436, line: 148, type: !97)
!1533 = !DILocalVariable(name: "r", scope: !1522, file: !436, line: 149, type: !76)
!1534 = !DILocation(line: 0, scope: !1522)
!1535 = !DILocation(line: 147, column: 6, scope: !1522)
!1536 = !DILocation(line: 147, column: 41, scope: !1522)
!1537 = !DILocation(line: 147, column: 62, scope: !1522)
!1538 = !DILocation(line: 147, column: 57, scope: !1522)
!1539 = !DILocation(line: 148, column: 15, scope: !1522)
!1540 = !DILocation(line: 149, column: 21, scope: !1522)
!1541 = !DILocation(line: 149, column: 24, scope: !1522)
!1542 = !DILocation(line: 149, column: 34, scope: !1522)
!1543 = !DILocation(line: 150, column: 19, scope: !1522)
!1544 = !DILocation(line: 150, column: 24, scope: !1522)
!1545 = !DILocation(line: 150, column: 6, scope: !1522)
!1546 = !DILocation(line: 151, column: 3, scope: !1522)
!1547 = distinct !DISubprogram(name: "set_quoting_flags", scope: !436, file: !436, line: 159, type: !1548, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!97, !1488, !97}
!1550 = !{!1551, !1552, !1553}
!1551 = !DILocalVariable(name: "o", arg: 1, scope: !1547, file: !436, line: 159, type: !1488)
!1552 = !DILocalVariable(name: "i", arg: 2, scope: !1547, file: !436, line: 159, type: !97)
!1553 = !DILocalVariable(name: "r", scope: !1547, file: !436, line: 163, type: !97)
!1554 = !DILocation(line: 0, scope: !1547)
!1555 = !DILocation(line: 161, column: 8, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1547, file: !436, line: 161, column: 7)
!1557 = !DILocation(line: 161, column: 7, scope: !1547)
!1558 = !DILocation(line: 163, column: 14, scope: !1547)
!1559 = !{!1510, !815, i64 4}
!1560 = !DILocation(line: 164, column: 12, scope: !1547)
!1561 = !DILocation(line: 165, column: 3, scope: !1547)
!1562 = distinct !DISubprogram(name: "set_custom_quoting", scope: !436, file: !436, line: 169, type: !1563, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !1488, !70, !70}
!1565 = !{!1566, !1567, !1568}
!1566 = !DILocalVariable(name: "o", arg: 1, scope: !1562, file: !436, line: 169, type: !1488)
!1567 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1562, file: !436, line: 170, type: !70)
!1568 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1562, file: !436, line: 170, type: !70)
!1569 = !DILocation(line: 0, scope: !1562)
!1570 = !DILocation(line: 172, column: 8, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1562, file: !436, line: 172, column: 7)
!1572 = !DILocation(line: 172, column: 7, scope: !1562)
!1573 = !DILocation(line: 174, column: 12, scope: !1562)
!1574 = !DILocation(line: 175, column: 8, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1562, file: !436, line: 175, column: 7)
!1576 = !DILocation(line: 175, column: 19, scope: !1575)
!1577 = !DILocation(line: 176, column: 5, scope: !1575)
!1578 = !DILocation(line: 177, column: 6, scope: !1562)
!1579 = !DILocation(line: 177, column: 17, scope: !1562)
!1580 = !{!1510, !754, i64 40}
!1581 = !DILocation(line: 178, column: 6, scope: !1562)
!1582 = !DILocation(line: 178, column: 18, scope: !1562)
!1583 = !{!1510, !754, i64 48}
!1584 = !DILocation(line: 179, column: 1, scope: !1562)
!1585 = !DISubprogram(name: "abort", scope: !938, file: !938, line: 598, type: !367, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1586 = distinct !DISubprogram(name: "quotearg_buffer", scope: !436, file: !436, line: 774, type: !1587, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!99, !246, !99, !70, !99, !1502}
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1590 = !DILocalVariable(name: "buffer", arg: 1, scope: !1586, file: !436, line: 774, type: !246)
!1591 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1586, file: !436, line: 774, type: !99)
!1592 = !DILocalVariable(name: "arg", arg: 3, scope: !1586, file: !436, line: 775, type: !70)
!1593 = !DILocalVariable(name: "argsize", arg: 4, scope: !1586, file: !436, line: 775, type: !99)
!1594 = !DILocalVariable(name: "o", arg: 5, scope: !1586, file: !436, line: 776, type: !1502)
!1595 = !DILocalVariable(name: "p", scope: !1586, file: !436, line: 778, type: !1502)
!1596 = !DILocalVariable(name: "saved_errno", scope: !1586, file: !436, line: 779, type: !97)
!1597 = !DILocalVariable(name: "r", scope: !1586, file: !436, line: 780, type: !99)
!1598 = !DILocation(line: 0, scope: !1586)
!1599 = !DILocation(line: 778, column: 37, scope: !1586)
!1600 = !DILocation(line: 779, column: 21, scope: !1586)
!1601 = !DILocation(line: 781, column: 43, scope: !1586)
!1602 = !DILocation(line: 781, column: 53, scope: !1586)
!1603 = !DILocation(line: 781, column: 63, scope: !1586)
!1604 = !DILocation(line: 782, column: 43, scope: !1586)
!1605 = !DILocation(line: 782, column: 58, scope: !1586)
!1606 = !DILocation(line: 780, column: 14, scope: !1586)
!1607 = !DILocation(line: 783, column: 9, scope: !1586)
!1608 = !DILocation(line: 784, column: 3, scope: !1586)
!1609 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !436, file: !436, line: 251, type: !1610, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1614)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!99, !246, !99, !70, !99, !462, !97, !1612, !70, !70}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1640, !1642, !1645, !1646, !1647, !1648, !1651, !1652, !1654, !1655, !1658, !1662, !1663, !1671, !1674, !1675, !1676}
!1615 = !DILocalVariable(name: "buffer", arg: 1, scope: !1609, file: !436, line: 251, type: !246)
!1616 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1609, file: !436, line: 251, type: !99)
!1617 = !DILocalVariable(name: "arg", arg: 3, scope: !1609, file: !436, line: 252, type: !70)
!1618 = !DILocalVariable(name: "argsize", arg: 4, scope: !1609, file: !436, line: 252, type: !99)
!1619 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1609, file: !436, line: 253, type: !462)
!1620 = !DILocalVariable(name: "flags", arg: 6, scope: !1609, file: !436, line: 253, type: !97)
!1621 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1609, file: !436, line: 254, type: !1612)
!1622 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1609, file: !436, line: 255, type: !70)
!1623 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1609, file: !436, line: 256, type: !70)
!1624 = !DILocalVariable(name: "unibyte_locale", scope: !1609, file: !436, line: 258, type: !225)
!1625 = !DILocalVariable(name: "len", scope: !1609, file: !436, line: 260, type: !99)
!1626 = !DILocalVariable(name: "orig_buffersize", scope: !1609, file: !436, line: 261, type: !99)
!1627 = !DILocalVariable(name: "quote_string", scope: !1609, file: !436, line: 262, type: !70)
!1628 = !DILocalVariable(name: "quote_string_len", scope: !1609, file: !436, line: 263, type: !99)
!1629 = !DILocalVariable(name: "backslash_escapes", scope: !1609, file: !436, line: 264, type: !225)
!1630 = !DILocalVariable(name: "elide_outer_quotes", scope: !1609, file: !436, line: 265, type: !225)
!1631 = !DILocalVariable(name: "encountered_single_quote", scope: !1609, file: !436, line: 266, type: !225)
!1632 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1609, file: !436, line: 267, type: !225)
!1633 = !DILabel(scope: !1609, name: "process_input", file: !436, line: 308)
!1634 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1609, file: !436, line: 309, type: !225)
!1635 = !DILocalVariable(name: "lq", scope: !1636, file: !436, line: 361, type: !70)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !436, line: 361, column: 11)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !436, line: 360, column: 13)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !436, line: 333, column: 7)
!1639 = distinct !DILexicalBlock(scope: !1609, file: !436, line: 312, column: 5)
!1640 = !DILocalVariable(name: "i", scope: !1641, file: !436, line: 395, type: !99)
!1641 = distinct !DILexicalBlock(scope: !1609, file: !436, line: 395, column: 3)
!1642 = !DILocalVariable(name: "is_right_quote", scope: !1643, file: !436, line: 397, type: !225)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !436, line: 396, column: 5)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !436, line: 395, column: 3)
!1645 = !DILocalVariable(name: "escaping", scope: !1643, file: !436, line: 398, type: !225)
!1646 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1643, file: !436, line: 399, type: !225)
!1647 = !DILocalVariable(name: "c", scope: !1643, file: !436, line: 417, type: !101)
!1648 = !DILabel(scope: !1649, name: "c_and_shell_escape", file: !436, line: 502)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !436, line: 478, column: 9)
!1650 = distinct !DILexicalBlock(scope: !1643, file: !436, line: 419, column: 9)
!1651 = !DILabel(scope: !1649, name: "c_escape", file: !436, line: 507)
!1652 = !DILocalVariable(name: "m", scope: !1653, file: !436, line: 598, type: !99)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !436, line: 596, column: 11)
!1654 = !DILocalVariable(name: "printable", scope: !1653, file: !436, line: 600, type: !225)
!1655 = !DILocalVariable(name: "mbs", scope: !1656, file: !436, line: 609, type: !523)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !436, line: 608, column: 15)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !436, line: 602, column: 17)
!1658 = !DILocalVariable(name: "w", scope: !1659, file: !436, line: 618, type: !416)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !436, line: 617, column: 19)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !436, line: 616, column: 17)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !436, line: 616, column: 17)
!1662 = !DILocalVariable(name: "bytes", scope: !1659, file: !436, line: 619, type: !99)
!1663 = !DILocalVariable(name: "j", scope: !1664, file: !436, line: 648, type: !99)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !436, line: 648, column: 29)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !436, line: 647, column: 27)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !436, line: 645, column: 29)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !436, line: 636, column: 23)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !436, line: 628, column: 30)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !436, line: 623, column: 30)
!1670 = distinct !DILexicalBlock(scope: !1659, file: !436, line: 621, column: 25)
!1671 = !DILocalVariable(name: "ilim", scope: !1672, file: !436, line: 674, type: !99)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !436, line: 671, column: 15)
!1673 = distinct !DILexicalBlock(scope: !1653, file: !436, line: 670, column: 17)
!1674 = !DILabel(scope: !1643, name: "store_escape", file: !436, line: 709)
!1675 = !DILabel(scope: !1643, name: "store_c", file: !436, line: 712)
!1676 = !DILabel(scope: !1609, name: "force_outer_quoting_style", file: !436, line: 753)
!1677 = distinct !DIAssignID()
!1678 = distinct !DIAssignID()
!1679 = distinct !DIAssignID()
!1680 = distinct !DIAssignID()
!1681 = distinct !DIAssignID()
!1682 = !DILocation(line: 0, scope: !1656)
!1683 = distinct !DIAssignID()
!1684 = !DILocation(line: 0, scope: !1659)
!1685 = !DILocation(line: 0, scope: !1609)
!1686 = !DILocation(line: 258, column: 25, scope: !1609)
!1687 = !DILocation(line: 258, column: 36, scope: !1609)
!1688 = !DILocation(line: 265, column: 8, scope: !1609)
!1689 = !DILocation(line: 267, column: 3, scope: !1609)
!1690 = !DILocation(line: 261, column: 10, scope: !1609)
!1691 = !DILocation(line: 262, column: 15, scope: !1609)
!1692 = !DILocation(line: 263, column: 10, scope: !1609)
!1693 = !DILocation(line: 264, column: 8, scope: !1609)
!1694 = !DILocation(line: 266, column: 8, scope: !1609)
!1695 = !DILocation(line: 267, column: 8, scope: !1609)
!1696 = !DILocation(line: 308, column: 2, scope: !1609)
!1697 = !DILocation(line: 311, column: 3, scope: !1609)
!1698 = !DILocation(line: 318, column: 11, scope: !1639)
!1699 = !DILocation(line: 318, column: 12, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1639, file: !436, line: 318, column: 11)
!1701 = !DILocation(line: 319, column: 9, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !436, line: 319, column: 9)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !436, line: 319, column: 9)
!1704 = !DILocation(line: 319, column: 9, scope: !1703)
!1705 = !DILocation(line: 0, scope: !514, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 357, column: 26, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !436, line: 335, column: 11)
!1708 = distinct !DILexicalBlock(scope: !1638, file: !436, line: 334, column: 13)
!1709 = !DILocation(line: 199, column: 29, scope: !514, inlinedAt: !1706)
!1710 = !DILocation(line: 201, column: 19, scope: !1711, inlinedAt: !1706)
!1711 = distinct !DILexicalBlock(scope: !514, file: !436, line: 201, column: 7)
!1712 = !DILocation(line: 201, column: 7, scope: !514, inlinedAt: !1706)
!1713 = !DILocation(line: 229, column: 3, scope: !514, inlinedAt: !1706)
!1714 = !DILocation(line: 230, column: 3, scope: !514, inlinedAt: !1706)
!1715 = !DILocalVariable(name: "ps", arg: 1, scope: !1716, file: !1456, line: 1135, type: !1719)
!1716 = distinct !DISubprogram(name: "mbszero", scope: !1456, file: !1456, line: 1135, type: !1717, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1720)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!1720 = !{!1715}
!1721 = !DILocation(line: 0, scope: !1716, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 230, column: 18, scope: !514, inlinedAt: !1706)
!1723 = !DILocalVariable(name: "__dest", arg: 1, scope: !1724, file: !1465, line: 57, type: !91)
!1724 = distinct !DISubprogram(name: "memset", scope: !1465, file: !1465, line: 57, type: !1466, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1725)
!1725 = !{!1723, !1726, !1727}
!1726 = !DILocalVariable(name: "__ch", arg: 2, scope: !1724, file: !1465, line: 57, type: !97)
!1727 = !DILocalVariable(name: "__len", arg: 3, scope: !1724, file: !1465, line: 57, type: !99)
!1728 = !DILocation(line: 0, scope: !1724, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 1137, column: 3, scope: !1716, inlinedAt: !1722)
!1730 = !DILocation(line: 59, column: 10, scope: !1724, inlinedAt: !1729)
!1731 = !DILocation(line: 231, column: 7, scope: !1732, inlinedAt: !1706)
!1732 = distinct !DILexicalBlock(scope: !514, file: !436, line: 231, column: 7)
!1733 = !DILocation(line: 231, column: 40, scope: !1732, inlinedAt: !1706)
!1734 = !DILocation(line: 231, column: 45, scope: !1732, inlinedAt: !1706)
!1735 = !DILocation(line: 235, column: 1, scope: !514, inlinedAt: !1706)
!1736 = !DILocation(line: 0, scope: !514, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 358, column: 27, scope: !1707)
!1738 = !DILocation(line: 199, column: 29, scope: !514, inlinedAt: !1737)
!1739 = !DILocation(line: 201, column: 19, scope: !1711, inlinedAt: !1737)
!1740 = !DILocation(line: 201, column: 7, scope: !514, inlinedAt: !1737)
!1741 = !DILocation(line: 229, column: 3, scope: !514, inlinedAt: !1737)
!1742 = !DILocation(line: 230, column: 3, scope: !514, inlinedAt: !1737)
!1743 = !DILocation(line: 0, scope: !1716, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 230, column: 18, scope: !514, inlinedAt: !1737)
!1745 = !DILocation(line: 0, scope: !1724, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 1137, column: 3, scope: !1716, inlinedAt: !1744)
!1747 = !DILocation(line: 59, column: 10, scope: !1724, inlinedAt: !1746)
!1748 = !DILocation(line: 231, column: 7, scope: !1732, inlinedAt: !1737)
!1749 = !DILocation(line: 231, column: 40, scope: !1732, inlinedAt: !1737)
!1750 = !DILocation(line: 231, column: 45, scope: !1732, inlinedAt: !1737)
!1751 = !DILocation(line: 235, column: 1, scope: !514, inlinedAt: !1737)
!1752 = !DILocation(line: 360, column: 14, scope: !1637)
!1753 = !DILocation(line: 360, column: 13, scope: !1638)
!1754 = !DILocation(line: 0, scope: !1636)
!1755 = !DILocation(line: 361, column: 45, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1636, file: !436, line: 361, column: 11)
!1757 = !DILocation(line: 361, column: 11, scope: !1636)
!1758 = !DILocation(line: 362, column: 13, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !436, line: 362, column: 13)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !436, line: 362, column: 13)
!1761 = !DILocation(line: 362, column: 13, scope: !1760)
!1762 = !DILocation(line: 361, column: 52, scope: !1756)
!1763 = distinct !{!1763, !1757, !1764, !861}
!1764 = !DILocation(line: 362, column: 13, scope: !1636)
!1765 = !DILocation(line: 260, column: 10, scope: !1609)
!1766 = !DILocation(line: 365, column: 28, scope: !1638)
!1767 = !DILocation(line: 367, column: 7, scope: !1639)
!1768 = !DILocation(line: 370, column: 7, scope: !1639)
!1769 = !DILocation(line: 373, column: 7, scope: !1639)
!1770 = !DILocation(line: 376, column: 12, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1639, file: !436, line: 376, column: 11)
!1772 = !DILocation(line: 376, column: 11, scope: !1639)
!1773 = !DILocation(line: 381, column: 12, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1639, file: !436, line: 381, column: 11)
!1775 = !DILocation(line: 381, column: 11, scope: !1639)
!1776 = !DILocation(line: 382, column: 9, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !436, line: 382, column: 9)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !436, line: 382, column: 9)
!1779 = !DILocation(line: 382, column: 9, scope: !1778)
!1780 = !DILocation(line: 389, column: 7, scope: !1639)
!1781 = !DILocation(line: 392, column: 7, scope: !1639)
!1782 = !DILocation(line: 0, scope: !1641)
!1783 = !DILocation(line: 395, column: 8, scope: !1641)
!1784 = !DILocation(line: 309, column: 8, scope: !1609)
!1785 = !DILocation(line: 395, scope: !1641)
!1786 = !DILocation(line: 395, column: 34, scope: !1644)
!1787 = !DILocation(line: 395, column: 26, scope: !1644)
!1788 = !DILocation(line: 395, column: 48, scope: !1644)
!1789 = !DILocation(line: 395, column: 55, scope: !1644)
!1790 = !DILocation(line: 395, column: 3, scope: !1641)
!1791 = !DILocation(line: 395, column: 67, scope: !1644)
!1792 = !DILocation(line: 0, scope: !1643)
!1793 = !DILocation(line: 402, column: 11, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1643, file: !436, line: 401, column: 11)
!1795 = !DILocation(line: 404, column: 17, scope: !1794)
!1796 = !DILocation(line: 405, column: 39, scope: !1794)
!1797 = !DILocation(line: 409, column: 32, scope: !1794)
!1798 = !DILocation(line: 405, column: 19, scope: !1794)
!1799 = !DILocation(line: 405, column: 15, scope: !1794)
!1800 = !DILocation(line: 410, column: 11, scope: !1794)
!1801 = !DILocation(line: 410, column: 25, scope: !1794)
!1802 = !DILocalVariable(name: "__s1", arg: 1, scope: !1803, file: !827, line: 974, type: !962)
!1803 = distinct !DISubprogram(name: "memeq", scope: !827, file: !827, line: 974, type: !1425, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1804)
!1804 = !{!1802, !1805, !1806}
!1805 = !DILocalVariable(name: "__s2", arg: 2, scope: !1803, file: !827, line: 974, type: !962)
!1806 = !DILocalVariable(name: "__n", arg: 3, scope: !1803, file: !827, line: 974, type: !99)
!1807 = !DILocation(line: 0, scope: !1803, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 410, column: 14, scope: !1794)
!1809 = !DILocation(line: 976, column: 11, scope: !1803, inlinedAt: !1808)
!1810 = !DILocation(line: 976, column: 10, scope: !1803, inlinedAt: !1808)
!1811 = !DILocation(line: 401, column: 11, scope: !1643)
!1812 = !DILocation(line: 417, column: 25, scope: !1643)
!1813 = !DILocation(line: 418, column: 7, scope: !1643)
!1814 = !DILocation(line: 421, column: 15, scope: !1650)
!1815 = !DILocation(line: 423, column: 15, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !436, line: 423, column: 15)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !436, line: 422, column: 13)
!1818 = distinct !DILexicalBlock(scope: !1650, file: !436, line: 421, column: 15)
!1819 = !DILocation(line: 423, column: 15, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !436, line: 423, column: 15)
!1821 = !DILocation(line: 423, column: 15, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !436, line: 423, column: 15)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !436, line: 423, column: 15)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !436, line: 423, column: 15)
!1825 = !DILocation(line: 423, column: 15, scope: !1823)
!1826 = !DILocation(line: 423, column: 15, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !436, line: 423, column: 15)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !436, line: 423, column: 15)
!1829 = !DILocation(line: 423, column: 15, scope: !1828)
!1830 = !DILocation(line: 423, column: 15, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !436, line: 423, column: 15)
!1832 = distinct !DILexicalBlock(scope: !1824, file: !436, line: 423, column: 15)
!1833 = !DILocation(line: 423, column: 15, scope: !1832)
!1834 = !DILocation(line: 423, column: 15, scope: !1824)
!1835 = !DILocation(line: 423, column: 15, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !436, line: 423, column: 15)
!1837 = distinct !DILexicalBlock(scope: !1816, file: !436, line: 423, column: 15)
!1838 = !DILocation(line: 423, column: 15, scope: !1837)
!1839 = !DILocation(line: 431, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1817, file: !436, line: 430, column: 19)
!1841 = !DILocation(line: 431, column: 24, scope: !1840)
!1842 = !DILocation(line: 431, column: 28, scope: !1840)
!1843 = !DILocation(line: 431, column: 38, scope: !1840)
!1844 = !DILocation(line: 431, column: 48, scope: !1840)
!1845 = !DILocation(line: 431, column: 59, scope: !1840)
!1846 = !DILocation(line: 433, column: 19, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !436, line: 433, column: 19)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !436, line: 433, column: 19)
!1849 = distinct !DILexicalBlock(scope: !1840, file: !436, line: 432, column: 17)
!1850 = !DILocation(line: 433, column: 19, scope: !1848)
!1851 = !DILocation(line: 434, column: 19, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !436, line: 434, column: 19)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !436, line: 434, column: 19)
!1854 = !DILocation(line: 434, column: 19, scope: !1853)
!1855 = !DILocation(line: 435, column: 17, scope: !1849)
!1856 = !DILocation(line: 442, column: 20, scope: !1818)
!1857 = !DILocation(line: 447, column: 11, scope: !1650)
!1858 = !DILocation(line: 450, column: 19, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1650, file: !436, line: 448, column: 13)
!1860 = !DILocation(line: 456, column: 19, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1859, file: !436, line: 455, column: 19)
!1862 = !DILocation(line: 456, column: 24, scope: !1861)
!1863 = !DILocation(line: 456, column: 28, scope: !1861)
!1864 = !DILocation(line: 456, column: 38, scope: !1861)
!1865 = !DILocation(line: 456, column: 41, scope: !1861)
!1866 = !DILocation(line: 456, column: 52, scope: !1861)
!1867 = !DILocation(line: 455, column: 19, scope: !1859)
!1868 = !DILocation(line: 457, column: 25, scope: !1861)
!1869 = !DILocation(line: 457, column: 17, scope: !1861)
!1870 = !DILocation(line: 464, column: 25, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1861, file: !436, line: 458, column: 19)
!1872 = !DILocation(line: 468, column: 21, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !436, line: 468, column: 21)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !436, line: 468, column: 21)
!1875 = !DILocation(line: 468, column: 21, scope: !1874)
!1876 = !DILocation(line: 469, column: 21, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !436, line: 469, column: 21)
!1878 = distinct !DILexicalBlock(scope: !1871, file: !436, line: 469, column: 21)
!1879 = !DILocation(line: 469, column: 21, scope: !1878)
!1880 = !DILocation(line: 470, column: 21, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !436, line: 470, column: 21)
!1882 = distinct !DILexicalBlock(scope: !1871, file: !436, line: 470, column: 21)
!1883 = !DILocation(line: 470, column: 21, scope: !1882)
!1884 = !DILocation(line: 471, column: 21, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !436, line: 471, column: 21)
!1886 = distinct !DILexicalBlock(scope: !1871, file: !436, line: 471, column: 21)
!1887 = !DILocation(line: 471, column: 21, scope: !1886)
!1888 = !DILocation(line: 472, column: 21, scope: !1871)
!1889 = !DILocation(line: 482, column: 33, scope: !1649)
!1890 = !DILocation(line: 483, column: 33, scope: !1649)
!1891 = !DILocation(line: 485, column: 33, scope: !1649)
!1892 = !DILocation(line: 486, column: 33, scope: !1649)
!1893 = !DILocation(line: 487, column: 33, scope: !1649)
!1894 = !DILocation(line: 490, column: 17, scope: !1649)
!1895 = !DILocation(line: 492, column: 21, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !436, line: 491, column: 15)
!1897 = distinct !DILexicalBlock(scope: !1649, file: !436, line: 490, column: 17)
!1898 = !DILocation(line: 499, column: 35, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1649, file: !436, line: 499, column: 17)
!1900 = !DILocation(line: 499, column: 57, scope: !1899)
!1901 = !DILocation(line: 0, scope: !1649)
!1902 = !DILocation(line: 502, column: 11, scope: !1649)
!1903 = !DILocation(line: 504, column: 17, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1649, file: !436, line: 503, column: 17)
!1905 = !DILocation(line: 507, column: 11, scope: !1649)
!1906 = !DILocation(line: 508, column: 17, scope: !1649)
!1907 = !DILocation(line: 517, column: 15, scope: !1650)
!1908 = !DILocation(line: 517, column: 40, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1650, file: !436, line: 517, column: 15)
!1910 = !DILocation(line: 517, column: 47, scope: !1909)
!1911 = !DILocation(line: 517, column: 18, scope: !1909)
!1912 = !DILocation(line: 521, column: 17, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1650, file: !436, line: 521, column: 15)
!1914 = !DILocation(line: 521, column: 15, scope: !1650)
!1915 = !DILocation(line: 525, column: 11, scope: !1650)
!1916 = !DILocation(line: 537, column: 15, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1650, file: !436, line: 536, column: 15)
!1918 = !DILocation(line: 544, column: 15, scope: !1650)
!1919 = !DILocation(line: 546, column: 19, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !436, line: 545, column: 13)
!1921 = distinct !DILexicalBlock(scope: !1650, file: !436, line: 544, column: 15)
!1922 = !DILocation(line: 549, column: 19, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !436, line: 549, column: 19)
!1924 = !DILocation(line: 549, column: 30, scope: !1923)
!1925 = !DILocation(line: 558, column: 15, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !436, line: 558, column: 15)
!1927 = distinct !DILexicalBlock(scope: !1920, file: !436, line: 558, column: 15)
!1928 = !DILocation(line: 558, column: 15, scope: !1927)
!1929 = !DILocation(line: 559, column: 15, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !436, line: 559, column: 15)
!1931 = distinct !DILexicalBlock(scope: !1920, file: !436, line: 559, column: 15)
!1932 = !DILocation(line: 559, column: 15, scope: !1931)
!1933 = !DILocation(line: 560, column: 15, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !436, line: 560, column: 15)
!1935 = distinct !DILexicalBlock(scope: !1920, file: !436, line: 560, column: 15)
!1936 = !DILocation(line: 560, column: 15, scope: !1935)
!1937 = !DILocation(line: 562, column: 13, scope: !1920)
!1938 = !DILocation(line: 602, column: 17, scope: !1653)
!1939 = !DILocation(line: 0, scope: !1653)
!1940 = !DILocation(line: 605, column: 29, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1657, file: !436, line: 603, column: 15)
!1942 = !DILocation(line: 605, column: 27, scope: !1941)
!1943 = !DILocation(line: 606, column: 15, scope: !1941)
!1944 = !DILocation(line: 609, column: 17, scope: !1656)
!1945 = !DILocation(line: 0, scope: !1716, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 609, column: 32, scope: !1656)
!1947 = !DILocation(line: 0, scope: !1724, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 1137, column: 3, scope: !1716, inlinedAt: !1946)
!1949 = !DILocation(line: 59, column: 10, scope: !1724, inlinedAt: !1948)
!1950 = !DILocation(line: 613, column: 29, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1656, file: !436, line: 613, column: 21)
!1952 = !DILocation(line: 613, column: 21, scope: !1656)
!1953 = !DILocation(line: 614, column: 29, scope: !1951)
!1954 = !DILocation(line: 614, column: 19, scope: !1951)
!1955 = !DILocation(line: 618, column: 21, scope: !1659)
!1956 = !DILocation(line: 620, column: 54, scope: !1659)
!1957 = !DILocation(line: 619, column: 36, scope: !1659)
!1958 = !DILocation(line: 621, column: 25, scope: !1659)
!1959 = !DILocation(line: 631, column: 38, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1668, file: !436, line: 629, column: 23)
!1961 = !DILocation(line: 631, column: 48, scope: !1960)
!1962 = !DILocation(line: 626, column: 25, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1669, file: !436, line: 624, column: 23)
!1964 = !DILocation(line: 631, column: 51, scope: !1960)
!1965 = !DILocation(line: 631, column: 25, scope: !1960)
!1966 = !DILocation(line: 632, column: 28, scope: !1960)
!1967 = !DILocation(line: 631, column: 34, scope: !1960)
!1968 = distinct !{!1968, !1965, !1966, !861}
!1969 = !DILocation(line: 0, scope: !1664)
!1970 = !DILocation(line: 646, column: 29, scope: !1666)
!1971 = !DILocation(line: 649, column: 39, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1664, file: !436, line: 648, column: 29)
!1973 = !DILocation(line: 649, column: 31, scope: !1972)
!1974 = !DILocation(line: 648, column: 60, scope: !1972)
!1975 = !DILocation(line: 648, column: 50, scope: !1972)
!1976 = !DILocation(line: 648, column: 29, scope: !1664)
!1977 = distinct !{!1977, !1976, !1978, !861}
!1978 = !DILocation(line: 654, column: 33, scope: !1664)
!1979 = !DILocation(line: 657, column: 43, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1667, file: !436, line: 657, column: 29)
!1981 = !DILocalVariable(name: "wc", arg: 1, scope: !1982, file: !1983, line: 865, type: !1986)
!1982 = distinct !DISubprogram(name: "c32isprint", scope: !1983, file: !1983, line: 865, type: !1984, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1988)
!1983 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!97, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1987, line: 20, baseType: !76)
!1987 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1988 = !{!1981}
!1989 = !DILocation(line: 0, scope: !1982, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 657, column: 31, scope: !1980)
!1991 = !DILocation(line: 871, column: 10, scope: !1982, inlinedAt: !1990)
!1992 = !DILocation(line: 657, column: 31, scope: !1980)
!1993 = !DILocation(line: 664, column: 23, scope: !1659)
!1994 = !DILocation(line: 665, column: 19, scope: !1660)
!1995 = !DILocation(line: 666, column: 15, scope: !1657)
!1996 = !DILocation(line: 0, scope: !1657)
!1997 = !DILocation(line: 670, column: 19, scope: !1673)
!1998 = !DILocation(line: 670, column: 23, scope: !1673)
!1999 = !DILocation(line: 674, column: 33, scope: !1672)
!2000 = !DILocation(line: 0, scope: !1672)
!2001 = !DILocation(line: 676, column: 17, scope: !1672)
!2002 = !DILocation(line: 398, column: 12, scope: !1643)
!2003 = !DILocation(line: 678, column: 43, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !436, line: 678, column: 25)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !436, line: 677, column: 19)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !436, line: 676, column: 17)
!2007 = distinct !DILexicalBlock(scope: !1672, file: !436, line: 676, column: 17)
!2008 = !DILocation(line: 680, column: 25, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !436, line: 680, column: 25)
!2010 = distinct !DILexicalBlock(scope: !2004, file: !436, line: 679, column: 23)
!2011 = !DILocation(line: 680, column: 25, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2009, file: !436, line: 680, column: 25)
!2013 = !DILocation(line: 680, column: 25, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !436, line: 680, column: 25)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !436, line: 680, column: 25)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !436, line: 680, column: 25)
!2017 = !DILocation(line: 680, column: 25, scope: !2015)
!2018 = !DILocation(line: 680, column: 25, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !436, line: 680, column: 25)
!2020 = distinct !DILexicalBlock(scope: !2016, file: !436, line: 680, column: 25)
!2021 = !DILocation(line: 680, column: 25, scope: !2020)
!2022 = !DILocation(line: 680, column: 25, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !436, line: 680, column: 25)
!2024 = distinct !DILexicalBlock(scope: !2016, file: !436, line: 680, column: 25)
!2025 = !DILocation(line: 680, column: 25, scope: !2024)
!2026 = !DILocation(line: 680, column: 25, scope: !2016)
!2027 = !DILocation(line: 680, column: 25, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !436, line: 680, column: 25)
!2029 = distinct !DILexicalBlock(scope: !2009, file: !436, line: 680, column: 25)
!2030 = !DILocation(line: 680, column: 25, scope: !2029)
!2031 = !DILocation(line: 681, column: 25, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !436, line: 681, column: 25)
!2033 = distinct !DILexicalBlock(scope: !2010, file: !436, line: 681, column: 25)
!2034 = !DILocation(line: 681, column: 25, scope: !2033)
!2035 = !DILocation(line: 682, column: 25, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !436, line: 682, column: 25)
!2037 = distinct !DILexicalBlock(scope: !2010, file: !436, line: 682, column: 25)
!2038 = !DILocation(line: 682, column: 25, scope: !2037)
!2039 = !DILocation(line: 683, column: 38, scope: !2010)
!2040 = !DILocation(line: 683, column: 33, scope: !2010)
!2041 = !DILocation(line: 684, column: 23, scope: !2010)
!2042 = !DILocation(line: 685, column: 30, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2004, file: !436, line: 685, column: 30)
!2044 = !DILocation(line: 685, column: 30, scope: !2004)
!2045 = !DILocation(line: 687, column: 25, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !436, line: 687, column: 25)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !436, line: 687, column: 25)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !436, line: 686, column: 23)
!2049 = !DILocation(line: 687, column: 25, scope: !2047)
!2050 = !DILocation(line: 689, column: 23, scope: !2048)
!2051 = !DILocation(line: 690, column: 35, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2005, file: !436, line: 690, column: 25)
!2053 = !DILocation(line: 690, column: 30, scope: !2052)
!2054 = !DILocation(line: 690, column: 25, scope: !2005)
!2055 = !DILocation(line: 692, column: 21, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !436, line: 692, column: 21)
!2057 = distinct !DILexicalBlock(scope: !2005, file: !436, line: 692, column: 21)
!2058 = !DILocation(line: 692, column: 21, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !436, line: 692, column: 21)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !436, line: 692, column: 21)
!2061 = distinct !DILexicalBlock(scope: !2056, file: !436, line: 692, column: 21)
!2062 = !DILocation(line: 692, column: 21, scope: !2060)
!2063 = !DILocation(line: 692, column: 21, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !436, line: 692, column: 21)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !436, line: 692, column: 21)
!2066 = !DILocation(line: 692, column: 21, scope: !2065)
!2067 = !DILocation(line: 692, column: 21, scope: !2061)
!2068 = !DILocation(line: 0, scope: !2005)
!2069 = !DILocation(line: 693, column: 21, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !436, line: 693, column: 21)
!2071 = distinct !DILexicalBlock(scope: !2005, file: !436, line: 693, column: 21)
!2072 = !DILocation(line: 693, column: 21, scope: !2071)
!2073 = !DILocation(line: 694, column: 25, scope: !2005)
!2074 = !DILocation(line: 676, column: 17, scope: !2006)
!2075 = distinct !{!2075, !2076, !2077}
!2076 = !DILocation(line: 676, column: 17, scope: !2007)
!2077 = !DILocation(line: 695, column: 19, scope: !2007)
!2078 = !DILocation(line: 409, column: 30, scope: !1794)
!2079 = !DILocation(line: 702, column: 34, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1643, file: !436, line: 702, column: 11)
!2081 = !DILocation(line: 704, column: 14, scope: !2080)
!2082 = !DILocation(line: 705, column: 14, scope: !2080)
!2083 = !DILocation(line: 705, column: 35, scope: !2080)
!2084 = !DILocation(line: 705, column: 17, scope: !2080)
!2085 = !DILocation(line: 705, column: 47, scope: !2080)
!2086 = !DILocation(line: 705, column: 65, scope: !2080)
!2087 = !DILocation(line: 706, column: 11, scope: !2080)
!2088 = !DILocation(line: 702, column: 11, scope: !1643)
!2089 = !DILocation(line: 395, column: 15, scope: !1641)
!2090 = !DILocation(line: 709, column: 5, scope: !1643)
!2091 = !DILocation(line: 710, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1643, file: !436, line: 710, column: 7)
!2093 = !DILocation(line: 710, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2092, file: !436, line: 710, column: 7)
!2095 = !DILocation(line: 710, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !436, line: 710, column: 7)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !436, line: 710, column: 7)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !436, line: 710, column: 7)
!2099 = !DILocation(line: 710, column: 7, scope: !2097)
!2100 = !DILocation(line: 710, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !436, line: 710, column: 7)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !436, line: 710, column: 7)
!2103 = !DILocation(line: 710, column: 7, scope: !2102)
!2104 = !DILocation(line: 710, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !436, line: 710, column: 7)
!2106 = distinct !DILexicalBlock(scope: !2098, file: !436, line: 710, column: 7)
!2107 = !DILocation(line: 710, column: 7, scope: !2106)
!2108 = !DILocation(line: 710, column: 7, scope: !2098)
!2109 = !DILocation(line: 710, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !436, line: 710, column: 7)
!2111 = distinct !DILexicalBlock(scope: !2092, file: !436, line: 710, column: 7)
!2112 = !DILocation(line: 710, column: 7, scope: !2111)
!2113 = !DILocation(line: 712, column: 5, scope: !1643)
!2114 = !DILocation(line: 713, column: 7, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !436, line: 713, column: 7)
!2116 = distinct !DILexicalBlock(scope: !1643, file: !436, line: 713, column: 7)
!2117 = !DILocation(line: 417, column: 21, scope: !1643)
!2118 = !DILocation(line: 713, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !436, line: 713, column: 7)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !436, line: 713, column: 7)
!2121 = distinct !DILexicalBlock(scope: !2115, file: !436, line: 713, column: 7)
!2122 = !DILocation(line: 713, column: 7, scope: !2120)
!2123 = !DILocation(line: 713, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !436, line: 713, column: 7)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !436, line: 713, column: 7)
!2126 = !DILocation(line: 713, column: 7, scope: !2125)
!2127 = !DILocation(line: 713, column: 7, scope: !2121)
!2128 = !DILocation(line: 714, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !436, line: 714, column: 7)
!2130 = distinct !DILexicalBlock(scope: !1643, file: !436, line: 714, column: 7)
!2131 = !DILocation(line: 714, column: 7, scope: !2130)
!2132 = !DILocation(line: 716, column: 13, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1643, file: !436, line: 716, column: 11)
!2134 = !DILocation(line: 716, column: 11, scope: !1643)
!2135 = !DILocation(line: 718, column: 5, scope: !1644)
!2136 = !DILocation(line: 395, column: 82, scope: !1644)
!2137 = !DILocation(line: 395, column: 3, scope: !1644)
!2138 = distinct !{!2138, !1790, !2139, !861}
!2139 = !DILocation(line: 718, column: 5, scope: !1641)
!2140 = !DILocation(line: 720, column: 11, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !1609, file: !436, line: 720, column: 7)
!2142 = !DILocation(line: 720, column: 16, scope: !2141)
!2143 = !DILocation(line: 728, column: 51, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1609, file: !436, line: 728, column: 7)
!2145 = !DILocation(line: 731, column: 11, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !436, line: 731, column: 11)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !436, line: 730, column: 5)
!2148 = !DILocation(line: 731, column: 11, scope: !2147)
!2149 = !DILocation(line: 732, column: 16, scope: !2146)
!2150 = !DILocation(line: 732, column: 9, scope: !2146)
!2151 = !DILocation(line: 736, column: 18, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2146, file: !436, line: 736, column: 16)
!2153 = !DILocation(line: 736, column: 29, scope: !2152)
!2154 = !DILocation(line: 745, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !1609, file: !436, line: 745, column: 7)
!2156 = !DILocation(line: 745, column: 20, scope: !2155)
!2157 = !DILocation(line: 746, column: 12, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !436, line: 746, column: 5)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !436, line: 746, column: 5)
!2160 = !DILocation(line: 746, column: 5, scope: !2159)
!2161 = !DILocation(line: 747, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !436, line: 747, column: 7)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !436, line: 747, column: 7)
!2164 = !DILocation(line: 747, column: 7, scope: !2163)
!2165 = !DILocation(line: 746, column: 39, scope: !2158)
!2166 = distinct !{!2166, !2160, !2167, !861}
!2167 = !DILocation(line: 747, column: 7, scope: !2159)
!2168 = !DILocation(line: 749, column: 11, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !1609, file: !436, line: 749, column: 7)
!2170 = !DILocation(line: 749, column: 7, scope: !1609)
!2171 = !DILocation(line: 750, column: 5, scope: !2169)
!2172 = !DILocation(line: 750, column: 17, scope: !2169)
!2173 = !DILocation(line: 753, column: 2, scope: !1609)
!2174 = !DILocation(line: 756, column: 51, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !1609, file: !436, line: 756, column: 7)
!2176 = !DILocation(line: 756, column: 21, scope: !2175)
!2177 = !DILocation(line: 760, column: 42, scope: !1609)
!2178 = !DILocation(line: 758, column: 10, scope: !1609)
!2179 = !DILocation(line: 758, column: 3, scope: !1609)
!2180 = !DILocation(line: 762, column: 1, scope: !1609)
!2181 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !938, file: !938, line: 98, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!99}
!2184 = !DISubprogram(name: "strlen", scope: !934, file: !934, line: 407, type: !2185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!96, !70}
!2187 = !DISubprogram(name: "iswprint", scope: !2188, file: !2188, line: 120, type: !1984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2189 = distinct !DISubprogram(name: "quotearg_alloc", scope: !436, file: !436, line: 788, type: !2190, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!246, !70, !99, !1502}
!2192 = !{!2193, !2194, !2195}
!2193 = !DILocalVariable(name: "arg", arg: 1, scope: !2189, file: !436, line: 788, type: !70)
!2194 = !DILocalVariable(name: "argsize", arg: 2, scope: !2189, file: !436, line: 788, type: !99)
!2195 = !DILocalVariable(name: "o", arg: 3, scope: !2189, file: !436, line: 789, type: !1502)
!2196 = !DILocation(line: 0, scope: !2189)
!2197 = !DILocalVariable(name: "arg", arg: 1, scope: !2198, file: !436, line: 801, type: !70)
!2198 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !436, file: !436, line: 801, type: !2199, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!246, !70, !99, !686, !1502}
!2201 = !{!2197, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2202 = !DILocalVariable(name: "argsize", arg: 2, scope: !2198, file: !436, line: 801, type: !99)
!2203 = !DILocalVariable(name: "size", arg: 3, scope: !2198, file: !436, line: 801, type: !686)
!2204 = !DILocalVariable(name: "o", arg: 4, scope: !2198, file: !436, line: 802, type: !1502)
!2205 = !DILocalVariable(name: "p", scope: !2198, file: !436, line: 804, type: !1502)
!2206 = !DILocalVariable(name: "saved_errno", scope: !2198, file: !436, line: 805, type: !97)
!2207 = !DILocalVariable(name: "flags", scope: !2198, file: !436, line: 807, type: !97)
!2208 = !DILocalVariable(name: "bufsize", scope: !2198, file: !436, line: 808, type: !99)
!2209 = !DILocalVariable(name: "buf", scope: !2198, file: !436, line: 812, type: !246)
!2210 = !DILocation(line: 0, scope: !2198, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 791, column: 10, scope: !2189)
!2212 = !DILocation(line: 804, column: 37, scope: !2198, inlinedAt: !2211)
!2213 = !DILocation(line: 805, column: 21, scope: !2198, inlinedAt: !2211)
!2214 = !DILocation(line: 807, column: 18, scope: !2198, inlinedAt: !2211)
!2215 = !DILocation(line: 807, column: 24, scope: !2198, inlinedAt: !2211)
!2216 = !DILocation(line: 808, column: 72, scope: !2198, inlinedAt: !2211)
!2217 = !DILocation(line: 809, column: 56, scope: !2198, inlinedAt: !2211)
!2218 = !DILocation(line: 810, column: 49, scope: !2198, inlinedAt: !2211)
!2219 = !DILocation(line: 811, column: 49, scope: !2198, inlinedAt: !2211)
!2220 = !DILocation(line: 808, column: 20, scope: !2198, inlinedAt: !2211)
!2221 = !DILocation(line: 811, column: 62, scope: !2198, inlinedAt: !2211)
!2222 = !DILocation(line: 812, column: 15, scope: !2198, inlinedAt: !2211)
!2223 = !DILocation(line: 813, column: 60, scope: !2198, inlinedAt: !2211)
!2224 = !DILocation(line: 815, column: 32, scope: !2198, inlinedAt: !2211)
!2225 = !DILocation(line: 815, column: 47, scope: !2198, inlinedAt: !2211)
!2226 = !DILocation(line: 813, column: 3, scope: !2198, inlinedAt: !2211)
!2227 = !DILocation(line: 816, column: 9, scope: !2198, inlinedAt: !2211)
!2228 = !DILocation(line: 791, column: 3, scope: !2189)
!2229 = !DILocation(line: 0, scope: !2198)
!2230 = !DILocation(line: 804, column: 37, scope: !2198)
!2231 = !DILocation(line: 805, column: 21, scope: !2198)
!2232 = !DILocation(line: 807, column: 18, scope: !2198)
!2233 = !DILocation(line: 807, column: 27, scope: !2198)
!2234 = !DILocation(line: 807, column: 24, scope: !2198)
!2235 = !DILocation(line: 808, column: 72, scope: !2198)
!2236 = !DILocation(line: 809, column: 56, scope: !2198)
!2237 = !DILocation(line: 810, column: 49, scope: !2198)
!2238 = !DILocation(line: 811, column: 49, scope: !2198)
!2239 = !DILocation(line: 808, column: 20, scope: !2198)
!2240 = !DILocation(line: 811, column: 62, scope: !2198)
!2241 = !DILocation(line: 812, column: 15, scope: !2198)
!2242 = !DILocation(line: 813, column: 60, scope: !2198)
!2243 = !DILocation(line: 815, column: 32, scope: !2198)
!2244 = !DILocation(line: 815, column: 47, scope: !2198)
!2245 = !DILocation(line: 813, column: 3, scope: !2198)
!2246 = !DILocation(line: 816, column: 9, scope: !2198)
!2247 = !DILocation(line: 817, column: 7, scope: !2198)
!2248 = !DILocation(line: 818, column: 11, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2198, file: !436, line: 817, column: 7)
!2250 = !{!1220, !1220, i64 0}
!2251 = !DILocation(line: 818, column: 5, scope: !2249)
!2252 = !DILocation(line: 819, column: 3, scope: !2198)
!2253 = distinct !DISubprogram(name: "quotearg_free", scope: !436, file: !436, line: 837, type: !367, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2254)
!2254 = !{!2255, !2256}
!2255 = !DILocalVariable(name: "sv", scope: !2253, file: !436, line: 839, type: !537)
!2256 = !DILocalVariable(name: "i", scope: !2257, file: !436, line: 840, type: !97)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !436, line: 840, column: 3)
!2258 = !DILocation(line: 839, column: 24, scope: !2253)
!2259 = !DILocation(line: 0, scope: !2253)
!2260 = !DILocation(line: 0, scope: !2257)
!2261 = !DILocation(line: 840, column: 21, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2257, file: !436, line: 840, column: 3)
!2263 = !DILocation(line: 840, column: 3, scope: !2257)
!2264 = !DILocation(line: 842, column: 13, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2253, file: !436, line: 842, column: 7)
!2266 = !{!2267, !754, i64 8}
!2267 = !{!"slotvec", !1220, i64 0, !754, i64 8}
!2268 = !DILocation(line: 842, column: 17, scope: !2265)
!2269 = !DILocation(line: 842, column: 7, scope: !2253)
!2270 = !DILocation(line: 841, column: 17, scope: !2262)
!2271 = !DILocation(line: 841, column: 5, scope: !2262)
!2272 = !DILocation(line: 840, column: 32, scope: !2262)
!2273 = distinct !{!2273, !2263, !2274, !861}
!2274 = !DILocation(line: 841, column: 20, scope: !2257)
!2275 = !DILocation(line: 844, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2265, file: !436, line: 843, column: 5)
!2277 = !DILocation(line: 845, column: 21, scope: !2276)
!2278 = !{!2267, !1220, i64 0}
!2279 = !DILocation(line: 846, column: 20, scope: !2276)
!2280 = !DILocation(line: 847, column: 5, scope: !2276)
!2281 = !DILocation(line: 848, column: 10, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2253, file: !436, line: 848, column: 7)
!2283 = !DILocation(line: 848, column: 7, scope: !2253)
!2284 = !DILocation(line: 850, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2282, file: !436, line: 849, column: 5)
!2286 = !DILocation(line: 851, column: 15, scope: !2285)
!2287 = !DILocation(line: 852, column: 5, scope: !2285)
!2288 = !DILocation(line: 853, column: 10, scope: !2253)
!2289 = !DILocation(line: 854, column: 1, scope: !2253)
!2290 = !DISubprogram(name: "free", scope: !1456, file: !1456, line: 786, type: !2291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{null, !91}
!2293 = distinct !DISubprogram(name: "quotearg_n", scope: !436, file: !436, line: 919, type: !931, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2294)
!2294 = !{!2295, !2296}
!2295 = !DILocalVariable(name: "n", arg: 1, scope: !2293, file: !436, line: 919, type: !97)
!2296 = !DILocalVariable(name: "arg", arg: 2, scope: !2293, file: !436, line: 919, type: !70)
!2297 = !DILocation(line: 0, scope: !2293)
!2298 = !DILocation(line: 921, column: 10, scope: !2293)
!2299 = !DILocation(line: 921, column: 3, scope: !2293)
!2300 = distinct !DISubprogram(name: "quotearg_n_options", scope: !436, file: !436, line: 866, type: !2301, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!246, !97, !70, !99, !1502}
!2303 = !{!2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2314, !2315, !2317, !2318, !2319}
!2304 = !DILocalVariable(name: "n", arg: 1, scope: !2300, file: !436, line: 866, type: !97)
!2305 = !DILocalVariable(name: "arg", arg: 2, scope: !2300, file: !436, line: 866, type: !70)
!2306 = !DILocalVariable(name: "argsize", arg: 3, scope: !2300, file: !436, line: 866, type: !99)
!2307 = !DILocalVariable(name: "options", arg: 4, scope: !2300, file: !436, line: 867, type: !1502)
!2308 = !DILocalVariable(name: "saved_errno", scope: !2300, file: !436, line: 869, type: !97)
!2309 = !DILocalVariable(name: "sv", scope: !2300, file: !436, line: 871, type: !537)
!2310 = !DILocalVariable(name: "nslots_max", scope: !2300, file: !436, line: 873, type: !97)
!2311 = !DILocalVariable(name: "preallocated", scope: !2312, file: !436, line: 879, type: !225)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !436, line: 878, column: 5)
!2313 = distinct !DILexicalBlock(scope: !2300, file: !436, line: 877, column: 7)
!2314 = !DILocalVariable(name: "new_nslots", scope: !2312, file: !436, line: 880, type: !699)
!2315 = !DILocalVariable(name: "size", scope: !2316, file: !436, line: 891, type: !99)
!2316 = distinct !DILexicalBlock(scope: !2300, file: !436, line: 890, column: 3)
!2317 = !DILocalVariable(name: "val", scope: !2316, file: !436, line: 892, type: !246)
!2318 = !DILocalVariable(name: "flags", scope: !2316, file: !436, line: 894, type: !97)
!2319 = !DILocalVariable(name: "qsize", scope: !2316, file: !436, line: 895, type: !99)
!2320 = distinct !DIAssignID()
!2321 = !DILocation(line: 0, scope: !2312)
!2322 = !DILocation(line: 0, scope: !2300)
!2323 = !DILocation(line: 869, column: 21, scope: !2300)
!2324 = !DILocation(line: 871, column: 24, scope: !2300)
!2325 = !DILocation(line: 874, column: 17, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2300, file: !436, line: 874, column: 7)
!2327 = !DILocation(line: 875, column: 5, scope: !2326)
!2328 = !DILocation(line: 877, column: 7, scope: !2313)
!2329 = !DILocation(line: 877, column: 14, scope: !2313)
!2330 = !DILocation(line: 877, column: 7, scope: !2300)
!2331 = !DILocation(line: 879, column: 31, scope: !2312)
!2332 = !DILocation(line: 880, column: 7, scope: !2312)
!2333 = !DILocation(line: 880, column: 26, scope: !2312)
!2334 = !DILocation(line: 880, column: 13, scope: !2312)
!2335 = distinct !DIAssignID()
!2336 = !DILocation(line: 882, column: 31, scope: !2312)
!2337 = !DILocation(line: 883, column: 33, scope: !2312)
!2338 = !DILocation(line: 883, column: 42, scope: !2312)
!2339 = !DILocation(line: 883, column: 31, scope: !2312)
!2340 = !DILocation(line: 882, column: 22, scope: !2312)
!2341 = !DILocation(line: 882, column: 15, scope: !2312)
!2342 = !DILocation(line: 884, column: 11, scope: !2312)
!2343 = !DILocation(line: 885, column: 15, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2312, file: !436, line: 884, column: 11)
!2345 = !{i64 0, i64 8, !2250, i64 8, i64 8, !753}
!2346 = !DILocation(line: 885, column: 9, scope: !2344)
!2347 = !DILocation(line: 886, column: 20, scope: !2312)
!2348 = !DILocation(line: 886, column: 18, scope: !2312)
!2349 = !DILocation(line: 886, column: 32, scope: !2312)
!2350 = !DILocation(line: 886, column: 43, scope: !2312)
!2351 = !DILocation(line: 886, column: 53, scope: !2312)
!2352 = !DILocation(line: 0, scope: !1724, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 886, column: 7, scope: !2312)
!2354 = !DILocation(line: 59, column: 10, scope: !1724, inlinedAt: !2353)
!2355 = !DILocation(line: 887, column: 16, scope: !2312)
!2356 = !DILocation(line: 887, column: 14, scope: !2312)
!2357 = !DILocation(line: 888, column: 5, scope: !2313)
!2358 = !DILocation(line: 888, column: 5, scope: !2312)
!2359 = !DILocation(line: 891, column: 19, scope: !2316)
!2360 = !DILocation(line: 891, column: 25, scope: !2316)
!2361 = !DILocation(line: 0, scope: !2316)
!2362 = !DILocation(line: 892, column: 23, scope: !2316)
!2363 = !DILocation(line: 894, column: 26, scope: !2316)
!2364 = !DILocation(line: 894, column: 32, scope: !2316)
!2365 = !DILocation(line: 896, column: 55, scope: !2316)
!2366 = !DILocation(line: 897, column: 55, scope: !2316)
!2367 = !DILocation(line: 898, column: 55, scope: !2316)
!2368 = !DILocation(line: 899, column: 55, scope: !2316)
!2369 = !DILocation(line: 895, column: 20, scope: !2316)
!2370 = !DILocation(line: 901, column: 14, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2316, file: !436, line: 901, column: 9)
!2372 = !DILocation(line: 901, column: 9, scope: !2316)
!2373 = !DILocation(line: 903, column: 35, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2371, file: !436, line: 902, column: 7)
!2375 = !DILocation(line: 903, column: 20, scope: !2374)
!2376 = !DILocation(line: 904, column: 17, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2374, file: !436, line: 904, column: 13)
!2378 = !DILocation(line: 904, column: 13, scope: !2374)
!2379 = !DILocation(line: 905, column: 11, scope: !2377)
!2380 = !DILocation(line: 906, column: 27, scope: !2374)
!2381 = !DILocation(line: 906, column: 19, scope: !2374)
!2382 = !DILocation(line: 907, column: 69, scope: !2374)
!2383 = !DILocation(line: 909, column: 44, scope: !2374)
!2384 = !DILocation(line: 910, column: 44, scope: !2374)
!2385 = !DILocation(line: 907, column: 9, scope: !2374)
!2386 = !DILocation(line: 911, column: 7, scope: !2374)
!2387 = !DILocation(line: 913, column: 11, scope: !2316)
!2388 = !DILocation(line: 914, column: 5, scope: !2316)
!2389 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !436, file: !436, line: 925, type: !2390, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!246, !97, !70, !99}
!2392 = !{!2393, !2394, !2395}
!2393 = !DILocalVariable(name: "n", arg: 1, scope: !2389, file: !436, line: 925, type: !97)
!2394 = !DILocalVariable(name: "arg", arg: 2, scope: !2389, file: !436, line: 925, type: !70)
!2395 = !DILocalVariable(name: "argsize", arg: 3, scope: !2389, file: !436, line: 925, type: !99)
!2396 = !DILocation(line: 0, scope: !2389)
!2397 = !DILocation(line: 927, column: 10, scope: !2389)
!2398 = !DILocation(line: 927, column: 3, scope: !2389)
!2399 = distinct !DISubprogram(name: "quotearg", scope: !436, file: !436, line: 931, type: !940, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2400)
!2400 = !{!2401}
!2401 = !DILocalVariable(name: "arg", arg: 1, scope: !2399, file: !436, line: 931, type: !70)
!2402 = !DILocation(line: 0, scope: !2399)
!2403 = !DILocation(line: 0, scope: !2293, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 933, column: 10, scope: !2399)
!2405 = !DILocation(line: 921, column: 10, scope: !2293, inlinedAt: !2404)
!2406 = !DILocation(line: 933, column: 3, scope: !2399)
!2407 = distinct !DISubprogram(name: "quotearg_mem", scope: !436, file: !436, line: 937, type: !2408, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!246, !70, !99}
!2410 = !{!2411, !2412}
!2411 = !DILocalVariable(name: "arg", arg: 1, scope: !2407, file: !436, line: 937, type: !70)
!2412 = !DILocalVariable(name: "argsize", arg: 2, scope: !2407, file: !436, line: 937, type: !99)
!2413 = !DILocation(line: 0, scope: !2407)
!2414 = !DILocation(line: 0, scope: !2389, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 939, column: 10, scope: !2407)
!2416 = !DILocation(line: 927, column: 10, scope: !2389, inlinedAt: !2415)
!2417 = !DILocation(line: 939, column: 3, scope: !2407)
!2418 = distinct !DISubprogram(name: "quotearg_n_style", scope: !436, file: !436, line: 943, type: !2419, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!246, !97, !462, !70}
!2421 = !{!2422, !2423, !2424, !2425}
!2422 = !DILocalVariable(name: "n", arg: 1, scope: !2418, file: !436, line: 943, type: !97)
!2423 = !DILocalVariable(name: "s", arg: 2, scope: !2418, file: !436, line: 943, type: !462)
!2424 = !DILocalVariable(name: "arg", arg: 3, scope: !2418, file: !436, line: 943, type: !70)
!2425 = !DILocalVariable(name: "o", scope: !2418, file: !436, line: 945, type: !1503)
!2426 = distinct !DIAssignID()
!2427 = !DILocation(line: 0, scope: !2418)
!2428 = !DILocation(line: 945, column: 3, scope: !2418)
!2429 = !{!2430}
!2430 = distinct !{!2430, !2431, !"quoting_options_from_style: argument 0"}
!2431 = distinct !{!2431, !"quoting_options_from_style"}
!2432 = !DILocation(line: 945, column: 36, scope: !2418)
!2433 = !DILocalVariable(name: "style", arg: 1, scope: !2434, file: !436, line: 183, type: !462)
!2434 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !436, file: !436, line: 183, type: !2435, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!489, !462}
!2437 = !{!2433, !2438}
!2438 = !DILocalVariable(name: "o", scope: !2434, file: !436, line: 185, type: !489)
!2439 = !DILocation(line: 0, scope: !2434, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 945, column: 36, scope: !2418)
!2441 = !DILocation(line: 185, column: 26, scope: !2434, inlinedAt: !2440)
!2442 = distinct !DIAssignID()
!2443 = !DILocation(line: 186, column: 13, scope: !2444, inlinedAt: !2440)
!2444 = distinct !DILexicalBlock(scope: !2434, file: !436, line: 186, column: 7)
!2445 = !DILocation(line: 186, column: 7, scope: !2434, inlinedAt: !2440)
!2446 = !DILocation(line: 187, column: 5, scope: !2444, inlinedAt: !2440)
!2447 = !DILocation(line: 188, column: 11, scope: !2434, inlinedAt: !2440)
!2448 = distinct !DIAssignID()
!2449 = !DILocation(line: 946, column: 10, scope: !2418)
!2450 = !DILocation(line: 947, column: 1, scope: !2418)
!2451 = !DILocation(line: 946, column: 3, scope: !2418)
!2452 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !436, file: !436, line: 950, type: !2453, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!246, !97, !462, !70, !99}
!2455 = !{!2456, !2457, !2458, !2459, !2460}
!2456 = !DILocalVariable(name: "n", arg: 1, scope: !2452, file: !436, line: 950, type: !97)
!2457 = !DILocalVariable(name: "s", arg: 2, scope: !2452, file: !436, line: 950, type: !462)
!2458 = !DILocalVariable(name: "arg", arg: 3, scope: !2452, file: !436, line: 951, type: !70)
!2459 = !DILocalVariable(name: "argsize", arg: 4, scope: !2452, file: !436, line: 951, type: !99)
!2460 = !DILocalVariable(name: "o", scope: !2452, file: !436, line: 953, type: !1503)
!2461 = distinct !DIAssignID()
!2462 = !DILocation(line: 0, scope: !2452)
!2463 = !DILocation(line: 953, column: 3, scope: !2452)
!2464 = !{!2465}
!2465 = distinct !{!2465, !2466, !"quoting_options_from_style: argument 0"}
!2466 = distinct !{!2466, !"quoting_options_from_style"}
!2467 = !DILocation(line: 953, column: 36, scope: !2452)
!2468 = !DILocation(line: 0, scope: !2434, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 953, column: 36, scope: !2452)
!2470 = !DILocation(line: 185, column: 26, scope: !2434, inlinedAt: !2469)
!2471 = distinct !DIAssignID()
!2472 = !DILocation(line: 186, column: 13, scope: !2444, inlinedAt: !2469)
!2473 = !DILocation(line: 186, column: 7, scope: !2434, inlinedAt: !2469)
!2474 = !DILocation(line: 187, column: 5, scope: !2444, inlinedAt: !2469)
!2475 = !DILocation(line: 188, column: 11, scope: !2434, inlinedAt: !2469)
!2476 = distinct !DIAssignID()
!2477 = !DILocation(line: 954, column: 10, scope: !2452)
!2478 = !DILocation(line: 955, column: 1, scope: !2452)
!2479 = !DILocation(line: 954, column: 3, scope: !2452)
!2480 = distinct !DISubprogram(name: "quotearg_style", scope: !436, file: !436, line: 958, type: !2481, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!246, !462, !70}
!2483 = !{!2484, !2485}
!2484 = !DILocalVariable(name: "s", arg: 1, scope: !2480, file: !436, line: 958, type: !462)
!2485 = !DILocalVariable(name: "arg", arg: 2, scope: !2480, file: !436, line: 958, type: !70)
!2486 = distinct !DIAssignID()
!2487 = !DILocation(line: 0, scope: !2480)
!2488 = !DILocation(line: 0, scope: !2418, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 960, column: 10, scope: !2480)
!2490 = !DILocation(line: 945, column: 3, scope: !2418, inlinedAt: !2489)
!2491 = !{!2492}
!2492 = distinct !{!2492, !2493, !"quoting_options_from_style: argument 0"}
!2493 = distinct !{!2493, !"quoting_options_from_style"}
!2494 = !DILocation(line: 945, column: 36, scope: !2418, inlinedAt: !2489)
!2495 = !DILocation(line: 0, scope: !2434, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 945, column: 36, scope: !2418, inlinedAt: !2489)
!2497 = !DILocation(line: 185, column: 26, scope: !2434, inlinedAt: !2496)
!2498 = distinct !DIAssignID()
!2499 = !DILocation(line: 186, column: 13, scope: !2444, inlinedAt: !2496)
!2500 = !DILocation(line: 186, column: 7, scope: !2434, inlinedAt: !2496)
!2501 = !DILocation(line: 187, column: 5, scope: !2444, inlinedAt: !2496)
!2502 = !DILocation(line: 188, column: 11, scope: !2434, inlinedAt: !2496)
!2503 = distinct !DIAssignID()
!2504 = !DILocation(line: 946, column: 10, scope: !2418, inlinedAt: !2489)
!2505 = !DILocation(line: 947, column: 1, scope: !2418, inlinedAt: !2489)
!2506 = !DILocation(line: 960, column: 3, scope: !2480)
!2507 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !436, file: !436, line: 964, type: !2508, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!246, !462, !70, !99}
!2510 = !{!2511, !2512, !2513}
!2511 = !DILocalVariable(name: "s", arg: 1, scope: !2507, file: !436, line: 964, type: !462)
!2512 = !DILocalVariable(name: "arg", arg: 2, scope: !2507, file: !436, line: 964, type: !70)
!2513 = !DILocalVariable(name: "argsize", arg: 3, scope: !2507, file: !436, line: 964, type: !99)
!2514 = distinct !DIAssignID()
!2515 = !DILocation(line: 0, scope: !2507)
!2516 = !DILocation(line: 0, scope: !2452, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 966, column: 10, scope: !2507)
!2518 = !DILocation(line: 953, column: 3, scope: !2452, inlinedAt: !2517)
!2519 = !{!2520}
!2520 = distinct !{!2520, !2521, !"quoting_options_from_style: argument 0"}
!2521 = distinct !{!2521, !"quoting_options_from_style"}
!2522 = !DILocation(line: 953, column: 36, scope: !2452, inlinedAt: !2517)
!2523 = !DILocation(line: 0, scope: !2434, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 953, column: 36, scope: !2452, inlinedAt: !2517)
!2525 = !DILocation(line: 185, column: 26, scope: !2434, inlinedAt: !2524)
!2526 = distinct !DIAssignID()
!2527 = !DILocation(line: 186, column: 13, scope: !2444, inlinedAt: !2524)
!2528 = !DILocation(line: 186, column: 7, scope: !2434, inlinedAt: !2524)
!2529 = !DILocation(line: 187, column: 5, scope: !2444, inlinedAt: !2524)
!2530 = !DILocation(line: 188, column: 11, scope: !2434, inlinedAt: !2524)
!2531 = distinct !DIAssignID()
!2532 = !DILocation(line: 954, column: 10, scope: !2452, inlinedAt: !2517)
!2533 = !DILocation(line: 955, column: 1, scope: !2452, inlinedAt: !2517)
!2534 = !DILocation(line: 966, column: 3, scope: !2507)
!2535 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !436, file: !436, line: 970, type: !2536, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!246, !70, !99, !4}
!2538 = !{!2539, !2540, !2541, !2542}
!2539 = !DILocalVariable(name: "arg", arg: 1, scope: !2535, file: !436, line: 970, type: !70)
!2540 = !DILocalVariable(name: "argsize", arg: 2, scope: !2535, file: !436, line: 970, type: !99)
!2541 = !DILocalVariable(name: "ch", arg: 3, scope: !2535, file: !436, line: 970, type: !4)
!2542 = !DILocalVariable(name: "options", scope: !2535, file: !436, line: 972, type: !489)
!2543 = distinct !DIAssignID()
!2544 = !DILocation(line: 0, scope: !2535)
!2545 = !DILocation(line: 972, column: 3, scope: !2535)
!2546 = !DILocation(line: 973, column: 13, scope: !2535)
!2547 = !{i64 0, i64 4, !814, i64 4, i64 4, !814, i64 8, i64 32, !823, i64 40, i64 8, !753, i64 48, i64 8, !753}
!2548 = distinct !DIAssignID()
!2549 = !DILocation(line: 0, scope: !1522, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 974, column: 3, scope: !2535)
!2551 = !DILocation(line: 147, column: 41, scope: !1522, inlinedAt: !2550)
!2552 = !DILocation(line: 147, column: 62, scope: !1522, inlinedAt: !2550)
!2553 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2550)
!2554 = !DILocation(line: 148, column: 15, scope: !1522, inlinedAt: !2550)
!2555 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2550)
!2556 = !DILocation(line: 149, column: 24, scope: !1522, inlinedAt: !2550)
!2557 = !DILocation(line: 150, column: 19, scope: !1522, inlinedAt: !2550)
!2558 = !DILocation(line: 150, column: 24, scope: !1522, inlinedAt: !2550)
!2559 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2550)
!2560 = !DILocation(line: 975, column: 10, scope: !2535)
!2561 = !DILocation(line: 976, column: 1, scope: !2535)
!2562 = !DILocation(line: 975, column: 3, scope: !2535)
!2563 = distinct !DISubprogram(name: "quotearg_char", scope: !436, file: !436, line: 979, type: !2564, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!246, !70, !4}
!2566 = !{!2567, !2568}
!2567 = !DILocalVariable(name: "arg", arg: 1, scope: !2563, file: !436, line: 979, type: !70)
!2568 = !DILocalVariable(name: "ch", arg: 2, scope: !2563, file: !436, line: 979, type: !4)
!2569 = distinct !DIAssignID()
!2570 = !DILocation(line: 0, scope: !2563)
!2571 = !DILocation(line: 0, scope: !2535, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 981, column: 10, scope: !2563)
!2573 = !DILocation(line: 972, column: 3, scope: !2535, inlinedAt: !2572)
!2574 = !DILocation(line: 973, column: 13, scope: !2535, inlinedAt: !2572)
!2575 = distinct !DIAssignID()
!2576 = !DILocation(line: 0, scope: !1522, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 974, column: 3, scope: !2535, inlinedAt: !2572)
!2578 = !DILocation(line: 147, column: 41, scope: !1522, inlinedAt: !2577)
!2579 = !DILocation(line: 147, column: 62, scope: !1522, inlinedAt: !2577)
!2580 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2577)
!2581 = !DILocation(line: 148, column: 15, scope: !1522, inlinedAt: !2577)
!2582 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2577)
!2583 = !DILocation(line: 149, column: 24, scope: !1522, inlinedAt: !2577)
!2584 = !DILocation(line: 150, column: 19, scope: !1522, inlinedAt: !2577)
!2585 = !DILocation(line: 150, column: 24, scope: !1522, inlinedAt: !2577)
!2586 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2577)
!2587 = !DILocation(line: 975, column: 10, scope: !2535, inlinedAt: !2572)
!2588 = !DILocation(line: 976, column: 1, scope: !2535, inlinedAt: !2572)
!2589 = !DILocation(line: 981, column: 3, scope: !2563)
!2590 = distinct !DISubprogram(name: "quotearg_colon", scope: !436, file: !436, line: 985, type: !940, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2591)
!2591 = !{!2592}
!2592 = !DILocalVariable(name: "arg", arg: 1, scope: !2590, file: !436, line: 985, type: !70)
!2593 = distinct !DIAssignID()
!2594 = !DILocation(line: 0, scope: !2590)
!2595 = !DILocation(line: 0, scope: !2563, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 987, column: 10, scope: !2590)
!2597 = !DILocation(line: 0, scope: !2535, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 981, column: 10, scope: !2563, inlinedAt: !2596)
!2599 = !DILocation(line: 972, column: 3, scope: !2535, inlinedAt: !2598)
!2600 = !DILocation(line: 973, column: 13, scope: !2535, inlinedAt: !2598)
!2601 = distinct !DIAssignID()
!2602 = !DILocation(line: 0, scope: !1522, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 974, column: 3, scope: !2535, inlinedAt: !2598)
!2604 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2603)
!2605 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2603)
!2606 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2603)
!2607 = !DILocation(line: 975, column: 10, scope: !2535, inlinedAt: !2598)
!2608 = !DILocation(line: 976, column: 1, scope: !2535, inlinedAt: !2598)
!2609 = !DILocation(line: 987, column: 3, scope: !2590)
!2610 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !436, file: !436, line: 991, type: !2408, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2611)
!2611 = !{!2612, !2613}
!2612 = !DILocalVariable(name: "arg", arg: 1, scope: !2610, file: !436, line: 991, type: !70)
!2613 = !DILocalVariable(name: "argsize", arg: 2, scope: !2610, file: !436, line: 991, type: !99)
!2614 = distinct !DIAssignID()
!2615 = !DILocation(line: 0, scope: !2610)
!2616 = !DILocation(line: 0, scope: !2535, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 993, column: 10, scope: !2610)
!2618 = !DILocation(line: 972, column: 3, scope: !2535, inlinedAt: !2617)
!2619 = !DILocation(line: 973, column: 13, scope: !2535, inlinedAt: !2617)
!2620 = distinct !DIAssignID()
!2621 = !DILocation(line: 0, scope: !1522, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 974, column: 3, scope: !2535, inlinedAt: !2617)
!2623 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2622)
!2624 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2622)
!2625 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2622)
!2626 = !DILocation(line: 975, column: 10, scope: !2535, inlinedAt: !2617)
!2627 = !DILocation(line: 976, column: 1, scope: !2535, inlinedAt: !2617)
!2628 = !DILocation(line: 993, column: 3, scope: !2610)
!2629 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !436, file: !436, line: 997, type: !2419, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2630)
!2630 = !{!2631, !2632, !2633, !2634}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2629, file: !436, line: 997, type: !97)
!2632 = !DILocalVariable(name: "s", arg: 2, scope: !2629, file: !436, line: 997, type: !462)
!2633 = !DILocalVariable(name: "arg", arg: 3, scope: !2629, file: !436, line: 997, type: !70)
!2634 = !DILocalVariable(name: "options", scope: !2629, file: !436, line: 999, type: !489)
!2635 = distinct !DIAssignID()
!2636 = !DILocation(line: 0, scope: !2629)
!2637 = !DILocation(line: 185, column: 26, scope: !2434, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 1000, column: 13, scope: !2629)
!2639 = !DILocation(line: 999, column: 3, scope: !2629)
!2640 = !DILocation(line: 0, scope: !2434, inlinedAt: !2638)
!2641 = !DILocation(line: 186, column: 13, scope: !2444, inlinedAt: !2638)
!2642 = !DILocation(line: 186, column: 7, scope: !2434, inlinedAt: !2638)
!2643 = !DILocation(line: 187, column: 5, scope: !2444, inlinedAt: !2638)
!2644 = !{!2645}
!2645 = distinct !{!2645, !2646, !"quoting_options_from_style: argument 0"}
!2646 = distinct !{!2646, !"quoting_options_from_style"}
!2647 = !DILocation(line: 1000, column: 13, scope: !2629)
!2648 = distinct !DIAssignID()
!2649 = distinct !DIAssignID()
!2650 = !DILocation(line: 0, scope: !1522, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 1001, column: 3, scope: !2629)
!2652 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2651)
!2653 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2651)
!2654 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2651)
!2655 = distinct !DIAssignID()
!2656 = !DILocation(line: 1002, column: 10, scope: !2629)
!2657 = !DILocation(line: 1003, column: 1, scope: !2629)
!2658 = !DILocation(line: 1002, column: 3, scope: !2629)
!2659 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !436, file: !436, line: 1006, type: !2660, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!246, !97, !70, !70, !70}
!2662 = !{!2663, !2664, !2665, !2666}
!2663 = !DILocalVariable(name: "n", arg: 1, scope: !2659, file: !436, line: 1006, type: !97)
!2664 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2659, file: !436, line: 1006, type: !70)
!2665 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2659, file: !436, line: 1007, type: !70)
!2666 = !DILocalVariable(name: "arg", arg: 4, scope: !2659, file: !436, line: 1007, type: !70)
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 0, scope: !2659)
!2669 = !DILocalVariable(name: "o", scope: !2670, file: !436, line: 1018, type: !489)
!2670 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !436, file: !436, line: 1014, type: !2671, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!246, !97, !70, !70, !70, !99}
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2669}
!2674 = !DILocalVariable(name: "n", arg: 1, scope: !2670, file: !436, line: 1014, type: !97)
!2675 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2670, file: !436, line: 1014, type: !70)
!2676 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2670, file: !436, line: 1015, type: !70)
!2677 = !DILocalVariable(name: "arg", arg: 4, scope: !2670, file: !436, line: 1016, type: !70)
!2678 = !DILocalVariable(name: "argsize", arg: 5, scope: !2670, file: !436, line: 1016, type: !99)
!2679 = !DILocation(line: 0, scope: !2670, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 1009, column: 10, scope: !2659)
!2681 = !DILocation(line: 1018, column: 3, scope: !2670, inlinedAt: !2680)
!2682 = !DILocation(line: 1018, column: 30, scope: !2670, inlinedAt: !2680)
!2683 = distinct !DIAssignID()
!2684 = distinct !DIAssignID()
!2685 = !DILocation(line: 0, scope: !1562, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1019, column: 3, scope: !2670, inlinedAt: !2680)
!2687 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2686)
!2688 = distinct !DIAssignID()
!2689 = !DILocation(line: 175, column: 8, scope: !1575, inlinedAt: !2686)
!2690 = !DILocation(line: 175, column: 19, scope: !1575, inlinedAt: !2686)
!2691 = !DILocation(line: 176, column: 5, scope: !1575, inlinedAt: !2686)
!2692 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2686)
!2693 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2686)
!2694 = distinct !DIAssignID()
!2695 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2686)
!2696 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2686)
!2697 = distinct !DIAssignID()
!2698 = !DILocation(line: 1020, column: 10, scope: !2670, inlinedAt: !2680)
!2699 = !DILocation(line: 1021, column: 1, scope: !2670, inlinedAt: !2680)
!2700 = !DILocation(line: 1009, column: 3, scope: !2659)
!2701 = distinct !DIAssignID()
!2702 = !DILocation(line: 0, scope: !2670)
!2703 = !DILocation(line: 1018, column: 3, scope: !2670)
!2704 = !DILocation(line: 1018, column: 30, scope: !2670)
!2705 = distinct !DIAssignID()
!2706 = distinct !DIAssignID()
!2707 = !DILocation(line: 0, scope: !1562, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1019, column: 3, scope: !2670)
!2709 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2708)
!2710 = distinct !DIAssignID()
!2711 = !DILocation(line: 175, column: 8, scope: !1575, inlinedAt: !2708)
!2712 = !DILocation(line: 175, column: 19, scope: !1575, inlinedAt: !2708)
!2713 = !DILocation(line: 176, column: 5, scope: !1575, inlinedAt: !2708)
!2714 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2708)
!2715 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2708)
!2716 = distinct !DIAssignID()
!2717 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2708)
!2718 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2708)
!2719 = distinct !DIAssignID()
!2720 = !DILocation(line: 1020, column: 10, scope: !2670)
!2721 = !DILocation(line: 1021, column: 1, scope: !2670)
!2722 = !DILocation(line: 1020, column: 3, scope: !2670)
!2723 = distinct !DISubprogram(name: "quotearg_custom", scope: !436, file: !436, line: 1024, type: !2724, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!246, !70, !70, !70}
!2726 = !{!2727, !2728, !2729}
!2727 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2723, file: !436, line: 1024, type: !70)
!2728 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2723, file: !436, line: 1024, type: !70)
!2729 = !DILocalVariable(name: "arg", arg: 3, scope: !2723, file: !436, line: 1025, type: !70)
!2730 = distinct !DIAssignID()
!2731 = !DILocation(line: 0, scope: !2723)
!2732 = !DILocation(line: 0, scope: !2659, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1027, column: 10, scope: !2723)
!2734 = !DILocation(line: 0, scope: !2670, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 1009, column: 10, scope: !2659, inlinedAt: !2733)
!2736 = !DILocation(line: 1018, column: 3, scope: !2670, inlinedAt: !2735)
!2737 = !DILocation(line: 1018, column: 30, scope: !2670, inlinedAt: !2735)
!2738 = distinct !DIAssignID()
!2739 = distinct !DIAssignID()
!2740 = !DILocation(line: 0, scope: !1562, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 1019, column: 3, scope: !2670, inlinedAt: !2735)
!2742 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2741)
!2743 = distinct !DIAssignID()
!2744 = !DILocation(line: 175, column: 8, scope: !1575, inlinedAt: !2741)
!2745 = !DILocation(line: 175, column: 19, scope: !1575, inlinedAt: !2741)
!2746 = !DILocation(line: 176, column: 5, scope: !1575, inlinedAt: !2741)
!2747 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2741)
!2748 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2741)
!2749 = distinct !DIAssignID()
!2750 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2741)
!2751 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2741)
!2752 = distinct !DIAssignID()
!2753 = !DILocation(line: 1020, column: 10, scope: !2670, inlinedAt: !2735)
!2754 = !DILocation(line: 1021, column: 1, scope: !2670, inlinedAt: !2735)
!2755 = !DILocation(line: 1027, column: 3, scope: !2723)
!2756 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !436, file: !436, line: 1031, type: !2757, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!246, !70, !70, !70, !99}
!2759 = !{!2760, !2761, !2762, !2763}
!2760 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2756, file: !436, line: 1031, type: !70)
!2761 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2756, file: !436, line: 1031, type: !70)
!2762 = !DILocalVariable(name: "arg", arg: 3, scope: !2756, file: !436, line: 1032, type: !70)
!2763 = !DILocalVariable(name: "argsize", arg: 4, scope: !2756, file: !436, line: 1032, type: !99)
!2764 = distinct !DIAssignID()
!2765 = !DILocation(line: 0, scope: !2756)
!2766 = !DILocation(line: 0, scope: !2670, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 1034, column: 10, scope: !2756)
!2768 = !DILocation(line: 1018, column: 3, scope: !2670, inlinedAt: !2767)
!2769 = !DILocation(line: 1018, column: 30, scope: !2670, inlinedAt: !2767)
!2770 = distinct !DIAssignID()
!2771 = distinct !DIAssignID()
!2772 = !DILocation(line: 0, scope: !1562, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 1019, column: 3, scope: !2670, inlinedAt: !2767)
!2774 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2773)
!2775 = distinct !DIAssignID()
!2776 = !DILocation(line: 175, column: 8, scope: !1575, inlinedAt: !2773)
!2777 = !DILocation(line: 175, column: 19, scope: !1575, inlinedAt: !2773)
!2778 = !DILocation(line: 176, column: 5, scope: !1575, inlinedAt: !2773)
!2779 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2773)
!2780 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2773)
!2781 = distinct !DIAssignID()
!2782 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2773)
!2783 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2773)
!2784 = distinct !DIAssignID()
!2785 = !DILocation(line: 1020, column: 10, scope: !2670, inlinedAt: !2767)
!2786 = !DILocation(line: 1021, column: 1, scope: !2670, inlinedAt: !2767)
!2787 = !DILocation(line: 1034, column: 3, scope: !2756)
!2788 = distinct !DISubprogram(name: "quote_n_mem", scope: !436, file: !436, line: 1049, type: !2789, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!70, !97, !70, !99}
!2791 = !{!2792, !2793, !2794}
!2792 = !DILocalVariable(name: "n", arg: 1, scope: !2788, file: !436, line: 1049, type: !97)
!2793 = !DILocalVariable(name: "arg", arg: 2, scope: !2788, file: !436, line: 1049, type: !70)
!2794 = !DILocalVariable(name: "argsize", arg: 3, scope: !2788, file: !436, line: 1049, type: !99)
!2795 = !DILocation(line: 0, scope: !2788)
!2796 = !DILocation(line: 1051, column: 10, scope: !2788)
!2797 = !DILocation(line: 1051, column: 3, scope: !2788)
!2798 = distinct !DISubprogram(name: "quote_mem", scope: !436, file: !436, line: 1055, type: !2799, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!70, !70, !99}
!2801 = !{!2802, !2803}
!2802 = !DILocalVariable(name: "arg", arg: 1, scope: !2798, file: !436, line: 1055, type: !70)
!2803 = !DILocalVariable(name: "argsize", arg: 2, scope: !2798, file: !436, line: 1055, type: !99)
!2804 = !DILocation(line: 0, scope: !2798)
!2805 = !DILocation(line: 0, scope: !2788, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 1057, column: 10, scope: !2798)
!2807 = !DILocation(line: 1051, column: 10, scope: !2788, inlinedAt: !2806)
!2808 = !DILocation(line: 1057, column: 3, scope: !2798)
!2809 = distinct !DISubprogram(name: "quote_n", scope: !436, file: !436, line: 1061, type: !2810, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!70, !97, !70}
!2812 = !{!2813, !2814}
!2813 = !DILocalVariable(name: "n", arg: 1, scope: !2809, file: !436, line: 1061, type: !97)
!2814 = !DILocalVariable(name: "arg", arg: 2, scope: !2809, file: !436, line: 1061, type: !70)
!2815 = !DILocation(line: 0, scope: !2809)
!2816 = !DILocation(line: 0, scope: !2788, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 1063, column: 10, scope: !2809)
!2818 = !DILocation(line: 1051, column: 10, scope: !2788, inlinedAt: !2817)
!2819 = !DILocation(line: 1063, column: 3, scope: !2809)
!2820 = distinct !DISubprogram(name: "quote", scope: !436, file: !436, line: 1067, type: !2821, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!70, !70}
!2823 = !{!2824}
!2824 = !DILocalVariable(name: "arg", arg: 1, scope: !2820, file: !436, line: 1067, type: !70)
!2825 = !DILocation(line: 0, scope: !2820)
!2826 = !DILocation(line: 0, scope: !2809, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 1069, column: 10, scope: !2820)
!2828 = !DILocation(line: 0, scope: !2788, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 1063, column: 10, scope: !2809, inlinedAt: !2827)
!2830 = !DILocation(line: 1051, column: 10, scope: !2788, inlinedAt: !2829)
!2831 = !DILocation(line: 1069, column: 3, scope: !2820)
!2832 = distinct !DISubprogram(name: "version_etc_arn", scope: !552, file: !552, line: 61, type: !2833, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2870)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !2835, !70, !70, !70, !2869, !99}
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2838)
!2838 = !{!2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2837, file: !242, line: 51, baseType: !97, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2837, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2837, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2837, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2837, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2837, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2837, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2837, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2837, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2837, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2837, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2837, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2837, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2837, file: !242, line: 70, baseType: !2853, size: 64, offset: 832)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2837, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2837, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2837, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2837, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2837, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2837, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2837, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2837, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2837, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2837, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2837, file: !242, line: 93, baseType: !2853, size: 64, offset: 1344)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2837, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2837, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2837, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2837, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876}
!2871 = !DILocalVariable(name: "stream", arg: 1, scope: !2832, file: !552, line: 61, type: !2835)
!2872 = !DILocalVariable(name: "command_name", arg: 2, scope: !2832, file: !552, line: 62, type: !70)
!2873 = !DILocalVariable(name: "package", arg: 3, scope: !2832, file: !552, line: 62, type: !70)
!2874 = !DILocalVariable(name: "version", arg: 4, scope: !2832, file: !552, line: 63, type: !70)
!2875 = !DILocalVariable(name: "authors", arg: 5, scope: !2832, file: !552, line: 64, type: !2869)
!2876 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2832, file: !552, line: 64, type: !99)
!2877 = !DILocation(line: 0, scope: !2832)
!2878 = !DILocation(line: 66, column: 7, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2832, file: !552, line: 66, column: 7)
!2880 = !DILocation(line: 66, column: 7, scope: !2832)
!2881 = !DILocation(line: 67, column: 5, scope: !2879)
!2882 = !DILocation(line: 69, column: 5, scope: !2879)
!2883 = !DILocation(line: 83, column: 3, scope: !2832)
!2884 = !DILocation(line: 85, column: 3, scope: !2832)
!2885 = !DILocation(line: 88, column: 3, scope: !2832)
!2886 = !DILocation(line: 95, column: 3, scope: !2832)
!2887 = !DILocation(line: 97, column: 3, scope: !2832)
!2888 = !DILocation(line: 105, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2832, file: !552, line: 98, column: 5)
!2890 = !DILocation(line: 106, column: 7, scope: !2889)
!2891 = !DILocation(line: 109, column: 7, scope: !2889)
!2892 = !DILocation(line: 110, column: 7, scope: !2889)
!2893 = !DILocation(line: 113, column: 7, scope: !2889)
!2894 = !DILocation(line: 115, column: 7, scope: !2889)
!2895 = !DILocation(line: 120, column: 7, scope: !2889)
!2896 = !DILocation(line: 122, column: 7, scope: !2889)
!2897 = !DILocation(line: 127, column: 7, scope: !2889)
!2898 = !DILocation(line: 129, column: 7, scope: !2889)
!2899 = !DILocation(line: 134, column: 7, scope: !2889)
!2900 = !DILocation(line: 137, column: 7, scope: !2889)
!2901 = !DILocation(line: 142, column: 7, scope: !2889)
!2902 = !DILocation(line: 145, column: 7, scope: !2889)
!2903 = !DILocation(line: 150, column: 7, scope: !2889)
!2904 = !DILocation(line: 154, column: 7, scope: !2889)
!2905 = !DILocation(line: 159, column: 7, scope: !2889)
!2906 = !DILocation(line: 163, column: 7, scope: !2889)
!2907 = !DILocation(line: 170, column: 7, scope: !2889)
!2908 = !DILocation(line: 174, column: 7, scope: !2889)
!2909 = !DILocation(line: 176, column: 1, scope: !2832)
!2910 = distinct !DISubprogram(name: "version_etc_ar", scope: !552, file: !552, line: 183, type: !2911, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2913)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{null, !2835, !70, !70, !70, !2869}
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919}
!2914 = !DILocalVariable(name: "stream", arg: 1, scope: !2910, file: !552, line: 183, type: !2835)
!2915 = !DILocalVariable(name: "command_name", arg: 2, scope: !2910, file: !552, line: 184, type: !70)
!2916 = !DILocalVariable(name: "package", arg: 3, scope: !2910, file: !552, line: 184, type: !70)
!2917 = !DILocalVariable(name: "version", arg: 4, scope: !2910, file: !552, line: 185, type: !70)
!2918 = !DILocalVariable(name: "authors", arg: 5, scope: !2910, file: !552, line: 185, type: !2869)
!2919 = !DILocalVariable(name: "n_authors", scope: !2910, file: !552, line: 187, type: !99)
!2920 = !DILocation(line: 0, scope: !2910)
!2921 = !DILocation(line: 189, column: 8, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2910, file: !552, line: 189, column: 3)
!2923 = !DILocation(line: 189, scope: !2922)
!2924 = !DILocation(line: 189, column: 23, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !552, line: 189, column: 3)
!2926 = !DILocation(line: 189, column: 3, scope: !2922)
!2927 = !DILocation(line: 189, column: 52, scope: !2925)
!2928 = distinct !{!2928, !2926, !2929, !861}
!2929 = !DILocation(line: 190, column: 5, scope: !2922)
!2930 = !DILocation(line: 191, column: 3, scope: !2910)
!2931 = !DILocation(line: 192, column: 1, scope: !2910)
!2932 = distinct !DISubprogram(name: "version_etc_va", scope: !552, file: !552, line: 199, type: !2933, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2942)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !2835, !70, !70, !70, !2935}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2937)
!2937 = !{!2938, !2939, !2940, !2941}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2936, file: !552, line: 192, baseType: !76, size: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2936, file: !552, line: 192, baseType: !76, size: 32, offset: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2936, file: !552, line: 192, baseType: !91, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2936, file: !552, line: 192, baseType: !91, size: 64, offset: 128)
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2948, !2949}
!2943 = !DILocalVariable(name: "stream", arg: 1, scope: !2932, file: !552, line: 199, type: !2835)
!2944 = !DILocalVariable(name: "command_name", arg: 2, scope: !2932, file: !552, line: 200, type: !70)
!2945 = !DILocalVariable(name: "package", arg: 3, scope: !2932, file: !552, line: 200, type: !70)
!2946 = !DILocalVariable(name: "version", arg: 4, scope: !2932, file: !552, line: 201, type: !70)
!2947 = !DILocalVariable(name: "authors", arg: 5, scope: !2932, file: !552, line: 201, type: !2935)
!2948 = !DILocalVariable(name: "n_authors", scope: !2932, file: !552, line: 203, type: !99)
!2949 = !DILocalVariable(name: "authtab", scope: !2932, file: !552, line: 204, type: !2950)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!2951 = distinct !DIAssignID()
!2952 = !DILocation(line: 0, scope: !2932)
!2953 = !DILocation(line: 204, column: 3, scope: !2932)
!2954 = !DILocation(line: 208, column: 35, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !552, line: 206, column: 3)
!2956 = distinct !DILexicalBlock(scope: !2932, file: !552, line: 206, column: 3)
!2957 = !DILocation(line: 208, column: 33, scope: !2955)
!2958 = !DILocation(line: 208, column: 67, scope: !2955)
!2959 = !DILocation(line: 206, column: 3, scope: !2956)
!2960 = !DILocation(line: 208, column: 14, scope: !2955)
!2961 = !DILocation(line: 0, scope: !2956)
!2962 = !DILocation(line: 211, column: 3, scope: !2932)
!2963 = !DILocation(line: 213, column: 1, scope: !2932)
!2964 = distinct !DISubprogram(name: "version_etc", scope: !552, file: !552, line: 230, type: !2965, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2835, !70, !70, !70, null}
!2967 = !{!2968, !2969, !2970, !2971, !2972}
!2968 = !DILocalVariable(name: "stream", arg: 1, scope: !2964, file: !552, line: 230, type: !2835)
!2969 = !DILocalVariable(name: "command_name", arg: 2, scope: !2964, file: !552, line: 231, type: !70)
!2970 = !DILocalVariable(name: "package", arg: 3, scope: !2964, file: !552, line: 231, type: !70)
!2971 = !DILocalVariable(name: "version", arg: 4, scope: !2964, file: !552, line: 232, type: !70)
!2972 = !DILocalVariable(name: "authors", scope: !2964, file: !552, line: 234, type: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !809, line: 52, baseType: !2974)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1255, line: 12, baseType: !2975)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !552, baseType: !2976)
!2976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2936, size: 192, elements: !35)
!2977 = distinct !DIAssignID()
!2978 = !DILocation(line: 0, scope: !2964)
!2979 = !DILocation(line: 234, column: 3, scope: !2964)
!2980 = !DILocation(line: 235, column: 3, scope: !2964)
!2981 = !DILocation(line: 236, column: 3, scope: !2964)
!2982 = !DILocation(line: 237, column: 3, scope: !2964)
!2983 = !DILocation(line: 238, column: 1, scope: !2964)
!2984 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !552, file: !552, line: 241, type: !367, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673)
!2985 = !DILocation(line: 243, column: 3, scope: !2984)
!2986 = !DILocation(line: 248, column: 3, scope: !2984)
!2987 = !DILocation(line: 254, column: 3, scope: !2984)
!2988 = !DILocation(line: 259, column: 3, scope: !2984)
!2989 = !DILocation(line: 261, column: 1, scope: !2984)
!2990 = distinct !DISubprogram(name: "xnrealloc", scope: !2991, file: !2991, line: 147, type: !2992, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2994)
!2991 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!91, !91, !99, !99}
!2994 = !{!2995, !2996, !2997}
!2995 = !DILocalVariable(name: "p", arg: 1, scope: !2990, file: !2991, line: 147, type: !91)
!2996 = !DILocalVariable(name: "n", arg: 2, scope: !2990, file: !2991, line: 147, type: !99)
!2997 = !DILocalVariable(name: "s", arg: 3, scope: !2990, file: !2991, line: 147, type: !99)
!2998 = !DILocation(line: 0, scope: !2990)
!2999 = !DILocalVariable(name: "p", arg: 1, scope: !3000, file: !680, line: 83, type: !91)
!3000 = distinct !DISubprogram(name: "xreallocarray", scope: !680, file: !680, line: 83, type: !2992, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3001)
!3001 = !{!2999, !3002, !3003}
!3002 = !DILocalVariable(name: "n", arg: 2, scope: !3000, file: !680, line: 83, type: !99)
!3003 = !DILocalVariable(name: "s", arg: 3, scope: !3000, file: !680, line: 83, type: !99)
!3004 = !DILocation(line: 0, scope: !3000, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 149, column: 10, scope: !2990)
!3006 = !DILocation(line: 85, column: 25, scope: !3000, inlinedAt: !3005)
!3007 = !DILocalVariable(name: "p", arg: 1, scope: !3008, file: !680, line: 37, type: !91)
!3008 = distinct !DISubprogram(name: "check_nonnull", scope: !680, file: !680, line: 37, type: !3009, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!91, !91}
!3011 = !{!3007}
!3012 = !DILocation(line: 0, scope: !3008, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 85, column: 10, scope: !3000, inlinedAt: !3005)
!3014 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3013)
!3015 = distinct !DILexicalBlock(scope: !3008, file: !680, line: 39, column: 7)
!3016 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3013)
!3017 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3013)
!3018 = !DILocation(line: 149, column: 3, scope: !2990)
!3019 = !DILocation(line: 0, scope: !3000)
!3020 = !DILocation(line: 85, column: 25, scope: !3000)
!3021 = !DILocation(line: 0, scope: !3008, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 85, column: 10, scope: !3000)
!3023 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3022)
!3024 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3022)
!3025 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3022)
!3026 = !DILocation(line: 85, column: 3, scope: !3000)
!3027 = distinct !DISubprogram(name: "xmalloc", scope: !680, file: !680, line: 47, type: !3028, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!91, !99}
!3030 = !{!3031}
!3031 = !DILocalVariable(name: "s", arg: 1, scope: !3027, file: !680, line: 47, type: !99)
!3032 = !DILocation(line: 0, scope: !3027)
!3033 = !DILocation(line: 49, column: 25, scope: !3027)
!3034 = !DILocation(line: 0, scope: !3008, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 49, column: 10, scope: !3027)
!3036 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3035)
!3037 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3035)
!3038 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3035)
!3039 = !DILocation(line: 49, column: 3, scope: !3027)
!3040 = !DISubprogram(name: "malloc", scope: !938, file: !938, line: 540, type: !3028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3041 = distinct !DISubprogram(name: "ximalloc", scope: !680, file: !680, line: 53, type: !3042, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!91, !699}
!3044 = !{!3045}
!3045 = !DILocalVariable(name: "s", arg: 1, scope: !3041, file: !680, line: 53, type: !699)
!3046 = !DILocation(line: 0, scope: !3041)
!3047 = !DILocalVariable(name: "s", arg: 1, scope: !3048, file: !3049, line: 55, type: !699)
!3048 = distinct !DISubprogram(name: "imalloc", scope: !3049, file: !3049, line: 55, type: !3042, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3050)
!3049 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3050 = !{!3047}
!3051 = !DILocation(line: 0, scope: !3048, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 55, column: 25, scope: !3041)
!3053 = !DILocation(line: 57, column: 26, scope: !3048, inlinedAt: !3052)
!3054 = !DILocation(line: 0, scope: !3008, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 55, column: 10, scope: !3041)
!3056 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3055)
!3057 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3055)
!3058 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3055)
!3059 = !DILocation(line: 55, column: 3, scope: !3041)
!3060 = distinct !DISubprogram(name: "xcharalloc", scope: !680, file: !680, line: 59, type: !3061, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!246, !99}
!3063 = !{!3064}
!3064 = !DILocalVariable(name: "n", arg: 1, scope: !3060, file: !680, line: 59, type: !99)
!3065 = !DILocation(line: 0, scope: !3060)
!3066 = !DILocation(line: 0, scope: !3027, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 61, column: 10, scope: !3060)
!3068 = !DILocation(line: 49, column: 25, scope: !3027, inlinedAt: !3067)
!3069 = !DILocation(line: 0, scope: !3008, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 49, column: 10, scope: !3027, inlinedAt: !3067)
!3071 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3070)
!3072 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3070)
!3073 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3070)
!3074 = !DILocation(line: 61, column: 3, scope: !3060)
!3075 = distinct !DISubprogram(name: "xrealloc", scope: !680, file: !680, line: 68, type: !3076, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!91, !91, !99}
!3078 = !{!3079, !3080}
!3079 = !DILocalVariable(name: "p", arg: 1, scope: !3075, file: !680, line: 68, type: !91)
!3080 = !DILocalVariable(name: "s", arg: 2, scope: !3075, file: !680, line: 68, type: !99)
!3081 = !DILocation(line: 0, scope: !3075)
!3082 = !DILocalVariable(name: "ptr", arg: 1, scope: !3083, file: !3084, line: 2057, type: !91)
!3083 = distinct !DISubprogram(name: "rpl_realloc", scope: !3084, file: !3084, line: 2057, type: !3076, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3085)
!3084 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3085 = !{!3082, !3086}
!3086 = !DILocalVariable(name: "size", arg: 2, scope: !3083, file: !3084, line: 2057, type: !99)
!3087 = !DILocation(line: 0, scope: !3083, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 70, column: 25, scope: !3075)
!3089 = !DILocation(line: 2059, column: 24, scope: !3083, inlinedAt: !3088)
!3090 = !DILocation(line: 2059, column: 10, scope: !3083, inlinedAt: !3088)
!3091 = !DILocation(line: 0, scope: !3008, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 70, column: 10, scope: !3075)
!3093 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3092)
!3094 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3092)
!3095 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3092)
!3096 = !DILocation(line: 70, column: 3, scope: !3075)
!3097 = !DISubprogram(name: "realloc", scope: !938, file: !938, line: 551, type: !3076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3098 = distinct !DISubprogram(name: "xirealloc", scope: !680, file: !680, line: 74, type: !3099, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!91, !91, !699}
!3101 = !{!3102, !3103}
!3102 = !DILocalVariable(name: "p", arg: 1, scope: !3098, file: !680, line: 74, type: !91)
!3103 = !DILocalVariable(name: "s", arg: 2, scope: !3098, file: !680, line: 74, type: !699)
!3104 = !DILocation(line: 0, scope: !3098)
!3105 = !DILocalVariable(name: "p", arg: 1, scope: !3106, file: !3049, line: 66, type: !91)
!3106 = distinct !DISubprogram(name: "irealloc", scope: !3049, file: !3049, line: 66, type: !3099, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3107)
!3107 = !{!3105, !3108}
!3108 = !DILocalVariable(name: "s", arg: 2, scope: !3106, file: !3049, line: 66, type: !699)
!3109 = !DILocation(line: 0, scope: !3106, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 76, column: 25, scope: !3098)
!3111 = !DILocation(line: 0, scope: !3083, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 68, column: 26, scope: !3106, inlinedAt: !3110)
!3113 = !DILocation(line: 2059, column: 24, scope: !3083, inlinedAt: !3112)
!3114 = !DILocation(line: 2059, column: 10, scope: !3083, inlinedAt: !3112)
!3115 = !DILocation(line: 0, scope: !3008, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 76, column: 10, scope: !3098)
!3117 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3116)
!3118 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3116)
!3119 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3116)
!3120 = !DILocation(line: 76, column: 3, scope: !3098)
!3121 = distinct !DISubprogram(name: "xireallocarray", scope: !680, file: !680, line: 89, type: !3122, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!91, !91, !699, !699}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "p", arg: 1, scope: !3121, file: !680, line: 89, type: !91)
!3126 = !DILocalVariable(name: "n", arg: 2, scope: !3121, file: !680, line: 89, type: !699)
!3127 = !DILocalVariable(name: "s", arg: 3, scope: !3121, file: !680, line: 89, type: !699)
!3128 = !DILocation(line: 0, scope: !3121)
!3129 = !DILocalVariable(name: "p", arg: 1, scope: !3130, file: !3049, line: 98, type: !91)
!3130 = distinct !DISubprogram(name: "ireallocarray", scope: !3049, file: !3049, line: 98, type: !3122, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3131)
!3131 = !{!3129, !3132, !3133}
!3132 = !DILocalVariable(name: "n", arg: 2, scope: !3130, file: !3049, line: 98, type: !699)
!3133 = !DILocalVariable(name: "s", arg: 3, scope: !3130, file: !3049, line: 98, type: !699)
!3134 = !DILocation(line: 0, scope: !3130, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 91, column: 25, scope: !3121)
!3136 = !DILocation(line: 101, column: 13, scope: !3130, inlinedAt: !3135)
!3137 = !DILocation(line: 0, scope: !3008, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 91, column: 10, scope: !3121)
!3139 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3138)
!3140 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3138)
!3141 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3138)
!3142 = !DILocation(line: 91, column: 3, scope: !3121)
!3143 = distinct !DISubprogram(name: "xnmalloc", scope: !680, file: !680, line: 98, type: !3144, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!91, !99, !99}
!3146 = !{!3147, !3148}
!3147 = !DILocalVariable(name: "n", arg: 1, scope: !3143, file: !680, line: 98, type: !99)
!3148 = !DILocalVariable(name: "s", arg: 2, scope: !3143, file: !680, line: 98, type: !99)
!3149 = !DILocation(line: 0, scope: !3143)
!3150 = !DILocation(line: 0, scope: !3000, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 100, column: 10, scope: !3143)
!3152 = !DILocation(line: 85, column: 25, scope: !3000, inlinedAt: !3151)
!3153 = !DILocation(line: 0, scope: !3008, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 85, column: 10, scope: !3000, inlinedAt: !3151)
!3155 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3154)
!3156 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3154)
!3157 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3154)
!3158 = !DILocation(line: 100, column: 3, scope: !3143)
!3159 = distinct !DISubprogram(name: "xinmalloc", scope: !680, file: !680, line: 104, type: !3160, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!91, !699, !699}
!3162 = !{!3163, !3164}
!3163 = !DILocalVariable(name: "n", arg: 1, scope: !3159, file: !680, line: 104, type: !699)
!3164 = !DILocalVariable(name: "s", arg: 2, scope: !3159, file: !680, line: 104, type: !699)
!3165 = !DILocation(line: 0, scope: !3159)
!3166 = !DILocation(line: 0, scope: !3121, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 106, column: 10, scope: !3159)
!3168 = !DILocation(line: 0, scope: !3130, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 91, column: 25, scope: !3121, inlinedAt: !3167)
!3170 = !DILocation(line: 101, column: 13, scope: !3130, inlinedAt: !3169)
!3171 = !DILocation(line: 0, scope: !3008, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 91, column: 10, scope: !3121, inlinedAt: !3167)
!3173 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3172)
!3174 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3172)
!3175 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3172)
!3176 = !DILocation(line: 106, column: 3, scope: !3159)
!3177 = distinct !DISubprogram(name: "x2realloc", scope: !680, file: !680, line: 116, type: !3178, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!91, !91, !686}
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "p", arg: 1, scope: !3177, file: !680, line: 116, type: !91)
!3182 = !DILocalVariable(name: "ps", arg: 2, scope: !3177, file: !680, line: 116, type: !686)
!3183 = !DILocation(line: 0, scope: !3177)
!3184 = !DILocation(line: 0, scope: !683, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 118, column: 10, scope: !3177)
!3186 = !DILocation(line: 178, column: 14, scope: !683, inlinedAt: !3185)
!3187 = !DILocation(line: 180, column: 9, scope: !3188, inlinedAt: !3185)
!3188 = distinct !DILexicalBlock(scope: !683, file: !680, line: 180, column: 7)
!3189 = !DILocation(line: 180, column: 7, scope: !683, inlinedAt: !3185)
!3190 = !DILocation(line: 182, column: 13, scope: !3191, inlinedAt: !3185)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !680, line: 182, column: 11)
!3192 = distinct !DILexicalBlock(scope: !3188, file: !680, line: 181, column: 5)
!3193 = !DILocation(line: 182, column: 11, scope: !3192, inlinedAt: !3185)
!3194 = !DILocation(line: 197, column: 11, scope: !3195, inlinedAt: !3185)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !680, line: 197, column: 11)
!3196 = distinct !DILexicalBlock(scope: !3188, file: !680, line: 195, column: 5)
!3197 = !DILocation(line: 197, column: 11, scope: !3196, inlinedAt: !3185)
!3198 = !DILocation(line: 198, column: 9, scope: !3195, inlinedAt: !3185)
!3199 = !DILocation(line: 0, scope: !3000, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 201, column: 7, scope: !683, inlinedAt: !3185)
!3201 = !DILocation(line: 85, column: 25, scope: !3000, inlinedAt: !3200)
!3202 = !DILocation(line: 0, scope: !3008, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 85, column: 10, scope: !3000, inlinedAt: !3200)
!3204 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3203)
!3205 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3203)
!3206 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3203)
!3207 = !DILocation(line: 202, column: 7, scope: !683, inlinedAt: !3185)
!3208 = !DILocation(line: 118, column: 3, scope: !3177)
!3209 = !DILocation(line: 0, scope: !683)
!3210 = !DILocation(line: 178, column: 14, scope: !683)
!3211 = !DILocation(line: 180, column: 9, scope: !3188)
!3212 = !DILocation(line: 180, column: 7, scope: !683)
!3213 = !DILocation(line: 182, column: 13, scope: !3191)
!3214 = !DILocation(line: 182, column: 11, scope: !3192)
!3215 = !DILocation(line: 190, column: 30, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3191, file: !680, line: 183, column: 9)
!3217 = !DILocation(line: 191, column: 16, scope: !3216)
!3218 = !DILocation(line: 191, column: 13, scope: !3216)
!3219 = !DILocation(line: 192, column: 9, scope: !3216)
!3220 = !DILocation(line: 197, column: 11, scope: !3195)
!3221 = !DILocation(line: 197, column: 11, scope: !3196)
!3222 = !DILocation(line: 198, column: 9, scope: !3195)
!3223 = !DILocation(line: 0, scope: !3000, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 201, column: 7, scope: !683)
!3225 = !DILocation(line: 85, column: 25, scope: !3000, inlinedAt: !3224)
!3226 = !DILocation(line: 0, scope: !3008, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 85, column: 10, scope: !3000, inlinedAt: !3224)
!3228 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3227)
!3229 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3227)
!3230 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3227)
!3231 = !DILocation(line: 202, column: 7, scope: !683)
!3232 = !DILocation(line: 203, column: 3, scope: !683)
!3233 = !DILocation(line: 0, scope: !695)
!3234 = !DILocation(line: 230, column: 14, scope: !695)
!3235 = !DILocation(line: 238, column: 7, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !695, file: !680, line: 238, column: 7)
!3237 = !DILocation(line: 238, column: 7, scope: !695)
!3238 = !DILocation(line: 240, column: 9, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !695, file: !680, line: 240, column: 7)
!3240 = !DILocation(line: 240, column: 18, scope: !3239)
!3241 = !DILocation(line: 253, column: 8, scope: !695)
!3242 = !DILocation(line: 256, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !695, file: !680, line: 256, column: 7)
!3244 = !DILocation(line: 256, column: 7, scope: !695)
!3245 = !DILocation(line: 258, column: 27, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3243, file: !680, line: 257, column: 5)
!3247 = !DILocation(line: 259, column: 50, scope: !3246)
!3248 = !DILocation(line: 259, column: 32, scope: !3246)
!3249 = !DILocation(line: 260, column: 5, scope: !3246)
!3250 = !DILocation(line: 262, column: 9, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !695, file: !680, line: 262, column: 7)
!3252 = !DILocation(line: 262, column: 7, scope: !695)
!3253 = !DILocation(line: 263, column: 9, scope: !3251)
!3254 = !DILocation(line: 263, column: 5, scope: !3251)
!3255 = !DILocation(line: 264, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !695, file: !680, line: 264, column: 7)
!3257 = !DILocation(line: 264, column: 14, scope: !3256)
!3258 = !DILocation(line: 265, column: 7, scope: !3256)
!3259 = !DILocation(line: 265, column: 11, scope: !3256)
!3260 = !DILocation(line: 266, column: 11, scope: !3256)
!3261 = !DILocation(line: 267, column: 14, scope: !3256)
!3262 = !DILocation(line: 264, column: 7, scope: !695)
!3263 = !DILocation(line: 268, column: 5, scope: !3256)
!3264 = !DILocation(line: 0, scope: !3075, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 269, column: 8, scope: !695)
!3266 = !DILocation(line: 0, scope: !3083, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 70, column: 25, scope: !3075, inlinedAt: !3265)
!3268 = !DILocation(line: 2059, column: 24, scope: !3083, inlinedAt: !3267)
!3269 = !DILocation(line: 2059, column: 10, scope: !3083, inlinedAt: !3267)
!3270 = !DILocation(line: 0, scope: !3008, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 70, column: 10, scope: !3075, inlinedAt: !3265)
!3272 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3271)
!3273 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3271)
!3274 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3271)
!3275 = !DILocation(line: 270, column: 7, scope: !695)
!3276 = !DILocation(line: 271, column: 3, scope: !695)
!3277 = distinct !DISubprogram(name: "xzalloc", scope: !680, file: !680, line: 279, type: !3028, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3278)
!3278 = !{!3279}
!3279 = !DILocalVariable(name: "s", arg: 1, scope: !3277, file: !680, line: 279, type: !99)
!3280 = !DILocation(line: 0, scope: !3277)
!3281 = !DILocalVariable(name: "n", arg: 1, scope: !3282, file: !680, line: 294, type: !99)
!3282 = distinct !DISubprogram(name: "xcalloc", scope: !680, file: !680, line: 294, type: !3144, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3283)
!3283 = !{!3281, !3284}
!3284 = !DILocalVariable(name: "s", arg: 2, scope: !3282, file: !680, line: 294, type: !99)
!3285 = !DILocation(line: 0, scope: !3282, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 281, column: 10, scope: !3277)
!3287 = !DILocation(line: 296, column: 25, scope: !3282, inlinedAt: !3286)
!3288 = !DILocation(line: 0, scope: !3008, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 296, column: 10, scope: !3282, inlinedAt: !3286)
!3290 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3289)
!3291 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3289)
!3292 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3289)
!3293 = !DILocation(line: 281, column: 3, scope: !3277)
!3294 = !DISubprogram(name: "calloc", scope: !938, file: !938, line: 543, type: !3144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3295 = !DILocation(line: 0, scope: !3282)
!3296 = !DILocation(line: 296, column: 25, scope: !3282)
!3297 = !DILocation(line: 0, scope: !3008, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 296, column: 10, scope: !3282)
!3299 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3298)
!3300 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3298)
!3301 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3298)
!3302 = !DILocation(line: 296, column: 3, scope: !3282)
!3303 = distinct !DISubprogram(name: "xizalloc", scope: !680, file: !680, line: 285, type: !3042, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3304)
!3304 = !{!3305}
!3305 = !DILocalVariable(name: "s", arg: 1, scope: !3303, file: !680, line: 285, type: !699)
!3306 = !DILocation(line: 0, scope: !3303)
!3307 = !DILocalVariable(name: "n", arg: 1, scope: !3308, file: !680, line: 300, type: !699)
!3308 = distinct !DISubprogram(name: "xicalloc", scope: !680, file: !680, line: 300, type: !3160, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3309)
!3309 = !{!3307, !3310}
!3310 = !DILocalVariable(name: "s", arg: 2, scope: !3308, file: !680, line: 300, type: !699)
!3311 = !DILocation(line: 0, scope: !3308, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 287, column: 10, scope: !3303)
!3313 = !DILocalVariable(name: "n", arg: 1, scope: !3314, file: !3049, line: 77, type: !699)
!3314 = distinct !DISubprogram(name: "icalloc", scope: !3049, file: !3049, line: 77, type: !3160, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3315)
!3315 = !{!3313, !3316}
!3316 = !DILocalVariable(name: "s", arg: 2, scope: !3314, file: !3049, line: 77, type: !699)
!3317 = !DILocation(line: 0, scope: !3314, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 302, column: 25, scope: !3308, inlinedAt: !3312)
!3319 = !DILocation(line: 91, column: 10, scope: !3314, inlinedAt: !3318)
!3320 = !DILocation(line: 0, scope: !3008, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 302, column: 10, scope: !3308, inlinedAt: !3312)
!3322 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3321)
!3323 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3321)
!3324 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3321)
!3325 = !DILocation(line: 287, column: 3, scope: !3303)
!3326 = !DILocation(line: 0, scope: !3308)
!3327 = !DILocation(line: 0, scope: !3314, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 302, column: 25, scope: !3308)
!3329 = !DILocation(line: 91, column: 10, scope: !3314, inlinedAt: !3328)
!3330 = !DILocation(line: 0, scope: !3008, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 302, column: 10, scope: !3308)
!3332 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3331)
!3333 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3331)
!3334 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3331)
!3335 = !DILocation(line: 302, column: 3, scope: !3308)
!3336 = distinct !DISubprogram(name: "xmemdup", scope: !680, file: !680, line: 310, type: !3337, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!91, !962, !99}
!3339 = !{!3340, !3341}
!3340 = !DILocalVariable(name: "p", arg: 1, scope: !3336, file: !680, line: 310, type: !962)
!3341 = !DILocalVariable(name: "s", arg: 2, scope: !3336, file: !680, line: 310, type: !99)
!3342 = !DILocation(line: 0, scope: !3336)
!3343 = !DILocation(line: 0, scope: !3027, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 312, column: 18, scope: !3336)
!3345 = !DILocation(line: 49, column: 25, scope: !3027, inlinedAt: !3344)
!3346 = !DILocation(line: 0, scope: !3008, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 49, column: 10, scope: !3027, inlinedAt: !3344)
!3348 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3347)
!3349 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3347)
!3350 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3347)
!3351 = !DILocalVariable(name: "__dest", arg: 1, scope: !3352, file: !1465, line: 26, type: !3355)
!3352 = distinct !DISubprogram(name: "memcpy", scope: !1465, file: !1465, line: 26, type: !3353, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3356)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!91, !3355, !961, !99}
!3355 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3356 = !{!3351, !3357, !3358}
!3357 = !DILocalVariable(name: "__src", arg: 2, scope: !3352, file: !1465, line: 26, type: !961)
!3358 = !DILocalVariable(name: "__len", arg: 3, scope: !3352, file: !1465, line: 26, type: !99)
!3359 = !DILocation(line: 0, scope: !3352, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 312, column: 10, scope: !3336)
!3361 = !DILocation(line: 29, column: 10, scope: !3352, inlinedAt: !3360)
!3362 = !DILocation(line: 312, column: 3, scope: !3336)
!3363 = distinct !DISubprogram(name: "ximemdup", scope: !680, file: !680, line: 316, type: !3364, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!91, !962, !699}
!3366 = !{!3367, !3368}
!3367 = !DILocalVariable(name: "p", arg: 1, scope: !3363, file: !680, line: 316, type: !962)
!3368 = !DILocalVariable(name: "s", arg: 2, scope: !3363, file: !680, line: 316, type: !699)
!3369 = !DILocation(line: 0, scope: !3363)
!3370 = !DILocation(line: 0, scope: !3041, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 318, column: 18, scope: !3363)
!3372 = !DILocation(line: 0, scope: !3048, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 55, column: 25, scope: !3041, inlinedAt: !3371)
!3374 = !DILocation(line: 57, column: 26, scope: !3048, inlinedAt: !3373)
!3375 = !DILocation(line: 0, scope: !3008, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 55, column: 10, scope: !3041, inlinedAt: !3371)
!3377 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3376)
!3378 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3376)
!3379 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3376)
!3380 = !DILocation(line: 0, scope: !3352, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 318, column: 10, scope: !3363)
!3382 = !DILocation(line: 29, column: 10, scope: !3352, inlinedAt: !3381)
!3383 = !DILocation(line: 318, column: 3, scope: !3363)
!3384 = distinct !DISubprogram(name: "ximemdup0", scope: !680, file: !680, line: 325, type: !3385, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!246, !962, !699}
!3387 = !{!3388, !3389, !3390}
!3388 = !DILocalVariable(name: "p", arg: 1, scope: !3384, file: !680, line: 325, type: !962)
!3389 = !DILocalVariable(name: "s", arg: 2, scope: !3384, file: !680, line: 325, type: !699)
!3390 = !DILocalVariable(name: "result", scope: !3384, file: !680, line: 327, type: !246)
!3391 = !DILocation(line: 0, scope: !3384)
!3392 = !DILocation(line: 327, column: 30, scope: !3384)
!3393 = !DILocation(line: 0, scope: !3041, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 327, column: 18, scope: !3384)
!3395 = !DILocation(line: 0, scope: !3048, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 55, column: 25, scope: !3041, inlinedAt: !3394)
!3397 = !DILocation(line: 57, column: 26, scope: !3048, inlinedAt: !3396)
!3398 = !DILocation(line: 0, scope: !3008, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 55, column: 10, scope: !3041, inlinedAt: !3394)
!3400 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3399)
!3401 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3399)
!3402 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3399)
!3403 = !DILocation(line: 328, column: 3, scope: !3384)
!3404 = !DILocation(line: 328, column: 13, scope: !3384)
!3405 = !DILocation(line: 0, scope: !3352, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 329, column: 10, scope: !3384)
!3407 = !DILocation(line: 29, column: 10, scope: !3352, inlinedAt: !3406)
!3408 = !DILocation(line: 329, column: 3, scope: !3384)
!3409 = distinct !DISubprogram(name: "xstrdup", scope: !680, file: !680, line: 335, type: !940, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3410)
!3410 = !{!3411}
!3411 = !DILocalVariable(name: "string", arg: 1, scope: !3409, file: !680, line: 335, type: !70)
!3412 = !DILocation(line: 0, scope: !3409)
!3413 = !DILocation(line: 337, column: 27, scope: !3409)
!3414 = !DILocation(line: 337, column: 43, scope: !3409)
!3415 = !DILocation(line: 0, scope: !3336, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 337, column: 10, scope: !3409)
!3417 = !DILocation(line: 0, scope: !3027, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 312, column: 18, scope: !3336, inlinedAt: !3416)
!3419 = !DILocation(line: 49, column: 25, scope: !3027, inlinedAt: !3418)
!3420 = !DILocation(line: 0, scope: !3008, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 49, column: 10, scope: !3027, inlinedAt: !3418)
!3422 = !DILocation(line: 39, column: 8, scope: !3015, inlinedAt: !3421)
!3423 = !DILocation(line: 39, column: 7, scope: !3008, inlinedAt: !3421)
!3424 = !DILocation(line: 40, column: 5, scope: !3015, inlinedAt: !3421)
!3425 = !DILocation(line: 0, scope: !3352, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 312, column: 10, scope: !3336, inlinedAt: !3416)
!3427 = !DILocation(line: 29, column: 10, scope: !3352, inlinedAt: !3426)
!3428 = !DILocation(line: 337, column: 3, scope: !3409)
!3429 = distinct !DISubprogram(name: "xalloc_die", scope: !645, file: !645, line: 32, type: !367, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3430)
!3430 = !{!3431}
!3431 = !DILocalVariable(name: "__errstatus", scope: !3432, file: !645, line: 34, type: !3433)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !645, line: 34, column: 3)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!3434 = !DILocation(line: 34, column: 3, scope: !3432)
!3435 = !DILocation(line: 0, scope: !3432)
!3436 = !DILocation(line: 40, column: 3, scope: !3429)
!3437 = distinct !DISubprogram(name: "close_stream", scope: !717, file: !717, line: 55, type: !3438, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3474)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!97, !3440}
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3442)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3442, file: !242, line: 51, baseType: !97, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3442, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3442, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3442, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3442, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3442, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3442, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3442, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3442, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3442, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3442, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3442, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3442, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3442, file: !242, line: 70, baseType: !3458, size: 64, offset: 832)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3442, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3442, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3442, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3442, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3442, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3442, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3442, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3442, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3442, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3442, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3442, file: !242, line: 93, baseType: !3458, size: 64, offset: 1344)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3442, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3442, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3442, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3442, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3474 = !{!3475, !3476, !3478, !3479}
!3475 = !DILocalVariable(name: "stream", arg: 1, scope: !3437, file: !717, line: 55, type: !3440)
!3476 = !DILocalVariable(name: "some_pending", scope: !3437, file: !717, line: 57, type: !3477)
!3477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!3478 = !DILocalVariable(name: "prev_fail", scope: !3437, file: !717, line: 58, type: !3477)
!3479 = !DILocalVariable(name: "fclose_fail", scope: !3437, file: !717, line: 59, type: !3477)
!3480 = !DILocation(line: 0, scope: !3437)
!3481 = !DILocation(line: 57, column: 30, scope: !3437)
!3482 = !DILocalVariable(name: "__stream", arg: 1, scope: !3483, file: !1210, line: 135, type: !3440)
!3483 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1210, file: !1210, line: 135, type: !3438, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3484)
!3484 = !{!3482}
!3485 = !DILocation(line: 0, scope: !3483, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 58, column: 27, scope: !3437)
!3487 = !DILocation(line: 137, column: 10, scope: !3483, inlinedAt: !3486)
!3488 = !{!1219, !815, i64 0}
!3489 = !DILocation(line: 58, column: 43, scope: !3437)
!3490 = !DILocation(line: 59, column: 29, scope: !3437)
!3491 = !DILocation(line: 59, column: 45, scope: !3437)
!3492 = !DILocation(line: 69, column: 17, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3437, file: !717, line: 69, column: 7)
!3494 = !DILocation(line: 57, column: 50, scope: !3437)
!3495 = !DILocation(line: 69, column: 33, scope: !3493)
!3496 = !DILocation(line: 69, column: 53, scope: !3493)
!3497 = !DILocation(line: 69, column: 59, scope: !3493)
!3498 = !DILocation(line: 69, column: 7, scope: !3437)
!3499 = !DILocation(line: 71, column: 11, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3493, file: !717, line: 70, column: 5)
!3501 = !DILocation(line: 72, column: 9, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3500, file: !717, line: 71, column: 11)
!3503 = !DILocation(line: 72, column: 15, scope: !3502)
!3504 = !DILocation(line: 77, column: 1, scope: !3437)
!3505 = !DISubprogram(name: "__fpending", scope: !3506, file: !3506, line: 75, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3506 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!99, !3440}
!3509 = distinct !DISubprogram(name: "rpl_fclose", scope: !719, file: !719, line: 58, type: !3510, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3546)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!97, !3512}
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3515)
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3514, file: !242, line: 51, baseType: !97, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3514, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3514, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3514, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3514, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3514, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3514, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3514, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3514, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3514, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3514, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3514, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3514, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3514, file: !242, line: 70, baseType: !3530, size: 64, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3514, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3514, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3514, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3514, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3514, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3514, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3514, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3514, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3514, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3514, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3514, file: !242, line: 93, baseType: !3530, size: 64, offset: 1344)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3514, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3514, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3514, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3514, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3546 = !{!3547, !3548, !3549, !3550}
!3547 = !DILocalVariable(name: "fp", arg: 1, scope: !3509, file: !719, line: 58, type: !3512)
!3548 = !DILocalVariable(name: "saved_errno", scope: !3509, file: !719, line: 60, type: !97)
!3549 = !DILocalVariable(name: "fd", scope: !3509, file: !719, line: 63, type: !97)
!3550 = !DILocalVariable(name: "result", scope: !3509, file: !719, line: 74, type: !97)
!3551 = !DILocation(line: 0, scope: !3509)
!3552 = !DILocation(line: 63, column: 12, scope: !3509)
!3553 = !DILocation(line: 64, column: 10, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3509, file: !719, line: 64, column: 7)
!3555 = !DILocation(line: 64, column: 7, scope: !3509)
!3556 = !DILocation(line: 65, column: 12, scope: !3554)
!3557 = !DILocation(line: 65, column: 5, scope: !3554)
!3558 = !DILocation(line: 70, column: 9, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3509, file: !719, line: 70, column: 7)
!3560 = !DILocation(line: 70, column: 23, scope: !3559)
!3561 = !DILocation(line: 70, column: 33, scope: !3559)
!3562 = !DILocation(line: 70, column: 26, scope: !3559)
!3563 = !DILocation(line: 70, column: 59, scope: !3559)
!3564 = !DILocation(line: 71, column: 7, scope: !3559)
!3565 = !DILocation(line: 71, column: 10, scope: !3559)
!3566 = !DILocation(line: 70, column: 7, scope: !3509)
!3567 = !DILocation(line: 100, column: 12, scope: !3509)
!3568 = !DILocation(line: 105, column: 7, scope: !3509)
!3569 = !DILocation(line: 72, column: 19, scope: !3559)
!3570 = !DILocation(line: 105, column: 19, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3509, file: !719, line: 105, column: 7)
!3572 = !DILocation(line: 107, column: 13, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3571, file: !719, line: 106, column: 5)
!3574 = !DILocation(line: 109, column: 5, scope: !3573)
!3575 = !DILocation(line: 112, column: 1, scope: !3509)
!3576 = !DISubprogram(name: "fileno", scope: !809, file: !809, line: 809, type: !3510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3577 = !DISubprogram(name: "fclose", scope: !809, file: !809, line: 178, type: !3510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3578 = !DISubprogram(name: "__freading", scope: !3506, file: !3506, line: 51, type: !3510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3579 = !DISubprogram(name: "lseek", scope: !1035, file: !1035, line: 339, type: !3580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!265, !97, !265, !97}
!3582 = distinct !DISubprogram(name: "rpl_fflush", scope: !721, file: !721, line: 130, type: !3583, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3619)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!97, !3585}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3587)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3587, file: !242, line: 51, baseType: !97, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3587, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3587, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3587, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3587, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3587, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3587, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3587, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3587, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3587, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3587, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3587, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3587, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3587, file: !242, line: 70, baseType: !3603, size: 64, offset: 832)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3587, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3587, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3587, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3587, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3587, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3587, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3587, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3587, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3587, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3587, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3587, file: !242, line: 93, baseType: !3603, size: 64, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3587, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3587, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3587, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3587, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3619 = !{!3620}
!3620 = !DILocalVariable(name: "stream", arg: 1, scope: !3582, file: !721, line: 130, type: !3585)
!3621 = !DILocation(line: 0, scope: !3582)
!3622 = !DILocation(line: 151, column: 14, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3582, file: !721, line: 151, column: 7)
!3624 = !DILocation(line: 151, column: 22, scope: !3623)
!3625 = !DILocation(line: 151, column: 27, scope: !3623)
!3626 = !DILocation(line: 151, column: 7, scope: !3582)
!3627 = !DILocation(line: 152, column: 12, scope: !3623)
!3628 = !DILocation(line: 152, column: 5, scope: !3623)
!3629 = !DILocalVariable(name: "fp", arg: 1, scope: !3630, file: !721, line: 42, type: !3585)
!3630 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !721, file: !721, line: 42, type: !3631, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3633)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !3585}
!3633 = !{!3629}
!3634 = !DILocation(line: 0, scope: !3630, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 157, column: 3, scope: !3582)
!3636 = !DILocation(line: 44, column: 12, scope: !3637, inlinedAt: !3635)
!3637 = distinct !DILexicalBlock(scope: !3630, file: !721, line: 44, column: 7)
!3638 = !DILocation(line: 44, column: 19, scope: !3637, inlinedAt: !3635)
!3639 = !DILocation(line: 44, column: 7, scope: !3630, inlinedAt: !3635)
!3640 = !DILocation(line: 46, column: 5, scope: !3637, inlinedAt: !3635)
!3641 = !DILocation(line: 159, column: 10, scope: !3582)
!3642 = !DILocation(line: 159, column: 3, scope: !3582)
!3643 = !DILocation(line: 236, column: 1, scope: !3582)
!3644 = !DISubprogram(name: "fflush", scope: !809, file: !809, line: 230, type: !3583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3645 = distinct !DISubprogram(name: "rpl_fseeko", scope: !723, file: !723, line: 28, type: !3646, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3683)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!97, !3648, !3682, !97}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3650)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3650, file: !242, line: 51, baseType: !97, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3650, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3650, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3650, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3650, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3650, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3650, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3650, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3650, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3650, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3650, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3650, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3650, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3650, file: !242, line: 70, baseType: !3666, size: 64, offset: 832)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3650, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3650, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3650, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3650, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3650, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3650, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3650, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3650, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3650, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3650, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3650, file: !242, line: 93, baseType: !3666, size: 64, offset: 1344)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3650, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3650, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3650, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3650, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3682 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !809, line: 63, baseType: !265)
!3683 = !{!3684, !3685, !3686, !3687}
!3684 = !DILocalVariable(name: "fp", arg: 1, scope: !3645, file: !723, line: 28, type: !3648)
!3685 = !DILocalVariable(name: "offset", arg: 2, scope: !3645, file: !723, line: 28, type: !3682)
!3686 = !DILocalVariable(name: "whence", arg: 3, scope: !3645, file: !723, line: 28, type: !97)
!3687 = !DILocalVariable(name: "pos", scope: !3688, file: !723, line: 123, type: !3682)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !723, line: 119, column: 5)
!3689 = distinct !DILexicalBlock(scope: !3645, file: !723, line: 55, column: 7)
!3690 = !DILocation(line: 0, scope: !3645)
!3691 = !DILocation(line: 55, column: 12, scope: !3689)
!3692 = !{!1219, !754, i64 16}
!3693 = !DILocation(line: 55, column: 33, scope: !3689)
!3694 = !{!1219, !754, i64 8}
!3695 = !DILocation(line: 55, column: 25, scope: !3689)
!3696 = !DILocation(line: 56, column: 7, scope: !3689)
!3697 = !DILocation(line: 56, column: 15, scope: !3689)
!3698 = !DILocation(line: 56, column: 37, scope: !3689)
!3699 = !{!1219, !754, i64 32}
!3700 = !DILocation(line: 56, column: 29, scope: !3689)
!3701 = !DILocation(line: 57, column: 7, scope: !3689)
!3702 = !DILocation(line: 57, column: 15, scope: !3689)
!3703 = !{!1219, !754, i64 72}
!3704 = !DILocation(line: 57, column: 29, scope: !3689)
!3705 = !DILocation(line: 55, column: 7, scope: !3645)
!3706 = !DILocation(line: 123, column: 26, scope: !3688)
!3707 = !DILocation(line: 123, column: 19, scope: !3688)
!3708 = !DILocation(line: 0, scope: !3688)
!3709 = !DILocation(line: 124, column: 15, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3688, file: !723, line: 124, column: 11)
!3711 = !DILocation(line: 124, column: 11, scope: !3688)
!3712 = !DILocation(line: 135, column: 19, scope: !3688)
!3713 = !DILocation(line: 136, column: 12, scope: !3688)
!3714 = !DILocation(line: 136, column: 20, scope: !3688)
!3715 = !{!1219, !1220, i64 144}
!3716 = !DILocation(line: 167, column: 7, scope: !3688)
!3717 = !DILocation(line: 169, column: 10, scope: !3645)
!3718 = !DILocation(line: 169, column: 3, scope: !3645)
!3719 = !DILocation(line: 170, column: 1, scope: !3645)
!3720 = !DISubprogram(name: "fseeko", scope: !809, file: !809, line: 736, type: !3721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!97, !3648, !265, !97}
!3723 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !652, file: !652, line: 100, type: !3724, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3727)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!99, !1483, !70, !99, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!3727 = !{!3728, !3729, !3730, !3731, !3732}
!3728 = !DILocalVariable(name: "pwc", arg: 1, scope: !3723, file: !652, line: 100, type: !1483)
!3729 = !DILocalVariable(name: "s", arg: 2, scope: !3723, file: !652, line: 100, type: !70)
!3730 = !DILocalVariable(name: "n", arg: 3, scope: !3723, file: !652, line: 100, type: !99)
!3731 = !DILocalVariable(name: "ps", arg: 4, scope: !3723, file: !652, line: 100, type: !3726)
!3732 = !DILocalVariable(name: "ret", scope: !3723, file: !652, line: 130, type: !99)
!3733 = !DILocation(line: 0, scope: !3723)
!3734 = !DILocation(line: 105, column: 9, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3723, file: !652, line: 105, column: 7)
!3736 = !DILocation(line: 105, column: 7, scope: !3723)
!3737 = !DILocation(line: 117, column: 10, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3723, file: !652, line: 117, column: 7)
!3739 = !DILocation(line: 117, column: 7, scope: !3723)
!3740 = !DILocation(line: 130, column: 16, scope: !3723)
!3741 = !DILocation(line: 135, column: 11, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3723, file: !652, line: 135, column: 7)
!3743 = !DILocation(line: 135, column: 25, scope: !3742)
!3744 = !DILocation(line: 135, column: 30, scope: !3742)
!3745 = !DILocation(line: 135, column: 7, scope: !3723)
!3746 = !DILocalVariable(name: "ps", arg: 1, scope: !3747, file: !1456, line: 1135, type: !3726)
!3747 = distinct !DISubprogram(name: "mbszero", scope: !1456, file: !1456, line: 1135, type: !3748, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3726}
!3750 = !{!3746}
!3751 = !DILocation(line: 0, scope: !3747, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 137, column: 5, scope: !3742)
!3753 = !DILocalVariable(name: "__dest", arg: 1, scope: !3754, file: !1465, line: 57, type: !91)
!3754 = distinct !DISubprogram(name: "memset", scope: !1465, file: !1465, line: 57, type: !1466, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3755)
!3755 = !{!3753, !3756, !3757}
!3756 = !DILocalVariable(name: "__ch", arg: 2, scope: !3754, file: !1465, line: 57, type: !97)
!3757 = !DILocalVariable(name: "__len", arg: 3, scope: !3754, file: !1465, line: 57, type: !99)
!3758 = !DILocation(line: 0, scope: !3754, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 1137, column: 3, scope: !3747, inlinedAt: !3752)
!3760 = !DILocation(line: 59, column: 10, scope: !3754, inlinedAt: !3759)
!3761 = !DILocation(line: 137, column: 5, scope: !3742)
!3762 = !DILocation(line: 138, column: 11, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3723, file: !652, line: 138, column: 7)
!3764 = !DILocation(line: 138, column: 7, scope: !3723)
!3765 = !DILocation(line: 139, column: 5, scope: !3763)
!3766 = !DILocation(line: 143, column: 26, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3723, file: !652, line: 143, column: 7)
!3768 = !DILocation(line: 143, column: 41, scope: !3767)
!3769 = !DILocation(line: 143, column: 7, scope: !3723)
!3770 = !DILocation(line: 145, column: 15, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3772, file: !652, line: 145, column: 11)
!3772 = distinct !DILexicalBlock(scope: !3767, file: !652, line: 144, column: 5)
!3773 = !DILocation(line: 145, column: 11, scope: !3772)
!3774 = !DILocation(line: 146, column: 32, scope: !3771)
!3775 = !DILocation(line: 146, column: 16, scope: !3771)
!3776 = !DILocation(line: 146, column: 14, scope: !3771)
!3777 = !DILocation(line: 146, column: 9, scope: !3771)
!3778 = !DILocation(line: 286, column: 1, scope: !3723)
!3779 = !DISubprogram(name: "mbsinit", scope: !3780, file: !3780, line: 293, type: !3781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3780 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!97, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!3785 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !725, file: !725, line: 27, type: !2992, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3786)
!3786 = !{!3787, !3788, !3789, !3790}
!3787 = !DILocalVariable(name: "ptr", arg: 1, scope: !3785, file: !725, line: 27, type: !91)
!3788 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3785, file: !725, line: 27, type: !99)
!3789 = !DILocalVariable(name: "size", arg: 3, scope: !3785, file: !725, line: 27, type: !99)
!3790 = !DILocalVariable(name: "nbytes", scope: !3785, file: !725, line: 29, type: !99)
!3791 = !DILocation(line: 0, scope: !3785)
!3792 = !DILocation(line: 30, column: 7, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3785, file: !725, line: 30, column: 7)
!3794 = !DILocation(line: 30, column: 7, scope: !3785)
!3795 = !DILocation(line: 32, column: 7, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3793, file: !725, line: 31, column: 5)
!3797 = !DILocation(line: 32, column: 13, scope: !3796)
!3798 = !DILocation(line: 33, column: 7, scope: !3796)
!3799 = !DILocalVariable(name: "ptr", arg: 1, scope: !3800, file: !3084, line: 2057, type: !91)
!3800 = distinct !DISubprogram(name: "rpl_realloc", scope: !3084, file: !3084, line: 2057, type: !3076, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3801)
!3801 = !{!3799, !3802}
!3802 = !DILocalVariable(name: "size", arg: 2, scope: !3800, file: !3084, line: 2057, type: !99)
!3803 = !DILocation(line: 0, scope: !3800, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 37, column: 10, scope: !3785)
!3805 = !DILocation(line: 2059, column: 24, scope: !3800, inlinedAt: !3804)
!3806 = !DILocation(line: 2059, column: 10, scope: !3800, inlinedAt: !3804)
!3807 = !DILocation(line: 37, column: 3, scope: !3785)
!3808 = !DILocation(line: 38, column: 1, scope: !3785)
!3809 = distinct !DISubprogram(name: "hard_locale", scope: !670, file: !670, line: 28, type: !3810, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!225, !97}
!3812 = !{!3813, !3814}
!3813 = !DILocalVariable(name: "category", arg: 1, scope: !3809, file: !670, line: 28, type: !97)
!3814 = !DILocalVariable(name: "locale", scope: !3809, file: !670, line: 30, type: !3815)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3816)
!3816 = !{!3817}
!3817 = !DISubrange(count: 257)
!3818 = distinct !DIAssignID()
!3819 = !DILocation(line: 0, scope: !3809)
!3820 = !DILocation(line: 30, column: 3, scope: !3809)
!3821 = !DILocation(line: 32, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3809, file: !670, line: 32, column: 7)
!3823 = !DILocation(line: 32, column: 7, scope: !3809)
!3824 = !DILocalVariable(name: "__s1", arg: 1, scope: !3825, file: !827, line: 1359, type: !70)
!3825 = distinct !DISubprogram(name: "streq", scope: !827, file: !827, line: 1359, type: !828, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3826)
!3826 = !{!3824, !3827}
!3827 = !DILocalVariable(name: "__s2", arg: 2, scope: !3825, file: !827, line: 1359, type: !70)
!3828 = !DILocation(line: 0, scope: !3825, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 35, column: 9, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3809, file: !670, line: 35, column: 7)
!3831 = !DILocation(line: 1361, column: 11, scope: !3825, inlinedAt: !3829)
!3832 = !DILocation(line: 35, column: 29, scope: !3830)
!3833 = !DILocation(line: 0, scope: !3825, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 35, column: 32, scope: !3830)
!3835 = !DILocation(line: 1361, column: 11, scope: !3825, inlinedAt: !3834)
!3836 = !DILocation(line: 1361, column: 10, scope: !3825, inlinedAt: !3834)
!3837 = !DILocation(line: 35, column: 7, scope: !3809)
!3838 = !DILocation(line: 46, column: 3, scope: !3809)
!3839 = !DILocation(line: 47, column: 1, scope: !3809)
!3840 = distinct !DISubprogram(name: "setlocale_null_r", scope: !731, file: !731, line: 154, type: !3841, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!97, !97, !246, !99}
!3843 = !{!3844, !3845, !3846}
!3844 = !DILocalVariable(name: "category", arg: 1, scope: !3840, file: !731, line: 154, type: !97)
!3845 = !DILocalVariable(name: "buf", arg: 2, scope: !3840, file: !731, line: 154, type: !246)
!3846 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3840, file: !731, line: 154, type: !99)
!3847 = !DILocation(line: 0, scope: !3840)
!3848 = !DILocation(line: 159, column: 10, scope: !3840)
!3849 = !DILocation(line: 159, column: 3, scope: !3840)
!3850 = distinct !DISubprogram(name: "setlocale_null", scope: !731, file: !731, line: 186, type: !3851, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!70, !97}
!3853 = !{!3854}
!3854 = !DILocalVariable(name: "category", arg: 1, scope: !3850, file: !731, line: 186, type: !97)
!3855 = !DILocation(line: 0, scope: !3850)
!3856 = !DILocation(line: 189, column: 10, scope: !3850)
!3857 = !DILocation(line: 189, column: 3, scope: !3850)
!3858 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !733, file: !733, line: 35, type: !3851, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3859)
!3859 = !{!3860, !3861}
!3860 = !DILocalVariable(name: "category", arg: 1, scope: !3858, file: !733, line: 35, type: !97)
!3861 = !DILocalVariable(name: "result", scope: !3858, file: !733, line: 37, type: !70)
!3862 = !DILocation(line: 0, scope: !3858)
!3863 = !DILocation(line: 37, column: 24, scope: !3858)
!3864 = !DILocation(line: 62, column: 3, scope: !3858)
!3865 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !733, file: !733, line: 66, type: !3841, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871}
!3867 = !DILocalVariable(name: "category", arg: 1, scope: !3865, file: !733, line: 66, type: !97)
!3868 = !DILocalVariable(name: "buf", arg: 2, scope: !3865, file: !733, line: 66, type: !246)
!3869 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3865, file: !733, line: 66, type: !99)
!3870 = !DILocalVariable(name: "result", scope: !3865, file: !733, line: 111, type: !70)
!3871 = !DILocalVariable(name: "length", scope: !3872, file: !733, line: 125, type: !99)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !733, line: 124, column: 5)
!3873 = distinct !DILexicalBlock(scope: !3865, file: !733, line: 113, column: 7)
!3874 = !DILocation(line: 0, scope: !3865)
!3875 = !DILocation(line: 0, scope: !3858, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 111, column: 24, scope: !3865)
!3877 = !DILocation(line: 37, column: 24, scope: !3858, inlinedAt: !3876)
!3878 = !DILocation(line: 113, column: 14, scope: !3873)
!3879 = !DILocation(line: 113, column: 7, scope: !3865)
!3880 = !DILocation(line: 116, column: 19, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !733, line: 116, column: 11)
!3882 = distinct !DILexicalBlock(scope: !3873, file: !733, line: 114, column: 5)
!3883 = !DILocation(line: 116, column: 11, scope: !3882)
!3884 = !DILocation(line: 120, column: 16, scope: !3881)
!3885 = !DILocation(line: 120, column: 9, scope: !3881)
!3886 = !DILocation(line: 125, column: 23, scope: !3872)
!3887 = !DILocation(line: 0, scope: !3872)
!3888 = !DILocation(line: 126, column: 18, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3872, file: !733, line: 126, column: 11)
!3890 = !DILocation(line: 126, column: 11, scope: !3872)
!3891 = !DILocation(line: 128, column: 39, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3889, file: !733, line: 127, column: 9)
!3893 = !DILocalVariable(name: "__dest", arg: 1, scope: !3894, file: !1465, line: 26, type: !3355)
!3894 = distinct !DISubprogram(name: "memcpy", scope: !1465, file: !1465, line: 26, type: !3353, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3895)
!3895 = !{!3893, !3896, !3897}
!3896 = !DILocalVariable(name: "__src", arg: 2, scope: !3894, file: !1465, line: 26, type: !961)
!3897 = !DILocalVariable(name: "__len", arg: 3, scope: !3894, file: !1465, line: 26, type: !99)
!3898 = !DILocation(line: 0, scope: !3894, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 128, column: 11, scope: !3892)
!3900 = !DILocation(line: 29, column: 10, scope: !3894, inlinedAt: !3899)
!3901 = !DILocation(line: 129, column: 11, scope: !3892)
!3902 = !DILocation(line: 133, column: 23, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !733, line: 133, column: 15)
!3904 = distinct !DILexicalBlock(scope: !3889, file: !733, line: 132, column: 9)
!3905 = !DILocation(line: 133, column: 15, scope: !3904)
!3906 = !DILocation(line: 138, column: 44, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3903, file: !733, line: 134, column: 13)
!3908 = !DILocation(line: 0, scope: !3894, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 138, column: 15, scope: !3907)
!3910 = !DILocation(line: 29, column: 10, scope: !3894, inlinedAt: !3909)
!3911 = !DILocation(line: 139, column: 15, scope: !3907)
!3912 = !DILocation(line: 139, column: 32, scope: !3907)
!3913 = !DILocation(line: 140, column: 13, scope: !3907)
!3914 = !DILocation(line: 0, scope: !3873)
!3915 = !DILocation(line: 145, column: 1, scope: !3865)
